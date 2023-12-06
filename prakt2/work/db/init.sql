CREATE TABLE products (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          description TEXT,
                          price DECIMAL(10, 2) NOT NULL
);

INSERT INTO products (name, description, price) VALUES
                                                    ('Яблоко', 'Красное яблоко', 8.50),
                                                    ('Банан', 'Зеленый банан', 15.00),
                                                    ('Макароны', 'Витки', 80);