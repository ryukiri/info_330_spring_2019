-- CREATE DATABASE COFFEE_ROASTER_SP
/*
CREATE TABLE tblPosition (
PositionID 		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
PositionName 	varchar(50) NOT NULL,
PositionDesc 	varchar(500) NULL
)

GO

CREATE TABLE tblEmpPosition (
EmpPositionID 		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
PositionID 				INTEGER FOREIGN KEY REFERENCES tblPosition (PositionID) NOT NULL,
BeginDate 				DATE NOT NULL,
EndDate 					DATE NULL,
Wage 							NUMERIC(18,2) NOT NULL
)

GO

CREATE TABLE tblEmployee (
EmployeeID 		    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
EmpPositionID     INTEGER FOREIGN KEY REFERENCES tblEmpPosition (EmpPositionID) NOT NULL,
EmployeeFname 		VARCHAR(50) NOT NULL,
EmployeeLname 	  VARCHAR(50) NOT NULL,
EmployeeBirth 		DATE NOT NULL,
EmployeeAddress 	VARCHAR(50) NOT NULL,
EmployeeAddress2  VARCHAR(50) NULL,
EmployeeCity      VARCHAR(50) NOT NULL,
EmployeeState     VARCHAR(50) NOT NULL,
EmployeeZip       CHAR(5),
EmployeeEmail     VARCHAR(80) NOT NULL,
EmployeePhone     CHAR(10) NOT NULL,
EmployeePhone2    CHAR(10) NULL,
EmployeePhone3 		CHAR(10) NULL
)

GO

CREATE TABLE tblShift (
ShiftID				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ShiftName 		VARCHAR(50) NOT NULL,
ShiftDesc 		VARCHAR(150) NULL 
)

GO

CREATE TABLE tblEmployeeShift (
EmployeeShiftID				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
EmployeeID     				INTEGER FOREIGN KEY REFERENCES tblEmployee (EmployeeID) NOT NULL,
ShiftID     					INTEGER FOREIGN KEY REFERENCES tblShift (ShiftID) NOT NULL,
BeginTime 						DATE NULL,
EndTime 							DATE NULL 
)

GO

CREATE TABLE tblLocationType(
LocationTypeID  	INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
)

GO 

CREATE TABLE tblLocation(
LocationID  				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
LocationTypeID     	INTEGER FOREIGN KEY REFERENCES tblLocationType (LocationTypeID) NOT NULL,
)

GO 

CREATE TABLE tblCustomer (
CustomerID 				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerFname 		VARCHAR(50) NOT NULL,
CustomerLname 		VARCHAR(50) NULL,
CustomerPhone 		CHAR(8) NULL,
CustomerEmail 		VARCHAR(50) NULL,
CustomerBirth 		DATE NOT NULL,
CustomerAddress 	VARCHAR(50) NULL,
CustomerCity    	VARCHAR(50) NOT NULL,
CustomerState   	VARCHAR(50) NOT NULL,
CustomerZip     	CHAR(10) NOT NULL
)

GO

CREATE TABLE tblOrder(
OrderID     INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerID  INTEGER FOREIGN KEY REFERENCES tblCustomer (CustomerID) NOT NULL,
LocationID  INTEGER FOREIGN KEY REFERENCES tblLocation (LocationID) NOT NULL,
SaleTotal 	NUMERIC(18,2) NOT NULL,
SaleDate 		DATE NOT NULL
)

GO

CREATE TABLE tblVendorType(
VendorTypeID  	INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
)

GO 

CREATE TABLE tblVendor(
VendorID  			  INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
VendorTypeID  	  INTEGER FOREIGN KEY REFERENCES tblVendorType (VendorTypeID) NOT NULL,
VendorName 			  VARCHAR(80) NOT NULL,
ContactFname 		  VARCHAR(50) NOT NULL,
ContactLname 		  VARCHAR(50) NULL,
ContactPhone 		  CHAR(8) NULL,
ContactEmail 		  VARCHAR(50) NULL,
VendorAddress 	  VARCHAR(50) NULL,
VendorCity    	  VARCHAR(50) NOT NULL,
VendorState   	  VARCHAR(50) NOT NULL,
VendorZip     	  CHAR(10) NOT NULL
)

GO

CREATE TABLE tblProductType(
ProductTypeID  				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ProductTypeName  			VARCHAR(80) NOT NULL,
ProductTypeDesc 			VARCHAR(150) NULL
)

GO 

CREATE TABLE tblFood(
FoodID  				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ProductTypeID  	INTEGER FOREIGN KEY REFERENCES tblProductType (ProductTypeID) NOT NULL,
)

GO

CREATE TABLE tblDrinkType(
DrinkTypeID  				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DrinkTypeName  			VARCHAR(80) NOT NULL,
DrinkTypeDesc 			VARCHAR(150) NULL,
DrinkSize 					VARCHAR(20) NOT NULL
)

GO

CREATE TABLE tblDrink(
DrinkID  						INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DrinkTypeID  				INTEGER FOREIGN KEY REFERENCES tblDrinkType (DrinkTypeID) NOT NULL,
ProductTypeID		 		INTEGER FOREIGN KEY REFERENCES tblProductType (ProductTypeID) NOT NULL,
DrinkName 					VARCHAR(50) NOT NULL,
DrinkDesc 					VARCHAR(150) NULL,
DrinkPrice					NUMERIC(18,2) NOT NULL 
)

GO

CREATE TABLE tblProduct(
ProductID  				INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
VendorID 					INTEGER FOREIGN KEY REFERENCES tblVendor (VendorID) NOT NULL,
ProductTypeID 		INTEGER FOREIGN KEY REFERENCES tblProductType (ProductTypeID) NOT NULL,
ProductName 			VARCHAR(50) NOT NULL,
ProductDesc 			VARCHAR(150) NULL
)

GO

CREATE TABLE tblLineItem(
LineItemID  		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
OrderID					INTEGER FOREIGN KEY REFERENCES tblOrder (OrderID) NOT NULL,
ProductID				INTEGER FOREIGN KEY REFERENCES tblProduct (ProductID) NOT NULL,
EmployeeID			INTEGER FOREIGN KEY REFERENCES tblEmployee (EmployeeID) NOT NULL,
LineItemTotal		NUMERIC(18,2) NOT NULL,
LineItemQty			INT NOT NULL,
)

CREATE TABLE tblCountryOfOrigin(
    CountryOfOriginID   INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CountryName varchar(50),
    CountryDesc varchar(50)
)

CREATE TABLE tblShipment(
    ShipmentID  			INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ShipmentDate 			DATE,
    ShipmentQty 			NUMERIC(8,2),
    ShipmentCompany 	varchar(30)
)

CREATE TABLE tblCountryOfOriginShip(
    CountryOfOriginShipID   INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ShipmentID  						INTEGER FOREIGN KEY REFERENCES tblShipment (ShipmentID) NOT NULL,
    CountryOfOriginID   		INTEGER FOREIGN KEY REFERENCES tblCountryOfOrigin (CountryOfOriginID) NOT NULL
)

CREATE TABLE tblEquipmentType(
    EquipmentTypeID   INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    EquipmentTypeName varchar(30),
    EquipmentTypeDesc varchar(50)
)

CREATE TABLE tblEquipment(
    EquipmentID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    EquipmentTypeID INTEGER FOREIGN KEY REFERENCES tblEquipmentType (EquipmentTypeID) NOT NULL,
    EquipmentName   varchar(30),
    EquipmentCost   numeric(8,2),
    EqupmentMfg varchar(50)
)

CREATE TABLE tblRoast(
    RoastID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    RoastDate   DATE,
    FirstCrackTime  numeric(8,2),
    SecondCrackTime numeric(8,2)
)

CREATE TABLE tblBeanStatus(
    BeanStatusID    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    BeanStatus  varchar(30)
)

CREATE TABLE tblRoastBean(
    RoastBeanID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    BeanStatusID INTEGER FOREIGN KEY REFERENCES tblBeanStatus (BeanStatusID) NOT NULL,
    RoastID INTEGER FOREIGN KEY REFERENCES tblRoast (RoastID) NOT NULL
)

CREATE TABLE tblShipmentStatus(
    ShipmentStatusID    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StatusDesc  varchar(30)
)

CREATE TABLE tblBean(
    BeanID  						INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    BeanType    				varchar(30),
    HarvestDate 				DATE,
    BeanCost    				numeric(8,2),
    BeanStatusID    		INTEGER FOREIGN KEY REFERENCES tblBeanStatus (BeanStatusID) NOT NULL,
    CountryOfOriginShip INTEGER FOREIGN KEY REFERENCES tblCountryOfOriginShip (CountryOfOriginShipID) NOT NULL,
    ShipmentStatusID    INTEGER FOREIGN KEY REFERENCES tblShipmentStatus (ShipmentStatusID) NOT NULL,
)

CREATE TABLE tblRoasterShipID(
    tblRoasterShipID    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ShippingCompany    varchar(30),
    ShipmentDate    DATE,
    BeanQuantity    numeric(8,2),
    BeanID INTEGER FOREIGN KEY REFERENCES tblBean (BeanID) NOT NULL,
    LocationID  INTEGER FOREIGN KEY REFERENCES tblLocation(LocationID) NOT NULL
)
*/

GO

USE coffee_roaster

GO

INSERT INTO tblCountryOfOrigin (CountryName, CountryDesc)
VALUES ('Ethiopia', 'african country'), ('Panama', 'central american country'), ('Brazil', 'south american country'), ('Indonesia', 'islands in south east asia')

GO

INSERT INTO tblEquipmentType (EquipmentTypeName, EquipmentTypeDesc)
VALUES ('Coffee Roaster', '10kg gas coffee roaster')

GO

INSERT INTO tblPosition (PositionName, PositionDesc)
VALUES ('Barista', 'Makes drinks and stuff'), ('Shop Manager', 'manages stuff'), ('Janitor', 'cleans stuff')

GO
--Adds a new piece of equipment, roaster or other
CREATE PROCEDURE uspNewEquipment
@equipName VARCHAR(30),
@equipCost numeric(8,2),
@equipTypeName VARCHAR(30),
@equipMfg VARCHAR(50)

AS 

DECLARE @Equip_ID INTEGER

SET @Equip_ID = (SELECT EquipmentTypeID
                FROM tblEquipmentType
                WHERE EquipmentTypeName = @equipTypeName)

BEGIN TRAN G2
    INSERT INTO tblEquipment(EquipmentTypeID, EquipmentName, EquipmentCost, EquipmentMfg)
    VALUES (@Equip_ID, @equipName, @equipCost, @equipMfg)
COMMIT TRAN G2

GO

CREATE PROCEDURE uspNewBeanShipment
@shipDate DATE,
@shipQty numeric(8,2),
@shipCo VARCHAR(30),
@countryName VARCHAR(30)

AS

DECLARE @Count_ID INTEGER
DECLARE @Ship_ID INTEGER

SET @Count_ID = (SELECT CountryOfOriginID 
                FROM tblCountryOfOrigin 
                WHERE CountryName = @countryName)

SET @Ship_ID = (SELECT ShipmentID
                FROM tblShipment
                WHERE ShipmentDate = @shipDate
                AND ShipmentQty = @shipQty
                AND ShipmentCompany = @shipCo)

BEGIN TRAN G3
    INSERT INTO tblCountryOfOriginShip(ShipmentID, CountryOfOriginID)
    VALUES (@Ship_ID, @Count_ID)
COMMIT TRAN G3

GO

CREATE PROCEDURE uspRoastProcess
@beanType DATE,
@harvestDate numeric(8,2),
@beanCost numeric(8,2),
@shipDate DATE,
@shipQty numeric(8,2),
@shipCo VARCHAR(30),
@countryName VARCHAR(30),
@equipName VARCHAR(30)

AS

DECLARE @Count_ID INTEGER
DECLARE @Ship_ID INTEGER

SET @Count_ID = (SELECT CountryOfOriginID 
                FROM tblCountryOfOrigin 
                WHERE CountryName LIKE @countryName)

SET @Ship_ID = (SELECT ShipmentID
                FROM tblShipment
                WHERE ShipmentDate LIKE @shipDate
                AND ShipmentQty = @shipQty
                AND ShipmentCompany LIKE @shipCo)

BEGIN TRAN G1
    INSERT INTO tblCountryOfOriginShip(ShipmentID, CountryOfOriginID)
    VALUES (@Ship_ID, @Count_ID)
COMMIT TRAN G1

--GO
/*
-- Removing typo in column
ALTER TABLE tblEquipment
DROP COLUMN EqupmentMfg

GO
-- Needed to fix a typo in one of the tables
ALTER TABLE tblEquipment
ADD EquipmentMfg VARCHAR(50)
*/

GO
-- Function to find the age of a given harvest date
CREATE FUNCTION fn_harvestAge(@harvestDate DATE)
RETURNS INT
AS
BEGIN
	DECLARE @Age INT
	SELECT @Age = DATEDIFF(MONTH, @harvestDate, GETDATE())
	RETURN @Age
END


GO
-- Function to make sure no harvest is recieved that is older than 6 months
CREATE FUNCTION fn_harvestDate()
RETURNS INT
AS
BEGIN
DECLARE @ret INT = 0
	IF EXISTS (SELECT HarvestDate
				FROM tblBean
                WHERE dbo.fn_harvestAge(HarvestDate) <= 6)
	SET @ret = 1
RETURN @ret
END

GO

ALTER TABLE tblBean with nocheck
ADD CONSTRAINT CK_AGE
CHECK (dbo.fn_harvestAge() = 0)