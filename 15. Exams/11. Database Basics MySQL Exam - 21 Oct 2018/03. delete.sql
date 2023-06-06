DELETE FROM colonists
    WHERE id NOT IN (
        SELECT travel_cards.colonist_id FROM travel_cards
);