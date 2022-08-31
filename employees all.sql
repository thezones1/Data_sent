SELECT employees.emp_no , CONCAT (employees.first_name,' ',employees.last_name)AS NAME , de.from_date, de.to_date,de.dept_no ,ti.title
FROM employees 
JOIN dept_emp AS de USING(emp_no)  
JOIN titles  AS ti USING(emp_no)
WHERE de.dept_no ='d005'
GROUP BY emp_no,NAME,de.from_date,de.to_date,de.dept_no,ti.title
ORDER BY emp_no