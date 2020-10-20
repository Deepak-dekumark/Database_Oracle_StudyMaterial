--Creation of status table

CREATE TABLE status 
(
  status_id CHAR(5) PRIMARY KEY,
  status_name VARCHAR2(20) NOT NULL UNIQUE
);

--Addition of a new column to movie table
ALTER TABLE movie 
ADD status_id CHAR(5) NOT NULL;

--Addition of a foriegn key to movie table
ALTER TABLE movie 
ADD FOREIGN KEY (status_id) REFERENCES status(status_id);

DESCRIBE movie;