SELECT 
    `employee_id`,
    `first_name`,
    `last_name`,
    `department_id`,
    `salary`
FROM
    `employees`
WHERE
    `employees`.`manager_id` IS NULL;