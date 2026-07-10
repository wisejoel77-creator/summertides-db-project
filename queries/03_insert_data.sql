-- Counts the sample records loaded into each main business table.
SELECT 'artists' AS table_name, COUNT(*) AS record_count FROM artists
UNION ALL SELECT 'attendees', COUNT(*) FROM attendees
UNION ALL SELECT 'performances', COUNT(*) FROM performances
UNION ALL SELECT 'vendors', COUNT(*) FROM vendors
UNION ALL SELECT 'ticket_purchases', COUNT(*) FROM ticket_purchases
ORDER BY table_name;