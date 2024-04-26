-- 1. Total Jumlah Pelanggan:
SELECT 
	COUNT(*) AS total_customers 
FROM customers;

-- 2. Total Pendapatan:
SELECT 
	SUM(total_price) AS total_revenue 
FROM orders;

-- 3. Rata-rata Jumlah Produk per Pesanan:
SELECT 
	AVG(quantity) AS avg_products_per_order 
FROM order_details;

-- 4. 10 Pelanggan dengan Jumlah Pesanan Tertinggi:
SELECT 
	c.customer_name, 
	COUNT(o.order_id) AS order_count,
	SUM(o.total_price) AS total_pengeluaran
FROM 
	customers c
JOIN 
	orders o ON c.customer_id = o.customer_id
GROUP BY 
	c.customer_name
ORDER BY 
	order_count DESC
LIMIT 10;

-- 5. 5 Produk dengan Jumlah Pesanan Tertinggi:
SELECT 
	p.product_name, 
	COUNT(od.order_id) AS order_count
FROM 
	products p
JOIN 
	order_details od 
	ON p.product_id = od.product_id
GROUP BY 
	p.product_name
ORDER BY 
	order_count DESC
LIMIT 5;



