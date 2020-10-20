--Dropping the customer table
DROP TABLE customer;

--Adding DEFAULT constraint during table creation
CREATE TABLE customer 
  ( 
    first_name    VARCHAR2(20)NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL, 
    password      VARCHAR2(20) NOT NULL, 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type     VARCHAR(20)  DEFAULT 'User'
  ); 
  
--Adding DEFAULT constraint during table alteration
ALTER TABLE customer 
MODIFY user_type DEFAULT 'User';
  
--Testing DEFAULT constraint
INSERT INTO customer (first_name, last_name, username, password, mobile_number, date_of_birth)
VALUES ('Test','Name','xyz@gmail.com','abcd','9419037183',TO_DATE('02-11-2020','DD-MM-YY'));

SELECT * 
FROM customer;