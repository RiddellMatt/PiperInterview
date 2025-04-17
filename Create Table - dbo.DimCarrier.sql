CREATE TABLE dbo.DimCarrier (
							  CarrierKey INT IDENTITY(1,1) NOT NULL
							 ,CarrierName VARCHAR(250) NOT NULL
								,CONSTRAINT PK_DimCarrier_CarrierKey PRIMARY KEY (CarrierKey)
								,CONSTRAINT UQ_DimCarrier_CarrierName UNIQUE (CarrierName)
							);
