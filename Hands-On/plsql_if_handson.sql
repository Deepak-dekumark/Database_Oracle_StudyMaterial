/**

 Take number and check if it's divisble by 2 or it's divisile by 3 or it's not divisible by 
 either of these numbers

**/

SET SERVEROUTPUT ON
DECLARE
  number NUMBER := 29;
  
BEGIN
  IF mod(number,2) = 0  THEN
    DBMS_OUTPUT.PUT_LINE( 'Number is divisible by 2'  );
  ELSIF mod(number,3) = 0 THEN 
    DBMS_OUTPUT.PUT_LINE( 'Number is divisible by 3'  );
  ELSE
    DBMS_OUTPUT.PUT_LINE( 'Number is not divisible by  2 or 3'  );
  END IF;
END;


