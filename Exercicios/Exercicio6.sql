USE TESTE_NOTAS_FISCAIS;

/*
	INSERT COM SELECT DE PRODUTOS.
*/


CREATE TABLE ProdutosCaros (
	id int primary key identity,
	nome varchar(100),
	preco float
)


INSERT INTO ProdutosCaros (nome, preco) -- Note que nao tem o 'VALUES'
	(SELECT [NOME DO PRODUTO], [PREÇO DE LISTA]
		FROM dbo.[TABELA DE PRODUTOS]
		WHERE [PREÇO DE LISTA] > 15.00 
		AND [NOME DO PRODUTO] NOT IN 
			(SELECT DISTINCT [NOME DO PRODUTO]FROM [TABELA DE PRODUTOS]))

SELECT * FROM ProdutosCaros
