-- Revenue by State & hotel
SELECT 
  h.city,
  h.property_name,
  SUM(b.revenue_realized) AS total_revenue
FROM fact_bookings b
JOIN dim_hotels h ON b.property_id = h.property_id
GROUP BY h.city, h.property_name;