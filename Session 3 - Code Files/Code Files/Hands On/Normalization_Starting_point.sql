CREATE TABLE car_customer
( 
   customer_id CHAR(5) NOT NULL,
   customer_name VARCHAR(30),
   car_number_plate VARCHAR(50),
   car_name VARCHAR(50),
   transaction_date VARCHAR(50),
   owner_id VARCHAR(20),
   owner_name VARCHAR(50)
);

INSERT INTO car_customer 
VALUES ('C1001','Sachin','car1234,car7658','swift,Thar','12/01/2020,18/01/2020','CU001,CU009','Dev,Irfan');

INSERT INTO car_customer 
VALUES ('C1002','Rahul','car3421,car6534,car3789','Baleno,Honda,Swift','12/01/2020,14/01/2020,15/01/2020','CU002,CU004','Rohit,Shikhar');

INSERT INTO car_customer 
VALUES ('C1003','Vishwa','car1200,car7865','Creta,Nano','11/04/2020,18/05/2019','CU003,CU005','Aporv,Heena');

INSERT INTO car_customer 
VALUES ('C1002','Ram','car3001,car6004,car3709','i20,Figo,Fortuner','10/04/2020,17/01/2020,13/03/2020','CU006,CU007','Rohit,Shikhar');

SELECT * FROM car_customer;

