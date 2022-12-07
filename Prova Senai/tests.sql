-- Testando os triggers
SELECT  c.nome, d.nome, dc.ativo FROM DisciplinaCurso dc
    JOIN dbo.Cursos c ON dc.id_curso = c.id
    JOIN dbo.Disciplinas d ON dc.id_disciplina = d.id

SELECT nome, ativo FROM Disciplinas
SELECT nome, ativo FROM Cursos

-- TODOS ESTÃO ATIVOS
-- AGR MUDAR UM PARA INATIVO

UPDATE Disciplinas
    SET ativo = 0
        WHERE id = 1

SELECT  c.nome, d.nome, dc.ativo FROM DisciplinaCurso dc
    JOIN dbo.Cursos c ON dc.id_curso = c.id
    JOIN dbo.Disciplinas d ON dc.id_disciplina = d.id
        WHERE dc.ativo = 0

-- AGR TESTANDO A TRIGGER DO CURSO
UPDATE Cursos
    SET ativo = 0
        WHERE id = 1

SELECT  c.nome, d.nome, dc.ativo FROM DisciplinaCurso dc
    JOIN dbo.Cursos c ON dc.id_curso = c.id
    JOIN dbo.Disciplinas d ON dc.id_disciplina = d.id
        WHERE dc.ativo = 0


-- PROCEDURE TEST
SELECT * FROM Pagamentos WHERE situacao = 'pendente'
EXEC verify_boletos
SELECT * FROM Pagamentos WHERE situacao = 'pendente'


-- VIEWS TEST
SELECT * FROM aluno_disciplina_nota
SELECT * FROM caloteiros