-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 05:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afrida`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemasukanayam`
--

CREATE TABLE `pemasukanayam` (
  `id_ayam` int(10) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `berat` int(3) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `id_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaranayam`
--

CREATE TABLE `pengeluaranayam` (
  `id_pengeluaran` int(10) NOT NULL,
  `berat` int(3) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `nama` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` char(1) COLLATE latin1_general_ci NOT NULL,
  `notelp` int(13) NOT NULL,
  `alamat` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `id_user` varchar(20) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `hak_akses` char(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemasukanayam`
--
ALTER TABLE `pemasukanayam`
  ADD PRIMARY KEY (`id_ayam`);

--
-- Indexes for table `pengeluaranayam`
--
ALTER TABLE `pengeluaranayam`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemasukanayam`
--
ALTER TABLE `pemasukanayam`
  MODIFY `id_ayam` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaranayam`
--
ALTER TABLE `pengeluaranayam`
  MODIFY `id_pengeluaran` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
