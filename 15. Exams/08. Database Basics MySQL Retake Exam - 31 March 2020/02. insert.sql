INSERT INTO addresses (addresses.address, addresses.town, addresses.country, addresses.user_id)
SELECT users.username, users.password, users.ip, users.age FROM users
WHERE users.gender LIKE 'M';
