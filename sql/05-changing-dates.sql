-- SELECT membership_start + 7, membership_start
-- FROM memberships;

-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start
-- FROM memberships;

SELECT (membership_start + INTERVAL '7 DAY')::TIMESTAMP::DATE, membership_start
FROM memberships;