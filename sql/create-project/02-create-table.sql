CREATE TABLE memberships (
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    -- id SERIAL PRIMARY KEY,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);