---------------------------------------------------------- LISBON ---------------------------------------------------------------------------
-- Expenses (code 101, large, ×10)
INSERT INTO aexpenses
    SELECT aexpenses_t(1, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(2, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(3, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(4, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(5, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(6, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(7, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(8, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(9, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(10, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(11, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(12, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(13, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(14, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(15, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(16, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(17, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(18, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(19, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(20, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(21, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(22, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(23, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(24, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(25, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(26, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(27, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(28, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(29, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(30, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(31, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO aexpenses
    SELECT aexpenses_t(32, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 4 AND m.code = 101;

-- Revenues (code 101, large, ×10)
INSERT INTO arevenues
    SELECT arevenues_t(1, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(2, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(3, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(4, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(5, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(6, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(7, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(8, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(9, REF(h), REF(pr), REF(m), 2.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(10, REF(h), REF(pr), REF(m), 1.90)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(11, REF(h), REF(pr), REF(m), 2.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(12, REF(h), REF(pr), REF(m), 2.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(13, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(14, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(15, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(16, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(17, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(18, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(19, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(20, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(21, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(22, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(23, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(24, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(25, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(26, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(27, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(28, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(29, REF(h), REF(pr), REF(m), 0.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(30, REF(h), REF(pr), REF(m), 0.48)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(31, REF(h), REF(pr), REF(m), 0.53)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(32, REF(h), REF(pr), REF(m), 0.51)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 4 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(33, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 1 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(34, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 2 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(35, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 3 AND m.code = 101;

INSERT INTO arevenues
    SELECT arevenues_t(36, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 4 AND m.code = 101;


---------------------------------------------------------- SINTRA ---------------------------------------------------------------------------
-- aexpenses for Sintra (code 111, large, 2020–2023, hlevel 2 headings, 32 records)
INSERT INTO aexpenses
    SELECT aexpenses_t(33, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(34, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(35, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(36, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(37, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(38, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(39, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(40, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(41, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(42, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(43, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(44, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(45, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(46, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(47, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(48, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(49, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(50, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(51, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(52, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(53, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(54, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(55, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(56, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(57, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(58, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(59, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(60, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(61, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(62, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(63, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO aexpenses
    SELECT aexpenses_t(64, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 4 AND m.code = 111;

-- arevenues for Sintra (code 111, large, 2020–2023, hlevel 2 headings, 36 records)
INSERT INTO arevenues
    SELECT arevenues_t(37, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(38, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(39, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(40, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(41, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(42, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(43, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(44, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(45, REF(h), REF(pr), REF(m), 2.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(46, REF(h), REF(pr), REF(m), 1.90)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(47, REF(h), REF(pr), REF(m), 2.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(48, REF(h), REF(pr), REF(m), 2.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(49, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(50, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(51, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(52, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(53, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(54, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(55, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(56, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(57, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(58, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(59, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(60, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(61, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(62, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(63, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(64, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(65, REF(h), REF(pr), REF(m), 0.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(66, REF(h), REF(pr), REF(m), 0.48)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(67, REF(h), REF(pr), REF(m), 0.53)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(68, REF(h), REF(pr), REF(m), 0.51)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 4 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(69, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 1 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(70, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 2 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(71, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 3 AND m.code = 111;

INSERT INTO arevenues
    SELECT arevenues_t(72, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 4 AND m.code = 111;

---------------------------------------------------------- GAIA ---------------------------------------------------------------------------
-- aexpenses for Vila Nova de Gaia (code 102, large, 2020–2023, hlevel 2 headings, 32 records)
INSERT INTO aexpenses
    SELECT aexpenses_t(65, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(66, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(67, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(68, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(69, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(70, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(71, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(72, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(73, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(74, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(75, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(76, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(77, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(78, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(79, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(80, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(81, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(82, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(83, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(84, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(85, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(86, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(87, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(88, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(89, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(90, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(91, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(92, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(93, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(94, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(95, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO aexpenses
    SELECT aexpenses_t(96, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 4 AND m.code = 102;

-- arevenues for Vila Nova de Gaia (code 102, large, 2020–2023, hlevel 2 headings, 36 records)
INSERT INTO arevenues
    SELECT arevenues_t(73, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(74, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(75, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(76, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(77, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(78, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(79, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(80, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(81, REF(h), REF(pr), REF(m), 2.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(82, REF(h), REF(pr), REF(m), 1.90)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(83, REF(h), REF(pr), REF(m), 2.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(84, REF(h), REF(pr), REF(m), 2.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(85, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(86, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(87, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(88, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(89, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(90, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(91, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(92, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(93, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(94, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(95, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(96, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(97, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(98, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(99, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(100, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(101, REF(h), REF(pr), REF(m), 0.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(102, REF(h), REF(pr), REF(m), 0.48)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(103, REF(h), REF(pr), REF(m), 0.53)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(104, REF(h), REF(pr), REF(m), 0.51)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 4 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(105, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 1 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(106, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 2 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(107, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 3 AND m.code = 102;

INSERT INTO arevenues
    SELECT arevenues_t(108, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 4 AND m.code = 102;

---------------------------------------------------------- PORTO ---------------------------------------------------------------------------
-- aexpenses for Porto (code 201, large, 2020–2023, hlevel 2 headings, 32 records)
INSERT INTO aexpenses
    SELECT aexpenses_t(97, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(98, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(99, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(100, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 6 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(101, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(102, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(103, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(104, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 7 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(105, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(106, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(107, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(108, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 8 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(109, REF(h), REF(pr), REF(m), 10.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(110, REF(h), REF(pr), REF(m), 9.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(111, REF(h), REF(pr), REF(m), 10.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(112, REF(h), REF(pr), REF(m), 10.20)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 9 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(113, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(114, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(115, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(116, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 10 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(117, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(118, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(119, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(120, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 11 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(121, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(122, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(123, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(124, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 12 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(125, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(126, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(127, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO aexpenses
    SELECT aexpenses_t(128, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 13 AND pr.periodId = 4 AND m.code = 201;

-- arevenues for Porto (code 201, large, 2020–2023, hlevel 2 headings, 36 records)
INSERT INTO arevenues
    SELECT arevenues_t(109, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(110, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(111, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(112, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 18 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(113, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(114, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(115, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(116, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 19 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(117, REF(h), REF(pr), REF(m), 2.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(118, REF(h), REF(pr), REF(m), 1.90)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(119, REF(h), REF(pr), REF(m), 2.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(120, REF(h), REF(pr), REF(m), 2.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 20 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(121, REF(h), REF(pr), REF(m), 20.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(122, REF(h), REF(pr), REF(m), 19.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(123, REF(h), REF(pr), REF(m), 21.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(124, REF(h), REF(pr), REF(m), 20.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 21 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(125, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(126, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(127, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(128, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 22 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(129, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(130, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(131, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(132, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 23 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(133, REF(h), REF(pr), REF(m), 5.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(134, REF(h), REF(pr), REF(m), 4.75)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(135, REF(h), REF(pr), REF(m), 5.25)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(136, REF(h), REF(pr), REF(m), 5.10)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 24 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(137, REF(h), REF(pr), REF(m), 0.50)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(138, REF(h), REF(pr), REF(m), 0.48)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(139, REF(h), REF(pr), REF(m), 0.53)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(140, REF(h), REF(pr), REF(m), 0.51)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 25 AND pr.periodId = 4 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(141, REF(h), REF(pr), REF(m), 1.00)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 1 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(142, REF(h), REF(pr), REF(m), 0.95)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 2 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(143, REF(h), REF(pr), REF(m), 1.05)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 3 AND m.code = 201;

INSERT INTO arevenues
    SELECT arevenues_t(144, REF(h), REF(pr), REF(m), 1.02)
    FROM headings h, periods pr, municipalities m
    WHERE h.headingId = 26 AND pr.periodId = 4 AND m.code = 201;