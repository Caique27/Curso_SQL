use base_de_dados;

-- mostra as tabelas
show tables;
-- descreve as colunas da tabela users
describe users;
-- inserir registros
insert into users (first_name,last_name,email,password_hash
) values ("Luiz","Miranda","luiz@email.com","a_hash" );

