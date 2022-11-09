DROP TABLE users;

DROP TABLE employers;

DROP TABLE conversations;

-- Postgresql syntax: previously created types are stored, so we don't need to recreate them
-- CREATE TYPE employment_status AS ENUM('self-employed', 'employed', 'unemployed');
CREATE TABLE users (
  -- Postgresql
  id SERIAL PRIMARY KEY,
  -- MySQL
  -- id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  -- MySQL
  -- current_status ENUM('self-employed', 'employed', 'unemployed')
  -- PostgreSQL
  current_status employment_status
);

CREATE TABLE employers (
  -- Postgresql
  id SERIAL PRIMARY KEY,
  -- MySQL
  -- id INT PRIMARY KEY AUTO_INCREMENT,
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  -- Postgresql
  id SERIAL PRIMARY KEY,
  -- MySQL
  -- id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);