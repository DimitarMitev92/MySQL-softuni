SELECT 
    COUNT(*) AS `count`
FROM
    `employees` AS `em2`
WHERE
    `em2`.`salary` >= (SELECT 
            SUM(`em1`.`salary`) / COUNT(*)
        FROM
            `employees` AS `em1`);