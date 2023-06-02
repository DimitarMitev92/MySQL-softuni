INSERT INTO products_stores (product_id, store_id)
SELECT products.id, 1 FROM products
LEFT JOIN products_stores
ON products.id = products_stores.product_id
WHERE products_stores.product_id IS NULL;