DELIMITER $$

CREATE FUNCTION udf_actor_history_movies_count ( full_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE count_movies INT ;
    SET count_movies = (
 SELECT COUNT(*) as history_movies FROM actors
 JOIN movies_actors
 ON movies_actors.actor_id = actors.id
 JOIN movies
 ON movies.id = movies_actors.movie_id
 JOIN genres_movies
 ON genres_movies.movie_id = movies.id
 JOIN genres
 ON genres.id = genres_movies.genre_id
 WHERE genres.name = 'History'
 AND CONCAT(actors.first_name, ' ', actors.last_name) = full_name
    );
    RETURN count_movies;
END $$