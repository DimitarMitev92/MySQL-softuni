UPDATE employees 
SET 
    salary = salary + 1000
WHERE
    age <= 40
        AND id IN (SELECT 
            leader_id
        FROM
            teams)
        AND salary < 5000;
        

