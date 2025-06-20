-- DROP TABLES IF EXIST
BEGIN
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN 
              ('XDISTRITOS', 'XFREGUESIAS', 'XPARTICIPACOES', 'XVOTACOES', 'XLISTAS', 'XPARTIDOS', 'XCONCELHOS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- CREATE TABLES
CREATE TABLE xdistritos AS SELECT * FROM GTD7.DISTRITOS;
CREATE TABLE xfreguesias AS SELECT * FROM GTD7.FREGUESIAS;
CREATE TABLE xparticipacoes AS SELECT * FROM GTD7.PARTICIPACOES;
CREATE TABLE xvotacoes AS SELECT * FROM GTD7.VOTACOES;
CREATE TABLE xlistas AS SELECT * FROM GTD7.LISTAS;
CREATE TABLE xpartidos AS SELECT * FROM GTD7.PARTIDOS;
CREATE TABLE xconcelhos AS SELECT * FROM GTD7.CONCELHOS;