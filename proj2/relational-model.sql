Municipalities(
    code           INTEGER PRIMARY KEY,
    designation    VARCHAR(50),
    acronym        VARCHAR(10),
    area           FLOAT,
    population     INTEGER,
    geolevel       INTEGER,
    parent         INTEGER,
    FOREIGN KEY (parent) REFERENCES Municipalities(code)
);

Headings(
    headingId      INTEGER PRIMARY KEY,
    description    VARCHAR(100),
    type           CHAR(1),
    hlevel         INTEGER,
    parent         INTEGER,
    FOREIGN KEY (parent) REFERENCES Headings(headingId)
);

Periods(
    periodId       INTEGER PRIMARY KEY,
    year           INTEGER,
    quarter        INTEGER
);

Parties(
    acronym        VARCHAR(10) PRIMARY KEY,
    partyName      VARCHAR(50),
    spectrum       VARCHAR(20)
);

AExpenses(
    aexpenseId     INTEGER PRIMARY KEY,
    headingId      INTEGER,
    periodId       INTEGER,
    code           INTEGER,
    amount         FLOAT,
    FOREIGN KEY (headingId) REFERENCES Headings(headingId),
    FOREIGN KEY (periodId) REFERENCES Periods(periodId),
    FOREIGN KEY (code) REFERENCES Municipalities(code)
);

ARevenues(
    arevenueId     INTEGER PRIMARY KEY,
    headingId      INTEGER,
    periodId       INTEGER,
    code           INTEGER,
    amount         FLOAT,
    FOREIGN KEY (headingId) REFERENCES Headings(headingId),
    FOREIGN KEY (periodId) REFERENCES Periods(periodId),
    FOREIGN KEY (code) REFERENCES Municipalities(code)
);

Leaderships(
    code           INTEGER,
    periodId       INTEGER,
    acronym        VARCHAR(10),
    PRIMARY KEY (code, periodId),
    FOREIGN KEY (code) REFERENCES Municipalities(code),
    FOREIGN KEY (periodId) REFERENCES Periods(periodId),
    FOREIGN KEY (acronym) REFERENCES Parties(acronym)
);
