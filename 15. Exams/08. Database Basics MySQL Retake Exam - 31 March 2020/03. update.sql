UPDATE addresses
SET addresses.country = (CASE
		WHEN addresses.country LIKE 'B%' THEN 'Blocked'
        WHEN addresses.country LIKE 'T%' THEN 'Test'
        WHEN addresses.country LIKE 'P%' THEN 'In Progress'
        ELSE addresses.country
    END);




