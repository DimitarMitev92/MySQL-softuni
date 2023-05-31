INSERT INTO games (games.name, games.rating, games.budget, games.team_id)
SELECT 
	LOWER(REVERSE(SUBSTRING(teams.name,2))), 
    teams.id, 
    teams.leader_id * 1000,
    teams.id
    FROM teams
    WHERE teams.id BETWEEN 1 AND 9;

