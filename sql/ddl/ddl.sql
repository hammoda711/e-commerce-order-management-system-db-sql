CREATE TABLE customers (
    customer_id INT NOT NULL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    shipping_address VARCHAR(80)
);

CREATE TABLE items (
    item_id INT NOT NULL PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    description VARCHAR(80),
    price DECIMAL NOT NULL,
    stock_quantity INT
);

CREATE TABLE orders (
    order_id INT NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE order_details ( 
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    qty INT NOT NULL,
    order_price DECIMAL NOT NULL,
    PRIMARY KEY(order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES items(item_id) ON DELETE CASCADE
);