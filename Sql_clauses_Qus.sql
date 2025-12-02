
✅ SQL LeetCode-Style Questions (Clause-Based)
1. Customers Who Purchased in 2024

You are given a table Orders:

order_id	customer_id	amount	order_date
1	101	500	2024-01-05
2	102	900	2023-12-22
3	101	300	2024-02-19
4	103	450	2024-03-01
Task:

Return unique customer_ids who placed an order in 2024

Output:
customer_id
101
103



select Distinct customer_id from Table where Year(order_date) = 2024;





2. Highest Salary Employee

Table Employees:

emp_id	name	salary
1	Krish	50000
2	Aman	72000
3	Neha	62000
Task:

Return the emp_id, name, and salary of the employee having highest salary.

Output:
emp_id	name	salary
2	Aman	72000




select emp_id , name , salary from salary ORDER BY salary DESC
LIMIT 1 ;




3. Count Students in Each Department

Table Students:

student_id	name	dept
1	Ravi	CS
2	Komal	IT
3	Sana	CS
4	Rahul	ME
Task:

Return number of students in each department sorted by count descending.

Output:
dept	total_students
CS	2
IT	1
ME	1

select dept ,  count(*) As total_student from students group by dept order by total_student desc, 





4. Products With Price More Than Average Price

Table Products:

product_id	price
1	100
2	200
3	300
4	400
Task:

Return products whose price is greater than the average price.

Output:
product_id	price
3	300
4	400


select product_id  , price from Products where price > (select avg(price) from Products);


5. Get Top 2 Most Expensive Products

Use table Products above.

Task:

Return top 2 highest priced products.

Output:
product_id	price
4	400
3	300

select product_id , price from Products order by price desc limit 2;





6. Customers Having More Than 1 Order

Table Orders:

order_id	customer_id	amount
1	10	200
2	20	300
3	10	150
4	30	100
Task:

Return customers who made more than 1 order.

Output:
customer_id	total_orders
10	2



select customer_id , count(*) As total_orders from Orders group by customer_id  having count(*) > 1;





7. Employees Whose Salary Is Greater Than Their Department Average

Table Employees:

emp_id	name	dept_id	salary
1	Krish	1	50000
2	Aman	1	70000
3	Neha	2	45000
4	Rohit	2	60000
Task:

Return employees whose salary is greater than the avg salary of their dept.

Output:
name	dept_id	salary
Aman	1	70000
Rohit	2	60000

SELECT name, dept_id, salary
FROM Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

SELECT name, dept_id, salary
FROM Employees e join (
    SELECT dept_id , avg(salary)
    FROM Employees group by dept_id
);
on e.dept_id = d.dept_id 
where e.salary > d.salary;




8. Second Highest Salary (Classic SQL)

Table Employees:

emp_id	name	salary
1	Krish	50000
2	Aman	70000
3	Neha	65000
Task:

Return second highest salary.

Output:
salary
65000

select salary from Employees order by salary desc limit 1 offset 1;




9. Cities With Population Between 1–5 Million

Table Cities:

city	population
Delhi	18000000
Jaipur	3500000
Pune	4500000
Indore	2000000
Task:

Return cities having population between 1M and 5M, sorted by population.

Output:
city	population
Jaipur



10. Cities With Population Between 1–5 Million

Table Cities:

city	population
Delhi	18000000
Jaipur	3500000
Pune	4500000
Indore	2000000
Task:

Return cities having population between 1M and 5M, sorted by population.



select city  , sum(population) from Cities where population  between 1000000 and 1000000 group by city  order by population;



