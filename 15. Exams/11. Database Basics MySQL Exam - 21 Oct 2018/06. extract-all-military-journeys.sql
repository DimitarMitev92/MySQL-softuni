SELECT 
    journeys.id,
    journeys.journey_start,
    journeys.journey_end
FROM journeys
WHERE journeys.purpose = 'Military'
ORDER BY journeys.journey_start;