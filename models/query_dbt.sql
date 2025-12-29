SELECT "omni_dbt__example_data.bar",
    "omni_dbt__example_data.test",
    "omni_dbt__example_data.foo",
    "$omni_pivot_row_num",
    "$omni_pivot_col_num"
FROM (SELECT "omni_dbt__example_data.bar",
            "omni_dbt__example_data.foo",
            "omni_dbt__example_data.test",
            "$omni_pivot_row_num",
            "$omni_pivot_col_num",
            MIN("$omni_pivot_col_num") OVER (PARTITION BY "$omni_pivot_row_num") AS "$f5"
        FROM (SELECT "omni_dbt__example_data.bar",
                    "omni_dbt__example_data.foo",
                    "omni_dbt__example_data.test",
                    DENSE_RANK() OVER (ORDER BY "omni_dbt__example_data.bar", "omni_dbt__example_data.test") AS "$omni_pivot_row_num",
                    DENSE_RANK() OVER (ORDER BY "omni_dbt__example_data.foo") AS "$omni_pivot_col_num"
                FROM (SELECT "BAR" AS "omni_dbt__example_data.bar",
                            "FOO" AS "omni_dbt__example_data.foo",
                            "FOO" / "BAR" AS "omni_dbt__example_data.test"
                        FROM {{ref('example_data')}} AS "omni_dbt__example_data"
                        GROUP BY 1, 2, 3) AS "t0") AS "t2") AS "t3"
WHERE "$omni_pivot_col_num" <= 50 OR "$omni_pivot_col_num" = "$f5"
ORDER BY "$omni_pivot_row_num", "$omni_pivot_col_num"
