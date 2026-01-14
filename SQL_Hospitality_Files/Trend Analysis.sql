-- Trend Analysis
SELECT 
  DATE_FORMAT(check_in_date, '%Y-%m') AS month,
  SUM(revenue_realized) AS total_revenue
FROM fact_bookings
GROUP BY month
ORDER BY month;