-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Sep 2023 pada 17.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabel_nasabah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `entitas saldo tabungan`
--

CREATE TABLE `entitas saldo tabungan` (
  `Kode Transaksi` int(35) NOT NULL,
  `Jumlah Setor` int(70) NOT NULL,
  `No. Slip` int(50) NOT NULL,
  `No. Rekening` int(12) NOT NULL,
  `Tanggal Setor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entitas saldo tabungan`
--

INSERT INTO `entitas saldo tabungan` (`Kode Transaksi`, `Jumlah Setor`, `No. Slip`, `No. Rekening`, `Tanggal Setor`) VALUES
(989786756, 200000, 770, 1234567891, '2023-09-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `entitas saldo tabungan`
--
ALTER TABLE `entitas saldo tabungan`
  ADD PRIMARY KEY (`Kode Transaksi`,`No. Slip`,`No. Rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
