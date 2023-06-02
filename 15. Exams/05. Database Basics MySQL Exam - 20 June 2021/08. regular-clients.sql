SELECT clients.full_name, COUNT(*) AS count_of_cars, SUM(courses.bill) AS total_sum FROM cars
JOIN courses
ON cars.id = courses.car_id
JOIN clients
ON courses.client_id = clients.id
GROUP BY clients.full_name
HAVING clients.full_name LIKE '_a%' AND count_of_cars > 1
ORDER BY clients.full_name ASC;