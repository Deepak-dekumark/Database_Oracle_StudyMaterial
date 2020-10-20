-- Example of the implicit cursor

/**
You are a bank and you have given the credit card to customers. Now based on the spending pattern, 
you want to increase the credit limit. So every customer who spends more than 1 lac, his credit
limit should be increased to 5 lac.

**/

CREATE TABLE customer_credit 
(
  customer_id NUMBER(5) PRIMARY KEY,
  total_expense NUMBER(6),
  credit_limit NUMBER(7)
)

DESCRIBE customer_credit  ;

INSERT INTO customer_credit 
VALUES (1001 , 100000 , 50000);

INSERT INTO customer_credit 
VALUES ( 1002 , 200000, 50000);

INSERT INTO customer_credit 
VALUES (1003 ,75000 , 50000);

INSERT INTO customer_credit 
VALUES ( 1004 ,12500 ,50000);

INSERT INTO customer_credit 
VALUES(1005 , 200000 , 50000);


DECLARE  
   total_rows NUMBER(2); 
BEGIN 
   UPDATE customer_credit  
   SET credit_limit = 500000  where total_expense >= 100000 ; 
   IF sql%notfound THEN 
      dbms_output.put_line('no customers selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected '); 
   END IF;  
END; 


SELECT * FROM customer_credit ;

---  ######  Explicit cursors  #######

DECLARE 
   c_id customer_credit.customer_id%type; 
   c_expense customer_credit.total_expense%type; 
   c_credit_limit customer_credit.credit_limit%type; 
   CURSOR c_customers is 
      SELECT customer_id, total_expense, credit_limit FROM customer_credit; 
BEGIN 
   OPEN c_customers; 
   LOOP 
   FETCH c_customers INTO c_id, c_expense, c_credit_limit; 
      EXIT WHEN c_customers%notfound; 
      dbms_output.put_line(c_id || ' ' || c_expense || ' ' || c_credit_limit); 
   END LOOP; 
   CLOSE c_customers; 
END;
