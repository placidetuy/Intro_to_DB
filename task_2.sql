-- Authors Table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (author_id)
);

-- Books Table
CREATE TABLE Books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT DEFAULT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE DEFAULT NULL,
    PRIMARY KEY (book_id),
    KEY (author_id),
    CONSTRAINT Books_ibfk_1 FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

-- Customers Table
CREATE TABLE Customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    PRIMARY KEY (order_id),
    KEY (customer_id),
    CONSTRAINT Orders_ibfk_1 FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

-- Order_Details Table
CREATE TABLE Order_Details (
    order_detail_id INT NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    PRIMARY KEY (order_detail_id),
    KEY (order_id),
    KEY (book_id),
    CONSTRAINT Order_Details_ibfk_1 FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    CONSTRAINT Order_Details_ibfk_2 FOREIGN KEY (book_id) REFERENCES Books (book_id)
);

