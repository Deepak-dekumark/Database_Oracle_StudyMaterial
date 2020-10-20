TRUNCATE TABLE car_customer;

INSERT INTO car_customer 
VALUES ('C1001','Sachin','car1234','swift','12/01/2020','CU001','Dev');

INSERT INTO car_customer 
VALUES ('C1001','Sachin','car7658','Thar','18/01/2020','CU009','Irfan');

INSERT INTO car_customer 
VALUES ('C1002','Rahul','car3421','Baleno','12/01/2020','CU002','Rohit');

INSERT INTO car_customer 
VALUES ('C1002','Rahul','car6534','Honda','14/01/2020','CU002','Rohit');

INSERT INTO car_customer 
VALUES ('C1002','Rahul','car3789','Swift','15/01/2020','CU004','Shikhar');

INSERT INTO car_customer 
VALUES ('C1003','Vishwa','car1200','Creta','11/04/2020','CU003','Aporv');

INSERT INTO car_customer 
VALUES ('C1003','Vishwa','car7865','Nano','18/05/2019','CU005','Heena');

INSERT INTO car_customer 
VALUES ('C1002','Ram','car3001','i20','10/4/2020','CU006','Rohit');

INSERT INTO car_customer 
VALUES ('C1002','Ram','car6004','Figo','17/01/2020','CU006','Rohit');

INSERT INTO car_customer 
VALUES ('C1002','Ram','car3709','Fortuner','13/03/2020','CU007','Shikhar');


SELECT * FROM car_customer;-- composite key - car_NUMBER_plate , date_transaction
