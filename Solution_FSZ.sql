-- Display all available tables in the Sakila database.
show tables;
-- Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name as 'language' from language;
-- 3.3 List of first names of all employees from the staff table
select first_name from staff;
-- Retrieve unique release years.
select distinct release_year from film;
-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select count(store_id) as 'Number of stores' from store;
-- 5.2 Determine the number of employees that the company has.
select count(staff_id) as 'Number of employees' from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(*) from rental;
select count(inventory_id) from inventory; 
-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct count(last_name) from actor;
-- Retrieve the 10 longest films.
select title, length from film order by length desc limit 10;
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor  where first_name='SCARLETT';
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title,length from film where length>100 and title like '%ARMAGEDDON%';
select title,length from film where length>100 and title regexp '.*ARMAGEDDON.*';
-- 7.3 Determine the number of films that include Behind the Scenes content
select count(special_features) from film where special_features like '%Behind the Scenes%';

