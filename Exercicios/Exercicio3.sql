/* Usaremos um banco de dados que possui um script para ser criado. */
USE [TESTE_NOTAS_FISCAIS]; --Local do arquivo: "../Criacao de DataBases/CriacaoExercicios.sql"

SELECT * FROM dbo.[NOTAS FISCAIS] as [Notas_Fiscais];
SELECT * FROM dbo.[ITENS NOTAS FISCAIS] as [Itens];
SELECT * FROM dbo.[TABELA DE CLIENTES] as [Clientes];
SELECT * FROM dbo.[TABELA DE PRODUTOS] as [Produtos];
SELECT * FROM dbo.[TABELA DE VENDEDORES] as [Vendedores];


-- XOR A BOY
SELECT TOP 1 * FROM dbo.[TABELA DE PRODUTOS]
	WHERE TAMANHO LIKE '1 L%'
	ORDER BY [PREÇO DE LISTA] DESC

-- GROUP BY
SELECT SABOR, COUNT(SABOR) AS 'Quantidade de Produtos'
	FROM dbo.[TABELA DE PRODUTOS] 
	GROUP BY [SABOR]
SELECT * FROM dbo.[TABELA DE PRODUTOS]
	WHERE SABOR LIKE 'laranja';


-- EXERCICIO 2
SELECT [ESTADO], SUM([LIMITE DE CREDITO])
	FROM dbo.[TABELA DE CLIENTES]
	GROUP BY [ESTADO]
--para colocar filtros usa-se a clausula having
SELECT [ESTADO], SUM([LIMITE DE CREDITO])
	FROM dbo.[TABELA DE CLIENTES]
	GROUP BY [ESTADO]
	HAVING SUM([LIMITE DE CREDITO]) > 900000;
--voce pode usar where tambem
SELECT ESTADO, SUM([LIMITE DE CREDITO])
	FROM dbo.[TABELA DE CLIENTES]
	WHERE [ESTADO] = 'SP'
	GROUP BY ESTADO


/*EXERCICIO 3
faca um select mostrando por agrupamento de estado e
somando o volume de compra e mostrando apenas quem tem
o volume de compra maior que 5000
*/

SELECT [ESTADO], SUM([VOLUME DE COMPRA])
	FROM dbo.[TABELA DE CLIENTES]
	GROUP BY ESTADO
	HAVING SUM([VOLUME DE COMPRA]) > 5000


SELECT [NOME DO PRODUTO], [PREÇO DE LISTA],
	CASE
		WHEN [PREÇO DE LISTA] >= 12
			THEN 'Produto Caro'
		WHEN [PREÇO DE LISTA] > 7
			THEN 'Produto em Conta'
		ELSE 'Produto Barato'
	END AS 'CondiÇão'
	FROM dbo.[TABELA DE PRODUTOS]


SELECT ('+12', '+7', '-7') , COUNT(
	CASE
		WHEN [PREÇO DE LISTA] >= 12
			THEN 'Produto Caro'
		WHEN [PREÇO DE LISTA] > 7
			THEN 'Produto em Conta'
		ELSE 'Produto Barato'
	END)
	FROM dbo.[TABELA DE PRODUTOS]
	GROUP BY (CASE
		WHEN [PREÇO DE LISTA] >= 12
			THEN 'Produto Caro'
		WHEN [PREÇO DE LISTA] > 7
			THEN 'Produto em Conta'
		ELSE 'Produto Barato'
	END)