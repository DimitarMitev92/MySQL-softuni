DELETE FROM customers
WHERE customers.id 
NOT IN (SELECT DISTINCT customer_id FROM orders); 