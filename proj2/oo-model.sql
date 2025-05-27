-- TYPES

CREATE TYPE municipalities_t AS OBJECT(
    code INTEGER,
    designation VARCHAR(50),
    acronym VARCHAR(10),
    area FLOAT,
    population INTEGER,
    geolevel INTEGER, -- 1=Country, 2=NUT I, 3=NUT II, 4=NUT III, 5=Municipality
    parent REF municipalities_t
);
/

CREATE TYPE headings_t AS OBJECT(
    headingId INTEGER,
    description VARCHAR(100),
    type CHAR(1),
    hlevel INTEGER,
    parent REF headings_t
);
/

CREATE TYPE periods_t AS OBJECT(
    periodId INTEGER,
    year INTEGER,
    quarter INTEGER
);
/

CREATE TYPE parties_t AS OBJECT(
    acronym VARCHAR(10),
    partyName VARCHAR(50),
    spectrum VARCHAR(20)
);
/

CREATE TYPE aexpenses_t AS OBJECT(
    aexpensesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/

CREATE TYPE arevenues_t AS OBJECT(
    arevenuesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/

CREATE TYPE leaderships_t AS OBJECT(
    municipality REF municipalities_t,
    period REF periods_t,
    party REF parties_t
);
/


-- TABLES

CREATE TABLE municipalities OF municipalities_t (
    PRIMARY KEY (code),
    UNIQUE (acronym),
    SCOPE FOR (parent) IS municipalities
);

CREATE TABLE headings OF headings_t (
    PRIMARY KEY (headingId),
    SCOPE FOR (parent) IS headings
);

CREATE TABLE periods OF periods_t (
    PRIMARY KEY (periodId),
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

