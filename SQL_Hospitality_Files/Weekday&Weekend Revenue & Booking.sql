-- Weekday & Weekend Revenue & Booking
SELECT 
  DAYNAME(check_in_date) AS day_name,
  COUNT(*) AS total_bookings,
  SUM(revenue_realized) AS total_revenue
FROM fact_bookings
GROUP BY day_name;