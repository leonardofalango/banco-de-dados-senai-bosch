CREATE VIEW aluno_disciplina_nota AS
    SELECT a.nome AS NomeAluno, d.nome AS NomeDisciplina, t.nota1, t.nota2, t.nota3, t.nota4, t.nota_final FROM Turmas t
        JOIN Alunos a ON t.id_aluno = a.id
        JOIN DisciplinaCurso dc ON t.id_disciplina_curso = dc.id
        JOIN Disciplinas d ON dc.id_disciplina = d.id;