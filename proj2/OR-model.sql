-- DROP ALL TABLES
BEGIN
    FOR t IN (SELECT object_name FROM user_objects WHERE object_name IN 
              ('MUNICIPALITIES', 'HEADINGS', 'PERIODS', 'PARTIES', 'AEXPENSES', 'AREVENUES', 'LEADERSHIPS')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.object_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- DROP ALL TYPES
BEGIN
    FOR t IN (SELECT type_name FROM user_types WHERE type_name IN 
              ('LEADERSHIPS_T', 'AEXPENSES_T', 'AREVENUES_T', 'PARTIES_T', 'PERIODS_T', 'HEADINGS_T', 'MUNICIPALITY_T', 'NUT_III_T', 'NUT_II_T', 'NUT_I_T', 'COUNTRY_T', 'MUNICIPALITIES_T')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TYPE ' || t.type_name || ' FORCE';
    END LOOP;
END;
/

-- TYPES

/* CREATE OR REPLACE TYPE municipalities_t AS OBJECT(
    code INTEGER,
    designation VARCHAR(50),
    acronym VARCHAR(10),
    area FLOAT,
    population INTEGER,
    geolevel INTEGER, -- 1=Country, 2=NUT I, 3=NUT II, 4=NUT III, 5=Municipality
    parent REF municipalities_t
);
/ */

CREATE OR REPLACE TYPE municipalities_t AS OBJECT(
    code INTEGER,
    designation VARCHAR(50),
    acronym VARCHAR(10),
    area FLOAT,
    population INTEGER
) NOT INSTANTIABLE NOT FINAL;
/

-- Subtype for Country (geolevel=1, no parent)
CREATE OR REPLACE TYPE country_t UNDER municipalities_t ();
/

-- Subtype for NUT I (geolevel=2, parent is country_t)
CREATE OR REPLACE TYPE nut_i_t UNDER municipalities_t (
    parent REF country_t
);
/

-- Subtype for NUT II (geolevel=3, parent is nut_i_t)
CREATE OR REPLACE TYPE nut_ii_t UNDER municipalities_t (
    parent REF nut_i_t
);
/

-- Subtype for NUT III (geolevel=4, parent is nut_ii_t)
CREATE OR REPLACE TYPE nut_iii_t UNDER municipalities_t (
    parent REF nut_ii_t
);
/

-- Subtype for Municipality (geolevel=5, parent is nut_iii_t)
CREATE OR REPLACE TYPE municipality_t UNDER municipalities_t (
    parent REF nut_iii_t
);
/

CREATE OR REPLACE TYPE headings_t AS OBJECT(
    headingId INTEGER,
    description VARCHAR(100),
    type CHAR(1),
    hlevel INTEGER,
    parent REF headings_t
);
/

CREATE OR REPLACE TYPE periods_t AS OBJECT(
    periodId INTEGER,
    year INTEGER,
    quarter INTEGER
);
/

CREATE OR REPLACE TYPE parties_t AS OBJECT(
    acronym VARCHAR(10),
    partyName VARCHAR(70),
    spectrum VARCHAR(20)
);
/

CREATE OR REPLACE TYPE aexpenses_t AS OBJECT(
    aexpensesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/

CREATE OR REPLACE TYPE arevenues_t AS OBJECT(
    arevenuesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/

CREATE OR REPLACE TYPE leaderships_t AS OBJECT(
    municipality REF municipalities_t,
    period REF periods_t,
    party REF parties_t
);
/


-- TABLES

CREATE TABLE municipalities OF municipalities_t (
    PRIMARY KEY (code),
    UNIQUE (acronym)
);

CREATE TABLE headings OF headings_t (
    PRIMARY KEY (headingId),
    SCOPE FOR (parent) IS headings
);

CREATE TABLE periods OF periods_t (
    PRIMARY KEY (periodId)
);

CREATE TABLE parties OF parties_t (
    PRIMARY KEY (acronym)
);

CREATE TABLE aexpenses OF aexpenses_t (
    PRIMARY KEY (aexpensesId),
    SCOPE FOR (heading) IS headings,
    SCOPE FOR (period) IS periods,
    SCOPE FOR (municipality) IS municipalities
);

CREATE TABLE arevenues OF arevenues_t (
    PRIMARY KEY (arevenuesId),
    SCOPE FOR (heading) IS headings,
    SCOPE FOR (period) IS periods,
    SCOPE FOR (municipality) IS municipalities
);

CREATE TABLE leaderships OF leaderships_t (
    SCOPE FOR (municipality) IS municipalities,
    SCOPE FOR (period) IS periods,
    SCOPE FOR (party) IS parties
);

