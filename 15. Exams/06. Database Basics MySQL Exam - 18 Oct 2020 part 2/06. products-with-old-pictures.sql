SELECT 
    products.name,
    products.price,
    products.best_before,
    CONCAT(LEFT(products.description, 10), '...') AS short_description,
    pictures.url
FROM
    products
        JOIN
    pictures ON pictures.id = products.picture_id
WHERE
    CHAR_LENGTH(products.description) > 100
        AND YEAR(pictures.added_on) < 2019
        AND products.price > 20
ORDER BY products.price DESC;