-- Hello, WOrld SQL query, SELECT all reconds from the actor table
select * from actor;

--Query for frist_name and Last_name in the actor table 
select actor.first_name , last_name from actor;

--Query for the frist_name that equals Nick using the WHERE Clause
select actor.first_name   , last_name  
from actor 
where actor.first_name  = 'Nick';

select actor.first_name , last_name
from actor 
where actor.first_name like 'Nick';

-- Queru for all first_name data that start with a 3 using LIKE and WHERE -- using a wildcard
select actor.first_name , actor_id
from actor 
where actor.first_name like 'J%'

--Query for all frist_names and last names that start with the letter k and have 2 letters after Like and where
select actor.first_name, last_name , actor_id
from actor 
where first_name like 'K__';

--Query for all first_name datat that starts with a K and Ends with then
--Uising the like and where both wildcard and underscore
select actor.first_name , last_name, actor_id
from actor 
where first_name like 'K__%th';

--Query for question one who all have the last name wahlberg
select last_name, actor_id
from actor 
where last_name  like 'Wahlberg';

--Comparing operators are:
--Greater than >
--Less than <
-- Greater than or equal to >=
-- Less than or equal to <=
-- Not Equal <>

-- Exlore data with the Select 
select *
from payment 

-- Query for data that show payment greater than 2 dollars
select customer_id, amount
from payment
where amount > 3.99;
-- query for data that shows payment greater less than 5.99 and greater than 3.99 question to answer
select customer_id, amount
from payment
where amount <= 5.99 and amount >= 3.99;

--queary for data that shows aceding order for payments above 2.99
select customer_id, amount
from payment 
where amount >= 2.00
order by amount asc;

-- queary for data thot shows who paid
-- an amount between and 2.00 and 7.99
-- using the between and and clause
-- orderered in decding orders
select customer_id, amount
from payment 
where amount between 2.00 and 7.99;

