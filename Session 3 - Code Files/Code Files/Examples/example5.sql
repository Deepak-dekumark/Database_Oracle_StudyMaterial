-- Find the count of the customers based on their types

SELECT user_type_id, COUNT(*) AS user_count 
FROM customer 
GROUP BY user_type_id;

-- Find the count of the customers based on their types having customer id > C1002
SELECT user_type_id , MAX(DATE_OF_BIRTH), COUNT(*) AS user_count 
FROM customer 
GROUP BY user_type_id, customer_id
HAVING customer_id > 'C1002';


