SELECT
	employees.first_name, 
    employees.middle_name,
    employees.last_name,
    employees.salary,
    employees.hire_date
FROM employees
ORDER BY employees.hire_date DESC;