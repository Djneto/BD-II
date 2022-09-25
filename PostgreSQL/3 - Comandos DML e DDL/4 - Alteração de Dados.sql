-- ALTERAÇÃO DE DADOS

-- UPDATE FROM
SELECT * FROM academico.curso ORDER BY 1;

UPDATE academico.curso SET nome = 'PHP Básico' WHERE id = 4;

UPDATE teste.curso_programacao SET nome_curso = nome
FROM academico.curso WHERE teste.curso_programacao.id_curso = academico.curso.id
AND academico.curso.id < 10;

SELECT * FROM teste.curso_programacao;

-- DELETE FROM
DELETE FROM curso
USING categoria
WHERE categoria.id = curso.categoria_id
AND categoria.nome = 'Teste';

DELETE FROM teste.curso_programacao WHERE id_curso = 10;

-- TRANSAÇÕES
BEGIN;
DELETE FROM teste.curso_programacao;

ROLLBACK;

COMMIT;