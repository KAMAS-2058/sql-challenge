-- List manager of each department along with department number, department name,
--		 employee number, last name and first namec


-- making new table to have the department emp number, dept number, and dept name
create table dept_name_mgmt as
select * 
from dept_mgmt join departments using (dept_no);

--select * from dept_name_mgmt

select mg.dept_no, mg.dept_name, mg.emp_no, e.last_name, e.first_name
from dept_name_mgmt mg
inner join
employees e
on mg.emp_no = e.emp_no;