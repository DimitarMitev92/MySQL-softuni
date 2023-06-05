CREATE PROCEDURE udp_clientinfo (full_name_of_client VARCHAR(100))
BEGIN
SELECT full_name, age, account_number, CONCAT('$',balance) AS balance  FROM clients
JOIN bank_accounts
ON bank_accounts.client_id = clients.id
WHERE clients.full_name LIKE full_name_of_client;
END