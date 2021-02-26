# Employee Analysis for Pewlett Hackard

This analysis looks at Pewlett Hackard employee data from the 1980s and the 1990s stored across six separate CSV files. Using PostgreSQL, we are able to create a database for this data and efficiently run data analysis queries. Below you will find the steps you will need to take to create your own version of this database as well as several queries that can be applied to the database.

After creating a new database in pgAdmin and opening a SQL Query, copy, paste and run the code in this [schema file](schema.sql) to generate your tables, column names, primary keys and foreign keys. Once you have completed this step, import the CSVs found in the Resources folder to their corresponding tables in the following order identifying that each has a header and the delimiter is a comma:

1. titles
2. employees
3. departments
4. dept_emp
5. dept_manager
6. salaries

In this [queries file](queries.sql), there are eight different code blocks available to analyze the data tables. You can copy and past them into your SQL query and run them individually to see their results.

1. The following details of each employee: employee number, last name, first name, sex, and salary.

2. First name, last name, and hire date for employees who were hired in 1986.

3. The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. The department of each employee with the following information: employee number, last name, first name, and department name.

5. First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. All employees in the Sales department, including their employee number, last name, first name, and department name.

7. All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.