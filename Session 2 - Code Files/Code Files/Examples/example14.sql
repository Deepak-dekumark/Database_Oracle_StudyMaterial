--Creating user_type table 

CREATE TABLE user_type 
  ( 
    user_type_id	CHAR(5)PRIMARY KEY,
    user_type_name	VARCHAR(20) NOT NULL UNIQUE
);
DESCRIBE user_type;
--Dropping the customer table
DROP TABLE customer;

CREATE TABLE customer 
  ( 
    customer_id   CHAR(5) PRIMARY KEY,
    first_name    VARCHAR2(20) NOT NULL, 
    last_name     VARCHAR2(20), 
    username      VARCHAR2(20) NOT NULL UNIQUE, 
    password      VARCHAR2(20) NOT NULL CHECK (LENGTH(password)> 5), 
    mobile_number CHAR(10) NOT NULL, 
    date_of_birth DATE NOT NULL,
    user_type_id  CHAR(5),
    CONSTRAINT user_type_FK 
    FOREIGN KEY (user_type_id)
    REFERENCES user_type (user_type_id)
  ); 
  
DESCRIBE customer;



