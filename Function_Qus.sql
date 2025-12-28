-- sql functions - 



Q1. Find Recent Orders (Last 7 Days)

Table: Orders(order_id INT, customer_id INT, order_date DATE, amount INT)
Question:
Return all orders placed in the last 7 days from today.

Query - 
select * from table where order_date >= datesub(curdate() , intervel 7 day);



Q2. Monthly Active Users

Table: Logins(user_id INT, login_date DATE)
Question:
Find how many unique users logged in this month.

Query - 
select count(distinct users) from Logins where MONTH(login_date) = MONTH(curdate())
  AND YEAR(login_date) = YEAR(GETDATE());



Q3. Find Late Deliveries

Table: Orders(order_id, order_date, delivery_date)
Question:
Return orders where delivery took more than 5 days.

Query - 
select order_id from Orders where datediff(delivery_date , order_date) >5 ;




Q4. First Purchase of Each Customer

Table: Orders(order_id, customer_id, order_date)
Question:
Return each customer’s first ever order date.


Query - 
select customer_id , min(order_date) As first_order from Orders group by customer_id;




Q5. Orders Between Two Dates

Table: Orders(order_id, order_date, amount)
Question:
Return orders placed between '2024-01-01' and '2024-02-01'.


Query - 
select order_id from Orders where order_date between '2024-01-01' and '2024-02-01';



Q6. Weekend Orders

Table: Orders(order_id, order_date)
Question:
Find all orders placed on Saturday or Sunday.

Query - 
SELECT * FROM Orders WHERE Daysofweek(order_date) IN (1, 7);



Q9. Employee Age Calculation

Table: Employees(emp_id, name, dob DATE)
Question:
Return each employee’s age in years.

Query - 
select emp_id As Employees , dob As Date_of_birth from Employee where Timestampdiff(Year , dob , curdate()) As Age;



Q10. Monthly Active Users

Table: Logins(user_id INT, login_date DATE)
Question:

Find how many unique users logged in this month.

Query - 
select count(distinct users) from Logins where MONTH(login_date) = MONTH(curdate())
  AND YEAR(login_date) = YEAR(now());
  
  
  
  
  
  










7️⃣ Orders Year-wise

👉 Find total orders for each year.

📌 Hint:
YEAR(order_date)

8️⃣ Days Between Two Orders

👉 Find the number of days between order_date and 2024-01-01 for each order.

📌 Hint:
DATEDIFF()
  
  
  
  
  
  

11 . Write a query to find all orders placed in the last 30 days from today.
Query - 
select * from Orders_table where order_date >= date_sub(curdate() , interval 30 day);


12 . Find the number of orders for each order_date.
Query - 
select order_date , count(*) from Orders group by order_date;


13  . Find all orders placed on Saturday or Sunday.
Query - 
SELECT * FROM Orders WHERE Daysofweek(order_date) IN (1, 7);

14 .  Find the first order date for every customer.
Query -- 
select distinct customer_id , min(order_date) As first_order from Orders group by order_date;


15 . Customers Who Ordered in Last 3 Months
Query - 
select name from coustomer where order_date >=  datesub(curdate() , interval 3 Month);

16 . Find total orders for each year.
Query - 
select Year(order_date) As orders_year  , count(*) As Total_orders  from Orders where group by year(order_date);

17 . Find the number of days between order_date and 2024-01-01 for each order.
Query - 
select order_id  ,  datediff("2024-01-01" - order_date) As Days_diff from Orders ;




-- Hard level Questions-- 
