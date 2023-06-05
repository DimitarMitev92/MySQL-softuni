SELECT branches.name, COUNT(cards.id) AS count_of_cards FROM branches
LEFT JOIN employees
ON branches.id = employees.branch_id
LEFT JOIN employees_clients
ON employees.id = employees_clients.employee_id
LEFT JOIN clients
ON clients.id = employees_clients.client_id
LEFT JOIN bank_accounts
ON clients.id = bank_accounts.client_id
LEFT JOIN cards
ON cards.bank_account_id = bank_accounts.id
GROUP BY branches.name
ORDER BY count_of_cards DESC , branches.name;