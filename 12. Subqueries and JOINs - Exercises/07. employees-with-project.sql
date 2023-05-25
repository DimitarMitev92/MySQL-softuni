SELECT
	`employees`.`employee_id`,
    `employees`.`first_name`,
    `projects`.`name` AS `project_name`
FROM `employees`
JOIN `employees_projects`
ON `employees`.`employee_id` = `employees_projects`.`employee_id`
JOIN `projects`
ON `employees_projects`.`project_id` = `projects`.`project_id`
WHERE DATE(`projects`.`start_date`) > '2002-08-13' AND `projects`.`end_date` IS NULL
ORDER BY `employees`.`first_name` ASC , `projects`.`name` ASC LIMIT 5 ;