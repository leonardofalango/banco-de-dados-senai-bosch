USE master;
IF EXISTS(SELECT * FROM sys.databases WHERE name = 'EscolaVirtual')
    DROP DATABASE Escolavirtual;
CREATE DATABASE EscolaVirtual;
GO

USE EscolaVirtual;
GO

CREATE TABLE Alunos (
    id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    dt_nascimento DATE,
    cpf VARCHAR(12) NOT NULL,
    -- CHECK (YEAR(dt_nascimento) > 1921)
)

CREATE TABLE Professores (
    id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(12) NOT NULL
)

CREATE TABLE Cursos (
    id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor MONEY DEFAULT 200,
)
GO

CREATE TABLE Turmas (
    id INT IDENTITY PRIMARY KEY,
    id_curso INT,
    dt_inicio DATE,
    dt_termino DATE,
    id_professor INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id),
    FOREIGN KEY (id_professor) REFERENCES Professores(id)
)
GO

CREATE TABLE AlunosXTurmas (
    id INT IDENTITY PRIMARY KEY,
    id_turma INT,
    id_aluno INT,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
)
GO


ALTER TABLE Alunos
    ADD CONSTRAINT check_data_nascimento
    CHECK(YEAR(dt_nascimento) > 1921)
GO
-- ALTER TABLE Cursos
--     ADD CONSTRAINT default_value
--         DEFAULT 200 FOR valor
