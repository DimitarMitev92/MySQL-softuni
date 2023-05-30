SELECT name, COUNT(*) AS movies_count FROM movies
JOIN countries
ON movies.country_id = countries.id
GROUP BY country_id
HAVING movies_count >= 7
ORDER BY name DESC;