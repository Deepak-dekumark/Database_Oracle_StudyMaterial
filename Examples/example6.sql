SELECT * FROM customer;

-- create a row level trigger , which will get fired with every upodate on customer table
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER customer_data_change 
BEFORE DELETE OR INSERT OR UPDATE ON customer 
FOR EACH ROW 
WHEN (NEW.CUSTOMER_ID is not null) 
DECLARE 
    
BEGIN 
   dbms_output.put_line('Customer records modified ' || :NEW.FIRST_NAME); 
END; 

-- Triggering the trigger

UPDATE customer SET last_name = 'Malik' 
WHERE customer_id='C1003';
