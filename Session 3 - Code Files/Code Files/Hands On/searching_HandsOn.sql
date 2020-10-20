--Finding movie with name as 'Oceans 11'

SELECT * 
FROM movie 
WHERE movie_name = 'Oceans 11';

--Finding two movies with given name from a list
SELECT * 
FROM movie 
WHERE movie_name IN ('Oceans 11','Gladiator');

--Finding movies not present in a list
SELECT * 
FROM movie 
WHERE movie_name NOT IN ('Oceans 11','Gladiator');

--Finding movies starting from 'A'
SELECT * 
FROM movie 
WHERE movie_name LIKE 'A%';

--Finding movies having 'v' as second letter
SELECT * 
FROM movie 
WHERE movie_name LIKE '_v%';

--Finding movies based on duration specified in a range
SELECT * 
FROM movie 
WHERE duration BETWEEN 90 AND 150;
