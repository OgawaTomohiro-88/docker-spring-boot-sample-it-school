CREATE DATABASE IF NOT EXISTS sample_database CHARACTER SET
utf8 COLLATE utf8_general_ci;

USE sample_database;

CREATE TABLE IF NOT EXISTS account(
    account_id    int PRIMARY KEY AUTO_INCREMENT,
    email         varchar(50) NOT NULL,
    password      varchar(30) NOT NULL,
    user_name     varchar(30) NOT NULL,
    INDEX(account_id)
);


INSERT INTO account (email, password, user_name) VALUES
('mng@hoge', 'mngpass', 'manager'),
('user1@hoge', 'user1pass', 'user1'),
('user2@hoge', 'user2pass', 'user2')
;
