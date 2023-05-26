SELECT 
    `c`.`continent_code`,
    `c`.`currency_code`,
    COUNT(`c`.`currency_code`) AS `count`
FROM
    `countries` AS `c`
GROUP BY `continent_code` , `currency_code`
HAVING `count` = (SELECT 
        COUNT(`c2`.`currency_code`) AS `c_count`
    FROM
        `countries` AS `c2`
    WHERE
        `c2`.`continent_code` = `c`.`continent_code`
    GROUP BY `currency_code`
    ORDER BY `c_count` DESC
    LIMIT 1)
    AND `count` > 1
ORDER BY `continent_code` , `currency_code`;