 DELIMITER $$
 CREATE PROCEDURE udp_happy_hour (type_happy_hour VARCHAR(50))
 BEGIN
	UPDATE products
	SET products.price = 0.8 * price
    WHERE products.type = type_happy_hour AND products.price >= 10;
END $$