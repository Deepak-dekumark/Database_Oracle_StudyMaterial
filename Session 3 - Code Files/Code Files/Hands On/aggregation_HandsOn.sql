
--Finding all the upcoming movies
SELECT COUNT(*)
FROM movie
WHERE status_id = 'S0001';


--Maximum duration of a movie
SELECT MAX(duration) AS "length"
FROM movie;

