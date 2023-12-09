-- question1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- solution
           -- The major difference between Primary key and foreign key is Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables.
           SELECT * FROM information_schema.key_column_usage;
           
           
           
           -- question2 List all details of actors
           select * from actor;
           
-- question 3 --List all customer information from DB
select * from customer;

-- question 4-- List different countries.
select distinct country from country;

-- question 5 Display all active customers. 
select customer_id ,first_name, last_name , email from customer where 'active'= 1;


-- question 6-- List of all rental IDs for customer with ID 1
SELECT rental_id FROM rental WHERE customer_id=1;


-- question 7 Display all the films whose rental duration is greater than 5.
SELECT film_id, title FROM film WHERE rental_duration > 5;

-- question 8 List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
SELECT COUNT(*) FROM film WHERE replacement_cost > 15 AND replacement_cost < 20;

-- question9 Display the count of unique first names of actors.
SELECT COUNT(DISTINCT first_name) FROM actor;



-- question10 Display the first 10 recods from the customer table
SELECT * FROM customer LIMIT 10;



-- question 11 Display the first 3 records from the customer table whose first name starts with 'b'
SELECT * FROM customer WHERE first_name LIKE 'b%' LIMIT 3;



-- question12  Display the names of first 5 movies which are rated as G.
SELECT title FROM film WHERE rating = 'G' LIMIT 5;



-- question13 Find all customers whose first name starts with "a".
SELECT * FROM customer WHERE first_name LIKE "a%";



-- question14 Find all customers whose first name ends with "a".
SELECT * FROM customer WHERE first_name LIKE "%a";



-- question15 Display the list of first 4 cities which start and end with ‘a’.
SELECT city FROM city WHERE city LIKE 'a%%a' LIMIT 4;



-- question 16 Find all customers whose first name have "NI" in any position.
SELECT first_name FROM customer WHERE first_name LIKE '%ni%';



-- question 17 Find all customers whose first name have "r" in the second position .
SELECT first_name FROM customer WHERE first_name LIKE '_r%';



-- question 18 Find all customers whose first name starts with "a" and are at least 5 characters in length.
SELECT first_name FROM customer WHERE first_name LIKE 'a____%';




-- question 19 Find all customers whose first name starts with "a" and ends with "o".
SELECT first_name FROM customer WHERE first_name LIKE 'a%o';





-- question 20 Get the films with pg and pg-13 rating using IN operator.
SELECT title FROM film WHERE rating IN ('PG', 'PG-13');


-- question 21 Get the films with length between 50 to 100 using between operator.
SELECT * FROM film WHERE length BETWEEN 50 AND 100;



-- question 22 Get the top 50 actors using limit operator.
SELECT * FROM actor LIMIT 50;



-- question 23 Get the distinct film ids from inventory table.
SELECT DISTINCT film_id FROM inventory;


