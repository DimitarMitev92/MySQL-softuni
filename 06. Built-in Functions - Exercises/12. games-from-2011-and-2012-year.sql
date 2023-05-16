SELECT name, DATE_FORMAT(start, '%Y-%m-%d') FROM games
WHERE start >= '2011-01-01' AND start <= '2012-12-31'
ORDER BY start, name LIMIT 50;