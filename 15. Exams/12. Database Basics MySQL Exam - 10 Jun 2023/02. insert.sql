INSERT INTO courses (
	name, 
    duration_hours, 
    start_date, 
    teacher_name, 
    description, 
    university_id
)
SELECT 
	CONCAT(courses.teacher_name, ' course') AS name,
    CHAR_LENGTH(courses.name) / 10 AS duration_hours,
    DATE_ADD(courses.start_date, INTERVAL 5 DAY) as start_date,
    REVERSE(courses.teacher_name) AS teacher_name,
    CONCAT('Course ',courses.teacher_name,REVERSE(courses.description)) AS description,
    DAY(courses.start_date) AS university_id
FROM courses
WHERE courses.id <= 5;