-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2021 pada 07.36
-- Versi server: 8.0.17
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(22, 'Data Mining'),
(23, 'Pemrograman komputer'),
(24, 'Algoritma'),
(25, 'Mobile App Development'),
(26, 'Pemrograman Website'),
(27, 'Big Data'),
(28, 'Game Design and Development'),
(30, 'Artificial Intelegent');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`) VALUES
(31, 'bakat'),
(30, 'minat'),
(32, 'Nilai Akademik'),
(33, 'Historis Project'),
(34, 'pelatihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama`, `password`) VALUES
(1, 'Rizky Dwi Saputra', 'RiXkY123'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(20, 22, 23, 30, 1.21951),
(21, 22, 24, 30, 3.44828),
(22, 22, 25, 30, 3.0303),
(23, 22, 26, 30, 4),
(24, 22, 27, 30, 2.77778),
(25, 22, 28, 30, 2.04082),
(89, 24, 27, 32, 1.09375),
(27, 23, 24, 30, 2.82759),
(28, 23, 25, 30, 2.48485),
(29, 23, 26, 30, 3.28),
(30, 23, 27, 30, 2.27778),
(31, 23, 28, 30, 1.67347),
(88, 24, 26, 32, 1.16667),
(33, 24, 25, 30, 0.878788),
(34, 24, 26, 30, 1.16),
(35, 24, 27, 30, 0.805556),
(36, 24, 28, 30, 0.591837),
(87, 24, 25, 32, 1.25),
(38, 25, 26, 30, 1.32),
(39, 25, 27, 30, 0.916667),
(40, 25, 28, 30, 0.673469),
(86, 23, 28, 32, 1.33333),
(42, 26, 27, 30, 0.694444),
(43, 26, 28, 30, 0.510204),
(85, 23, 27, 32, 1.25),
(45, 27, 28, 30, 0.734694),
(84, 23, 26, 32, 1.33333),
(83, 23, 25, 32, 1.42857),
(48, 22, 23, 34, 8),
(49, 22, 24, 34, 2),
(50, 22, 25, 34, 1.6),
(51, 22, 26, 34, 1.33333),
(52, 22, 27, 34, 4),
(53, 22, 28, 34, 1.14286),
(82, 23, 24, 32, 1.42857),
(55, 23, 24, 34, 0.25),
(56, 23, 25, 34, 0.2),
(57, 23, 26, 34, 0.166667),
(58, 23, 27, 34, 0.5),
(59, 23, 28, 34, 0.142857),
(81, 22, 28, 32, 1.25),
(61, 24, 25, 34, 0.8),
(62, 24, 26, 34, 0.666667),
(63, 24, 27, 34, 2),
(64, 24, 28, 34, 0.571429),
(80, 22, 27, 32, 1.17188),
(66, 25, 26, 34, 0.833333),
(67, 25, 27, 34, 2.5),
(68, 25, 28, 34, 0.714286),
(79, 22, 26, 32, 1.25),
(70, 26, 27, 34, 3),
(71, 26, 28, 34, 0.857143),
(78, 22, 25, 32, 1.33929),
(73, 27, 28, 34, 0.285714),
(77, 22, 24, 32, 1.07143),
(76, 22, 23, 32, 1.06667),
(90, 24, 28, 32, 1.16667),
(91, 25, 26, 32, 0.933333),
(92, 25, 27, 32, 0.875),
(93, 25, 28, 32, 0.933333),
(94, 26, 27, 32, 0.9375),
(95, 26, 28, 32, 1),
(96, 27, 28, 32, 1.06667),
(97, 22, 30, 30, 2.63158),
(98, 23, 30, 30, 2.15789),
(99, 24, 30, 30, 0.763158),
(100, 25, 30, 30, 0.868421),
(101, 26, 30, 30, 0.657895),
(102, 27, 30, 30, 0.947368),
(103, 28, 30, 30, 1.28947),
(104, 22, 23, 31, 1.06667),
(105, 22, 24, 31, 1.66667),
(106, 22, 25, 31, 1),
(107, 22, 26, 31, 1.25),
(108, 22, 27, 31, 1.66667),
(109, 22, 28, 31, 2.5),
(110, 22, 30, 31, 5),
(111, 23, 24, 31, 1.33333),
(112, 23, 25, 31, 0.8),
(113, 23, 26, 31, 1),
(114, 23, 27, 31, 1.33333),
(115, 23, 28, 31, 2),
(116, 23, 30, 31, 4),
(117, 24, 25, 31, 0.6),
(118, 24, 26, 31, 0.75),
(119, 24, 27, 31, 1),
(120, 24, 28, 31, 1.5),
(121, 24, 30, 31, 3),
(122, 25, 26, 31, 1.25),
(123, 25, 27, 31, 1.66667),
(124, 25, 28, 31, 2.5),
(125, 25, 30, 31, 5),
(126, 26, 27, 31, 1.33333),
(127, 26, 28, 31, 2),
(128, 26, 30, 31, 4),
(129, 27, 28, 31, 1.5),
(130, 27, 30, 31, 3),
(131, 28, 30, 31, 2),
(132, 22, 30, 32, 1.04167),
(133, 23, 30, 32, 1.11111),
(134, 24, 30, 32, 0.972222),
(135, 25, 30, 32, 0.777778),
(136, 26, 30, 32, 0.833333),
(137, 27, 30, 32, 0.888889),
(138, 28, 30, 32, 0.833333),
(139, 22, 23, 33, 1.5),
(140, 22, 24, 33, 0.75),
(141, 22, 25, 33, 3),
(142, 22, 26, 33, 1.5),
(143, 22, 27, 33, 1),
(144, 22, 28, 33, 0.75),
(145, 22, 30, 33, 0.75),
(146, 23, 24, 33, 0.5),
(147, 23, 25, 33, 2),
(148, 23, 26, 33, 1),
(149, 23, 27, 33, 0.666667),
(150, 23, 28, 33, 0.5),
(151, 23, 30, 33, 0.5),
(152, 24, 25, 33, 4),
(153, 24, 26, 33, 2),
(154, 24, 27, 33, 1.33333),
(155, 24, 28, 33, 1),
(156, 24, 30, 33, 1),
(157, 25, 26, 33, 0.5),
(158, 25, 27, 33, 0.333333),
(159, 25, 28, 33, 0.25),
(160, 25, 30, 33, 0.25),
(161, 26, 27, 33, 0.666667),
(162, 26, 28, 33, 0.5),
(163, 26, 30, 33, 0.5),
(164, 27, 28, 33, 0.750002),
(165, 27, 30, 33, 0.750002),
(166, 28, 30, 33, 1),
(167, 22, 30, 34, 2.66667),
(168, 23, 30, 34, 0.333333),
(169, 24, 30, 34, 1.33333),
(170, 25, 30, 34, 1.66667),
(171, 26, 30, 34, 2),
(172, 27, 30, 34, 0.666667),
(173, 28, 30, 34, 2.33333);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(8, 30, 31, 3),
(9, 30, 32, 4),
(10, 30, 33, 5),
(11, 30, 34, 6),
(12, 31, 32, 3),
(13, 31, 33, 4),
(14, 31, 34, 5),
(15, 32, 33, 3),
(16, 32, 34, 4),
(17, 33, 34, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(49, 25, 30, 0.0841837),
(47, 23, 30, 0.209184),
(46, 22, 30, 0.255102),
(48, 24, 30, 0.0739796),
(50, 26, 30, 0.0637755),
(51, 27, 30, 0.0918367),
(52, 28, 30, 0.125),
(63, 23, 32, 0.150969),
(54, 22, 34, 0.222222),
(55, 23, 34, 0.0277778),
(56, 24, 34, 0.111111),
(57, 25, 34, 0.138889),
(58, 26, 34, 0.166667),
(59, 27, 34, 0.0555556),
(60, 28, 34, 0.194444),
(62, 22, 32, 0.141901),
(64, 24, 32, 0.126899),
(65, 25, 32, 0.104144),
(66, 26, 32, 0.111583),
(67, 27, 32, 0.119022),
(68, 28, 32, 0.111583),
(69, 30, 30, 0.0969388),
(70, 22, 31, 0.181767),
(71, 23, 31, 0.151309),
(72, 24, 31, 0.111154),
(73, 25, 31, 0.185257),
(74, 26, 31, 0.148205),
(75, 27, 31, 0.111154),
(76, 28, 31, 0.0741027),
(77, 30, 31, 0.0370513),
(78, 30, 32, 0.1339),
(79, 22, 33, 0.130435),
(80, 23, 33, 0.0869565),
(81, 24, 33, 0.173913),
(82, 25, 33, 0.0434783),
(83, 26, 33, 0.0869565),
(84, 27, 33, 0.130435),
(85, 28, 33, 0.173913),
(86, 30, 33, 0.173913),
(87, 30, 34, 0.0833333);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(31, 0.258534),
(30, 0.459361),
(32, 0.149985),
(33, 0.0853117),
(34, 0.0468079);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(23, 0.166571),
(22, 0.206989),
(24, 0.101791),
(25, 0.112396),
(26, 0.0995675),
(27, 0.102503),
(28, 0.117252),
(30, 0.0929294);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
