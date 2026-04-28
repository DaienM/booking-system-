--Users Table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Hotels/properties table 
CREATE TABLE hotels (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(100),
  rating DECIMAL(3,2),
  created_at TIMESTAMP DEFAULT NOW()
);

--Rooms Table
CREATE TABLE rooms(
  id SERIAL PRIMARY KEY,
  hotel_id INT REFERENCES hotels(id),
  room_number VARCHAR((10),
  price_per_night DECIMAL (10,2),
  capacity INT
);

-- Bookings table 
CREATE TABLE bookings(
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  property_id INT REFERENCES properties(id),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  status VARCHAR(20) DEFAULT 'confirmed',
  created_at TIMESTAMP DEFAULT NOW()
);
