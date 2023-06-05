SELECT 
    teams.name,
    teams.established,
    teams.fan_base,
    COUNT(players.id) AS count_of_players
FROM
    teams
        LEFT JOIN
    players ON teams.id = players.team_id
GROUP BY teams.id
ORDER BY count_of_players DESC, fan_base DESC;