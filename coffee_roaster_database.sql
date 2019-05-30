-- CREATE DATABASE COFFEE_ROASTER_SP

/*
CREATE TABLE tblCustomer (
CustomerID 	    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerFname 	varchar(50) NOT NULL,
CustomerLname 	varchar(50) NULL,
CustomerPhone   INT(10, 1) NULL,
CustomerEmail   varchar(50) NULL,
CustomerBirth   DATE NOT NULL
)

GO

CREATE TABLE tblSupplier (
SupplierID 	    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
SupplierName 	varchar(50) NOT NULL,
SupplierPhone 	varchar(50) NULL,
SupplierEmail   INT(10, 1) NULL,
SupplierAddress varchar(50) NULL,
SupplierCity    varchar(50) NOT NULL,
SupplierState   varchar(50) NOT NULL,
SupplierZip     INT(5,1) NOT NULL
)

GO

CREATE TABLE tblPosition (
PositionID 		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
PositionName 	varchar(50) NOT NULL,
PositionDesc 	varchar(500) NULL
)

GO

CREATE TABLE tblEmployee (
EmployeeID 		    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
PositionID          INTEGER FOREIGN KEY REFERENCES tblPosition (PositionID) NOT NULL,
EmployeeFname 		varchar(50) NOT NULL,
EmployeeLname 	    varchar(50) NOT NULL,
EmployeeBirth 		DATE NOT NULL,
EmployeeAddress 	varchar(50) NOT NULL,
EmployeeAddress2    varchar(50) NULL,
Employee City       varchar(50) NOT NULL,
EmployeeState       varchar(50) NOT NULL,
EmployeeZip         INT(5,1),
EmployeeEmail       varchar(50) NOT NULL,
EmployeePhone       INT(10,1) NOT NULL,
EmployeePhone2      INT(10,1) NULL,
EmployeePhone3 		INT(10,1) NULL
)

GO

CREATE TABLE tblCafe (
CafeID  INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CafeName
CafeAddress
CafeCity
CafeState
CafeZip
CafePhone
CafePhone2
CafePhone3
)

GO

CREATE TABLE tblOrder(
OrderID     INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerID  INTEGER FOREIGN KEY REFERENCES tblPosition (PositionID) NOT NULL,
)

CREATE TABLE tblLineItem(
LineItemID  INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
)

GO

CREATE TABLE tblPurchaseOrder(
PurchaseOrderID     INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerID  INTEGER FOREIGN KEY REFERENCES tblPosition (PositionID) NOT NULL,
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

