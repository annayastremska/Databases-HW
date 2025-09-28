DROP DATABASE IF EXISTS Assignment1;
CREATE DATABASE Assignment1;
USE Assignment1;


-- 1. Planets
CREATE TABLE Planets (
    planet_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    climate VARCHAR(50)
);

-- 2. Characters
CREATE TABLE Characters (
    character_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50),
    planet_id INT,
    FOREIGN KEY (planet_id) REFERENCES Planets(planet_id)
);

-- 3. Starships
CREATE TABLE Starships (
    starship_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    model VARCHAR(50),
    manufacturer VARCHAR(50)
);

-- 4. Films
CREATE TABLE Films (
    film_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT,
    director VARCHAR(50)
);

-- 5. Appearances
CREATE TABLE Appearances (
    appearance_id INT AUTO_INCREMENT PRIMARY KEY,
    character_id INT,
    film_id INT,
    starship_id INT,
    FOREIGN KEY (character_id) REFERENCES Characters(character_id),
    FOREIGN KEY (film_id) REFERENCES Films(film_id),
    FOREIGN KEY (starship_id) REFERENCES Starships(starship_id)
);
