SELECT 
    games.name,
    games.release_date,
    CONCAT(SUBSTRING(games.description , 1, 10), '...') AS summary,
    CASE
		WHEN MONTHNAME(games.release_date) IN ('January', 'February','March') THEN 'Q1'
        WHEN MONTHNAME(games.release_date) IN ('April', 'May','June') THEN 'Q2'
        WHEN MONTHNAME(games.release_date) IN ('July', 'August','September') THEN 'Q3'
        ELSE 'Q4'
    END AS quarter,
    (SELECT teams.name FROM teams WHERE teams.id = games.team_id) AS team_name
FROM
    games

WHERE
    MONTH(games.release_date) IN (2 , 4, 6, 8, 10, 12)
        AND YEAR(games.release_date) LIKE '2022'
        AND games.name LIKE '% 2'
ORDER BY quarter;