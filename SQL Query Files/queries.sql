-- 1 DONE
SELECT e.emp_no,e.first_name, e.last_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- 2 DONE
SELECT *
FROM employees 
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3 
SELECT d.dept_no, d.emp_no, b.dept_name, e.last_name,e.first_name, d.from_date,d.to_date
FROM dept_manager d
JOIN departments b
ON d.dept_no = b.dept_no
JOIN employees e
ON d.emp_no = e.emp_no;

-- 4  DONE
SELECT d.emp_no,e.last_name,e.first_name,b.dept_name
FROM  employees e
JOIN dept_emp d
ON e.emp_no = d.emp_no
JOIN departments b
ON d.dept_no = b.dept_no;

-- 5  DONE
SELECT * 
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

-- 6 DONE
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e
JOIN dept_emp b
ON e.emp_no = b.emp_no
JOIN departments d
ON b.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7 DONE
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e
JOIN dept_emp b
ON e.emp_no = b.emp_no
JOIN departments d
ON b.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8 DONE
SELECT last_name, count(last_name) as "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;

