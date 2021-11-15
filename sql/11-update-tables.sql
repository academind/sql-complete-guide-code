-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; -- Postgresql

-- ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue FLOAT; -- MySQL

-- ALTER TABLE users
-- ALTER COLUMN full_name SET DATA TYPE VARCHAR(300); -- Postgresql

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300); -- MySQL