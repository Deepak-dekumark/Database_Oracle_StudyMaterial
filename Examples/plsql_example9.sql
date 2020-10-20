SET SERVEROUTPUT ON
DECLARE
    i NUMBER := 1;
BEGIN
    WHILE i <= 5 LOOP
        IF i = 3 THEN
            i := i + 1;
            CONTINUE;
        END IF;
        dbms_output.put_line('Counter : ' || i);
        i := i + 1;
    END LOOP;
END;