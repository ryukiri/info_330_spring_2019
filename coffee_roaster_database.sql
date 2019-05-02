-- CREATE DATABASE COFFEE_ROASTER_SP

/*
CREATE TABLE tblCustomer (
CustomerID 	INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
CustomerFname 	varchar(50) NOT NULL,
CustomerLname 	varchar(50) NULL,
CustomerPhone   INT(10, 1) NULL,
CustomerEmail   varchar(50) NULL,
CustomerBirth   DATE NOT NULL
)

GO

CREATE TABLE tblPosition (
PositionID 		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
PositionName 	varchar(50) NOT NULL,
PositionDec 	varchar(500) NULL
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

CREATE TABLE tblATHLETE (
AthleteID 		INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Fname 			varchar(30) NOT NULL,
Lname 			varchar(30) NOT NULL,
BirthDate 		Date NOT NULL
)

GO


CREATE TABLE tblEVENT_ATHLETE (
EventAthleteID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
EventID 		INT FOREIGN KEY REFERENCES tblEVENT (EventID) NOT NULL,
AthleteID		INT FOREIGN KEY REFERENCES tblATHLETE (AthleteID) NOT NULL
)

GO


*/