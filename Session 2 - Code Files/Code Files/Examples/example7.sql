-- use of rollback

INSERT INTO movie 
VALUES  ('Sev7en', 'This is a suspense thriller', TO_DATE ('01-02-20', 'dd-mm-yy'), 120, 'www.Sev7en.com/image.jpg', 'https://youtube.com/Sev7en', 'English');
   

SELECT * FROM movie;

ROLLBACK ;

SELECT * FROM movie;



