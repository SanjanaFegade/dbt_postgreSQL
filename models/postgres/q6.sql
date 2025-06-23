SELECT
e.employee_id, e.first_name, e.last_name, d.department_name, e.salary,
NTILE(4) OVER (PARTITION BY d.department_id ORDER BY e.salary) AS Salary_Quartile
From snowflake_db_myschema.employees as e
INNER JOIN
snowflake_db_myschema.departments as d ON e.department_id = d.department_id
 