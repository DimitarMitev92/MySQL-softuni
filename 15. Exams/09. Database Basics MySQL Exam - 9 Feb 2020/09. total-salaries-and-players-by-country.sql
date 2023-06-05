SELECT 
    countries.name,
    COUNT(players.id) AS total_count_of_players,
    SUM(players.salary) AS total_sum_of_salaries
FROM
    players
        RIGHT JOIN
    teams ON players.team_id = teams.id
        RIGHT JOIN
    stadiums ON teams.stadium_id = stadiums.id
        RIGHT JOIN
    towns ON stadiums.town_id = towns.id
        RIGHT JOIN
    countries ON towns.country_id = countries.id
GROUP BY countries.name
ORDER BY total_count_of_players DESC, countries.name ASC;