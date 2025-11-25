DROP DATABASE IF EXISTS locadora;
CREATE DATABASE locadora;
USE locadora;

CREATE TABLE cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    telefone VARCHAR(55) NOT NULL,
    email VARCHAR(55) NOT NULL,
    cpf VARCHAR(55) NOT NULL
);

CREATE TABLE item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(55) NOT NULL,
    categoria VARCHAR(55) NOT NULL
);

CREATE TABLE funcionario (
    funcionario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    cargo VARCHAR(55) NOT NULL
);

CREATE TABLE aluguel (
    aluguel_id INT AUTO_INCREMENT PRIMARY KEY,
    data_aluguel DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    cliente_id INT NOT NULL,
    item_id INT NOT NULL,
    funcionario_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(funcionario_id)
);

INSERT INTO cliente (nome, telefone, email, cpf) VALUES
    ('João', '123456789', 'V9V4U@example.com', '123456789'),
    ('Maria', '987654321', 'V9V4U@example.com', '987654321'),
    ('Pedro', '555555555', 'V9V4U@example.com', '555555555');

INSERT INTO item (titulo, categoria) VALUES
    ('Harry Potter', 'Livros'),
    ('Star Wars', 'Filmes'),
    ('Piratas do Caribe', 'Filmes');

INSERT INTO funcionario (nome, cargo) VALUES
    ('Marcos', 'Vendedor'),
    ('Ana', 'Vendedor'),
    ('Paula', 'Vendedor');

INSERT INTO aluguel (data_aluguel, data_devolucao, cliente_id, item_id, funcionario_id) VALUES
    ('2022-01-01', '2022-01-05', 1, 1, 1),
    ('2022-02-01', '2022-02-05', 2, 2, 2),
    ('2022-03-01', '2022-03-05', 3, 3, 3);

SELECT * FROM aluguel;
SELECT * FROM item;
SELECT * FROM cliente;
SELECT * FROM funcionario;

ALTER TABLE cliente ADD COLUMN rg VARCHAR(11) NOT NULL;
INSERT INTO cliente (nome, telefone, email, cpf, rg) VALUES
    ('Julia', '123456789', 'V9V4U@example.com', '123456789', '123456789'),
    ('Juca', '987654321', 'V9V4U@example.com', '987654321', '987654321');