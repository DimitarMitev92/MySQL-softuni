SELECT 
    `employees`.`employee_id`, `employees`.`first_name`
FROM
    `employees`
WHERE
    `employee_id` NOT IN (SELECT 
            `employees_projects`.`employee_id`
        FROM
            `employees_projects`)
ORDER BY `employees`.`employee_id` DESC
LIMIT 3;