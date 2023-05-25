SELECT 
    `e1`.`employee_id`,
    CONCAT(`e1`.`first_name`, ' ', `e1`.`last_name`) AS `employee_name`,
    (SELECT 
            CONCAT(`e2`.`first_name`, ' ', `e2`.`last_name`)
        FROM
            `employees` AS `e2`
        WHERE
            `e2`.`employee_id` = `e1`.`manager_id`) AS `manager_name`,
    `departments`.`name` AS `department_name`
FROM
    `employees` AS `e1`
        JOIN
    `departments` ON `e1`.`department_id` = `departments`.`department_id`
  HAVING `manager_name` IS NOT NULL
  ORDER BY `e1`.`employee_id` ASC
  LIMIT 5;