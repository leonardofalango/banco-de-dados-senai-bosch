USE master;
/* -> Verificando se a database 'LeonardoFalango' existe */
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'LeonardoFalango')
	CREATE DATABASE LeonardoFalango;

ELSE
	DROP DATABASE LeonardoFalango
	CREATE DATABASE LeonardoFalango; /* Se existir recria ela, ou seja, dropa ele e cria de novo */

USE LeonardoFalango; -- Usando a database LeonardoFalango


/* Criação de tabelas */
GO
CREATE TABLE TBUsuarios (
	id INT PRIMARY KEY IDENTITY(10000,1) NOT NULL,
	username VARCHAR(50) NOT NULL,
	pass VARCHAR(MAX) NOT NULL,
	currency float NOT NULL,
	isAdm INT NOT NULL
)

INSERT INTO dbo.TBUsuarios (username, pass, currency, isAdm) VALUES
	('murilov', 'senhaforte', 102.0, 0),
	('Leonardo Falango', 'SeNhAmAiSfOrTe', 9113.0, 1);

SELECT * FROM dbo.TBUsuarios;

UPDATE dbo.TBUsuarios
SET currency = 100, pass = 'TrocandoDeSenha123'
WHERE username = 'murilov'

	