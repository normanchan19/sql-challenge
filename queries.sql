-- Queries

-- 1.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e, salaries s
WHERE s.emp_no = e.emp_no;

-- 2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(year FROM hire_date) = 1986;

-- 3.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments d, dept_manager m, employees e
WHERE d.dept_no = m.dept_no AND m.emp_no = e.emp_no;

-- 4.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d, dept_emp m, employees e
WHERE d.dept_no = m.dept_no AND m.emp_no = e.emp_no;

-- 5.
SELECT first_name, last_name, sex
FROM employees
WHERE "first_name" = 'Hercules' AND "last_name" LIKE 'B%';

-- 6.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d, dept_emp m, employees e
WHERE d.dept_no = m.dept_no AND m.emp_no = e.emp_no AND d.dept_name = 'Sales';

-- 7.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d, dept_emp m, employees e
WHERE d.dept_no = m.dept_no AND m.emp_no = e.emp_no AND (d.dept_name = 'Sales' OR d.dept_name = 'Development');

-- 8.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;