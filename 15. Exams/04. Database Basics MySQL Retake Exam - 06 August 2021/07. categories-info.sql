SELECT 
    categories.name,
    COUNT(*) AS game_count,
    ROUND(AVG(games.budget), 2) AS avg_budget,
    MAX(games.rating) AS max_rating
FROM
    categories
        JOIN
    games_categories ON games_categories.category_id = categories.id
        JOIN
    games ON games.id = games_categories.game_id
GROUP BY categories.name
HAVING max_rating >= 9.5
ORDER BY game_count DESC, categories.name ASC;