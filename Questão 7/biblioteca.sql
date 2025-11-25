DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE livros(
  id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  id_autor INT NOT NULL,
  FOREIGN KEY (id_autor) REFERENCES autores(id)
);

CREATE TABLE usuarios(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE emprestimos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_emprestimo DATE NOT NULL,
  data_devolucao DATE,
  id_usuario INT NOT NULL,
  id_livros INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
  FOREIGN KEY (id_livros) REFERENCES livros(id)
);

INSERT INTO autores (nome) VALUES
('Fyodor Dostoevsky'),
('Albert Camus'),
('James Clear');

INSERT INTO livros (titulo, id_autor) VALUES
('Atomic Habits', 3),
('Crime and Punishment', 1),
('The Stranger', 2);

INSERT INTO usuarios (nome, email) VALUES
('Roberto', 'roberto@gmail.com'),
('Alberto', 'alberto@gmail.com'),
('Rafael', 'rafael@gmail.com');

INSERT INTO emprestimos (data_emprestimo, data_devolucao, id_usuario, id_livros) VALUES
('2025-11-25', '2025-12-03', 1, 1),
('2025-11-20', '2025-11-27', 2, 2),
('2025-11-18', '2025-11-25', 3, 3);

SELECT * FROM autores;
SELECT * FROM livros;
SELECT * FROM usuarios;
SELECT * FROM emprestimos;

UPDATE usuarios SET email = "roberto123@gmail.com" WHERE id = 1;
UPDATE usuarios SET email = 'alberto123@gmail.com' WHERE id = 2;
UPDATE usuarios SET email = 'rafael123@gmail.com' WHERE id = 3;

SELECT * FROM usuarios;

DELETE FROM emprestimos WHERE id_usuario = 1;
DELETE FROM emprestimos WHERE id_usuario = 2;

SELECT * FROM emprestimos;