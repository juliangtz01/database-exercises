USE employees;
-- write a query that shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manger' FROM departments JOIN  dept_manager AS manager ON manager.dept_no = departments.dept_no JOIN employees ON manager.emp_no = employees.emp_no WHERE manager.to_date = '9999-01-01' ORDER BY departments.dept_name;
-- Find the name of all departments currently managed by women
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manger' FROM departments JOIN  dept_manager AS manager ON manager.dept_no = departments.dept_no JOIN employees ON manager.emp_no = employees.emp_no WHERE manager.to_date = '9999-01-01' AND employees.gender = 'F' ORDER BY departments.dept_name;
-- Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'title', count(*) AS Total
FROM titles
JOIN dept_emp AS department
ON department.emp_no = titles.emp_no
AND titles.to_date = '9999-01-01'
JOIN departments
ON departments.dept_no = department.dept_no
AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

-- Find the current salary of all current managers
SELECT departments.dept_name AS 'Department Name',
CONCAT(employee.first_name,' ',employee.last_name) AS 'Department Manager',
salaries.salary AS Salary
FROM dept_manager AS manager
JOIN departments
ON departments.dept_no = manager.dept_no
JOIN employees AS employee
ON employee.emp_no = manager.emp_no
JOIN salaries
ON salaries.emp_no = manager.emp_no
WHERE manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01'
ORDER BY departments.dept_name;

-- Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(employee.first_name,' ',employee.last_name) AS Employee,
departments.dept_name AS Department,
CONCAT(manager.first_name,' ',manager.last_name) AS Manager
FROM employees AS employee
JOIN dept_emp
ON dept_emp.emp_no = employee.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager
ON dept_manager.emp_no = dept_manager.emp_no
JOIN employees AS manager
ON dept_manager.emp_no = manager.emp_no
WHERE dept_emp.to_date = '9999-01-01'
ORDER BY departments.dept_name;







