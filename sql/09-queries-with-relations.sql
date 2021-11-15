-- SELECT 
--   e.id AS event_id, 
--   e.name, 
--   e.date_planned, 
--   loc.title, 
--   loc.street, 
--   loc.house_number, 
--   loc.city_name 
-- FROM events AS e
-- INNER JOIN locations AS loc ON e.location_id = loc.id;

-- SELECT 
--   e.id AS event_id, 
--   e.name, 
--   e.date_planned, 
--   loc.title, 
--   loc.street, 
--   loc.house_number, 
--   loc.city_name,
--   u.first_name,
--   u.last_name 
-- FROM events AS e
-- INNER JOIN locations AS loc ON e.location_id = loc.id
-- INNER JOIN events_users AS eu ON eu.event_id = e.id
-- INNER JOIN users AS u ON eu.user_id = u.id;

-- SELECT * FROM locations AS loc
-- LEFT JOIN events AS e ON e.location_id = loc.id;

SELECT * FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
LEFT JOIN events AS e ON e.location_id = loc.id;
