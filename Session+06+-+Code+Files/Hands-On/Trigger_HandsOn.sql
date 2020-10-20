

SELECT * FROM movie;


SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER trigger_movie_changes 
BEFORE DELETE OR INSERT OR UPDATE ON movie 
FOR EACH ROW 
WHEN (NEW.movie_id is not null) 
DECLARE 
    
BEGIN 
   dbms_output.put_line('New movie name ' || :NEW.movie_name); 
END; 


-- Triggering the trigger

INSERT INTO movie 
VALUES ('M0008', 'Departed3', 'This is not suspense', TO_DATE ('11-09-20', 'dd-mm-yy'), 200, 'www.Departed2/image.jpg', 'https://youtube.com/departed2', 'S0001');

