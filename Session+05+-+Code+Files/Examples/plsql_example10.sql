
-- SELECT INTO reading the movide record from the movie table
DECLARE
  name VARCHAR2(20);
BEGIN
  -- get name of the movie with id M0003
  SELECT movie_name INTO name
  FROM movie
  WHERE movie_id = 'M0003';
  -- show the movie name
  dbms_output.put_line(name );
END;


SELECT * FROM movie ;


-- selecting the complete row

SET SERVEROUTPUT ON
DECLARE
  movie movie%ROWTYPE;
BEGIN
  -- get all details of movie with id 'M0003'
  SELECT * INTO movie
  FROM movie
  WHERE movie_id = 'M0003';
  -- show the customer name
  dbms_output.put_line(movie.movie_name );
END;