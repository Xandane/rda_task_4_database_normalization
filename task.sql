-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

-- Populate test data
CREATE TABLE Countries (
ID INT AUTO_INCREMENT PRIMARY KEY,
 Name VARCHAR(255)
);

CREATE TABLE Products(
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(255)
);

CREATE TABLE Warehouses(
ID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(255),
Address VARCHAR(255),
CountryID INT,
FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);


CREATE TABLE ProductInventory (
    ProductID INT,
    WarehouseID INT,
    Amount INT,
    PRIMARY KEY (ProductID, WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);


INSERT INTO Countries (ID,Name)
	VALUES ('Country1', 'Country2');

    
INSERT INTO Products (ID,Name)
	VALUES (1, 'AwersomeProduct');
    
INSERT INTO Products (ID,Name)
	VALUES (1, 'AwersomeProduct');

INSERT INTO ProductInventory (ProductID, WarehouseID)
	VALUES ( id, 'Warehouse-2');
    

