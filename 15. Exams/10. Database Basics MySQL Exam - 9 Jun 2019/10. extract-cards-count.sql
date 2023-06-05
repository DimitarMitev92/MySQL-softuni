DELIMITER $$

CREATE FUNCTION udf_client_cards_count(name_of_client VARCHAR(30)) 
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(cards.id) AS cards FROM clients
LEFT JOIN bank_accounts
ON clients.id = bank_accounts.client_id
LEFT JOIN cards
ON cards.bank_account_id = bank_accounts.id
GROUP BY clients.full_name
HAVING clients.full_name LIKE name_of_client);
END$$