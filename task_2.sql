-- Use the database
USE alx_book_store;

-- Drop tables if they exist to avoid duplicates
DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;

-- Create Authors table
CREATE TABLE Authors (
    author_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    PRIMARY KEY (author_id)
) ENGINE=InnoDB;

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (customer_id)
) ENGINE=InnoDB;

-- Create Books table
CREATE TABLE Books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT DEFAULT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE DEFAULT NULL,
    PRIMARY KEY (book_id),
    KEY author_id (author_id),
    CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES Authors (author_id)
) ENGINE=InnoDB;

-- Create Orders table
CREATE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id),
    KEY customer_id (customer_id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
) ENGINE=InnoDB;

-- Create Order_Details table
CREATE TABLE Order_Details (
    order_detail_id INT NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_detail_id),
    KEY order_id (order_id),
    KEY book_id (book_id),
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES Books (book_id)
) ENGINE=InnoDB;
;
