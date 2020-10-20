-- NATURAL JOIN between city and theatre tables
-- 1
SELECT
    theatre.theatre_name,
    city.city_name
FROM theatre
NATURAL JOIN city ;
 
 
 -- 2   
    
SELECT * 
FROM theatre 
NATURAL JOIN city;



