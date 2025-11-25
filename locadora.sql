DROP DATABASE IF EXISTS locadora;
CREATE DATABASE locadora;
USE locadora;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    telefone VARCHAR(55) NOT NULL,
    email VARCHAR(55) NOT NULL,
    cpf VARCHAR(55) NOT NULL
);

CREATE TABLE item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(55) NOT NULL,
    categoria VARCHAR(55) NOT NULL
);

CREATE TABLE aluguel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_alguel DATE NOT NULL,
    data_devolucao DATE NOT NULL
);

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    cargo VARCHAR(55) NOT NULL
);

INSERT INTO cliente (nome, telefone, email, cpf) VALUES
    ('João', '123456789', 'V9V4U@example.com', '123456789'),
    ('Maria', '987654321', 'V9V4U@example.com', '987654321'),
    ('Pedro', '555555555', 'V9V4U@example.com', '555555555');
dsfsd
INSERT INTO item (titulo, categoria) VALUES
    ('Harry Potter', 'Livros'),
    ('Star Wars', 'Filmes'),
    ('Piratas do Caribe', 'Filmes');

INSERT INTO aluguel (data_alguel, data_devolucao) VALUES
    ('2022-01-01', '2022-01-10'),
    ('2022-02-01', '2022-02-10'),
    ('2022-03-01', '2022-03-10');

INSERT INTO funcionario (nome, cargo) VALUES
    ('Marcos', 'Vendedor'),
    ('Ana', 'Vendedor'),
    ('Paula', 'Vendedor');

