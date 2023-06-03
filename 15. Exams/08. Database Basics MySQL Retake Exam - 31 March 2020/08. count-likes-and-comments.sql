SELECT 
	p.id,
    (SELECT
    COUNT(likes.id) 
FROM photos AS p1
LEFT JOIN likes
ON p1.id = likes.photo_id
WHERE p1.id = p.id
GROUP BY p1.id) AS likes_count,
	(SELECT 
    COUNT(comments.id) 
FROM photos AS p2
LEFT JOIN comments
ON p2.id = comments.photo_id
WHERE p2.id = p.id
GROUP BY p2.id) AS comments_count
FROM photos AS p
ORDER BY likes_count DESC, comments_count DESC , p.id ASC;