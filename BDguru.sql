CREATE DATABASE guru_ip;

USE guru_ip;

CREATE TABLE users (
    id_users INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE historico_pesquisa (
    id_pesquisa INT AUTO_INCREMENT PRIMARY KEY,
    ip VARCHAR(45) NOT NULL,
    latitude VARCHAR(15),
    longitude VARCHAR(15),
    data_pesquisa TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_users INT,  
    FOREIGN KEY (id_users) REFERENCES users(id_users) ON DELETE SET NULL
);
