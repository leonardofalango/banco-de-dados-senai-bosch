CREATE OR ALTER TRIGGER desativar_curso
    ON Cursos AFTER UPDATE AS
    BEGIN
        DECLARE @id INT
        DECLARE @active BIT
        SELECT @id = id FROM inserted;
        SELECT @active = ativo FROM inserted;


        UPDATE DisciplinaCurso
            SET ativo = @active 
            WHERE id_curso = @id;
    END