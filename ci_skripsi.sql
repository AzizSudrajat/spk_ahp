-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 02:04 PM
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
('A2', 'Alterantif 2', 'Aziz Sudrajat', 0, 1, ''),
('A3', 'Alterantif 3', 'Wawa', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `id` int(11) NOT NULL,
  `kriteria_id` varchar(6) NOT NULL,
  `alternatif_id_pertama` varchar(6) NOT NULL,
  `alternatif_id_kedua` varchar(6) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`id`, `kriteria_id`, `alternatif_id_pertama`, `alternatif_id_kedua`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `kasus_id`) VALUES
(82, 'C1', 'A1', 'A2', 9, 0.52962962962963, 'CA0578'),
(83, 'C1', 'A1', 'A3', 8, 0.87498632833862, 'CA0578'),
(84, 'C1', 'A2', 'A3', 0.143, 0.015640380619053, 'CA0578'),
(85, 'C1', 'A2', 'A1', 0.11111111111111, 0.089887640449437, 'CA0578'),
(86, 'C1', 'A3', 'A1', 0.125, 0.10112359550562, 'CA0578'),
(87, 'C1', 'A3', 'A2', 6.993006993007, 0.41152263374486, 'CA0578'),
(88, 'C1', 'A1', 'A1', 1, 0.80898876404494, 'CA0578'),
(89, 'C1', 'A2', 'A2', 1, 0.058847736625514, 'CA0578'),
(90, 'C1', 'A3', 'A3', 1, 0.10937329104233, 'CA0578'),
(91, 'C2', 'A1', 'A2', 0.5, 0.018872904843606, 'CA0578'),
(92, 'C2', 'A1', 'A3', 6, 0.36882222768626, 'CA0578'),
(93, 'C2', 'A2', 'A3', 0.125, 0.0076837964101303, 'CA0578'),
(94, 'C2', 'A2', 'A1', 2, 0.45425867507886, 'CA0578'),
(95, 'C2', 'A3', 'A1', 0.16666666666667, 0.037854889589906, 'CA0578'),
(96, 'C2', 'A3', 'A2', 8, 0.30196647749769, 'CA0578'),
(97, 'C2', 'A1', 'A1', 1, 0.22712933753943, 'CA0578'),
(98, 'C2', 'A2', 'A2', 1, 0.037745809687211, 'CA0578'),
(99, 'C2', 'A3', 'A3', 1, 0.061470371281043, 'CA0578'),
(100, 'C3', 'A1', 'A2', 0.1, 0.0036054402166866, 'CA0578'),
(101, 'C3', 'A1', 'A3', 0.25, 0.010196590260217, 'CA0578'),
(102, 'C3', 'A2', 'A3', 7, 0.28550452728608, 'CA0578'),
(103, 'C3', 'A2', 'A1', 10, 0.51539012168933, 'CA0578'),
(104, 'C3', 'A3', 'A1', 4, 0.20615604867573, 'CA0578'),
(105, 'C3', 'A3', 'A2', 0.14285714285714, 0.0051506288809807, 'CA0578'),
(106, 'C3', 'A1', 'A1', 1, 0.051539012168933, 'CA0578'),
(107, 'C3', 'A2', 'A2', 1, 0.036054402166866, 'CA0578'),
(108, 'C3', 'A3', 'A3', 1, 0.040786361040868, 'CA0578'),
(109, 'C4', 'A1', 'A2', 8, 0.1916816667305, 'CA0578'),
(110, 'C4', 'A1', 'A3', 4, 0.13459855979541, 'CA0578'),
(111, 'C4', 'A2', 'A3', 0.2, 0.0067299279897705, 'CA0578'),
(112, 'C4', 'A2', 'A1', 0.125, 0.0060160427807487, 'CA0578'),
(113, 'C4', 'A3', 'A1', 0.25, 0.012032085561497, 'CA0578'),
(114, 'C4', 'A3', 'A2', 5, 0.11980104170656, 'CA0578'),
(115, 'C4', 'A1', 'A1', 1, 0.048128342245989, 'CA0578'),
(116, 'C4', 'A2', 'A2', 1, 0.023960208341312, 'CA0578'),
(117, 'C4', 'A3', 'A3', 1, 0.033649639948853, 'CA0578'),
(118, 'C5', 'A1', 'A2', 0.143, 0.0031166996662798, 'CA0578'),
(119, 'C5', 'A1', 'A3', 6, 0.16193894901622, 'CA0578'),
(120, 'C5', 'A2', 'A3', 0.333, 0.0089876116704003, 'CA0578'),
(121, 'C5', 'A2', 'A1', 6.993006993007, 0.24165939450896, 'CA0578'),
(122, 'C5', 'A3', 'A1', 0.16666666666667, 0.0057595489024637, 'CA0578'),
(123, 'C5', 'A3', 'A2', 3.003003003003, 0.065450758442634, 'CA0578'),
(124, 'C5', 'A1', 'A1', 1, 0.034557293414781, 'CA0578'),
(125, 'C5', 'A2', 'A2', 1, 0.021795102561397, 'CA0578'),
(126, 'C5', 'A3', 'A3', 1, 0.026989824836037, 'CA0578');

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
(38, 'C1', 'C2', 9, 0.86449399656947, ''),
(39, 'C1', 'C3', 9, 0.49266862170088, ''),
(40, 'C1', 'C4', 8, 0.34615384615385, ''),
(41, 'C1', 'C5', 8, 0.24242424242424, ''),
(42, 'C2', 'C3', 8, 0.43792766373412, ''),
(43, 'C2', 'C4', 7, 0.30288461538462, ''),
(44, 'C2', 'C5', 7, 0.21212121212121, ''),
(45, 'C3', 'C4', 7, 0.30288461538462, ''),
(46, 'C3', 'C5', 8, 0.24242424242424, ''),
(47, 'C4', 'C5', 9, 0.27272727272727, ''),
(48, 'C2', 'C1', 0.11111111111111, 0.075471698113207, ''),
(49, 'C3', 'C1', 0.11111111111111, 0.075471698113207, ''),
(50, 'C4', 'C1', 0.125, 0.084905660377359, ''),
(51, 'C5', 'C1', 0.125, 0.084905660377359, ''),
(52, 'C3', 'C2', 0.125, 0.012006861063465, ''),
(53, 'C4', 'C2', 0.14285714285714, 0.013722126929674, ''),
(54, 'C5', 'C2', 0.14285714285714, 0.013722126929674, ''),
(55, 'C4', 'C3', 0.14285714285714, 0.0078201368523948, ''),
(56, 'C5', 'C3', 0.125, 0.0068426197458456, ''),
(57, 'C5', 'C4', 0.11111111111111, 0.0048076923076923, ''),
(58, 'C1', 'C1', 1, 0.67924528301887, ''),
(59, 'C2', 'C2', 1, 0.096054888507719, ''),
(60, 'C3', 'C3', 1, 0.054740957966764, ''),
(61, 'C4', 'C4', 1, 0.043269230769231, ''),
(62, 'C5', 'C5', 1, 0.03030303030303, '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_alternatif_kriteria`
--

CREATE TABLE `hasil_alternatif_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria_id` varchar(6) NOT NULL,
  `alternatif_id` varchar(6) NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_alternatif_kriteria`
--

INSERT INTO `hasil_alternatif_kriteria` (`id`, `kriteria_id`, `alternatif_id`, `skor_alt_kri`, `hasil_alt_kri`, `kasus_id`) VALUES
(32, 'C1', 'A1', 0.738, 0.48393442622951, 'CA0578'),
(33, 'C1', 'A2', 0.055, 0.036065573770492, 'CA0578'),
(34, 'C1', 'A3', 0.207, 0.13573770491803, 'CA0578'),
(35, 'C2', 'A1', 0.205, 0.28043775649795, 'CA0578'),
(36, 'C2', 'A2', 0.167, 0.22845417236662, 'CA0578'),
(37, 'C2', 'A3', 0.134, 0.18331053351573, 'CA0578'),
(38, 'C3', 'A1', 0.022, 0.042065009560229, 'CA0578'),
(39, 'C3', 'A2', 0.279, 0.53346080305927, 'CA0578'),
(40, 'C3', 'A3', 0.084, 0.16061185468451, 'CA0578'),
(41, 'C4', 'A1', 0.125, 0.45289855072464, 'CA0578'),
(42, 'C4', 'A2', 0.012, 0.043478260869565, 'CA0578'),
(43, 'C4', 'A3', 0.055, 0.19927536231884, 'CA0578'),
(44, 'C5', 'A1', 0.067, 0.30593607305936, 'CA0578'),
(45, 'C5', 'A2', 0.091, 0.41552511415525, 'CA0578'),
(46, 'C5', 'A3', 0.033, 0.15068493150685, 'CA0578');

-- --------------------------------------------------------

--
-- Table structure for table `kasus`
--

CREATE TABLE `kasus` (
  `id` varchar(6) NOT NULL,
  `id_kasus` varchar(6) NOT NULL,
  `nama_kasus` varchar(50) NOT NULL,
  `tanggal_kasus` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasus`
--

INSERT INTO `kasus` (`id`, `id_kasus`, `nama_kasus`, `tanggal_kasus`, `deskripsi`) VALUES
('', 'CA0578', 'Pemilihan Karyawan', 'Desember', 'Lala yeye');

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
('C1', 'Kriteria 1', 'Absensi', 0, 0.525),
('C2', 'Kriteria 2', 'Kinerja', 0, 0.225),
('C3', 'Kriteria 3', 'Attitude', 0, 0.138),
('C4', 'Kriteria 4', 'Tanggung Jawab', 0, 0.084),
('C5', 'Kriteria 5', 'Kerapihan', 0, 0.028);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` varchar(6) NOT NULL,
  `jumlah_nilai` double NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jumlah_nilai`, `deskripsi`) VALUES
('N01', 9, 'Mutlak sangat penting dari '),
('N02', 8, 'Mendekati mutlak dari'),
('N03', 7, 'Sangat penting dari'),
('N04', 6, 'Mendekati sangat penting dari'),
('N05', 5, 'Lebih penting dari'),
('N06', 4, 'Mendekati lebih penting dari'),
('N07', 3, 'Sedikit lebih penting dari'),
('N08', 2, 'Mendekati sedikit lebih penting dari'),
('N09', 1, 'Sama penting dengan'),
('N10', 0.5, '1 bagi mendekati sedikit lebih penting dari'),
('N11', 0.333, '1 bagi sedikit lebih penting dari'),
('N12', 0.25, '1 bagi mendekati lebih penting dari'),
('N13', 0.2, '1 bagi lebih penting dari'),
('N14', 0.167, '1 bagi mendekati sangat penting dari'),
('N15', 0.143, '1 bagi sangat penting dari'),
('N16', 0.125, '1 bagi mendekati mutlak dari'),
('N17', 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `alternatif_id` varchar(6) NOT NULL,
  `bobot` double NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id`, `alternatif_id`, `bobot`, `kasus_id`) VALUES
(4, 'A1', 0.31305436321433777, 'CA0578'),
(5, 'A2', 0.25139678484423944, 'CA0578'),
(6, 'A3', 0.165924077388792, 'CA0578');

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
-- Indexes for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kriteria_id` (`kriteria_id`),
  ADD KEY `alternatif_id_pertama` (`alternatif_id_pertama`),
  ADD KEY `alternatif_id_kedua` (`alternatif_id_kedua`),
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
-- Indexes for table `hasil_alternatif_kriteria`
--
ALTER TABLE `hasil_alternatif_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kriteria_id` (`kriteria_id`),
  ADD KEY `alternatif_id` (`alternatif_id`),
  ADD KEY `kasus_id` (`kasus_id`);

--
-- Indexes for table `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kasus` (`id_kasus`);

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
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  MODIFY `id_analisa_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `hasil_alternatif_kriteria`
--
ALTER TABLE `hasil_alternatif_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
