-- DROP ALL TABLES
BEGIN
    FOR t IN (SELECT object_name FROM user_objects WHERE object_name IN 
              ('XMUNICIPALITIES', 'XHEADINGS', 'XPERIODS', 'XPARTIES')) 
    LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.object_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- DROP ALL TYPES
BEGIN
    FOR t IN (SELECT type_name FROM user_types WHERE type_name IN 
              ('XMUNICIPALITY_T', 'XNUT_III_T', 'XNUT_II_T', 'XNUT_I_T', 'XCOUNTRY_T', 'XMUNICIPALITIES_T', 'XLEADERSHIPS_TAB_T', 'XLEADERSHIP_RECORD_T', 'XFINANCIAL_RECORDS_TAB_T', 'XFINANCIAL_RECORD_T', 'XPARTIES_T', 'XPERIODS_T', 'XHEADINGS_T')) 
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

CREATE OR REPLACE TYPE xheadings_t AS OBJECT(
    headingId INTEGER,
    description VARCHAR(100),
    type CHAR(1),
    hlevel INTEGER,
    parent REF xheadings_t
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     PERIOD     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE xperiods_t AS OBJECT(
    periodId INTEGER,
    year INTEGER,
    quarter INTEGER
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     PARTY     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE xparties_t AS OBJECT(
    acronym VARCHAR(30),
    partyName VARCHAR(70),
    spectrum VARCHAR(20)
);
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::     EXPENSES/REVENUES     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE xfinancial_record_t AS OBJECT (
    heading REF xheadings_t,
    period REF xperiods_t,
    amount NUMBER
);
/

CREATE OR REPLACE TYPE xfinancial_records_tab_t AS TABLE OF xfinancial_record_t;
/

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     LEADERSHIP     :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE xleadership_record_t AS OBJECT (
    period REF xperiods_t,
    party REF xparties_t
);
/

CREATE OR REPLACE TYPE xleaderships_tab_t AS TABLE OF xleadership_record_t;
/


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::     MUNICIPALITY     ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

CREATE OR REPLACE TYPE xmunicipalities_t AS OBJECT (
    code INTEGER,
    designation VARCHAR(50),
    acronym VARCHAR(10),
    area FLOAT,
    population INTEGER,
    expenses xfinancial_records_tab_t,
    revenues xfinancial_records_tab_t,
    leaderships xleaderships_tab_t,
    MAP MEMBER FUNCTION compare RETURN NUMBER,
    MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    MEMBER FUNCTION get_country RETURN xmunicipalities_t,
    MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t,
    MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t,
    MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t
) NOT INSTANTIABLE NOT FINAL;
/

-- Subtype for Country (geolevel=1, no parent)
CREATE OR REPLACE TYPE xcountry_t UNDER xmunicipalities_t (
    parent REF xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t
);
/

-- Subtype for NUT I (geolevel=2, parent is xcountry_t)
CREATE OR REPLACE TYPE xnut_i_t UNDER xmunicipalities_t (
    parent REF xcountry_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t
);
/

-- Subtype for NUT II (geolevel=3, parent is xnut_i_t)
CREATE OR REPLACE TYPE xnut_ii_t UNDER xmunicipalities_t (
    parent REF xnut_i_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t
);
/

-- Subtype for NUT III (geolevel=4, parent is xnut_ii_t)
CREATE OR REPLACE TYPE xnut_iii_t UNDER xmunicipalities_t (
    parent REF xnut_ii_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xnut_ii_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t
);
/

-- Subtype for Municipality (geolevel=5, parent is xnut_iii_t)
CREATE OR REPLACE TYPE xmunicipality_t UNDER xmunicipalities_t (
    parent REF xnut_iii_t,
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t,
    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t,
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t,
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xnut_ii_t,
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xnut_iii_t
);
/


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     TABLES     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--

CREATE TABLE xmunicipalities OF xmunicipalities_t (
    PRIMARY KEY (code),
    UNIQUE (acronym)
) 
NESTED TABLE expenses STORE AS expense_nested_tab,
NESTED TABLE revenues STORE AS revenue_nested_tab,
NESTED TABLE leaderships STORE AS leadership_nested_tab;
/

CREATE TABLE xheadings OF xheadings_t (
    PRIMARY KEY (headingId),
    SCOPE FOR (parent) IS xheadings
);
/

CREATE TABLE xperiods OF xperiods_t (
    PRIMARY KEY (periodId)
);
/

CREATE TABLE xparties OF xparties_t (
    PRIMARY KEY (acronym)
);
/


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     TYPES BODIES     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--

-- Type body for xmunicipalities_t
CREATE OR REPLACE TYPE BODY xmunicipalities_t AS
    MAP MEMBER FUNCTION compare RETURN NUMBER IS
    BEGIN
        RETURN self.code;
    END;

    MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20001, 'get_parent not implemented for abstract xmunicipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_country RETURN xmunicipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20002, 'get_country not implemented for abstract xmunicipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20003, 'get_nut_i not implemented for abstract xmunicipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20004, 'get_nut_ii not implemented for abstract xmunicipalities_t');
        RETURN NULL;
    END;

    MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t IS
    BEGIN
        RAISE_APPLICATION_ERROR(-20005, 'get_nut_iii not implemented for abstract xmunicipalities_t');
        RETURN NULL;
    END;
END;
/

-- Type body for xcountry_t
CREATE OR REPLACE TYPE BODY xcountry_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL; -- Country has no parent
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for xnut_i_t
CREATE OR REPLACE TYPE BODY xnut_i_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
        v_parent xmunicipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS xcountry_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for xnut_ii_t
CREATE OR REPLACE TYPE BODY xnut_ii_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
        v_parent xmunicipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS xcountry_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS xnut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for xnut_iii_t
CREATE OR REPLACE TYPE BODY xnut_iii_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
        v_parent xmunicipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent() AS xcountry_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS xnut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xnut_ii_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS xnut_ii_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xmunicipalities_t IS
        BEGIN
            RETURN NULL;
        END;
END;
/

-- Type body for xmunicipality_t
CREATE OR REPLACE TYPE BODY xmunicipality_t AS
    OVERRIDING MEMBER FUNCTION get_parent RETURN xmunicipalities_t IS
        v_parent xmunicipalities_t;
        BEGIN
            SELECT DEREF(self.parent) INTO v_parent FROM DUAL;
            RETURN v_parent;
        END;

    OVERRIDING MEMBER FUNCTION get_country RETURN xcountry_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent().get_parent() AS xcountry_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_i RETURN xnut_i_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent().get_parent() AS xnut_i_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_ii RETURN xnut_ii_t IS
        BEGIN
            RETURN TREAT(self.get_parent().get_parent() AS xnut_ii_t);
        END;
    
    OVERRIDING MEMBER FUNCTION get_nut_iii RETURN xnut_iii_t IS
        BEGIN
            RETURN TREAT(self.get_parent() AS xnut_iii_t);
        END;
END;
/

