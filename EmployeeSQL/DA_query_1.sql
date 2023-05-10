-- first query 
select employees.emp_no, employees.last_name, employees.first_name, employees.employee_sex, salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;
