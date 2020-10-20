-- Renaming a table name
CREATE TABLE theatre (
    theatre_name VARCHAR(20),
	no_of_seats NUMBER(3)
);

DESCRIBE theatre; 

ALTER TABLE theatre
RENAME TO movie_theatre;

DESCRIBE theatre; -- this will say object doesn't exist

DESCRIBE movie_theatre;

