DELIMITER $$

CREATE PROCEDURE usp_get_employees_salary_above(num DECIMAL(20,4))
BEGIN
	SELECT employees.first_name, employees.last_name FROM employees
    WHERE employees.salary >= num
    ORDER BY employees.first_name ASC, employees.last_name ASC, employees.employee_id ASC;
END $$

CALL usp_get_employees_salary_above(45000);