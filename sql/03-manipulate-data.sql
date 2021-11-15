-- INSERT INTO events (
--     name, 
--     date_planned, 
--     description, 
--     max_participants, 
--     min_age
--   )
-- VALUES (
--     'A first event', 
--     '2022-10-29 16:30:00', 
--     'This is the description of this first event.',
--     20,
--     18
--   ),
--   (
--     'A second event', 
--     '2022-05-20 12:30:00', 
--     'This is the description of this second event.',
--     10,
--     22
--   );


UPDATE events
SET min_age = 16
WHERE id = 1;


DELETE FROM events
WHERE id = 1;