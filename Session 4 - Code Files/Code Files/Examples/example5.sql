-- Find the city names of all theaters 
DESCRIBE movie_theatre;

ALTER TABLE movie_theatre
DROP CONSTRAINT SYS_C008364;

DESCRIBE movie_theatre;

--Record insertion
INSERT INTO movie_theatre (movie_theatre_id, theatre_id, SEATS_REMAINING)
VALUES ('MT005','T0004', 45);

INSERT INTO movie_theatre (movie_theatre_id, theatre_id, SEATS_REMAINING)
VALUES ('MT006','T0004', 45);


SELECT theatre.theatre_name, city.city_name
FROM theatre 
INNER JOIN city 
ON theatre.city_id = city.city_id;
    
--Difference between Inner Join and Natural Join
SELECT *
FROM theatre
NATURAL JOIN city; 
    
SELECT *
FROM theatre
INNER JOIN city ON theatre.city_id = city.city_id;    
    
    
-- LEFT JOIN 
-- Get the name of all the movies and the theatre ids in case they are being screened in a theatre
SELECT 
    mt.theatre_id as "Theatre ID",
    m.movie_name AS "Movie Name"
FROM movie_theatre mt 
LEFT JOIN movie m 
ON mt.movie_id = m.movie_id;

    
-- RIGHT JOIN
-- Get the theatres with the movies names that are being screened
SELECT 
    mt.theatre_id as "Theatre ID",
    m.movie_name AS "Movie Name"
FROM movie_theatre mt 
RIGHT JOIN movie m 
ON mt.movie_id = m.movie_id;
  
/**FULL OUTER JOIN  
Get the all the movies and all theatre ids **/
SELECT 
    mt.theatre_id as "Theatre ID", 
    m.movie_name AS "Movie Name"
FROM movie_theatre mt 
FULL OUTER JOIN movie m 
ON mt.movie_id = m.movie_id;
 
    

-- SELF JOIN
-- Find all the unique customers who have the same user type

SELECT
    a.first_name   AS customername1,
    a.user_type_id
FROM
    customer   a,
    customer   b
WHERE
    a.customer_id <> b.customer_id
    AND a.user_type_id = b.user_type_id
ORDER BY
    a.user_type_id;

--Adding constraint
ALTER TABLE movie_theatre
MODIFY movie_id CHAR(5) NOT NULL;