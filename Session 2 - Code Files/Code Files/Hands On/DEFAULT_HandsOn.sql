--Dropping the theater table
DROP TABLE theatre;

--Adding DEFAULT constraint during table creation

CREATE TABLE theatre
  ( 
    theatre_name	VARCHAR(20) NOT NULL,
    city_name       VARCHAR(20) NOT NULL,
    no_of_seats	    NUMBER(3) DEFAULT 50,
    ticket_price	NUMBER(5,2)
  ); 


--Adding DEFAULT constraint during table alteration
ALTER TABLE theatre
MODIFY ticket_price DEFAULT 150.00;
