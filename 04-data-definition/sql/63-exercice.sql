-- 1. Create a new database for the shop
CREATE DATABASE super_shop;

-- 2. Add a table for the products
-- 3. Choose appropriate column names + data types
CREATE TABLE IF NOT EXISTS products (
  name VARCHAR(255),
  price DECIMAL,
  description TEXT,
  stock INT,
  image_path VARCHAR(800),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Insert dummy data into created table
INSERT INTO products (name, price, description, stock, image_path)
VALUES (
    'fantastic',
    100.54,
    'super long description',
    10,
    'path/to/some/image.jpg'
  );

-- 5. Update table and add sensible constraints
-- 6. Update table and add a primary key
-- PostgreSQL
ALTER TABLE products
ALTER COLUMN name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ALTER COLUMN image_path SET NOT NULL,
ADD CONSTRAINT unique_name UNIQUE (name),
ADD CONSTRAINT price_posite CHECK (price > 0),
ADD CONSTRAINT stock_posite CHECK (stock > 0),
ADD COLUMN id SERIAL PRIMARY KEY;

-- MySQL
ALTER TABLE products
MODIFY COLUMN name VARCHAR(255) NOT NULL UNIQUE,
MODIFY COLUMN price INT NOT NULL CHECK (price > 0),
MODIFY COLUMN description TEXT NOT NULL,
MODIFY COLUMN image_path VARCHAR(800) NOT NULL,
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT,
ADD CONSTRAINT stock_posite CHECK (stock > 0);