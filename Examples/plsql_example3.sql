-- constant variables
SET SERVEROUTPUT ON
DECLARE
    validity_days   CONSTANT NUMBER   := 45; -- days 
    is_active CONSTANT BOOLEAN  := FALSE; 
BEGIN
    dbms_output.put_line('validity_days : ' || validity_days);
    dbms_output.put_line('is_active : ' || is_active);
END;


-- constant variable can't be reassigned the values


DECLARE
    validity_days   CONSTANT NUMBER   := 45; -- days 
    is_active CONSTANT BOOLEAN  := FALSE; 
BEGIN
    validity_days := 30; -- error
END;

