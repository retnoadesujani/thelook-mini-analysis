# Mini Project SQL: TheLook E-commerce

Project analisis data menggunakan **SQL** di **Google BigQuery** (materi *Basic SQL* hingga *Simple JOIN*) sebagai bagian dari program *Data Analytics Bootcamp*[cite: 1].

---

## Tujuan Project

Berperan sebagai *Junior Data Analyst* di **TheLook E-commerce**, project ini bertujuan membantu tim bisnis memahami karakteristik produk yang dijual, pelanggan yang melakukan pemesanan, serta kategori produk yang paling berkontribusi terhadap penjualan melalui lima pertanyaan bisnis utama[cite: 1].

---

## Dataset

* **Sumber Dataset Publik:** `bigquery-public-data.thelook_ecommerce` (Google BigQuery)[cite: 1]
* **Tabel yang Digunakan:**
  * `products`[cite: 1]
  * `users`[cite: 1]
  * `orders`[cite: 1]
  * `order_items`[cite: 1]

---

## Pertanyaan Bisnis & Cakupan SQL

1. **Analisis Produk:** Menampilkan nama produk, kategori, *department*, merek, dan harga retail dari tabel `products` dengan membatasi hasil menjadi 20 produk pertama (`SELECT`, `FROM`, `LIMIT`)[cite: 1].
2. **Identifikasi Produk Premium:** Mencari produk dengan `retail_price` di atas 100 (menampilkan nama produk, kategori, merek, dan harga retail) yang diurutkan dari harga tertinggi ke terendah (`WHERE`, `ORDER BY`, `DESC`)[cite: 1].
3. **Evaluasi Kategori Produk:** Menghitung jumlah produk pada setiap kategori dari tabel `products` dan mengurutkannya dari jumlah produk terbesar (`COUNT`, `GROUP BY`, `ORDER BY`)[cite: 1].
4. **Mengenal Pelanggan dan Pesanan:** Menggabungkan tabel `users` dan `orders` untuk menampilkan ID pesanan, status pesanan, tanggal pesanan dibuat, serta nama depan dan nama belakang pelanggan (`INNER JOIN`, `ON`, alias tabel)[cite: 1].
5. **Analisis Penjualan per Kategori:** Menggabungkan tabel `order_items` dan `products` untuk menghitung total nilai penjualan (`order_items.sale_price`) berdasarkan kategori, menampilkan kategori dan total penjualannya, lalu mengurutkan dari nilai terbesar (`JOIN`, `SUM`, `GROUP BY`, `ORDER BY`)[cite: 1].

---

## Insight Bisnis

*(Lengkapi bagian ini minimal dengan dua insight bisnis berdasarkan hasil query nomor 3 dan nomor 5 setelah dijalankan di Google BigQuery[cite: 1].)*

* **Insight 1 — Sebaran Jumlah Produk per Kategori (Soal 3):**
  - Kategori produk paling tinggi adalah "intimates" dengan jumlah 2.363.
  - Sedangkan kategori prooduk paling rendah adalah "Clothing Sets" dengan jumlah 37
* **Insight 2 — Kontribusi Penjualan per Kategori (Soal 5):** [Tuliskan temuan utama mengenai kategori dengan total nilai penjualan terbesar berdasarkan `sale_price` dan bandingkan dengan jumlah produknya jika relevan[cite: 1].]

---

## Struktur Repository

```text
├── queries.sql   # Seluruh query SQL untuk soal 1–5 yang dijalankan di Google BigQuery
└── README.md     # Dokumentasi project, dataset, pertanyaan bisnis, dan insight
