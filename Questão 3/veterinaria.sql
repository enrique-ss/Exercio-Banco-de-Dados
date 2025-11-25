DROP DATABASE IF EXISTS veterinaria;
CREATE DATABASE veterinaria;
USE veterinaria;

CREATE TABLE proprietario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    telefone VARCHAR(55) NOT NULL,
    email VARCHAR(55) NOT NULL,
    cpf VARCHAR(55) NOT NULL
);

CREATE TABLE pet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    raca VARCHAR(55) NOT NULL,
    idade INT NOT NULL,
    proprietario_id INT NOT NULL,
    FOREIGN KEY (proprietario_id) REFERENCES proprietario(id)
);

CREATE TABLE atendimento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(55) NOT NULL,
    data_atendimento DATE NOT NULL,
    pet_id INT NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES pet(id)
);

CREATE TABLE servicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(55) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    atendimento_id INT NOT NULL,
    FOREIGN KEY (atendimento_id) REFERENCES atendimento(id)
);

INSERT INTO proprietario (nome, telefone, email, cpf) VALUES
    ('Proprietario 1', '123456789', 'V9V4U@example.com', '123456789'),
    ('Proprietario 2', '987654321', 'V9V4U@example.com', '987654321'),
    ('Proprietario 3', '555555555', 'V9V4U@example.com', '555555555');

INSERT INTO pet (nome, raca, idade, proprietario_id) VALUES
    ('Pet 1', 'Raca 1', 1, 1),
    ('Pet 2', 'Raca 2', 2, 2),
    ('Pet 3', 'Raca 3', 3, 3);

INSERT INTO atendimento (descricao, data_atendimento, pet_id) VALUES
    ('Atendimento 1', '2022-01-01', 1),
    ('Atendimento 2', '2022-02-01', 2),
    ('Atendimento 3', '2022-03-01', 3);

INSERT INTO servicos (nome_servico, preco, atendimento_id) VALUES
    ('Consulta', 100.00, 1),
    ('Vacina', 200.00, 2),
    ('Banho', 300.00, 3);

SELECT * FROM proprietario;
SELECT * FROM pet;
SELECT * FROM atendimento;
SELECT * FROM servicos;