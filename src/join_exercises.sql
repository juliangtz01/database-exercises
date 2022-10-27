USE employees;
-- write a query that shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manger' FROM departments JOIN  dept_manager AS manager ON manager.dept_no = departments.dept_no JOIN employees ON manager.emp_no = employees.emp_no WHERE manager.to_date = '9999-01-01' ORDER BY departments.dept_name;
-- Find the name of all departments currently managed by women
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manger' FROM departments JOIN  dept_manager AS manager ON manager.dept_no = departments.dept_no JOIN employees ON manager.emp_no = employees.emp_no WHERE manager.to_date = '9999-01-01' AND employees.gender = 'F' ORDER BY departments.dept_name;
-- Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'title', count(*) AS Total FROM titles JOIN dept_emp AS department ON department.emp_no = titles.emp_no AND department.to_date = '9999-01-01' JOIN departments ON departments.dept_name = 'Customer Service' GROUP BY titles.title;
SELECT * FROM departments;

