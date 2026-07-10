- Labels each ticket type by price tier for marketing reports.
SELECT ticket_name,
       price,
       CASE
           WHEN price >= 15000 THEN 'Premium'
           WHEN price >= 7000 THEN 'Standard Plus'
           ELSE 'Standard'
       END AS price_tier
FROM ticket_types
ORDER BY price DESC;

-- Labels vendor sales performance using daily revenue.
SELECT v.vendor_name,
       vs.sale_date,
       vs.sales_amount,
       CASE
           WHEN vs.sales_amount >= 175000 THEN 'Excellent'
           WHEN vs.sales_amount >= 120000 THEN 'Strong'
           ELSE 'Developing'
       END AS sales_rating
FROM vendor_sales AS vs
JOIN vendors AS v ON v.vendor_id = vs.vendor_id
ORDER BY vs.sales_amount DESC;
