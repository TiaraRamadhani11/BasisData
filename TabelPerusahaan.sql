-- Nama : Tiara Ramadhani
-- Nim  : D0224022

-- Create Database
CREATE DATABASE perusahaan;
-- Masuk Ke Dalam Database
USE perusahaan;

--=========================================================================
-- Create Table departemen
CREATE TABLE departemen (
    id_departemen INT PRIMARY KEY,
    nama_departemen VARCHAR(50),
    lokasi VARCHAR(50)
);
-- Insert Table departemen
INSERT INTO departemen (id_departemen, nama_departemen, lokasi) VALUES
(1, 'HRD', 'Tikke'),
(2, 'Keuangan', 'Tapango'),
(3, 'IT', 'Polewali Mandar'),
(4, 'Pemasaran', 'Tinambung'),
(5, 'Produksi', 'Polewali Mandar'),
(6, 'Logistik', 'Budong-Budong'),
(7, 'R&D', 'Topoyo'),
(8, 'Legal', 'Pasangkayu'),
(9, 'Pelayanan', 'Polman'),
(10, 'Perencanaan', 'Campalagian'),
(11, 'Operasional', 'Majene'),
(12, 'Kualitas', 'Polman'),
(13, 'Keamanan', 'Pasangkayu'),
(14, 'Pemeliharaan', 'Tinambung'),
(15, 'Training', 'Majene');
--=========================================================================

-- Create Table karyawan
CREATE TABLE karyawan (
    id_karyawan INT PRIMARY KEY,
    nama_karyawan VARCHAR(50),
    jabatan VARCHAR(50),
    gaji DECIMAL(12,2),
    id_departemen INT,
    FOREIGN KEY (id_departemen) REFERENCES departemen(id_departemen)
);
-- Insert Table karyawan
INSERT INTO karyawan (id_karyawan, nama_karyawan, jabatan, gaji, id_departemen) VALUES
(1, 'Tiara', 'Manager HRD', 8500000, 1),
(2, 'Yusnul', 'Staf Keuangan', 5500000, 2),
(3, 'Zahra', 'Programmer', 7000000, 3),
(4, 'Fatma', 'Sales Executive', 6000000, 4),
(5, 'Maryam', 'Operator Produksi', 5000000, 5),
(6, 'Hasnidar', 'Kepala Logistik', 6500000, 6),
(7, 'Iqwal', 'Peneliti', 7500000, 7),
(8, 'Asri', 'Legal Officer', 6500000, 8),
(9, 'Rifai', 'Customer Service', 4800000, 9),
(10, 'Pajri', 'Analis Perencanaan', 6700000, 10),
(11, 'Fahmi', 'Supervisor Operasional', 6200000, 11),
(12, 'Aydil', 'Inspector Kualitas', 5800000, 12),
(13, 'A. Irgi', 'Developer', 7200000, 3),
(14, 'Arjuna', 'Teknisi Pemeliharaan', 5300000, 14),
(15, 'Khoiri', 'Trainer', 6000000, 15);
--========================================================================================

-- Create Table proyek
CREATE TABLE proyek (
    id_proyek INT PRIMARY KEY,
    nama_proyek VARCHAR(100),
    tahun_mulai INT,
    tahun_selesai INT,
    id_departemen INT,
    id_karyawan INT,
    FOREIGN KEY (id_departemen) REFERENCES departemen(id_departemen),
    FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
);
-- Insert Table proyek
INSERT INTO proyek (id_proyek, nama_proyek, tahun_mulai, tahun_selesai, id_departemen, id_karyawan) VALUES
(1, 'Pelatihan Karyawan Baru', 2024, 2024, 1, 15),
(2, 'Audit Keuangan Tahunan', 2024, 2025, 2, 2),
(3, 'Pengembangan Sistem Informasi', 2023, 2025, 3, 13),
(4, 'Kampanye Produk Nasional', 2024, 2024, 4, 4),
(5, 'Produksi Barang Impor', 2023, 2023, 5, 5),
(6, 'Distribusi Barang Wilayah Barat', 2023, 2024, 6, 9),
(7, 'Penelitian Inovasi Produk', 2024, 2025, 7, 7),
(8, 'Perjanjian Kontrak Vendor', 2024, 2024, 8, 8),
(9, 'Peningkatan Layanan Pelanggan', 2025, 2025, 9, 10),
(10, 'Analisis Strategi Perusahaan', 2024, 2025, 10, 1),
(11, 'Efisiensi Operasional Pabrik', 2025, 2025, 11, 11),
(12, 'Pengujian Kualitas Produk', 2024, 2025, 12, 12),
(13, 'Sistem Keamanan Gedung Baru', 2023, 2024, 13, 6),
(14, 'Pemeliharaan Mesin Produksi', 2023, 2023, 14, 14),
(15, 'Program Rekrutmen Karyawan Baru', 2023, 2024, 15, 3);
--========================================================================================================

--MENAMPILKAN SEMUA TABLE
select * from departemen;
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
|             8 | Legal           | Pasangkayu      |
|             9 | Pelayanan       | Polman          |
|            10 | Perencanaan     | Campalagian     |
|            11 | Operasional     | Majene          |
|            12 | Kualitas        | Polman          |
|            13 | Keamanan        | Pasangkayu      |
|            14 | Pemeliharaan    | Tinambung       |
|            15 | Training        | Majene          |
+---------------+-----------------+-----------------+

select * from karyawan;
+-------------+---------------+------------------------+------------+---------------+
| id_karyawan | nama_karyawan | jabatan                | gaji       | id_departemen |
+-------------+---------------+------------------------+------------+---------------+
|           1 | Tiara         | Manager HRD            | 8500000.00 |             1 |
|           2 | Yusnul        | Staf Keuangan          | 5500000.00 |             2 |
|           3 | Zahra         | Programmer             | 7000000.00 |             3 |
|           4 | Fatma         | Sales Executive        | 6000000.00 |             4 |
|           5 | Maryam        | Operator Produksi      | 5000000.00 |             5 |
|           6 | Hasnidar      | Kepala Logistik        | 6500000.00 |             6 |
|           7 | Iqwal         | Peneliti               | 7500000.00 |             7 |
|           8 | Asri          | Legal Officer          | 6500000.00 |             8 |
|           9 | Rifai         | Customer Service       | 4800000.00 |             9 |
|          10 | Pajri         | Analis Perencanaan     | 6700000.00 |            10 |
|          11 | Fahmi         | Supervisor Operasional | 6200000.00 |            11 |
|          12 | Aydil         | Inspector Kualitas     | 5800000.00 |            12 |
|          13 | A. Irgi       | Developer              | 7200000.00 |             3 |
|          14 | Arjuna        | Teknisi Pemeliharaan   | 5300000.00 |            14 |
|          15 | Khoiri        | Trainer                | 6000000.00 |            15 |
+-------------+---------------+------------------------+------------+---------------+

select * from proyek;
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
|         9 | Peningkatan Layanan Pelanggan   |        2025 |          2025 |             9 |          10 |
|        10 | Analisis Strategi Perusahaan    |        2024 |          2025 |            10 |           1 |
|        11 | Efisiensi Operasional Pabrik    |        2025 |          2025 |            11 |          11 |
|        12 | Pengujian Kualitas Produk       |        2024 |          2025 |            12 |          12 |
|        13 | Sistem Keamanan Gedung Baru     |        2023 |          2024 |            13 |           6 |
|        14 | Pemeliharaan Mesin Produksi     |        2023 |          2023 |            14 |          14 |
|        15 | Program Rekrutmen Karyawan Baru |        2023 |          2024 |            15 |           3 |
+-----------+---------------------------------+-------------+---------------+---------------+-------------+
