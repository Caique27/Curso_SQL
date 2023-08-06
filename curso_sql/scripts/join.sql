-- SELECT u.id as uid, p.id as pid, p.bio, u.first_name FROM users u INNER JOIN profiles p  ON u.id = p.user_id
-- WHERE u.first_name  like "%a" order by u.first_name DESC;
SELECT u.id as uid, p.id as pid, p.bio, u.first_name FROM users u LEFT JOIN profiles p  ON u.id = p.user_id
;