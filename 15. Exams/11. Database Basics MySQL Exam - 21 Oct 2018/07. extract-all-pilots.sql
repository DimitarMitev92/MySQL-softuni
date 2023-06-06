SELECT 
    colonists.id,
    CONCAT_WS(' ', colonists.first_name, colonists.last_name) AS full_name
FROM colonists
JOIN travel_cards
ON colonists.id = travel_cards.colonist_id
WHERE travel_cards.job_during_journey = 'Pilot'
ORDER BY id;