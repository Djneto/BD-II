-- PARTICULARIDADES POSTGRESQL

-- SEQUENCIAS
CREATE SEQUENCE eu_criei;

SELECT NEXTVAL('eu_criei');

CREATE TEMPORARY TABLE auto (
	id SERIAL PRIMARY KEY DEFAULT NEXTVAL('eu_criei'),
	nome VARCHAR(30) NOT NULL
);

INSERT INTO auto (nome) VALUES ('Djalma Bastos');
INSERT INTO auto (id, nome) VALUES (2, 'Djalma Bastos');

SELECT * FROM auto;

-- TIPOS
-- ENUM
CREATE TYPE CLASSIFICACAO AS ENUM ('LIVRE', '12_anos', '14_anos', '16_anos', '18_anos');

CREATE TEMPORARY TEBLE filme (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	classificacao CLASSIFICACAO
);

INSERT INTO filme (nome. classificacao) VALUES ('Um filme qualquer', 'LIVRE');