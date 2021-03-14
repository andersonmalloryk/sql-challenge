-- For each employee show their employee number, last name, first name, sex, and salary
CREATE VIEW employee_summary AS
SELECT e.employee_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
	JOIN salaries AS s
	ON (e.employee_no = s.employee_no);
	
-- Pull employees who were hired in 1986
CREATE VIEW hired_1986 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

-- List the manager of each department 
CREATE VIEW department_managers
SELECT d.dept_no, d.dept_name, m.employee_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_manager AS m
	ON (d.dept_no = m.dept_no)
		JOIN employees AS e
		ON (e.employee_no = m.employee_no);

-- List the department of each employee 
CREATE VIEW employee_by_department
SELECT e.employee_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_employee 
	ON (e.employee_no = dept_employee.employee_no)
		JOIN departments AS d
		ON (dept_employee.dept_no = d.dept_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department
CREATE VIEW sales_employees
SELECT e.employee_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_employee 
	ON (e.employee_no = dept_employee.employee_no)
		JOIN departments AS d
		ON (dept_employee.dept_no = d.dept_no)
		WHERE dept_name = 'Sales';
		
-- List all employees in the Sales and Development departments
CREATE VIEW sales_development_employees
SELECT e.employee_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_employee 
	ON (e.employee_no = dept_employee.employee_no)
		JOIN departments AS d
		ON (dept_employee.dept_no = d.dept_no)
		WHERE dept_name = 'Sales' OR dept_name = 'Development';
		
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
CREATE VIEW Last_names
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name 
ORDER BY count DESC;