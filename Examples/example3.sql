-- Table based record

SET SERVEROUTPUT ON
DECLARE 
   movie_rec movie%ROWTYPE; 
BEGIN 
   SELECT * INTO movie_rec 
   FROM movie 
   WHERE movie_name = 'Avengers';  
   dbms_output.put_line('release date: ' || movie_rec.release_date); 
  
END;

-- Cursor based record

SELECT * FROM movie ;

DECLARE
    CURSOR c_movies IS
        SELECT movie_name, movie_desc, release_date
        FROM movie;
    r_movies c_movies%ROWTYPE;
    
BEGIN
     OPEN c_movies; 
   LOOP 
      FETCH c_movies INTO r_movies; 
      EXIT WHEN c_movies%notfound; 
      DBMS_OUTPUT.put_line(r_movies.movie_name || ' ' || r_movies.release_date); 
   END LOOP;
    
END;

-- User defined records

DECLARE 
   TYPE student IS RECORD 
      (student_id NUMBER,
      name VARCHAR2(50), 
      age NUMBER(3), 
      grade VARCHAR2(100)); 
   student novel; 
   novel2 novel; 
BEGIN 
   -- Student 1  
   student.id  := 1001; 
   student.name := 'John';  
   student.age := 12; 
   student.grade := '8th';  
  
  -- Print student 1 record 
   dbms_output.put_line('student id : '|| student.id); 
   dbms_output.put_line('student name : '|| student.name); 
   dbms_output.put_line('student age : '|| student.age); 
   dbms_output.put_line('student grade : ' || student.grade); 
END; 
