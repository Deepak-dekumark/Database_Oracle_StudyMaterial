/**
  Given two number , return  the minimum  of those numbers

**/

DECLARE 
   num_1 NUMBER; 
   num_2 NUMBER; 
   result NUMBER;
FUNCTION findProd(a IN NUMBER, b IN NUMBER)  
RETURN NUMBER 
IS 
    product NUMBER; 
BEGIN 
   product := num_1*num_2;
END; 
BEGIN 
   num_1:= 23; 
   num_2:= 45;  
   result := findProd(num_1,num_2); 
   dbms_output.put_line(' Minimum of given two numbers is  ' || result); 
END;
