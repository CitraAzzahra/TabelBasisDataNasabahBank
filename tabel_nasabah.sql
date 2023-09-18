-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2023 pada 13.13
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
-- Struktur dari tabel `entitas customer service`
--

CREATE TABLE `entitas customer service` (
  `ID Customer Service` int(10) NOT NULL,
  `Nama Customer Service` varchar(50) NOT NULL,
  `Jenis Kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `No. Telepon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entitas customer service`
--

INSERT INTO `entitas customer service` (`ID Customer Service`, `Nama Customer Service`, `Jenis Kelamin`, `No. Telepon`) VALUES
(12, 'Asa Sesi Hana', 'Perempuan', 7368118);

-- --------------------------------------------------------

--
-- Struktur dari tabel `entitas direktur bank`
--

CREATE TABLE `entitas direktur bank` (
  `ID Direktur` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis Kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Nomor Telepon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entitas direktur bank`
--

INSERT INTO `entitas direktur bank` (`ID Direktur`, `Nama`, `Jenis Kelamin`, `Nomor Telepon`) VALUES
(1, 'Neti Wahyu Puji', 'Perempuan', 8978976);

-- --------------------------------------------------------

--
-- Struktur dari tabel `entitas saldo tabungan`
--

CREATE TABLE `entitas saldo tabungan` (
  `Kode Transaksi` int(35) NOT NULL,
  `No, Slip` int(35) NOT NULL,
  `No. Rekening` int(12) NOT NULL,
  `Nama Nasabah` varchar(50) NOT NULL,
  `Jumlah Setor` int(70) NOT NULL,
  `Tanggal Setor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entitas saldo tabungan`
--

INSERT INTO `entitas saldo tabungan` (`Kode Transaksi`, `No, Slip`, `No. Rekening`, `Nama Nasabah`, `Jumlah Setor`, `Tanggal Setor`) VALUES
(9080706, 1324, 1234567891, 'Citra Azzahra Al-Fatihah', 2000000, '2023-09-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `entitas teller`
--

CREATE TABLE `entitas teller` (
  `ID Teller` int(10) NOT NULL,
  `Nama Teller` varchar(50) NOT NULL,
  `Jenis Kelamin` enum('Perempuan','Laki-laki') NOT NULL,
  `Nomor Telepon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entitas teller`
--

INSERT INTO `entitas teller` (`ID Teller`, `Nama Teller`, `Jenis Kelamin`, `Nomor Telepon`) VALUES
(24, 'Galuchsyah Pahlivi', 'Laki-laki', 8587121);

-- --------------------------------------------------------

--
-- Struktur dari tabel `entittas nasabah`
--

CREATE TABLE `entittas nasabah` (
  `ID Nasabah` int(10) NOT NULL,
  `NIK` int(16) NOT NULL,
  `Nomor Rekening` int(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No. Telepon` int(20) NOT NULL,
  `Pekerjaan` varchar(20) NOT NULL,
  `Tanggal Lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `entittas nasabah`
--

INSERT INTO `entittas nasabah` (`ID Nasabah`, `NIK`, `Nomor Rekening`, `Nama`, `Alamat`, `No. Telepon`, `Pekerjaan`, `Tanggal Lahir`) VALUES
(101, 123456789, 98765, 'Citra Azzahra Al-Fatihah', 'Jalan Pinang Mas', 895413749, 'Mahasiswa', '2004-07-12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `entitas customer service`
--
ALTER TABLE `entitas customer service`
  ADD PRIMARY KEY (`ID Customer Service`);

--
-- Indeks untuk tabel `entitas direktur bank`
--
ALTER TABLE `entitas direktur bank`
  ADD PRIMARY KEY (`ID Direktur`);

--
-- Indeks untuk tabel `entitas saldo tabungan`
--
ALTER TABLE `entitas saldo tabungan`
  ADD PRIMARY KEY (`Kode Transaksi`),
  ADD UNIQUE KEY `No, Slip` (`No, Slip`),
  ADD UNIQUE KEY `No. Rekening` (`No. Rekening`);

--
-- Indeks untuk tabel `entitas teller`
--
ALTER TABLE `entitas teller`
  ADD PRIMARY KEY (`ID Teller`);

--
-- Indeks untuk tabel `entittas nasabah`
--
ALTER TABLE `entittas nasabah`
  ADD PRIMARY KEY (`ID Nasabah`),
  ADD UNIQUE KEY `NIK` (`NIK`),
  ADD UNIQUE KEY `Nomor Rekening` (`Nomor Rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
