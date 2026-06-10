SELECT "FOO" / "BAR" AS "TEST",
    "FOO",
    COUNT(*) AS "COUNT"
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 2, 1
