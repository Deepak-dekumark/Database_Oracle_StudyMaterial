-- use of checkpoint

INSERT INTO movie 
VALUES  ('Sev7en', 'This is a suspense thriller', TO_DATE ('01-02-20', 'dd-mm-yy'), 120, 'www.Sev7en.com/image.jpg', 'https://youtube.com/Sev7en', 'English');
SELECT * FROM movie;

--Creation of first checkpoint
SAVEPOINT p1 ;

SELECT * FROM movie;
DELETE FROM movie WHERE movie_name = 'Sev7en';

--Creation of second checkpoint
SAVEPOINT p2;

SELECT * FROM movie;
DELETE FROM movie WHERE movie_name = 'Life of Pi';

--Rollback to second checkpoint
ROLLBACK to p2 ;

SELECT * FROM movie;

--Rollback to first checkpoint
ROLLBACK to p1 ;

SELECT * FROM movie;