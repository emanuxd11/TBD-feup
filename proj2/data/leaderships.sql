-- Revised leaderships for 23 municipalities (GeoLevel 5) for 2020–2023, accounting for 2017–2021 and 2021–2025 terms
-- Lisbon (code 101, 2020: PS, 2021–2023: AD)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 101 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 101 AND pr.periodId = 2 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 101 AND pr.periodId = 3 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 101 AND pr.periodId = 4 AND p.acronym = 'AD';

-- Sintra (code 111, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 111 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 111 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 111 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 111 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Vila Nova de Gaia (code 102, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 102 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 102 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 102 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 102 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Porto (code 201, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 201 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 201 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 201 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 201 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Odemira (code 212, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 212 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 212 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 212 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 212 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Alcácer do Sal (code 213, 2020–2023: CDU)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 213 AND pr.periodId = 1 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 213 AND pr.periodId = 2 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 213 AND pr.periodId = 3 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 213 AND pr.periodId = 4 AND p.acronym = 'CDU';

-- Mértola (code 214, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 214 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 214 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 214 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 214 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Beja (code 215, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 215 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 215 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 215 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 215 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Loures (code 216, 2020: CDU, 2021–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 216 AND pr.periodId = 1 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 216 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 216 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 216 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Cascais (code 217, 2020–2023: AD)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 217 AND pr.periodId = 1 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 217 AND pr.periodId = 2 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 217 AND pr.periodId = 3 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 217 AND pr.periodId = 4 AND p.acronym = 'AD';

-- Amadora (code 218, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 218 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 218 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 218 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 218 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Almada (code 219, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 219 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 219 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 219 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 219 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Oeiras (code 220, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 220 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 220 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 220 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 220 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Matosinhos (code 221, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 221 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 221 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 221 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 221 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Seixal (code 222, 2020–2023: CDU)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 222 AND pr.periodId = 1 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 222 AND pr.periodId = 2 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 222 AND pr.periodId = 3 AND p.acronym = 'CDU';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 222 AND pr.periodId = 4 AND p.acronym = 'CDU';

-- Gondomar (code 223, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 223 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 223 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 223 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 223 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Guimarães (code 224, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 224 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 224 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 224 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 224 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Odivelas (code 225, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 225 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 225 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 225 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 225 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Idanha-a-Nova (code 226, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 226 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 226 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 226 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 226 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Castro Daire (code 227, 2020–2023: AD)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 227 AND pr.periodId = 1 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 227 AND pr.periodId = 2 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 227 AND pr.periodId = 3 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 227 AND pr.periodId = 4 AND p.acronym = 'AD';

-- Alandroal (code 228, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 228 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 228 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 228 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 228 AND pr.periodId = 4 AND p.acronym = 'PS';

-- Sátão (code 229, 2020–2023: AD)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 229 AND pr.periodId = 1 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 229 AND pr.periodId = 2 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 229 AND pr.periodId = 3 AND p.acronym = 'AD';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 229 AND pr.periodId = 4 AND p.acronym = 'AD';

-- Melgaço (code 230, 2020–2023: PS)
INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 230 AND pr.periodId = 1 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 230 AND pr.periodId = 2 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 230 AND pr.periodId = 3 AND p.acronym = 'PS';

INSERT INTO leaderships
    SELECT REF(m), REF(pr), REF(p)
    FROM municipalities m, periods pr, parties p
    WHERE m.code = 230 AND pr.periodId = 4 AND p.acronym = 'PS';