# SQL Query Bug: Handling NULL Values in Comparisons

This repository demonstrates a common SQL bug related to comparing numerical values against `NULL`. The original query unintentionally excludes rows with `NULL` salaries, leading to incomplete results. The solution illustrates how to properly handle `NULL` values using the `IS NULL` or `IS NOT NULL` operators, or using `COALESCE` to substitute a default value.

## Bug Report
The provided SQL query is meant to retrieve all employees in the 'Sales' department with salaries greater than 100000. However, it fails to consider rows where the 'salary' column is `NULL`, inadvertently omitting those records from the results.

## Solution
The solution presented addresses this by explicitly checking for `NULL` values in the `salary` column and handling them accordingly.