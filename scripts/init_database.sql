/* 
====================================================================
Create Database and Schemas
====================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database already exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution.
  and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMIDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create database 'DataWarehouse'
Create database DataWarehouse;

Use DataWarehouse;

-- Create Schemas
Create schema bronze;
Go
Create schema silver;
Go
Create schema gold;
Go
