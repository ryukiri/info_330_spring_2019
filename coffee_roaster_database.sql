-- CREATE DATABASE COFFEE_ROASTER_SP

/*
CREATE TABLE tblCustomer (
CustomerID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerFname VARCHAR(50) NOT NULL,
CustomerLname VARCHAR(50) NULL,
CustomerPhone integer NULL,
CustomerEmail VARCHAR(50) NULL,
CustomerBirth DATE NOT NULL
)

GO

CREATE TABLE tblSupplier (
SupplierID 	    INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
SupplierName 		VARCHAR(50) NOT NULL,
SupplierPhone 	VARCHAR(50) NULL,
SupplierEmail   VARCHAR(80) NULL,
SupplierAddress VARCHAR(50) NULL,
SupplierCity    VARCHAR(50) NOT NULL,
SupplierState   VARCHAR(50) NOT NULL,
SupplierZip     CHAR(10) NOT NULL
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
PositionID        INTEGER FOREIGN KEY REFERENCES tblPosition (PositionID) NOT NULL,
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