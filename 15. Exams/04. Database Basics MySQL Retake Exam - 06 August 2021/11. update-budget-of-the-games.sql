DELIMITER $$
CREATE PROCEDURE udp_update_budget (min_game_rating INT)
BEGIN
	UPDATE games
    	LEFT JOIN games_categories
	ON games.id = games_categories.game_id
    SET 
		games.budget = budget + 100000 , 
		games.release_date = DATE_ADD(games.release_date, INTERVAL 1 YEAR)
	WHERE games_categories.category_id IS NULL
	AND games.rating > min_game_rating
	AND release_date IS NOT NULL;
END$$