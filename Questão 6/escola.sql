DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    data_nascimento VARCHAR(20) NOT NULL,
    matricula INT NOT NULL UNIQUE
);

CREATE TABLE notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina VARCHAR(45) NOT NULL,
    nota DECIMAL(10 ,2) NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id)
);

INSERT INTO aluno (nome, data_nascimento, matricula) VALUES
    ('João', '2000-01-01', 1),
    ('Maria', '2000-02-01', 2),
    ('Pedro', '2000-03-01', 3),
    ('Ana', '2000-04-01', 4),
    ('Lucas', '2000-05-01', 5);

INSERT INTO notas (aluno_id, disciplina, nota) VALUES
    (1, 'Matemática', 2.5),
    (1, 'Português', 3.5),
    (2, 'Matemática', 4.5),
    (2, 'Português', 5.5),
    (3, 'Matemática', 1.5),
    (3, 'Português', 1.5),
    (4, 'Matemática', 5.5),
    (4, 'Português', 6.5),
    (5, 'Matemática', 4.5),
    (5, 'Português', 5.5);

SELECT * FROM aluno;
SELECT * FROM notas;

DELETE FROM notas
WHERE nota < 3;

SELECT * FROM notas;

UPDATE aluno
SET matricula = 6
WHERE id = 1;

SELECT * FROM aluno;