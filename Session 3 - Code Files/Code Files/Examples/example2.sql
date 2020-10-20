
--Create a table users
CREATE TABLE users (
    userID CHAR(5) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_Name VARCHAR2(20),
    age NUMBER(3),
    address VARCHAR2(50),
    city VARCHAR2(20)
);

--Insertion of records
INSERT INTO users 
VALUES ('00001', 'George', 'Martin', 30, 'S1 street, central park','Bangalore');

INSERT INTO users 
VALUES ('00002', 'Rita', 'Alex', 18, 'S2 street, central park','Mumbai');

INSERT INTO users 
VALUES ('00003', 'Jimmy', 'Roger', 23, 'S3 street, central park','Hyderabad');


/*Logical Operators*/
--Select all users whose age is more than 19 and who reside in Hyderabad city
SELECT * FROM users 
WHERE age > 19 AND city = 'Hyderabad' ;

--Select all users whose age is more than 19 or  who reside in Mumbai city
SELECT * FROM users 
WHERE age > 19 OR city ='Mumbai' ;

--Select all users whose first name is not George
SELECT * FROM users 
WHERE NOT first_name = 'George';

