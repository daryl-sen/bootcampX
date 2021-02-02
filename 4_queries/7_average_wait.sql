SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests
GROUP BY assistance_requests.id
ORDER BY average_wait_time DESC
LIMIT 1;

---- ANSWER
-- SELECT avg(started_at-created_at) as average_wait_time
-- FROM assistance_requests;