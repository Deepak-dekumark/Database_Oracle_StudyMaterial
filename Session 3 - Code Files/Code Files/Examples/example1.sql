--Checking the data in customer table
SELECT * 
FROM customer;

--Record insertion into user_type table
INSERT INTO user_type 
VALUES ('U0001','USER');

INSERT INTO user_type 
VALUES ('U0002','ADMIN');

--Record Insertion into the customer table
INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', 9176239943, TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12',9176239953, TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001');

INSERT INTO customer
VALUES ('C1003','Shivani','Tripathi','shiv01@g.com','sadf12f12',9176239953, TO_DATE ('01-01-1989', 'dd-mm-yy'),'U0001');

INSERT INTO customer
VALUES ('C1004','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12',9176239912, TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002');

--Sorting results based on date of birth in ascending order
SELECT *
FROM customer
ORDER BY date_of_birth;

--Sorting results based on date of birth in descending order
SELECT *
FROM customer
ORDER BY date_of_birth DESC;
