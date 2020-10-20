--Insertion of data into status table
INSERT INTO status
VALUES ('S0001', 'Upcoming');

INSERT INTO status
VALUES ('S0002', 'Ongoing');

INSERT INTO status
VALUES ('S0003', 'DELETED');

--Insertion of data into movie table

INSERT INTO movie 
VALUES ('M0001', 'Avengers', 'This is a Superhero Movie', TO_DATE ('26-07-20', 'dd-mm-yy'), 150, 'www.avengers_endgame/image.jpg', 'https://youtube.com/avengers', 'English', 'S0001');
            
INSERT INTO movie 
VALUES ('M0002', 'Oceans 11', 'This is a Suspense', TO_DATE ('26-07-08', 'dd-mm-yy'), 120, 'www.oceans_11/image.jpg', 'https://youtube.com/oceans', 'Hindi', 'S0002');
            
INSERT INTO movie 
VALUES ('M0003', 'Gladiator', 'This is a Historical Fiction', TO_DATE ('26-06-00', 'dd-mm-yy'), 90, 'www.gladiator/image.jpg', 'https://youtube.com/gladiator', 'English', 'S0003');
            
--Sorting results based on release date in ascending order
SELECT *
FROM movie
ORDER BY release_date;

--Sorting results based on release date in descending order
SELECT *
FROM movie
ORDER BY release_date DESC;