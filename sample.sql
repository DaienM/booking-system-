INSERT INTO users (name, email)
VALUES 
('Alice', 'alice@test.com'),
('Maia',   'maia@test.com'),
('Bob', '  bob@test.com');

INSERT INTO hotels (name, city, rating)
VALUES 
('Sea View Hotel', 'Constanta', 4.5),
('Tree Village', 'Sibiu', 9.8),
('Mountain Lodge', 'Brasov', 7.8);

INSERT INTO rooms (hotel_id, room_number, price_per_night, capacity)
VALUES 
(1, '101', 120, 2),
(1, '102', 150, 3),
(2, '201', 90, 2);
(3, '104' 100, 2)

INSERT INTO bookings (user_id, room_id, check_in, check_out)
VALUES 
(1, 1, '2026-06-01', '2026-06-05'),
(1, 2, '2026-07-12', '2026-07-16');
