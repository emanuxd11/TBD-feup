# QUESTÕES A ANALISAR
#### 1. Seleção e junção.
**a.** Quais os códigos e nomes de freguesias do concelho 1103?

```sql

SELECT codigo, nome
FROM xfreguesias
WHERE concelho=1103;

```
E do concelho "Azambuja"?
```sql

SELECT f.codigo, f.nome
FROM xfreguesias f, xconcelhos c
WHERE f.concelho=c.codigo 
    AND c.nome='Azambuja';

```

**b.** Indique as siglas e designações dos partidos e o respetivo número de mandatos obtidos no distrito de Lisboa.

```sql

SELECT p.sigla, p.designacao, l.mandatos
FROM xlistas l, xdistritos d, xpartidos p
WHERE l.distrito=d.codigo AND l.partido=p.sigla 
    AND d.nome='Lisboa';

```

**c.** Indique o número de votos obtido pelo BE nas freguesias do distrito de Lisboa.

```sql

SELECT f.nome, v.votos
FROM xfreguesias f, xconcelhos c, xdistritos d, xvotacoes v
WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
    AND d.nome='Lisboa' AND v.partido='BE';

```

#### 2. Agregação.
**a.** Quantos votos teve o 'PS' a nível nacional?

```sql

SELECT SUM(votos)
FROM xvotacoes
WHERE partido='PS';

```

**b.** Quantos votos teve cada partido, em cada distrito?

```sql

SELECT d.nome, v.partido, SUM(v.votos)
FROM xfreguesias f, xconcelhos c, xdistritos d, xvotacoes v
WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
GROUP BY d.nome, v.partido;

```

**c.** Qual o partido que, ao nível de freguesia, registou o maior número de votos? Indique a sigla do partido, o nome da freguesia e os votos correspondentes.

```sql

SELECT v.partido, f.nome, v.votos
FROM xfreguesias f, xvotacoes v
WHERE f.codigo=v.freguesia
    AND v.votos=(SELECT MAX(votos) FROM xvotacoes);

```

**d.** Para cada distrito indique qual o seu nome e a designação e número de votos do partido que
nele teve melhor votação.

```sql

WITH
Sum_votos AS
    (SELECT d.nome, v.partido, SUM(v.votos) AS total_votos
    FROM xfreguesias f, xconcelhos c, xdistritos d, xvotacoes v
    WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
    GROUP BY d.nome, v.partido
),
Max_votos AS
    (SELECT nome, MAX(total_votos) AS votos_max 
    FROM Sum_votos
    GROUP BY nome)

SELECT m.nome, p.designacao, m.votos_max
FROM Max_votos m, Sum_votos s, xpartidos p
WHERE m.nome=s.nome AND m.votos_max=s.total_votos AND s.partido=p.sigla;  

```
`worst option (NO WITH)`
```sql
SELECT m.nome, p.designacao, m.votos_max
FROM 
    (SELECT nome, MAX(total_votos) AS votos_max 
    FROM 
        (SELECT d.nome, v.partido, SUM(v.votos) AS total_votos
        FROM xfreguesias f, xconcelhos c, xdistritos d, xvotacoes v
        WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
        GROUP BY d.nome, v.partido)
    GROUP BY nome) m, 
    (SELECT d.nome, v.partido, SUM(v.votos) AS total_votos
    FROM xfreguesias f, xconcelhos c, xdistritos d, xvotacoes v
    WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
    GROUP BY d.nome, v.partido) s, 
    xpartidos p
WHERE m.nome=s.nome AND m.votos_max=s.total_votos AND s.partido=p.sigla;  
```

#### 3. Negação. 
Analise de igual forma a questão "Quais os partidos que não concorreram no distrito de Lisboa."

```sql

SELECT sigla, designacao
FROM partidos
WHERE sigla NOT IN (
    SELECT l.partido
    FROM xlistas l, xdistritos d
    WHERE l.distrito=d.codigo
        AND d.nome='Lisboa'
); 

```

#### 4. A pergunta "Houve algum partido a vencer em todos as freguesias de um concelho do distrito do Porto? Indique código do concelho e sigla do partido." é de natureza universal. Compare do ponto de vista temporal e de plano de execução as estratégias da dupla negação e da contagem em três situações diferentes (só no contexto Z):
**a.** Sem vista para calcular o vencedor em cada freguesia.

- `CONTAGEM`
```sql

SELECT f1.concelho, f1.partido
FROM zconcelhos c
INNER JOIN zdistritos d 
ON c.distrito=d.codigo
INNER JOIN 
    (SELECT f.concelho, v.partido, count(*) AS num_vitorias
    FROM zfreguesias f
    INNER JOIN
        (SELECT v1.partido, v1.freguesia, v1.votos
        FROM zvotacoes v1
        WHERE v1.votos=(SELECT MAX(votos) FROM zvotacoes WHERE freguesia=v1.freguesia)) v
    ON f.codigo=v.freguesia
    GROUP BY f.concelho, v.partido) f1 
ON c.codigo=f1.concelho
INNER JOIN 
    (SELECT concelho, count(*) AS num_freguesias
    FROM zfreguesias
    GROUP BY concelho) f2
ON f1.concelho=f2.concelho
WHERE f1.num_vitorias=f2.num_freguesias AND d.nome='Porto';

```

- `DUPLA NEGAÇÃO`
```sql

SELECT c.codigo, v.partido
FROM zconcelhos c
INNER JOIN zfreguesias f ON f.concelho=c.codigo
INNER JOIN zdistritos d ON c.distrito=d.codigo
INNER JOIN zvotacoes v ON v.freguesia=f.codigo
WHERE d.nome='Porto'
AND NOT EXISTS (
    SELECT f2.concelho
    FROM zfreguesias f2
    WHERE f2.concelho = c.codigo
    AND NOT EXISTS (
        SELECT v2.freguesia, v2.partido
        FROM zvotacoes v2
        WHERE v2.freguesia = f2.codigo
            AND v2.partido = v.partido
            AND v2.votos >= ALL (
                SELECT votos
                FROM zvotacoes
                WHERE freguesia = f2.codigo
            )
    )
)
GROUP BY c.codigo, v.partido;

```

**b.** Com vista.
- `CONTAGEM`
```sql



```
**c.** Com vista materializada (eventualmente com índices).
#### 5. Compare os planos de execução da pesquisa "Quantos votos tiveram o PS e o PSD nos distritos 11, 15 e 17", considerando no contexto Z

```sql

SELECT d.nome, v.partido, SUM(v.votos) AS num_votos
FROM zfreguesias f, zconcelhos c, zdistritos d, zvotacoes v
WHERE f.concelho=c.codigo AND c.distrito=d.codigo AND f.codigo=v.freguesia
    AND (v.partido='PS' OR v.partido='PPDPSD') AND (d.codigo=11 OR d.codigo=15 OR d.codigo=17)
GROUP BY d.nome, v.partido;

```

**a.** Com índices árvore-B em zconcelhos.distrito e zvotacoes.partido.
**b.** Com índices bitmap.

SELECT d.nome, v.partido, SUM(v.votos) AS total_votos
FROM xfreguesias f 
INNER JOIN xconcelhos c on
f.concelho=c.codigo
INNER JOIN xdistritos d on
c.distrito=d.codigo
INNER JOIN xvotacoes v on
f.codigo=v.freguesia
GROUP BY d.nome, v.partido  