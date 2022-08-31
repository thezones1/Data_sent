SELECT de.dept_no, AVG(e.salary)
FROM public.salaries AS e
JOIN public.dept_emp AS de USING (emp_no)
GROUP BY
	GROUPING SETS ((de.dept_no),())
ORDER BY de.dept_no