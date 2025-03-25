-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    telephone VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    job_title VARCHAR(100)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    description_pt TEXT,
    description_de TEXT,
    description_fr TEXT,
    description_es TEXT,
    description_en TEXT,
    description_zh TEXT,
    color VARCHAR(50),
    sizes VARCHAR(100),
    production_cost DECIMAL(10, 2)
);

-- Create stores table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    country VARCHAR(100),
    city VARCHAR(100),
    store_name VARCHAR(100),
    number_of_employees INT,
    zip_code VARCHAR(20),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    store_id INT,
    name VARCHAR(100),
    position VARCHAR(100),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

-- Create transactions table
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    invoice_id VARCHAR(50),
    line INT,
    customer_id INT,
    product_id INT,
    size VARCHAR(10),
    color VARCHAR(50),
    unit_price DECIMAL(10, 2),
    quantity INT,
    date TIMESTAMP,
    discount DECIMAL(5, 2),
    line_total DECIMAL(10, 2),
    store_id INT,
    employee_id INT,
    currency VARCHAR(10),
    currency_symbol VARCHAR(10),
    sku VARCHAR(100),
    transaction_type VARCHAR(50),
    payment_method VARCHAR(50),
    invoice_total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);