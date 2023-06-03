SELECT 
    CONCAT(SUBSTRING(photos.description, 1, 30),
            '...') AS summary,
    photos.`date`
FROM
    photos
WHERE
    DAY(photos.date) LIKE 10
ORDER BY photos.date DESC;