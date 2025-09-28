USE Assignment1;

-- joining 5 tables
SELECT c.name AS 'character', p.name AS planet, f.title AS film, s.name AS starship
FROM Appearances a
JOIN Characters c ON a.character_id = c.character_id
JOIN Planets p ON c.planet_id = p.planet_id
JOIN Films f ON a.film_id = f.film_id
LEFT JOIN Starships s ON a.starship_id = s.starship_id;

-- CTE shows in which films human characters were present
WITH HumanCharacters AS (
    SELECT character_id, name
    FROM Characters
    WHERE species = 'Human'
)
SELECT hc.name, f.title
FROM HumanCharacters hc
JOIN Appearances a ON hc.character_id = a.character_id
JOIN Films f ON a.film_id = f.film_id;

-- subquery (reveals characters associated with a specific planet)
SELECT name
FROM Characters
WHERE planet_id = (SELECT planet_id FROM Planets WHERE name='Tatooine');

-- WHERE clause looks for models corresponding to a manufacturer
SELECT name, model
FROM Starships
WHERE manufacturer='Incom Corporation';

-- GROUP BY & HAVING shows in which films 2+ characters appeared
SELECT f.title, COUNT(a.character_id) AS num_characters
FROM Films f
JOIN Appearances a ON f.film_id = a.film_id
GROUP BY f.title
HAVING COUNT(a.character_id) > 2;

-- ORDER BY species in ascending order -> names in descending
SELECT name, species
FROM Characters
ORDER BY species ASC, name DESC;

-- the first 3 films that came out
SELECT title, release_year
FROM Films
ORDER BY release_year ASC
LIMIT 3;
