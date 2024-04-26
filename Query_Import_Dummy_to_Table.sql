-- Import customer detail
COPY customer_detail(
	customer_detail_id,
	customer_id,
	address,
	postal_code,
	phone_number)
FROM
	'D:\DATA ANALYST_AFA\SQL\database\DUMMY DATA MATERI 12\customer_detail_table.csv'
DELIMITER','
CSV
HEADER;

SELECT * FROM customer_detail

-- Import product table
COPY products(
	product_id,
	product_name,
	price)
FROM
	'D:\DATA ANALYST_AFA\SQL\database\DUMMY DATA MATERI 12\products_table.csv'
DELIMITER','
CSV
HEADER;

SELECT * FROM products

-- import order table
COPY orders(
	order_id,
	customer_id,
	order_date,
	total_price)
FROM
	'D:\DATA ANALYST_AFA\SQL\database\DUMMY DATA MATERI 12\order_table.csv'
DELIMITER','
CSV
HEADER;

SELECT * FROM orders

-- import order detail table
COPY order_detail(
	order_id,
	product_id,
	quantity)
FROM
	'D:\DATA ANALYST_AFA\SQL\database\DUMMY DATA MATERI 12\order_detail_table.csv'
DELIMITER','
CSV
HEADER;