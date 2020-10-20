-- simple for loop
SET SERVEROUTPUT ON

BEGIN
    FOR i IN 1..7 LOOP
        dbms_output.put_line(i);
    END LOOP;
END;


-- When we use same variable name , inside for loop and also outside of it

SET SERVEROUTPUT ON

DECLARE
    i PLS_INTEGER := 10;
BEGIN
    FOR i IN 1..5 LOOP dbms_output.put_line(i);
    END LOOP;
  -- after the loop
    dbms_output.put_line(i);
END; 


-- We can't access the loop variable outside the loop

BEGIN
    FOR i IN 1..3 LOOP dbms_output.put_line(i);
    END LOOP;
  -- referencing index after the loop
    dbms_output.put_line(i);
END;

-- iterating in the reverse order

SET SERVEROUTPUT ON

BEGIN
    FOR i IN REVERSE 1..7 LOOP
        dbms_output.put_line(i);
    END LOOP;
END;