DELETE
FROM
    games
WHERE
    games.id NOT IN (SELECT 
            game_id
        FROM
            games_categories)
        AND games.release_date IS NULL;