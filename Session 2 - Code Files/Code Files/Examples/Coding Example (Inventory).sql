--Creation of the table inventory
CREATE TABLE inventory
(
    item_number    CHAR(5),
    item_name      VARCHAR2(10),
    item_desc      VARCHAR2(50),
    item_count     NUMBER(5)
   
);

DESCRIBE inventory;

--Insertion of records into the table
INSERT INTO inventory 
VALUES ('1','Mango','Mango is a fruit',1000);

INSERT INTO inventory 
VALUES ('2','Apple','Apple is a fruit',500);

INSERT INTO inventory 
VALUES ('3','Orange','Orange is a fruit',500);

--Checking the records
SELECT * FROM inventory ;

-- Renaming the item_count column to inventory_count

ALTER TABLE inventory 
RENAME COLUMN item_count TO inventory_count;

DESCRIBE inventory ;

-- Addition of column of type date of name last_updated
ALTER TABLE inventory 
ADD last_updated DATE;

DESCRIBE inventory ;

-- Deletion all the records from the table inventory
DELETE FROM inventory;

SELECT *
FROM inventory ;