-- Adds the festival edition.
INSERT INTO festivals (name, location, start_date, end_date) VALUES
('SummerTides Festival 2026', 'Diani Beach, Kwale, Kenya', '2026-12-18', '2026-12-20');


-- Adds the stages available during the festival.
INSERT INTO stages (festival_id, stage_name, capacity, stage_type) VALUES
(1, 'Ocean Main Stage', 8000, 'Live Music'),
(1, 'Sunset DJ Arena', 4500, 'DJ'),
(1, 'Coral Acoustic Stage', 1200, 'Acoustic'),
(1, 'Tide Art Pavilion', 700, 'Art');

INSERT INTO artists (artist_name, genre, country, contact_email) VALUES
('Sauti Sol', 'Afro-pop', 'Kenya', 'bookings@sautisol.example'),
('Nviiri the Storyteller', 'Afro-soul', 'Uganda', 'bookings@nviiri.example'),
('Bensoul', 'R&B', 'Kenya', 'management@bensoul.example'),
('DJ Pierra Makena', 'Afro-house', 'Kenya', 'bookings@pierrafm.example'),
('Nikita Kering', 'Afro-pop', 'Kenya', 'team@nikitakering.example'),
('Femi One', 'Hip-hop', 'Kenya', 'management@femione.example'),
('DJ Neptune', 'Afrobeats', 'Nigeria', 'bookings@djneptune.example'),
('Watendawili', 'Afro-fusion', 'Kenya', 'hello@watendawili.example');

-- Adds a conflict-free performance programme across all three days.
INSERT INTO performances (artist_id, stage_id, performance_date, start_time, end_time, set_type) VALUES
(1, 1, '2026-12-18', '20:30', '22:00', 'Headline'),
(2, 1, '2026-12-18', '18:45', '20:00', 'Live Set'),
(4, 2, '2026-12-18', '21:00', '23:00', 'DJ Set'),
(3, 3, '2026-12-18', '17:30', '18:30', 'Acoustic Set'),
(5, 1, '2026-12-19', '19:30', '20:45', 'Live Set'),
(6, 1, '2026-12-19', '21:15', '22:30', 'Headline'),
(7, 2, '2026-12-19', '20:00', '22:00', 'DJ Set'),
(8, 3, '2026-12-19', '16:30', '17:30', 'Acoustic Set'),
(3, 1, '2026-12-20', '18:30', '19:45', 'Live Set'),
(4, 2, '2026-12-20', '19:30', '21:30', 'DJ Set'),
(5, 3, '2026-12-20', '17:00', '18:00', 'Acoustic Set');

-- Adds festival attendees.
INSERT INTO attendees (first_name, last_name, email, phone, city) VALUES
('Amina', 'Hassan', 'amina.hassan@example.com', '+254700111222', 'Mombasa'),
('Brian', 'Otieno', 'brian.otieno@example.com', '+254711222333', 'Nairobi'),
('Chao', 'Mwakio', 'chao.mwakio@example.com', '+254722333444', 'Diani'),
('Diana', 'Wanjiru', 'diana.wanjiru@example.com', '+254733444555', 'Nairobi'),
('Eric', 'Kiptoo', 'eric.kiptoo@example.com', '+254744555666', 'Nakuru'),
('Faith', 'Nabwire', 'faith.nabwire@example.com', '+254755666777', 'Kampala'),
('George', 'Muli', 'george.muli@example.com', '+254766777888', 'Machakos'),
('Halima', 'Ali', 'halima.ali@example.com', '+254777888999', 'Mombasa');

-- Adds ticket categories and their prices.
INSERT INTO ticket_types (festival_id, ticket_name, price, access_description) VALUES
(1, 'General Admission', 4500.00, 'Entry to all general festival areas for one day.'),
(1, 'Weekend Pass', 11000.00, 'General entry for all three festival days.'),
(1, 'VIP', 18000.00, 'Three-day entry with VIP viewing deck and lounge access.'),
(1, 'Day VIP', 7500.00, 'One-day entry with VIP viewing deck access.');

-- Records ticket purchases made by attendees.
INSERT INTO ticket_purchases (attendee_id, ticket_type_id, purchase_date, quantity) VALUES
(1, 3, '2026-10-01', 1), (2, 2, '2026-10-03', 2),
(3, 1, '2026-10-04', 1), (4, 4, '2026-10-05', 1),
(5, 3, '2026-10-08', 1), (6, 2, '2026-10-10', 1),
(7, 1, '2026-10-12', 3), (8, 4, '2026-10-15', 2);

-- Adds vendors operating at the festival.
INSERT INTO vendors (festival_id, vendor_name, vendor_category, contact_name, phone) VALUES
(1, 'Coastal Bites', 'Food', 'Maya Mwangi', '+254701100200'),
(1, 'Tamu Juices', 'Beverage', 'Ibrahim Noor', '+254702200300'),
(1, 'Kanga Culture', 'Merchandise', 'Zawadi Achieng', '+254703300400'),
(1, 'Sea Glass Gallery', 'Art', 'Liam Kariuki', '+254704400500');

-- Adds daily sales reports from each vendor.
INSERT INTO vendor_sales (vendor_id, sale_date, sales_amount, transactions) VALUES
(1, '2026-12-18', 185000.00, 310), (1, '2026-12-19', 246500.00, 398), (1, '2026-12-20', 201000.00, 340),
(2, '2026-12-18', 132000.00, 420), (2, '2026-12-19', 176500.00, 518), (2, '2026-12-20', 144000.00, 450),
(3, '2026-12-18', 98000.00, 95), (3, '2026-12-19', 154000.00, 143), (3, '2026-12-20', 121500.00, 110),
(4, '2026-12-18', 75000.00, 28), (4, '2026-12-19', 106000.00, 37), (4, '2026-12-20', 89000.00, 31);

-- Adds sponsor organizations.
INSERT INTO sponsors (sponsor_name, industry, contact_email) VALUES
('Safaricom', 'Telecommunications', 'partnerships@safaricom.example'),
('Tusker', 'Beverages', 'events@tusker.example'),
('Kenya Airways', 'Aviation', 'sponsorships@kenyaairways.example'),
('Equity Bank', 'Financial Services', 'events@equity.example');

-- Records the sponsor contribution assigned to each stage.
INSERT INTO stage_sponsors (stage_id, sponsor_id, contribution_amount) VALUES
(1, 1, 2500000.00), (1, 2, 1800000.00), (2, 2, 1200000.00),
(2, 3, 900000.00), (3, 4, 650000.00), (4, 1, 400000.00);








