-- select u.first_name, p.bio from users u
update users as u 
join profiles p 
on p.user_id = u.id 
set p.bio = concat(p.bio," atualizado")
where u.first_name ="Caique";