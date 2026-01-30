---- AND Operator
/* Retrieve all customers who are from the USA 
AND have a score greater than 500 */
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

----- OR Operator
/* Retrieve all customers who are either from the 
USA OR have a score greater than 500 */
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

---- NOT Operator
-- Retrieve all customers with a score NOT less than 500
SELECT *
FROM customers
WHERE NOT score < 500 

---- BETWEEN Operator
/* Retrieve all customers whose score falls in the 
range between 100 and 500. */
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500 

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500

----- MEMBERSHIP: 
---- 1. IN Operator
/* Retrieve all customers from Germany or USA.*/

SELECT *
FROM customers
WHERE country IN ('Germany') OR country IN ('USA')

SELECT *
FROM customers
WHERE country IN('Germany', 'USA')

SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA'

SELECT *
FROM customers
WHERE country = 'Germany'
	OR country = 'USA'
	OR country = 'France'
	OR country = 'Canada';


SELECT * 
FROM customers
WHERE country IN ('Germany', 'USA', 'France', 'Canada');

--- SEARCH OPERATOR:
-- 1.Like
/*Find all customers whose first name starts with 'M'*/
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

--Find all customers whose first name ends with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n'

--Find all customers whose first name contains 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%'

/* Find all customers whose first name has 'r' in
the third position */
SELECT *
FROM customers
WHERE first_name LIKE '__r%'