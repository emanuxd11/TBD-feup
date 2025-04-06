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

CREATE INDEX idx_zvotacoes_votos ON zvotacoes(votos);

-- INDEXES FOR FOREIGN KEYS (Faster joins)
CREATE INDEX idx_zconcelhos_distrito ON zconcelhos(distrito); --NO BITMAP
CREATE INDEX idx_zfreguesias_concelho ON zfreguesias(concelho);
CREATE INDEX idx_zvotacoes_partido ON zvotacoes(partido); --NO BITMAP
CREATE INDEX idx_zvotacoes_freguesia ON zvotacoes(freguesia);
CREATE INDEX idx_zlistas_distrito ON zlistas(distrito);
CREATE INDEX idx_zlistas_partido ON zlistas(partido);

-- INDEXES FOR SEARCH OPERATIONS (e.g., "WHERE nome = 'Lisboa'")
CREATE BITMAP INDEX idx_zdistritos_nome ON zdistritos(nome);
CREATE INDEX idx_zconcelhos_nome ON zconcelhos(nome);

-- COMPOSITE INDEXES
CREATE INDEX idx_zvotacoes_freguesia_partido_votos ON zvotacoes(freguesia, partido, votos);