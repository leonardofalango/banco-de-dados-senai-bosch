CREATE VIEW caloteiros AS
    SELECT a.nome FROM Pagamentos p
        JOIN Alunos a ON  p.id_aluno = a.id 
            WHERE p.situacao = 'em atraso'