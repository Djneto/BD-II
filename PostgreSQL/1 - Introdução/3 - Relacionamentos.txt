-- RELACIONAMENTOS
DROP TABLE aluno;
DROP TABLE curso;


-- CRIANDO TABELA DE ID NÃO NULO E ÚNICO (CONCEITO DE PK)
CREATE TABLE curso (
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE curso (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

-- CRIANDO TABELA COM PRIMARY KEY
CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'PostgreSQL');
INSERT INTO curso (id, nome) VALUES (2, 'SQL');
INSERT INTO aluno (id) VALUES ('Djalma');
INSERT INTO aluno (id) VALUES ('Maria');

SELECT * FROM curso;
SELECT * FROM aluno;

-- CRIANDO RELACIONAMENTOS
DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
);

SELECT * FROM aluno_curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

-- CONSULTAS COM RELACIONAMENTOS
-- MOSTRANDO TODOS OS REGISTROS DOS ALUNOS MATRICULADOS E OS RESPECTIVOS CURSOS
SELECT * FROM aluno
JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT aluno.nome AS "Nome",
	   curso.nome AS "Curso"
FROM aluno
JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
JOIN curso ON curso.id = aluno_curso.curso_id;

INSERT INTO aluno (nome) VALUES ('Ana');
INSERT INTO curso (nome) VALUES ('HTML');


-- MOSTRANDO TODOS OS ALUNOS MATRICULADOS OU NÃO E SEUS RESPECTIVOS CURSOS
SELECT aluno.nome AS "Nome",
	   curso.nome AS "Curso"
FROM aluno
LEFT JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
LEFT JOIN curso ON curso.id = aluno_curso.curso_id;

-- MOSTRANDO TODOS OS CURSOS SEUS RESPECTIVOS ALUNOS

SELECT aluno.nome AS "Nome",
	   curso.nome AS "Curso"
FROM aluno
RIGHT JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
RIGHT JOIN curso ON curso.id = aluno_curso.curso_id;

-- MOSTRANDO TODOS OS DADOS DE ALUNO E CURSO MESMO NULOS
SELECT aluno.nome AS "Nome",
	   curso.nome AS "Curso"
FROM aluno
FULL JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
FULL JOIN curso ON curso.id = aluno_curso.curso_id;

-- MOSTRANDO UMA RELACAO DE TODOS OS ALUNOS PARA TODOS OS CURSOS
SELECT aluno.nome AS "Nome",
	   curso.nome AS "Curso"
FROM aluno
CROSS JOIN curso;

