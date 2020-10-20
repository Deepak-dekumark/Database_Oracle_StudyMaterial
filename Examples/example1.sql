-- Exception example

DECLARE
    movie VARCHAR2(51);
    movie_id CHAR(5) := 'M0001';
BEGIN
    -- get the movie name by id
    SELECT movie_name INTO movie
    FROM movie
    WHERE movie_id = movie_id;

    -- show the movie name   
    dbms_output.put_line('Movie name is ' || movie);
    
END;

-- Above code will throw error : ORA-01403: no data found


-- We can also handle it and provide more meaningful message


DECLARE
    movie VARCHAR(51);
    movie_id CHAR(5) := 'M0007';
BEGIN
    -- get the movie name by id
    SELECT movie_name INTO movie
    FROM movie
    WHERE movie_id = movie_id;

    -- show the movie name   
    dbms_output.put_line('movie name is ' || movie);
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN  -- NO_DATA_FOUND is known keyword
            dbms_output.put_line('Movie ' || movie_id ||  ' does not exist');
    
END;




-- Another exception example , too many rows exception
DECLARE
    movie VARCHAR(51);
    movie_id CHAR(5) := 'M0005';
BEGIN
    -- get the movie name by id
    SELECT movie_name INTO movie
    FROM movie
    WHERE movie_id < movie_id;

    -- show the movie name   
    dbms_output.put_line('Movie name is ' || movie);
    
END;

-- Above query will return the error code : ORA-01422: exact fetch returns more than requested number of rows
