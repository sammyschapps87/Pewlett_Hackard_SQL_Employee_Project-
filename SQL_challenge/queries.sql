-- list dtails of employees starting at highest salary 
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left  join salaries
on employees.emp_no = salaries.emp_no
order by salary desc; 

-- informaton on employees hired in 1986
select * from employees 
where date_part ('year', hire_date) = 1986;

-- manager of all departments with included information
select departments.dept_name, dept_manager_2.dept_no, dept_manager_2.emp_no, employees.last_name, employees.first_name
from dept_manager_2

left join departments
on dept_manager_2.dept_no = departments.dept_no

left join employees 
on dept_manager_2.emp_no = employees.emp_no;

-- department list of all employees containing specified information

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 

left join dept_emp
on employees.emp_no = dept_emp.emp_no

left join departments 
on dept_emp.dept_no = departments.dept_no;

-- first name Hercules last name "B"
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


-- list employees in sales department including specified infromation
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees

left join dept_emp
on employees.emp_no = dept_emp.emp_no

left join departments
on dept_emp.dept_no = departments.dept_no

where dept_name = 'Sales';

-- list of employees in sales and development with specified information
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees

left join dept_emp
on employees.emp_no = dept_emp.emp_no

left join departments 
on dept_emp.dept_no = departments.dept_no

where dept_name = 'Sales' or dept_name = 'Development';

-- decending list of the frequency count of last names 

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;











