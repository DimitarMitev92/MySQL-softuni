DELIMITER &&

CREATE PROCEDURE `usp_deposit_money` (`account_id` INT , `money_amount` DECIMAL (19,4))
BEGIN

	START TRANSACTION;
		IF(`money_amount` <= 0 OR (
			SELECT COUNT(*) FROM `accounts` AS `a` WHERE `account_id` = `a`.`id`) = 0 ) 
            THEN ROLLBACK;
		ELSE
			UPDATE `accounts`
			SET `balance` = `balance` + `money_amount`
			WHERE `id` = `account_id`;
        END IF;

END &&