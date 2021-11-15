-- SELECT booking_date, COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- GROUP BY booking_date;

SELECT booking_date, COUNT(booking_date)
FROM bookings
GROUP BY booking_date;
HAVING SUM(amount_billed) > 30;
