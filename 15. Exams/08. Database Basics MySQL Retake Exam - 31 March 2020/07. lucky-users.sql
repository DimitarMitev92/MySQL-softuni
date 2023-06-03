SELECT CONCAT(users.id, ' ', users.username) AS id_username, users.email FROM users
JOIN users_photos
ON users.id = users_photos.user_id
JOIN photos
ON photos.id = users_photos.photo_id
WHERE users.id = photos.id
ORDER BY users.id ASC;