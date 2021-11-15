CREATE TABLE bookings (
 -- for mysql use this code
 -- id INT PRIMARY KEY AUTO_INCREMENT,
 -- for postgresql use this code
 -- id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    num_guests INT NOT NULL,
    amount_billed NUMERIC(6, 2)  NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES tables
);