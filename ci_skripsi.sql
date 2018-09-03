-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 04:05 PM
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
  `id` int(11) NOT NULL,
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

INSERT INTO `alternatif` (`id`, `id_alternatif`, `nama_alternatif`, `deskripsi`, `hasil_akhir`, `default`, `kasus_id`) VALUES
(1, 'A1', 'Alterantif 1', 'Fathi Khairina', 0, 1, ''),
(2, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0, 1, ''),
(3, 'A3', 'Alterantif 3', 'Wawa', 0, 1, '');

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
(271, 'C1', 'A1', 'A2', 0.167, 0.12749481950049, 'CA1275'),
(272, 'C1', 'A1', 'A3', 0.143, 0.017561095419379, 'CA1275'),
(273, 'C1', 'A2', 'A3', 7, 0.85963404150804, 'CA1275'),
(274, 'C1', 'A2', 'A1', 5.9880239520958, 0.42829630916404, 'CA1275'),
(275, 'C1', 'A3', 'A1', 6.993006993007, 0.50017820720556, 'CA1275'),
(276, 'C1', 'A3', 'A2', 0.14285714285714, 0.10906314756244, 'CA1275'),
(277, 'C1', 'A1', 'A1', 1, 0.071525483630395, 'CA1275'),
(278, 'C1', 'A2', 'A2', 1, 0.76344203293707, 'CA1275'),
(279, 'C1', 'A3', 'A3', 1, 0.12280486307258, 'CA1275'),
(280, 'C2', 'A1', 'A2', 0.143, 0.055772921438742, 'CA1275'),
(281, 'C2', 'A1', 'A3', 7, 0.27840750904824, 'CA1275'),
(282, 'C2', 'A2', 'A3', 9, 0.35795251163346, 'CA1275'),
(283, 'C2', 'A2', 'A1', 6.993006993007, 0.31618393845097, 'CA1275'),
(284, 'C2', 'A3', 'A1', 0.14285714285714, 0.0064591861712125, 'CA1275'),
(285, 'C2', 'A3', 'A2', 0.11111111111111, 0.043335603293505, 'CA1275'),
(286, 'C2', 'A1', 'A1', 1, 0.045214303198489, 'CA1275'),
(287, 'C2', 'A2', 'A2', 1, 0.39002042964155, 'CA1275'),
(288, 'C2', 'A3', 'A3', 1, 0.039772501292606, 'CA1275'),
(289, 'C3', 'A1', 'A2', 8, 0.45578871652165, 'CA1275'),
(290, 'C3', 'A1', 'A3', 4, 0.13196964698119, 'CA1275'),
(291, 'C3', 'A2', 'A3', 0.167, 0.0055097327614649, 'CA1275'),
(292, 'C3', 'A2', 'A1', 0.125, 0.0053209840912866, 'CA1275'),
(293, 'C3', 'A3', 'A1', 0.25, 0.010641968182573, 'CA1275'),
(294, 'C3', 'A3', 'A2', 5.9880239520958, 0.34115921895333, 'CA1275'),
(295, 'C3', 'A1', 'A1', 1, 0.042567872730293, 'CA1275'),
(296, 'C3', 'A2', 'A2', 1, 0.056973589565207, 'CA1275'),
(297, 'C3', 'A3', 'A3', 1, 0.032992411745299, 'CA1275'),
(298, 'C4', 'A1', 'A2', 0.2, 0.0084203463130532, 'CA1275'),
(299, 'C4', 'A1', 'A3', 0.2, 0.0063071586250394, 'CA1275'),
(300, 'C4', 'A2', 'A3', 0.2, 0.0063071586250394, 'CA1275'),
(301, 'C4', 'A2', 'A1', 5, 0.14496159136119, 'CA1275'),
(302, 'C4', 'A3', 'A1', 5, 0.14496159136119, 'CA1275'),
(303, 'C4', 'A3', 'A2', 5, 0.21050865782633, 'CA1275'),
(304, 'C4', 'A1', 'A1', 1, 0.028992318272237, 'CA1275'),
(305, 'C4', 'A2', 'A2', 1, 0.042101731565266, 'CA1275'),
(306, 'C4', 'A3', 'A3', 1, 0.031535793125197, 'CA1275'),
(307, 'C5', 'A1', 'A2', 0.333, 0.012765961261149, 'CA1275'),
(308, 'C5', 'A1', 'A3', 0.5, 0.014615609470915, 'CA1275'),
(309, 'C5', 'A2', 'A3', 1, 0.02923121894183, 'CA1275'),
(310, 'C5', 'A2', 'A1', 3.003003003003, 0.074157564164651, 'CA1275'),
(311, 'C5', 'A3', 'A1', 2, 0.049388937733658, 'CA1275'),
(312, 'C5', 'A3', 'A2', 1, 0.038336220003452, 'CA1275'),
(313, 'C5', 'A1', 'A1', 1, 0.024694468866829, 'CA1275'),
(314, 'C5', 'A2', 'A2', 1, 0.038336220003452, 'CA1275'),
(315, 'C5', 'A3', 'A3', 1, 0.02923121894183, 'CA1275'),
(316, 'C1', 'A1', 'A2', 3, 0.69230769230769, 'CA8967'),
(317, 'C1', 'A1', 'A3', 0.5, 0.11111111111111, 'CA8967'),
(318, 'C1', 'A2', 'A3', 3, 0.66666666666667, 'CA8967'),
(319, 'C1', 'A2', 'A1', 0.33333333333333, 0.099999999999999, 'CA8967'),
(320, 'C1', 'A3', 'A1', 2, 0.6, 'CA8967'),
(321, 'C1', 'A3', 'A2', 0.33333333333333, 0.076923076923076, 'CA8967'),
(322, 'C1', 'A1', 'A1', 1, 0.3, 'CA8967'),
(323, 'C1', 'A2', 'A2', 1, 0.23076923076923, 'CA8967'),
(324, 'C1', 'A3', 'A3', 1, 0.22222222222222, 'CA8967'),
(325, 'C2', 'A1', 'A2', 1, 0.1530612244898, 'CA8967'),
(326, 'C2', 'A1', 'A3', 0.25, 0.023255813953488, 'CA8967'),
(327, 'C2', 'A2', 'A3', 5, 0.46511627906977, 'CA8967'),
(328, 'C2', 'A2', 'A1', 1, 0.10714285714286, 'CA8967'),
(329, 'C2', 'A3', 'A1', 4, 0.42857142857143, 'CA8967'),
(330, 'C2', 'A3', 'A2', 0.2, 0.030612244897959, 'CA8967'),
(331, 'C2', 'A1', 'A1', 1, 0.10714285714286, 'CA8967'),
(332, 'C2', 'A2', 'A2', 1, 0.1530612244898, 'CA8967'),
(333, 'C2', 'A3', 'A3', 1, 0.093023255813953, 'CA8967'),
(334, 'C3', 'A1', 'A2', 8, 0.51032806804374, 'CA8967'),
(335, 'C3', 'A1', 'A3', 0.25, 0.013157894736842, 'CA8967'),
(336, 'C3', 'A2', 'A3', 7, 0.36842105263158, 'CA8967'),
(337, 'C3', 'A2', 'A1', 0.125, 0.0086455331412104, 'CA8967'),
(338, 'C3', 'A3', 'A1', 4, 0.27665706051873, 'CA8967'),
(339, 'C3', 'A3', 'A2', 0.14285714285714, 0.0091130012150666, 'CA8967'),
(340, 'C3', 'A1', 'A1', 1, 0.069164265129683, 'CA8967'),
(341, 'C3', 'A2', 'A2', 1, 0.063791008505468, 'CA8967'),
(342, 'C3', 'A3', 'A3', 1, 0.052631578947368, 'CA8967'),
(343, 'C4', 'A1', 'A2', 4, 0.19160583941606, 'CA8967'),
(344, 'C4', 'A1', 'A3', 0.333, 0.013144909801445, 'CA8967'),
(345, 'C4', 'A2', 'A3', 5, 0.19737101803971, 'CA8967'),
(346, 'C4', 'A2', 'A1', 0.25, 0.013360884305976, 'CA8967'),
(347, 'C4', 'A3', 'A1', 3.003003003003, 0.16049110277449, 'CA8967'),
(348, 'C4', 'A3', 'A2', 0.2, 0.0095802919708029, 'CA8967'),
(349, 'C4', 'A1', 'A1', 1, 0.053443537223905, 'CA8967'),
(350, 'C4', 'A2', 'A2', 1, 0.047901459854015, 'CA8967'),
(351, 'C4', 'A3', 'A3', 1, 0.039474203607942, 'CA8967'),
(352, 'C5', 'A1', 'A2', 1, 0.034644975441286, 'CA8967'),
(353, 'C5', 'A1', 'A3', 4, 0.13114754098361, 'CA8967'),
(354, 'C5', 'A2', 'A3', 0.167, 0.0054754098360656, 'CA8967'),
(355, 'C5', 'A2', 'A1', 1, 0.047706882040078, 'CA8967'),
(356, 'C5', 'A3', 'A1', 0.25, 0.01192672051002, 'CA8967'),
(357, 'C5', 'A3', 'A2', 5.9880239520958, 0.20745494276219, 'CA8967'),
(358, 'C5', 'A1', 'A1', 1, 0.047706882040078, 'CA8967'),
(359, 'C5', 'A2', 'A2', 1, 0.034644975441286, 'CA8967'),
(360, 'C5', 'A3', 'A3', 1, 0.032786885245902, 'CA8967');

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
(86, 'C1', 'A1', 0.072, 0.047213114754098, 'CA1275'),
(87, 'C1', 'A2', 0.684, 0.44852459016393, 'CA1275'),
(88, 'C1', 'A3', 0.244, 0.16, 'CA1275'),
(89, 'C2', 'A1', 0.126, 0.17119565217391, 'CA1275'),
(90, 'C2', 'A2', 0.355, 0.48233695652174, 'CA1275'),
(91, 'C2', 'A3', 0.03, 0.040760869565217, 'CA1275'),
(92, 'C3', 'A1', 0.21, 0.42084168336673, 'CA1275'),
(93, 'C3', 'A2', 0.023, 0.046092184368737, 'CA1275'),
(94, 'C3', 'A3', 0.128, 0.2565130260521, 'CA1275'),
(95, 'C4', 'A1', 0.015, 0.051369863013699, 'CA1275'),
(96, 'C4', 'A2', 0.064, 0.21917808219178, 'CA1275'),
(97, 'C4', 'A3', 0.129, 0.44178082191781, 'CA1275'),
(98, 'C5', 'A1', 0.017, 0.12977099236641, 'CA1275'),
(99, 'C5', 'A2', 0.047, 0.3587786259542, 'CA1275'),
(100, 'C5', 'A3', 0.039, 0.29770992366412, 'CA1275'),
(101, 'C1', 'A1', 0.368, 0.24131147540984, 'CA8967'),
(102, 'C1', 'A2', 0.332, 0.21770491803279, 'CA8967'),
(103, 'C1', 'A3', 0.3, 0.19672131147541, 'CA8967'),
(104, 'C2', 'A1', 0.094, 0.1261744966443, 'CA8967'),
(105, 'C2', 'A2', 0.242, 0.3248322147651, 'CA8967'),
(106, 'C2', 'A3', 0.184, 0.24697986577181, 'CA8967'),
(107, 'C3', 'A1', 0.198, 0.33221476510067, 'CA8967'),
(108, 'C3', 'A2', 0.147, 0.24664429530201, 'CA8967'),
(109, 'C3', 'A3', 0.113, 0.18959731543624, 'CA8967'),
(110, 'C4', 'A1', 0.086, 0.2638036809816, 'CA8967'),
(111, 'C4', 'A2', 0.086, 0.2638036809816, 'CA8967'),
(112, 'C4', 'A3', 0.07, 0.21472392638037, 'CA8967'),
(113, 'C5', 'A1', 0.071, 0.33490566037736, 'CA8967'),
(114, 'C5', 'A2', 0.029, 0.13679245283019, 'CA8967'),
(115, 'C5', 'A3', 0.084, 0.39622641509434, 'CA8967');

-- --------------------------------------------------------

--
-- Table structure for table `kasus`
--

CREATE TABLE `kasus` (
  `id` int(11) NOT NULL,
  `id_kasus` varchar(6) NOT NULL,
  `nama_kasus` varchar(50) NOT NULL,
  `tanggal_kasus` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasus`
--

INSERT INTO `kasus` (`id`, `id_kasus`, `nama_kasus`, `tanggal_kasus`, `deskripsi`) VALUES
(13, 'CA1275', 'Pemilihan Karyawan Terbaik', 'Januari 2019', 'Test'),
(14, 'CA8967', 'Pemilihan Karyawan Terbaik', 'Februari 2019', 'Test2');

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
(16, 'A1', 0.1640782611349694, 'CA1275'),
(17, 'A2', 0.3109820878400774, 'CA1275'),
(18, 'A3', 0.23935292823984938, 'CA1275'),
(19, 'A1', 0.25968201570275407, 'CA8967'),
(20, 'A2', 0.23795551238233797, 'CA8967'),
(21, 'A3', 0.24884976683163398, 'CA8967');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `kasus_id` (`kasus_id`),
  ADD KEY `id_alternatif` (`id_alternatif`);

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
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  MODIFY `id_analisa_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `hasil_alternatif_kriteria`
--
ALTER TABLE `hasil_alternatif_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `kasus`
--
ALTER TABLE `kasus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
