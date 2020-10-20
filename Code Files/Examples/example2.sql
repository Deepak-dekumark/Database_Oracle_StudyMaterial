--Inserting records into the customer table by specifying all the columns

INSERT INTO customer ( first_name, last_name, username, password, mobile_number, date_of_birth) 
VALUES ( 'Indrajeet', 'Mavera', 'inder@gmail.com', 'xyz@123', '1234567930', TO_DATE('02-01-90', 'DD-MM-YY'));

--Inserting records into the customer table by just providing the name of the table
INSERT INTO customer 
VALUES  ( 'Nishant', 'Mehra', 'nish@gmail.com', 'x#123', '1234567930', TO_DATE('02-01-94', 'DD-MM-YY'));   
