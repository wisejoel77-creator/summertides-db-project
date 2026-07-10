-- Stores the festival edition being managed.
CREATE TABLE festivals (
    festival_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(120) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL CHECK (end_date >= start_date),
    CHECK (end_date >= start_date)
);
-- Stores each performance location at a festival.
CREATE TABLE stages (
    stage_id INTEGER PRIMARY KEY,
    festival_id INTEGER NOT NULL REFERENCES festivals(festival_id),
    stage_name VARCHAR(100) NOT NULL,
    capacity INTEGER NOT NULL,
    stage_type VARCHAR(30) NOT NULL,
    CHECK (capacity > 0),
    UNIQUE (festival_id, stage_name)
);

-- Stores musicians, DJs, and other performers.
CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY,
    artist_name VARCHAR(120) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    country VARCHAR(60) NOT NULL,
    contact_email VARCHAR(120) UNIQUE
);

-- Stores a scheduled artist performance on a stage.
CREATE TABLE performances (
    performance_id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
    stage_id INTEGER NOT NULL REFERENCES stages(stage_id),
    performance_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    set_type VARCHAR(40) NOT NULL,
    CHECK (end_time > start_time)
);

-- Stores people attending the festival.
CREATE TABLE attendees (
    attendee_id INTEGER PRIMARY KEY,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    phone VARCHAR(30),
    city VARCHAR(80) NOT NULL
);

-- Stores ticket categories for one festival edition.
CREATE TABLE ticket_types (
    ticket_type_id INTEGER PRIMARY KEY,
    festival_id INTEGER NOT NULL REFERENCES festivals(festival_id),
    ticket_name VARCHAR(50) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    access_description VARCHAR(200) NOT NULL,
    CHECK (price >= 0),
    UNIQUE (festival_id, ticket_name)
);

-- Records each ticket purchased by an attendee.
CREATE TABLE ticket_purchases (
    purchase_id INTEGER PRIMARY KEY,
    attendee_id INTEGER NOT NULL REFERENCES attendees(attendee_id),
    ticket_type_id INTEGER NOT NULL REFERENCES ticket_types(ticket_type_id),
    purchase_date DATE NOT NULL DEFAULT CURRENT_DATE,
    quantity INTEGER NOT NULL DEFAULT 1,
    CHECK (quantity > 0)
);

-- Stores food, beverage, merchandise, and art vendors.
CREATE TABLE vendors (
    vendor_id INTEGER PRIMARY KEY,
    festival_id INTEGER NOT NULL REFERENCES festivals(festival_id),
    vendor_name VARCHAR(120) NOT NULL,
    vendor_category VARCHAR(40) NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    UNIQUE (festival_id, vendor_name)
);

-- Stores a vendor's daily reported sales.
CREATE TABLE vendor_sales (
    vendor_sale_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL REFERENCES vendors(vendor_id),
    sale_date DATE NOT NULL DEFAULT CURRENT_DATE,
    sales_amount NUMERIC(12,2) NOT NULL,
    transactions INTEGER NOT NULL DEFAULT 0,
    CHECK (sales_amount >= 0 AND transactions >= 0),
    UNIQUE (vendor_id, sale_date)
);

-- Stores organizations sponsoring the festival.
CREATE TABLE sponsors (
    sponsor_id INTEGER PRIMARY KEY,
    sponsor_name VARCHAR(120) NOT NULL,
    industry VARCHAR(80) NOT NULL,
    contact_email VARCHAR(120) NOT NULL,
    UNIQUE (sponsor_name)
);

-- Links sponsors to stages and records their contribution.
CREATE TABLE stage_sponsors (
    stage_sponsor_id INTEGER PRIMARY KEY,
    stage_id INTEGER NOT NULL REFERENCES stages(stage_id),
    sponsor_id INTEGER NOT NULL REFERENCES sponsors(sponsor_id),
    contribution_amount NUMERIC(12,2) NOT NULL,
    CHECK (contribution_amount > 0),
    UNIQUE (stage_id, sponsor_id)
);