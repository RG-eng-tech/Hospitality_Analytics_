-- Weekly Trend Key trend (Revenue,Total bookings,Occupancy)
SELECT 
  WEEK(check_in_date) AS week_number,
  COUNT(*) AS total_bookings,
  SUM(revenue_realized) AS total_revenue,
  ROUND(SUM(CASE WHEN booking_status = 'Checked Out' THEN 1 ELSE 0 END) 
        / COUNT(*) * 100, 2) AS occupancy_percent
FROM fact_bookings
GROUP BY week_number
ORDER BY week_number;