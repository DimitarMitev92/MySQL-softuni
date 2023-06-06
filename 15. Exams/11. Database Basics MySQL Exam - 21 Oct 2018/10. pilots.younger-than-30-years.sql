SELECT spaceships.name,
    spaceships.manufacturer
FROM colonists
JOIN travel_cards
ON travel_cards.colonist_id = colonists.id
JOIN journeys
ON travel_cards.journey_id = journeys.id
JOIN spaceships
ON journeys.spaceship_id = spaceships.id
WHERE YEAR(colonists.birth_date) > YEAR(DATE_SUB('2019-01-01', INTERVAL 30 YEAR)) AND travel_cards.job_during_journey = 'Pilot'
ORDER BY spaceships.name;