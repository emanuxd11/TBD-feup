SELECT m.designation AS municipality,
       DEREF(TREAT(VALUE(m) AS municipality_t).parent).designation AS parent_name
FROM municipalities m
WHERE m.code = 101;