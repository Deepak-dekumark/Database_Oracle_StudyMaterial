-- example of raising the user-defined exception


DECLARE
    e_movie_duration_too_high EXCEPTION;
    PRAGMA exception_init ( e_movie_duration_too_high, -20001 );
    max_duration     NUMBER(3);
    movie_name       VARCHAR2(20) := 'Life of Pi returns';
    movie_duration   NUMBER(3) := &duration;  -- this will take the user input
BEGIN
    SELECT
        MAX(duration)
    INTO max_duration
    FROM
        movie;
    
    -- check if the movie duration is is greater than the max duration

    IF movie_duration > max_duration THEN
        -- RAISE e_movie_duration_too_high;   -- this just prints the error code
        raise_application_error(-20001, 'Duration of the movie is too long'); -- this prints more descriptive error message
    END IF;
END;


-- Above should throw an error message ; ORA-20001

-- Raising an internally defined exception

DECLARE
    -- get a number
    positive_num NUMBER(3) := &number;
BEGIN
    -- if the number is negative, throw an internally-defined exception
    IF positive_num < 0 THEN
        RAISE invalid_number;
    END IF;
END;


-- re-raising the exception
SET SERVEROUTPUT ON
DECLARE
    e_movie_duration_too_high EXCEPTION;
    PRAGMA exception_init ( e_movie_duration_too_high, -20001 );
    max_duration     NUMBER(3);
    movie_name       VARCHAR2(20) := 'Life of Pi returns';
    movie_duration   NUMBER := &duration;  -- this will take the user input
BEGIN
    BEGIN
    -- get the max credit limit
        SELECT
            MAX(duration)
        INTO max_duration
        FROM
            movie;
    

        IF movie_duration > max_duration THEN
            RAISE e_movie_duration_too_high;   -- this just prints the error code
        END IF;
    EXCEPTION
        WHEN e_movie_duration_too_high THEN
            dbms_output.put_line('The movie durations is too high');
            RAISE;   -- Here we are re-raising the exception
    END;
EXCEPTION
    WHEN e_movie_duration_too_high THEN
        dbms_output.put_line('catching the exception in the outer block.');
END;




-- exception propagation
SET SERVEROUTPUT ON
DECLARE
    exp1 EXCEPTION;
    PRAGMA exception_init (exp1, -20001);
    exp2 EXCEPTION;
    PRAGMA exception_init (exp2, -20002);
    exp3 EXCEPTION;
    PRAGMA exception_init (exp3, -20003);
    input NUMBER := &input_number;
BEGIN
    -- inner block
    BEGIN
        IF input = 1 THEN
            raise_application_error(-20001,'Exception: the input number is 1');
        ELSIF input = 2 THEN
            raise_application_error(-20002,'Exception: the input number is 2');
        ELSE
            raise_application_error(-20003,'Exception: the input number is not 1 or 2');
        END IF;
    -- exception handling of the inner block
    EXCEPTION
        WHEN exp1 THEN 
            dbms_output.put_line('Handle exception when the input number is 1');
    END;
    -- exception handling of the outer block
    EXCEPTION 
        WHEN exp2 THEN
            dbms_output.put_line('Handle exception when the input number is 2');
END;
