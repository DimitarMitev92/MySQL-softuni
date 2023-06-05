INSERT INTO coaches (coaches.first_name, coaches.last_name, coaches.salary, coaches.coach_level)
SELECT 
    players.first_name,
    players.last_name,
    2 * players.salary,
    CHAR_LENGTH(players.first_name)
FROM
    players
WHERE players.age >= 45;