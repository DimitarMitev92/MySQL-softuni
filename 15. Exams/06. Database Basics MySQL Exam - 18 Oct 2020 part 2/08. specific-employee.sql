SELECT 
	CONCAT(employees.first_name, ' ', employees.last_name) AS Full_name, 
    stores.name,
    addresses.name,
    employees.salary
FROM employees
JOIN stores
ON stores.id = employees.store_id
JOIN addresses
ON stores.address_id = addresses.id
WHERE employees.salary < 4000 AND
	addresses.name LIKE '%5%' AND
    CHAR_LENGTH(stores.name) > 8 AND
    employees.last_name LIKE '%n';