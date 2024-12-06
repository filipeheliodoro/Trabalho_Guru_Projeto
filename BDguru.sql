CREATE DATABASE guru_ip;

USE guru_ip;

CREATE TABLE historico_pesquisa (
    id_pesquisa INT AUTO_INCREMENT PRIMARY KEY,
    ip VARCHAR(45) NOT NULL,
    latitude VARCHAR(15),
    longitude VARCHAR(15),
    data_pesquisa TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users(
	id_users INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    password VARCHAR(100) NOT NULL
);