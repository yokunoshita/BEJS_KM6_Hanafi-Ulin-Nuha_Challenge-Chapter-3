-- Author : Hanafi Ulin NUha
CREATE DATABASE miniBank;
CREATE TABLE Nasabah (
    ID_Nasabah BIGSERIAL PRIMARY KEY NOT NULL,
    Nama VARCHAR(255) NOT NULL,
    Alamat TEXT NOT NULL,
    Nomor_Telepon VARCHAR(13) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

CREATE TABLE Akun (
    ID_Akun BIGSERIAL PRIMARY KEY NOT NULL,
    ID_Nasabah INT,
    Tipe_Akun VARCHAR(50) NOT NULL,
    Saldo INT NOT NULL
);

CREATE TABLE Transaksi (
    ID_Transaksi BIGSERIAL PRIMARY KEY NOT NULL,
    ID_Akun INT,
    Tanggal_Transaksi DATE NOT NULL,
    Total_Transaksi INT NOT NULL,
    Keterangan TEXT
);

SELECT * FROM Nasabah;
SELECT * FROM Akun;
SELECT * FROM Transaksi;

INSERT INTO Nasabah (Nama, Alamat, Nomor_Telepon, Email) VALUES
('Lina Wijaya', 'Jl. Anggrek No. 2, Medan', '081678904567', 'lina.wijaya@yahoo.com'),
('Budi Santoso', 'Jl. Merdeka No. 10, Jakarta', '081234567890', 'santosBudi@gmail.com'),
('Irfan Malik ', 'Jl. Pahlawan No. 3, Surabaya', '081345671234', 'Malikirf@gmail.com'),
('Puji Lestari ', 'Jl. Diponegoro No. 8, Yogyakarta ', '081456782345', 'splestari@yahoo.com'),
('Rizki Pratama ', ' Jl. Gajah Mada No. 2, Medan ', '081567893456', 'rizprat@gmail.com');

INSERT INTO Akun (ID_Nasabah, Tipe_Akun, Saldo) VALUES
(1, 'Silver', 1000000),
(2, 'Gold', 5000000),
(3, 'Silver', 750000),
(4, 'Platinum', 5000000),
(5, 'Gold', 4750000);

INSERT INTO Transaksi (ID_Akun, Tanggal_Transaksi, Total_Transaksi, Keterangan) VALUES
(1, '2024-01-15', 50000, 'Pembelian Pulsa Listrik'),
(2, '2024-02-16', 25000, 'Pembelian Bahan Bakar Motor'),
(3, '2023-04-17', 1000000, 'Reservasi Tempat Makan'),
(4, '2024-03-18', 750000, 'Pembelian Alat Elektronik'),
(5, '2023-02-19', 200000, ''),
(5, '2024-01-18', 800000, 'Pembayaran Asuransi');

UPDATE Transaksi
SET Keterangan = 'Pembuatan SIM'
WHERE ID_Transaksi = 5;

UPDATE Akun
SET Saldo = 10000000
WHERE ID_Akun = 4;

DELETE FROM Transaksi
WHERE ID_Transaksi = 6;

