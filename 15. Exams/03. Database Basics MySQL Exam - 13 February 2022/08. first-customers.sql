SELECT 
	CONCAT(customers.first_name, ' ', customers.last_name) AS full_name, 
	customers.address, 
    orders.order_datetime 
FROM customers
JOIN orders
ON orders.customer_id = customers.id
WHERE YEAR(orders.order_datetime) <= 2018 
ORDER BY full_name DESC;

