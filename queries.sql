-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

-- pull emp_no, last_name, first_name and sex from employees
-- pull salary from salaries
-- use emp_no from both tables as column to join on

SELECT employees.emp_no, 
    employees.last_name, 
    employees.first_name,
    employees.sex,
    salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no
;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,
    last_name,
    hire_date
FROM employees
WHERE 
	hire_date >= '1986-1-1'
	AND hire_date <= '1986-12-31'
;


-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
-- dept_no, dept_name from departments
-- emp_no from dept_manager on dept_no
-- last_name, first_name from empoloyees on emp_no

SELECT departments.dept_no,
    departments.dept_name,
    dept_manager.emp_no,
	employees.last_name,
    employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
;


-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.


-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.