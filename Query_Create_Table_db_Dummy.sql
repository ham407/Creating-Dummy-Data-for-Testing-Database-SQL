CREATE TABLE customers(
	customer_id SERIAL NOT NULL,
	customer_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (customer_id)
);

CREATE TABLE customer_detail(
	customer_detail_id SERIAL NOT NULL,
	customer_id INT NOT NULL,
	address TEXT,
	postal_code VARCHAR(20),
	phone_number VARCHAR(20),
	PRIMARY KEY (customer_detail_id),
	CONSTRAINT fk_customer_id
		FOREIGN KEY(customer_id)
		REFERENCES customers (customer_id)
);

CREATE TABLE orders(
	order_id SERIAL NOT NULL,
	customer_id INTEGER NOT NULL,
	order_date TIMESTAMP NOT NULL,
	total_price NUMERIC NOT NULL,
	PRIMARY KEY (order_id),
	CONSTRAINT fk_customer_id
		FOREIGN KEY(customer_id)
		REFERENCES customers (customer_id)
);

SELECT * FROM customer_detail

CREATE TABLE products(
	product_id VARCHAR NOT NULL,
	product_name VARCHAR NOT NULL,
	price NUMERIC NOT NULL,
	PRIMARY KEY (product_id)
);

CREATE TABLE order_details(
	order_id INTEGER NOT NULL,
	product_id VARCHAR NOT NULL,
	quantity INTEGER NOT NULL,
	CONSTRAINT fk_order_id
		FOREIGN KEY (order_id)
		REFERENCES orders(order_id),
	CONSTRAINT fk_product_id
		FOREIGN KEY (product_id)
		REFERENCES products (product_id)
);