SELECT 
    games.name,
    CASE
        WHEN budget < 50000 THEN 'Normal budget'
        ELSE 'Insufficient budget'
    END AS budget_level,
    teams.name AS team_name,
    addresses.name AS address_name
FROM
    games
        LEFT JOIN
    games_categories ON games_categories.game_id = games.id
        LEFT JOIN
    categories ON categories.id = games_categories.category_id
        JOIN
    teams ON games.team_id = teams.id
        JOIN
    offices ON teams.office_id = offices.id
        JOIN
    addresses ON offices.address_id = addresses.id
WHERE
    release_date IS NULL
        AND category_id IS NULL
ORDER BY name;


