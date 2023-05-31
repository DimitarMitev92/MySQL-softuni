DELIMITER $$
CREATE PROCEDURE udp_reduce_price (category_name VARCHAR(50))
BEGIN
	UPDATE products
    JOIN categories
    ON categories.id = products.category_id
    JOIN reviews
    ON reviews.id = products.review_id
    SET products.price = 0.7 * products.price
    WHERE categories.name = category_name AND reviews.rating < 4;
END$$

