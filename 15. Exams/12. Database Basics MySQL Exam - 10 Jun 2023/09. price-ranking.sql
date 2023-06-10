SELECT 
    universities.name, 
    cities.name, 
    universities.address,
    CASE
		WHEN universities.tuition_fee < 800 THEN 'cheap'
        WHEN universities.tuition_fee >= 800 AND universities.tuition_fee < 1200 THEN 'normal'
        WHEN universities.tuition_fee >= 1200 AND universities.tuition_fee < 2500 THEN 'high'
        WHEN universities.tuition_fee >= 2500 THEN 'expensive'
    END AS price_rank,
    universities.tuition_fee
FROM
    universities
        JOIN
    cities ON universities.city_id = cities.id
    ORDER BY universities.tuition_fee ASC;