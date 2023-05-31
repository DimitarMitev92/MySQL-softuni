DELIMITER $$
CREATE FUNCTION udf_customer_products_count (name_of_customer VARCHAR(30))
RETURNS INT
 DETERMINISTIC
 BEGIN
	DECLARE total_products INT;
    SET total_products := (
		SELECT COUNT(*) AS total_products FROM customers
		JOIN orders
		ON orders.customer_id = customers.id
		JOIN orders_products
		ON orders_products.order_id = orders.id
		WHERE customers.first_name = name_of_customer
		GROUP BY customers.first_name);
	RETURN total_products;
 END$$