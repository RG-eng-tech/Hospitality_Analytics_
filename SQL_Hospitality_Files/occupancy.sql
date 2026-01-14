-- Occupancy
SELECT 
  ROUND(SUM(successful_bookings) / SUM(capacity) * 100, 2) AS occupancy_percent
FROM fact_aggregated_bookings;