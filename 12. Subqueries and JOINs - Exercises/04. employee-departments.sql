SELECT
	`employees`.`employee_id`,
    `employees`.`first_name`,
    `employees`.`salary`,
    `departments`.`name` AS `department_name`
FROM `employees`
JOIN `departments`
ON `employees`.`department_id` = `departments`.`department_id`
WHERE `employees`.`salary` > 15000
ORDER BY `departments`.`department_id` DESC
LIMIT 5;