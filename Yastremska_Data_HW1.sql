USE Assignment1;

-- Planets
INSERT INTO Planets (name, climate) VALUES
('Tatooine', 'arid'),
('Alderaan', 'temperate'),
('Hoth', 'frozen'),
('Endor', 'temperate'),
('Dagobah', 'swampy');

-- Characters
INSERT INTO Characters (name, species, planet_id) VALUES
('Luke Skywalker', 'Human', 1),
('Leia Organa', 'Human', 2),
('Darth Vader', 'Human', 1),
('Yoda', 'Yoda', 5),
('Han Solo', 'Human', 1),
('Chewbacca', 'Wookiee', 1);

-- Starships
INSERT INTO Starships (name, model, manufacturer) VALUES
('Millennium Falcon', 'YT-1300', 'Corellian Engineering'),
('X-wing', 'T-65', 'Incom Corporation'),
('TIE Fighter', 'Twin Ion Engine', 'Sienar Fleet Systems'),
('Star Destroyer', 'Imperial I-class', 'Kuat Drive Yards'),
('Slave I', 'Firespray-31', 'Kuat Systems');

-- Films
INSERT INTO Films (title, release_year, director) VALUES
('A New Hope', 1977, 'George Lucas'),
('The Empire Strikes Back', 1980, 'Irvin Kershner'),
('Return of the Jedi', 1983, 'Richard Marquand'),
('The Phantom Menace', 1999, 'George Lucas'),
('Attack of the Clones', 2002, 'George Lucas');

-- Appearances
INSERT INTO Appearances (character_id, film_id, starship_id) VALUES
(1, 1, 2),
(1, 2, 2),
(2, 1, NULL),
(2, 3, NULL),
(3, 1, 3),
(4, 2, NULL),
(5, 1, 1),
(6, 1, 1),
(3, 2, 4),
(5, 2, 1);
