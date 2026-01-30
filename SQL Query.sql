--- Retrieve all customers from Germany.
SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve all customers who are not from Germany
SELECT *
FROM customers
WHERE country != 'Germany'

--- Retrieve all customers with a score grate than 500.
SELECT *
FROM CUSTOMERS
WHERE SCORE > 500

--- Retrieve all customers with a score of 500 or more.
SELECT *
FROM CUSTOMERS
WHERE SCORE >= 500

---Retrieve all customers with a score less than 500.
SELECT *
FROM customers
WHERE score < 500

---Retrieve all customers with a score of 500 or less.
SELECT *
FROM customers
WHERE score <= 500

------ ORDER BY
/* Retrieve all customers and 
  sort the results by the highest score first. */
  SELECT *
  FROM customers
  ORDER BY score DESC

  /* Retrieve all customers and 
  sort the results by the highest score first. */
  SELECT * 
  FROM customers
  ORDER BY score ASC

  /* Retrieve all customers and sort the results 
  by the country and then by the highest score */
  SELECT *
  FROM customers
  ORDER BY score DESC, country ASC



   -------- GROUP BY
  -- Find the total score for each country
  SELECT 
	  country AS customer_country,
	  SUM(score) AS total_score
  FROM customers
  GROUP BY country


  SELECT 
	  first_name,
	  country,
	  SUM(score) AS total_score
  FROM customers
  GROUP BY country, first_name


  /* Find the total score and total number of customers 
  for each country  */
  SELECT 
	  country,
	  SUM(score) AS total_score,
	  COUNT(id) AS total_customer
  FROM customers
  GROUP BY country


  ------- HAVING
/* Find the average score for each country
considering only customers with a score not equal to 0  
and returns only those countries with an average 
score greater than 430 */
SELECT
	country,
	AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430


------- DISTINCT
-- Return Unique list of all countries
SELECT DISTINCT
	country
FROM customers


------- TOP(LIMIT)
-- Retrieve only 3 customers
SELECT TOP 3 *
FROM customers

-- Retrieve the top3 customers with the Highest Scores
SELECT TOP 3*
FROM customers
ORDER BY score DESC

--Retrieve the Lowest 2 customers based on the
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the two most recent orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC


--- Multi Queries
SELECT *
FROM customers;

SELECT *
FROM orders;

-- static (fixed) values
SELECT 123

SELECT 123 AS static_numbers

SELECT 'Hello' AS static_strings

SELECT 
	id,
	first_name,
	'New customer' AS customer_type
FROM customers




-- Highlight & Execute
SELECT *
FROM customers
WHERE country = 'Germany'
