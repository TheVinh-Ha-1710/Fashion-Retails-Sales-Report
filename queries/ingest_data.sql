-- Import customers data
COPY customers
FROM '/app/customers.csv'
DELIMITER ','
CSV HEADER;

-- Import products data
COPY products
FROM '/app/products.csv'
DELIMITER ','
CSV HEADER;

-- Import stores data
COPY stores
FROM '/app/stores.csv'
DELIMITER ','
CSV HEADER;

-- Import employees data
COPY employees
FROM '/app/employees.csv'
DELIMITER ','
CSV HEADER;

-- Import transactions data
COPY transactions (invoice_id, line, customer_id, product_id, size, color, unit_price, quantity, date, discount, line_total, store_id, employee_id, currency, currency_symbol, sku, transaction_type, payment_method, invoice_total)
FROM '/app/transactions.csv'
DELIMITER ','
CSV HEADER;
