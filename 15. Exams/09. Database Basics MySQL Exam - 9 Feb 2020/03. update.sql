UPDATE coaches
JOIN players_coaches
ON coaches.id = players_coaches.coach_id
JOIN players
ON players.id = players_coaches.player_id
set coaches.coach_level = coaches.coach_level + 1
WHERE coaches.first_name LIKE 'A%';