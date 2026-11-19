1. Analisa Produk
--Menampilkan karakteristik produk (nama, kategori, departmemnt, merk, dan harga retail).

SELECT
 name,
 category,
 department,
 brand,
 retail_price
FROM
 bigquery-public-data.thelook_ecommerce.products
ORDER BY name ASC
LIMIT 20;

2. Identifikasi produk premium
---Mencari produk dengan retail_price di atas 100 (menampilkan nama produk, kategori, merek, dan harga retail) yang diurutkan dari harga tertinggi ke terendah.

SELECT
 name,
 category,
 brand,
 retail_price,
FROM bigquery-public-data.thelook_ecommerce.products
WHERE retail_price > 100
ORDER BY retail_price DESC;
 
3. Evaluasi Kategori produk
---Menghitung jumlah produk pada setiap kategori dari tabel products dan mengurutkannya dari jumlah produk terbesar.

SELECT
 category,
 COUNT(id) AS jumlah_produk
FROM bigquery-public-data.thelook_ecommerce.products
GROUP BY category
ORDER BY jumlah_produk DESC;

---Insight:
---Kategori produk paling tinggi adalah "intimates" dengan jumlah 2.363
---Sedangkan kategori prooduk paling rendah adalah "Clothing Sets" dengan jumlah 37

4. Mengenal Pelanggan dan Pesanan
--Menggabungkan tabel users dan orders untuk menampilkan ID pesanan, status pesanan, tanggal pesanan dibuat, serta nama depan dan nama belakang pelanggan.

SELECT
 o.order_id,
 o.status,
 o.created_at,
 u.first_name,
 u.last_name,
FROM 
 bigquery-public-data.thelook_ecommerce.orders AS o
INNER JOIN 
 bigquery-public-data.thelook_ecommerce.users AS u
ON u.id = o.user_id
ORDER BY o.order_id ASC
LIMIT 10;

5. Analisis Penjualan Per Kategori
--Menggabungkan tabel order_items dan products untuk menghitung total nilai penjualan (order_items.sale_price) berdasarkan kategori, menampilkan kategori dan total penjualannya, lalu mengurutkan dari nilai terbesar.

SELECT
 p.category,
 ROUND(SUM(sale_price),-2) as total_penjualan
FROM
 bigquery-public-data.thelook_ecommerce.order_items AS oi
JOIN
 bigquery-public-data.thelook_ecommerce.products AS p
ON 
 oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.category
ORDER BY total_penjualan DESC;

--INSIGHT :
--Kategori dengan penjualan terbesar adalah "Outwear & Coats" dengan total penjualan sebesar 315200
--Kategori dengan penjualan terkecil adalah "Clothing Sets" dengan total penjualan 4700
