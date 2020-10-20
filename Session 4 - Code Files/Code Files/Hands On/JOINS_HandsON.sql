-- Find the name of the customers who have booked the movie tickets and the number of seats they booked
SELECT 
    c.customer_id, 
    c.first_name || ' ' || last_name, 
    b.no_of_seats
FROM customer c
INNER JOIN booking b
ON c.customer_id = b.customer_id;



-- Find all the customers irrespective of whether they have booked or not

SELECT 
    c.customer_id, 
    c.first_name || ' ' || last_name, 
    b.no_of_seats
FROM customer c
LEFT JOIN booking b
ON c.customer_id = b.customer_id;


-- Find all the people who have booked the ticket irrespective their data is in customer table or not

SELECT c.customer_id, c.first_name || ' ' ||last_name, b.no_of_seats
FROM customer c
RIGHT JOIN booking b
ON c.customer_id = b.customer_id;

-- Find all the customers and bookings

SELECT *
FROM customer c
FULL JOIN booking b
ON c.customer_id = b.customer_id;