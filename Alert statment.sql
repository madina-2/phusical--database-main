ALTER TABLE Sales.Customer ADD COLUMN record_ts DATE DEFAULT CURRENT_DATE;
ALTER TABLE Sales.Product ADD COLUMN record_ts DATE DEFAULT CURRENT_DATE;
ALTER TABLE Sales.Order ADD COLUMN record_ts DATE DEFAULT CURRENT_DATE;
ALTER TABLE Sales.OrderDetail ADD COLUMN record_ts DATE DEFAULT CURRENT_DATE;