SELECT "BAR", 3,
    COUNT(*) AS "COUNT"
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1,2
