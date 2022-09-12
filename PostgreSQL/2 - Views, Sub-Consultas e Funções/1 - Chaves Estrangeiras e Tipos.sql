-- CAHVES ESTRANGEIRAS E TIPOS

CREATE DATABASE alura;

DROP TABLE aluno;
DROP TABLE aluno_curso;
DROP TABLE funcionarios;
DROP TABLE curso;

CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
	primeiro_nome VARCHAR(255) NOT NULL,
	ultimo_nome VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria_id INTEGER NOT NULL REFERENCES categoria(id)
);

-- TABELA DE JUNÇÃO FEITA EM RELACIONAMENTOS N-N
CREATE TABLE aluno_curso (
	aluno_id INTEGER NOT NULL REFERENCES aluno(id),
	curso_id INTEGER NOT NULL REFERENCES curso(id),
	PRIMARY KEY (aluno_id, curso_id)
);

INSERT INTO aluno (primeiro_nome,ultimo_nome,data_nascimento) VALUES ('Ana', 'Maria', '2002-12-18');
INSERT INTO aluno (primeiro_nome,ultimo_nome,data_nascimento) VALUES ('José', 'Freitas', '2003-12-27');
INSERT INTO aluno (primeiro_nome,ultimo_nome,data_nascimento) VALUES ('Mario', 'Souza', '1996-05-14');
INSERT INTO aluno (primeiro_nome,ultimo_nome,data_nascimento) VALUES ('Maria', 'Clara', '1999-07-05');
INSERT INTO aluno (primeiro_nome,ultimo_nome,data_nascimento) VALUES ('Júlia', 'Romeno', '2001-01-06');

INSERT INTO categoria (nome) VALUES ('Front-End');
INSERT INTO categoria (nome) VALUES ('Back-End');
INSERT INTO categoria (nome) VALUES ('Dev-Ops');
INSERT INTO categoria (nome) VALUES ('Full-Stack');
INSERT INTO categoria (nome) VALUES ('Mobile');

INSERT INTO curso (nome,categoria_id) VALUES ('Java', 2);
INSERT INTO curso (nome,categoria_id) VALUES ('React', 1);
INSERT INTO curso (nome,categoria_id) VALUES ('React Native', 5);
INSERT INTO curso (nome,categoria_id) VALUES ('PostgreSQL', 3);
INSERT INTO curso (nome,categoria_id) VALUES ('Docker', 4);

INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (1,5);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (2,3);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (3,2);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (4,1);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (5,4);

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM categoria;
SELECT * FROM curso;
