-- USE [TESTE_NOTAS_FISCAIS];

/*
PROC = PROCEDURE
CREATE PROC procedure_name 
    @first_parameter type,
    @secund_parameter output type
*/

CREATE OR ALTER PROC quant_nfs
    @cpf VARCHAR(11),
    @year INT,
    @count_nf INT OUTPUT,
    @total_cost FLOAT OUTPUT
    AS BEGIN
        SELECT @count_nf = Contage FROM 
            (SELECT c.CPF, COUNT(nf.CPF) as 'Contage'
                FROM [NOTAS FISCAIS] nf
                INNER JOIN [TABELA DE CLIENTES] c
                    ON nf.CPF = c.CPF
                WHERE c.CPF = @cpf AND YEAR(nf.[DATA]) = @year
                GROUP BY c.CPF) AS COUNT_RESULT
        
        SELECT @total_cost = Total FROM
            (SELECT c.CPF, SUM(itens.QUANTIDADE * itens.PREÇO) as 'Total'
                FROM [NOTAS FISCAIS] nf
                INNER JOIN [ITENS NOTAS FISCAIS] itens
                    ON itens.NUMERO = nf.NUMERO
                INNER JOIN [TABELA DE CLIENTES] c
                    ON c.CPF = nf.CPF
                WHERE c.CPF = @cpf AND YEAR(nf.[DATA]) = @year
                GROUP BY c.CPF) AS TOTALPRICE_RESULT
    END


-- PARA EXECUTAR A PROCEDURE

/*
DECLARE @quantidade_notas INT
DECLARE @preco_total FLOAT

EXEC quant_nfs '7771579779', 2015, @count_nf = @quantidade_notas OUTPUT, @total_cost = @preco_total OUTPUT

PRINT('CPF: 7771579779')
PRINT(CONCAT('Quantidade Total de notas no ano de 2015: ', @quantidade_notas))
PRINT(CONCAT('Preço Total do ano de 2015: ', @preco_total))
*/