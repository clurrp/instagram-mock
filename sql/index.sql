CREATE INDEX ON users (username);

-- CREATE INDEX { optional name } ON users (username);

DROP INDEX users_username_index;

-- With index, took about .183 ms
-- Without index, took about 4.146
EXPLAIN ANALYZE SELECT * 
FROM users 
WHERE username = 'Emil30'

SELECT pg_size_pretty(pg_relation_size('users_username_idx'));
