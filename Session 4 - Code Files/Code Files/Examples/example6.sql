-- Create a view

/**

 Suppose a specific set of user is only interested in hind movies... we can provide only
 hindi movie information by using views
**/
CREATE VIEW hindi_movies AS
SELECT  *
FROM  movie
WHERE movie_id IN (
    SELECT movie_id
    FROM movie_language
    WHERE language_id = 'L0001');

--Selecting data from the view
SELECT *
FROM hindi_movies;


--Droppping a view
DROP VIEW hindi_movies;

SELECT *
FROM hindi_movie;