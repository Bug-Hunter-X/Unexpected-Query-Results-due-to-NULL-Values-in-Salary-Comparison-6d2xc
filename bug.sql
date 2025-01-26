```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem correct at first glance, but it can produce unexpected results if there are any NULL values in the `salary` column.  The comparison `salary > 100000` will return `NULL` for any rows where `salary` is `NULL`, and `NULL` is considered neither true nor false in SQL. Therefore, such rows are excluded from the result set, even if they belong to the Sales department.
