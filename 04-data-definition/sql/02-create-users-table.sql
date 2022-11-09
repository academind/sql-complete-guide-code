-- Postgresql + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  full_name VARCHAR(200),
  year_salary INT,
  -- MySQL syntax
  -- current_status ENUM('employed', 'self-employed', 'unemployed')
  -- PostgreSQL syntax
  current_status employment_status
);