-- Find employees--  whose salary is grterer then avg salary of all employees
select name , salary from Employees where salary > (select avg(salary) from employees);

-- Find the employees with maximum salary-- 
select name , salary from Employees where salary = (select max(salary) from Employees);