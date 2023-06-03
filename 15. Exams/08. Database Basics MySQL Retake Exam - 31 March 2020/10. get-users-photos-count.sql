DELIMITER %%
CREATE FUNCTION udf_users_photos_count(username VARCHAR(30))
RETURNS INTEGER
DETERMINISTIC
BEGIN

RETURN (
		SELECT COUNT(photo_id) FROM users_photos AS up
		WHERE user_id = (
			SELECT id FROM users AS u
			WHERE u.username = username
));
END%%