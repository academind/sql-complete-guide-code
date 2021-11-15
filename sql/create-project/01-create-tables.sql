CREATE TABLE customers(
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    -- id SERIAL PRIMARY KEY,
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);