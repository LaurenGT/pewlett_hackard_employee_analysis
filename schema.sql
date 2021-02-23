-- create titles table from titles.csv
CREATE TABLE titles (
    title_id VARCHAR(10) NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL
)
;
 
-- create employees table from emplyees.csv
-- unique list of employees by emp_no
CREATE TABLE employees (
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
)
;
 
-- create departments table from departments.csv
 
CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
)
;
 
-- create dept_emp table from dept_emp.csv
-- employees show up in multiple departments
-- no duplicate lines when checking for combo of emp_no and dept_no
-- composite key of emp_no, dept_no for unique identifyier without primary key
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(10) NOT NULL
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
)
;
 
-- create dept_manager table from dept_manager.csv
-- multiple managers for each department
-- no duplicate entries combining dept_no and emp_no
-- composite key of dept_no and emp_no for primary key
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
)
;
 
-- create salaries table from salaries.csv
-- unique list of emp_no
CREATE TABLE salaries (
    emp_no INT NOT NULL PRIMARY KEY,
    salary INT NOT NULL
)
;
