-- INDEX

-- Creating a normal index on release date column  
SELECT * 
FROM movie;

DESCRIBE movie;

CREATE INDEX index_releaase_date 
ON movie(release_date);

--Creating a unique index on trailer_url column
CREATE UNIQUE INDEX index_unique_duration
ON movie(duration); 

-- dropping an index on a table 
DROP INDEX index_releaase_date;
DROP INDEX index_unique_duration;

-- creating the composite indexing
CREATE INDEX composite_index_date_duration 
ON movie(release_date, duration);
DROP INDEX composite_index_date_duration;
