CREATE TABLE conversations (
  -- using the same data type as in the table users full_name
  user_name VARCHAR(200),
  -- the matching column in the employers table.
  employer_name VARCHAR(250),
  message TEXT,
  date_sent TIMESTAMP
);