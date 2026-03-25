SELECT "BAR", "FOO", 3
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1, 2
