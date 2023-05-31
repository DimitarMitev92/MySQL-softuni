SELECT 
	products.id, 
    products.brand_id,
    products.name,
    products.quantity_in_stock
FROM products
WHERE products.price > 1000 AND products.quantity_in_stock < 30
ORDER BY products.quantity_in_stock ASC ,id ASC;