DELIMITER $$

CREATE PROCEDURE usp_get_employees_from_town (town_name VARCHAR(50))
BEGIN
	SELECT employees.first_name, employees.last_name FROM employees
    JOIN addresses
    ON employees.address_id = addresses.address_id
    JOIN towns
    ON addresses.town_id = towns.town_id
    WHERE towns.name LIKE town_name
    ORDER BY employees.first_name ASC, employees.last_name ASC, employees.employee_id ASC;
END $$

CALL usp_get_employees_from_town('Sofia'); 