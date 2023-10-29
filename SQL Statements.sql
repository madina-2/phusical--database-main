INSERT INTO Sales.Customer (Name, Phone, Email) VALUES
('Alice', '1234567890', 'alice@example.com'),
('Bob', '0987654321', 'bob@example.com');
--------------------------------------------------------
INSERT INTO Sales.Product (Name, Price, Category) VALUES
('Laptop', 1000.00, 'Electronics'),
('Book', 20.00, 'Books');
-----------------------------------------
INSERT INTO Sales.Order (CustomerID, total) VALUES
(1, 0), (2, 0);
------------------------------------
INSERT INTO Sales.OrderDetail VALUES
(1, 1, 1, 1000.00),
(2, 2, 2, 40.00);
