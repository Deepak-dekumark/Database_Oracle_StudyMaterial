--Dropping the customer table
DROP TABLE customer;

--Adding CHECK constraint at column level 

CREATE TABLE customer 
  ( 
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL, 
    password      VARCHAR2(20) NOT NULL CHECK (LENGTH(password)> 5), 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type     VARCHAR(20)  DEFAULT 'User'
  ); 

--Dropping the customer table
DROP TABLE customer;

--Adding CHECK constraint at table level 

CREATE TABLE customer 
(	 
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL, 
    password      VARCHAR2(20) NOT NULL, 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type     VARCHAR(20)  DEFAULT 'User',
    CONSTRAINT CHK_user CHECK (LENGTH(password)> 5)
);
DESCRIBE customer;
 
--Testing CHECK constraint
INSERT INTO customer (first_name, last_name, username, password, mobile_number, date_of_birth)
VALUES ('Test','Name','xyz@gmail.com','abcd','9419037183',TO_DATE('02-11-1980','DD-MM-YY'));


