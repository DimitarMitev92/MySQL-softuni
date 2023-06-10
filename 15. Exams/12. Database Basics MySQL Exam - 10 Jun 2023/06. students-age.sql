SELECT 
    students.first_name,
    students.last_name,
    students.age,
    students.phone,
    students.email
FROM
    students
WHERE students.age >= 21
ORDER BY students.first_name DESC, students.email ASC, students.id ASC LIMIT 10;