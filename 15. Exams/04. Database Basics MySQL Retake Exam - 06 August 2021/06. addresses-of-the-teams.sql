SELECT 
    teams.name AS team_name,
    addresses.name AS address_name,
    CHAR_LENGTH(addresses.name) AS count_of_characters
FROM
    teams
        JOIN
    offices ON teams.office_id = offices.id
        JOIN
    addresses ON addresses.id = offices.address_id
WHERE offices.website IS NOT NULL
ORDER BY  team_name , address_name;