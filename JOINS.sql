---- JOINS
-- 1. NO JOIN
/* Retrieve all data from customers and orders
as separate results */
SELECT *
FROM customers;

SELECT *
FROM orders;

-- 2. INNER JOIN
/* Get all customes along with their orders, but 
only for customers who have placed an order */
SELECT 
	customers.id, 
	customers.first_name,
	order_id,
	orders.sales
FROM customers
INNER JOIN orders
ON id = customer_id

SELECT 
	c.id, 
	c.first_name,
	order_id,
	o.sales
FROM customers AS C
INNER JOIN orders AS O
ON id = o.customer_id



--- MULTI JOINS
/* Using SalesDB, Retrieve a list of all orders, 
along with the related customer, product, and
employee details. For each order, display:
-order ID, customer's name, product name, 
sales amount, product price, salesperson's name */

USE SalesDB

SELECT *
FROM Sales.Orders

SELECT 
	o.OrderID, 
	o.Sales
FROM Sales.Orders AS o