CREATE DATABASE IF NOT EXISTS productsDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT,DELETE ON productsDB.* TO 'user'@'%';
FLUSH PRIVILEGES;


USE productsDB;

CREATE TABLE IF NOT EXISTS Categories
(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(100)
);

INSERT INTO Categories(name, description)
VALUES ('Fruits', 'Fruits from the farm'),
       ('Vegetables', 'Vegetables from the farm'),
       ('Milk', 'Milk and other from the farm'),
       ('Drinks', 'Water and juices');

CREATE TABLE IF NOT EXISTS Products
(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    categoryId INT,
    FOREIGN KEY (categoryId) REFERENCES Categories(ID) ON DELETE CASCADE
);

INSERT INTO Products(name, price, categoryId)
VALUES ('Apple', 10, (SELECT ID FROM Categories WHERE name='Fruits')),
    ('Apple juice', 99, (SELECT ID FROM Categories WHERE name='Drinks')),
    ('Cheese', 150, (SELECT ID FROM Categories WHERE name='Milk')),
    ('Tomato', 15, (SELECT ID FROM Categories WHERE name='Vegetables')),
    ('Banana', 25, (SELECT ID FROM Categories WHERE name='Fruits')),
    ('Water', 35, (SELECT ID FROM Categories WHERE name='Drinks'));

COMMIT;