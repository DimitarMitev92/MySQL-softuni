DELIMITER $$
CREATE FUNCTION udf_client_bill (full_name VARCHAR(50))
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
		DECLARE bill DECIMAL (19,2);
     SET bill = (SELECT SUM(products.price)  FROM clients
	JOIN orders_clients
	ON orders_clients.client_id = clients.id
	JOIN orders
	ON orders_clients.order_id = orders.id
	JOIN orders_products
	ON orders_products.order_id = orders.id
	JOIN products
	ON products.id = orders_products.product_id
	WHERE CONCAT(clients.first_name, ' ', clients.last_name) = full_name);
    RETURN bill;
END $$