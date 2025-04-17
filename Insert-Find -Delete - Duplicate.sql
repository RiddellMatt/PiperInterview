/*Add Duplicate Invoice File Record*/
INSERT INTO FactInvoiceFile (TrackingNumber,ClientKey,CarrierKey,PackageCost)
SELECT TOP 1 TrackingNumber,ClientKey,CarrierKey,PackageCost FROM FactInvoiceFile

/*Find Duplicate*/
SELECT TrackingNumber
FROM FactInvoiceFile
GROUP BY
	TrackingNumber
HAVING COUNT(*) > 1

/*Delete Duplicate*/
BEGIN TRANSACTION;

WITH DetectDupes AS (
SELECT 
     InvoiceFileKey
	,TrackingNumber
	,RowNumber = ROW_NUMBER() OVER (PARTITION BY TrackingNumber ORDER BY InvoiceFileKey)
FROM dbo.FactInvoiceFile
)
DELETE FROM DetectDupes
OUTPUT DELETED.*
WHERE RowNumber > 1;

/*Verify output is correct prior to commiting*/
--COMMIT


