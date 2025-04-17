CREATE TABLE dbo.FactInvoiceFile (
									InvoiceFileKey BIGINT IDENTITY(1,1) NOT NULL
									,TrackingNumber VARCHAR(255) NOT NULL
									,ClientKey INT NOT NULL
									,CarrierKey INT NOT NULL
									,PackageCost DECIMAL(18,2)
										,CONSTRAINT PK_FactInvoiceFile_InvoiceFileKey PRIMARY KEY (InvoiceFileKey)
										,CONSTRAINT FK_FactInvoiceFile_ClientKey FOREIGN KEY (ClientKey) REFERENCES dbo.DimClient (ClientKey)
										,CONSTRAINT FK_FactInvoiceFile_CarrierKey FOREIGN KEY (CarrierKey) REFERENCES dbo.DimCarrier (CarrierKey)
);

CREATE NONCLUSTERED INDEX Idx_FactInvoiceFile_ClientKey ON dbo.FactInvoiceFile (ClientKey);
CREATE NONCLUSTERED INDEX Idx_FactInvoiceFile_CarrierKey ON dbo.FactInvoiceFile (CarrierKey);
