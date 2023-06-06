SELECT planets.name AS planet_name,
spaceports.name AS spaceport_name
FROM planets
JOIN spaceports
ON planets.id = spaceports.planet_id
JOIN journeys 
ON spaceports.id = journeys.destination_spaceport_id
WHERE journeys.purpose = 'Educational'
ORDER BY spaceport_name DESC;