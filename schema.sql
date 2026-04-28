
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INT REFERENCES users(id),
  title VARCHAR(255) NOT NULL,
  location VARCHAR(255),
  price_per_night DECIMAL(10,2) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE bookings(
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  property_id INT REFERENCES properties(id),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  status VARCHAR(20) DEFAULT 'confirmed',
  created_at TIMESTAMP DEFAULT NOW()
);
