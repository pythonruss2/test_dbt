SELECT "BAR",
    "FOO",
     123
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1, 2
