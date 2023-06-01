UPDATE cars
SET cars.condition = 'C'
WHERE (cars.mileage >= 800000 OR cars.mileage IS NULL)
	AND cars.year <= 2010;