DELETE
FROM clients
WHERE 
	clients.id NOT IN (SELECT client_id FROM courses) AND
    CHAR_LENGTH(clients.full_name) > 3;