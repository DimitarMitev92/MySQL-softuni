INSERT INTO reviews (content, picture_url, published_at, rating)
SELECT 
	SUBSTRING(products.description, 1,15), 
	REVERSE(products.name), 
    '2010-10-10', 
    (products.price / 8)   
FROM products
WHERE products.id >= 5;