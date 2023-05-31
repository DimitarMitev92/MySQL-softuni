SELECT 
    COUNT(categories.name) AS items_count,
    categories.name,
    SUM(products.quantity_in_stock) AS total_quantity
FROM
    categories
        JOIN
    products ON categories.id = products.category_id
GROUP BY categories.name
ORDER BY items_count DESC, total_quantity ASC
LIMIT 5;