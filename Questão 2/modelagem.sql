DROP DATABASE IF EXISTS modelagem;
CREATE DATABASE modelagem;
USE modelagem;

CREATE TABLE livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(55) NOT NULL,
    autor VARCHAR(55) NOT NULL,
    ano_publicacao INT NOT NULL
);

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL UNIQUE,
    email VARCHAR(55) NOT NULL UNIQUE
);

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    cargo VARCHAR(55) NOT NULL
);

CREATE TABLE emprestimo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,
    funcionario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (livro_id) REFERENCES livro(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);

INSERT INTO livro (titulo, autor, ano_publicacao) VALUES
    ('Livro 1', 'Autor 1', 2022),
    ('Livro 2', 'Autor 2', 2022),
    ('Livro 3', 'Autor 3', 2022);

INSERT INTO usuario (nome, email) VALUES
    ('Usuario 1', 'V9V4U@example.com'),
    ('Usuario 2', 'V9V4U@example.com'),
    ('Usuario 3', 'V9V4U@example.com');

INSERT INTO funcionario (nome, cargo) VALUES
    ('Funcionario 1', 'Cargo 1'),
    ('Funcionario 2', 'Cargo 2'),
    ('Funcionario 3', 'Cargo 3');

INSERT INTO emprestimo (data_emprestimo, data_devolucao, usuario_id, livro_id, funcionario_id) VALUES
    ('2022-01-01', '2022-01-05', 1, 1, 1),
    ('2022-02-01', '2022-02-05', 2, 2, 2),
    ('2022-03-01', '2022-03-05', 3, 3, 3);

SELECT * FROM emprestimo;
SELECT * FROM livro;
SELECT * FROM usuario;
SELECT * FROM funcionario;

ALTER TABLE usuario ADD COLUMN cpf VARCHAR(11) NOT NULL;
INSERT INTO usuario (nome, email, cpf) VALUES
    ('Usuario 4', 'V9V4U@example.com', '123456789'),
    ('Usuario 5', 'V9V4U@example.com', '987654321');

ALTER TABLE funcionario CHANGE COLUMN cargo funcao VARCHAR(55) NOT NULL;

SELECT * FROM funcionario;

ALTER TABLE livro ADD COLUMN genero_literario VARCHAR(55) NOT NULL;
INSERT INTO livro (titulo, autor, ano_publicacao, genero_literario) VALUES
    ('Livro 4', 'Autor 4', 2022, 'Genero 1'),
    ('Livro 5', 'Autor 5', 2022, 'Genero 2');

SELECT * FROM livro;