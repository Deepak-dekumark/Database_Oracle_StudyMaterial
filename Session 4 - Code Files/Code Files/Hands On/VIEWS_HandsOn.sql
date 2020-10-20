-- View which for storing the data of theater and the city name in which it exists
CREATE OR REPLACE VIEW city_theater AS
SELECT theatre.theatre_name, city.city_name
FROM theatre
NATURAL JOIN city;

--Selecting data from the view
SELECT *
FROM city_theater;

--Materialized view to store results of all the customers and the number of seats that they have booked if any
CREATE MATERIALIZED VIEW MV_Booking 
BUILD IMMEDIATE REFRESH COMPLETE
ON DEMAND AS 
SELECT customer.first_name, customer.username, booking.no_of_seats
FROM customer 
LEFT JOIN booking ON customer.customer_id = booking.customer_id;  

--Selecting data
SELECT * FROM MV_Booking;




