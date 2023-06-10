CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
	DECLARE average_alumni_grade DECIMAL(19,2);
    SET average_alumni_grade  =  (SELECT AVG(students_courses.grade) FROM courses
JOIN students_courses
ON courses.id = students_courses.course_id
JOIN students
ON students.id = students_courses.student_id
WHERE courses.name = 'Quantum Physics' AND students.is_graduated LIKE 1
GROUP BY courses.id);
RETURN average_alumni_grade;
END