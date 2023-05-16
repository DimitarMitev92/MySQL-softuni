SELECT 
    user_name,
    SUBSTRING(REGEXP_SUBSTR(email, '@[a-z]*.[a-z]*$'),2) AS `email provider`
FROM
    users
    WHERE email REGEXP '@[a-z]*.[a-z]*$'
ORDER BY `email provider` ASC, user_name;