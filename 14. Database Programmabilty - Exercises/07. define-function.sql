DELIMITER &&

CREATE FUNCTION `ufn_is_word_comprised` (`set_of_letters` VARCHAR(50), `word` VARCHAR(50))
RETURNS BIT
DETERMINISTIC
BEGIN
	DECLARE `regex` VARCHAR(200);
    DECLARE `result` BIT;
    SET `regex` = CONCAT('^[',`set_of_letters`,']+$');
    CASE
		WHEN `word` REGEXP `regex` THEN SET `result` = 1;
        ELSE SET `result` = 0;
	END CASE;
    RETURN `result`;
END &&