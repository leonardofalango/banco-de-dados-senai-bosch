-- Para rodar esse arquivo, o arquivo CreateDatabase.sql deve ter sido rodado antes

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'EscolaVirtual')
    THROW 50404, N'Database não existe, é necessário rodar o arquivo CreateDatabase.sql antes desse arquivo', 1


USE EscolaVirtual;
ALTER TABLE Alunos
    ADD ativo BIT NOT NULL
ALTER TABLE Professores
    ADD ativo BIT NOT NULL



