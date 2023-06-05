SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS name, employees.started_on, COUNT(clients.id) AS count_of_clients FROM employees
JOIN employees_clients
ON employees.id = employees_clients.employee_id
JOIN clients
ON clients.id = employees_clients.client_id
GROUP BY employees.id
ORDER BY count_of_clients DESC, employees.id ASC LIMIT 5;