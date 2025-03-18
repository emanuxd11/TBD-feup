-- DROP ALL TABLES
BEGIN
    FOR t IN (SELECT table_name FROM user_tables) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- DROP X TABLES IF EXIST
BEGIN
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN 
              ('XDISTRITOS', 'XFREGUESIAS', 'XPARTICIPACOES', 'XVOTACOES', 'XLISTAS', 'XPARTIDOS', 'XCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- CREATE X TABLES
CREATE TABLE xdistritos AS SELECT * FROM GTD7.DISTRITOS;
CREATE TABLE xfreguesias AS SELECT * FROM GTD7.FREGUESIAS;
CREATE TABLE xparticipacoes AS SELECT * FROM GTD7.PARTICIPACOES;
CREATE TABLE xvotacoes AS SELECT * FROM GTD7.VOTACOES;
CREATE TABLE xlistas AS SELECT * FROM GTD7.LISTAS;
CREATE TABLE xpartidos AS SELECT * FROM GTD7.PARTIDOS;
CREATE TABLE xconcelhos AS SELECT * FROM GTD7.CONCELHOS;

-- DROP Y TABLES IF EXIST
BEGIN
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN 
              ('YDISTRITOS', 'YFREGUESIAS', 'YPARTICIPACOES', 'YVOTACOES', 'YLISTAS', 'YPARTIDOS', 'YCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- CREATE Y TABLES (NO-DATA -> "WHERE 1=0")
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

-- DROP Z INDEXES AND TABLES IF EXIST
BEGIN
    -- Drop indexes first
    FOR idx IN (SELECT index_name FROM user_indexes 
                WHERE table_name IN ('ZDISTRITOS', 'ZFREGUESIAS', 'ZPARTICIPACOES', 
                                     'ZVOTACOES', 'ZLISTAS', 'ZPARTIDOS', 'ZCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP INDEX ' || idx.index_name;
    END LOOP;
    
    -- Drop tables
    FOR t IN (SELECT table_name FROM user_tables 
              WHERE table_name IN ('ZDISTRITOS', 'ZFREGUESIAS', 'ZPARTICIPACOES', 
                                   'ZVOTACOES', 'ZLISTAS', 'ZPARTIDOS', 'ZCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- CREATE Z TABLES (NO DATA -> "WHERE 1=0")
CREATE TABLE zdistritos AS SELECT * FROM GTD7.DISTRITOS WHERE 1=0;
CREATE TABLE zconcelhos AS SELECT * FROM GTD7.CONCELHOS WHERE 1=0;
CREATE TABLE zfreguesias AS SELECT * FROM GTD7.FREGUESIAS WHERE 1=0;
CREATE TABLE zpartidos AS SELECT * FROM GTD7.PARTIDOS WHERE 1=0;
CREATE TABLE zvotacoes AS SELECT * FROM GTD7.VOTACOES WHERE 1=0;
CREATE TABLE zlistas AS SELECT * FROM GTD7.LISTAS WHERE 1=0;
CREATE TABLE zparticipacoes AS SELECT * FROM GTD7.PARTICIPACOES WHERE 1=0;

-- ADD PRIMARY KEYS (AUTO-INDEXED)
ALTER TABLE zdistritos ADD CONSTRAINT pk_zdistritos PRIMARY KEY (codigo);
ALTER TABLE zconcelhos ADD CONSTRAINT pk_zconcelhos PRIMARY KEY (codigo);
ALTER TABLE zfreguesias ADD CONSTRAINT pk_zfreguesias PRIMARY KEY (codigo);
ALTER TABLE zpartidos ADD CONSTRAINT pk_zpartidos PRIMARY KEY (sigla);
ALTER TABLE zvotacoes ADD CONSTRAINT pk_zvotacoes PRIMARY KEY (partido, freguesia);
ALTER TABLE zlistas ADD CONSTRAINT pk_zlistas PRIMARY KEY (distrito, partido);
ALTER TABLE zparticipacoes ADD CONSTRAINT pk_zparticipacoes PRIMARY KEY (distrito);

-- ADD FOREIGN KEYS
ALTER TABLE zconcelhos ADD CONSTRAINT fk_zconcelhos_distrito FOREIGN KEY (distrito) REFERENCES zdistritos (codigo);
ALTER TABLE zfreguesias ADD CONSTRAINT fk_zfreguesias_concelho FOREIGN KEY (concelho) REFERENCES zconcelhos (codigo);
ALTER TABLE zvotacoes ADD CONSTRAINT fk_zvotacoes_partido FOREIGN KEY (partido) REFERENCES zpartidos (sigla);
ALTER TABLE zvotacoes ADD CONSTRAINT fk_zvotacoes_freguesia FOREIGN KEY (freguesia) REFERENCES zfreguesias (codigo);
ALTER TABLE zlistas ADD CONSTRAINT fk_zlistas_distrito FOREIGN KEY (distrito) REFERENCES zdistritos (codigo);
ALTER TABLE zlistas ADD CONSTRAINT fk_zlistas_partido FOREIGN KEY (partido) REFERENCES zpartidos (sigla);
ALTER TABLE zparticipacoes ADD CONSTRAINT fk_zparticipacoes_distrito FOREIGN KEY (distrito) REFERENCES zdistritos (codigo);

-- INSERT DATA
INSERT INTO zdistritos SELECT * FROM GTD7.DISTRITOS;
INSERT INTO zconcelhos SELECT * FROM GTD7.CONCELHOS;
INSERT INTO zfreguesias SELECT * FROM GTD7.FREGUESIAS;
INSERT INTO zpartidos SELECT * FROM GTD7.PARTIDOS;
INSERT INTO zvotacoes SELECT * FROM GTD7.VOTACOES;
INSERT INTO zlistas SELECT * FROM GTD7.LISTAS;
INSERT INTO zparticipacoes SELECT * FROM GTD7.PARTICIPACOES;

-- ADD INDEXES FOR PERFORMANCE

-- INDEXES FOR FOREIGN KEYS (Faster joins)
CREATE INDEX idx_zconcelhos_distrito ON zconcelhos(distrito);
CREATE INDEX idx_zfreguesias_concelho ON zfreguesias(concelho);
CREATE INDEX idx_zvotacoes_partido ON zvotacoes(partido);
CREATE INDEX idx_zvotacoes_freguesia ON zvotacoes(freguesia);
CREATE INDEX idx_zlistas_distrito ON zlistas(distrito);
CREATE INDEX idx_zlistas_partido ON zlistas(partido);

-- INDEXES FOR SEARCH OPERATIONS (e.g., "WHERE nome = 'Lisboa'")
CREATE INDEX idx_zdistritos_nome ON zdistritos(nome);
CREATE INDEX idx_zconcelhos_nome ON zconcelhos(nome);
CREATE INDEX idx_zfreguesias_nome ON zfreguesias(nome);

CREATE INDEX idx_zvotacoes_freguesia_partido ON zvotacoes(freguesia, partido);
