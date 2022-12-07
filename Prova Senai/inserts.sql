-- Para rodar esse arquivo, o arquivo createdatabase.sql deve ter sido rodado antes

USE LeonardoFalango

-- 20 alunos
INSERT INTO Alunos(nome, cpf, data_nascimento) VALUES
    ('Allegra Hicks','93858','May 18, 2023'),
    ('Logan Roman','17412','Dec 30, 2022'),
    ('Garth Waters','622361','May 5, 2022'),
    ('Kennedy Olson','84413','Jul 8, 2022'),
    ('Lisandra Huff','3231','Jul 15, 2023'),
    ('Maile Hampton','784463','Sep 28, 2023'),
    ('Cody Roy','63564','Nov 17, 2023'),
    ('Paloma Berger','5484','May 22, 2022'),
    ('Armando Gonzales','25-27','Mar 28, 2023'),
    ('Calvin Nichols','4737','May 13, 2022'),
    ('Stuart Solomon','17441','Dec 17, 2021'),
    ('Odette Wooten','915789','Feb 25, 2022'),
    ('Chava Duncan','8176','Nov 5, 2022'),
    ('Troy Hogan','360850','Feb 17, 2023'),
    ('McKenzie Chase','66763','Jun 7, 2023'),
    ('Bell Woodard','5289','Mar 28, 2022'),
    ('Azalia Bartlett','74-23','Apr 16, 2022'),
    ('Randall Sosa','91165','Jan 8, 2022'),
    ('Sophia Britt','T7 3HO','May 24, 2022'),
    ('Delilah Petersen','77-49','Aug 20, 2022');

-- 5 professores
INSERT INTO Professores (nome, cpf) VALUES
    ('Ted Mosby O Arquiteto', '901462860-90'),
    ('Professor Girafalico', '619247700-08'),
    ('Walter White', '988587530-11'),
    ('Professor Raimundo', '044873760-41'),
    ('Professor Pasqualete', '405867610-80');

INSERT INTO Cursos (nome) VALUES
    ('Desenvolvimento de Sistemas'),
    ('Mecatronica'),
    ('Informatica');

INSERT INTO Disciplinas (nome) VALUES
    ('Lógica básica'),
    ('Lógica intermediária'),
    ('Lógica avançada'),
    ('Limagem básica'),
    ('Limagem intermediária'),
    ('Limagem avançada'),
    ('Trocagem de tinta básica'),
    ('Limagem intermediária'),
    ('Limagem de tinta avançada');
GO

INSERT INTO DisciplinaCurso (id_curso, id_disciplina) VALUES 
    (1,1),
    (1,2),
    (1,3),
    (2,4),
    (2,5),
    (2,6),
    (3,7),
    (3,8),
    (3,9);
GO

-- 4 turmas com 5 alunos
INSERT INTO Turmas (id_aluno, id_professor, id_disciplina_curso, nota1, nota2, nota3, nota4) VALUES -- 1 turma só possui 1 professor
    (1, 1, 1, 98, 90, 95, NULL),
    (2, 1, 2, 98, 90, 95, NULL),
    (3, 1, 2, 98, 90, 95, NULL),
    (4, 1, 1, 98, 90, 95, NULL),
    (5, 1, 3, 98, 90, 95, NULL),

    (6, 2, 3, 98, 90, NULL, NULL),
    (7, 2, 4, 98, 90, NULL, NULL),
    (8, 2, 4, 98, 90, NULL, NULL),
    (9, 2, 5, 98, 90, NULL, NULL),

    (10, 2, 5, 98, 90, NULL, NULL),
    (11, 3, 6, 98, 90, NULL, NULL),
    (12, 3, 8, 98, 90, NULL, NULL),
    (13, 3, 9, 98, 90, NULL, NULL),
    (14, 3, 8, 98, 90, NULL, NULL),
    (15, 3, 6, 98, 90, NULL, NULL),

    (16, 4, 7, 98, NULL, NULL, NULL),
    (17, 4, 7, 98, NULL, NULL, NULL),
    (18, 4, 9, 98, NULL, NULL, NULL),
    (19, 4, 5, 98, NULL, NULL, NULL),
    (20, 4, 1, 98, NULL, NULL, NULL);
GO

INSERT INTO Pagamentos (id_aluno, boleto, situacao) VALUES
    (1, '2022-05-10', 'pago'),
    (1, '2022-12-10', 'pendente'),
    (2, '2022-05-10', 'pago'),
    (2, '2022-12-10', 'pendente'),
    (3, '2022-05-10', 'pago'),
    (3, '2022-12-10', 'pendente'),
    (4, '2022-05-10', 'pago'),
    (4, '2022-12-10', 'pendente'),
    (5, '2022-05-10', 'pago'),
    (5, '2022-12-10', 'pendente');

INSERT INTO Pagamentos (id_aluno, boleto, situacao) VALUES
    (6, '2022-04-10','pago'),
    (6, '2022-05-10','pago'),
    (6, '2022-12-10','pendente'),
    
    (7, '2022-04-10','pago'),
    (7, '2022-05-10','pago'),
    (7, '2022-12-10','pendente'),
    
    (8, '2022-04-10','pago'),
    (8, '2022-05-10','pago'),
    (8, '2022-12-10','pendente'),
    
    (9, '2022-04-10','pago'),
    (9, '2022-05-10','pago'),
    (9, '2022-12-10','pendente'),
    
    (10, '2022-04-10','pago'),
    (10, '2022-05-10','pago'),
    (10, '2022-12-10','pendente'),
    
    (11, '2022-04-10','pago'),
    (11, '2022-05-10','pago'),
    (11, '2022-12-10','pendente'),
    
    (10, '2022-04-10','pago'),
    (10, '2022-05-10','pago'),
    (10, '2022-12-10','pendente'),
    
    (13, '2022-04-10','pago'),
    (13, '2022-05-10','pago'),
    (13, '2022-12-10','pendente'),
    
    (14, '2022-04-10','pago'),
    (14, '2022-05-10','pago'),
    (14, '2022-12-10','pendente'),
    
    (15, '2022-04-10','pago'),
    (15, '2022-05-10','pago'),
    (15, '2022-12-10','pendente');

INSERT Pagamentos (id_aluno, boleto, situacao) VALUES 
    (16, '2022-03-10','pago'),
    (16, '2022-04-10','pago'),
    (16, '2022-05-10','pago'),
    (16, '2022-12-10','pendente'),

    (17, '2022-03-10','pago'),
    (17, '2022-04-10','pago'),
    (17, '2022-05-10','pago'),
    (17, '2022-12-10','pendente'),

    (18, '2022-03-10','pago'),
    (18, '2022-04-10','pago'),
    (18, '2022-05-10','pago'),
    (18, '2022-12-10','pendente');

INSERT Pagamentos (id_aluno, boleto, situacao) VALUES 
    (19, '2022-01-10', 'pendente'),
    (19, '2022-03-10','pago'),
    (19, '2022-04-10','pago'),
    (19, '2022-05-10','pago'),
    (19, '2022-12-10','pendente'),

    (20, '2022-01-10', 'pendente'),
    (20, '2022-03-10','pago'),
    (20, '2022-04-10','pago'),
    (20, '2022-05-10','pago'),
    (20, '2022-12-10','pendente');
GO


