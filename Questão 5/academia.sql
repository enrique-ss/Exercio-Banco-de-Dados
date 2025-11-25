DROP DATABASE IF EXISTS academia;
CREATE DATABASE academia;
USE academia;

CREATE TABLE aluno(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(15) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE plano(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  valor DECIMAL(6,2) NOT NULL,
  duracao INT NOT NULL
);

CREATE TABLE matricula(
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_inicio DATETIME NOT NULL,
  data_fim DATETIME NOT NULL,
  id_aluno INT NOT NULL,
  id_plano INT NOT NULL,
  FOREIGN KEY (id_aluno) REFERENCES aluno(id),
  FOREIGN KEY (id_plano) REFERENCES plano(id)
);

INSERT INTO aluno (nome, telefone, email) VALUES
('Alisson', 53991088441, 'alissonrc@gmail.com'),
('Roberto', 53991998881, 'roberto@gmail.com'),
('Lucia', 53991121141, 'lucia@gmail.com');

INSERT INTO plano (nome, valor, duracao) VALUES
("BÃ¡sico", 14.99, 30),
("Premium", 34.99, 30),
("Premium+", 114.99, 30);

INSERT INTO matricula (data_inicio, data_fim, id_aluno, id_plano) VALUES
(now(), '2025-12-25', 1, 1),
(now(), '2025-12-25', 2, 2),
(now(), '2025-12-25', 3, 3);

SELECT * FROM aluno;
SELECT * FROM matricula;
SELECT * FROM plano;

UPDATE matricula SET id_plano = 2 WHERE id_aluno = 3;
UPDATE matricula SET id_plano = 1 WHERE id_aluno = 2;

SELECT * FROM matricula;

DELETE FROM matricula WHERE id_aluno = 1;

SELECT * FROM matricula;