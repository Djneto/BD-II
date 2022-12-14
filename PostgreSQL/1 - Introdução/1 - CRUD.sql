-- CRUD BÁSICO

-- DROPAR TABELA
DROP TABLE aluno;

-- CRIAR TABELA
CREATE TABLE aluno(
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura real,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP
);

-- MOSTRAR TABELA
SELECT * FROM aluno;

-- INSERIR NA TABELA
INSERT INTO aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
	)
VALUES (
	'Djalma',
	'12345678901',
	'regularizado',
	21,
	100.50,
	1.81,
	TRUE,
	'2101-12-24',
	'17:30:00',
	'2020-02-08 12:32:45'
)

-- PROCURAR REGISTRO POR ID
SELECT * FROM aluno WHERE id = 1;

-- ATUALIZAR TABELA POR ID
UPDATE aluno SET
	observacao = 'pendente',
	idade = 22,
	ativo = FALSE
WHERE ID = 1;

-- DELETAR UM REGISTRO POR UMA INFORMAÇÃO ESPECÍFICA
DELETE FROM aluno WHERE nome = 'Djalma';

