-- Simple LOOP example

SET SERVEROUTPUT ON
DECLARE
  coun NUMBER := 0;
BEGIN
  LOOP
    coun := coun + 1;
    IF coun > 5 THEN
      EXIT;
    END IF;
    dbms_output.put_line( 'loop  count: ' || coun )  ;
  END LOOP;
  -- control resumes here after EXIT
  dbms_output.put_line( 'On exiting loop: ' || coun );
END;


-- Nested LOOP example
SET SERVEROUTPUT ON

DECLARE
  first NUMBER := 0;
  second NUMBER := 0;
BEGIN
  <<outer_loop>>   -- label
  LOOP
    first := first + 1;
    EXIT outer_loop WHEN first > 2;    
    dbms_output.put_line('Outer counter ' || first);
    -- reset inner counter
    second := 0;
      <<inner_loop>> LOOP
      second := second + 1;
      EXIT inner_loop WHEN second > 3;
      dbms_output.put_line(' Inner counter ' || second);
    END LOOP inner_loop;
  END LOOP outer_loop;
END;