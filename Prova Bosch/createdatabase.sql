USE master;
IF EXISTS (SELECT TOP 1 * FROM sys.databases WHERE name = 'LeonardoFalango')
    DROP DATABASE LeonardoFalango
GO
CREATE DATABASE LeonardoFalango
GO
USE LeonardoFalango
GO

/* Criando as tabelas */

CREATE TABLE Departamentos (
    dep_id INT PRIMARY KEY IDENTITY,
    dep_nome VARCHAR(20),
    dep_local INT
)
GO

CREATE TABLE Funcionarios (
    edv INT PRIMARY KEY,
    nome VARCHAR(50),
    lider VARCHAR(15),
    data_de_contratacao DATE,
    salario INT,
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES Departamentos(dep_id)
)

CREATE TABLE Grade_salarial (
    grade INT PRIMARY KEY,
    sal_min INT,
    sal_max INT
)
