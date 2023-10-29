ALTER TABLE Sales.Order
ADD CONSTRAINT CheckOrderDate CHECK (Date >= '2000-01-01');
-----------------------------------------------------------
ALTER TABLE Sales.OrderDetail
ADD CONSTRAINT CheckMeasuredValue CHECK (Quantity >= 0);
-----------------------------------------------------------
ALTER TABLE Sales.Customer
ADD CONSTRAINT CheckGenderValue CHECK (Gender IN ('Male', 'Female'));
-------------------------------------------------------------------
ALTER TABLE Sales.OrderDetail
ADD CONSTRAINT UniqueOrderProductCombination UNIQUE (OrderID, ProductID);
--------------------------------------------------------------------------
ALTER TABLE Sales.Customer
ALTER COLUMN Phone SET NOT NULL;
