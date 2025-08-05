SELECT "BAR", 2 as further_example
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1
