--Dropping the customer table
DROP TABLE customer;

--Adding UNIQUE constraint during table creation

CREATE TABLE customer 
  ( 
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL UNIQUE, 
    password      VARCHAR2(20) NOT NULL CHECK (LENGTH(password)> 5), 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type     VARCHAR(20)  DEFAULT 'User'
  ); 

DESCRIBE customer;
--Adding UNIQUE constraint during table alteration
ALTER TABLE customer 
ADD UNIQUE (username);

--Testing UNIQUE constraint
INSERT INTO customer (first_name, last_name, username, password, mobile_number, date_of_birth)
VALUES ('Test','Name','xyz@gmail.com','abcd2t','9419037183',TO_DATE('02-11-1980','DD-MM-YY'));

INSERT INTO customer (first_name, last_name, username, password, mobile_number, date_of_birth)
VALUES ('Test','Name','xyz@gmail.com','abcd2t','9419037183',TO_DATE('02-11-1980','DD-MM-YY'));