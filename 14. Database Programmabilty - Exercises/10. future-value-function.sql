DELIMITER &&

CREATE FUNCTION `ufn_calculate_future_value` (`sum` DECIMAL (19,4), `rate` DOUBLE, `year` INT)
RETURNS DECIMAL(19,4)
DETERMINISTIC
BEGIN
	RETURN `sum` * POW(1 + `rate`, `year`);

END &&