-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2018 at 04:46 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(6) NOT NULL,
  `nama_alternatif` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `hasil_akhir` double NOT NULL,
  `default` int(1) NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`, `deskripsi`, `hasil_akhir`, `default`, `kasus_id`) VALUES
('A1', 'Alterantif 1', 'Fathi Khairina', 0, 1, ''),
('A2', 'Alterantif 2', 'Aziz Sudrajat', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `analisa_kriteria`
--

CREATE TABLE `analisa_kriteria` (
  `id_analisa_kriteria` int(11) NOT NULL,
  `kriteria_id_pertama` varchar(6) NOT NULL,
  `kriteria_id_kedua` varchar(6) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`id_analisa_kriteria`, `kriteria_id_pertama`, `kriteria_id_kedua`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kasus_id`) VALUES
(38, 'C1', 'C2', 9, 0, ''),
(39, 'C1', 'C3', 9, 0, ''),
(40, 'C1', 'C4', 8, 0, ''),
(41, 'C1', 'C5', 8, 0, ''),
(42, 'C2', 'C3', 8, 0, ''),
(43, 'C2', 'C4', 7, 0, ''),
(44, 'C2', 'C5', 7, 0, ''),
(45, 'C3', 'C4', 7, 0, ''),
(46, 'C3', 'C5', 8, 0, ''),
(47, 'C4', 'C5', 9, 0, ''),
(48, 'C2', 'C1', 0.11111111111111, 0, ''),
(49, 'C3', 'C1', 0.11111111111111, 0, ''),
(50, 'C4', 'C1', 0.125, 0, ''),
(51, 'C5', 'C1', 0.125, 0, ''),
(52, 'C3', 'C2', 0.125, 0, ''),
(53, 'C4', 'C2', 0.14285714285714, 0, ''),
(54, 'C5', 'C2', 0.14285714285714, 0, ''),
(55, 'C4', 'C3', 0.14285714285714, 0, ''),
(56, 'C5', 'C3', 0.125, 0, ''),
(57, 'C5', 'C4', 0.11111111111111, 0, ''),
(58, 'C1', 'C1', 1, 0, ''),
(59, 'C2', 'C2', 1, 0, ''),
(60, 'C3', 'C3', 1, 0, ''),
(61, 'C4', 'C4', 1, 0, ''),
(62, 'C5', 'C5', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kasus`
--

CREATE TABLE `kasus` (
  `id_kasus` varchar(6) NOT NULL,
  `nama_kasus` int(25) NOT NULL,
  `tanggal_kasus` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(6) NOT NULL,
  `nama_kriteria` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `deskripsi`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Kriteria 1', 'Absensi', 0, 0),
('C2', 'Kriteria 2', 'Kinerja', 0, 0),
('C3', 'Kriteria 3', 'Attitude', 0, 0),
('C4', 'Kriteria 4', 'Tanggung Jawab', 0, 0),
('C5', 'Kriteria 5', 'Kerapihan', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` varchar(6) NOT NULL,
  `jumlah_nilai` int(2) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jumlah_nilai`, `deskripsi`) VALUES
('N1', 9, 'Mutlak sangat penting dari '),
('N2', 8, 'Mendekati mutlak dari'),
('N3', 7, 'Sangat penting dari'),
('N4', 6, 'Mendekati sangat penting dari'),
('N5', 5, 'Lebih penting dari'),
('N6', 4, 'Mendekati lebih penting dari'),
('N7', 3, 'Sedikit lebih penting dari'),
('N8', 2, 'Mendekati sedikit lebih penting dari'),
('N9', 1, 'Sama penting dengan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `kasus_id` (`kasus_id`);

--
-- Indexes for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD PRIMARY KEY (`id_analisa_kriteria`),
  ADD KEY `kriteria_id_pertama` (`kriteria_id_pertama`),
  ADD KEY `kriteria_id_kedua` (`kriteria_id_kedua`),
  ADD KEY `kasus_id` (`kasus_id`);

--
-- Indexes for table `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`id_kasus`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  MODIFY `id_analisa_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD CONSTRAINT `analisakriteria01_kriteria` FOREIGN KEY (`kriteria_id_pertama`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anlisakriteria02_kriteria` FOREIGN KEY (`kriteria_id_kedua`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
