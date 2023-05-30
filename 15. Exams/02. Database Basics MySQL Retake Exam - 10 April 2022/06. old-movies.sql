SELECT 
   movies.id, movies.title, m_a_i.runtime, m_a_i.budget, m_a_i.release_date
FROM
    movies_additional_info AS m_a_i
JOIN movies
ON m_a_i.id = movies.movie_info_id
WHERE DATE(m_a_i.release_date) BETWEEN '1996-01-01' AND '1999-12-31'
ORDER BY m_a_i.runtime ASC, movies.id ASC
LIMIT 20;