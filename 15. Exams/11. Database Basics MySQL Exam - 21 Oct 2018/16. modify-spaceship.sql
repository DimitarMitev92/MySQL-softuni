DELIMITER //
CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(spaceship_name VARCHAR(50), light_speed_rate_increase INT(11))
  BEGIN
    if (SELECT count(spaceships.name) FROM spaceships WHERE spaceships.name = spaceship_name > 0) THEN
      UPDATE spaceships
        SET spaceships.light_speed_rate = spaceships.light_speed_rate + light_speed_rate_increase
        WHERE name = spaceship_name;
    ELSE
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';
      ROLLBACK;
    END IF;
  END //
  
DELIMITER ;