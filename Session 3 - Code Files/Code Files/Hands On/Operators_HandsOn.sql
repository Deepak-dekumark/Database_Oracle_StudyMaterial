-- SQL operators

-- Movie with id ‘M0003’ and having a release date after 15-02-2020

SELECT * FROM movie 
WHERE movie_id = 'M0003' AND release_date > TO_DATE('15-02-2020','DD-MM-YY');

-- Movie with either id ‘M0003’ or having a release date after 15-02-2020
SELECT * FROM movie 
WHERE movie_id = 'M0003' OR release_date > TO_DATE('15-02-2023','DD-MM-YY');

--All the movies not having language as hindi
SELECT * FROM movie 
WHERE NOT language = 'Hindi';





