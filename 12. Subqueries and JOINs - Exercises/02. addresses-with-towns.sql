SELECT 
    `employees`.`first_name`,
    `employees`.`last_name`,
    `towns`.`name`,
    `addresses`.`address_text`
FROM `employees`

JOIN `addresses`
ON `employees`.`address_id` = `addresses`.`address_id`
JOIN `towns`
ON `addresses`.`town_id` = `towns`.`town_id`
ORDER BY `employees`.`first_name` ASC, `employees`.`last_name` ASC
LIMIT 5;