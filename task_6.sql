USE alx_book_store;

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.')
ON DUPLICATE KEY UPDATE
customer_name = VALUES(customer_name),
email = VALUES(email),
address = VALUES(address);

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.')
ON DUPLICATE KEY UPDATE
customer_name = VALUES(customer_name),
email = VALUES(email),
address = VALUES(address);

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.')
ON DUPLICATE KEY UPDATE
customer_name = VALUES(customer_name),
email = VALUES(email),
address = VALUES(address);

