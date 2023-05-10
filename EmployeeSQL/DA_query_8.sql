-- #8 List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name).

select last_name,
count(last_name) as frequency
from employees
group by last_name
order by
count(last_name) desc;
