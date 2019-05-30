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
VendorID  			INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
VendorTypeID  	INTEGER FOREIGN KEY REFERENCES tblVendorType (VendorTypeID) NOT NULL,
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

<<<<<<< HEAD
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