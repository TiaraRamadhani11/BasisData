-- Nama  : Tiara Ramadhani
-- Nim   : D0224022

--Menggunakan Where dan Berween dalam table 

--WHERE
SELECT * FROM departemen WHERE lokasi = 'Polman';
+---------------+-----------------+--------+
| id_departemen | nama_departemen | lokasi |
+---------------+-----------------+--------+
|             9 | Pelayanan       | Polman |
|            12 | Kualitas        | Polman |
+---------------+-----------------+--------+

SELECT * FROM karyawan WHERE gaji > 6000000;
+-------------+---------------+------------------------+------------+---------------+
| id_karyawan | nama_karyawan | jabatan                | gaji       | id_departemen |
+-------------+---------------+------------------------+------------+---------------+
|           1 | Tiara         | Manager HRD            | 8500000.00 |             1 |
|           3 | Zahra         | Programmer             | 7000000.00 |             3 |
|           6 | Hasnidar      | Kepala Logistik        | 6500000.00 |             6 |
|           7 | Iqwal         | Peneliti               | 7500000.00 |             7 |
|           8 | Asri          | Legal Officer          | 6500000.00 |             8 |
|          10 | Pajri         | Analis Perencanaan     | 6700000.00 |            10 |
|          11 | Fahmi         | Supervisor Operasional | 6200000.00 |            11 |
|          13 | A. Irgi       | Developer              | 7200000.00 |             3 |
+-------------+---------------+------------------------+------------+---------------+
  
SELECT * FROM proyek WHERE tahun_selesai = 2024;
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
| id_proyek | nama_proyek                     | tahun_mulai | tahun_selesai | id_departemen | id_karyawan |
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
|         1 | Pelatihan Karyawan Baru         |        2024 |          2024 |             1 |          15 |
|         4 | Kampanye Produk Nasional        |        2024 |          2024 |             4 |           4 |
|         6 | Distribusi Barang Wilayah Barat |        2023 |          2024 |             6 |           9 |
|         8 | Perjanjian Kontrak Vendor       |        2024 |          2024 |             8 |           8 |
|        13 | Sistem Keamanan Gedung Baru     |        2023 |          2024 |            13 |           6 |
|        15 | Program Rekrutmen Karyawan Baru |        2023 |          2024 |            15 |           3 |
+-----------+---------------------------------+-------------+---------------+---------------+-------------+

--=============================================================================================================================================
--BETWEEN
 SELECT * FROM departemen WHERE id_departemen BETWEEN 1 AND 7;
+---------------+-----------------+-----------------+
| id_departemen | nama_departemen | lokasi          |
+---------------+-----------------+-----------------+
|             1 | HRD             | Tikke           |
|             2 | Keuangan        | Tapango         |
|             3 | IT              | Polewali Mandar |
|             4 | Pemasaran       | Tinambung       |
|             5 | Produksi        | Polewali Mandar |
|             6 | Logistik        | Budong-Budong   |
|             7 | R&D             | Topoyo          |
+---------------+-----------------+-----------------+

 SELECT * FROM karyawan WHERE gaji BETWEEN 5000000 AND 7000000;
+-------------+---------------+------------------------+------------+---------------+
| id_karyawan | nama_karyawan | jabatan                | gaji       | id_departemen |
+-------------+---------------+------------------------+------------+---------------+
|           2 | Yusnul        | Staf Keuangan          | 5500000.00 |             2 |
|           3 | Zahra         | Programmer             | 7000000.00 |             3 |
|           4 | Fatma         | Sales Executive        | 6000000.00 |             4 |
|           5 | Maryam        | Operator Produksi      | 5000000.00 |             5 |
|           6 | Hasnidar      | Kepala Logistik        | 6500000.00 |             6 |
|           8 | Asri          | Legal Officer          | 6500000.00 |             8 |
|          10 | Pajri         | Analis Perencanaan     | 6700000.00 |            10 |
|          11 | Fahmi         | Supervisor Operasional | 6200000.00 |            11 |
|          12 | Aydil         | Inspector Kualitas     | 5800000.00 |            12 |
|          14 | Arjuna        | Teknisi Pemeliharaan   | 5300000.00 |            14 |
|          15 | Khoiri        | Trainer                | 6000000.00 |            15 |
+-------------+---------------+------------------------+------------+---------------+

 SELECT * FROM proyek WHERE tahun_mulai BETWEEN 2023 AND 2024;
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
| id_proyek | nama_proyek                     | tahun_mulai | tahun_selesai | id_departemen | id_karyawan |
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
|         1 | Pelatihan Karyawan Baru         |        2024 |          2024 |             1 |          15 |
|         2 | Audit Keuangan Tahunan          |        2024 |          2025 |             2 |           2 |
|         3 | Pengembangan Sistem Informasi   |        2023 |          2025 |             3 |          13 |
|         4 | Kampanye Produk Nasional        |        2024 |          2024 |             4 |           4 |
|         5 | Produksi Barang Impor           |        2023 |          2023 |             5 |           5 |
|         6 | Distribusi Barang Wilayah Barat |        2023 |          2024 |             6 |           9 |
|         7 | Penelitian Inovasi Produk       |        2024 |          2025 |             7 |           7 |
|         8 | Perjanjian Kontrak Vendor       |        2024 |          2024 |             8 |           8 |
|        10 | Analisis Strategi Perusahaan    |        2024 |          2025 |            10 |           1 |
|        12 | Pengujian Kualitas Produk       |        2024 |          2025 |            12 |          12 |
|        13 | Sistem Keamanan Gedung Baru     |        2023 |          2024 |            13 |           6 |
|        14 | Pemeliharaan Mesin Produksi     |        2023 |          2023 |            14 |          14 |
|        15 | Program Rekrutmen Karyawan Baru |        2023 |          2024 |            15 |           3 |
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
