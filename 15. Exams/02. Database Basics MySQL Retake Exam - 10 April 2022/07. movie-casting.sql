SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    CONCAT(REVERSE(last_name),
            CHAR_LENGTH(last_name),
            '@cast.com') AS email,
    (2022 - YEAR(birthdate)) AS age,
    height
FROM
    actors
        LEFT JOIN
    movies_actors ON movies_actors.actor_id = actors.id
WHERE
    actor_id IS NULL
ORDER BY height ASC;