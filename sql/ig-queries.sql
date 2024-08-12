-- get usernames and their number of likes
SELECT username, COUNT(*) AS likes
FROM users
JOIN likes ON likes.user_id = users.id
GROUP BY username;

-- get username and caption for a specific user
SELECT users.username, posts.caption FROM posts
JOIN users on posts.user_id = users.id
WHERE users.id = 200;

-- get the top 3 highest user ids
SELECT * FROM users 
ORDER BY id DESC
LIMIT 3;