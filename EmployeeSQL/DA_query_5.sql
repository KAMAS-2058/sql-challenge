-- #5 List first name, last name, and sex
--of each employee whose first name is Hercules and whose last name begins with the letter B

select first_name, last_name, employee_sex
from employees e
where (first_name = 'Hercules') and (last_name like 'B%');