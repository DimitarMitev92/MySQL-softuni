DELIMITER //
CREATE FUNCTION udf_count_colonists_by_destination_planet(planet_name VARCHAR(30))
  RETURNS INT
  BEGIN
    DECLARE c_count INT;
    SET c_count := (
      SELECT count(colonists.id)
      FROM colonists
      JOIN travel_cards ON colonists.id = travel_cards.colonist_id
      JOIN journeys ON travel_cards.journey_id = journeys.id
      JOIN spaceports ON journeys.destination_spaceport_id = spaceports.id
      JOIN planets ON spaceports.planet_id = planets.id
      WHERE planets.name = planet_name
    );
    RETURN c_count;
  END //
DELIMITER ;