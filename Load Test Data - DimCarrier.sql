BEGIN TRY

    BEGIN TRANSACTION;

    INSERT INTO DimCarrier (CarrierName)
    VALUES ('UPS'), ('FedEx'), ('DHL');

    COMMIT;

END TRY

BEGIN CATCH

    IF @@TRANCOUNT > 0 ROLLBACK;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);

END CATCH;
