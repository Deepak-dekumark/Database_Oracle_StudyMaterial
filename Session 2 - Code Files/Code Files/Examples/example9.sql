--Dropping the customer table
DROP TABLE customer;

--Adding NOT NULL constraint during table creation
CREATE TABLE customer 
  ( 
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20), 
    password      VARCHAR2(20) NOT NULL, 
    mobile_number     CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL
  ); 
  
DESCRIBE customer;


--Adding NOT NULL constraint during table alteration
ALTER TABLE customer 
MODIFY username VARCHAR2(20) NOT NULL;

DESCRIBE customer;

--Testing NOT NULL constraint
INSERT INTO customer
VALUES ('Test','Name',NULL,'abcd','941903718332',TO_DATE('02-11-2020','DD-MM-YY'));
