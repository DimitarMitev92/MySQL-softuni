SELECT 
    drivers.first_name,
    drivers.last_name,
    cars.make,
    cars.model,
    cars.mileage
FROM
    cars
        JOIN
    cars_drivers ON cars.id = cars_drivers.car_id
        JOIN
    drivers ON drivers.id = cars_drivers.driver_id
WHERE cars.mileage IS NOT NULL
ORDER BY cars.mileage DESC, drivers.first_name ASC;