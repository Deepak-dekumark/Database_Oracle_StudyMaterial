-- IF THEN statement

SET SERVEROUTPUT ON
DECLARE n_customers NUMBER := 2000; 
BEGIN 
   IF n_customers > 1000 THEN 
      DBMS_OUTPUT.PUT_LINE( 'Number  of customers are greater than 1K  ' ); 
   END IF; 
END;



-- IF THEN ELSE statement
SET SERVEROUTPUT ON
 DECLARE
  n_customers NUMBER := 300000;
  n_loyal_customers NUMBER( 10, 2 ) := 0;
BEGIN
  IF n_customers > 200000 THEN
    n_loyal_customers := n_customers * 0.1;
  ELSE
    n_loyal_customers := n_customers * 0.05;
  END IF;
  DBMS_OUTPUT.PUT_LINE( n_loyal_customers  );
END;


-- IF THEN ELSIF statement
SET SERVEROUTPUT ON
DECLARE
  n_customers NUMBER := 50000;
  n_loyal_customers NUMBER( 10, 2 ) := 0;
BEGIN
  IF n_customers > 200000 THEN
    n_loyal_customers := n_customers * 0.1;
  ELSIF n_customers <= 200000 AND n_customers > 100000 THEN 
    n_loyal_customers := n_customers * 0.05;
  ELSIF n_customers <= 100000 AND n_customers > 50000 THEN 
    n_loyal_customers := n_customers * 0.03;
  ELSE
    n_loyal_customers := n_customers * 0.02;
  END IF;
  DBMS_OUTPUT.PUT_LINE( n_loyal_customers  );
END;
