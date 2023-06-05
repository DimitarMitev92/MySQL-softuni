DELIMITER $$      
CREATE PROCEDURE udp_find_playmaker (min_dribble_points INT, team_name VARCHAR(45))
BEGIN
SELECT 
    CONCAT(players.first_name , ' ', players.last_name) AS full_name,
    players.age,
    players.salary,
    skills_data.dribbling,
    skills_data.speed,
    teams.name
FROM
    players
        JOIN
    skills_data ON players.skills_data_id = skills_data.id
        JOIN
    teams ON teams.id = players.team_id
WHERE
    skills_data.dribbling > min_dribble_points
        AND teams.name = team_name
        AND skills_data.speed > (SELECT 
            AVG(skills_data.speed)
        FROM
            skills_data)
ORDER BY skills_data.speed DESC LIMIT 1;
END$$


