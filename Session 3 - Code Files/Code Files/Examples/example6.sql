-- UNION

-- setting up the schema and the data
CREATE TABLE employee 
(
  employee_id CHAR(5)NOT NULL PRIMARY key,
  name VARCHAR(20)NOT NULL,
  mobile_number NUMBER(10)
);

CREATE TABLE store_customer 
(
  customer_id CHAR(5)NOT NULL PRIMARY key,
  name VARCHAR(20)NOT NULL,
  mobile_number NUMBER(10)
);
--Record insertion into employee table
INSERT INTO employee 
VALUES ('E001','Rakesh',1234567890);


INSERT INTO employee
VALUES ('E002','Vishwa',1234567891);


INSERT INTO employee
VALUES ('E003','Mohan',1234567891);

--Record insertion into store customer table
INSERT INTO store_customer 
VALUES ('C001','Mahesh',9230567890);


INSERT INTO store_customer
VALUES ('C002','Neeraj',8834567891);


INSERT INTO store_customer
VALUES ('C004','Rudra',9084567891);

INSERT INTO store_customer
VALUES ('C005','Mohan',1234567891);

INSERT INTO store_customer
VALUES ('C006','Vishwa',1234567891);

-- Find out the all the names of customers as well as employyes without their names being repeated
SELECT name FROM store_customer 
UNION 
SELECT name FROM employee;

-- Find out the all the names of customers as well as employyes with their names being repeated
SELECT name FROM store_customer 
UNION ALL
SELECT name FROM employee;