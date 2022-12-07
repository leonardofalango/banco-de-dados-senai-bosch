CREATE OR ALTER TRIGGER desativar_disciplina
    ON Disciplinas AFTER UPDATE AS
    BEGIN
        DECLARE @id INT
        DECLARE @active BIT
        SELECT @id = id FROM inserted;
        SELECT @active = ativo FROM inserted;

        UPDATE DisciplinaCurso
            SET ativo = @active 
            WHERE id_disciplina = @id;
    END

