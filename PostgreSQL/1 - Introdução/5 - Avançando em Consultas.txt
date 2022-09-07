-- AVANÇANDO COM CONSULTAS
DROP TABLE funcionarios;
CREATE TABLE funcionarios (
	id SERIAL PRIMARY KEY,
	matricula VARCHAR(10),
	nome VARCHAR(255),
	sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Djalma','Bastos');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius','Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico','Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João','Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Ana','Maria');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto','Martins');

-- ORDENANDO POR NOME EM ORDEM CRESCENTE 
SELECT * FROM funcionarios
ORDER BY nome;

-- ORDENANDO POR NOME EM ORDEM DECRESCENTE
SELECT * FROM funcionarios
ORDER BY nome DESC;

-- ORDENANDO POR MAIS DE UM CAMPO
SELECT * FROM funcionarios
ORDER BY nome, matricula DESC;

-- ORDENANDO POR COLUNA DA TABELA
SELECT * FROM funcionarios
ORDER BY 3,4,2;

-- OUTROS TIPOS DE ORDENAÇÃO
SELECT * FROM funcionarios
ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;

-- LIMITANDO CONSULTAS
SELECT * FROM funcionarios
ORDER BY nome LIMIT 5;

-- PAGINAÇÃO DEFINRIR O COMEÇO DOS REGISTROS
SELECT * FROM funcionarios
ORDER BY id LIMIT 5
OFFSET 1;

-- FUNÇÕES DE AGRAGAÇÃO
-- COUNT -RETORNA A QUANTIDADE DE REGISTROS
-- SUM 	 -RETORNA A SOMA DOS REGISTROS
-- MAX   -RETORNA O MAIOR VALOR DOS REGISTROS
-- MIN   -RETORNA O MENOR VALOR DOS REGISTROS
-- AVG   -RETORNA A MÉDIA DOS REGISTROS

SELECT COUNT(id),
	   SUM(id), 
	   MAX(id),
	   MIN(id),
	   ROUND AVG(id)
	   FROM funcionarios;

-- EVITANDO REGISTROS DUPLICADOS
SELECT DISTINCT
	nome FROM funcionarios ORDER BY nome;
	
-- UTILIZANDO GROUP BY EM FUNÇÕES DE AGRAGAÇÃO
SELECT DISTINCT
	nome, sobrenome,
	COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
SELECT curso.nome,
	COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso on aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
	GROUP BY 1
	GROUP BY 1;
	
-- FILTROS EM CONSULTAS AGRUPADAS
SELECT curso.nome,
COUNT(aluno.id)
FROM curso
LEFT JOIN aluno_curso ON aluno_curso_id = curso.id
LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
GROUP BY 1
HAVING COUNT(aluno.id) = 0;


SELECT nome, COUNT(id)
FROM funcionarios
GROUP BY nome
HAVING COUNT(id) > 1;