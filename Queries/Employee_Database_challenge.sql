-- Deliverable 1: The Number of Retiring Employees by Title
Select e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles

-- Remove duplicates from retirement_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, from_date DESC;

-- retrieve the number of employees about to retire by their most recent job title
SELECT COUNT(title) count, title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;