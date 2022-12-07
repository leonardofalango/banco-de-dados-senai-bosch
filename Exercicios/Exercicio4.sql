USE [TESTE_NOTAS_FISCAIS];

SELECT * FROM dbo.[TABELA DE CLIENTES];
SELECT * FROM dbo.[NOTAS FISCAIS];


SELECT NOME FROM dbo.[NOTAS FISCAIS] notas
	RIGHT JOIN dbo.[TABELA DE CLIENTES] clientes
	ON notas.CPF = clientes.CPF
	WHERE notas.CPF IS NULL


SELECT NOME, COUNT(notas.CPF) as 'Quantidade de notas' FROM dbo.[NOTAS FISCAIS] notas
	RIGHT JOIN dbo.[TABELA DE CLIENTES] clientes
	ON notas.CPF = clientes.CPF
	GROUP BY clientes.NOME
	HAVING COUNT(notas.CPF) = 0


-- Problema desse é que só pega o primeiro, não verifica se ele nao tem nota
SELECT TOP 1 NOME, COUNT(notas.CPF) as 'Quantidade de notas' FROM dbo.[NOTAS FISCAIS] notas
	RIGHT JOIN dbo.[TABELA DE CLIENTES] clientes
	ON notas.CPF = clientes.CPF
	GROUP BY clientes.NOME
	ORDER BY COUNT(notas.CPF)


