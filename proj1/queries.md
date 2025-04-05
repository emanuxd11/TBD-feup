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
BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW Sum_votos'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -12003 THEN RAISE; END IF; END;
    BEGIN EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW Max_votos'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -12003 THEN RAISE; END IF; END;
END;
/

CREATE MATERIALIZED VIEW Sum_votos AS
    (SELECT c.distrito, v.partido, SUM(v.votos) AS total_votos
    FROM xfreguesias f, xconcelhos c, xvotacoes v
    WHERE f.concelho=c.codigo AND f.codigo=v.freguesia
    GROUP BY c.distrito, v.partido
    );
CREATE MATERIALIZED VIEW Max_votos AS
    (SELECT distrito, MAX(total_votos) AS votos_max 
    FROM Sum_votos
    GROUP BY distrito
    );

SELECT d.nome, p.designacao, m.votos_max
FROM Max_votos m, Sum_votos s, xpartidos p, xdistritos d
WHERE m.distrito=s.distrito AND m.votos_max=s.total_votos AND s.partido=p.sigla AND m.distrito=d.codigo;  

```
`worst option (NO WITH)`
```sql
SELECT d.nome, p.designacao, m.votos_max
FROM xpartidos p
    INNER JOIN 
        (SELECT c.distrito, v.partido, SUM(v.votos) AS total_votos
        FROM xfreguesias f, xconcelhos c, xvotacoes v
        WHERE f.concelho=c.codigo AND f.codigo=v.freguesia
        GROUP BY c.distrito, v.partido) s
    ON s.partido=p.sigla
    INNER JOIN
        (SELECT distrito, MAX(total_votos) AS votos_max 
        FROM (SELECT c.distrito, v.partido, SUM(v.votos) AS total_votos
            FROM xfreguesias f, xconcelhos c, xvotacoes v
            WHERE f.concelho=c.codigo AND f.codigo=v.freguesia
            GROUP BY c.distrito, v.partido)
        GROUP BY distrito) m
    ON m.distrito=s.distrito AND m.votos_max=s.total_votos
    INNER JOIN xdistritos d ON m.distrito=d.codigo;
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

SELECT c.codigo, v.partido
FROM zconcelhos c
INNER JOIN zdistritos d ON c.distrito=d.codigo
INNER JOIN zfreguesias f ON c.codigo=f.concelho
INNER JOIN zvotacoes v ON f.codigo=v.freguesia
WHERE d.nome='Porto' AND v.votos=(SELECT MAX(votos) FROM zvotacoes WHERE freguesia=v.freguesia) 
GROUP BY c.codigo, v.partido
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM zfreguesias f2
    WHERE f2.concelho = c.codigo
);

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

BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP VIEW count_view_vencedores_freguesia'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
END;
/

CREATE VIEW count_view_vencedores_freguesia AS
SELECT f.concelho, v1.partido
FROM zfreguesias f
INNER JOIN
    (SELECT v2.partido, v2.freguesia, v2.votos
    FROM zvotacoes v2
    WHERE v2.votos=(SELECT MAX(votos) FROM zvotacoes WHERE freguesia=v2.freguesia)) v1
ON f.codigo=v1.freguesia;

SELECT c.codigo, v.partido
FROM zconcelhos c
INNER JOIN zdistritos d ON c.distrito=d.codigo
INNER JOIN count_view_vencedores_freguesia v ON c.codigo=v.concelho
WHERE d.nome='Porto'
GROUP BY c.codigo, v.partido
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM zfreguesias f2
    WHERE f2.concelho = c.codigo
);

```

- `DUPLA NEGAÇÃO`
```sql

BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP VIEW neg_view_vencedores_freguesia'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
END;
/

CREATE VIEW neg_view_vencedores_freguesia AS
SELECT f.codigo AS freguesia, f.concelho, v.partido
FROM zfreguesias f
INNER JOIN zvotacoes v
ON f.codigo = v.freguesia
WHERE v.votos >= ALL (
    SELECT v2.votos
    FROM zvotacoes v2
    WHERE v2.freguesia = v.freguesia
);

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
        SELECT v2.freguesia
        FROM neg_view_vencedores_freguesia v2
        WHERE v2.freguesia = f2.codigo
            AND v2.partido = v.partido
    )
)
GROUP BY c.codigo, v.partido;

```

**c.** Com vista materializada (eventualmente com índices).

- `CONTAGEM`
```sql

BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW mat_count_view_vencedores_freguesia'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -12003 THEN RAISE; END IF; END;
END;
/

CREATE MATERIALIZED VIEW mat_count_view_vencedores_freguesia AS
SELECT f.concelho, v1.partido
FROM zfreguesias f
INNER JOIN
    (SELECT v2.partido, v2.freguesia, v2.votos
    FROM zvotacoes v2
    WHERE v2.votos=(SELECT MAX(votos) FROM zvotacoes WHERE freguesia=v2.freguesia)) v1
ON f.codigo=v1.freguesia;

SELECT c.codigo, v.partido
FROM zconcelhos c
INNER JOIN zdistritos d ON c.distrito=d.codigo
INNER JOIN mat_count_view_vencedores_freguesia v ON c.codigo=v.concelho
WHERE d.nome='Porto'
GROUP BY c.codigo, v.partido
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM zfreguesias f2
    WHERE f2.concelho = c.codigo
);

```

- `DUPLA NEGAÇÃO`
```sql

BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW mat_neg_view_vencedores_freguesia'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -12003 THEN RAISE; END IF; END;
END;
/

CREATE MATERIALIZED VIEW mat_neg_view_vencedores_freguesia AS
SELECT f.codigo AS freguesia, f.concelho, v.partido
FROM zfreguesias f
INNER JOIN zvotacoes v
ON f.codigo = v.freguesia
WHERE v.votos >= ALL (
    SELECT v2.votos
    FROM zvotacoes v2
    WHERE v2.freguesia = v.freguesia
);

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
        SELECT v2.freguesia
        FROM mat_neg_view_vencedores_freguesia v2
        WHERE v2.freguesia = f2.codigo
            AND v2.partido = v.partido
    )
)
GROUP BY c.codigo, v.partido;

```

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