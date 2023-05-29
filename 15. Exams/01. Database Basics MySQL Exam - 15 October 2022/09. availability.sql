SELECT 
	tables.id, 
    tables.capacity, 
    COUNT(orders.table_id = tables.id) AS count_clients,
    CASE
		WHEN tables.capacity = COUNT(orders.table_id = tables.id) THEN 'Full'
        WHEN tables.capacity > COUNT(orders.table_id = tables.id) THEN 'Free seats'
        ELSE 'Extra seats'
    END AS availability
FROM tables
JOIN orders
	ON tables.id = orders.table_id
JOIN orders_clients
	ON orders_clients.order_id = orders.id
JOIN clients
	ON orders_clients.client_id = clients.id
    WHERE tables.floor = 1
GROUP BY orders.table_id
ORDER BY orders.table_id DESC;