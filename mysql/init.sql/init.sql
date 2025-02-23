CREATE TABLE sales_data (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255),
  quantity INT,
  price DECIMAL(10, 2),
  sales_date DATE
);

-- 20行のサンプルデータを挿入
INSERT INTO sales_data (product_name, quantity, price, sales_date) VALUES
('Product A', 10, 15.99, '2025-02-01'),
('Product B', 20, 25.49, '2025-02-02'),
('Product C', 15, 35.99, '2025-02-03'),
('Product D', 5, 50.99, '2025-02-04'),
('Product E', 30, 12.49, '2025-02-05'),
('Product A', 12, 18.99, '2025-02-06'),
('Product B', 7, 22.49, '2025-02-07'),
('Product C', 18, 28.99, '2025-02-08'),
('Product D', 10, 55.99, '2025-02-09'),
('Product E', 25, 13.49, '2025-02-10'),
('Product A', 8, 16.49, '2025-02-11'),
('Product B', 14, 27.99, '2025-02-12'),
('Product C', 22, 30.49, '2025-02-13'),
('Product D', 9, 52.99, '2025-02-14'),
('Product E', 17, 14.49, '2025-02-15'),
('Product A', 6, 17.99, '2025-02-16'),
('Product B', 13, 26.99, '2025-02-17'),
('Product C', 11, 29.99, '2025-02-18'),
('Product D', 16, 54.49, '2025-02-19'),
('Product E', 20, 12.99, '2025-02-20');
