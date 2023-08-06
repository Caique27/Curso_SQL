SELECT u.id as uid, p.id as pid, u.first_name, p.bio from users as u,profiles as p WHERE p.user_id = u.id; 

