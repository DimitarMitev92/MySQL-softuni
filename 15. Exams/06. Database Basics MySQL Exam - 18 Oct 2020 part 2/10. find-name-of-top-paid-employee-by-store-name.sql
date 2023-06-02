DELIMITER $$
CREATE FUNCTION udf_top_paid_employee_by_store (store_name varchar(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE full_info VARCHAR(50);
    SET full_info = (SELECT 
	CONCAT(employees.first_name , ' ', 
			employees.middle_name, '. ', 
            employees.last_name, 
            ' works in store for ', YEAR('2020-10-18') - YEAR(employees.hire_date), ' years') AS full_info
FROM employees
JOIN stores
ON stores.id = employees.store_id
WHERE stores.name = store_name
ORDER BY hire_date DESC LIMIT 1);
RETURN full_info;
END$$