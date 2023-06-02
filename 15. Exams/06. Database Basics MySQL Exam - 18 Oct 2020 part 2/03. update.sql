UPDATE employees
JOIN stores 
ON employees.store_id = stores.id 
SET 
    employees.manager_id = 3,
    employees.salary = employees.salary - 500
WHERE
    YEAR(employees.hire_date) >= 2003
	AND stores.name NOT IN ('Cardguard' , 'Veribet');