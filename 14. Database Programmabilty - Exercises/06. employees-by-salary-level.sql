DELIMITER //

CREATE PROCEDURE usp_get_employees_by_salary_level (level_salary VARCHAR(20))
BEGIN
    SELECT employees.first_name, employees.last_name
    FROM employees
    WHERE ufn_get_salary_level(employees.salary) = level_salary
    ORDER BY employees.first_name DESC, employees.last_name DESC;

END //

CALL usp_get_employees_by_salary_level('High'); 