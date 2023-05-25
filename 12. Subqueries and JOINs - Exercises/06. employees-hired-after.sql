SELECT 
	`employees`.`first_name`,
    `employees`.`last_name`,
    `employees`.`hire_date`,
    `departments`.`name`
FROM `employees`
JOIN `departments`
ON `employees`.`department_id` = `departments`.`department_id`
WHERE hire_date > '1999-01-01' AND `departments`.`name` IN('Sales','Finance')
ORDER BY `employees`.`hire_date` ASC;