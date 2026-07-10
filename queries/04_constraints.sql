-- Shows the table definitions containing the primary key, foreign key, and validation rules.
SELECT name AS table_name, sql AS table_definition
FROM sqlite_master
WHERE type = 'table' AND name NOT LIKE 'sqlite_%'
ORDER BY name;