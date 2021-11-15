-- INSERT INTO tags (name)
-- VALUES ('socialize'), ('learn'), ('connect'), ('dinner'), ('breakfast');

-- INSERT INTO cities (name)
-- VALUES ('Munich'), ('Berlin'), ('Cologne'), ('Frankfurt'), ('Hamburg');

-- INSERT INTO locations (title, street, house_number, postal_code, city_name)
-- VALUES 
--   ('Beerhall', 'Beerstreet', '5A', '80135', 'Munich'),
--   (NULL, 'Beerstreet', '10', '81035', 'Munich'),
--   (NULL, 'Gardenstreet', '101', '80031', 'Munich'),
--   ('The Green One', 'Veggiestreet', '12', '12141', 'Berlin'),
--   (NULL, 'Park Plaza', '1', '11011', 'Berlin'),
--   ('Partyhouse', 'Carnevalstreet', '3', '12345', 'Cologne'),
--   (NULL, 'Some Street', '18', '72657', 'Hamburg');


-- INSERT INTO users (first_name, last_name, birthdate, email)
-- VALUES 
--   ('Max', 'Schwarz', '1989-05-01', 'max@test.com'),
--   ('Manuel', 'Lorenz', '1988-10-19', 'manuel@test.com'),
--   ('Julie', 'Barnes', '1986-02-13', 'julie@test.com'),
--   ('Michael', 'Smith', '1982-11-11', 'michael@test.com');


-- INSERT INTO organizers (password, user_id)
-- VALUES 
--   ('mypw1', 1), -- passwords would typically be stored encrypted
--   ('somepw2', 2);


-- INSERT INTO events (name, date_planned, image, description, max_participants, min_age, location_id, organizer_id)
-- VALUES 
--   (
--     'New in town', 
--     '2022-02-01 17:30:00', 
--     'path/to/image.jpg', 
--     'You are new in town? Join us and meet like-minded new people!',
--     20,
--     16,
--     1,
--     1
--   );


INSERT INTO events_tags (event_id, tag_name)
VALUES 
  (1, 'socialize'),
  (1, 'connect'),
  (1, 'dinner');


INSERT INTO events_users (event_id, user_id)
VALUES 
  (1, 3),
  (1, 4);