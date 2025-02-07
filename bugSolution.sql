```sql
-- Ensure department_id is a numeric type (e.g., INT)
ALTER TABLE employees MODIFY department_id INT;

-- Query using an integer value
SELECT * FROM employees WHERE department_id = 10;

-- Alternatively, ensure consistent types in the query 
-- (cast one to the type of the other)
SELECT * FROM employees WHERE CAST(department_id AS UNSIGNED) = CAST('10' AS UNSIGNED);
```