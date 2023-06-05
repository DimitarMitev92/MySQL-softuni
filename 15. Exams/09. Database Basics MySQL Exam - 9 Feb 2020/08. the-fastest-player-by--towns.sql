SELECT 
    MAX(skills_data.speed) AS max_speed, towns.name
FROM
    players
      LEFT  JOIN
    skills_data ON skills_data.id = players.skills_data_id
      RIGHT JOIN
    teams ON teams.id = players.team_id
       RIGHT JOIN
    stadiums ON stadiums.id = teams.stadium_id
       RIGHT JOIN
    towns ON stadiums.town_id = towns.id
    WHERE teams.name != 'Devify'
GROUP BY towns.name
ORDER BY max_speed DESC, towns.name ASC;