-- Cancellation Rate
SELECT 
  ROUND(
    SUM(CASE WHEN booking_status = 'Cancelled' THEN 1 ELSE 0 END) 
    / COUNT(*) * 100, 
  2) AS cancellation_rate_percent
FROM fact_bookings;