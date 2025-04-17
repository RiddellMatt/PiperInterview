/*Number of Packages by Carrier, sorted by Carrier*/
SELECT 
	 car.CarrierName
	,NumberOfPackages = COUNT(*)
FROM FactInvoiceFile inv
	INNER JOIN DimCarrier car ON car.CarrierKey = inv.CarrierKey
GROUP BY
	car.CarrierName
ORDER BY 
	car.CarrierName