SELECT "BAR", count(*) as "my count star"
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1
