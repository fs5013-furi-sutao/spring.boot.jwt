DROP DATABASE IF EXISTS yudb;
CREATE DATABASE yudb;

USE yudb;

SET CHARACTER_SET_CLIENT = utf8;
SET CHARACTER_SET_CONNECTION = utf8;

DROP TABLE IF EXISTS users;
 
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'ID',
    email varchar(50) NOT NULL unique comment 'メールアドレス',
    username varchar(20) NOT NULL unique comment 'ユーザ名',
    password varchar(120) NOT NULL comment 'パスワード'
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='ユーザ'
;

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY comment 'ID',
    name varchar(20) NOT NULL unique comment '権限名'
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='権限'
;
 
CREATE TABLE user_roles (
    user_id INT NOT NULL comment 'ユーザID',
    role_id INT NOT NULL comment '権限ID',
    PRIMARY KEY(user_id, role_id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='ユーザ権限'
;

ALTER TABLE user_roles ADD CONSTRAINT user_roles_ibfk_1 FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE ON UPDATE CASCADE
;
ALTER TABLE user_roles ADD CONSTRAINT user_roles_ibfk_2 FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
;

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
