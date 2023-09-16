-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Sep 2023 pada 17.44
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
-- Struktur dari tabel `entittas nasabah`
--

CREATE TABLE `entittas nasabah` (
  `Nama` varchar(50) NOT NULL,
  `Tanggal Lahir` date NOT NULL,
  `NIK` int(16) NOT NULL,
  `ID Nasabah` int(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No. Telepon` int(20) NOT NULL,
  `Pekerjaan` varchar(20) NOT NULL,
  `Nomor Rekening` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entittas nasabah`
--

INSERT INTO `entittas nasabah` (`Nama`, `Tanggal Lahir`, `NIK`, `ID Nasabah`, `Alamat`, `No. Telepon`, `Pekerjaan`, `Nomor Rekening`) VALUES
('Citra Azzahra Al-Fatihah', '2004-07-12', 130200001, 1, 'Jalan Pinang Mas', 895413749, 'Mahasiswa', 90123456);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `entittas nasabah`
--
ALTER TABLE `entittas nasabah`
  ADD PRIMARY KEY (`NIK`,`ID Nasabah`,`Nomor Rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
