DELIMITER &&

CREATE FUNCTION `ufn_calculate_future_value` (`sum` DECIMAL (19,4), `rate` DOUBLE, `year` INT)
RETURNS DECIMAL (19,4)
DETERMINISTIC
BEGIN
	RETURN `sum` * POW(1 + `rate`, `year`);
END &&

CREATE PROCEDURE `usp_calculate_future_value_for_account`(`id_account` INT, `interest_rate` DECIMAL(19,4))
BEGIN
	SELECT a.`id`, ah.`first_name` ,ah.`last_name` , a.`balance`,
    `ufn_calculate_future_value` (a.`balance`, `interest_rate`, 5 )  AS 'ballance_in_5_years'
	FROM `account_holders` AS ah
	JOIN `accounts` AS a
	ON a.`account_holder_id`  = ah.`id`
    WHERE `id_account` = a.`id`;
END &&