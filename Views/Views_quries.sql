-- Practis questions--  

-- Easy 

-- suppose you have sales data . wrtie a query to create view sum of sales by each region 
create view sales_by_region As select region , sum(sales) from sales group by region;

-- create a view that shows coustamr who have made total purchase above 10,000;
create view High_values As select Name ,  sum(Money) from orders group by Name having sum(Money) > 10,000;

-- write a query to create a view that shows Book_id , Title , Author --
create view Book1 As select Book_id , Title , Author from Books;
select * from Book1; 

-- Create a view named HighpriceAuhtor that shows Author whose Book price is greater than 500.
create view HighpriceAuhtor As select Author , price from Books where price > 500;
select * from HighpriceAuhtor; 
show indexes from HighpriceAuhtor;