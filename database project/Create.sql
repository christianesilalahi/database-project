CREATE DATABASE RALaundry
USE RALaundry

CREATE TABLE Staff(
	StaffID CHAR(5) Primary Key
		CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(100),
	StaffAddress VARCHAR(100) ,
	StaffGender VARCHAR(20)  CHECK(StaffGender IN ('Male', 'Female')),
	StaffSalary INT  CHECK(StaffSalary >= 1500000 AND StaffSalary <= 3000000),
)

CREATE TABLE Material(
	MaterialID CHAR (5) Primary Key
		CHECK(MaterialID LIKE 'MA[0-9][0-9][0-9]'),
	MaterialName VARCHAR(100),
	MaterialType VARCHAR(50)  CHECK(MaterialType = 'Supplies' OR MaterialType = 'Equipment'),
	MaterialPrice INT
)

CREATE TABLE Vendor(
	VendorID CHAR (5) Primary Key
		CHECK(VendorID LIKE 'VE[0-9][0-9][0-9]'),
	VendorName VARCHAR(100) ,
	VendorAddress VARCHAR(150) CHECK(LEN(VendorAddress) > 10),
	VendorPhoneNumber VARCHAR(25),
)


CREATE TABLE Clothes(
	ClothesID CHAR (5) Primary Key
		CHECK(ClothesID LIKE 'CL[0-9][0-9][0-9]'),
	ClothesName VARCHAR(30),
	ClothesType VARCHAR(13)
		CHECK(ClothesType IN('Cotton', 'Viscose', 'Polyester', 'Linen', 'Wool'))
)

CREATE TABLE Customer(
	CustomerID CHAR (5) Primary Key
		CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(100),
	CustomerAddress VARCHAR(150),
	CustomerGender VARCHAR(20)  CHECK(CustomerGender IN ('Male', 'Female')),
	DOB DATE
)

CREATE TABLE PurchaseTransaction(
	PurchaseTransactionID CHAR(5) Primary Key
		CHECK(PurchaseTransactionID LIKE 'PU[0-9][0-9][0-9]'),
	VendorID CHAR(5) REFERENCES Vendor(VendorID),
	MaterialID CHAR(5) REFERENCES Material(MaterialID) ,
	StaffID CHAR(5) REFERENCES Staff(StaffID),
	PurchaseDate DATE
		CHECK(YEAR(PurchaseDate) LIKE YEAR(GETDATE())),
	Quantity INT,
)

CREATE TABLE DetailPurchase(
	PurchaseTransactionID CHAR(5)
		CHECK(PurchaseTransactionID LIKE 'PU[0-9][0-9][0-9]'),
	MaterialID CHAR(5) REFERENCES Material(MaterialID),
	primary key(PurchaseTransactionID, MaterialID),
	FOREIGN KEY(PurchaseTransactionID) REFERENCES PurchaseTransaction(PurchaseTransactionID),
	FOREIGN KEY(MaterialID) REFERENCES Material(MaterialID)
)

CREATE TABLE ServiceTransaction(
	ServiceTransactionID CHAR (5) Primary Key
		CHECK(ServiceTransactionID LIKE 'SR[0-9][0-9][0-9]'),
	CustomerID CHAR(5) REFERENCES Customer(CustomerID),
	StaffID CHAR(5) REFERENCES Staff(StaffID),
	ClothesID CHAR(5) REFERENCES Clothes(ClothesID),
	ServiceDate DATE
		CHECK(YEAR(ServiceDate) LIKE YEAR(GETDATE())),
	ServiceType VARCHAR(20)
		CHECK(ServiceType IN('Laundry Service', 'Dry Cleaning Service', 'Ironing Service')),
	ServicePrice INT
)

CREATE TABLE DetailService(
	ServiceTransactionID CHAR (5)
		CHECK(ServiceTransactionID LIKE 'SR[0-9][0-9][0-9]'),
	ClothesID CHAR(5) REFERENCES Clothes(ClothesID),
	primary key(ServiceTransactionID, ClothesID),
	FOREIGN KEY (ServiceTransactionID) REFERENCES ServiceTransaction(ServiceTransactionID),
	FOREIGN KEY (ClothesID) REFERENCES Clothes(ClothesID)
)


