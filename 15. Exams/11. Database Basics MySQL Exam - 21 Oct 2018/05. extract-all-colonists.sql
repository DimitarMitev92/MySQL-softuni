SELECT
    colonists.id,
    CONCAT_WS(' ', colonists.first_name, colonists.last_name) AS full_name,
    colonists.ucn
FROM
    colonists 
ORDER BY 
    colonists.first_name,
    colonists.last_name,
    colonists.id;