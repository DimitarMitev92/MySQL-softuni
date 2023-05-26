SELECT 
    `countries`.`country_name`,
    MAX(`peaks`.`elevation`) AS `highest_peak_elevation`,
    MAX(`rivers`.`length`) AS `longest_river_length`
FROM
    `countries_rivers`
        JOIN
    `rivers` ON `countries_rivers`.`river_id` = `rivers`.`id`
        JOIN
    `countries` ON `countries`.`country_code` = `countries_rivers`.`country_code`
        JOIN
    `mountains_countries` ON `mountains_countries`.`country_code` = `countries`.`country_code`
        JOIN
    `mountains` ON `mountains`.`id` = `mountains_countries`.`mountain_id`
        JOIN
    `peaks` ON `peaks`.`mountain_id` = `mountains`.`id`
GROUP BY `country_name`
ORDER BY `highest_peak_elevation` DESC , `longest_river_length` DESC
LIMIT 5;