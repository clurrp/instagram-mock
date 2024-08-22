EXPLAIN SELECT username, contents
FROM users
JOIN comments ON comments.user_id = users.id
WHERE username = 'Alyson14';

-- pg_stats allows for estimations with Explain Analysis
SELECT * 
FROM pg_stats
WHERE tablename = 'users';