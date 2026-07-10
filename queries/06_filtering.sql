- Finds attendees from Mombasa who have registered for the festival.
SELECT first_name, last_name, email
FROM attendees
WHERE city = 'Mombasa';

-- Finds artists performing Afro-pop or Afro-soul music.
SELECT artist_name, genre, country
FROM artists
WHERE genre IN ('Afro-pop', 'Afro-soul');

-- Finds high-value vendor sales reports above KES 150,000.
SELECT v.vendor_name, vs.sale_date, vs.sales_amount
FROM vendor_sales AS vs
JOIN vendors AS v ON v.vendor_id = vs.vendor_id
WHERE vs.sales_amount > 150000.00;
