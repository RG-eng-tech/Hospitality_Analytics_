-- Class wise Revenue
SELECT 
  r.room_class,
  SUM(revenue_realized) AS total_revenue
FROM fact_bookings b
JOIN dim_rooms r ON room_id = r.room_id
GROUP BY r.room_class;