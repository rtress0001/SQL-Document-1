--How many actors are there with the last name ‘Wahlberg
--There are two actors with the last name ‘Wahlberg’
select last_name, actor_id
from actor 
where last_name  like 'Wahlberg';

--How many Payments were made between $3.99 and $5.99
--There are two payments between 3.99 and 5.99
select count(amount) as question 2
from payment
where amount<5.99 and amount >3.99;

--What film does the store have the most of? (search in inventory)
--he film with id 350 has the most of in the store inventory
--Incorrect query
select inventory_id , film_id
from inventory
group by film_id, inventory_id 
order by film_id desc;


--How many customers have the last name “William”
--No Customer have the last name “William”
select count(*) 
from customer  
where last_name  = 'William';



--What store employee(get the id) sold the most rentals
--Staff_id 1 sold the most rentals
select staff_id, count(rental_id) as question4
from rental
group by staff_id 



--How many different District names are there?
--looking at the bottom of the list we have 378 district names
select count(distinct(district))
from address;

--What film has the most actors in it(use film_actor table get film_id.
--film_id 508 has a count of 15 actors in it making it the most number of actors
select count(actor_id), film_id
from film_actor
group by film_id
order by count(actor_id);


--From store_id1, how many customers have the last name ending with es
--there are 21 customers with the last name ending in es
select first_name , last_name
from customer
where last_name  like '%es';

--How many payments amounts (4.99, 5.99, group by amount) of above 250 for customers and with ids between 380 430
--There are no customers with these conditions

select COUNT(*) AS payment_count
FROM payment
WHERE amount > 250
  AND customer_id > 380
  AND customer_id < 430
GROUP BY amount
ORDER BY amount;

--Within the film table, how many rating categories are there? And what rating has the most movies total
--NC-17 has the most ratings of all films in data set
select rating, count(rating)
from film 
group by rating;



