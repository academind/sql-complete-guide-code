INSERT INTO cities (name)
VALUES ('Berlin'), ('New York'), ('London');

INSERT INTO addresses (street, house_number, city_id)
VALUES 
  ('Teststreet', '8A', 3), 
  ('Some street', '10', 1),
  ('Teststreet', '1', 3),
  ('My street', '101', 2);

INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
  ('Max', 'Schwarz', 'max@test.com', 2),
  ('Manuel', 'Lorenz', 'manu@test.com', 4),
  ('Julie', 'Barnes', 'julie@barnes.com', 3);