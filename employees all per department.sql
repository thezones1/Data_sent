SELECT COALESCE(dept_no,'พนักงานทั้งหมด')AS dept_no,count(dept_no)AS ALL
FROM dept_emp
GROUP BY 
   GROUPING SETS ((dept_no),())
ORDER BY dept_no
