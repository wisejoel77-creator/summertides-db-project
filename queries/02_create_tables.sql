-- Lists the tables created for the SummerTides relational model.
SELECT table_name
FROM (
    SELECT name AS table_name
    FROM sqlite_master
    WHERE type = 'table' AND name NOT LIKE 'sqlite_%'
)
ORDER BY table_name;