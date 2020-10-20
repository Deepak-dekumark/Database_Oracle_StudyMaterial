--Dropping the customer table
DROP TABLE customer;

--Adding PRIMARY KEY constraint 

CREATE TABLE customer 
  ( 
    customer_id   CHAR(5) PRIMARY KEY,
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL UNIQUE, 
    password      VARCHAR2(20) NOT NULL CHECK (LENGTH(password)> 5), 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type     VARCHAR(20)  DEFAULT 'User'    
  ); 
  
DESCRIBE customer;
