/*
USE [TESTE_NOTAS_FISCAIS];

CREATE TABLE [FATURAMENTO] (
    id INT IDENTITY PRIMARY KEY,
    data_faturamento DATE NOT NULL,
    faturamento MONEY NOT NULL
)
*/

CREATE OR ALTER TRIGGER att_faturamento
    ON [ITENS NOTAS FISCAIS] AFTER INSERT AS BEGIN
        DECLARE @fat MONEY
        SELECT @fat = SUM(i_nf.PREÇO * i_nf.QUANTIDADE) FROM [ITENS NOTAS FISCAIS] i_nf
        INSERT INTO FATURAMENTO (data_faturamento, faturamento)
            VALUES (GETDATE(), @fat)
    END

-- PARA EXECUTAR O TRIGGER
-- basta inserir mais notas no itens notas fiscais
-- o trigger é ativado quando ocorre um insert
