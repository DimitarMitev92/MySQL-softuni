SELECT 
    COUNT(*) AS `country_count`
FROM
    `mountains_countries`
RIGHT JOIN `countries`
ON `mountains_countries`.`country_code` = `countries`.`country_code`
WHERE `mountains_countries`.`country_code` IS NULL;