-- AULA 03 - 29/08/2022

-- APFA AS TABELAS

DROP TABLE ENDERECO;
DROP TABLE FISICA;
DROP TABLE JURIDICA;
DROP TABLE PESSOA;

-- CRIAS AS TABELAS SEM RELACIONAMENTO

CREATE TABLE ENDERECO (
	id INT NOT NULL,
	logradouro VARCHAR(60),
	numero INT DEFAULT 0,
	cep CHAR(8) NOT NULL,
	uf CHAR(2) NOT NULL
);

CREATE TABLE FISICA (
	id INT NOT NULL,
	sexo CHAR(1),
	cpf CHAR(11) NOT NULL
);

CREATE TABLE JURIDICA (
	id INT NOT NULL,
	inscricao INT NOT NULL,
	cnpj CHAR(14) NOT NULL
);

CREATE TABLE PESSOA (
	id INT NOT NULL,
	nome VARCHAR(100) NOT NULL
);

-- CRIA AS CHAVES PRIMARIAS

ALTER TABLE ENDERECO ADD CONSTRAINT PK_ENDERECO PRIMARY KEY(ID);

ALTER TABLE FISICA ADD CONSTRAINT PK_FISICA PRIMARY KEY(ID);

ALTER TABLE JURIDICA ADD CONSTRAINT PK_JURIDICA PRIMARY KEY(ID);

ALTER TABLE PESSOA ADD CONSTRAINT PK_PESSOA PRIMARY KEY(ID);

-- CRIA AS CHAVES ESTRANGEIRAS

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_PESSOA
FOREIGN KEY(ID) REFERENCES PESSOA(ID);

ALTER TABLE FISICA ADD CONSTRAINT FK_FISICA_PESSOA
FOREIGN KEY(ID) REFERENCES PESSOA(ID);

ALTER TABLE JURIDICA ADD CONSTRAINT FK_JURIDICA_PESSOA
FOREIGN KEY(ID) 