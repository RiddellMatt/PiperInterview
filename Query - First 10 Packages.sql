/*First 10 Packages*/
SELECT TOP 10
	TrackingNumber
	,ClientName
	,CarrierName
	,PackageCost
FROM FactInvoiceFile inv
	INNER JOIN DimClient cl ON cl.ClientKey = inv.ClientKey
	INNER JOIN DimCarrier car ON car.CarrierKey = inv.CarrierKey
ORDER BY 
	InvoiceFileKey