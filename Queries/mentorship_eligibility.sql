--Deliverable 2: The Employees Eligible for the Mentorship Program 
-- 
SELECT DISTINCT ON (emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
--INTO mentorship_eligibilty
FROM employees as e
LEFT OUTER JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT OUTER JOIN titles as ti
on e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no, ti.from_date DESC; 