CREATE FUNCTION udf_stadium_players_count (stadium_name VARCHAR(30)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN(SELECT COUNT(players.id) FROM players
RIGHT JOIN teams
ON players.team_id = teams.id
RIGHT JOIN stadiums
ON stadiums.id = teams.stadium_id
GROUP BY stadiums.name
HAVING stadiums.name = stadium_name);
END