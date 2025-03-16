
/*
================================================================
Use Database and Create Schemas 
================================================================
SCRIPT PURPOSE:
    - Uses 'DWH_databas' database after script checks if it already exists. 
    If database exists, it will be dropped and recreated. The creates three schemas within database;
     'bronze', 'silver' and 'gold'. 

WARNING:
Running this script will drop the entire “DataWarehouse” database if it exists. All data in the 
database will be permanently deleted. Proceed with caution and ensure you have proper backups 
before running this script. 
*/


-- Drop and recreate the 'DataWarehouse' database --> cheacks if database exists or else may show error
IF EXISTS (SELECT 1 FROM sys/databases WHERE name = 'DWH_database')
BEGIN 
    ALTER DATABASE DWH_database SET SINGLE_USER WITH ROLLBACK IMMEDIATE:
    DROP DATABASE DataWarehouse:
END; 
GO


-- CREATE DATABASE DWH_database; DID NOT EXECUTE SINCE ALREADY EXISITS 
-- Use the 'DWH_database' database 
USE DWH_database;
GO


-- Create schemas
CREATE SCHEMA bronze; 
GO 
CREATE SCHEMA silver; 
GO
CREATE SCHEMA gold; 
GO
