UPDATE products 
SET products.quantity_in_stock = products.quantity_in_stock - 5
WHERE products.quantity_in_stock BETWEEN 60 AND 70;