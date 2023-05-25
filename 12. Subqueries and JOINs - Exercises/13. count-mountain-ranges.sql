SELECT 
    `mountains_countries`.`country_code`,
    COUNT(*) AS `mountain_range`
FROM
    `mountains`
JOIN
    `mountains_countries` 
ON `mountains`.`id` = `mountains_countries`.`mountain_id`
GROUP BY `mountains_countries`.`country_code`
HAVING `mountains_countries`.`country_code` LIKE 'BG'
 OR `mountains_countries`.`country_code` LIKE 'RU'
 OR `mountains_countries`.`country_code` LIKE 'US'
 ORDER BY  `mountain_range` DESC;
