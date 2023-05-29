DELIMITER $$

CREATE FUNCTION ufn_get_salary_level (salary_of_employee INT)
RETURNS varchar(20)
DETERMINISTIC
BEGIN
	DECLARE salary_level VARCHAR(20);
		IF salary_of_employee < 30000 THEN
			SET salary_level = 'Low';
        ELSEIF salary_of_employee BETWEEN 30000 AND 50000 THEN 
			SET salary_level = 'Average';
        ELSE SET salary_level = 'High';
        END IF;
        RETURN  salary_level;
END $$

SELECT ufn_get_salary_level(30000);