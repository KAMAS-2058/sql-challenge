-- Second Query first, last and hire date  = 1986
Select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01'