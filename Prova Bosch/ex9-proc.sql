CREATE OR ALTER PROC alteraLider
    @liderAntigo VARCHAR(20),
    @liderNovo VARCHAR(20)
    AS BEGIN
        UPDATE Funcionarios
            SET lider = @liderNovo
                WHERE lider = @liderAntigo
    END