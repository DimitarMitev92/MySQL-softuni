DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above_35000()
BEGIN
	SELECT employees.first_name , employees.last_name FROM employees 
    WHERE employees.salary > 35000
    ORDER BY employees.first_name ASC, employees.last_name ASC;
END $$

CALL usp_get_employees_salary_above_35000();