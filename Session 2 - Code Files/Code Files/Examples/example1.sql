--Use of the Alter command

--Add a new column called producers
DESCRIBE movie ;

ALTER TABLE movie 
ADD movie_producer varchar(255);

DESCRIBE movie ;

--Update the columns, change the type from varchar(255) to char(20)
ALTER TABLE movie 
MODIFY movie_producer char(20);

DESCRIBE movie ;

--Drop the column
ALTER TABLE movie 
DROP COLUMN movie_producer;  -- This will drop the complete column

DESCRIBE movie;