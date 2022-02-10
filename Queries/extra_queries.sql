SELECT * FROM salaries
SELECT * FROM unique_titles
SELECT AVG(salary)FROM salaries
-- Table for unique title retires to see potential wage for new hiring
SELECT un.emp_no,
	un.title,
	sa.salary
INTO salaries_retire
SELECT COUNT(emp_no) from current_emp
FROM unique_titles as un
INNER JOIN salaries as sa
ON un.emp_no = sa.emp_no
ORDER BY emp_no

SELECT * FROM salaries_retire
SELECT title, ROUND(AVG(salary)) FROM salaries_retire
GROUP BY title
ORDER BY title ASC;



-- salries mentorships to compare to avg of retiring salaries

SELECT me.emp_no,
	me.title,
	sa.salary
INTO salaries_mentor
FROM mentorship_eligibilty as me
INNER JOIN salaries as sa
ON me.emp_no = sa.emp_no
ORDER BY emp_no


SELECT * FROM salaries_mentor 
SELECT title, ROUND(AVG(salary)) FROM salaries_mentor 
GROUP BY title
ORDER BY title ASC;
SELECT count(count) FROM retiring_titles

select count(emp_no) from unique_titles

--Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM mentorship_eligibilty 

SELECT title, COUNT(title) FROM mentorship_eligibilty
GROUP BY title