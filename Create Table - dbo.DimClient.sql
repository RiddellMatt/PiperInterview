CREATE TABLE dbo.DimClient (
							  ClientKey INT IDENTITY(1,1) NOT NULL
							 ,ClientName VARCHAR(250) NOT NULL
								,CONSTRAINT PK_DimClient_ClientKey PRIMARY KEY (ClientKey)
								,CONSTRAINT UQ_DimClient_ClientName UNIQUE (ClientName)
							);
