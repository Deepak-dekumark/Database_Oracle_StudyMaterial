
DROP TABLE theatre;

--Setting the data into the theater table
CREATE TABLE theatre(
    theatre_id CHAR(5) PRIMARY KEY,
    theatre_name VARCHAR(20) NOT NULL UNIQUE,
    city VARCHAR(20) NOT NULL,
    no_of_seats NUMBER(3) DEFAULT 50,
    ticket_price NUMBER(5,2) DEFAULT 150.00     
    );

--Data insertion
INSERT INTO theatre
VALUES ('T0001', 'Inox', 'Mumbai', 300, 200.00);

INSERT INTO theatre
VALUES ('T0002', 'Pheonix', 'Delhi', 250, 200);

INSERT INTO theatre
VALUES ('T0003', 'Carnival', 'Bangalore', 200, 350);

--Counting number of theaters in total
SELECT COUNT(*)
FROM theatre;

--Counting number of theaters in Bangalore
SELECT COUNT(*) AS "Count of Theatres"
FROM theatre
WHERE city = 'Bangalore';

--Maximum number of seats in a theater
SELECT MAX(no_of_seats) AS "Maximum Seats"
FROM theatre;

--Sum of all seats
SELECT SUM(no_of_seats) AS "All Seats"
FROM theatre;
