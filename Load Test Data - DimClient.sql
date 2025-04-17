BEGIN TRY

    BEGIN TRANSACTION;

    DECLARE @i INT = 1;

    WHILE @i <= 10

    BEGIN

        INSERT INTO dbo.DimClient (ClientName)
        VALUES ('Client_' + RIGHT('00' + CAST(@i AS VARCHAR), 2));

        SET @i += 1;

    END;

    COMMIT;

END TRY

BEGIN CATCH

    IF @@TRANCOUNT > 0 ROLLBACK;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);

END CATCH;
