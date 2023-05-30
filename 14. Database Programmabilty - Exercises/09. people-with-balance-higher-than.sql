DELIMITER &&

CREATE PROCEDURE `usp_get_holders_with_balance_higher_than` (`sum` DECIMAL(19,4))
BEGIN

	SELECT `ah`.`first_name`, `ah`.`last_name`
    FROM `account_holders` AS `ah`
    JOIN `accounts` AS `a`
    ON `a`.`account_holder_id` = `ah`.`id`
    WHERE `sum` < (
		SELECT SUM(`a2`.`balance`)
        FROM `accounts` AS `a2`
        WHERE `a2`.`account_holder_id` = `a`.`account_holder_id`
        GROUP BY `account_holder_id`
        )
	GROUP BY `account_holder_id`
	ORDER BY `a`.`account_holder_id`;
END &&

