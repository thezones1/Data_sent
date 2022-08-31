SELECT employees.emp_no , CONCAT (employees.first_name,' ',employees.last_name)AS NAME ,
COUNT(salaries.salary) AS title
FROM employees 
JOIN salaries USING (emp_no)
JOIN dept_emp AS de USING(emp_no)
WHERE de.dept_no = 'd005'
GROUP BY employees.emp_no 
HAVING COUNT(salaries.salary) > 15

