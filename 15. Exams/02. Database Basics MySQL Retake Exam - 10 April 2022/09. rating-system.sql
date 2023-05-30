SELECT 
	movies.title AS title,
    CASE
		WHEN movies_additional_info.rating <= 4 THEN 'poor'
        WHEN movies_additional_info.rating > 4 AND movies_additional_info.rating <= 7  THEN 'good'
        ELSE 'excellent'
    END AS rating,
    CASE
		WHEN movies_additional_info.has_subtitles = 1 THEN 'english'
        ELSE '-'
	END AS subtitles,
    movies_additional_info.budget
 FROM movies
JOIN movies_additional_info
ON movies.movie_info_id = movies_additional_info.id
ORDER BY movies_additional_info.budget DESC;