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

INSERT INTO attendances (person_id, movie_id) VALUES (2, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (23, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 4);