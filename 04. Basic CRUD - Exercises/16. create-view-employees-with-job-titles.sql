CREATE VIEW v_employees_job_titles AS
SELECT CONCAT_WS(' ',first_name, 
	CASE
    WHEN NULL THEN ''
    ELSE middle_name
    END
, last_name) AS full_name, job_title
FROM employees;