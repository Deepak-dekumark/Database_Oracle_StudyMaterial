-- defining the local variables
SET SERVEROUTPUT ON  -- this is used for printing the output ot console

DECLARE
    total_profit   NUMBER(15, 2);
    loan_limit     NUMBER(10, 0);
    full_name      VARCHAR2(255);
BEGIN
    NULL;
END;


-- setting the default value in the PL/SQL variables

DECLARE
    full_name VARCHAR2(100) DEFAULT 'Vishwa Mohan';  -- this is the default value set
BEGIN
    NULL;
END;


-- NOT NULL constraint

DECLARE
  release_status VARCHAR2( 25 ) NOT NULL := 'RELEASEAD';
BEGIN
  release_status := '';
END;


-- Combined assignment
SET SERVEROUTPUT ON
DECLARE
    item_provider VARCHAR2(100) := 'Distributor';
    another_provider VARCHAR2(100);
BEGIN
    another_provider := item_provider; 
    DBMS_OUTPUT.PUT_LINE(another_provider);
END;


