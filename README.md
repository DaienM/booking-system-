# booking-system-sql project
A hotel booking system using SQL only. This project models a relational databse for a real-world hotel booking system with Users, Rooms, Bookings and Hotels. It also includes logic to prevent double booking and supports analytics queries.

It is built using PostgreSQL- first attempt in using it. 
*In other projects I mainly used MySQL, as they were simple CRUD APP, but this project required features that are better supported in PostgreSQL.*
Advantages of PostgreSQL over MySQL: more strict data integrity and also easily prevention of over booking. Supports advanced constraints which allow me to enforce booking conflicts directly at the database level. I made use of the stronger support for complex analytical queries used in features like revenue and accupancy analysis.

1. Overview
This project simulates a simplified Airbnb / hotel reservation system.
It focuses on:
*Relational database design
*Booking logic with conflict prevention
*SQL analytics queries
*Real-world data modeling patterns

2. Tech Stack 
*PostgreSQL 
*SQL (DDL + DML+ ADVANCED QUERIES)

3. Database Schema 
USERS 
Stores customer information.
id (PK)
name
email
created_at

HOTELS
Stores hotel information.
id (PK)
name
city
rating (DECIMAL)
created_at

ROOMS
Each hotel has multiple rooms.
id (PK)
hotel_id (FK → hotels)
room_number
price_per_night
capacity

BOOKINGS
Stores reservations.
id (PK)
user_id (FK → users)
room_id (FK → rooms)
check_in
check_out
status (confirmed/cancelled)
created_at

4. How to run
*Create PostgreSQL database
*Run schema.sql
*Run seed.sql
*Execute queries.sql
*Run analytics.sql

5. Future improvements
