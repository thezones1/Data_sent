CREATE VIEW "90-95" AS
SELECT e.emp_no,e.first_name,e.last_name
FROM employees AS e
WHERE EXTRACT (YEAR FROM e.hire_date) BETWEEN 1990 AND 1995
