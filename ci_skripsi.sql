-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2018 at 07:13 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

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
(397, 'C1', 'A1', 'A2', 9, 0.89010989010989, 'CA3872'),
(398, 'C1', 'A1', 'A3', 9, 0.47368421052632, 'CA3872'),
(399, 'C1', 'A2', 'A3', 9, 0.47368421052632, 'CA3872'),
(400, 'C1', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(401, 'C1', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(402, 'C1', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3872'),
(403, 'C1', 'A1', 'A1', 1, 0.81818181818182, 'CA3872'),
(404, 'C1', 'A2', 'A2', 1, 0.098901098901099, 'CA3872'),
(405, 'C1', 'A3', 'A3', 1, 0.052631578947368, 'CA3872'),
(406, 'C2', 'A1', 'A2', 9, 0.89010989010989, 'CA3872'),
(407, 'C2', 'A1', 'A3', 9, 0.47368421052632, 'CA3872'),
(408, 'C2', 'A2', 'A3', 9, 0.47368421052632, 'CA3872'),
(409, 'C2', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(410, 'C2', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(411, 'C2', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3872'),
(412, 'C2', 'A1', 'A1', 1, 0.81818181818182, 'CA3872'),
(413, 'C2', 'A2', 'A2', 1, 0.098901098901099, 'CA3872'),
(414, 'C2', 'A3', 'A3', 1, 0.052631578947368, 'CA3872'),
(415, 'C3', 'A1', 'A2', 9, 0.89010989010989, 'CA3872'),
(416, 'C3', 'A1', 'A3', 9, 0.47368421052632, 'CA3872'),
(417, 'C3', 'A2', 'A3', 9, 0.47368421052632, 'CA3872'),
(418, 'C3', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(419, 'C3', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(420, 'C3', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3872'),
(421, 'C3', 'A1', 'A1', 1, 0.81818181818182, 'CA3872'),
(422, 'C3', 'A2', 'A2', 1, 0.098901098901099, 'CA3872'),
(423, 'C3', 'A3', 'A3', 1, 0.052631578947368, 'CA3872'),
(424, 'C4', 'A1', 'A2', 9, 0.89010989010989, 'CA3872'),
(425, 'C4', 'A1', 'A3', 9, 0.47368421052632, 'CA3872'),
(426, 'C4', 'A2', 'A3', 9, 0.47368421052632, 'CA3872'),
(427, 'C4', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(428, 'C4', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(429, 'C4', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3872'),
(430, 'C4', 'A1', 'A1', 1, 0.81818181818182, 'CA3872'),
(431, 'C4', 'A2', 'A2', 1, 0.098901098901099, 'CA3872'),
(432, 'C4', 'A3', 'A3', 1, 0.052631578947368, 'CA3872'),
(433, 'C5', 'A1', 'A2', 9, 0.89010989010989, 'CA3872'),
(434, 'C5', 'A1', 'A3', 9, 0.47368421052632, 'CA3872'),
(435, 'C5', 'A2', 'A3', 9, 0.47368421052632, 'CA3872'),
(436, 'C5', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(437, 'C5', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3872'),
(438, 'C5', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3872'),
(439, 'C5', 'A1', 'A1', 1, 0.81818181818182, 'CA3872'),
(440, 'C5', 'A2', 'A2', 1, 0.098901098901099, 'CA3872'),
(441, 'C5', 'A3', 'A3', 1, 0.052631578947368, 'CA3872'),
(442, 'C1', 'A1', 'A2', 9, 0.89010989010989, 'CA3619'),
(443, 'C1', 'A1', 'A3', 9, 0.47368421052632, 'CA3619'),
(444, 'C1', 'A2', 'A3', 9, 0.47368421052632, 'CA3619'),
(445, 'C1', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3619'),
(446, 'C1', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3619'),
(447, 'C1', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3619'),
(448, 'C1', 'A1', 'A1', 1, 0.81818181818182, 'CA3619'),
(449, 'C1', 'A2', 'A2', 1, 0.098901098901099, 'CA3619'),
(450, 'C1', 'A3', 'A3', 1, 0.052631578947368, 'CA3619'),
(451, 'C2', 'A1', 'A2', 9, 0.89010989010989, 'CA3619'),
(452, 'C2', 'A1', 'A3', 9, 0.47368421052632, 'CA3619'),
(453, 'C2', 'A2', 'A3', 9, 0.47368421052632, 'CA3619'),
(454, 'C2', 'A2', 'A1', 0.11111111111111, 0.09090909090909, 'CA3619'),
(455, 'C2', 'A3', 'A1', 0.11111111111111, 0.09090909090909, 'CA3619'),
(456, 'C2', 'A3', 'A2', 0.11111111111111, 0.010989010989011, 'CA3619'),
(457, 'C2', 'A1', 'A1', 1, 0.81818181818182, 'CA3619'),
(458, 'C2', 'A2', 'A2', 1, 0.098901098901099, 'CA3619'),
(459, 'C2', 'A3', 'A3', 1, 0.052631578947368, 'CA3619'),
(460, 'C3', 'A1', 'A2', 8, 0.87671232876712, 'CA3619'),
(461, 'C3', 'A1', 'A3', 8, 0.47058823529412, 'CA3619'),
(462, 'C3', 'A2', 'A3', 8, 0.47058823529412, 'CA3619'),
(463, 'C3', 'A2', 'A1', 0.125, 0.1, 'CA3619'),
(464, 'C3', 'A3', 'A1', 0.125, 0.1, 'CA3619'),
(465, 'C3', 'A3', 'A2', 0.125, 0.013698630136986, 'CA3619'),
(466, 'C3', 'A1', 'A1', 1, 0.8, 'CA3619'),
(467, 'C3', 'A2', 'A2', 1, 0.10958904109589, 'CA3619'),
(468, 'C3', 'A3', 'A3', 1, 0.058823529411765, 'CA3619'),
(469, 'C4', 'A1', 'A2', 7, 0.85964912280702, 'CA3619'),
(470, 'C4', 'A1', 'A3', 7, 0.46666666666667, 'CA3619'),
(471, 'C4', 'A2', 'A3', 7, 0.46666666666667, 'CA3619'),
(472, 'C4', 'A2', 'A1', 0.14285714285714, 0.11111111111111, 'CA3619'),
(473, 'C4', 'A3', 'A1', 0.14285714285714, 0.11111111111111, 'CA3619'),
(474, 'C4', 'A3', 'A2', 0.14285714285714, 0.017543859649122, 'CA3619'),
(475, 'C4', 'A1', 'A1', 1, 0.77777777777778, 'CA3619'),
(476, 'C4', 'A2', 'A2', 1, 0.12280701754386, 'CA3619'),
(477, 'C4', 'A3', 'A3', 1, 0.066666666666667, 'CA3619'),
(478, 'C5', 'A1', 'A2', 6, 0.83720930232558, 'CA3619'),
(479, 'C5', 'A1', 'A3', 6, 0.46153846153846, 'CA3619'),
(480, 'C5', 'A2', 'A3', 6, 0.46153846153846, 'CA3619'),
(481, 'C5', 'A2', 'A1', 0.16666666666667, 0.125, 'CA3619'),
(482, 'C5', 'A3', 'A1', 0.16666666666667, 0.125, 'CA3619'),
(483, 'C5', 'A3', 'A2', 0.16666666666667, 0.023255813953489, 'CA3619'),
(484, 'C5', 'A1', 'A1', 1, 0.75, 'CA3619'),
(485, 'C5', 'A2', 'A2', 1, 0.13953488372093, 'CA3619'),
(486, 'C5', 'A3', 'A3', 1, 0.076923076923077, 'CA3619'),
(487, 'C1', 'A1', 'A2', 0.1, 0.009009009009009, 'CA9462'),
(488, 'C1', 'A1', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(489, 'C1', 'A2', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(490, 'C1', 'A2', 'A1', 10, 0.47619047619048, 'CA9462'),
(491, 'C1', 'A3', 'A1', 10, 0.47619047619048, 'CA9462'),
(492, 'C1', 'A3', 'A2', 10, 0.9009009009009, 'CA9462'),
(493, 'C1', 'A1', 'A1', 1, 0.047619047619048, 'CA9462'),
(494, 'C1', 'A2', 'A2', 1, 0.09009009009009, 'CA9462'),
(495, 'C1', 'A3', 'A3', 1, 0.83333333333333, 'CA9462'),
(496, 'C2', 'A1', 'A2', 0.1, 0.009009009009009, 'CA9462'),
(497, 'C2', 'A1', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(498, 'C2', 'A2', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(499, 'C2', 'A2', 'A1', 10, 0.47619047619048, 'CA9462'),
(500, 'C2', 'A3', 'A1', 10, 0.47619047619048, 'CA9462'),
(501, 'C2', 'A3', 'A2', 10, 0.9009009009009, 'CA9462'),
(502, 'C2', 'A1', 'A1', 1, 0.047619047619048, 'CA9462'),
(503, 'C2', 'A2', 'A2', 1, 0.09009009009009, 'CA9462'),
(504, 'C2', 'A3', 'A3', 1, 0.83333333333333, 'CA9462'),
(505, 'C3', 'A1', 'A2', 0.1, 0.009009009009009, 'CA9462'),
(506, 'C3', 'A1', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(507, 'C3', 'A2', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(508, 'C3', 'A2', 'A1', 10, 0.47619047619048, 'CA9462'),
(509, 'C3', 'A3', 'A1', 10, 0.47619047619048, 'CA9462'),
(510, 'C3', 'A3', 'A2', 10, 0.9009009009009, 'CA9462'),
(511, 'C3', 'A1', 'A1', 1, 0.047619047619048, 'CA9462'),
(512, 'C3', 'A2', 'A2', 1, 0.09009009009009, 'CA9462'),
(513, 'C3', 'A3', 'A3', 1, 0.83333333333333, 'CA9462'),
(514, 'C4', 'A1', 'A2', 0.1, 0.009009009009009, 'CA9462'),
(515, 'C4', 'A1', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(516, 'C4', 'A2', 'A3', 0.1, 0.083333333333333, 'CA9462'),
(517, 'C4', 'A2', 'A1', 10, 0.47619047619048, 'CA9462'),
(518, 'C4', 'A3', 'A1', 10, 0.47619047619048, 'CA9462'),
(519, 'C4', 'A3', 'A2', 10, 0.9009009009009, 'CA9462'),
(520, 'C4', 'A1', 'A1', 1, 0.047619047619048, 'CA9462'),
(521, 'C4', 'A2', 'A2', 1, 0.09009009009009, 'CA9462'),
(522, 'C4', 'A3', 'A3', 1, 0.83333333333333, 'CA9462'),
(523, 'C5', 'A1', 'A2', 0.125, 0.013698630136986, 'CA9462'),
(524, 'C5', 'A1', 'A3', 0.125, 0.1, 'CA9462'),
(525, 'C5', 'A2', 'A3', 0.125, 0.1, 'CA9462'),
(526, 'C5', 'A2', 'A1', 8, 0.47058823529412, 'CA9462'),
(527, 'C5', 'A3', 'A1', 8, 0.47058823529412, 'CA9462'),
(528, 'C5', 'A3', 'A2', 8, 0.87671232876712, 'CA9462'),
(529, 'C5', 'A1', 'A1', 1, 0.058823529411765, 'CA9462'),
(530, 'C5', 'A2', 'A2', 1, 0.10958904109589, 'CA9462'),
(531, 'C5', 'A3', 'A3', 1, 0.8, 'CA9462'),
(532, 'C1', 'A1', 'A2', 0.1, 0.009009009009009, 'CA5396'),
(533, 'C1', 'A1', 'A3', 0.1, 0.083333333333333, 'CA5396'),
(534, 'C1', 'A2', 'A3', 0.1, 0.083333333333333, 'CA5396'),
(535, 'C1', 'A2', 'A1', 10, 0.47619047619048, 'CA5396'),
(536, 'C1', 'A3', 'A1', 10, 0.47619047619048, 'CA5396'),
(537, 'C1', 'A3', 'A2', 10, 0.9009009009009, 'CA5396'),
(538, 'C1', 'A1', 'A1', 1, 0.047619047619048, 'CA5396'),
(539, 'C1', 'A2', 'A2', 1, 0.09009009009009, 'CA5396'),
(540, 'C1', 'A3', 'A3', 1, 0.83333333333333, 'CA5396'),
(541, 'C2', 'A1', 'A2', 0.125, 0.013698630136986, 'CA5396'),
(542, 'C2', 'A1', 'A3', 0.125, 0.1, 'CA5396'),
(543, 'C2', 'A2', 'A3', 0.125, 0.1, 'CA5396'),
(544, 'C2', 'A2', 'A1', 8, 0.47058823529412, 'CA5396'),
(545, 'C2', 'A3', 'A1', 8, 0.47058823529412, 'CA5396'),
(546, 'C2', 'A3', 'A2', 8, 0.87671232876712, 'CA5396'),
(547, 'C2', 'A1', 'A1', 1, 0.058823529411765, 'CA5396'),
(548, 'C2', 'A2', 'A2', 1, 0.10958904109589, 'CA5396'),
(549, 'C2', 'A3', 'A3', 1, 0.8, 'CA5396'),
(550, 'C3', 'A1', 'A2', 0.143, 0.017576189416124, 'CA5396'),
(551, 'C3', 'A1', 'A3', 0.143, 0.11119751166407, 'CA5396'),
(552, 'C3', 'A2', 'A3', 0.143, 0.11119751166407, 'CA5396'),
(553, 'C3', 'A2', 'A1', 6.993006993007, 0.46663555762949, 'CA5396'),
(554, 'C3', 'A3', 'A1', 6.993006993007, 0.46663555762949, 'CA5396'),
(555, 'C3', 'A3', 'A2', 6.993006993007, 0.85951339508651, 'CA5396'),
(556, 'C3', 'A1', 'A1', 1, 0.066728884741017, 'CA5396'),
(557, 'C3', 'A2', 'A2', 1, 0.12291041549737, 'CA5396'),
(558, 'C3', 'A3', 'A3', 1, 0.77760497667185, 'CA5396'),
(559, 'C4', 'A1', 'A2', 0.167, 0.023340243319672, 'CA5396'),
(560, 'C4', 'A1', 'A3', 0.167, 0.12518740629685, 'CA5396'),
(561, 'C4', 'A2', 'A3', 0.167, 0.12518740629685, 'CA5396'),
(562, 'C4', 'A2', 'A1', 5.9880239520958, 0.46146746654361, 'CA5396'),
(563, 'C4', 'A3', 'A1', 5.9880239520958, 0.46146746654361, 'CA5396'),
(564, 'C4', 'A3', 'A2', 5.9880239520958, 0.83689782063439, 'CA5396'),
(565, 'C4', 'A1', 'A1', 1, 0.077065066912783, 'CA5396'),
(566, 'C4', 'A2', 'A2', 1, 0.13976193604594, 'CA5396'),
(567, 'C4', 'A3', 'A3', 1, 0.7496251874063, 'CA5396'),
(568, 'C5', 'A1', 'A2', 0.167, 0.023340243319672, 'CA5396'),
(569, 'C5', 'A1', 'A3', 0.167, 0.12518740629685, 'CA5396'),
(570, 'C5', 'A2', 'A3', 0.167, 0.12518740629685, 'CA5396'),
(571, 'C5', 'A2', 'A1', 5.9880239520958, 0.46146746654361, 'CA5396'),
(572, 'C5', 'A3', 'A1', 5.9880239520958, 0.46146746654361, 'CA5396'),
(573, 'C5', 'A3', 'A2', 5.9880239520958, 0.83689782063439, 'CA5396'),
(574, 'C5', 'A1', 'A1', 1, 0.077065066912783, 'CA5396'),
(575, 'C5', 'A2', 'A2', 1, 0.13976193604594, 'CA5396'),
(576, 'C5', 'A3', 'A3', 1, 0.7496251874063, 'CA5396'),
(577, 'C1', 'A1', 'A2', 0.1, 0.009009009009009, 'CA8625'),
(578, 'C1', 'A1', 'A3', 4, 0.7843137254902, 'CA8625'),
(579, 'C1', 'A2', 'A3', 0.1, 0.019607843137255, 'CA8625'),
(580, 'C1', 'A2', 'A1', 10, 0.88888888888889, 'CA8625'),
(581, 'C1', 'A3', 'A1', 0.25, 0.022222222222222, 'CA8625'),
(582, 'C1', 'A3', 'A2', 10, 0.9009009009009, 'CA8625'),
(583, 'C1', 'A1', 'A1', 1, 0.088888888888889, 'CA8625'),
(584, 'C1', 'A2', 'A2', 1, 0.09009009009009, 'CA8625'),
(585, 'C1', 'A3', 'A3', 1, 0.19607843137255, 'CA8625'),
(586, 'C2', 'A1', 'A2', 9, 0.52962962962963, 'CA8625'),
(587, 'C2', 'A1', 'A3', 1, 0.46663555762949, 'CA8625'),
(588, 'C2', 'A2', 'A3', 0.143, 0.066728884741017, 'CA8625'),
(589, 'C2', 'A2', 'A1', 0.11111111111111, 0.052631578947368, 'CA8625'),
(590, 'C2', 'A3', 'A1', 1, 0.47368421052632, 'CA8625'),
(591, 'C2', 'A3', 'A2', 6.993006993007, 0.41152263374486, 'CA8625'),
(592, 'C2', 'A1', 'A1', 1, 0.47368421052632, 'CA8625'),
(593, 'C2', 'A2', 'A2', 1, 0.058847736625514, 'CA8625'),
(594, 'C2', 'A3', 'A3', 1, 0.46663555762949, 'CA8625'),
(595, 'C3', 'A1', 'A2', 9, 0.56292134831461, 'CA8625'),
(596, 'C3', 'A1', 'A3', 6, 0.83717036416911, 'CA8625'),
(597, 'C3', 'A2', 'A3', 0.167, 0.023301241802707, 'CA8625'),
(598, 'C3', 'A2', 'A1', 0.11111111111111, 0.086956521739129, 'CA8625'),
(599, 'C3', 'A3', 'A1', 0.16666666666667, 0.1304347826087, 'CA8625'),
(600, 'C3', 'A3', 'A2', 5.9880239520958, 0.37453183520599, 'CA8625'),
(601, 'C3', 'A1', 'A1', 1, 0.78260869565217, 'CA8625'),
(602, 'C3', 'A2', 'A2', 1, 0.062546816479401, 'CA8625'),
(603, 'C3', 'A3', 'A3', 1, 0.13952839402818, 'CA8625'),
(604, 'C4', 'A1', 'A2', 0.333, 0.052581714827096, 'CA8625'),
(605, 'C4', 'A1', 'A3', 2, 0.625, 'CA8625'),
(606, 'C4', 'A2', 'A3', 0.2, 0.0625, 'CA8625'),
(607, 'C4', 'A2', 'A1', 3.003003003003, 0.66688896298766, 'CA8625'),
(608, 'C4', 'A3', 'A1', 0.5, 0.11103701233745, 'CA8625'),
(609, 'C4', 'A3', 'A2', 5, 0.78951523764409, 'CA8625'),
(610, 'C4', 'A1', 'A1', 1, 0.22207402467489, 'CA8625'),
(611, 'C4', 'A2', 'A2', 1, 0.15790304752882, 'CA8625'),
(612, 'C4', 'A3', 'A3', 1, 0.3125, 'CA8625'),
(613, 'C5', 'A1', 'A2', 0.333, 0.035679845708775, 'CA8625'),
(614, 'C5', 'A1', 'A3', 6, 0.84210526315789, 'CA8625'),
(615, 'C5', 'A2', 'A3', 0.125, 0.017543859649123, 'CA8625'),
(616, 'C5', 'A2', 'A1', 3.003003003003, 0.72020165646381, 'CA8625'),
(617, 'C5', 'A3', 'A1', 0.16666666666667, 0.039971191933742, 'CA8625'),
(618, 'C5', 'A3', 'A2', 8, 0.85717347048109, 'CA8625'),
(619, 'C5', 'A1', 'A1', 1, 0.23982715160245, 'CA8625'),
(620, 'C5', 'A2', 'A2', 1, 0.10714668381014, 'CA8625'),
(621, 'C5', 'A3', 'A3', 1, 0.14035087719298, 'CA8625');

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
(208, 'C1', 'C2', 9, 0.83462132921175, ''),
(209, 'C1', 'C3', 8, 0.51612903225806, ''),
(210, 'C1', 'C4', 7, 0.4375, ''),
(211, 'C1', 'C5', 6, 0.52173913043478, ''),
(212, 'C2', 'C3', 5, 0.32258064516129, ''),
(213, 'C2', 'C4', 4, 0.25, ''),
(214, 'C2', 'C5', 3, 0.26086956521739, ''),
(215, 'C3', 'C4', 2, 0.125, ''),
(216, 'C3', 'C5', 1, 0.08695652173913, ''),
(217, 'C4', 'C5', 0.5, 0.043478260869565, ''),
(218, 'C2', 'C1', 0.11111111111111, 0.07188703465982, ''),
(219, 'C3', 'C1', 0.125, 0.080872913992298, ''),
(220, 'C4', 'C1', 0.14285714285714, 0.092426187419767, ''),
(221, 'C5', 'C1', 0.16666666666667, 0.10783055198973, ''),
(222, 'C3', 'C2', 0.2, 0.01854714064915, ''),
(223, 'C4', 'C2', 0.25, 0.023183925811437, ''),
(224, 'C5', 'C2', 0.33333333333333, 0.030911901081916, ''),
(225, 'C4', 'C3', 0.5, 0.032258064516129, ''),
(226, 'C5', 'C3', 1, 0.064516129032258, ''),
(227, 'C5', 'C4', 2, 0.125, ''),
(228, 'C1', 'C1', 1, 0.64698331193838, ''),
(229, 'C2', 'C2', 1, 0.09273570324575, ''),
(230, 'C3', 'C3', 1, 0.064516129032258, ''),
(231, 'C4', 'C4', 1, 0.0625, ''),
(232, 'C5', 'C5', 1, 0.08695652173913, '');

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
(128, 'C1', 'A1', 0.727, 0.47672131147541, 'CA3872'),
(129, 'C1', 'A2', 0.221, 0.14491803278689, 'CA3872'),
(130, 'C1', 'A3', 0.052, 0.034098360655738, 'CA3872'),
(131, 'C2', 'A1', 0.727, 0.5934693877551, 'CA3872'),
(132, 'C2', 'A2', 0.221, 0.18040816326531, 'CA3872'),
(133, 'C2', 'A3', 0.052, 0.042448979591837, 'CA3872'),
(134, 'C3', 'A1', 0.727, 0.63884007029877, 'CA3872'),
(135, 'C3', 'A2', 0.221, 0.19420035149385, 'CA3872'),
(136, 'C3', 'A3', 0.052, 0.045694200351494, 'CA3872'),
(137, 'C4', 'A1', 0.727, 0.67066420664207, 'CA3872'),
(138, 'C4', 'A2', 0.221, 0.20387453874539, 'CA3872'),
(139, 'C4', 'A3', 0.052, 0.047970479704797, 'CA3872'),
(140, 'C5', 'A1', 0.727, 0.70719844357977, 'CA3872'),
(141, 'C5', 'A2', 0.221, 0.21498054474708, 'CA3872'),
(142, 'C5', 'A3', 0.052, 0.050583657587549, 'CA3872'),
(143, 'C1', 'A1', 0.727, 0.51161154116819, 'CA3619'),
(144, 'C1', 'A2', 0.221, 0.15552427867699, 'CA3619'),
(145, 'C1', 'A3', 0.052, 0.036593947923997, 'CA3619'),
(146, 'C2', 'A1', 0.727, 0.60887772194305, 'CA3619'),
(147, 'C2', 'A2', 0.221, 0.18509212730318, 'CA3619'),
(148, 'C2', 'A3', 0.052, 0.043551088777219, 'CA3619'),
(149, 'C3', 'A1', 0.716, 0.62206776715899, 'CA3619'),
(150, 'C3', 'A2', 0.227, 0.19721980886186, 'CA3619'),
(151, 'C3', 'A3', 0.058, 0.050390964378801, 'CA3619'),
(152, 'C4', 'A1', 0.701, 0.61009573542211, 'CA3619'),
(153, 'C4', 'A2', 0.234, 0.20365535248042, 'CA3619'),
(154, 'C4', 'A3', 0.065, 0.05657093124456, 'CA3619'),
(155, 'C5', 'A1', 0.683, 0.62891344383057, 'CA3619'),
(156, 'C5', 'A2', 0.242, 0.22283609576427, 'CA3619'),
(157, 'C5', 'A3', 0.075, 0.069060773480663, 'CA3619'),
(158, 'C1', 'A1', 0.047, 0.031756756756757, 'CA9462'),
(159, 'C1', 'A2', 0.217, 0.14662162162162, 'CA9462'),
(160, 'C1', 'A3', 0.737, 0.49797297297297, 'CA9462'),
(161, 'C2', 'A1', 0.047, 0.041666666666667, 'CA9462'),
(162, 'C2', 'A2', 0.217, 0.19237588652482, 'CA9462'),
(163, 'C2', 'A3', 0.737, 0.65336879432624, 'CA9462'),
(164, 'C3', 'A1', 0.047, 0.042457091237579, 'CA9462'),
(165, 'C3', 'A2', 0.217, 0.19602529358627, 'CA9462'),
(166, 'C3', 'A3', 0.737, 0.66576332429991, 'CA9462'),
(167, 'C4', 'A1', 0.047, 0.039264828738513, 'CA9462'),
(168, 'C4', 'A2', 0.217, 0.1812865497076, 'CA9462'),
(169, 'C4', 'A3', 0.737, 0.61570593149541, 'CA9462'),
(170, 'C5', 'A1', 0.058, 0.053064958828911, 'CA9462'),
(171, 'C5', 'A2', 0.227, 0.20768526989936, 'CA9462'),
(172, 'C5', 'A3', 0.716, 0.65507776761208, 'CA9462'),
(173, 'C1', 'A1', 0.047, 0.031756756756757, 'CA5396'),
(174, 'C1', 'A2', 0.217, 0.14662162162162, 'CA5396'),
(175, 'C1', 'A3', 0.737, 0.49797297297297, 'CA5396'),
(176, 'C2', 'A1', 0.058, 0.051418439716312, 'CA5396'),
(177, 'C2', 'A2', 0.227, 0.20124113475177, 'CA5396'),
(178, 'C2', 'A3', 0.716, 0.63475177304965, 'CA5396'),
(179, 'C3', 'A1', 0.065, 0.05877034358047, 'CA5396'),
(180, 'C3', 'A2', 0.234, 0.21157323688969, 'CA5396'),
(181, 'C3', 'A3', 0.701, 0.63381555153707, 'CA5396'),
(182, 'C4', 'A1', 0.075, 0.062709030100334, 'CA5396'),
(183, 'C4', 'A2', 0.242, 0.20234113712375, 'CA5396'),
(184, 'C4', 'A3', 0.683, 0.57107023411371, 'CA5396'),
(185, 'C5', 'A1', 0.075, 0.068681318681319, 'CA5396'),
(186, 'C5', 'A2', 0.242, 0.22161172161172, 'CA5396'),
(187, 'C5', 'A3', 0.683, 0.62545787545788, 'CA5396'),
(188, 'C1', 'A1', 0.294070541129366, 0.18478790063395, 'CA8625'),
(189, 'C1', 'A2', 0.332862274038745, 0.20916383050012, 'CA8625'),
(190, 'C1', 'A3', 0.37306718483189066, 0.23442777238328, 'CA8625'),
(191, 'C2', 'A1', 0.48998313259514664, 0.40845032164081, 'CA8625'),
(192, 'C2', 'A2', 0.059402733437966336, 0.049518164942891, 'CA8625'),
(193, 'C2', 'A3', 0.45061413396689004, 0.37563229366663, 'CA8625'),
(194, 'C3', 'A1', 0.7275668027119634, 0.67669396543175, 'CA8625'),
(195, 'C3', 'A2', 0.057601526673745664, 0.053573919747973, 'CA8625'),
(196, 'C3', 'A3', 0.21483167061428998, 0.19981023673212, 'CA8625'),
(197, 'C4', 'A1', 0.299885246500662, 0.28539589660705, 'CA8625'),
(198, 'C4', 'A2', 0.2957640035054933, 0.2814737768847, 'CA8625'),
(199, 'C4', 'A3', 0.40435074999384674, 0.38481401197565, 'CA8625'),
(200, 'C5', 'A1', 0.37253742015637165, 0.34397288026087, 'CA8625'),
(201, 'C5', 'A2', 0.281630733307691, 0.26003652053306, 'CA8625'),
(202, 'C5', 'A3', 0.34583184653593735, 0.31931497321523, 'CA8625');

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
(18, 'CA3872', 'Pemilihan Karyawan Terbaik', 'Januari 2019', 'Coba 1'),
(19, 'CA3619', 'Pemilihan Karyawan Terbaik', 'Februari 2019', 'Coba 2'),
(20, 'CA9462', 'Pemilihan Karyawan Terbaik', 'Maret 2019', 'Coba 3'),
(21, 'CA5396', 'Pemilihan Karyawan Terbaik', 'April 2019', 'Coba 4'),
(22, 'CA8625', 'Pemilihan Karyawan Terbaik', 'Mei 2019', 'Coba 5');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(6) NOT NULL,
  `nama_kriteria` varchar(25) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `deskripsi`, `bobot_kriteria`) VALUES
('C1', 'Kriteria 1', 'Absensi', 0.591395),
('C2', 'Kriteria 2', 'Kinerja', 0.199615),
('C3', 'Kriteria 3', 'Attitude', 0.0751785),
('C4', 'Kriteria 4', 'Tanggung Jawab', 0.0507693),
('C5', 'Kriteria 5', 'Kerapihan', 0.083043);

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
  `nama_alternatif` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `bobot` double NOT NULL,
  `kasus_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id`, `alternatif_id`, `nama_alternatif`, `deskripsi`, `bobot`, `kasus_id`) VALUES
(22, 'A1', 'Alterantif 1', 'Fathi Khairina', 0.617378683950224, 'CA3872'),
(23, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0.187676326207704, 'CA3872'),
(24, 'A3', 'Alterantif 3', 'Wawa', 0.04415913557828301, 'CA3872'),
(25, 'A1', 'Alterantif 1', 'Fathi Khairina', 0.596313241904582, 'CA3619'),
(26, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0.19286553261734402, 'CA3619'),
(27, 'A3', 'Alterantif 3', 'Wawa', 0.051233541161048, 'CA3619'),
(28, 'A1', 'Alterantif 1', 'Fathi Khairina', 0.0416420604456854, 'CA9462'),
(29, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0.184798924267934, 'CA9462'),
(30, 'A3', 'Alterantif 3', 'Wawa', 0.617577758141322, 'CA9462'),
(31, 'A1', 'Alterantif 1', 'Fathi Khairina', 0.0546671777670384, 'CA5396'),
(32, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0.19667777039971002, 'CA5396'),
(33, 'A3', 'Alterantif 3', 'Wawa', 0.592613681426256, 'CA5396'),
(34, 'A1', 'Alterantif 1', 'Fathi Khairina', 0.37986019291488604, 'CA8625'),
(35, 'A2', 'Alterantif 2', 'Aziz Sudrajat', 0.17075324252174878, 'CA8625'),
(36, 'A3', 'Alterantif 3', 'Wawa', 0.302799857594582, 'CA8625');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`, `deskripsi`) VALUES
(1, 'fathikhairina', 'P@ssw0rd', 2, 'Divisi IT');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  MODIFY `id_analisa_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `hasil_alternatif_kriteria`
--
ALTER TABLE `hasil_alternatif_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `kasus`
--
ALTER TABLE `kasus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
