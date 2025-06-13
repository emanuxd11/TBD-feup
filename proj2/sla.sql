SELECT m.designation AS municipality,
       DEREF(TREAT(VALUE(m) AS municipality_t).parent).designation AS parent_name
FROM municipalities m
WHERE m.code = 101;

SELECT *
FROM municipalities m
WHERE VALUE(m) IS OF (municipality_t);

/* SELECT m.code, 
       CASE 
           WHEN VALUE(m) IS OF (nut_i_t) THEN DEREF(TREAT(VALUE(m) AS nut_i_t).parent).code
           WHEN VALUE(m) IS OF (nut_ii_t) THEN DEREF(TREAT(VALUE(m) AS nut_ii_t).parent).code
           WHEN VALUE(m) IS OF (nut_iii_t) THEN DEREF(TREAT(VALUE(m) AS nut_iii_t).parent).code
           WHEN VALUE(m) IS OF (municipality_t) THEN DEREF(TREAT(VALUE(m) AS municipality_t).parent).code
           ELSE NULL
       END AS parent_code
FROM municipalities m */

-- ONLY WORKS FOR ONE SUBTYPE (municipality)
SELECT m.code AS municipality, DEREF(TREAT(VALUE(m) AS municipality_t).parent).code AS parent_code
FROM municipalities m;

-- WORKS FOR ALL
SELECT m.code, m.get_parent().code AS parent_code
FROM municipalities m

SELECT m.code, m.area, m.population, p.sum_area, p.sum_population, 
    CASE WHEN m.area = p.sum_area THEN 1 ELSE 0 END AS area_comp,
    CASE WHEN m.population = p.sum_population THEN 1 ELSE 0 END AS pop_comp
FROM municipalities m
    INNER JOIN (SELECT m.get_parent().code AS parent_code, SUM(m.area) AS sum_area, SUM(m.population) AS sum_population
    FROM municipalities m
    GROUP BY m.get_parent().code)p ON m.code=p.parent_code
WHERE VALUE(m) IS NOT OF (municipality_t)
ORDER BY m.code;
