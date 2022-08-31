SELECT e.emp_no , CONCAT (e.first_name,' ',e.last_name)AS NAME 
,count(de.dept_no) AS title
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)  
GROUP BY e.emp_no
HAVING count(de.dept_no) > 1
ORDER BY e.emp_no;
