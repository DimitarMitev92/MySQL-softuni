SELECT
    COUNT(colonists.id) AS count
FROM
    colonists
    JOIN travel_cards ON colonists.id = travel_cards.colonist_id
    JOIN journeys ON travel_cards.journey_id = journeys.id
WHERE
    journeys.purpose = 'Technical';