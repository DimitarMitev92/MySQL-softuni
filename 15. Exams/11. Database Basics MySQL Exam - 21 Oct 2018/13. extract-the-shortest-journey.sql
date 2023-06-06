SELECT
    journeys.id,
    planets.name AS planet_name,
    spaceports.name AS spaceport_name,
    journeys.purpose AS journey_purpose
FROM
    journeys
    JOIN spaceports 
    ON journeys.destination_spaceport_id = spaceports.id
    JOIN planets 
    ON spaceports.planet_id = planets.id
ORDER BY
    DATEDIFF(journeys.journey_end, journeys.journey_start)
LIMIT 1;