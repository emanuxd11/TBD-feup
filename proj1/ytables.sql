
-- DROP TABLES IF EXIST
BEGIN
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN 
              ('YDISTRITOS', 'YFREGUESIAS', 'YPARTICIPACOES', 'YVOTACOES', 'YLISTAS', 'YPARTIDOS', 'YCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- CREATE TABLES (NO-DATA -> "WHERE 1=0")
CREATE TABLE ydistritos AS SELECT * FROM GTD7.DISTRITOS WHERE 1=0;
CREATE TABLE yconcelhos AS SELECT * FROM GTD7.CONCELHOS WHERE 1=0;
CREATE TABLE yfreguesias AS SELECT * FROM GTD7.FREGUESIAS WHERE 1=0;
CREATE TABLE ypartidos AS SELECT * FROM GTD7.PARTIDOS WHERE 1=0;
CREATE TABLE yvotacoes AS SELECT * FROM GTD7.VOTACOES WHERE 1=0;
CREATE TABLE ylistas AS SELECT * FROM GTD7.LISTAS WHERE 1=0;
CREATE TABLE yparticipacoes AS SELECT * FROM GTD7.PARTICIPACOES WHERE 1=0;

-- ADD PRIMARY KEYS
ALTER TABLE ydistritos ADD CONSTRAINT pk_ydistritos PRIMARY KEY (codigo);
ALTER TABLE yconcelhos ADD CONSTRAINT pk_yconcelhos PRIMARY KEY (codigo);
ALTER TABLE yfreguesias ADD CONSTRAINT pk_yfreguesias PRIMARY KEY (codigo);
ALTER TABLE ypartidos ADD CONSTRAINT pk_ypartidos PRIMARY KEY (sigla);
ALTER TABLE yvotacoes ADD CONSTRAINT pk_yvotacoes PRIMARY KEY (partido, freguesia);
ALTER TABLE ylistas ADD CONSTRAINT pk_ylistas PRIMARY KEY (distrito, partido);
ALTER TABLE yparticipacoes ADD CONSTRAINT pk_yparticipacoes PRIMARY KEY (distrito);

-- ADD FOREIGN KEYS
ALTER TABLE yconcelhos ADD CONSTRAINT fk_yconcelhos_distrito FOREIGN KEY (distrito) REFERENCES ydistritos (codigo);
ALTER TABLE yfreguesias ADD CONSTRAINT fk_yfreguesias_concelho FOREIGN KEY (concelho) REFERENCES yconcelhos (codigo);
ALTER TABLE yvotacoes ADD CONSTRAINT fk_yvotacoes_partido FOREIGN KEY (partido) REFERENCES ypartidos (sigla);
ALTER TABLE yvotacoes ADD CONSTRAINT fk_yvotacoes_freguesia FOREIGN KEY (freguesia) REFERENCES yfreguesias (codigo);
ALTER TABLE ylistas ADD CONSTRAINT fk_ylistas_distrito FOREIGN KEY (distrito) REFERENCES ydistritos (codigo);
ALTER TABLE ylistas ADD CONSTRAINT fk_ylistas_partido FOREIGN KEY (partido) REFERENCES ypartidos (sigla);
ALTER TABLE yparticipacoes ADD CONSTRAINT fk_yparticipacoes_distrito FOREIGN KEY (distrito) REFERENCES ydistritos (codigo);

-- INSERT DATA
INSERT INTO ydistritos SELECT * FROM GTD7.DISTRITOS;
INSERT INTO yconcelhos SELECT * FROM GTD7.CONCELHOS;
INSERT INTO yfreguesias SELECT * FROM GTD7.FREGUESIAS;
INSERT INTO ypartidos SELECT * FROM GTD7.PARTIDOS;
INSERT INTO yvotacoes SELECT * FROM GTD7.VOTACOES;
INSERT INTO ylistas SELECT * FROM GTD7.LISTAS;
INSERT INTO yparticipacoes SELECT * FROM GTD7.PARTICIPACOES;