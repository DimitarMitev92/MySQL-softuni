
 DELIMITER $$

CREATE PROCEDURE udp_graduate_all_students_by_year (year_started INT)
BEGIN
	UPDATE students
    JOIN students_courses
	ON students.id = students_courses.student_id
	JOIN courses
	ON courses.id = students_courses.course_id
    SET students.is_graduated = '1'
    WHERE  YEAR(start_date) = year_started AND students.is_graduated = '0';
END$$