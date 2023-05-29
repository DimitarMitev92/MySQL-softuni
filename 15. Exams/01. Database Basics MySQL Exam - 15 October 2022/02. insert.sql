INSERT INTO products (name , type, price)
SELECT CONCAT(waiters.last_name, ' ', 'specialty'), 'Cocktail', CEILING(0.01*waiters.salary) FROM waiters
WHERE waiters.id > 6;