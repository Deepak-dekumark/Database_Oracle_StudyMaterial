-- Print the first 10 multiple of 17 using loop
SET SERVEROUTPUT ON

DECLARE
    i NUMBER := 1;
BEGIN
    WHILE i <= 10 LOOP
        dbms_output.put_line('Number : ' || i * 17);
        i := i + 1;
    END LOOP;
END;



-- Print all the numbers which are both divisible by 2 and 3 between 1 and 100

BEGIN
    FOR i IN 1..100 LOOP
        IF MOD(i, 2) = 0 AND MOD(i, 3) = 0 THEN
            dbms_output.put_line(i);
        END IF;
    END LOOP;
END;