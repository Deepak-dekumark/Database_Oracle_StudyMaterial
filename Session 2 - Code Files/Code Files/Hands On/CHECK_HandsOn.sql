--Dropping the movie table
DROP TABLE movie;

--Adding CHECK constraint during table creation
CREATE TABLE movie 
  ( 
    movie_name            VARCHAR2(50) NOT NULL,  
    movie_desc           VARCHAR2(500) NOT NULL,  
    release_date         DATE NOT NULL,         
    duration             NUMBER(3) NOT NULL CHECK (duration > 60), 
    cover_photo_url      VARCHAR2(500) NOT NULL, 
    trailer_url          VARCHAR2(500) NOT NULL, 
    language              VARCHAR2(20) NOT NULL
  ); 
  
DESCRIBE movie;