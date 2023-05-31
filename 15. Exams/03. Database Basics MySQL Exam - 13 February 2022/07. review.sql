SELECT 
	reviews.id, 
    reviews.content,
    reviews.rating,
    reviews.picture_url,
    reviews.published_at
FROM reviews
WHERE reviews.content LIKE 'My%' AND CHAR_LENGTH(reviews.content) > 61
ORDER BY reviews.rating DESC;
