/**You need to take two numbers and divide the first number by the second number.
In the case second number passed is equal to zero, throw an exception as ‘Arithmetic Exception :
A number can’t be divided by 0’.**/
SET SERVEROUTPUT ON

DECLARE
    exp1 EXCEPTION;
    PRAGMA exception_init ( exp1, -20001 );
    f_num   NUMBER := &input_number;
    s_num   NUMBER := &input_number;
    r_num   NUMBER;
BEGIN
    -- inner block
    BEGIN
        IF s_num = 0 THEN
            raise_application_error(-20001, 'Arithmetic Exception: A number can’t be divided by 0');
        ELSE
            r_num := f_num / s_num;
            dbms_output.put_line('Result after division is : ' || r_num);
        END IF;
    -- exception handling of the inner block

    EXCEPTION
        WHEN exp1 THEN
            dbms_output.put_line('Handle Arithmetic Exception when the second number is 0');
    END;
END;