# Implicit Type Conversion in SQL WHERE Clause
This repository demonstrates a common SQL bug caused by implicit type conversion in a WHERE clause.  The query attempts to filter employees by department ID, but due to a mismatch in data types, the results may be inaccurate.

## Bug Description
The SQL query uses a string literal ('10') to compare against the `department_id` column.  If the `department_id` column is not of a numeric type (e.g., it's a string), unexpected rows may be selected due to the database's implicit type conversion during comparison.  The comparison might use string comparison rather than numeric comparison, leading to incorrect results.

## Solution
To solve this problem, ensure that both the `department_id` column and the value in the WHERE clause are of the same numeric data type. This avoids implicit type conversion and produces the correct results.