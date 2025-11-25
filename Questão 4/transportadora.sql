DROP DATABASE IF EXISTS transportadora;
CREATE DATABASE transportadora;
USE transportadora;

CREATE TABLE cliente(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  contato VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE motorista(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(15) NOT NULL UNIQUE,
  habilitacao VARCHAR(9) NOT NULL UNIQUE
);

CREATE TABLE entregas(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  motorista_id INT NOT NULL,
  FOREIGN KEY (motorista_id) REFERENCES motorista(id)
);

CREATE TABLE ordem_envio(
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_criacao DATETIME NOT NULL,
  status_atual VARCHAR(16) NOT NULL,
  cliente_id INT NOT NULL,
  motorista_id INT NOT NULL,
  pacotes_id INT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES cliente(id),
  FOREIGN KEY (pacotes_id) REFERENCES pacotes(id),
  FOREIGN KEY (motorista_id) REFERENCES motorista(id)
);

CREATE TABLE pacotes(
  id INT PRIMARY KEY AUTO_INCREMENT,
  peso INT NOT NULL,
  largura INT NOT NULL,
  altura INT NOT NULL,
  comprimento INT NOT NULL
);

INSERT INTO cliente (nome, endereco, contato) VALUES
('Rafael', 'Av. Manoel', 53991784506),
('Daniela', 'Av. Antonio', 53991445590),
('Miguel', 'Av. Peres', 53991412509);

INSERT INTO motorista (nome, telefone, habilitacao) VALUES
('AntÃ´nio', 53991546798, '123456789'),
('Pedro', 53991557894, '987654321'),
('Maria', 53984057984, '111222333');

INSERT INTO pacotes (peso, largura, altura, comprimento) VALUES
(33, 2, 4, 10),
(21, 2, 4, 10),
(10, 2, 4, 10);

INSERT INTO ordem_envio (data_criacao, status_atual, cliente_id, motorista_id) VALUES
(now(), 'Enviado', 1, 1),
(now(), 'Preparado', 2, 2),
(now(), 'Enviado', 3, 3);

INSERT INTO entregas (motorista_id) VALUES
(1),
(2),
(3);

SELECT * FROM cliente;
SELECT * FROM motorista;
SELECT * FROM pacotes;
SELECT * FROM entregas;
SELECT * FROM ordem_envio;