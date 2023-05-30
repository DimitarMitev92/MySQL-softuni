UPDATE movies_additional_info
SET runtime = runtime - 10
WHERE movies_additional_info.id >= 15 AND movies_additional_info.id <= 25;