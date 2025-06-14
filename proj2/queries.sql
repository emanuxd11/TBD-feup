-- a) Calculate the expenses by period and heading of each region's municipalities. Order municipalities by decreasing population.
/* SELECT m.designation, p.year, h.description, m.get_total_expenses(VALUE(h), VALUE(p)) AS total_expenses
FROM municipalities m, periods p, headings h
-- WHERE VALUE(m) IS OF (municipality_t)
ORDER BY m.population DESC; */

SELECT x.municipality.designation, DEREF(x.heading).description, DEREF(x.period).year, x.total_expenses
FROM (
    SELECT e.municipality.get_nut_iii() AS municipality, e.heading, e.period, SUM(e.amount) AS total_expenses
    FROM aexpenses e
    GROUP BY e.municipality.get_nut_iii(), e.heading, e.period
) x
ORDER BY x.municipality.population DESC;

-- b) Check whether the values of the higher-level headings are consistent with the corresponding lower values.
SELECT DEREF(x1.heading).description, x1.soma AS lower_level_sum, x2.soma AS higher_level_value
FROM
    (SELECT DEREF(r.heading).parent AS heading, SUM(r.amount) AS soma
    FROM arevenues r
    WHERE DEREF(r.heading).hlevel = 2
    GROUP BY DEREF(r.heading).parent
    UNION ALL
    SELECT DEREF(e.heading).parent AS heading, SUM(e.amount) AS soma
    FROM aexpenses e
    WHERE DEREF(e.heading).hlevel = 2
    GROUP BY DEREF(e.heading).parent) x1
    FULL OUTER JOIN
    (SELECT r.heading AS heading, SUM(r.amount) AS soma
    FROM arevenues r
    WHERE DEREF(r.heading).hlevel = 1
    GROUP BY r.heading
    UNION ALL
    SELECT e.heading AS heading, SUM(e.amount) AS soma
    FROM aexpenses e
    WHERE DEREF(e.heading).hlevel = 1
    GROUP BY e.heading) x2 ON x1.heading = x2.heading;

-- c) What is the average expense by a thousand inhabitants on each heading for each party?
/* SELECT DEREF(l.party).partyName, AVG((m.get_total_expenses_by_heading(VALUE(h)) / m.population) * 1000) AS avg_expense_per_thousand
FROM municipalities m, headings h, leaderships l
WHERE l.municipality = REF(m)
    AND TREAT(VALUE(m) AS municipality_t) IS NOT NULL
GROUP BY DEREF(l.party).partyName; */

SELECT x.party.acronym, x.heading.description, x.avg_expense_per_thousand
FROM (
    SELECT l.party, e.heading, AVG((e.amount / l.municipality.population) * 1000) AS avg_expense_per_thousand
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality=l.municipality
    GROUP BY l.party, e.heading
) x;

-- OR

SELECT x.party_coalition, x.heading.description, x.avg_expense_per_thousand
FROM (
    SELECT l.party.partyName AS party_coalition, e.heading, AVG((e.amount / l.municipality.population) * 1000) AS avg_expense_per_thousand
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality=l.municipality
    GROUP BY l.party.partyName, e.heading
) x;

-- d) Which party has more investment per square km each year?
/* SELECT DEREF(l.party).partyName, p.year, SUM(m.get_total_expenses(VALUE(h), VALUE(p)) / m.area)
FROM municipalities m, headings h, periods p, leaderships l
WHERE l.municipality = REF(m)
    AND h.description = 'Capital Investments'
GROUP BY DEREF(l.party).partyName, p.year; */

SELECT x.party.acronym AS party, x.period.year AS year, x.investment_per_km2
FROM (
    SELECT l.party, e.period, SUM(e.amount/e.municipality.area) AS investment_per_km2
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality = l.municipality
    WHERE e.heading.description = 'Capital Investments'
    GROUP BY l.party, e.period
    HAVING SUM(e.amount / e.municipality.area) = (
        SELECT MAX(SUM(e2.amount / e2.municipality.area))
        FROM aexpenses e2
        INNER JOIN leaderships l2 ON e2.municipality = l2.municipality
        WHERE DEREF(e2.heading).description = 'Capital Investments'
            AND e2.period = e.period
        GROUP BY l2.party
    )
) x
ORDER BY x.period.year ASC;

-- OR

SELECT x.party_coalition, x.period.year AS year, x.investment_per_km2
FROM (
    SELECT l.party.partyName AS party_coalition, e.period, SUM(e.amount/e.municipality.area) AS investment_per_km2
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality = l.municipality
    WHERE e.heading.description = 'Capital Investments'
    GROUP BY l.party.partyName, e.period
    HAVING SUM(e.amount / e.municipality.area) = (
        SELECT MAX(SUM(e2.amount / e2.municipality.area))
        FROM aexpenses e2
        INNER JOIN leaderships l2 ON e2.municipality = l2.municipality
        WHERE DEREF(e2.heading).description = 'Capital Investments'
            AND e2.period = e.period
        GROUP BY l2.party.partyName
    )
) x
ORDER BY x.period.year ASC;

-- e) Which party has more salaries per thousand inhabitants each year?
/* SELECT DEREF(l.party).partyName, p.year, SUM((m.get_total_expenses(VALUE(h), VALUE(p)) / m.population) * 1000)
FROM municipalities m, headings h, periods p, leaderships l
WHERE l.municipality = REF(m)
    AND h.description = 'Salaries'
GROUP BY DEREF(l.party).partyName, p.year; */

SELECT x.party.acronym AS party, x.period.year AS year, x.salaries_per_thousand
FROM (
    SELECT l.party, e.period, SUM((e.amount/e.municipality.population) * 1000) AS salaries_per_thousand
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality = l.municipality
    WHERE e.heading.description = 'Salaries'
    GROUP BY l.party, e.period
    HAVING SUM((e.amount / e.municipality.population) * 1000) = (
        SELECT MAX(SUM((e2.amount / e2.municipality.population) * 1000))
        FROM aexpenses e2
        INNER JOIN leaderships l2 ON e2.municipality = l2.municipality
        WHERE DEREF(e2.heading).description = 'Salaries'
            AND e2.period = e.period
        GROUP BY l2.party
    )
) x
ORDER BY x.period.year ASC;

-- OR

SELECT x.party_coalition, x.period.year AS year, x.salaries_per_thousand
FROM (
    SELECT l.party.partyName AS party_coalition, e.period, SUM((e.amount/e.municipality.population) * 1000) AS salaries_per_thousand
    FROM aexpenses e INNER JOIN leaderships l ON e.municipality = l.municipality
    WHERE e.heading.description = 'Salaries'
    GROUP BY l.party.partyName, e.period
    HAVING SUM((e.amount / e.municipality.population) * 1000) = (
        SELECT MAX(SUM((e2.amount / e2.municipality.population) * 1000))
        FROM aexpenses e2
        INNER JOIN leaderships l2 ON e2.municipality = l2.municipality
        WHERE DEREF(e2.heading).description = 'Salaries'
            AND e2.period = e.period
        GROUP BY l2.party.partyName
    )
) x
ORDER BY x.period.year ASC;



-- f) Add a query that illustrates the use of OR extensions