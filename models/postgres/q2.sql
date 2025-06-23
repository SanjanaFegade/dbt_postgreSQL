SELECT d.department_id, d.department_name, max(e.salary) as Avg_Salary 
FROM snowflake_db_myschema.departments as d
INNER JOIN
snowflake_db_myschema.employees as e ON d.department_id = e.department_id
Group by d.department_id