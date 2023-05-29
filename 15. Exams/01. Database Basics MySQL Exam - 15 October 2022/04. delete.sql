DELETE FROM waiters
WHERE waiters.id NOT IN (SELECT orders.waiter_id FROM orders);