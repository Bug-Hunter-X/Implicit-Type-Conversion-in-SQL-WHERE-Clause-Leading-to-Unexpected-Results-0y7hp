```sql
SELECT * FROM employees WHERE department_id = '10';
```
This query might produce unexpected results if the `department_id` column is not defined as a numeric type (e.g. it is a string type) and if the database engine implicitly converts it during comparison.  If the '10' in the query is treated as a string, it would match department_id values like '10a' or '10X' which might not be the intended result.