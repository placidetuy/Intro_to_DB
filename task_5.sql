USE alx_book_store;

-- First, delete the existing customer entry with customer_id = 1
DELETE FROM customer WHERE customer_id = 1;

-- Then, insert the new customer data
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');

