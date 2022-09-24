-- USANDO FUNÇÕES

-- FUNÇÕES DE STRING
SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo FROM aluno;

SELECT CONCAT('Ana', ' ', 'Dias');

-- FUNÇÕES DE DATA
SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo,
	   EXTRACT (YEAR FROM AGE(data_nascimento)) AS idade
FROM aluno;

-- FUNÇÕES MATEMÁTICAS

-- CONVERSÃO DE DADOS
SELECT TO_CHAR(NOW(), 'DD/MM/YYYY');

SELECT TO_CHAR(128.3::REAL,'999D99');