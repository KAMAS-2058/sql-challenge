-- List manager of each department along with department number, department name,
--		 employee number, last name and first namec

select mg.dept_no, d.dept_name, mg.emp_no, e.last_name, e.first_name
from dept_mgmt mg
inner join employees e
on mg.emp_no = e.emp_no
inner join departments d
on mg.dept_no = d.dept_no;