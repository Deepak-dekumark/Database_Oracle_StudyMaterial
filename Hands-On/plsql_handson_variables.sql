/** Create a variable named user-name which store the default user name as Salman Khan. Later assign that variable to another variable
and print the second variable
**/

SET SERVEROUTPUT ON
DECLARE
    user_name VARCHAR2(100) := 'Vishwa Mohan';
    another_name  VARCHAR2(100) ;
BEGIN
    another_name := user_name; 
    DBMS_OUTPUT.PUT_LINE(another_name);
END;