USE alx_book_store;

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.')
ON DUPLICATE KEY UPDATE
customer_name = 'Cole Baidoo',
email = 'cbaidoo@sandtech.com',
address = '123 Happiness Ave.';



USE alx_book_store;

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.')
ON DUPLICATE KEY UPDATE
customer_name = 'Cole Baidoo',
email = 'cbaidoo@sandtech.com',
address = '123 Happiness Ave.';

