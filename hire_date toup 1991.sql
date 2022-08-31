SELECT employees.emp_no , CONCAT (employees.first_name,' ',employees.last_name)AS NAME ,COUNT(titles.title)AS title ,hire_date
FROM employees 
INNER JOIN titles ON employees.emp_no = titles.emp_no 
WHERE EXTRACT(YEAR FROM  hire_date)>'1991'
GROUP BY employees.emp_no 