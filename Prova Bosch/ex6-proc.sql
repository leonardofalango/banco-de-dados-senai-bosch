-- 6.
CREATE OR ALTER PROC mudar
    @lider VARCHAR(50)
    AS BEGIN
        DECLARE @total INT
        SELECT @total = SUM(salario) FROM Funcionarios
            WHERE lider = @lider
                GROUP BY lider

        DECLARE @id_setor INT
        SELECT TOP 1 @id_setor = dep_id FROM Funcionarios
            WHERE lider = @lider
        
        DELETE FROM Funcionarios
            WHERE lider = @lider

        DECLARE @quant_funcionarios INT;
        SELECT @quant_funcionarios = COUNT(salario) FROM Funcionarios
            WHERE dep_id = @id_setor

        SET @total = @total / @quant_funcionarios
        UPDATE Funcionarios
            SET salario += @total
                WHERE dep_id = @id_setor
    END


