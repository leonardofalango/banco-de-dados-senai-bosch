

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'EscolaVirtual')
    THROW 50404, N'Database não existe, é necessário rodar o arquivo CreateDatabase.sql antes desse arquivo', 1

BEGIN TRY SELECT ativo FROM Alunos END TRY
BEGIN CATCH PRINT('Database não existe, é necessário rodar o arquivo CreateDatabase.sql antes desse arquivo') END CATCH
    

INSERT INTO Cursos (nome, valor) VALUES
    ('Curso de informática', 699.99),
    ('Curso de mecatrônica', 59.90),
    ('Curso de Desenvolvimento', 999.90),
    ('Curso de LOL', 10.90)
INSERT INTO Cursos (nome) VALUES
    ('Curso de 200tão'),
    ('Curso de culinária')
GO

INSERT INTO Professores (nome, cpf, ativo) VALUES
    ('Professor Girafalico', '619247700-08', 1),
    ('Walter White', '988587530-11', 1),
    ('Professor Raimundo', '044873760-41', 0),
    ('Professor Pasqualete', '405867610-80', 0),
    ('Ted Mosby O Arquiteto', '901462860-90', 1),
    ('Doutor House', '313967570-40', 0)
GO

INSERT INTO Alunos (nome, dt_nascimento, cpf, ativo) VALUES
    ('Jefferson','Mar 1, 2023','534416132-46','1'),
    ('Mccall','Aug 28, 2022','186368332-14','1'),
    ('Coleman','Jan 29, 2022','588315828-33','0'),
    ('Rosa','Sep 27, 2022','955192734-17','1'),
    ('Norman','Feb 28, 2022','453762921-92','0'),
    ('Kaufman','Jun 5, 2022','834420745-75','1'),
    ('Horne','Aug 29, 2022','728666069-02','0'),
    ('Pace','Feb 17, 2023','186142701-76','0'),
    ('Adkins','Nov 10, 2023','631407477-73','1'),
    ('Wong','Apr 11, 2022','243319952-82','0')
GO

INSERT INTO Turmas (id_curso, dt_inicio, dt_termino, id_professor) VALUES
    (1, 'Mar 11, 2022', 'Mar 11, 2023', 1),
    (2, 'Apr 15, 2021', 'Apr 15, 2023', 2),
    (4, 'Sep 23, 2022', 'Sep 23, 2023', 4),
    (3, 'Jan 10, 2022', 'Jan 10, 2023', 6),
    (6, 'Nov 30, 2022', 'Nov 30, 2023', 6)
GO
