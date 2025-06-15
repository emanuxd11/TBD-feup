-- a) Calculate the expenses by period and heading of each region's municipalities. Order municipalities by decreasing population.
SELECT x.region.designation AS region, DEREF(x.heading).description AS heading, DEREF(x.period).year AS year, x.total_expenses
FROM (
    SELECT m.get_nut_iii() AS region, exp.heading, exp.period, SUM(exp.amount) AS total_expenses
    FROM xmunicipalities m, TABLE(m.expenses) exp
    GROUP BY m.get_nut_iii(), exp.heading, exp.period
) x
ORDER BY x.region.population DESC;


-- b) Check whether the values of the higher-level headings are consistent with the corresponding lower values.
SELECT DEREF(x1.heading).description AS heading, x1.soma AS lower_level_sum, x2.soma AS higher_level_value
FROM ( 
    SELECT DEREF(rev.heading).parent AS heading, SUM(rev.amount) AS soma
    FROM xmunicipalities m, TABLE(m.revenues) rev
    WHERE DEREF(rev.heading).hlevel = 2
    GROUP BY DEREF(rev.heading).parent
    UNION ALL
    SELECT DEREF(exp.heading).parent AS heading, SUM(exp.amount) AS soma
    FROM xmunicipalities m, TABLE(m.expenses) exp
    WHERE DEREF(exp.heading).hlevel = 2
    GROUP BY DEREF(exp.heading).parent) x1
FULL OUTER JOIN (
    SELECT rev.heading AS heading, SUM(rev.amount) AS soma
    FROM xmunicipalities m, TABLE(m.revenues) rev
    WHERE DEREF(rev.heading).hlevel = 1
    GROUP BY rev.heading
    UNION ALL
    SELECT exp.heading AS heading, SUM(exp.amount) AS soma
    FROM xmunicipalities m, TABLE(m.expenses) exp
    WHERE DEREF(exp.heading).hlevel = 1
    GROUP BY exp.heading
) x2 ON x1.heading=x2.heading;


-- c) What is the average expense by a thousand inhabitants on each heading for each party?
SELECT x.party.acronym AS party, x.heading.description, x.avg_expense_per_thousand
FROM (
    SELECT l.party, e.heading, AVG((e.amount / m.population) * 1000) AS avg_expense_per_thousand
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    GROUP BY l.party, e.heading
) x;

-- OR

SELECT x.party_coalition, x.heading.description, x.avg_expense_per_thousand
FROM (
    SELECT l.party.partyName AS party_coalition, e.heading, AVG((e.amount / m.population) * 1000) AS avg_expense_per_thousand
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    GROUP BY l.party.partyName, e.heading
) x;


-- d) Which party has more investment per square km each year?
SELECT x.party.acronym AS party, x.period.year AS year, x.investment_per_km2
FROM (
    SELECT l.party, e.period, SUM(e.amount/m.area) AS investment_per_km2
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    WHERE e.heading.description = 'Capital Investments'
    GROUP BY l.party, e.period
    HAVING SUM(e.amount / m.area) = (
        SELECT MAX(SUM(e2.amount / m2.area))
        FROM xmunicipalities m2, TABLE(m2.expenses) e2, TABLE(m2.leaderships) l2
        WHERE DEREF(e2.heading).description = 'Capital Investments'
            AND e2.period = e.period
        GROUP BY l2.party
    )
) x
ORDER BY x.period.year ASC;

-- OR

SELECT x.party_coalition, x.period.year AS year, x.investment_per_km2
FROM (
    SELECT l.party.partyName AS party_coalition, e.period, SUM(e.amount/m.area) AS investment_per_km2
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    WHERE e.heading.description = 'Capital Investments'
    GROUP BY l.party.partyName, e.period
    HAVING SUM(e.amount / m.area) = (
        SELECT MAX(SUM(e2.amount / m2.area))
        FROM xmunicipalities m2, TABLE(m2.expenses) e2, TABLE(m2.leaderships) l2
        WHERE DEREF(e2.heading).description = 'Capital Investments'
            AND e2.period = e.period
        GROUP BY l2.party.partyName
    )
) x
ORDER BY x.period.year ASC;


-- e) Which party has more salaries per thousand inhabitants each year?
SELECT x.party.acronym AS party, x.period.year AS year, x.salaries_per_thousand
FROM (
    SELECT l.party, e.period, SUM((e.amount/m.population) * 1000) AS salaries_per_thousand
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    WHERE e.heading.description = 'Salaries'
    GROUP BY l.party, e.period
    HAVING SUM((e.amount / m.population) * 1000) = (
        SELECT MAX(SUM((e2.amount / m2.population) * 1000))
        FROM xmunicipalities m2, TABLE(m2.expenses) e2, TABLE(m2.leaderships) l2
        WHERE DEREF(e2.heading).description = 'Salaries'
            AND e2.period = e.period
        GROUP BY l2.party
    )
) x
ORDER BY x.period.year ASC;

-- OR

SELECT x.party_coalition, x.period.year AS year, x.salaries_per_thousand
FROM (
    SELECT l.party.partyName AS party_coalition, e.period, SUM((e.amount/m.population) * 1000) AS salaries_per_thousand
    FROM xmunicipalities m, TABLE(m.expenses) e, TABLE(m.leaderships) l
    WHERE e.heading.description = 'Salaries'
    GROUP BY l.party.partyName, e.period
    HAVING SUM((e.amount / m.population) * 1000) = (
        SELECT MAX(SUM((e2.amount / m2.population) * 1000))
        FROM xmunicipalities m2, TABLE(m2.expenses) e2, TABLE(m2.leaderships) l2
        WHERE DEREF(e2.heading).description = 'Salaries'
            AND e2.period = e.period
        GROUP BY l2.party.partyName
    )
) x
ORDER BY x.period.year ASC;


-- f) Add a query that illustrates the use of OR extensions
-- f) Calculate the contribution percentage of each municipality’s balance (revenues - expenses) to the overall balance of its parent regions (NUT III, NUT II, NUT I, Country).
WITH
municipality_balance AS (
    SELECT e.location AS location, (r.revenues-e.expenses) AS balance
    FROM (
        SELECT VALUE(m) AS location, SUM(r.amount) AS revenues
        FROM xmunicipalities m, TABLE(m.revenues) r
        WHERE r.heading.hlevel=2
        GROUP BY VALUE(m)) r
    INNER JOIN (
        SELECT VALUE(m) AS location, SUM(e.amount) AS expenses
        FROM xmunicipalities m, TABLE(m.expenses) e
        WHERE e.heading.hlevel=2
        GROUP BY VALUE(m)) e ON r.location=e.location
),
nut_iii_balance AS (
    SELECT e.location AS location, (r.revenues-e.expenses) AS balance
    FROM (
        SELECT m.get_nut_iii() AS location, SUM(r.amount) AS revenues
        FROM xmunicipalities m, TABLE(m.revenues) r
        WHERE r.heading.hlevel=2
        GROUP BY m.get_nut_iii()) r
    INNER JOIN (
        SELECT m.get_nut_iii() AS location, SUM(e.amount) AS expenses
        FROM xmunicipalities m, TABLE(m.expenses) e
        WHERE e.heading.hlevel=2
        GROUP BY m.get_nut_iii()) e ON r.location=e.location
),
nut_ii_balance AS (
    SELECT e.location AS location, (r.revenues-e.expenses) AS balance
    FROM (
        SELECT m.get_nut_ii() AS location, SUM(r.amount) AS revenues
        FROM xmunicipalities m, TABLE(m.revenues) r
        WHERE r.heading.hlevel=2
        GROUP BY m.get_nut_ii()) r
    INNER JOIN (
        SELECT m.get_nut_ii() AS location, SUM(e.amount) AS expenses
        FROM xmunicipalities m, TABLE(m.expenses) e
        WHERE e.heading.hlevel=2
        GROUP BY m.get_nut_ii()) e ON r.location=e.location
),
nut_i_balance AS (
    SELECT e.location AS location, (r.revenues-e.expenses) AS balance
    FROM (
        SELECT m.get_nut_i() AS location, SUM(r.amount) AS revenues
        FROM xmunicipalities m, TABLE(m.revenues) r
        WHERE r.heading.hlevel=2
        GROUP BY m.get_nut_i()) r
    INNER JOIN (
        SELECT m.get_nut_i() AS location, SUM(e.amount) AS expenses
        FROM xmunicipalities m, TABLE(m.expenses) e
        WHERE e.heading.hlevel=2
        GROUP BY m.get_nut_i()) e ON r.location=e.location
),
country_balance AS (
    SELECT e.location AS location, (r.revenues-e.expenses) AS balance
    FROM (
        SELECT m.get_country() AS location, SUM(r.amount) AS revenues
        FROM xmunicipalities m, TABLE(m.revenues) r
        WHERE r.heading.hlevel=2
        GROUP BY m.get_country()) r
    INNER JOIN (
        SELECT m.get_country() AS location, SUM(e.amount) AS expenses
        FROM xmunicipalities m, TABLE(m.expenses) e
        WHERE e.heading.hlevel=2
        GROUP BY m.get_country()) e ON r.location=e.location
),
base_balance AS (
    SELECT x.*, 
        x.location.get_nut_iii() AS nut_iii,
        x.location.get_nut_ii() AS nut_ii,
        x.location.get_nut_i() AS nut_i,
        x.location.get_country() AS country
    FROM (
        SELECT TREAT(location AS xmunicipalities_t) AS location, balance
        FROM municipality_balance
        UNION ALL
        SELECT TREAT(location AS xmunicipalities_t) AS location, balance
        FROM nut_iii_balance
        UNION ALL
        SELECT TREAT(location AS xmunicipalities_t) AS location, balance
        FROM nut_ii_balance
        UNION ALL
        SELECT TREAT(location AS xmunicipalities_t) AS location, balance
        FROM nut_i_balance
        UNION ALL
        SELECT TREAT(location AS xmunicipalities_t) AS location, balance
        FROM country_balance
    ) x
)   

SELECT m.location.designation AS Location, 
    ROUND((m.balance/ABS(iii.balance))*100,2) AS nut_iii_balance_percentage, 
    ROUND((m.balance/ABS(ii.balance))*100,2) AS nut_ii_balance_percentage, 
    ROUND((m.balance/ABS(i.balance))*100,2) AS nut_i_balance_percentage, 
    ROUND((m.balance/ABS(c.balance))*100,2) AS country_balance_percentage
FROM base_balance m,
    nut_iii_balance iii,
    nut_ii_balance ii,
    nut_i_balance i,
    country_balance c
WHERE m.nut_iii=iii.location(+)
    AND m.nut_ii=ii.location(+)
    AND m.nut_i=i.location(+)
    AND m.country=c.location(+)
ORDER BY nut_iii_balance_percentage ASC, 
    nut_ii_balance_percentage ASC, 
    nut_i_balance_percentage ASC, 
    country_balance_percentage ASC;


