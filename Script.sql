CREATE DATABASE OnlineStore;
USE OnlineStore;
CREATE SCHEMA Sales;
------------------------------------------------------

CREATE TABLE Sales.Customer (
    CustomerID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(50) UNIQUE,
    PRIMARY KEY (CustomerID)
);
------------------------------------------------------
CREATE TABLE Sales.Product (
    ProductID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Category VARCHAR(20),
    PRIMARY KEY (ProductID)
);
-------------------------------------------------
CREATE TABLE Sales.Order (
    OrderID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    CustomerID INT NOT NULL,
    Date DATE NOT NULL DEFAULT CURRENT_DATE CHECK (Date >= '2000-01-01'),
    Total DECIMAL(10,2) NOT NULL CHECK (Total >= 0),
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Sales.Customer(CustomerID)
);
-----------------------------------------
CREATE TABLE Sales.OrderDetail (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Subtotal DECIMAL(10,2) NOT NULL CHECK (Subtotal >= 0),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Sales.Order(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Sales.Product(ProductID)
);
