-- criação users

CREATE TABLE base_de_dados.users (
	id INT UNSIGNED auto_increment NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	email varchar(100) NOT NULL,
	last_name varchar(100) NULL,
	password_hash VARCHAR(100) NOT NULL,
	created_at DATETIME DEFAULT NOW() NOT NULL,
	updated_at DATETIME DEFAULT now() on update now() NOT NULL,
	CONSTRAINT users_PK PRIMARY KEY (id),
	CONSTRAINT users_UN_email UNIQUE KEY (email),
	CONSTRAINT users_UN_password UNIQUE KEY (password_hash)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- criação roles                
CREATE TABLE base_de_dados.roles (
	id INT UNSIGNED auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	CONSTRAINT roles_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- criação user_roles
CREATE TABLE base_de_dados.users_roles (
	user_id INT UNSIGNED NOT NULL,
	role_id INT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT now() NOT NULL,
	updated_at DATETIME DEFAULT now() on update now() NOT NULL,
	CONSTRAINT users_roles_PK PRIMARY KEY (user_id,role_id),
	CONSTRAINT users_roles_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_roles_FK_1 FOREIGN KEY (role_id) REFERENCES base_de_dados.roles(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- criação profiles
CREATE TABLE base_de_dados.profiles (
	id INT UNSIGNED auto_increment NOT NULL,
	bio TEXT NULL,
	description TEXT NULL,
	user_id INT UNSIGNED NULL,
	CONSTRAINT profiles_PK PRIMARY KEY (id),
	CONSTRAINT profiles_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- Adição do campo salay na tabela users
ALTER TABLE base_de_dados.users ADD salary DECIMAL(15,2) NULL;