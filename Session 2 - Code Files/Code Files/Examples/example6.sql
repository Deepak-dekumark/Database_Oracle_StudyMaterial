-- use of commit

SELECT * FROM movie;

INSERT INTO movie 
VALUES  ('Sev7en', 'This is a suspense thriller', TO_DATE ('01-02-20', 'dd-mm-yy'), 120, 'www.Sev7en.com/image.jpg', 'https://youtube.com/Sev7en', 'English');
            
INSERT INTO movie 
VALUES ('Life of Pi', 'This is a suspense thriller', TO_DATE ('01-03-20', 'dd-mm-yy'), 90, 'www.LifeofPi.com/image.jpg', 'https://youtube.com/Pi', 'Hindi');


SELECT * FROM movie;

DELETE FROM movie WHERE movie_name = 'Sev7en';

COMMIT;

SELECT * FROM movie;
