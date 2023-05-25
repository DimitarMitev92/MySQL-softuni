SELECT 
    `employees`.`employee_id`,
    `employees`.`first_name`,
    CASE
        WHEN DATE(`projects`.`start_date`) >= '2005-01-01' THEN NULL
        ELSE `projects`.`name`
    END AS `project_name`
FROM
    `projects`
        JOIN
    `employees_projects` ON `employees_projects`.`project_id` = `projects`.`project_id`
        JOIN
    `employees` ON `employees_projects`.`employee_id` = `employees`.`employee_id`
WHERE
    `employees_projects`.`employee_id` = 24
ORDER BY `project_name` ASC;
    