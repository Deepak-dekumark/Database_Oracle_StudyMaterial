
-- Creating synonym
CREATE SYNONYM cinema 
FOR movie;

--Fetching data using Synonym
SELECT * 
FROM cinema;

 -- Alias example
SELECT a.movie_name , a.movie_desc 
FROM movie a 
WHERE a.movie_id > 'M0001';

--Fetching data using an alias
SELECT * 
FROM a;