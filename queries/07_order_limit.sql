-- Shows the three most expensive ticket options first.
SELECT ticket_name, price
FROM ticket_types
ORDER BY price DESC
LIMIT 3;

-- Shows the five largest stages by audience capacity.
SELECT stage_name, stage_type, capacity
FROM stages
ORDER BY capacity DESC
LIMIT 5;

-- Shows the most recent ticket purchases.
SELECT purchase_id, attendee_id, purchase_date, quantity
FROM ticket_purchases
ORDER BY purchase_date DESC, purchase_id DESC
LIMIT 5;
