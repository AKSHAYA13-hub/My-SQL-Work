-- Copy data from 'customers' table into 'persons'
CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone_no VARCHAR(15) NOT NULL,
	CONSTRAINT pk_person PRIMARY KEY(id)
)

-- Insert data from 'customers' into persons
INSERT INTO persons (id, person_name, birth_date, phone_no)
SELECT 
	id,
	first_name,
	NULL,
	'Unkown'
FROM customers

SELECT * FROM customers

------ UPDATE
-- Change the score of customers 6 to 0 
SELECT *
FROM customers

UPDATE customers
SET score = 0
WHERE id = 6

SELECT *
FROM customers


/* change the score of customer with ID 10 to 0 and 
update the country to UK */
UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 10

SELECT *
FROM customers

/* Update all customers with a NULL score
 by setting thier score to 0 */
 UPDATE customers
 SET score = 0
WHERE score IS NULL

SELECT * 
FROM customers
WHERE score IS NULL


------ DELETE
-- Delete all customers with an ID greater than 5
DELETE FROM customers
WHERE id > 5

SELECT *
FROM customers
WHERE id > 5

SELECT * 
FROM customers

-- Delete all data from table persons
TRUNCATE TABLE persons