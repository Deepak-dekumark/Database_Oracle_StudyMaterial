
-- Named block 
SET SERVEROUTPUT ON
DECLARE 
   a number;  
   b number;  
   c number;  
   --Function return smallest of the given two numbers 
FUNCTION findMin(x IN number, y IN number)   
RETURN number  
IS 
    z number;  
BEGIN 
   IF x < y THEN 
      z:= x;  
   ELSE 
      Z:= y;  
   END IF;   
   RETURN z;  
END;  
BEGIN 
   a:= 12;  
   b:= 21;   
   c := findMin(a, b);  
   dbms_output.put_line(' Minimum numb in 12 and 21 is: ' || c);  
END;  





-- Anonymous block

SET SERVEROUTPUT ON

DECLARE BEGIN
    dbms_output.put_line('Hello There');
END;


