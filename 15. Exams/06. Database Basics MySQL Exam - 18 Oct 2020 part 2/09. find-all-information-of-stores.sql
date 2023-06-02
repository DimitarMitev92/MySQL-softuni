SELECT 
    REVERSE(stores.name) AS reversed_name,
    CONCAT(UPPER(towns.name), '-', addresses.name) AS full_address,
    COUNT(employees.id) AS employees_count
FROM
    stores
        JOIN
    addresses ON addresses.id = stores.address_id
        JOIN
    towns ON addresses.town_id = towns.id
		JOIN 
	employees ON employees.store_id = stores.id
    GROUP BY stores.name
    HAVING employees_count >= 1
    ORDER BY full_address ASC;