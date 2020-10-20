-- creating procedure
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE first_procedure AS
BEGIN
    dbms_output.put_line('We are learning Procedures!');
END; 

-- executing the created procedure

EXECUTE first_procedure;

-- calling from another PL/SQL block

BEGIN
    first_procedure;
END;

-- deleting this created procedure

DROP PROCEDURE first_procedure;

EXECUTE first_procedure; -- Testing if deleted

-- Parameter modes in program

DECLARE
    i   NUMBER;
    j   NUMBER;
    maximum   NUMBER;
    

    PROCEDURE findmax (
        num_1   IN    NUMBER,
        num_2   IN    NUMBER,
        result   OUT   NUMBER
    ) IS
    BEGIN
        IF num_1 > num_2 THEN
            result := num_1;
        ELSE
            result := num_2;
        END IF;
    END;

BEGIN
    i := 151;
    j := 70;
   
    findmax(i,j,maximum);
    dbms_output.put_line(' Maximum of (151, 70) : ' || maximum);
END;




 -- IN OUT mode
 DECLARE 
   p number; 
PROCEDURE cubeNum(x IN OUT number) IS 
BEGIN 
  x := x * x * x ; 
END;  
BEGIN 
   p:= 35; 
   cubeNum(p); 
   dbms_output.put_line(' Cube of (35): ' || p); 
END;



