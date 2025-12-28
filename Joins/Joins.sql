✅ SQL JOIN Question Set


                                                         -- Easy Level questions -- 


🟦 Question 1: Write a query to return customer name and order amount for customers who have placed an order.
Table: Customers
customer_id	name
1	Raj
2	Krishna
3	Aman
Table: Orders
order_id	customer_id	amount
101	1	500
102	2	800

✅ Expected Output
name	amount
Raj	500
Krishna	800


select Coustmar.name , Orders.amount from Coustmar inner join on Coustmar.id = Orders.id


🟦 Question 2: Show customers who did NOT place any orders.
Table: Customers
customer_id	name
1	Raj
2	Krishna
3	Aman

Table: Orders
order_id	customer_id	amount
101	1	500
102	2	800

✅ Expected Output
customer_id	name
3	Aman


select d.dept_id , d.dept_name from departments d inner join Employees E on d.dept_id = E.dept_id where dept_id is null



🟦 Question 5: Departments Without Employees
Table: Departments
dept_id	dept_name
10	HR
20	Sales
30	Tech
Table: Employees
emp_id	name	dept_id
1	Asha	10
2	Ravi	20
❓ Question:

Return departments that have NO employees.

✅ Expected Output
dept_id	dept_name
30	Tech

select d.dept_id , d.dept_name from Department d left join Employees E on dept_id = E.dept_id where E.emp_id is null;



🟦 Question 6: return category with the highest number of orders.

Table : Products
product_id	name	category
1	Phone	Mobile
2	Laptop	Computer
3	Mouse	Computer

Table: Orders
order_id	product_id
201	1
202	2
203	2
204	3
205	2

select p.category As category from products p inner join orders o on p.product_id = o.product_id where group by p.category order by desc limit 1;

-- ✅ Expected Output
-- category
-- Computer


select E.dept_id , D,dept_name from Employees inner join Department on E.dept_id = D.dept_id;


select C.coustomer_id , C.name , count(O.order_id) As Total_order from Coustomer C left join Orders O on  C.coustmer_id = O.coustmer_id group by c.coustomer_id , c.name ;

select D.dept_name , Avg(E.salary) As Avg_salary from Employees E left join department D on E.dept_id = D.dept_id group by dept_name;



select E.emp_id , E.name from Employee E inner join Department D on E.dept_id = D.dept_id;

Select E.name from Employees E left join Department D on E.dept_id = D.dept_id;

select dept_name , sum(E.salary) As total_salary from Department D left join Employee E on D.dept_id = E.dept_id group by dept;

select E.emp_name , D.location , D.dept_name from Employees E join Department D on E.dept_id = D.dept_id where E.salary > 5000;


select C.name from Coustomer c left join Orders O on C.Customer_id = O.Customer_id where o.coustomer_id is null;

select max(salary) from Employees where  salary < (select max(salary) from Employees)



🟦 Question 7: Write a query to return customer name and order amount for customers who have placed an order.
Table: Customers
customer_id	name
1	Raj
2	Krishna
3	Aman
Table: Orders
order_id	customer_id	amount
101	1	500
102	2	800

✅ Expected Output
name	amount
Raj	500
Krishna	800


select Coustmar.name , Orders.amount from Coustmar inner join on Coustmar.id = Orders.id


🟦 Question 8: Show customers who did NOT place any orders.
Table: Customers
customer_id	name
1	Raj
2	Krishna
3	Aman

Table: Orders
order_id	customer_id	amount
101	1	500
102	2	800

✅ Expected Output
customer_id	name
3	Aman


select d.dept_id , d.dept_name from departments d inner join Employees E on d.dept_id = E.dept_id where dept_id is null



🟦 Question 9: Departments Without Employees
Table: Departments
dept_id	dept_name
10	HR
20	Sales
30	Tech
Table: Employees
emp_id	name	dept_id
1	Asha	10
2	Ravi	20
❓ Question:

Return departments that have NO employees.

✅ Expected Output
dept_id	dept_name
30	Tech

select d.dept_id , d.dept_name from Department d left join Employees E on dept_id = E.dept_id where E.emp_id is null;



🟦 Question 10: return category with the highest number of orders.

Table : Products
product_id	name	category
1	Phone	Mobile
2	Laptop	Computer
3	Mouse	Computer

Table: Orders
order_id	product_id
201	1
202	2
203	2
204	3
205	2

select p.category As category from products p inner join orders o on p.product_id = o.product_id where group by p.category order by desc limit 1;
                                             
                                             
                                            
                                            
                                            
                                            
                                            
                                            
                                           --   Medium level Questions-- 
Employees

emp_id	name	dept_id	salary
1	Alice	10	5000
2	Bob	20	6000
3	Charlie	10	7000
4	David	30	5500

Departments

dept_id	dept_name	location
10	HR	Delhi
20	IT	Mumbai
30	Finance	Delhi
40	Marketing	Bangalore

Projects

project_id	project_name	dept_id
101	Alpha	10
102	Beta	20
103	Gamma	30                                    
                                           

1 . List all employees with their department names. Only include employees who belong to a department.

select E.name , D.dept_name from Employees E inner join Department D on E.dept_id = D.dept_id




2 - List all employees with their department names. Include employees even if their department is missing.


select E.name , D.dept_name from Employees E left join Department on E.dept_id = D.dept_id 




3 - List all departments with their employees. Include departments even if no employee belongs to them.

select D.dept_name , E.name from Department D left join Employeee E on D.dept_id = E.dept_id




4 - List all employees and all departments. Show employees without departments and departments without employees.

select E.name , D.dept_name from Employee E full outer join Department D on D.dept_id = E.dept_id




5 - Find the total salary per department. Display dept_name and total_salary.

select D.dept_name , sum(E.dept_id	salary) from Employee E join Department D on E.dept_id = D.dept_id group by dept_name


select C.name , O.order_id  , O.order_date from Orders O join Coustomer on O.coustomer_id = C.coustmoer_id where C.city = "NewYork" And Year().order_date);
