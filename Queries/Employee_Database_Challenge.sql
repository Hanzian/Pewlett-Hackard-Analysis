-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_title
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Set employees with the recent job title
SELECT title, COUNT(title) as count 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

--  Retrieve The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
INTO mentorship_eligibilty
FROM employees as e
JOIN dept_emp as de
on e.emp_no = de.emp_no
JOIN title as t
ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01'
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31');

SELECT * FROM mentorship_eligibilty;



