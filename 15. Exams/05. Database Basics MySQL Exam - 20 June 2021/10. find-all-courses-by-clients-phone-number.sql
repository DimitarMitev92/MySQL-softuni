DELIMITER $$

CREATE FUNCTION udf_courses_by_client  (phone_num VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE count INT;
		SELECT COUNT(*) INTO count FROM clients
		JOIN courses
		ON clients.id = courses.client_id
		WHERE clients.phone_number = phone_num;
	RETURN count;
END$$