-- ESTRUTURA DO BANCO

-- CRIANDO UM BANCO

-- DEFINIÇÕES EM TABELAS
CREATE TEMPORARY TABLE a (
	coluna1 VARCHAR(255) NOT NULL CHECK(coluna1 <> ''),
	coluna2 VARCHAR(255) NOT NULL,
	UNIQUE(coluna1,coluna2)
);

-- ALTERANDO INFORMAÇÕES
ALTER TABLE a RENAME TO teste;
SELECT * FROM teste;

ALTER TABLE teste RENAME coluna1 TO primeira_coluna
ALTER TABLE teste RENAME coluna2 TO segunda_coluna

-- DDL vs DML