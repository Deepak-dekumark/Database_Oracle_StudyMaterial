--Find the list of all the unique mobile number registered whether a store customer or employee

SELECT mobile_number FROM store_customer 
UNION
SELECT mobile_number FROM employee;


