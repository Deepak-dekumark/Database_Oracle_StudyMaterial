  /** Reading data from the table **/  
  
  --Selecting ALL the movies from the movie table
   SELECT *
   FROM movie;

--Selecting the columns movie_name and release_date from the movie table by giving the alias movie_release_date to release_date
   SELECT movie_name as NAME, 
         release_date as RELEASED 
   FROM   movie;

--Selecting the movie from the movie table with movie_name 'Sev7en'
   SELECT * 
   FROM movie 
   WHERE  movie_name='Life of Pi'; 

--Select movie_name as ‘NAME’ from the movie table with movie_name 'Sev7en'
  SELECT movie_name as NAME
  FROM   movie 
  WHERE  movie_name = 'Life of Pi'; 

