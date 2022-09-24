-- EXECUTANDO SUB-CONSULTAS

-- OPERADOR IN
SELECT * FROM curso;	
SELECT * FROM categoria;
SELECT * FROM alunos;

SELECT * FROM curso WHERE categoria_id IN (1, 4);

-- QUERIES ANINHADAS
SELECT * FROM curso WHERE categoria_id IN (
SELECT id FROM categoria WHERE nome NOT LIKE '% %');