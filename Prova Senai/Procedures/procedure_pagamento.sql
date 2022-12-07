CREATE OR ALTER PROC verify_boletos AS
    BEGIN
        UPDATE Pagamentos
            SET situacao = 'em atraso'
                WHERE boleto < GETDATE() AND situacao = 'pendente'
    END