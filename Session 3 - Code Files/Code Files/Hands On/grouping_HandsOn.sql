--Finding the movies based on status
SELECT status_id, COUNT(*) AS total_count 
FROM movie 
GROUP BY status_id;

--Find the status of movies with duration as 120
SELECT status_id, COUNT(*) AS total_count 
FROM movie 
GROUP BY status_id, duration
HAVING duration = 120;


