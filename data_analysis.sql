SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no = salaries.emp_no
ORDER BY emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY hire_date;

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager
LEFT JOIN departments ON
dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON
dept_manager.emp_no = employees.emp_no
ORDER BY dept_name;

SELECT dept_emp.emp_no, dept_emp.dept_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no = employees.emp_no
JOIN departments ON
dept_emp.dept_no = departments.dept_no
ORDER BY emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no = employees.emp_no
Join departments ON
departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON
dept_emp.emp_no = employees.emp_no
JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development'
ORDER BY emp_no;

SELECT last_name, COUNT(last_name) AS "frequency_counts"
FROM employees
GROUP BY last_name
ORDER BY frequency_counts DESC;