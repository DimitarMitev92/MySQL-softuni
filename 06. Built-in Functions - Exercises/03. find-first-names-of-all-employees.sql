SELECT 
    first_name
FROM
    employees
WHERE
    (department_id = 3 OR department_id = 10) AND
(hire_date BETWEEN '1995-01-01' AND '2005-12-31')
ORDER BY employee_id;