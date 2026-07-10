# SummerTides Festival Database — Demo Notes

## 1. Problem

SummerTides relied on spreadsheets, causing duplicate data, missing ticket information, schedule confusion, and weak reporting.

## 2. Solution

We created an SQLite3 relational database for festivals, stages, artists, performances, attendees, tickets, vendors, sales, and sponsors.

## 3. Data model

The model uses primary and foreign keys to connect the festival schedule, ticketing, vendor reporting, and sponsorships. See [the ER diagram](../docs/data_dictionary.md).

## 4. Data quality

The schema enforces unique attendee emails, unique stage names per festival, positive capacities and ticket quantities, valid performance times, and valid money values.

## 5. Demo flow

1. Run the database scripts in `database/`.
2. Run `queries/10_joins.sql` to show the programme, VIP attendees, and stage sponsors.
3. Run `queries/09_group_by.sql` to report the busiest stage, vendor sales, and ticket revenue.
4. Run `queries/11_views.sql` to create and demonstrate reusable reporting views.
5. Run `queries/12_bonus.sql` for ranked vendor and above-average-ticket reports.

## 6. Outcomes

The committee can now answer where artists are performing, identify VIP customers, compare stage activity, rank vendor revenue, and trace sponsorship funding.
