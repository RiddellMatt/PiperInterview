INSERT INTO dbo.FactInvoiceFile (TrackingNumber, ClientKey, CarrierKey, PackageCost)
SELECT 
	 TrackingNumber = RIGHT('0000000000000000' + CAST(RowNumber AS VARCHAR(20)), 16) 
	,ClientKey = 1 + ABS(CHECKSUM(NEWID())) % 10                             /*Choose random client*/
	,CarrierKey =   1 + ABS(CHECKSUM(NEWID())) % 3                           /*Choose random carrier*/
	,PackageCost = CAST(RAND(CHECKSUM(NEWID())) * 100 + 1 AS DECIMAL(18,2))  /*Assign random package cost*/
FROM (
		SELECT TOP 500 
			RowNumber = ROW_NUMBER() OVER (ORDER BY (SELECT NULL))  
		FROM master.dbo.spt_values
	 ) a