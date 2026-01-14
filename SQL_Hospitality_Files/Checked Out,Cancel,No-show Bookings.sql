-- Checked Out/Cancel/No-Show Bookings
SELECT 
  booking_status,
  COUNT(*) AS total_count
FROM fact_bookings
GROUP BY booking_status;