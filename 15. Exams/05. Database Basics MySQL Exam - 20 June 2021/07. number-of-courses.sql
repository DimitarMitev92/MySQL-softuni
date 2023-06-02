SELECT 
    cars.id,
    cars.make,
    cars.mileage,
    COUNT(courses.car_id) AS count_of_courses,
    FORMAT(AVG(bill), 2) AS avg_bill
FROM
    cars
        LEFT JOIN
    courses ON cars.id = courses.car_id
GROUP BY cars.id
HAVING count_of_courses !=2
ORDER BY count_of_courses DESC, cars.id ASC;