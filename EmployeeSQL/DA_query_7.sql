--#7 List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_employ de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where (d.dept_name = 'Sales') or (d.dept_name = 'Development');