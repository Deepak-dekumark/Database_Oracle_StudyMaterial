--Inserting records
INSERT INTO customer 
VALUES ('C1001', 'Vishwa', 'Mohan', 'vish@g.com', 'sadfesf', '9176239943,9176239000', TO_DATE ('07-12-1988', 'dd-mm-yy'), 'U0001', 'User');

INSERT INTO customer
VALUES ('C1002','Roshan','Kumar', 'rosh0@g.com1','sadfesf12','9176239953,9176239777', TO_DATE ('01-11-1987', 'dd-mm-yy'),'U0001', 'User');

INSERT INTO customer
VALUES ('C1003','Sachin','Tendulkar','sach01@g.com','sadf1sdsf12','9176239912,9176239234', TO_DATE ('30-04-1985', 'dd-mm-yy'),'U0002', 'Admin');

--Finding a customer with name First name as Sachin

SELECT * 
FROM customer 
WHERE first_name = 'Sachin';

--Finding customer names from a list

SELECT * 
FROM customer
WHERE first_name IN ('Sachin','Roshan');

--Finding customer names which are not present in a list
SELECT * 
FROM customer 
WHERE first_name NOT IN ('Sachin','Roshan');

--Finding customers with last names starting from 'T'
SELECT * 
FROM customer 
WHERE last_name LIKE 'T%';

--Finding customers with last names having 'a' as fourth letter
SELECT * 
FROM customer 
WHERE last_name LIKE '___a%';

--Finding customers with last names starting from 'T' and has 'n' as third letter
SELECT * 
FROM customer 
WHERE last_name LIKE 'T_n%';

--Finding customers with last names ending with 'r'
SELECT * 
FROM customer 
WHERE last_name LIKE '%r';

--Finding customers with date of birth in a range
SELECT * 
FROM customer 
WHERE date_of_birth BETWEEN TO_DATE('06-01-88', 'DD-MM-YY') AND TO_DATE('01-01-90', 'DD-MM-YY');
