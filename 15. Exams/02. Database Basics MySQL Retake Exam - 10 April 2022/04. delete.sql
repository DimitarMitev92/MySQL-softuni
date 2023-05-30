DELETE FROM countries
WHERE countries.id NOT IN (
SELECT DISTINCT country_id FROM movies);
