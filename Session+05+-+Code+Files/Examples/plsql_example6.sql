-- GOTO clause example

SET SERVEROUTPUT ON
BEGIN
  GOTO second_message;

  <<first_message>>
  DBMS_OUTPUT.PUT_LINE( 'I am back to teach you' );
  GOTO the_end;

  <<second_message>>
  DBMS_OUTPUT.PUT_LINE( 'Hello students' );
  GOTO first_message;

  <<the_end>>
  DBMS_OUTPUT.PUT_LINE( 'but it is again the second last class. Good bye...' );

END;



-- This GOTO is not allowed


SET SERVEROUTPUT ON
 DECLARE
  n_customers NUMBER := 300000;
  n_loyal_customers NUMBER( 10, 2 ) := 0;
BEGIN
  GOTO inside_if_statement;
  IF n_customers > 200000 THEN
    <<inside_if_statement>>
    n_loyal_customers := n_customers * 0.1;
  ELSE
    n_loyal_customers := n_customers * 0.05;
  END IF;
  DBMS_OUTPUT.PUT_LINE( n_loyal_customers  );
END;


