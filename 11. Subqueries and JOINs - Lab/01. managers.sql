SELECT 
`employee_id`,
CONCAT(`employees`.`first_name`, ' ', `employees`.`last_name`) AS `full_name`,
`departments`.`department_id`,
`departments`.`name` AS `department_name`
    
FROM
    `departments`
JOIN `employees`
ON `departments`.`manager_id` = `employees`.`employee_id`
ORDER BY `departments`.`manager_id`
LIMIT 5;