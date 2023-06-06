SELECT
    spaceships.name AS spaceship_name,
    spaceports.name AS spaceport_name
FROM spaceships
JOIN journeys 
ON spaceships.id = journeys.spaceship_id
JOIN spaceports 
ON journeys.destination_spaceport_id = spaceports.id
ORDER BY spaceships.light_speed_rate DESC 
LIMIT 1;