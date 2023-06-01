CREATE FUNCTION udf_game_info_by_name  (game_name VARCHAR(20))

RETURNS TEXT
DETERMINISTIC
BEGIN
	DECLARE info TEXT;
    SET info := (
		SELECT CONCAT('The ', games.name, ' is developed by a ', teams.name , ' in an office with an address ', addresses.name)  FROM games
		JOIN teams
		ON games.team_id = teams.id
		JOIN offices
		ON teams.office_id = offices.id
		JOIN addresses
		ON offices.address_id = addresses.id
		WHERE games.name = game_name);
        RETURN info;
END