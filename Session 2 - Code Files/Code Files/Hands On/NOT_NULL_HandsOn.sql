--Dropping the movie table
DROP TABLE movie;

--Adding NOT NULL constraint during table creation
CREATE TABLE movie 
  ( 
    movie_name            VARCHAR2(50) NOT NULL,  
    movie_desc           VARCHAR2(500) NOT NULL,  
    release_date         DATE NOT NULL,         
    duration             NUMBER(3), 
    cover_photo_url      VARCHAR2(500), 
    trailer_url          VARCHAR2(500), 
    language              VARCHAR2(20)
  ); 
DESCRIBE movie;

--Adding NOT NULL constraint during table alteration
ALTER TABLE movie 
MODIFY duration NUMBER(3) NOT NULL;

ALTER TABLE movie 
MODIFY cover_photo_url VARCHAR2(500) NOT NULL;

ALTER TABLE movie 
MODIFY trailer_url VARCHAR2(500) NOT NULL;

ALTER TABLE movie 
MODIFY language VARCHAR2(20) NOT NULL;
DESCRIBE movie;

