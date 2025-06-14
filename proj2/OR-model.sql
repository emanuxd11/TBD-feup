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

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     TYPES     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     HEADING     ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE headings_t AS OBJECT(
    headingId INTEGER,
    description VARCHAR(100),
    type CHAR(1),
    hlevel INTEGER,
    parent REF headings_t
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     PERIOD     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE periods_t AS OBJECT(
    periodId INTEGER,
    year INTEGER,
    quarter INTEGER
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     MUNICIPALITY     ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE municipalities_t AS OBJECT(
    code INTEGER,
    designation VARCHAR(50),
    acronym VARCHAR(10),
    area FLOAT,
    population INTEGER,
    MAP MEMBER FUNCTION compare RETURN NUMBER,
    MEMBER FUNCTION get_parent RETURN municipalities_t,
    MEMBER FUNCTION get_country RETURN municipalities_t,
    MEMBER FUNCTION get_nut_i RETURN municipalities_t,
    MEMBER FUNCTION get_nut_ii RETURN municipalities_t,
    MEMBER FUNCTION get_nut_iii RETURN municipalities_t
) NOT INSTANTIABLE NOT FINAL;
/

-- Subtype for Country (geolevel=1, no parent)
CREATE OR REPLACE TYPE country_t UNDER municipalities_t (
    parent REF municipalities_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t
);
/

-- Subtype for NUT I (geolevel=2, parent is country_t)
CREATE OR REPLACE TYPE nut_i_t UNDER municipalities_t (
    parent REF country_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN country_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t
);
/

-- Subtype for NUT II (geolevel=3, parent is nut_i_t)
CREATE OR REPLACE TYPE nut_ii_t UNDER municipalities_t (
    parent REF nut_i_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN country_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t
);
/

-- Subtype for NUT III (geolevel=4, parent is nut_ii_t)
CREATE OR REPLACE TYPE nut_iii_t UNDER municipalities_t (
    parent REF nut_ii_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN country_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN nut_ii_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t
);
/

-- Subtype for Municipality (geolevel=5, parent is nut_iii_t)
CREATE OR REPLACE TYPE municipality_t UNDER municipalities_t (
    parent REF nut_iii_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN country_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN nut_ii_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN nut_iii_t
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     PARTY     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE parties_t AS OBJECT(
    acronym VARCHAR(30),
    partyName VARCHAR(70),
    spectrum VARCHAR(20)
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     EXPENSE     ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE aexpenses_t AS OBJECT(
    aexpensesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     REVENUE     ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE arevenues_t AS OBJECT(
    arevenuesId INTEGER,
    heading REF headings_t,
    period REF periods_t,
    municipality REF municipalities_t,
    amount FLOAT
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     LEADERSHIP     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE leaderships_t AS OBJECT(
    municipality REF municipalities_t,
    period REF periods_t,
    party REF parties_t
);
/


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     TABLES     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--

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


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     TYPES BODIES     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--

-- Type body for municipalities_t
CREATE OR REPLACE TYPE BODY municipalities_t AS
    MAP MEMBER FUNCTION compare RETURN NUMBER IS
    BEGIN
        RETURN self.code;
    END;

    MEMBER FUNCTION get_parent RETURN municipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20001, 'get_parent not implemented for abstract municipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_country RETURN municipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20002, 'get_country not implemented for abstract municipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_i RETURN municipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20003, 'get_nut_i not implemented for abstract municipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_ii RETURN municipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20004, 'get_nut_ii not implemented for abstract municipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_iii RETURN municipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20005, 'get_nut_iii not implemented for abstract municipalities_t');
        RETURN NULL;
    END;
END;
/

-- Type body for country_t
CREATE OR REPLACE TYPE BODY country_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t IS
        BEGIN
            RETURN NULL; -- Country has no parent
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for nut_i_t
CREATE OR REPLACE TYPE BODY nut_i_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t IS
        v_parent municipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN country_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS country_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for nut_ii_t
CREATE OR REPLACE TYPE BODY nut_ii_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t IS
        v_parent municipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN country_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS country_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS nut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for nut_iii_t
CREATE OR REPLACE TYPE BODY nut_iii_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t IS
        v_parent municipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN country_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent() AS country_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS nut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN nut_ii_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS nut_ii_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN municipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for municipality_t
CREATE OR REPLACE TYPE BODY municipality_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN municipalities_t IS
        v_parent municipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN country_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent().get_parent() AS country_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN nut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent() AS nut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN nut_ii_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS nut_ii_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN nut_iii_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS nut_iii_t);
        END;
END;
/

