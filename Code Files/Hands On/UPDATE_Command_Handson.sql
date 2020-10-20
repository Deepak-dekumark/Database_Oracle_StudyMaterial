/** Updating the movie release date **/
UPDATE movie 
SET    release_date = TO_DATE('03-12-2020', 'DD-MM-YYYY') 
WHERE  movie_name='Sev7en'; 

/** Updating the release date for all the movies**/
UPDATE movie 
SET   release_date = TO_DATE('01-10-2020', 'DD-MM-YYYY'); 

