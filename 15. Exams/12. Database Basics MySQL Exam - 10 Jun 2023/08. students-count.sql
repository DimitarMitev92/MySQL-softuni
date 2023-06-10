SELECT 
    COUNT(students.id) AS students_count,
    universities.name AS university_name
FROM
    universities
        JOIN
    courses ON universities.id = courses.university_id
        JOIN
    students_courses ON students_courses.course_id = courses.id
        JOIN
    students ON students_courses.student_id = students.id
GROUP BY universities.name
HAVING students_count >= 8
ORDER BY students_count DESC , university_name DESC;