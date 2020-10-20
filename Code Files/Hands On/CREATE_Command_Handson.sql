/** creating movie table **/
CREATE TABLE movie
(
    movie_name      VARCHAR2(50),
    movie_desc      VARCHAR2(500),
    release_date    DATE,
    duration        NUMBER(3),
    cover_photo_url VARCHAR2(500),
    trailer_url     VARCHAR2(500),
    language        VARCHAR2(20)
);

DESCRIBE movie;

