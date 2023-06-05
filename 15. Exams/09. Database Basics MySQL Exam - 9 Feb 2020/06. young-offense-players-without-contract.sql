SELECT 
    players.id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    age,
    position,
    hire_date
FROM
    players
JOIN skills_data
ON players.skills_data_id = skills_data.id
WHERE
    age < 23 AND position = 'A' AND hire_date IS NULL AND strength > 50
ORDER BY salary ASC, age ASC;