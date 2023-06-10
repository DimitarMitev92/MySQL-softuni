SELECT 
	CONCAT(students.first_name, ' ', students.last_name) AS full_name, 
	substr(students.email, 2, 10) AS username,
    REVERSE(students.phone) AS password
FROM students
LEFT JOIN students_courses
ON students.id = students_courses.student_id
WHERE students_courses.course_id IS NULL
ORDER BY password DESC;