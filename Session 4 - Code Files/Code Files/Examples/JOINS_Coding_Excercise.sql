/**All the upcoming movies’ names, their release dates, the names of the theatres where they will be screened, 
the ticket prices and the seats remaining in the theatres.**/

SELECT 
    m.movie_name, 
    m.release_date, 
    t.theatre_name, 
    t.ticket_price, 
    mt.seats_remaining 
FROM movie m 
INNER JOIN movie_theatre mt 
ON m.movie_id = mt.movie_id
INNER JOIN theatre t 
ON mt.theatre_id = t.theatre_id 
WHERE m.status_id = 'S0001';
