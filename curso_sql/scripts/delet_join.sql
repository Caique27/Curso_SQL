DELETE p from users u
join profiles p 
on p.user_id = u.id
where u.first_name = "Caique"; 
