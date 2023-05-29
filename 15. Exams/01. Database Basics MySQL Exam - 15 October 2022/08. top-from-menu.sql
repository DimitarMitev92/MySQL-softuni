SELECT products.id, products.name, COUNT(name) AS count  FROM products
JOIN orders_products
ON products.id = orders_products.product_id
JOIN orders
ON orders_products.order_id = orders.id
GROUP BY products.name
HAVING count >= 5
ORDER BY count DESC, products.name ASC;