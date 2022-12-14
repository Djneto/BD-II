-- CONSULTAS COM FILTROS

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
INSERT INTO aluno (nome) VALUES ('João');
INSERT INTO aluno (nome) VALUES ('Maria');
INSERT INTO aluno (nome) VALUES ('Djalma');
INSERT INTO aluno (nome) VALUES ('Ana');
INSERT INTO aluno (nome) VALUES ('Marcelo');

-- MOSTRAR APENAS UMA OU MAIS COLUNAS DA TABELA POR VALORES ESPECÍFICOS
SELECT nome, idade, ativo FROM aluno;

-- MOSTAR UMA TABELA EM ESPECÍFICO COM MUDANÇA DE NOME DE COLUNA
SELECT 
	   nome AS "Nome do Aluno",
	   matriculado_em AS data_de_matricual, 
	   ativo AS status
FROM aluno;

-- FILTRANDO REGISTROS COM OPERADORES LÓGICOS =, !=, <, >, <=, >=, <>
SELECT * 
FROM aluno
WHERE nome = 'Ana';
;

SELECT * 
FROM aluno
WHERE idade = 20;
;

SELECT * 
FROM aluno
WHERE idade >= 35;
;

-- FILTRANDO REGISTROS IGNORANDO UM CARACTERE ESPECÍFICO
SELECT * 
FROM aluno
WHERE nome
LIKE '_jalma';
;

-- FILTRANDO REGISTROS IGNORANDO UM CARACTERE ESPECÍFICO NOT
SELECT * 
FROM aluno
WHERE nome
NOT LIKE '_jalma';
;

-- FILTRANDO REGISTROS POR SEQUENCIA DE CARACTERES ATÉ UM PONTO DETERMINADO
SELECT * 
FROM aluno
WHERE nome
LIKE 'Mar%';
;
SELECT * 
FROM aluno
WHERE nome
LIKE '%lma';
;

-- FILTRANDO REGISTROS NULOS
SELECT * 
FROM aluno
WHERE idade 
IS NULL;

SELECT * 
FROM aluno
WHERE idade 
IS NOT NULL;

-- FILTRANDO REGISTROS EM INTERVALOS
SELECT * 
FROM aluno
WHERE idade 
BETWEEN 5 AND 16;

-- COMBINANDO FILTROS
SELECT * 
FROM aluno
WHERE nome 
LIKE 'D%'
AND cpf IS NOT NULL;

SELECT * 
FROM aluno
WHERE nome LIKE 'Djalma'
OR nome LIKE 'M%';