SELECT * FROM employee;

-- Function to return the total number of records in the employee table

CREATE OR REPLACE FUNCTION totalEmployees 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM employee; 
    
   RETURN total; 
END; 


-- calling a function

DECLARE 
   e number(2); 
BEGIN 
   e := totalEmployees(); 
   dbms_output.put_line('Total no. of Employee: ' || e); 
END;



-- Recursive function to find the factorial

DECLARE 
   num NUMBER; 
   factorial_value NUMBER;  
   
FUNCTION fact(x NUMBER) 
RETURN NUMBER  
IS 
   f NUMBER; 
BEGIN 
   IF x<=1 THEN 
      f := 1; 
   ELSE 
      f := fact(x-1) + fact(x-2); 
   END IF; 
RETURN f; 
END;  

BEGIN 
   num:= 9; 
   factorial_value := fact(num); 
   dbms_output.put_line(' Factorial result for 6 is '|| factorial_value); 
END; 
