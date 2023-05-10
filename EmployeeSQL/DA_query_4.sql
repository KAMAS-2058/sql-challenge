--#4 List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_employ de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no;