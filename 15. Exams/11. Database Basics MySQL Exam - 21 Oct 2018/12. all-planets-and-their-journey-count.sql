SELECT
    pl.planet_name,
    COUNT(pl.planet_name) AS journeys_count
FROM
    (
        SELECT
            p.name AS  planet_name
        FROM
            planets AS  p
            JOIN spaceports sp on p.id = sp.planet_id
            JOIN journeys j on sp.id = j.destination_spaceport_id
    ) AS pl
GROUP BY
    planet_name
ORDER BY
    journeys_count DESC,
    planet_name ASC;