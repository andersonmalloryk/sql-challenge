# sql-challenge
This is the sixth homework for UMN Data Analytics and Visualization bootcamp using SQL to complete data modeling / data engineering and data analysis. 

Employee data is split among six different csvs. The first step is to create tables in postgres SQL to store this data. To do that the csvs were all opened to identify coulmn names and orders and then using http://www.quickdatabasediagrams.com an ERD was created. The code was fixed to remove double quotes and to fix any errors made during drafting.

CSVs were then imported in the following order: 
1. departments.csv;
2. titles.csv; 
3. employees.csv; 
4. salaries.csv;
5. dept_emp.csv; 
6. dept_manager.csv

## Data Analysis

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
View: employee_summary

2. List first name, last name, and hire date for employees who were hired in 1986.
View: hired_1986

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
View: department_managers

4. List the department of each employee with the following information: employee number, last name, first name, and department name.
View: employee_by_department

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
View: sales_employees

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
View: sales_development_employees

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
View: Last_names
