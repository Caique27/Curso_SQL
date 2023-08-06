SELECT u.id as uid, u.first_name, p.bio,r.name  FROM users u
LEFT JOIN profiles p ON u.id = p.user_id
LEFT  JOIN users_roles ur on u.id = ur.user_id
LEFT  JOIN roles as r ON ur.role_id = r.id
order by uid asc;
