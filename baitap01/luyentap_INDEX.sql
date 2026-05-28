USE customers_db;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE UNIQUE INDEX idx_email 
ON customer(email);

CREATE INDEX idx_phone 
ON customer(phone);

INSERT INTO customer (customer_name, email, phone, address) VALUES
('Alice', 'alice@example.com', '1234567890', '123 Main St'),
('Bob', 'bob@example.com', '1234567891', '456 Elm St'),
('Carol', 'carol@example.com', '1234567892', '789 Oak St'),
('David', 'david@example.com', '1234567893', '135 Pine St'),
('Eva', 'eva@example.com', '1234567894', '246 Maple St'),
('Frank', 'frank@example.com', '1234567895', '369 Cedar St'),
('Grace', 'grace@example.com', '1234567896', '159 Birch St'),
('Hannah', 'hannah@example.com', '1234567897', '753 Willow St'),
('Ian', 'ian@example.com', '1234567898', '852 Ash St'),
('Jane', 'jane@example.com', '1234567899', '951 Cherry St'),
('Ken', 'ken@example.com', '1234567800', '258 Palm St'),
('Liam', 'liam@example.com', '1234567801', '369 Spruce St'),
('Mia', 'mia@example.com', '1234567802', '147 Fir St'),
('Noah', 'noah@example.com', '1234567803', '258 Larch St'),
('Tina', 'tina@example.com', '1234567809', '987 Acacia St');

EXPLAIN
SELECT *
FROM customer
WHERE email = 'tina@example.com';