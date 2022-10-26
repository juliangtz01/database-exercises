USE employees;
-- Find all employees whose last name starts with 'E' — 7,330 rows.
-- Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results
SELECT CONCAT(first_name,' ', last_name) AS 'Full Name'FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
-- Find all employees born on Christmas — 842 rows
SELECT * FROM employees WHERE MONTH
(birth_date) = 12 AND DAY(birth_date) = 25;
-- Find all employees hired in the 90s and born on Christmas — 362 rows
SELECT * FROM employees WHERE MONTH (birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;
-- Now reverse the sort order for both queries and compare results.
-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini
SELECT * FROM employees WHERE MONTH (birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY hire_date DESC;
-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate())
SELECT *, DATEDIFF(now(), hire_date) AS 'Days Worked' FROM employees WHERE MONTH (birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY hire_date DESC;