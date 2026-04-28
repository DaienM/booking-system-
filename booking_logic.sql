--Find available rooms 
SELECT r.*
FROM rooms r
WHERE NOT EXISTS (
  SELECT 1
  FROM bookings b
  WHERE b.room_id= r.id
  AND b.status = 'confirmed'
  AND b.check_in < '2026-06-10'
  AND b.check_out > '2026-06-05'
);


--Bookk a room
INSERT INTO bookings (user_id, room_id,check_in, check_out)
VALUES (2, 1, '2026-06-05', '2026-06-08');

--Cancel booking
UPDATE bookings
SET STATUS = 'cancelled'
WHERE id = 1;

-- User booking history
SELECT u.name, b.*
FROM users u
JOIN bookings b ON u.id= b.user_id
WHERE u.id = 1;
