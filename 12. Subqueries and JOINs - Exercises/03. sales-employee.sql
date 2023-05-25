SELECT 
	`employees`.`employee_id`, 
	`employees`.`first_name`, 
	`employees`.`last_name`,
    `departments`.`name`
FROM `employees`

JOIN `departments`
ON `employees`.`department_id` = `departments`.`department_id`
WHERE `departments`.`name` LIKE "Sales"
ORDER BY `employees`.`employee_id` DESC;