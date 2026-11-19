# thelook-mini-analysis
Mini analisa untuk data The Look Ecommerce
📊 Mini Project SQL: Analisis Bisnis TheLook E-Commerce

🎯 Tujuan Project

Project ini bertujuan untuk menganalisis performa produk, karakteristik pelanggan, dan kontribusi penjualan per kategori di TheLook E-commerce. Dengan berperan sebagai Junior Data Analyst, analisis ini dilakukan menggunakan SQL (Basic SQL hingga Simple JOIN) untuk menjawab lima pertanyaan bisnis utama guna membantu tim Product, Marketing, CRM, dan Manajemen dalam mengambil keputusan berbasis data.

🗄️ Dataset

Analisis ini menggunakan dataset publik yang tersedia di Google BigQuery:

Sumber Dataset: bigquery-public-data.thelook_ecommerce

Tabel yang Digunakan:

products: Informasi detail mengenai katalog produk (nama, kategori, merek, department, harga retail).

users: Data demografis dan profil pelanggan.

orders: Data transaksi pesanan pelanggan dan statusnya.

order_items: Detail item pada setiap pesanan beserta harga jual aktual (sale_price).

❓ Pertanyaan Bisnis & Konsep SQL

Berikut adalah lima pertanyaan bisnis yang diselesaikan dalam project ini:

Analisis Produk (Tim Product)

Pertanyaan: Bagaimana karakteristik 20 produk pertama yang dijual (nama produk, kategori, department, merek, dan harga retail)?

Konsep SQL: SELECT, FROM, LIMIT

Identifikasi Produk Premium (Tim Marketing)

Pertanyaan: Produk apa saja yang termasuk kategori premium (retail_price > 100), diurutkan dari harga tertinggi ke terendah?

Konsep SQL: WHERE, ORDER BY, DESC

Evaluasi Kategori Produk (Tim Product)

Pertanyaan: Kategori produk mana yang memiliki jumlah varian produk terbanyak?

Konsep SQL: COUNT, GROUP BY, ORDER BY

Mengenal Pelanggan dan Pesanan (Tim CRM)

Pertanyaan: Siapa saja pelanggan yang telah melakukan pemesanan beserta detail ID pesanan, status, dan tanggal pembuatannya?

Konsep SQL: INNER JOIN, ON, Alias Tabel

Analisis Penjualan per Kategori (Manajer Bisnis)

Pertanyaan: Kategori produk mana yang menghasilkan total nilai penjualan (sale_price) terbesar?

Konsep SQL: JOIN, SUM, GROUP BY, ORDER BY

💡 Insight Bisnis (Hasil Analisis Soal 3 & 5)

(Catatan: Silakan sesuaikan angka dan nama kategori di bawah ini sesuai dengan hasil eksekusi query Anda di BigQuery)

Dominasi Variasi Produk (Berdasarkan Soal 3):

Kategori [Nama Kategori Terbanyak, misal: Intimates / Jeans] memiliki jumlah variasi produk terbanyak dengan total [Jumlah] produk. Hal ini menunjukkan fokus inventaris yang sangat besar pada kategori tersebut dibandingkan kategori lainnya.

Kontributor Pendapatan Utama (Berdasarkan Soal 5):

Kategori [Nama Kategori Penjualan Tertinggi, misal: Outerwear & Coats] mencatatkan nilai penjualan tertinggi sebesar $[Total Penjualan]. Menariknya, kategori dengan jumlah item terbanyak belum tentu menjadi penyumbang pendapatan terbesar jika harga jual rata-ratanya lebih rendah (perbedaan antara volume produk vs. nilai transaksi).

Rekomendasi Strategis:

Tim Marketing dapat memfokuskan anggaran promosi pada kategori dengan margin/nilai penjualan tinggi untuk memaksimalkan revenue, sementara tim Product dapat mengevaluasi kategori yang memiliki banyak variasi produk namun kontribusi penjualannya rendah.

📁 Struktur Repository

├── README.md                 # Dokumentasi project dan insight bisnis
└── thelook_ecommerce.sql     # Kumpulan query SQL untuk menjawab 5 pertanyaan bisnis


🚀 Cara Menjalankan Query

Buka Google Cloud Console - BigQuery.

Pastikan Anda sudah masuk ke akun Google dan memiliki project aktif (dapat menggunakan BigQuery Sandbox secara gratis).

Salin kode dari file thelook_ecommerce.sql ke dalam Query Editor.

Jalankan setiap blok query secara terpisah untuk melihat tabel hasilnya.
