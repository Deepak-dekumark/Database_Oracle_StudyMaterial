-- Deleting the record from the table customers

-- data setup 
DESCRIBE customer;

INSERT INTO customer 
VALUES ('Vishwa', 'Mohan', 'vish07@gmail', 'sdfgd123', 9289904467, TO_DATE ('01-02-20', 'dd-mm-yy'));
            
INSERT INTO customer 
VALUES ('Roshan','Kumar','rosh07@gmail','sddfd123#', 9489904407,TO_DATE('01-02-19','dd-mm-yy'));

INSERT INTO customer 
VALUES ('Shivani','Mohan','shiv07@gmail','mmsfs123&',9489904407,TO_DATE ('09-01-18', 'dd-mm-yy'));
            
SELECT * 
FROM customer;

-- Delete record from the customers table where customer_id =2
DELETE FROM customer
WHERE first_name = 'Roshan';

SELECT * 
FROM customer;

-- Delete all the records from the table
DELETE FROM customer;

SELECT * 
FROM customer;