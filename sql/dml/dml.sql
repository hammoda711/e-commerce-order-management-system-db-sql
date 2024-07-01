INSERT INTO customers (customer_id, customer_name, email, shipping_address)
VALUES
    (1, 'John Smith', 'john.smith@example.com', '123 Main St, Anytown'),
    (2, 'Jane Doe', 'jane.doe@example.com', '456 Elm St, AnotherTown'),
    (3, 'Michael Johnson', 'michael.johnson@example.com', '789 Oak St, Somewhere'),
    (4, 'Emily Wilson', 'emily.wilson@example.com', '567 Pine St, Nowhere'),
    (5, 'David Brown', 'david.brown@example.com', '321 Maple St, Anywhere'); 

INSERT INTO items (item_id, item_name, description, price, stock_quantity)
VALUES
    (1, 'iPhone X', 'Apple iPhone X, 64GB', 999, 10),
    (2, 'Galaxy S9', 'Samsung Galaxy S9, 128GB', 899, 5),
    (3, 'iPad Pro', 'Apple iPad Pro, 11-inch', 799, 8),
    (4, 'Pixel 4a', 'Google Pixel 4a, 128GB', 499, 12),
    (5, 'MacBook Air', 'Apple MacBook Air, 13-inch', 1099, 3); 

INSERT INTO orders (order_id, customer_id, order_date)
VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-02-15'),
(3, 3, '2023-03-10'),
(4, 4, '2023-04-05'),
(5, 5, '2023-05-20'); 