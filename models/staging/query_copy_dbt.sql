SELECT "BAR",
    "FOO",
    "FOO" / "BAR" AS "TEST",
    COUNT(*) AS "COUNT"
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
WHERE "FOO" / "BAR" = 0.9
GROUP BY 1, 2, 3
