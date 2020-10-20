-- INDEX

-- Creating a normal index on release date column  
SELECT * 
FROM customer;

DESCRIBE customer;

CREATE INDEX name_index 
ON customer(first_name);

--Creating a unique index on date of birth column
CREATE UNIQUE INDEX unique_date_of_birth 
ON customer(date_of_birth); 

-- dropping an index on a table 
DROP INDEX name_index;
DROP INDEX unique_date_of_birth;

-- creating the composite indexing
CREATE INDEX composite_name_username_index 
ON customer(first_name, date_of_birth);