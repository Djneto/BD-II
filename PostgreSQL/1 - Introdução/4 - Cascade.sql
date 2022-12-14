-- CASCADE
DROP TABLE aluno;
DROP TABLE curso;

CREATE TABLE curso (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);
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

-- DELETE CASCADE
-- UPDATE CASCADE
-- DLETA O REGISTRO E SEUS RELACIONAMENTOS
-- ON DELETE POR PADRAO (RESTRICT)
-- ON UPDATE POR PADRAO (RESTRICT)
-- RESTRICT IMPEDE A EXCLUSAO DA TABELA QUE COMPOE A CHAVE ESTRANGEIRA
DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
);

UPDATE aluno SET id = 10 WHERE id = 2;
DELETE FROM aluno WHERE id = 1;

SELECT * FROM aluno_curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);
INSERT INTO aluno (nome) VALUES ('Ana');
INSERT INTO curso (nome) VALUES ('HTML');


