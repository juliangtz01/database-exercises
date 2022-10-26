USE employees;
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') ORDER BY first_name;
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') ORDER BY first_name, last_name;
-- Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya','Maya') ORDER BY last_name, first_name;
-- Find all employees whose last name starts with 'E' — 7,330 rows.
-- Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
-- Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;
-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';
-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE gender = 'M' AND(first_name IN ('Irena', 'Vidya', 'Maya'));
-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE '%E' OR last_name like 'E%';
-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%E';
-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';