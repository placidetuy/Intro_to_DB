USE alx_book_store;

-- Update the existing entry
UPDATE Customers 
SET customer_name = 'Cole Baidoo', 
    email = 'cbaidoo@sandtech.com', 
    address = '123 Happiness Ave.'
WHERE customer_id = 1;

-- Insert a new entry if customer_id = 1 does not exist
INSERT INTO Customers (customer_id, customer_name, email, address)
SELECT 1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.'
WHERE NOT EXISTS (
    SELECT 1 FROM Customers WHERE customer_id = 1
);

