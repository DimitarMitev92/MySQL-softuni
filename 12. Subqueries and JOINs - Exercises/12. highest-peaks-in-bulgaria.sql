SELECT 
    `mountains_countries`.`country_code`,
    `mountains`.`mountain_range`,
    `peaks`.`peak_name`,
    `peaks`.`elevation`
FROM `peaks`
JOIN `mountains`
ON `peaks`.`mountain_id` = `mountains`.`id`
JOIN `mountains_countries`
ON `mountains`.`id` = `mountains_countries`.`mountain_id`
WHERE `country_code` = 'BG' AND `elevation` > 2835
ORDER BY `peaks`.`elevation` DESC;