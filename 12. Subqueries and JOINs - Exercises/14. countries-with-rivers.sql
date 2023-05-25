SELECT 
	`countries`.`country_name`,
    `rivers`.`river_name`
FROM `countries`
LEFT JOIN `countries_rivers`
ON `countries_rivers`.`country_code` = `countries`.`country_code`
LEFT JOIN `rivers`
ON `countries_rivers`.`river_id` = `rivers`.`id`
WHERE `countries`.`continent_code` LIKE 'AF' 
ORDER BY `countries`.`country_name` ASC
LIMIT 5;