-- Dropando e recriando a database
USE master;
IF EXISTS (SELECT TOP 1 * FROM sys.databases WHERE name = 'LeonardoFalango')
    DROP DATABASE LeonardoFalango
GO
CREATE DATABASE LeonardoFalango
GO
USE LeonardoFalango
GO

/* Criação das tabelas */

CREATE TABLE Alunos (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(12) NOT NULL,
    data_nascimento DATE NOT NULL
)

CREATE TABLE Professores (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(12) NOT NULL
)

CREATE TABLE Cursos (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(50),
    ativo BIT DEFAULT 1
)

CREATE TABLE Disciplinas (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(30) NOT NULL,
    ativo BIT DEFAULT 1
)
GO

CREATE TABLE DisciplinaCurso(
    id INT PRIMARY KEY IDENTITY,
    id_curso INT,
    id_disciplina INT,
    ativo BIT DEFAULT 1,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id)
)
GO

CREATE TABLE Turmas (
    id INT PRIMARY KEY IDENTITY,
    id_aluno INT,
    id_professor INT,
    id_disciplina_curso INT,
    nota1 INT,
    nota2 INT,
    nota3 INT,
    nota4 INT,
    nota_final INT,
    ativo BIT DEFAULT 1,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id),
    FOREIGN KEY (id_professor) REFERENCES Professores(id),
    FOREIGN KEY (id_disciplina_curso) REFERENCES DisciplinaCurso(id)
)
GO

CREATE TABLE Pagamentos (
    id INT PRIMARY KEY IDENTITY,
    id_aluno INT,
    boleto DATE NOT NULL,
    situacao VARCHAR(9) NOT NULL,
    CHECK (situacao in ('pago', 'em atraso', 'pendente')),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
)
GO

/* Fim da criação das tabelas */
