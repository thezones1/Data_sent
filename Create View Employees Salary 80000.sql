CREATE VIEW "bigbucks" AS
SELECT e.emp_no,concat(e.first_name,' ',e.last_name) AS name0 ,e.gender
FROM employees AS e
JOIN salaries AS s USING (emp_no)
WHERE s.salary > 80000
GROUP BY emp_no
ORDER BY emp_no


