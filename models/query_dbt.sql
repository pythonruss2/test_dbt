SELECT "BAR",
    COALESCE(CASE
        WHEN "BAR" = 0 THEN NULL
        ELSE COALESCE("FOO", 0) / "BAR"
    END, 0) * 5 AS "KEWL",
    "FOO"
FROM {{ref('example_data')}} AS "omni_dbt__example_data"
GROUP BY 1, 3, 2
