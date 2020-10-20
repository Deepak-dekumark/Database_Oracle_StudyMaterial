--Insertion of records into the inventory table
INSERT INTO inventory 
VALUES ('1','Mango','Mango is a fruit',1000, TO_DATE('02-12-19','DD-MM-YY'));

INSERT INTO inventory 
VALUES ('2','Apple','Apple is a fruit',500, TO_DATE('02-12-19','DD-MM-YY'));

INSERT INTO inventory 
VALUES ('3','Orange','Orange is a fruit',500, TO_DATE('02-12-19','DD-MM-YY'));


--Checking the records
SELECT * 
FROM inventory;

-- Truncate the table
TRUNCATE TABLE inventory;

--Checking the records
SELECT * 
FROM inventory;