-- Questions

-- write a query for the name which starts with R
select name , department where name like 'R%';

-- find employee having more 2 emp-- 
select dept from programmers group by department having count(*) > 2;

-- Find emp who in hr and finace dept-- 
select name , dept from programmers where dept in ('HR' ,  'Finance');