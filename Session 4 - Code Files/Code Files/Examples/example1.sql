/**
Find details of all the movies which are released in language HINDI.
**/
-- this is the nested subquery

SELECT * 
FROM language;

SELECT * 
FROM movie 
WHERE movie_id IN 
(SELECT movie_id 
FROM movie_language 
WHERE language_id = 'L0001');