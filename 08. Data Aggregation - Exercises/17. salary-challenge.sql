SELECT 
    first_name, last_name, department_id
FROM
    employees AS e2
WHERE
    e2.salary > (SELECT 
            AVG(salary) AS avg_salary
        FROM
            employees AS e1
            WHERE e2.department_id = e1.department_id
        GROUP BY department_id)
ORDER BY department_id , employee_id
LIMIT 10;