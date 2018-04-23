DROP TABLE attendances;
DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('Euan Bell');
INSERT INTO people (name) VALUES ('Pauline Cairns');
INSERT INTO people (name) VALUES ('Yang Chen');
INSERT INTO people (name) VALUES ('Ruairidh Grass');
INSERT INTO people (name) VALUES ('Hannah Green');
INSERT INTO people (name) VALUES ('Hamish Hoad');
INSERT INTO people (name) VALUES ('Andrew Laughlin');
INSERT INTO people (name) VALUES ('Jo Malo');
INSERT INTO people (name) VALUES ('Duncan Marjoribanks');
INSERT INTO people (name) VALUES ('Juan Mata Ruiz');
INSERT INTO people (name) VALUES ('Paul McPhail Stevenson');
INSERT INTO people (name) VALUES ('Sarah Murphy');
INSERT INTO people (name) VALUES ('Katy Preston');
INSERT INTO people (name) VALUES ('Richard Ramson');
INSERT INTO people (name) VALUES ('Iain Rogerson');
INSERT INTO people (name) VALUES ('Davinda Sanders');
INSERT INTO people (name) VALUES ('Joe Stafford');
INSERT INTO people (name) VALUES ('Daniel Stewart');
INSERT INTO people (name) VALUES ('Luis Tejero');
INSERT INTO people (name) VALUES ('Colin Tindle');
INSERT INTO people (name) VALUES ('Rachel Westwater');
INSERT INTO people (name) VALUES ('Andrew Smith');
INSERT INTO people (name) VALUES ('Zsolt Podoba-Szalai');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '19:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '18:40');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:35');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '14:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '21:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '17:55');

-- 1. Return ALL the data in the 'movies' table.

SELECT  FROM movies;

-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 19:55
--   2 | The Incredible Hulk                 | 2008 | 18:40
--   3 | Iron Man 2                          | 2010 | 21:55
--   4 | Thor                                | 2011 | 16:35
--   5 | Captain America: The First Avenger  | 2011 | 13:25
--   6 | Avengers Assemble                   | 2012 | 22:05
--   7 | Iron Man 3                          | 2013 | 23:10
--   8 | Thor: The Dark World                | 2013 | 12:25
--   9 | Batman Begins                       | 2005 | 14:00
--  10 | Captain America: The Winter Soldier | 2014 | 14:45
--  11 | Guardians of the Galaxy             | 2014 | 18:55
--  12 | Avengers: Age of Ultron             | 2015 | 20:40
--  13 | Ant-Man                             | 2015 | 13:50
--  14 | Captain America: Civil War          | 2016 | 21:30
--  15 | Doctor Strange                      | 2016 | 17:55
-- (15 rows)



-- 2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

-- name
-- ------------------------
-- Euan Bell
-- Pauline Cairns
-- Yang Chen
-- Ruairidh Grass
-- Hannah Green
-- Hamish Hoad
-- Andrew Laughlin
-- Jo Malo
-- Duncan Marjoribanks
-- Juan Mata Ruiz
-- Paul McPhail Stevenson
-- Sarah Murphy
-- Katy Preston
-- Richard Ramson
-- Iain Rogerson
-- Davinda Sanders
-- Joe Stafford
-- Daniel Stewart
-- Luis Tejero
-- Colin Tindle
-- Rachel Westwater
-- Andrew Smith
-- Zsolt Podoba-Szalai
-- (23 rows)



-- 3.Oops! Someone at CodeClan spelled Davina's name wrong! Change it to reflect the proper spelling (change 'Davinda Sanders' to 'Davina Sanders').

UPDATE people SET name = 'Davina Sanders' WHERE id = 16;
SELECT name FROM people;

-- name
-- ------------------------
-- Euan Bell
-- Pauline Cairns
-- Yang Chen
-- Ruairidh Grass
-- Hannah Green
-- Hamish Hoad
-- Andrew Laughlin
-- Jo Malo
-- Duncan Marjoribanks
-- Juan Mata Ruiz
-- Paul McPhail Stevenson
-- Sarah Murphy
-- Katy Preston
-- Richard Ramson
-- Iain Rogerson
-- Joe Stafford
-- Daniel Stewart
-- Luis Tejero
-- Colin Tindle
-- Rachel Westwater
-- Andrew Smith
-- Zsolt Podoba-Szalai
-- Davina Sanders
-- (23 rows)
--

-- 4. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Hamish Hoad';

-- name
-- -------------
-- Hamish Hoad
-- (1 row)


-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

-- DELETE 1
--  id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 19:55
--   2 | The Incredible Hulk                 | 2008 | 18:40
--   3 | Iron Man 2                          | 2010 | 21:55
--   4 | Thor                                | 2011 | 16:35
--   5 | Captain America: The First Avenger  | 2011 | 13:25
--   6 | Avengers Assemble                   | 2012 | 22:05
--   7 | Iron Man 3                          | 2013 | 23:10
--   8 | Thor: The Dark World                | 2013 | 12:25
--  10 | Captain America: The Winter Soldier | 2014 | 14:45
--  11 | Guardians of the Galaxy             | 2014 | 18:55
--  12 | Avengers: Age of Ultron             | 2015 | 20:40
--  13 | Ant-Man                             | 2015 | 13:50
--  14 | Captain America: Civil War          | 2016 | 21:30
--  15 | Doctor Strange                      | 2016 | 17:55
-- (14 rows)

-- 6. Create a new entry in the 'people' table with the name of one of the instructors.


INSERT INTO people (name) VALUES ('Sandy McMillan');
SELECT * FROM people;

-- INSERT 0 1
--  id |          name
-- ----+------------------------
--   1 | Euan Bell
--   2 | Pauline Cairns
--   3 | Yang Chen
--   4 | Ruairidh Grass
--   5 | Hannah Green
--   6 | Hamish Hoad
--   7 | Andrew Laughlin
--   8 | Jo Malo
--   9 | Duncan Marjoribanks
--  10 | Juan Mata Ruiz
--  11 | Paul McPhail Stevenson
--  12 | Sarah Murphy
--  13 | Katy Preston
--  14 | Richard Ramson
--  15 | Iain Rogerson
--  17 | Joe Stafford
--  18 | Daniel Stewart
--  19 | Luis Tejero
--  20 | Colin Tindle
--  21 | Rachel Westwater
--  22 | Andrew Smith
--  23 | Zsolt Podoba-Szalai
--  16 | Davina Sanders
--  24 | Sandy McMillan
-- (24 rows)



-- 7. Zsolt, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Zsolt Podoba-Szalai';
SELECT * FROM people;

-- DELETE 1
--  id |          name
-- ----+------------------------
--   1 | Euan Bell
--   2 | Pauline Cairns
--   3 | Yang Chen
--   4 | Ruairidh Grass
--   5 | Hannah Green
--   6 | Hamish Hoad
--   7 | Andrew Laughlin
--   8 | Jo Malo
--   9 | Duncan Marjoribanks
--  10 | Juan Mata Ruiz
--  11 | Paul McPhail Stevenson
--  12 | Sarah Murphy
--  13 | Katy Preston
--  14 | Richard Ramson
--  15 | Iain Rogerson
--  17 | Joe Stafford
--  18 | Daniel Stewart
--  19 | Luis Tejero
--  20 | Colin Tindle
--  21 | Rachel Westwater
--  22 | Andrew Smith
--  16 | Davina Sanders
--  24 | Sandy McMillan
-- (23 rows)

-- 8. Somehow the list of people includes two people named 'Andrew'. Change these entries to the proper names ('Jeff 4', 'Jeff 5')




-- 9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.




-- 10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30
