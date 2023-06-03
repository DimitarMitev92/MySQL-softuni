SELECT comments.photo_id, photos.date, photos.description, COUNT(comments.photo_id) AS commentsCount FROM comments
JOIN photos
ON photos.id = comments.photo_id
GROUP BY comments.photo_id
ORDER BY commentsCount DESC, comments.photo_id ASC
LIMIT 5;
