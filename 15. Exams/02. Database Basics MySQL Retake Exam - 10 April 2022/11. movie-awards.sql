DELIMITER $$

CREATE PROCEDURE udp_award_movie (movie_title VARCHAR(50))
BEGIN
	UPDATE actors
    JOIN movies_actors
    ON actors.id = movies_actors.actor_id
    JOIN movies
    ON movies.id = movies_actors.movie_id
    SET actors.awards = actors.awards + 1
    WHERE movies.title = movie_title;
END $$