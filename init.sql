-- raw_customers
CREATE TABLE raw_customers (
    customer_id TEXT,
    full_name TEXT,
    email TEXT,
    signup_date TEXT
);

INSERT INTO raw_customers VALUES
('C001', 'João da Silva', 'joao@email.com', '2022-01-15'),
('C002', 'Maria Oliveira', 'maria@email.com', '2022-03-22'),
('C003', 'Carlos Souza', 'carlos@email.com', '2023-07-01');

-- raw_products
CREATE TABLE raw_products (
    product_id TEXT,
    product_name TEXT,
    category TEXT,
    price TEXT
);

INSERT INTO raw_products VALUES
('P001', 'Notebook Dell', 'Informática', '4500.00'),
('P002', 'Mouse Logitech', 'Periféricos', '150.00'),
('P003', 'Teclado Mecânico', 'Periféricos', '300.00'),
('P004', 'Monitor LG', 'Monitores', '1200.00');

-- raw_orders
CREATE TABLE raw_orders (
    order_id TEXT,
    customer_id TEXT,
    order_date TEXT,
    status TEXT
);

INSERT INTO raw_orders VALUES
('O001', 'C001', '2023-01-10', 'delivered'),
('O002', 'C002', '2023-02-05', 'cancelled'),
('O003', 'C001', '2023-03-20', 'delivered'),
('O004', 'C003', '2023-04-18', 'pending');

-- raw_order_items
CREATE TABLE raw_order_items (
    order_item_id TEXT,
    order_id TEXT,
    product_id TEXT,
    quantity TEXT
);

INSERT INTO raw_order_items VALUES
('I001', 'O001', 'P001', '1'),
('I002', 'O001', 'P002', '2'),
('I003', 'O003', 'P003', '1'),
('I004', 'O003', 'P004', '1'),
('I005', 'O004', 'P001', '1');

-- raw_payments
CREATE TABLE raw_payments (
    payment_id TEXT,
    order_id TEXT,
    payment_method TEXT,
    payment_date TEXT,
    amount TEXT
);

INSERT INTO raw_payments VALUES
('PMT001', 'O001', 'credit_card', '2023-01-11', '4800.00'),
('PMT002', 'O003', 'boleto', '2023-03-21', '1500.00'),
('PMT003', 'O004', 'pix', NULL, NULL);
