SELECT
    travel_cards.job_during_journey
FROM
    travel_cards
WHERE
    travel_cards.journey_id = (
        SELECT
            journeys.id
        FROM
            journeys
        ORDER BY
            DATEDIFF(journeys.journey_end, journeys.journey_start) DESC
        LIMIT 1
    )
GROUP BY
    travel_cards.job_during_journey
ORDER BY
    count(travel_cards.job_during_journey)
LIMIT 1;