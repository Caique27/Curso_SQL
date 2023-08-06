-- Exercício 1
SELECT * FROM users;
INSERT INTO users (first_name,last_name,email,password_hash)
values ('Joao','Silva','joao@email.com','senha_joao'),
('Pedro','Souza','pedro@email.com','senha_pedro'),
('Maria','Ferreira','maria@email.com','senha_mario'),
('Antônio','Ferreira','tonhao@email.com','senha_antonio'),
('Josias','Almeida','josias@email.com','senha_josias');

-- Exercício 2

SELECT * FROM profiles;
INSERT INTO profiles (bio,description,user_id)
SELECT 
CONCAT("bio de ",first_name),
CONCAT("description de ",first_name),
id
FROM users WHERE id >101;

-- Exercício 3

INSERT INTO users_roles 
(user_id,role_id)
SELECT
id,
(select id from roles order by rand() limit 1)
FROM users u
ORDER BY u.created_at desc limit 5;


-- Exercício 4

SELECT * FROM users ORDER BY created_at desc limit 5;

-- Exercício 5

UPDATE users SET salary = rand()*10000 ORDER BY id DESC LIMIT 1; -- Quebra se o id não for sequencial]

-- Exercício 6: Remover permissão aleatória do usuário arbitrariamente escolhido id 106
DELETE FROM users_roles WHERE user_id = 103 ORDER BY rand() LIMIT 1;

-- Exercício 7:
SELECT COUNT(first_name) 
FROM users u 
JOIN users_roles ur
ON u.id = ur.user_id
JOIN roles r 
ON r.id = ur.role_id
WHERE r.name = "GET" 
LIMIT 1;



DELETE u FROM users u 
JOIN users_roles ur
ON u.id = ur.user_id
JOIN roles r 
ON r.id = ur.role_id
WHERE r.name = "GET"
and u.id = 9;

-- Exercício 8

SELECT u.id, u.first_name,u.salary , p.bio, ur.role_id, r.name 
from users u 
join profiles p on p.user_id  = u.id 
join users_roles ur on ur.user_id =u.id 
join roles r on r.id = ur.role_id ;

-- Exercício 9

SELECT u.id, u.first_name,u.salary, p.bio, ur.role_id, r.name 
from users u 
left join profiles p on p.user_id  = u.id 
left join users_roles ur on ur.user_id =u.id 
left join roles r on r.id = ur.role_id ;

-- Exercício 10

SELECT u.id, u.first_name,u.salary, p.bio, ur.role_id, r.name 
from users u 
join profiles p on p.user_id  = u.id 
join users_roles ur on ur.user_id =u.id 
join roles r on r.id = ur.role_id order by u.salary desc;

