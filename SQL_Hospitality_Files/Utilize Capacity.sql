-- Utilize Capacity
SELECT 
  ROUND(SUM(successful_bookings) / SUM(capacity) * 100, 2) AS utilized_capacity_percent
FROM fact_aggregated_bookings;