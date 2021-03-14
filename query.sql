-- create table for departments data
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

-- create table for title data
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

-- create table for employee data
CREATE TABLE employees (
    employee_no INT   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE  NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        employee_no
     )
);

-- create table for salary data
CREATE TABLE salaries (
    employee_no INT   NOT NULL,
    salary INT   NOT NULL,
	CONSTRAINT pk_salaries PRIMARY KEY (
		employee_no	
	)
);

-- create table for department employee data
-- Composite key used 
CREATE TABLE dept_employee (
    employee_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
	CONSTRAINT pk_dept_employee PRIMARY KEY (
		employee_no, dept_no
	)
);

-- create table for department manager data
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    employee_no INT   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        employee_no
     )
);

ALTER TABLE dept_employee ADD CONSTRAINT fk_dept_employee_employee_no FOREIGN KEY(employee_no)
REFERENCES employees (employee_no);

ALTER TABLE dept_employee ADD CONSTRAINT fk_dept_employee_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_employee_no FOREIGN KEY(employee_no)
REFERENCES employees (employee_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_employee_no FOREIGN KEY(employee_no)
REFERENCES employees (employee_no);

-- Import csvs in the following order: (1) departments.csv;
-- (2) titles.csv; (3) employees.csv; (4) salaries.csv;
-- (5) dept_emp.csv; (6) dept_manager.csv

-- check the tables 
SELECT * FROM departments;
SELECT * FROM dept_employee;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;