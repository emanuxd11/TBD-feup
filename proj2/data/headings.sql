-- hlevel 1: Top-level expense categories
INSERT INTO headings
    VALUES (headings_t(1, 'General Administration', 'E', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(2, 'Infrastructure and Urban Planning', 'E', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(3, 'Education and Culture', 'E', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(4, 'Social Services', 'E', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(5, 'Environment and Sanitation', 'E', 1, NULL));

-- hlevel 2: Expense subcategories
INSERT INTO headings
    SELECT headings_t(6, 'Salaries', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 1;

INSERT INTO headings
    SELECT headings_t(7, 'Office and Operational Costs', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 1;

INSERT INTO headings
    SELECT headings_t(8, 'Capital Investments', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 2;

INSERT INTO headings
    SELECT headings_t(9, 'Maintenance', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 2;

INSERT INTO headings
    SELECT headings_t(10, 'School Operations', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 3;

INSERT INTO headings
    SELECT headings_t(11, 'Cultural Events', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 3;

INSERT INTO headings
    SELECT headings_t(12, 'Social Assistance Programs', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 4;

INSERT INTO headings
    SELECT headings_t(13, 'Waste Collection and Treatment', 'E', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 5;

-- hlevel 1: Top-level revenue categories
INSERT INTO headings
    VALUES (headings_t(14, 'Taxes', 'R', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(15, 'Transfers', 'R', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(16, 'Fees and Charges', 'R', 1, NULL));

INSERT INTO headings
    VALUES (headings_t(17, 'Other Revenues', 'R', 1, NULL));

-- hlevel 2: Revenue subcategories
INSERT INTO headings
    SELECT headings_t(18, 'IMI - Property Tax', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 14;

INSERT INTO headings
    SELECT headings_t(19, 'IMT - Property Transfer Tax', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 14;

INSERT INTO headings
    SELECT headings_t(20, 'IUC - Vehicle Tax', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 14;

INSERT INTO headings
    SELECT headings_t(21, 'State Grants', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 15;

INSERT INTO headings
    SELECT headings_t(22, 'EU Funds', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 15;

INSERT INTO headings
    SELECT headings_t(23, 'Licensing Fees', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 16;

INSERT INTO headings
    SELECT headings_t(24, 'Utility Service Charges', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 16;

INSERT INTO headings
    SELECT headings_t(25, 'Fines and Penalties', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 17;

INSERT INTO headings
    SELECT headings_t(26, 'Asset Sales', 'R', 2, REF(h))
    FROM headings h
    WHERE h.headingId = 17;