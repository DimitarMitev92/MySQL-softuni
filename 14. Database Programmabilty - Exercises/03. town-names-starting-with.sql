DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with (start_with VARCHAR(50))
BEGIN
	SELECT towns.name AS town_name FROM towns
    WHERE towns.name LIKE CONCAT(start_with, '%')
    ORDER BY town_name ASC;
END $$

CALL usp_get_towns_starting_with ('b');