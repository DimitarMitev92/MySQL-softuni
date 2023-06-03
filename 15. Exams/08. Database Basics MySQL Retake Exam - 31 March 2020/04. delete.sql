DELETE FROM addresses
WHERE (addresses.id % 3) = 0;