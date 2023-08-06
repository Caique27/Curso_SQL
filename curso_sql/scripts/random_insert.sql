insert ignore into users_roles (user_id,role_id)
select id,(SELECT id from roles order by rand() limit 1) from users order by rand() limit 50;
