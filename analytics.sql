--Most booked hotel 
SELECT h.name, COUNT(*) AS bookings
FROM bookings b
JOIN rooms r ON b.room_id = r.id
JOIN hotels h ON r.hotel_id = h.id
GROUP BY h.name
ORDER BY bookings DESC;

--Occupancy rate
SELECT h.name, COUNT(*) AS bookings
FROM bookings b
JOIN rooms r ON b.room_id = r.id
JOIN hotels h ON r.hotel_id = h.id
GROUP BY h.name
ORDER BY bookings DESC;

--Revenue for each hotel
SELECT 
    h.name,
    SUM((b.check_out - b.check_in) * r.price_per_night) AS revenue
FROM bookings b
JOIN rooms r ON b.room_id = r.id
JOIN hotels h ON r.hotel_id = h.id
WHERE b.status = 'confirmed'
GROUP BY h.name;

--Best 10 rated hotels 
SELECT 
    id,
    name,
    city,
    rating
FROM hotels
ORDER BY rating DESC, name ASC
LIMIT 10;
