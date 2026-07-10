-- Stores the festival edition being managed.
CREATE TABLE festivals (
    festival_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(120) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL CHECK (end_date >= start_date),
    CHECK (end_date >= start_date)
);