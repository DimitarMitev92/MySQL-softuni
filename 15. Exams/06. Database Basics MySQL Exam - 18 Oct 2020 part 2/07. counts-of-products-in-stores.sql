SELECT stores.name, COUNT(products.id) AS product_count, ROUND(AVG(products.price),2) AS avg FROM stores
LEFT JOIN products_stores
ON stores.id = products_stores.store_id
LEFT JOIN products
ON products.id = products_stores.product_id
GROUP BY stores.id
ORDER BY product_count DESC, avg DESC , stores.id;