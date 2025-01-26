```sql
-- Solution 1: Using IS NULL
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);

-- Solution 2: Using COALESCE to replace NULL with 0 (or another suitable value)
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;

-- Solution 3: Handling NULL explicitly
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL); 
```
The solutions above handle the `NULL` values appropriately. Solution 1 includes rows where the salary is NULL. Solution 2 replaces NULL salaries with 0 before the comparison.  Choose the solution that best fits your specific requirements.