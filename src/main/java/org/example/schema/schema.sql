CREATE SCHEMA example_org;

CREATE TABLE CUSTOMERS(
id INT AUTO_INCREMENT,
name VARCHAR(50),
surname VARCHAR(50),
age INT,
phone_number VARCHAR(12),
PRIMARY KEY (id)
)

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES
    ('NAME1', 'SURNAME1', 20, '000000000007'),
    ('NAME2', 'SURNAME2', 21, '000000000008'),
    ('NAME3', 'SURNAME3', 22, '000000000009'),
    ('alexey', 'alexey_surname', 23, '000000000010'),
    ('NAME5', 'SURNAME5', 24, '000000000011'),
    ('NAME6', 'SURNAME5', 26, '000000000012'),
    ('NAME7', 'SURNAME5', 29, '000000000013');

CREATE TABLE ORDERS(
id INT AUTO_INCREMENT,
date DATE,
customer_id INT,
product_name VARCHAR(50),
amount INT,
PRIMARY KEY (id),
FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
)

INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES
    ('2024-01-01', 1, 'product_name1', 1),
    ('2024-01-02', 2, 'product_name2', 2),
    ('2024-01-03', 3, 'product_name3', 3),
    ('2024-01-04', 4, 'product_name4', 4),
    ('2024-01-05', 5, 'product_name5', 5),
    ('2024-01-06', 6, 'product_name6', 6),
    ('2024-01-07', 7, 'product_name7', 7);