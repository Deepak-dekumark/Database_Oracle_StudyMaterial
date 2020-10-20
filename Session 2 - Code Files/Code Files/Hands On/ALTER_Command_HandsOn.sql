-- Add two new columns named ticket_price of type NUMBER(10) and location of type VARCHAR2(20) to this table movie_theater
DESCRIBE movie_theatre;
ALTER TABLE movie_theatre 
ADD ticket_price NUMBER(10);

ALTER TABLE movie_theatre
ADD location VARCHAR2(12);

DESCRIBE theatre;


-- Update the type of the column ticket_price from NUMBER(10) to NUMBER(5)for this new added column
ALTER TABLE movie_theatre
MODIFY ticket_price NUMBER(5,2);

DESCRIBE movie_theatre;

-- Delete the column location from this table theater
ALTER TABLE movie_theatre
DROP COLUMN location; 

-- Rename the table from movie_theater to theater
ALTER TABLE movie_theatre
RENAME TO theatre;
DESCRIBE theatre;