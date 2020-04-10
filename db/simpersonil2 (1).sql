-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2019 at 11:31 
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.3.7-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpersonil2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_keluarga`
--

CREATE TABLE `data_keluarga` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `id_agama` smallint(5) UNSIGNED NOT NULL,
  `id_hubungan_keluarga` smallint(5) UNSIGNED NOT NULL,
  `id_jenis_kelamin` smallint(5) UNSIGNED NOT NULL,
  `id_tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tempat_menikah` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_suku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status_kehidupan` smallint(5) UNSIGNED NOT NULL,
  `id_status_pernikahan` smallint(5) UNSIGNED NOT NULL,
  `id_status_tertanggung` smallint(5) UNSIGNED NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_menikah` date DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_menikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_keluarga`
--

INSERT INTO `data_keluarga` (`id`, `id_pegawai`, `id_agama`, `id_hubungan_keluarga`, `id_jenis_kelamin`, `id_tempat_lahir`, `id_tempat_menikah`, `id_suku`, `id_status_kehidupan`, `id_status_pernikahan`, `id_status_tertanggung`, `tanggal_lahir`, `tanggal_menikah`, `nama`, `alamat`, `tempat_menikah`, `pekerjaan`) VALUES
(53, 13, 1, 4, 1, 'gede', '', '', 1, 2, 2, '2019-06-13', NULL, 'Aziz', 'www.terusan halimun.com', '', ''),
(68, 19, 2, 2, 2, 'Klaten', 'Klaten', 'Jawa', 1, 2, 1, '1993-01-15', '2017-07-15', 'Unik Tri Setyaningrum', 'Demangan Rt/Rw 01/08 Kajoran Klaten Selatan Klaten Jateng', 'Klaten', 'Ibu Rumah Tangga'),
(69, 19, 2, 3, 2, 'Klaten', '', 'Jawa', 1, 4, 1, '2018-10-15', NULL, 'Makayla Aretha Kalani', 'Demangan Rt/Rw 01/08 Kajoran Klaten Selatan Klaten Jateng', '', ''),
(70, 22, 1, 2, 2, 'Yogyakarta', 'Yogyakarta', 'Jawa', 1, 2, 1, '1990-09-15', '2014-12-21', 'Pradista Verra Septiani', 'Kauman GM I/187 Gondomanan Yogyakarta', 'Yogyakarta', 'Ibu Rumah Tangga'),
(71, 22, 1, 3, 2, 'Bantul', '', 'Jawa', 1, 4, 1, '2018-03-23', NULL, 'Nadhira Alysha Saadia', 'Kauman GM I/187 Gondomanan Yogyakarta', '', ''),
(77, 52, 1, 1, 1, 'Magelang', 'Yogya', 'Jawa', 1, 1, 2, '1968-12-15', '1999-11-06', 'Suprijantono', 'Pondok Permai Banguntapan Residence A-16 Mertosanan', 'Yogya', 'TNI AU'),
(78, 52, 1, 3, 2, 'Jayapura', '', 'Jawa', 1, 2, 1, '2000-12-13', NULL, 'Anandya Putri R', 'Pondok Permai Banguntapan Residence A-16 Mertosanan', '', 'Pelajar'),
(79, 52, 1, 3, 2, 'Magetan', '', 'Jawa', 1, 4, 1, '2003-03-06', NULL, 'Marchella Cynthiana', 'Pondok Permai Banguntapan Residence A-16 Mertosanan', '', 'Pelajar'),
(82, 16, 1, 1, 1, 'Situbondo', 'Sleman', 'Jawa', 1, 1, 2, '1980-04-01', '2004-02-06', 'Giri Prastiyo', '', 'Sleman', 'TNI AU'),
(83, 16, 1, 3, 2, 'Sleman', '', 'Jawa', 1, 4, 2, '2005-05-31', NULL, 'Klanisya Putri Prastiyo', '', '', ''),
(84, 16, 1, 3, 1, 'Sleman', '', 'Jawa', 1, 4, 2, '2013-04-01', NULL, 'Reihananta Putra Prastiyo', '', '', ''),
(85, 54, 1, 1, 1, 'Surakarta', 'Surakarta', 'Jawa', 1, 1, 1, '1984-01-02', '2012-01-22', 'Yudhi Hanestiyanto', 'BlokH 20/120 Komlek Lnd Adisutjipto', 'Surakarta', 'TNI'),
(86, 54, 1, 3, 2, 'Bantul ', '', 'Jawa', 1, 2, 1, '2013-05-02', NULL, 'Adellia Putri Y.H.', 'Komlek TNI AU Adisujipto Blok H 20/120', '', 'Pelajar'),
(91, 57, 1, 2, 2, 'Kulonprogo', 'Kulonprogo', 'Jawa', 1, 1, 1, '1987-10-24', '2011-11-09', 'Risa Geisen Oktalia,S.Si', 'Dipan Rt 03/014 Wates Kulonprogo', 'Kulonprogo', 'Swasta'),
(92, 57, 1, 3, 2, 'Kulonprogo', '', 'Jawa', 1, 2, 1, '2012-11-16', NULL, 'Tanisha Qoirotun Qisan', 'Dipan Rt 003/014 Wates kulonprogo', '', ''),
(95, 58, 1, 1, 1, 'Magetan', 'Bantul', 'Jawa', 1, 1, 2, '1980-01-26', '2008-02-13', 'Bambang Jumawan', 'Blok H 12/68 Lanud Adi', 'Bantul', 'TNI AU'),
(96, 58, 1, 3, 1, 'Yogyakarta', '', 'Blok H 12/68 Lanud Adisutjipto', 1, 4, 1, '2009-12-23', NULL, 'Rafka Azizan P', 'Blokm H 12/68 Lanud Adisutjipto', '', 'Pelajar'),
(97, 63, 1, 1, 1, 'Bantul', 'Jkt', 'Jawa', 1, 1, 2, '1986-09-01', NULL, 'Tunggul Susilo', 'Komplek TNI AU Blok M n0 45', 'Jkt', 'Polri'),
(98, 20, 1, 2, 2, 'Magelang', 'Magelang', 'Jawa', 1, 1, 1, '1980-06-20', '2010-06-09', 'Zulfa Abida', '', 'Magelang', 'Guru Tidak Tetap'),
(99, 20, 1, 3, 2, 'Jakarta', '', 'Jawa', 1, 4, 1, '2012-01-19', NULL, 'Nasrin Afafa', 'Kauman II,Rt/RW 017,008, Payaman,Secang,Magelang', '', 'Pelajar'),
(100, 36, 1, 1, 1, 'jakarta', 'Bantul', 'Jawa', 1, 1, 2, '1982-10-20', '2010-11-13', 'Rosap Nurhandik', 'Islam', 'Bantul', 'TNI AU'),
(101, 36, 1, 3, 2, 'Bantul', '', 'Jawa', 1, 2, 2, '2011-10-08', NULL, 'Nadine Riantika Oktawiyanti', 'Komp.TNI AU M-34, Lanud Adisutjipto', '', 'Pelajar'),
(102, 74, 1, 1, 1, 'Kendal', 'Sleman', 'Jawa', 1, 1, 1, '1987-04-30', '2013-02-14', 'R.Moch.Issupriyadi', '', 'Sleman', 'TNI AU'),
(103, 74, 1, 3, 2, 'BANTUL', '', 'Jawa', 1, 2, 1, '2013-11-25', NULL, 'Khaira Nathania Rafani', 'Palemsari,Bokoharjo,Prambanan,Sleman', '', 'Pelajar'),
(104, 76, 1, 2, 2, 'Bandung', 'bandung', 'Jawa', 1, 1, 1, '1970-11-17', '1996-12-22', 'Dra Hardiah Noventin', 'Blok F Komplek TNI AU Adisutjipto', 'bandung', 'IRT'),
(105, 76, 1, 3, 1, 'Bandung', '', 'Jawa', 1, 4, 1, '1999-09-19', NULL, 'M.Humamvidi Hunafa', 'Blok F Komplek TNI AU Adisutjipto', '', 'Pelajar'),
(106, 76, 1, 3, 2, 'Jakarta', '', 'Jawa', 1, 4, 1, '2011-08-17', NULL, 'Hasna Faza Liyaanan', 'Blok F Komplek TNI AU Adisutjipto', '', 'Pelajar'),
(107, 37, 1, 1, 1, 'Magetan', 'Magetan', 'jawa', 1, 1, 1, '1984-06-27', '2011-04-16', 'Alfian Rokhmat Kurniawan', 'Flat Jupiter No 24 Blok F Adisutjipto', 'Magetan', 'TNI AU'),
(108, 37, 1, 3, 1, 'Madiun', '', 'Jawa', 1, 4, 1, '2012-06-28', NULL, 'Afiq Maulana Huda Kurniawan', 'Flat Jupiter No 24 Blok F Adisutjipto', '', 'Pelajar'),
(112, 78, 1, 1, 1, 'Purworejo', 'Purworejo', 'Jawa', 1, 1, 2, '1972-03-14', '1996-12-22', 'Supriyanto', 'Ngalian,RT/Rw;004/22, Widodomartani Ngemplak', 'Purworejo', 'TNI AU'),
(113, 78, 1, 3, 1, 'Purworejo', '', 'Jawa', 1, 4, 1, '1997-06-20', NULL, 'M.Pasha Faishal ', 'Ngalian, Rt/Rw 004/22,Widodomartani, Ngemplak', '', 'Pelajar'),
(114, 78, 1, 3, 1, 'Jakarta', '', 'Jawa', 1, 4, 2, '2005-08-07', NULL, 'Arifah Ghina K.', 'Ngalian, RT/RW :004/22,Widodomartani, Ngemplak', '', 'Pelajar'),
(115, 80, 1, 1, 1, 'Sleman', 'Sleman', 'jawa', 1, 1, 2, '1970-07-16', '1999-06-19', 'Sunaryadi', 'Kaliduren I Rt 05Rw 18,Sumberagung, Moyudan,Sleman', 'Sleman', 'PNS Guru'),
(116, 80, 1, 1, 1, 'Sleman', '', 'Jawa', 1, 4, 2, '2000-09-12', NULL, 'Fikri Ilham Aditama', 'kaliduren I, Rt 05 Rw 18,Sumberagung,Moyudan Sleman', '', 'Pelajar'),
(117, 80, 1, 3, 1, 'Sleman', '', 'Jawa', 1, 4, 2, '2005-04-12', NULL, 'Zusma Ilham Amrulloh', 'Kaliduren I Rt 05,18, Sumberagung,Moyudan,Sleman', '', 'Pelajar'),
(118, 80, 1, 3, 1, 'Sleman', '', 'Jawa', 1, 4, 2, '2012-11-01', NULL, 'fadli Ilham Arsyad', 'Kaliduren I, Rt 05/18. Sumberagung, Moyudan Sleman', '', 'Pelajar'),
(120, 81, 1, 1, 1, 'Sragen', 'Tamanan,Banguntapan,Bantul', 'Jawa', 1, 1, 2, '1980-01-01', '2004-09-02', 'Hendro Catur jatmiko', 'Nglebeng Rt 005 Rw Tamanan,Banguntapan Bantul', 'Tamanan,Banguntapan,Bantul', 'Polri'),
(121, 81, 1, 1, 1, 'Sragen', 'Sukoharjo', 'Jawa', 1, 1, 2, '1979-12-07', '2004-09-02', 'Hendro Catur Jatmiko', 'Tamanan,Banguntapan, bantul', 'Sukoharjo', 'Polri'),
(122, 83, 1, 2, 2, 'Banjarmasin', 'Bandung', 'Sunda', 1, 1, 1, '1972-02-15', '1995-05-21', 'Siti Noor Hardijanti', 'Blok G No 8, Adisutjipto', 'Bandung', 'PNS TNI AU'),
(127, 84, 1, 2, 2, 'Kulonprogo', 'Kulonprogo', 'Jawa', 1, 1, 2, '1971-02-18', '1996-05-19', 'Wahyu Tri Widayanti', 'Temanggal,Rt 4 Rw II,Wijimulyo, nanggulan , Kulonprogo', 'Kulonprogo', 'Dosen'),
(128, 84, 1, 3, 1, 'Kulonprogo', '', 'Jawa', 1, 4, 2, '1997-02-07', NULL, 'Hammam Aulia', 'Temanggal Rt 04 Rw II,Wijimulyo,nanggulan,Kulon progo', '', 'pelajar'),
(129, 84, 1, 3, 2, 'Kulon progo', '', 'Jawa', 1, 4, 2, '2002-11-10', NULL, 'Salsabila Aulia', 'Temanggal, Rt 4 RW II, Wijimulyo, nanggulan Kulon progo', '', 'Pelajar'),
(130, 84, 1, 3, 1, 'Kulonprogo', '', 'Jawa', 1, 4, 2, '2006-01-11', NULL, 'Abdul Kaafi Aulia', 'Temanggal Rt 04 RW II, Wijimulyo, nanggulan kulon progo', '', 'Pelajar'),
(134, 88, 1, 1, 1, 'Sukoharjo', 'Karanganyar', 'Jawa', 1, 1, 2, '1975-07-01', '1999-02-14', 'Sugiyanto', 'Perum Cundamani Blok A 10, Kebonan, kalitirto Berbah Sleman', 'Karanganyar', 'TNI AU'),
(135, 88, 1, 3, 1, 'Bandung', '', 'Jawa', 1, 4, 2, '1999-08-25', NULL, 'M. Yugi Agvita', 'Perum Cundamani, A 10, Kebonan, kalitirto,Berbah', '', 'Pelajar'),
(136, 88, 1, 3, 1, 'Bandung', '', 'Jawa', 1, 4, 2, '2007-10-13', NULL, 'Hikara Elio Fitriyanto', 'Perum Cundamani A10 Kebonan Kalitirto, Berbah', '', 'Pelajar'),
(137, 89, 1, 2, 2, 'Bandung', 'bandung', 'Sunda', 1, 1, 1, '1975-05-07', '1997-01-16', 'Diah Kurnia', 'Jetis, 004/035, Tirtomartani,Kalasan Sleman', 'bandung', 'IRT'),
(138, 89, 1, 3, 2, 'Sleman', '', 'Jawa', 1, 4, 1, '1998-05-25', NULL, 'Nur Azizah H', 'Jetis Rt 004/035, Tirtomartani, Kalasan, Sleman', '', 'Pelajar'),
(139, 89, 1, 3, 2, 'Sleman', '', 'Jawa', 1, 4, 1, '2004-04-16', NULL, 'Defina Salwa H.P', 'Jetis, Rt 004/035, Tirtomartani Kalasan,Sleman', '', 'Pelajar'),
(140, 89, 1, 3, 2, 'Sleman', '', 'Jawa', 1, 4, 1, '2009-10-21', NULL, 'Siti Zahra Fakhriyah', 'Jetis, Rt 004/035, Tirtomartani, Kalasan, Sleman', '', 'Pelajar');

-- --------------------------------------------------------

--
-- Table structure for table `m_agama`
--

CREATE TABLE `m_agama` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_agama`
--

INSERT INTO `m_agama` (`id`, `nama`) VALUES
(5, 'Budha'),
(4, 'Hindu'),
(1, 'Islam'),
(3, 'Katolik'),
(2, 'Kristen');

-- --------------------------------------------------------

--
-- Table structure for table `m_bagian`
--

CREATE TABLE `m_bagian` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_bagian`
--

INSERT INTO `m_bagian` (`id`, `nama`) VALUES
(7, 'ADM'),
(6, 'KAL'),
(8, 'KES'),
(3, 'LEK'),
(1, 'PNB'),
(5, 'POM'),
(4, 'PSK'),
(9, 'SUS'),
(2, 'TEK');

-- --------------------------------------------------------

--
-- Table structure for table `m_dikmilti`
--

CREATE TABLE `m_dikmilti` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_dikmilti`
--

INSERT INTO `m_dikmilti` (`id`, `nama`) VALUES
(4, 'Diklat Prajab Gol. III'),
(25, 'Diklatjur PNS Gol II Kesehatan'),
(7, 'Diklatpim  Tk. IV'),
(26, 'Diklatsarjemen'),
(24, 'Jur  Aminu Ku'),
(22, 'Laprajab'),
(14, 'Larsarjemen Gol II'),
(2, 'Latprajab'),
(6, 'Latprajab Gol III'),
(18, 'Latsarjemen'),
(10, 'Latsarjemen Gol III'),
(1, 'Latsarmil'),
(21, 'Sarjemen'),
(17, 'Sarjemen Gol. II'),
(5, 'Sarjemen Gol. III'),
(30, 'Sejurba Adm'),
(31, 'Sejurba Kal'),
(29, 'Sejurba Kes'),
(33, 'Sejurba Pas'),
(28, 'Sejurba PDE'),
(32, 'Sejurba Pom'),
(38, 'Sejursarta Adm'),
(39, 'Sejursarta Kal'),
(41, 'Sejursarta Sus'),
(40, 'Sejursarta Tek'),
(43, 'Sekkau'),
(37, 'Seskoau'),
(42, 'Sessau'),
(34, 'Setukba'),
(27, 'Setukpa'),
(12, 'Susjur Adm'),
(11, 'Susjur Adminku'),
(16, 'Susjur Gol II Adm'),
(8, 'Susjur Kes'),
(23, 'Susjur PNS Fasint'),
(15, 'Susjuradminpers'),
(20, 'Susjurkes'),
(36, 'Susjurlata'),
(13, 'Susjursarban'),
(44, 'Suspajemen'),
(3, 'Test DIKMILTI 3'),
(9, 'Ujian Dinas');

-- --------------------------------------------------------

--
-- Table structure for table `m_dikumti`
--

CREATE TABLE `m_dikumti` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_dikumti`
--

INSERT INTO `m_dikumti` (`id`, `nama`) VALUES
(2, 'D3'),
(3, 'D4'),
(9, 'MAN'),
(4, 'S1'),
(5, 'S2'),
(6, 'S3'),
(1, 'SMA'),
(8, 'SPK');

-- --------------------------------------------------------

--
-- Table structure for table `m_golongan`
--

CREATE TABLE `m_golongan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_golongan`
--

INSERT INTO `m_golongan` (`id`, `nama`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV');

-- --------------------------------------------------------

--
-- Table structure for table `m_golongan_darah`
--

CREATE TABLE `m_golongan_darah` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_golongan_darah`
--

INSERT INTO `m_golongan_darah` (`id`, `nama`) VALUES
(1, 'A'),
(3, 'AB'),
(2, 'B'),
(4, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `m_grade`
--

CREATE TABLE `m_grade` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_grade`
--

INSERT INTO `m_grade` (`id`, `nama`) VALUES
(9, 'Grade 10'),
(2, 'Grade 2'),
(3, 'Grade 3'),
(5, 'Grade 4'),
(4, 'Grade 5'),
(1, 'Grade 6'),
(6, 'Grade 7'),
(7, 'Grade 8'),
(8, 'Grade 9');

-- --------------------------------------------------------

--
-- Table structure for table `m_hubungan_keluarga`
--

CREATE TABLE `m_hubungan_keluarga` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_hubungan_keluarga`
--

INSERT INTO `m_hubungan_keluarga` (`id`, `nama`) VALUES
(3, 'Anak'),
(2, 'Istri'),
(4, 'Orang Tua'),
(1, 'Suami');

-- --------------------------------------------------------

--
-- Table structure for table `m_jabatan`
--

CREATE TABLE `m_jabatan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_jabatan`
--

INSERT INTO `m_jabatan` (`id`, `nama`) VALUES
(112, '105'),
(113, '106'),
(114, '107'),
(115, '108'),
(116, '109'),
(117, '110'),
(118, '111'),
(29, '13-01-1982'),
(31, '13-9-1993'),
(133, '130'),
(134, '131'),
(135, '132'),
(136, '133'),
(137, '134'),
(138, '135'),
(239, '151'),
(236, '154'),
(160, '157'),
(161, '158'),
(162, '159'),
(238, '164'),
(237, '167'),
(202, '199'),
(203, '200'),
(204, '201'),
(224, '220'),
(225, '221'),
(226, '222'),
(227, '223'),
(130, '23'),
(240, '235'),
(131, '24'),
(252, '242'),
(253, '243'),
(254, '244'),
(255, '245'),
(256, '246'),
(257, '247'),
(258, '248'),
(259, '249'),
(132, '25'),
(32, '25-09-1998'),
(260, '250'),
(261, '251'),
(272, '269'),
(273, '270'),
(274, '271'),
(281, '277'),
(282, '278'),
(283, '279'),
(284, '280'),
(294, '292'),
(295, '293'),
(148, '62'),
(70, '65'),
(71, '66'),
(72, '67'),
(73, '68'),
(74, '69'),
(89, '83'),
(90, '84'),
(91, '85'),
(92, '86'),
(93, '87'),
(94, '88'),
(219, 'Administrator Kes Muda'),
(265, 'Ang Gpl L Adi'),
(264, 'Ang Sikal Lnd Adi'),
(293, 'Angg RSAU Antariksa Hlm'),
(292, 'Angg RSU Purwodadi Grobogan '),
(199, 'Angg Rumkit SLM'),
(192, 'Angg SUbdisadaaero disadaau'),
(155, 'Anggota'),
(143, 'Anggota Depo Pesbang 10'),
(124, 'Anggota Depodiklat Paskhas'),
(96, 'Anggota Disdinfolahtaau'),
(34, 'Anggota Dispers Kalijati'),
(97, 'Anggota Dispers Lanud Wir'),
(30, 'Anggota Dispullahta'),
(106, 'Anggota Infolahta Korpaskhas'),
(125, 'Anggota Labinkur '),
(98, 'Anggota Lanud Tpi'),
(154, 'Anggota Lnd Adi'),
(278, 'Anggota Rmkit manuhua'),
(277, 'Anggota Rmkit Sulaiman'),
(285, 'Anggota Rmkt Sulaiman'),
(151, 'Anggota RSPAU HardjolukitoU'),
(65, 'Anggota Rumkit'),
(157, 'Anggota Rumkit Adi'),
(279, 'Anggota Rumkit Adisutjipto'),
(158, 'Anggota Rumkit RSPAU dr. Hardjolukito'),
(105, 'Anggota Skadik 501 Wingdikum'),
(23, 'Anggota Skadik 503'),
(144, 'Anggota Skatek 043'),
(126, 'Anggota Sren Kodikau'),
(99, 'Anggota Subdisdikptek Disdikau'),
(24, 'Anggota Urpers Rumkit Adi'),
(139, 'Anggota Urpers Rumkit Lanud Adisutjipto'),
(165, 'Anngota RSPAU dr. Hardjo'),
(52, 'B operator Komptr Bag.Instal Gilut'),
(48, 'Ba Adminku Pekas  RSPAU dr S.Hardjolukito'),
(47, 'Ba Adminku Pekas Abd'),
(43, 'Ba Adminku Pekas RSPAU dr. S.Hardjolukito'),
(33, 'Ba Adminpers Urpers Bagum RSPAU dr. S.Hardjolukito'),
(35, 'Ba Adminpers Urpers taud Hardjolukito'),
(127, 'Ba Adminu Bagum RSPAU dr. S. Hardjolukito'),
(18, 'Ba Adminu Binrohwat Binkopetensi RSPAU dr. S. Hardjolukito'),
(17, 'Ba Operator Komp Si Info Infolahta Bagum'),
(104, 'Ba Opr Komp Bag Instal Watum  RSPAU dr. S Hardjolukito'),
(111, 'Ba Opr Komp BAg Instal Watum RSPAU dtr. S. Hardjolukito'),
(141, 'Ba Opr komp Dep THT'),
(101, 'Ba Opr Komp Depaka AAU'),
(102, 'Ba Opr Komp PAban II/Jemen Srenaau'),
(103, 'Ba Opr Komp Siinfolahta Bagum RSPAU dr. S. Hardjolukito'),
(110, 'Ba Opr Komp Siminpers Dsipers Lanud Iskandar'),
(100, 'Ba Opr Komp Subdisdikiptek Disdikau'),
(109, 'Ba Opr Komputer'),
(39, 'Ba Pekas disku'),
(46, 'Ba Pembukuan Pekas Lnd Rai'),
(287, 'Ba Perawat Bag. Bedah orthopedi'),
(276, 'Ba Perawat Suburminlog R.Penydal P.Ur.Ruang Penydal Pria'),
(51, 'Ba perawat Watinap Watum'),
(280, 'Ba Prwt RSPAU'),
(107, 'Ba Sijarkom Infolahta Korpaskhas'),
(27, 'Ba Slogau'),
(108, 'Ba Tek Jarkomp Sijarkomp Infolahta Korpaskhas'),
(291, 'Bagperwt Bag Bedah'),
(62, 'BARU'),
(231, 'Bidan Pelaks lanjutan RSAU Esnawan'),
(232, 'Bidan Pelaks lanjutan RSPAU dr.S.Hardjo'),
(230, 'Bidan Pelaksana '),
(228, 'Bidan Pelaksana Lanjutan'),
(61, 'Bidan Pelaksana Lanjutan Bag Inf Fetomaternal Dep Obs'),
(233, 'Bidan Penyelia Dep.Obsgin RSPAU dr.S.harjolukito'),
(229, 'Bidan Rusapau A'),
(12, 'DANFLIGHT B SEMABA WARA'),
(13, 'DANFLIGHT B SKADIK 105'),
(212, 'Dansatkes'),
(288, 'DepoDiklat'),
(171, 'Dik Spes Bedah Gilut'),
(67, 'Dokter Gigi'),
(69, 'Dokter gigi Madya'),
(63, 'Dokter Gigi Madya RSPAU dr.S.Hardjolukito'),
(68, 'Dokter Gigi Muda'),
(95, 'Dp Dan Skadik 501 Wingdikum'),
(64, 'Drg Madya'),
(5, 'Jabatan'),
(172, 'Ka Klinik Gilut'),
(246, 'Ka Progar'),
(189, 'Ka RSPAU Dr.S.Hardjolukito,Diskesau'),
(266, 'Ka TB Sathar 32 Depo 30'),
(80, 'Ka Unit Admingadar'),
(79, 'Ka unit Imun'),
(76, 'Ka Unit Poli umum'),
(209, 'Ka Unit Watdok Klinik Jiwa RSAU dr. Esnawan'),
(57, 'Kabag Bankes Dep Dukkes'),
(215, 'Kabagkeswa Depaeroklinik Lakespra'),
(82, 'Kabagrengarku RSPAU dr.S.Hardjolukito'),
(168, 'Kabagum'),
(245, 'Kabagum lafiau'),
(75, 'Kabagwasyanmed SPI RSPAU dr.S Hardjolukito'),
(181, 'Kabinprof Setla'),
(217, 'Kadep Jiwa RSPAU dr.S.Hardjolukito'),
(85, 'Kadukkes Rumkit '),
(247, 'Kafarmasi'),
(248, 'Kagupusfi lafiau'),
(213, 'Kaklinik Jiwa RSAU Esnawan'),
(214, 'Kaklinikkeswa Aeroklinik'),
(78, 'Kamed Ruspau'),
(190, 'Kasi Bedah Mulut Bag Instal Gilut RSPAU'),
(7, 'Kasi Infolahta Bagum'),
(81, 'Kasi Yan HD'),
(249, 'Kasibekkes Subdismatif'),
(267, 'Kasikal Dislog Ats'),
(14, 'KASIMIN DISBIN WINGKAR '),
(28, 'Kasipers Bagum'),
(175, 'Kasub Komite Bang Mutu Komite Medik'),
(174, 'Kasub Komite Bangmutu'),
(182, 'Kasub Komite Bangmutu Komite Medik'),
(218, 'Kasubdisdukkes '),
(216, 'Kasubdiskes Ditpers Kodikau'),
(145, 'Kasubsi PK Siopslat'),
(146, 'Kasubsiopslat'),
(176, 'Kasubunit PoliGilut'),
(180, 'Kaunit Ident Dokgibangan'),
(222, 'Kaunit Jangwat jangkes'),
(170, 'Kaunit Poli Gilut'),
(177, 'Kaunit Watdok watum'),
(178, 'Kaunit Watlan Watum'),
(120, 'Kaunit Watlan Watum Rumkit Balikpapan'),
(244, 'KaunitApotik jangkes'),
(55, 'Kaunitjangwat Jangkes'),
(59, 'Kaunitwatinap Watum RS.dr. Hardjolukito'),
(147, 'Kaur Angkutan'),
(11, 'KAUR PROGAPL JARKOM INFOLAHTA'),
(41, 'Kaur Rengar Prog AAU'),
(188, 'Kaur Ruang VIP Si Watnap Bag Instal Watum RSPAU dr.S.Hardjolukit'),
(37, 'KAUR Simak BMN'),
(15, 'KAUR SISINFOLAHTA SI INFOLAHTA BAGUM'),
(123, 'Kauraku Pekas dr.S.Hardjolukito'),
(40, 'Kaurelav Progar Denma'),
(142, 'Kaurharfast RSPAU dr.S.Hardjolukito'),
(221, 'Kaurmin Bekkes'),
(223, 'Kaurminbinprofnonwat Bag Binkompotensi'),
(187, 'Kaurminlog Konservasi Baginstal Gilut RSPAU Hardjolukito'),
(56, 'Kaurminpersip Bagum RSPAU  S.Hardjolukito'),
(50, 'Kaurminpersmil Sipers Bagum'),
(6, 'Kepala RSPAU'),
(4, 'Kolonel Kes'),
(242, 'Pa DP'),
(243, 'Pa Pobekkes'),
(119, 'Pakes'),
(87, 'Pakes Gol VI'),
(210, 'Pakes Gol VI RSAU Esnawan'),
(122, 'Pakes Gol VII dr. S. Hardjo'),
(77, 'Pakes Gol VII Ruspau'),
(121, 'Pakes Gol VIII Rumkit Adi'),
(207, 'Pakes RSPAU dr.Esnawan A.'),
(208, 'Pakes Skadud 14'),
(179, 'Pama DP'),
(88, 'Pamen Hlm (Dik S2)'),
(167, 'Paramedis Rumkit Adi'),
(196, 'Pelaks RSPAU'),
(166, 'Pelaks RSPAU dr.S.Hardjolukito'),
(164, 'Pelaks Rumkit Adi'),
(152, 'Pelaks Tur Adminku'),
(21, 'Pelaksana subdisadaaero'),
(201, 'Pengatur'),
(49, 'Pengatur Adminu Bagum RSPAU dr. S.Hardjolukito'),
(9, 'Pengatur Perawat Watum'),
(185, 'Pengatur Perawat Watum RSPAU dr.S.Hardjo'),
(200, 'Pengatur Wat'),
(60, 'Perawat Gigi Pelaksana'),
(269, 'Perawat Pelaks Rmkt DMN'),
(197, 'Perawat Pelaks RSPAU'),
(271, 'Perawat pelaks RSPAU dr. hardjo'),
(270, 'perawat pelaks RSPAU dr.S.hardjo'),
(54, 'Perawat Pelaksana'),
(163, 'Perawat Pelaksana  RSPAU'),
(156, 'Perawat Pelaksana Lanjutan'),
(58, 'Perawat Pelaksana lanjutan Bag Jiwa dep Jiwa'),
(205, 'Perawat pelaksana RSPAU dr. S.Hardjolukito'),
(234, 'Perawat Penyelia'),
(235, 'Perawat Penyelia RSPAU dr. S.hardjolukito'),
(275, 'Perawat Penyelia RSPAU dr.S.Hardjolukito'),
(251, 'Pokli Bid Farmasi RSPAU Hardjo'),
(169, 'Pokli Bid Yanmed'),
(241, 'Pokli Bid.farmasi'),
(250, 'Poklibidang Farmasi'),
(286, 'Prwt pelaks RSPAU dr. S.Hardjolukito'),
(159, 'Prwt Pelaksana'),
(26, 'Ps Kaursisinfolahta Infolahta RSPAU Hardjolukito'),
(10, 'Ps. KASI INFOLAHTA BAGUM'),
(83, 'Ps. Kaunit Fisioterapi Jangkes'),
(38, 'Ps. Kaur Rengar progar'),
(268, 'Ps. Kaurgudang Matum RSPAU dr.S.hardjolukito'),
(211, 'Ps.Kaklinik Jiwa RSAU dr.Esnawan'),
(36, 'Ps.Kasi TU Bagum RSPAU dr.S.Hardjolukito'),
(84, 'Ps.Kaunit Bankesprev Dukkes Rumit'),
(42, 'PS.Kauren prog Adi'),
(262, 'Ps.Kaurgudang Matum Sigudang RSPAU dr.S.hardjolukito'),
(220, 'PS.Kunit Radiologi Rumkit Spo'),
(183, 'Radiografer Pelaksana'),
(290, 'Rumkit Rsn'),
(173, 'Ses Rumkit'),
(86, 'Sesrumkit'),
(263, 'Siswa SBIT'),
(289, 'Skd Paskhas 463 W 4'),
(44, 'Staf Pekas Dnm Koharmatau'),
(45, 'Staf Pekas Lanud WMI'),
(19, 'Ta '),
(128, 'Ta Adminpers Subbagmin Bagum RSPAU dr. S Hardjolukito'),
(129, 'Ta Adminpers Subbagmin Bagum RSPAU dr. S. HArdjolukito'),
(25, 'Ta Adminu  Urmin TU Sipers TU Bagum RSPAU dr.S Hardjolukito'),
(22, 'Ta Adminu Urmin Tu Si TU Bagum'),
(140, 'Ta Adminu Urmin TU Si TU Bagum RSPAU dr. S Hardjolukito'),
(149, 'test'),
(1, 'Test Jabatan 1'),
(2, 'Test Jabatan 2'),
(3, 'Test Jabatan 3'),
(150, 'Tur Adminku Progar RSPAU dr.S Hardjolukito'),
(16, 'Tur Adminu Bagum'),
(194, 'Tur Adminu Bandadalops Sops Koopsau 1'),
(153, 'Tur Adminu Med'),
(53, 'TUR ADMINU RSPAU'),
(20, 'Tur Adminu Si TU Sipers RSPAU'),
(195, 'Tur Adminu Si TU Sipers RSPAU dr S.Hardjolukito'),
(193, 'Tur Operator Komp Spers'),
(186, 'Tur Perawat Gadar RSPAU dr.S.Hardjolukito'),
(191, 'Tur perawat Kesprev'),
(198, 'Tur Perawat Watum'),
(184, 'Tur Perawat Watum RSPAU dr.S.Hardjolukito'),
(66, 'Urkes Koopsau II'),
(206, 'WaKa RSPAU dr.S.Hardjolukito'),
(8, 'Wakil Kepala RSPAU');

-- --------------------------------------------------------

--
-- Table structure for table `m_jenis_kelamin`
--

CREATE TABLE `m_jenis_kelamin` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_jenis_kelamin`
--

INSERT INTO `m_jenis_kelamin` (`id`, `nama`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `m_korp`
--

CREATE TABLE `m_korp` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_kota`
--

CREATE TABLE `m_kota` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kota`
--

INSERT INTO `m_kota` (`id`, `nama`) VALUES
(5, 'Bandung'),
(10, 'Bandung Jawa Barat'),
(3, 'Kab. Bandung'),
(4, 'Kab. Cirebon'),
(14, 'Karanganyar'),
(15, 'Klaten'),
(8, 'Klaten Jawa Tengah'),
(1, 'Kota Bandung'),
(2, 'Kota Cirebon'),
(6, 'Kota Cirebonx'),
(9, 'Magelang'),
(12, 'Semarang'),
(11, 'Solo'),
(13, 'Yogya'),
(7, 'YOGYAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `m_pangkat`
--

CREATE TABLE `m_pangkat` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_pangkat`
--

INSERT INTO `m_pangkat` (`id`, `nama`) VALUES
(8, 'KAPTEN'),
(5, 'KOLONEL'),
(19, 'KOPDA'),
(17, 'KOPKA'),
(18, 'KOPTU'),
(10, 'LETDA'),
(6, 'LETKOL'),
(9, 'LETTU'),
(3, 'MARSDA'),
(2, 'MARSDYA'),
(1, 'MARSEKAL'),
(4, 'MARSMA'),
(7, 'MAYOR'),
(12, 'PELDA'),
(11, 'PELTU'),
(38, 'PNS GOL I A'),
(37, 'PNS GOL I B'),
(36, 'PNS GOL I C'),
(35, 'PNS GOL I D'),
(34, 'PNS GOL II A'),
(33, 'PNS GOL II B'),
(32, 'PNS GOL II C'),
(31, 'PNS GOL II D'),
(30, 'PNS GOL III A'),
(29, 'PNS GOL III B'),
(28, 'PNS GOL III C'),
(27, 'PNS GOL III D'),
(26, 'PNS GOL IV A'),
(25, 'PNS GOL IV B'),
(24, 'PNS GOL IV C'),
(23, 'PNS GOL IV D'),
(22, 'PRADA'),
(20, 'PRAKA'),
(21, 'PRATU'),
(16, 'SERDA'),
(14, 'SERKA'),
(13, 'SERMA'),
(15, 'SERTU');

-- --------------------------------------------------------

--
-- Table structure for table `m_profesi`
--

CREATE TABLE `m_profesi` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_profesi`
--

INSERT INTO `m_profesi` (`id`, `nama`) VALUES
(11, NULL),
(17, 'Bidan'),
(2, 'Dokter'),
(12, 'Dokter Gigi'),
(8, 'Fasint Harfa'),
(18, 'Gudang'),
(13, 'Keperawatan'),
(5, 'Keuangan'),
(15, 'Minu'),
(9, 'Paramedis'),
(3, 'PDE'),
(7, 'Perawat'),
(4, 'Pers'),
(14, 'Personel'),
(16, 'Radiografer'),
(10, 'Radiologi'),
(6, 'Set'),
(1, 'TEST PROFESI');

-- --------------------------------------------------------

--
-- Table structure for table `m_role`
--

CREATE TABLE `m_role` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_role`
--

INSERT INTO `m_role` (`id`, `nama`) VALUES
(1, 'Admin'),
(2, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `m_ruangan`
--

CREATE TABLE `m_ruangan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_ruangan`
--

INSERT INTO `m_ruangan` (`id`, `nama`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e');

-- --------------------------------------------------------

--
-- Table structure for table `m_spesialis`
--

CREATE TABLE `m_spesialis` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_spesialis`
--

INSERT INTO `m_spesialis` (`id`, `nama`) VALUES
(4, NULL),
(7, 'Bedah Mulut'),
(10, 'Bedah Saraf'),
(6, 'Dokter Gigi'),
(11, 'Dokter Gigi Anak'),
(12, 'Kes.Jiwa'),
(1, 'PDE'),
(8, 'Penyakit Mulut'),
(5, 'Perio'),
(2, 'Pers'),
(9, 'Radiodiagnostik'),
(3, 'Set');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_aktivasi`
--

CREATE TABLE `m_status_aktivasi` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_aktivasi`
--

INSERT INTO `m_status_aktivasi` (`id`, `nama`) VALUES
(2, 'Aktif'),
(1, 'Belum Aktivasi'),
(3, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_jabatan`
--

CREATE TABLE `m_status_jabatan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_jabatan`
--

INSERT INTO `m_status_jabatan` (`id`, `nama`) VALUES
(1, 'Penuh'),
(2, 'Sementara');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_kehidupan`
--

CREATE TABLE `m_status_kehidupan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_kehidupan`
--

INSERT INTO `m_status_kehidupan` (`id`, `nama`) VALUES
(1, 'Hidup'),
(2, 'Meninggal');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_kepegawaian`
--

CREATE TABLE `m_status_kepegawaian` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_kepegawaian`
--

INSERT INTO `m_status_kepegawaian` (`id`, `nama`) VALUES
(1, 'Aktif'),
(6, 'CTLN (Cuti di luar Tanggungan Negara)'),
(4, 'Dipekerjakan Instansi Lain'),
(2, 'Pensiun'),
(3, 'Pindah'),
(5, 'Tugas Belajar');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_pernikahan`
--

CREATE TABLE `m_status_pernikahan` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_pernikahan`
--

INSERT INTO `m_status_pernikahan` (`id`, `nama`) VALUES
(4, 'BK (Belum Kawin)'),
(3, 'D (Duda)'),
(5, 'Janda'),
(1, 'K (Kawin)'),
(2, 'TK (Tidak Kawin)');

-- --------------------------------------------------------

--
-- Table structure for table `m_status_tertanggung`
--

CREATE TABLE `m_status_tertanggung` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_status_tertanggung`
--

INSERT INTO `m_status_tertanggung` (`id`, `nama`) VALUES
(2, 'Tidak'),
(1, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `m_suku`
--

CREATE TABLE `m_suku` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_suku`
--

INSERT INTO `m_suku` (`id`, `nama`) VALUES
(6, 'Bali'),
(3, 'Batak'),
(7, 'Bugis'),
(1, 'Jawa'),
(4, 'Minang'),
(2, 'Sunda'),
(5, 'Timor');

-- --------------------------------------------------------

--
-- Table structure for table `m_unit_kerja`
--

CREATE TABLE `m_unit_kerja` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_unit_kerja`
--

INSERT INTO `m_unit_kerja` (`id`, `nama`) VALUES
(1, 'Bagian Administrasi Umum'),
(3, 'Bagian Kepegawaian'),
(2, 'Bagian Keuangan'),
(7, 'Bedah'),
(6, 'Dukkes'),
(8, 'Farmasi'),
(4, 'Infolahta'),
(22, 'KA Komite Keperawatan'),
(20, 'KA Komite Medik'),
(10, 'KA Rumah Sakit'),
(21, 'Kadep IKA'),
(18, 'Pamen'),
(11, 'Penydal'),
(5, 'Pokli'),
(13, 'Poliklinik Anak'),
(14, 'Poliklinik Bedah'),
(15, 'Poliklinik Jantung'),
(17, 'Poliklinik Jiwa'),
(16, 'Poliklinik Obsgyn'),
(12, 'Poliklinik THT'),
(19, 'SPI'),
(9, 'Wakil KARSPAU');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_agama` smallint(5) UNSIGNED DEFAULT NULL,
  `id_bagian` smallint(5) UNSIGNED DEFAULT NULL,
  `id_dikmilti` smallint(5) UNSIGNED DEFAULT NULL,
  `id_dikumti` smallint(5) UNSIGNED DEFAULT NULL,
  `id_golongan` smallint(5) UNSIGNED DEFAULT NULL,
  `id_golongan_darah` smallint(5) UNSIGNED DEFAULT NULL,
  `id_grade` smallint(5) UNSIGNED DEFAULT NULL,
  `id_jabatan` smallint(5) UNSIGNED DEFAULT NULL,
  `id_jenis_kelamin` smallint(5) UNSIGNED DEFAULT NULL,
  `id_kota` smallint(5) UNSIGNED DEFAULT NULL,
  `id_pangkat` smallint(5) UNSIGNED NOT NULL,
  `id_ruangan` smallint(5) UNSIGNED DEFAULT NULL,
  `id_status_kepegawaian` smallint(5) UNSIGNED DEFAULT NULL,
  `id_status_pernikahan` smallint(5) UNSIGNED DEFAULT NULL,
  `id_unit_kerja` smallint(5) UNSIGNED DEFAULT NULL,
  `id_suku` smallint(5) UNSIGNED DEFAULT NULL,
  `id_korp` smallint(5) UNSIGNED DEFAULT NULL,
  `id_profesi` smallint(5) UNSIGNED DEFAULT NULL,
  `id_spesialis` smallint(5) UNSIGNED DEFAULT NULL,
  `id_kenaikan_pangkat` smallint(5) UNSIGNED DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_lahir_pasangan` date DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_menikah` date DEFAULT NULL,
  `tanggal_usul_kenaikan_pangkat` date DEFAULT NULL,
  `tmt_dikmilti` date DEFAULT NULL,
  `tmt_dikumti` date DEFAULT NULL,
  `tinggi_badan` float UNSIGNED DEFAULT NULL,
  `berat_badan` float UNSIGNED DEFAULT NULL,
  `jumlah_anak` smallint(5) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrp` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_masuk` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kesatuan` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kotama` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telepon_rumah` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_pasangan` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dikumti_teks` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `id_agama`, `id_bagian`, `id_dikmilti`, `id_dikumti`, `id_golongan`, `id_golongan_darah`, `id_grade`, `id_jabatan`, `id_jenis_kelamin`, `id_kota`, `id_pangkat`, `id_ruangan`, `id_status_kepegawaian`, `id_status_pernikahan`, `id_unit_kerja`, `id_suku`, `id_korp`, `id_profesi`, `id_spesialis`, `id_kenaikan_pangkat`, `tanggal_lahir`, `tanggal_lahir_pasangan`, `tanggal_masuk`, `tanggal_menikah`, `tanggal_usul_kenaikan_pangkat`, `tmt_dikmilti`, `tmt_dikumti`, `tinggi_badan`, `berat_badan`, `jumlah_anak`, `nama`, `nama_pasangan`, `nrp`, `asal_masuk`, `kesatuan`, `kotama`, `alamat`, `no_telepon_rumah`, `no_hp`, `no_ktp`, `photo_filename`, `pekerjaan_pasangan`, `dikumti_teks`) VALUES
(13, 1, 7, 3, 2, 2, 1, 1, 5, 1, 1, 6, NULL, 1, 3, NULL, 2, NULL, 11, 4, NULL, '2019-04-01', '0000-00-00', '2019-05-01', '0000-00-00', NULL, '2019-05-02', '2019-05-01', 170, 55, NULL, 'Dennis Arfan', NULL, '213123345', 'Asal Masuk', 'RSPAU dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Parakan Asri dalam', NULL, '087821491949', '', 'z5i08229xqq3ievcwqqpspue8e2cmdcu.jpg', NULL, 'Teknik Elektronika'),
(16, 1, 9, 11, 1, 2, 4, 2, 17, 2, 7, 13, NULL, 1, 2, NULL, 1, NULL, 11, 4, NULL, '1981-09-03', NULL, '2002-01-01', NULL, NULL, '2019-05-02', '2019-05-24', 170, 85, NULL, 'Diana Mahastuti', NULL, '528957', 'Semaba PK Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Ds. Dhuri Rt/Rw 007/021 Tirtomartani Kalasan Sleman', NULL, '081226636277', NULL, '0', NULL, 'SMA N 1 Kalasan'),
(17, 1, 9, 28, 1, NULL, NULL, NULL, 104, 2, 7, 14, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1989-07-07', NULL, '2008-02-01', NULL, NULL, '2008-07-09', '2007-06-16', 163, 60, NULL, 'Faradilla Hanayunita', NULL, '536846', 'Semaba PK Wara XXXI', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', NULL, NULL, '082262063131', NULL, '0', NULL, 'SMK Islam Center Cirebon'),
(18, 1, 7, 34, 4, NULL, 2, NULL, 18, 1, 7, 14, NULL, 1, 1, NULL, 1, NULL, 14, 4, NULL, '1975-09-22', NULL, '1996-08-06', NULL, NULL, '2007-05-09', '2005-09-23', 175, 79, NULL, 'Eko Kriswantoro', NULL, '521397', 'Secata PK XXXII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Piyungan Rt/Rw 001/   srimartani Piyungan Bantul', NULL, '087878280675', NULL, '0', NULL, 'Sekolah Tinggi Ilmu Manajemen LPMI'),
(19, 2, 7, 38, 1, NULL, 2, NULL, 128, 1, 8, 21, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1992-12-17', NULL, '2013-11-13', NULL, NULL, '2014-03-20', '2011-05-16', 172, 64, NULL, 'Kristianto Yudhi Pratamarani', NULL, '542814', 'Semata PK LXV', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Demangan RT/Rw 001/008 Kajoran Klaten Selatan', NULL, '085786465121', NULL, '0', NULL, 'SMA Budi Luhur'),
(20, 1, 6, 12, 1, NULL, 4, 4, 20, 1, 9, 31, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1979-02-27', NULL, '2003-12-01', NULL, NULL, '1998-05-23', '2014-10-08', 163, 60, NULL, 'Safarin', NULL, '197902272003121001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kauman II Rt 017 Rw 08 Payaman Secang Magelang', NULL, '081398579373', NULL, '0', NULL, NULL),
(21, 1, 8, 29, 1, 2, 3, NULL, NULL, 2, 10, 16, NULL, 1, 2, NULL, 2, NULL, NULL, NULL, NULL, '1995-10-18', NULL, '2015-10-09', NULL, NULL, '2016-05-10', '2013-06-01', 163, 60, NULL, 'Gina Anggraeni Suwandi', NULL, '544356', 'Semaba PK Wara XL', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Jatiwangi 5 No. 5 Antapani Bandung', NULL, '082126945708', NULL, '0', NULL, 'SMA N 23 Bandung'),
(22, 1, 7, NULL, 1, 1, 1, 3, 22, 1, 7, 20, NULL, 1, 1, NULL, 1, NULL, NULL, 2, NULL, '1987-04-04', NULL, '2008-08-21', NULL, NULL, '2008-12-24', '2005-09-03', 172, 65, NULL, 'Hendra Gunawan', NULL, '537720', 'semata PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kauman GM I/187 rT 039 Rw 11 Gondomanan', NULL, '085100225444', NULL, '0', NULL, 'SMA N Banguntapan I'),
(23, 1, 9, 27, 4, NULL, 4, NULL, 26, 1, 9, 10, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1975-08-18', NULL, '1998-01-09', NULL, NULL, '2016-11-21', '2014-06-20', 162, 60, NULL, 'Supoyo', NULL, '523741', 'Semaba PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Sigug Rt 6 Rw2 Bumiharjo Borobudur Magelang Ja-teng', NULL, '081312811083', NULL, '0', NULL, NULL),
(24, 1, 7, NULL, 1, NULL, 4, 4, 28, 2, 7, 7, NULL, 1, 1, NULL, 4, NULL, NULL, 2, NULL, '1962-10-03', NULL, '1981-09-21', NULL, NULL, '1997-12-11', '2081-01-22', 159, 76, NULL, 'Desmi Nellita', NULL, '510566', 'Sebamilwa Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok P -13 Lanud Adisutjipto', NULL, '087839112013', NULL, '0', NULL, NULL),
(25, 1, 7, 30, 1, NULL, 4, NULL, 33, 2, 7, 11, NULL, 1, 1, NULL, 1, NULL, 4, NULL, NULL, '1974-09-12', NULL, NULL, NULL, NULL, NULL, NULL, 160, 64, NULL, 'Erny Utaminingsih', NULL, '517420', 'Bintara Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Mangga  RT 2 RW 56 Sambi Legi Kidul Maguwoharjo', NULL, '085742154502', NULL, '0', NULL, NULL),
(28, 1, 9, 27, 2, NULL, 1, 4, 37, 2, 7, 8, NULL, 1, 5, NULL, 1, NULL, 3, NULL, NULL, '1971-09-11', NULL, '1992-05-02', NULL, NULL, '2011-06-12', '2019-06-12', 160, 65, NULL, 'Dyah Lastiati', NULL, '516256', 'Seba PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok c47 Komplek Adisutjipto', NULL, '085717084771', NULL, '0', NULL, 'Akuntansi Keuangan'),
(29, 1, 7, 27, 2, 3, 4, NULL, 38, 1, 7, 8, NULL, 1, 1, NULL, 1, NULL, 5, NULL, NULL, '1970-05-18', NULL, '1992-05-01', NULL, NULL, NULL, NULL, 173, 90, NULL, 'Mugiyo prayitno', NULL, '516229', 'Secaba PK XII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komlek TNI AU Blok M  55 Lanud Adisutjipto', NULL, '081319350324', NULL, '0', NULL, NULL),
(30, 3, 7, NULL, 1, NULL, 4, NULL, 43, 2, 7, 13, NULL, 1, 1, NULL, 5, NULL, 5, NULL, NULL, '1981-05-09', NULL, '2001-01-19', NULL, NULL, '2001-01-19', '2000-06-22', 165, 60, NULL, 'Caroline Since Uskono', NULL, '528005', 'Jakarta', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komp.TNI AU AdisutjiptoBlok R -6', NULL, '087862173037', NULL, '0', NULL, NULL),
(31, 1, 7, 25, 4, NULL, 1, NULL, 49, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1984-07-27', NULL, '2011-04-01', NULL, NULL, '2011-06-26', '2001-09-10', 160, 64, NULL, 'Eka Yuliatun,A.Md', NULL, '198407272010122003', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Pondok II Widodomartani Ngemplak', NULL, '085600779031', NULL, '0', NULL, NULL),
(32, 1, 7, 27, 1, 3, 2, NULL, 50, 2, 7, 8, NULL, 1, 2, NULL, 1, NULL, 6, NULL, NULL, '1971-10-13', NULL, NULL, NULL, NULL, NULL, NULL, 160, 65, NULL, 'Susi Endahwati', NULL, '517400', 'Sebamilsuk Wara XVII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Sanggrahan Rt 01/8 Tegaltirto,Berbah Sleman', NULL, '085878597011', NULL, '0', NULL, NULL),
(33, 1, 8, 34, NULL, NULL, 4, NULL, 51, 1, 7, 15, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1980-04-13', NULL, '2000-10-04', NULL, NULL, NULL, '1998-07-11', 172, 65, NULL, 'Edy Supriyanto', NULL, '528326', 'Secata', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jomblangan No 89 Rt 03 Banguntapan Bantul', NULL, '08122795212', NULL, '0', NULL, NULL),
(34, 1, 9, 34, 1, 2, 1, NULL, 52, 1, 7, 16, NULL, 1, 1, NULL, 1, NULL, 8, NULL, NULL, '1979-08-12', NULL, '2000-02-11', NULL, NULL, '2014-04-15', NULL, 178, 74, NULL, 'Heri Subiakto', NULL, '526986', 'Semata PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Somodaran RT 03 RW 2 Purwomartani kalasan Sleman', NULL, '08126366926', NULL, '0', NULL, NULL),
(35, 1, 7, 12, 2, NULL, 4, NULL, 53, 1, 7, 29, NULL, 1, 1, NULL, 1, NULL, 6, NULL, NULL, '1968-06-20', NULL, '1998-06-19', NULL, NULL, '2007-10-08', '1992-04-01', 165, 65, NULL, 'Suryana', NULL, '196806201998031004', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Barepan ,Sumberrahayu,Moyudan Sleman', NULL, '08164229133', NULL, '0', NULL, NULL),
(36, NULL, 8, 18, 4, NULL, 4, NULL, 54, 2, 7, 30, NULL, 1, 1, NULL, 1, NULL, 9, NULL, NULL, '1985-04-26', NULL, NULL, NULL, NULL, NULL, NULL, 160, 60, NULL, 'Dian Fajaryati', NULL, '198504262007122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komlek AU Blok M-34 Lanud Adisutjipto', NULL, '081931715859', NULL, '0', NULL, NULL),
(37, 1, 8, NULL, 2, NULL, 2, NULL, 55, 2, 7, 8, NULL, 1, 1, NULL, 1, NULL, 10, NULL, NULL, '1985-03-12', NULL, '2019-06-17', NULL, NULL, NULL, '2019-06-17', 159, 56, NULL, 'Dwi Wida Hudyasari', NULL, '537327', 'Sepa PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Flat Jupiter No 24 Blok F Adisutjipto', NULL, '08128509197', NULL, '0', NULL, NULL),
(38, 1, 6, NULL, 4, 3, 4, NULL, 56, 2, 7, 27, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1969-04-23', NULL, '1998-03-01', NULL, NULL, NULL, NULL, 160, 64, NULL, 'Sri Palupi Saptarini,S.Sos', NULL, '1966904231998032001', 'Capeg', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Wringin Rt 002 Rw 015 Purwobinangun Pakem Sleman', NULL, '08164264652', NULL, '0', NULL, NULL),
(39, NULL, 8, NULL, 2, NULL, 2, NULL, 57, 1, 7, 6, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1973-07-15', NULL, '1996-05-13', NULL, NULL, '2006-12-15', '1994-11-09', 165, 63, NULL, 'Rum Yulaika Wulandari', NULL, '520937', 'Sepa PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok A No 25 Komplek Adisutjipto', NULL, '081802651024', NULL, '0', NULL, NULL),
(40, 1, 8, 8, 2, NULL, 4, NULL, 58, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1984-07-18', NULL, '2007-12-01', NULL, NULL, '2017-06-22', '2006-06-01', 160, 48, NULL, 'Priani', NULL, '198407182007122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Ngentak Penggok Rt 04 Rw 14 Sumberagung Moyudan Sleman', NULL, '087838141201', NULL, '0', NULL, NULL),
(41, NULL, 8, NULL, 2, NULL, 4, NULL, 59, 1, 7, 7, NULL, 1, 1, NULL, 6, NULL, NULL, NULL, NULL, '1973-08-12', NULL, '1997-07-02', NULL, NULL, NULL, NULL, 164, 63, NULL, 'I Wayan Polih', NULL, '522792', 'Sepa PK 1997', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok B No 33 Komplek Adisutjipto', NULL, '085340296706', NULL, '0', NULL, NULL),
(42, 3, 8, 26, 2, NULL, 3, 4, 54, NULL, 7, 31, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1984-06-14', NULL, '2007-12-01', NULL, NULL, '2009-12-10', '2007-06-23', NULL, 68, NULL, 'TH. Dwi Wahyuni', NULL, '198406142007122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jagalan Rt 04/02,Tegal tirto, Berbah Sleman', NULL, '081226197688', NULL, '0', NULL, NULL),
(43, 1, 8, 26, 2, 2, 3, 4, 60, NULL, 7, 31, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1985-03-10', NULL, '2008-12-01', NULL, NULL, '2010-11-26', '2008-09-18', NULL, 80, NULL, 'Fitrya Ulfah H A.Md.KG', NULL, '198503102008122003', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Karanglo Rt 03/02 Purwomartani Kalasan Sleman', NULL, '087839143185', NULL, '0', NULL, NULL),
(44, 1, NULL, 8, 2, 3, 3, 4, 61, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1982-04-24', NULL, '2007-12-01', NULL, NULL, '2017-06-22', '2004-06-01', 160, 54, NULL, 'Umi Rodiyah', NULL, '198204242007122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kadisimo Rt 17/07 Birit Wedi Klaten', NULL, '081288126345', NULL, '0', NULL, NULL),
(45, 1, 8, 6, 4, NULL, 4, 4, 63, 2, 7, 26, NULL, 1, 1, NULL, 1, NULL, 12, NULL, NULL, '1966-04-11', NULL, '2002-12-01', NULL, NULL, '2003-12-22', NULL, 145, 62, NULL, 'drg.Umi Sarwi  Endah', NULL, '196604112002122002', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Pemukti Baru 618 Rt13//04,Tlogo Prambanan Klaten', NULL, '081328772991', NULL, '0', NULL, NULL),
(46, 1, 8, 6, 5, NULL, 4, 4, 64, 1, 11, 26, NULL, 1, 1, NULL, 1, NULL, 12, 5, NULL, '1966-02-26', NULL, '1996-03-01', NULL, NULL, '1997-08-14', '2005-01-25', 170, 72, NULL, 'drg.Heru Maksmara, Sp.Perio', NULL, '196602261996031001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jetis Rt 4 Rw III Kadipiro Banjarsari Solo', NULL, '081329446133', NULL, '0', NULL, NULL),
(47, 1, 8, 2, 2, NULL, 4, 4, 60, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1976-03-05', NULL, '2006-04-01', NULL, NULL, '2006-09-08', '2006-09-16', 158, 57, NULL, 'Sundari', NULL, '197603052006042001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Bumirejo,gadung Rt 006/05, Bangunkerto Turi Sleman', NULL, '081328393115', NULL, '0', NULL, NULL),
(48, 1, 8, NULL, 2, 4, 4, 8, 75, 1, 12, 6, NULL, 1, 1, NULL, 1, NULL, 13, NULL, NULL, '1973-11-05', NULL, '1997-07-02', NULL, NULL, '2008-07-13', '1995-02-15', 170, 67, NULL, 'Lartono', NULL, '522791', 'Sepa PK 1997', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Griya Krapyak Permai Blok Semangka No 3', NULL, '081317078434', NULL, '0', NULL, NULL),
(49, 1, 8, NULL, 5, NULL, 1, 8, 82, 1, 7, 6, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1977-11-26', NULL, '2000-06-24', NULL, NULL, '2010-12-21', '2015-04-07', 167, 68, NULL, 'Muhammad Nanang Dhian Purnomo', NULL, '527118', 'SEPA PK TNI 2000', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Perum TNI AU Adisutjipto', NULL, '0813213168710', NULL, '0', NULL, NULL),
(50, 1, 8, NULL, 4, NULL, NULL, 7, 119, 2, 7, 8, NULL, 1, 1, NULL, 1, NULL, NULL, 6, NULL, '1980-06-26', NULL, '2006-07-15', NULL, NULL, '2007-03-05', '2005-08-30', 167, 70, NULL, 'drg.Enny Yuliati', NULL, '534546', 'SEPA PK XIII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Malangan UH 7/490 A Giwangan Umbulharjo', NULL, '08179443180', NULL, '0', NULL, NULL),
(51, 1, 7, 26, 4, NULL, 1, NULL, 123, 1, 7, 28, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1982-10-31', NULL, NULL, NULL, NULL, NULL, NULL, 175, 80, NULL, 'Mohammad Sinatria Yogasara,SE', NULL, '198210312010121003', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', NULL, NULL, '087839057083', NULL, '0', NULL, NULL),
(52, 1, 9, 28, 1, NULL, NULL, NULL, 141, 2, NULL, 11, NULL, 1, 2, NULL, 1, NULL, 3, NULL, NULL, '1972-05-18', NULL, NULL, NULL, NULL, '2005-08-30', '1991-06-05', 170, 80, NULL, 'Sri Rahayu', NULL, '515611', 'Seba PK Wara 14', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', NULL, NULL, '085883368060', NULL, '0', NULL, 'Budya Wacana I'),
(53, 3, 2, 27, 1, 1, 2, NULL, 142, 1, 13, 8, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1970-08-08', NULL, '1990-08-15', NULL, NULL, '2007-04-18', '2019-06-27', 170, 72, NULL, 'Ignatius Indarto', NULL, '514707', 'Secaba PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Sambilegi Baru Rt 5/57 Maguwoharjo Depok Sleman', NULL, '081808369017', NULL, '0', NULL, NULL),
(54, 1, 7, 26, 4, 3, 2, NULL, 150, 2, 7, 28, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1984-04-10', NULL, '2008-11-28', NULL, NULL, '2010-06-01', '2007-08-21', 155, 54, NULL, 'Budi Hastuti', NULL, '198404102008122004', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komplek TNI AU Adisutjipto Blok H No 20', NULL, '087873197037', NULL, '0', NULL, NULL),
(55, 1, 9, 22, 1, NULL, 3, 4, 153, 1, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1974-09-19', NULL, '2002-12-01', NULL, NULL, '2003-06-23', '1996-05-25', 160, 64, NULL, 'Karyanto', NULL, '197409192002121005', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Pelem Kidul Rt05/02 Baturetno Banguntapan Bantul', NULL, '08157982521', NULL, '0', NULL, NULL),
(56, 3, 8, NULL, 2, NULL, 2, 4, 156, 2, 7, 29, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '1975-05-06', NULL, '2003-12-01', NULL, NULL, '2015-09-18', '1999-10-05', 168, 68, NULL, 'Alexandra Mutiaraningati', NULL, '197505062003122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Tangkilan Sumbermulyo Bambanglipuro Bantul', NULL, '08156870760', NULL, '0', NULL, NULL),
(57, 1, 8, 26, 2, 2, 2, NULL, 163, 1, 7, 31, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1985-10-11', NULL, '2008-12-01', NULL, NULL, '2010-12-30', '2007-08-31', 163, 68, NULL, 'Purwoko Wegig Pracoyo', NULL, '198510112008121002', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Dipan Rt 03/014 Wates Kulonprogo Yka', NULL, '085739134946', NULL, '0', NULL, NULL),
(58, 1, 8, 26, 2, NULL, 1, 6, 60, 2, 7, 30, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1985-08-31', NULL, '2007-12-01', NULL, NULL, '2011-11-26', '2006-09-18', 153, 54, NULL, 'Ery Widyanti', NULL, '198508312007122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komplek TNI AU Adisutjipto Blok H 12/68 Lanud Adisutjipto', NULL, '085729007408', NULL, '0', NULL, NULL),
(59, 1, 8, 26, 2, 3, 3, NULL, 54, 1, 7, 30, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1985-03-24', NULL, '2007-12-01', NULL, NULL, NULL, '2006-08-18', 165, 62, NULL, 'Waqit Nurrohmanudin', NULL, '198503242007122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Bakalan Rt 004/030 Donoharjo Ngaglik Sleman Yogyakarta', NULL, '085797111119', NULL, '0', NULL, NULL),
(60, 1, 7, NULL, 5, NULL, 4, NULL, 168, 1, 7, 6, NULL, 1, 1, NULL, 1, NULL, 15, NULL, NULL, '1969-02-28', NULL, '1999-07-01', NULL, NULL, '2017-10-27', NULL, 160, 67, NULL, 'Suryanto, S.Sos., M.Pd.', NULL, '525831', 'SEMAPA PK ABRI', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok B 19 Komplek TNI AU Lanud Adisutjipto', NULL, '081228291122', NULL, '0', NULL, 'Pendidikan'),
(61, 1, 8, NULL, NULL, 4, 2, NULL, 169, 1, 7, 5, NULL, 1, 1, NULL, 1, NULL, 12, 7, NULL, '1963-05-12', NULL, '1991-10-15', NULL, NULL, '2007-12-14', '2005-01-25', 175, 77, NULL, 'drg.Agus Mulato,Sp.BM', NULL, '522964', 'Sepa PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Perum janti Grahayasa No 1 Banguntapan', NULL, '0818261537', NULL, '0', NULL, NULL),
(62, 1, 8, 37, 5, NULL, 4, 9, 175, 1, 14, 6, NULL, 1, 1, NULL, 2, NULL, 12, 8, NULL, '1975-06-02', NULL, '2001-06-23', NULL, NULL, '2015-11-18', '2010-11-10', 175, 75, NULL, 'drg. Purnama Jaya, Sp.PM', NULL, '528362', 'PA PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Griya Mustika Indah C-20 Colomadu Karanganyar', NULL, '081316982401', NULL, '0', NULL, NULL),
(63, 1, 8, 17, 2, 2, 4, NULL, 183, 2, 7, 31, NULL, 1, 1, NULL, NULL, NULL, 16, 9, NULL, '1986-08-24', NULL, '2008-12-01', NULL, NULL, '2010-11-26', '2007-08-30', 160, 56, NULL, 'Nurul Pramugrahini', NULL, '198608242008122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komplek TNI AU Blok M 45 Adisutjipto', NULL, '081390317466', NULL, '0', NULL, NULL),
(64, 1, 8, NULL, NULL, NULL, 4, 4, 184, 2, 15, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1986-11-02', NULL, '2008-12-01', NULL, NULL, '2016-12-20', '2008-02-13', 155, 47, NULL, 'Sri Sumarsih, AMd.Kep', NULL, '198611022008122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Dk Sungkur Rt/Rw 01/06 Semangkak, Klaten Tengah', NULL, '081321919086', NULL, '0', NULL, NULL),
(65, 1, 8, 14, 2, NULL, 4, 4, 185, 1, 15, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1987-01-06', NULL, '2009-12-01', NULL, NULL, '2017-03-01', '2007-08-29', 170, 81, NULL, 'Ragil Tri Aryanto.S.,A.Md Kep', NULL, '198701062009121004', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Dk.Sungkur,Rt/Rw 01/06,Semangkak,klaten Tengah', NULL, '081392268470', NULL, '0', NULL, NULL),
(66, 3, 8, 25, 2, NULL, 3, 4, 186, 1, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1980-03-10', NULL, '2008-12-01', NULL, NULL, '2016-12-20', '2016-12-20', 170, 87, NULL, 'Danang Suseno', NULL, '198003102008121001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Ngaranan,Rt/Rw 002/31,Sendngrejo,Minggir Sleman', NULL, '081382119776', NULL, '0', NULL, NULL),
(67, 1, 8, NULL, NULL, NULL, 2, NULL, 187, 1, 7, 8, NULL, 1, 1, NULL, 1, NULL, 12, NULL, NULL, '1985-01-17', NULL, NULL, NULL, NULL, '2013-09-01', '2007-05-01', 170, 72, NULL, 'drg.Endiyanto Wahyu N.', NULL, '541675', 'Sepa PK 2012', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', NULL, NULL, '08562250041', NULL, '0', NULL, NULL),
(68, 1, 8, 27, 2, NULL, 2, 7, 188, 1, 7, 8, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1983-03-12', NULL, '1985-03-08', NULL, NULL, '2007-11-29', '1980-08-01', 172, 84, NULL, 'F.X.Suparja', NULL, '507259', 'Secata Milsuk XVIII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Boko Permata Asri Bokoharjo Prambanan', NULL, '0817268245', NULL, '0', NULL, NULL),
(69, 1, 8, 37, 6, NULL, 4, NULL, 189, 1, 7, 4, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1964-10-20', NULL, '1991-10-01', NULL, NULL, '2007-04-01', '2004-12-01', 167, 68, NULL, 'Dr.dr.Isdwiranto Iskanto,SpBS(K).,Sp KP', NULL, '520712', 'Sepamilwa ABRI I', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok F 20 Lanud Adisutjipto', NULL, '082130234369', NULL, '0', NULL, NULL),
(70, 1, 8, 44, 4, 4, 2, NULL, 190, 2, 7, 7, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1975-04-26', NULL, NULL, NULL, NULL, NULL, '1999-04-01', 158, 52, NULL, 'drg. Hellen Amalia Kirana D.', NULL, '527176', 'PAPK TNI', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'perumnas condong catur Jl Kenanga, No 6 Depok Sleman Yga', NULL, '081328011753', NULL, '0', NULL, NULL),
(71, 1, 8, NULL, 2, NULL, 4, NULL, 156, 2, 7, 29, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1981-02-13', NULL, '2005-01-01', NULL, NULL, '2009-08-25', '2003-08-05', 157, 59, NULL, 'Lina Efendi', NULL, '198102132005012004', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Wanujoyo Lor, Srimartani, Piyungan Bantul', NULL, '081931727108', NULL, '0', NULL, NULL),
(72, 1, 8, 25, 2, NULL, 4, NULL, 54, 2, 7, 30, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1980-08-10', NULL, '2007-12-01', NULL, NULL, NULL, '2003-06-01', 158, 54, NULL, 'Suci Kusumawati,AMd.kep', NULL, '198008102007122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kompl TNI AU Blok O no 9 Adisutjipto', NULL, '087738541404', NULL, '0', NULL, NULL),
(73, 1, 8, 26, 2, 2, 1, NULL, 191, 1, 9, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1987-01-09', NULL, '2008-12-01', NULL, NULL, '2010-11-26', '2008-08-18', 164, 62, NULL, 'Damas Nurisma Aji,A.Md', NULL, '198701092008121001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Bumisegoro, RT 06/08, Kec Borobudur,Kab Magelang,Ja-teng', NULL, '085643589445', NULL, '0', NULL, NULL),
(74, 1, 8, 25, 2, NULL, 2, 4, 198, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1988-03-26', NULL, '2009-12-01', NULL, NULL, '2018-06-11', '2009-04-01', 158, 49, NULL, 'Dyah Ayu puspitasari', NULL, '198803262009122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Palemsari, Bokoharjo,Prambanan,Sleman', NULL, '085624042700', NULL, '0', NULL, NULL),
(75, 1, 8, 25, 2, 2, 4, NULL, 205, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1987-04-12', NULL, '2009-11-19', NULL, NULL, '2018-10-11', '2008-03-02', 156, 66, NULL, 'Bernadeta Pipit Apriliyani', NULL, '198704122009122004', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Bendo,Wukirsari,Imogiri, Bantul', NULL, '087886427341', NULL, '0', NULL, NULL),
(76, 1, 8, 37, 5, NULL, 1, NULL, 206, 1, 7, 5, NULL, 1, 1, NULL, 1, NULL, 2, 12, NULL, '1969-01-30', NULL, NULL, NULL, NULL, '2010-11-04', '2005-09-05', 172, 71, NULL, 'dr.Djarot Sujatmoko', NULL, '516302', 'Sepamilsuk A-V', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok F Komplek TNI AU Adisutjipto', NULL, '0818670471', NULL, '0', NULL, NULL),
(77, 1, 8, 4, 4, NULL, 2, 4, 219, 1, 7, 27, NULL, 1, 1, NULL, 7, NULL, NULL, NULL, NULL, '1983-09-20', NULL, '2007-12-01', NULL, NULL, '2008-06-21', '2006-11-06', 170, 80, NULL, 'Boby Rachmad', NULL, '198309202007121001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl.Prof Yohanes,Sagan,YK', NULL, '08127780233', NULL, '0', NULL, 'Kesmas'),
(78, NULL, 8, NULL, 2, 3, 1, 1, 228, 2, 7, 28, NULL, 1, 1, NULL, 1, NULL, 11, 4, NULL, '1976-11-05', NULL, '2003-12-01', NULL, NULL, '2009-05-27', '2003-11-01', 155, 54, NULL, 'Dwi Briyantiningsih, Am Keb', NULL, '197611052003122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Ngalian RT 004/Rw 022, Widodo Martani ,Ngemplak Sleman', NULL, '081380455462', NULL, '0', NULL, NULL),
(80, 1, 8, 25, 4, NULL, 4, NULL, 234, 2, 7, 28, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1977-03-23', NULL, '1999-03-01', NULL, NULL, NULL, '2019-05-01', 155, 60, NULL, 'Laila Nurhayati', NULL, '197703231999032004', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kaliduren I, Rt 05 Rw 18, Sumberagung, Moyudan,Sleman', NULL, '081568463595', NULL, '0', NULL, NULL),
(81, 1, 8, 25, 2, NULL, 2, NULL, NULL, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1982-03-17', NULL, '2010-10-30', NULL, NULL, '2010-10-11', NULL, 155, 55, NULL, 'Dwi Susianingsih', NULL, '198203172010122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Nglebeng RT 05 Rw  Tawanan, Banguntapan, Bantul', NULL, '082221547336', NULL, '0', NULL, NULL),
(82, 1, 8, NULL, 2, 3, 2, NULL, 54, 2, 7, 30, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1984-10-21', NULL, '2007-12-01', NULL, NULL, NULL, '2006-08-18', 155, 55, NULL, 'Eni Puji Astuti', NULL, '198410212007122001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Grumbul Gede,Rt/Rw:01/01,Selomartani,Kalasan Sleman', NULL, '081328622442', NULL, '0', NULL, NULL),
(83, 1, 8, 37, 5, 4, 2, NULL, 241, 1, 7, 5, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1966-08-29', NULL, '1989-06-29', NULL, NULL, '2008-11-20', '2003-06-03', 179, 66, NULL, 'Drs.Nur Abdul Goni,M.Si.Apt', NULL, '513108', 'Sepamilsuk ABRI A-2', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok G No 8 Lanud Adisutjipto', NULL, '081290521542', NULL, '0', NULL, NULL),
(84, 1, 6, 27, 1, NULL, 1, NULL, 262, 1, 7, 9, NULL, 1, 1, NULL, 1, NULL, 18, NULL, NULL, '1971-07-10', NULL, '1991-01-08', NULL, NULL, '2012-11-27', '1990-05-22', 169, 74, NULL, 'Agung Joko Suryono', NULL, '514877', 'Seba Milsuk', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Temanggal Rt 4 Rw II, Wijimulyo,Nanggulan,Kulonprogo', NULL, '08122721161', NULL, '0', NULL, NULL),
(85, 1, 8, 25, NULL, NULL, 1, NULL, 156, 2, 7, 29, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1977-02-12', NULL, NULL, NULL, NULL, NULL, NULL, 160, 80, NULL, 'PURYANTI', NULL, '197702121998032003', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Taraman,Sinduhardjo, Ngaglik, Sleman', NULL, '085235361236', NULL, '0', NULL, NULL),
(86, 1, 8, NULL, 2, NULL, 4, NULL, 275, 2, 7, 27, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1966-03-09', NULL, NULL, NULL, NULL, NULL, '1988-10-08', 159, 65, NULL, 'Erna Diana Sylviana', NULL, '196603092002122002', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok G 3 Lanud Adisutjipto', NULL, '081578098498', NULL, '0', NULL, NULL),
(87, 1, 8, 34, 1, NULL, 2, 2, 276, 1, 7, 14, NULL, 1, 1, NULL, 1, NULL, 7, NULL, NULL, '1975-02-11', NULL, '1994-12-26', NULL, NULL, '2007-05-09', '2000-06-17', 163, 75, NULL, 'Sariyun', NULL, '520045', 'Tamtama PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Krasaan,Jogotirto,berbah, Sleman', NULL, '081392867296', NULL, '0', NULL, NULL),
(88, 1, 8, 8, 2, NULL, 2, 4, 234, 2, 7, 28, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1973-01-18', NULL, '1998-03-01', NULL, NULL, '2006-08-11', '1995-12-13', 170, 80, NULL, 'Tri Wahyu Khasanah', NULL, '197301181998032005', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Perum Cundamani Blok A 10 kebonan Kalitirto berbah Sleman', NULL, '082225623051', NULL, '0', NULL, NULL),
(89, 1, 8, 34, 8, NULL, 1, NULL, 287, NULL, 7, 13, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1968-11-08', NULL, '1991-01-07', NULL, NULL, '2000-07-25', '1989-11-17', 164, 70, NULL, 'Suhartana', NULL, '515334', 'Secata PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jetis,Rt 02/01,Tirtomartani, kalasan', NULL, '082138028464', NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `id_jabatan` smallint(5) UNSIGNED DEFAULT NULL,
  `id_status_jabatan` smallint(5) UNSIGNED DEFAULT NULL,
  `tmt` date NOT NULL,
  `tanggal_keputusan` date NOT NULL,
  `satuan` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_keputusan` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_jabatan`
--

INSERT INTO `riwayat_jabatan` (`id`, `id_pegawai`, `id_jabatan`, `id_status_jabatan`, `tmt`, `tanggal_keputusan`, `satuan`, `no_keputusan`) VALUES
(15, 24, 29, 1, '1982-01-13', '1981-10-31', 'Lanud Hsn', 'Kep/72/T/Milwa/I'),
(16, 24, 30, 1, '1987-07-23', '1987-07-23', 'Dispulahta Mabesau', 'Kep 1170/T/ I/VII1987'),
(17, 24, 31, 1, '1993-09-13', '1993-09-13', 'Kohanudnas', 'kep/33-T/VIII/ix/1993'),
(18, 24, 32, 1, '1998-09-25', '1997-10-01', 'AAU', 'Skep/183-I/x/1997'),
(19, 25, 34, 1, '1993-09-03', '1993-08-31', 'Lnd Kalijati', 'Skep/31-TVIII/VIII1993'),
(20, 25, 35, 1, '2010-09-01', '1997-08-25', 'RSAU dr.S hardjolukito', 'Kep/25-TVIII/VIII/2010'),
(21, 29, 39, 1, '2003-04-01', '2003-04-07', 'Mabesau', '9-T III/IV/2003'),
(22, 29, 40, 1, '2006-12-06', '2006-11-27', 'Mabesau', '254/T I/XI/2006'),
(23, 29, 41, 1, '2010-03-23', '2010-03-26', 'AAU', '7-PKS/III/2003'),
(24, 29, 42, 1, '2014-09-02', '2013-09-02', 'L Adi', '22-PKS/IX/2013'),
(25, 30, 44, 1, '2001-06-27', '2001-06-20', 'Koharmatau', 'Skep /18 T VIII/VI/2001'),
(26, 30, 45, 1, '2006-07-24', '2006-07-24', 'L WMI', 'Skep/21-T VIII/VII/2006'),
(27, 30, 46, 1, '2010-11-10', '2010-11-10', 'Lanud Rai', 'Skep/12T VIII/XI/2010'),
(28, 30, 47, 1, '2013-10-03', '2013-10-10', 'Lanud Abd', 'Kep/39-TVIII/X/2003'),
(29, 30, 48, 1, '2014-07-24', '2014-07-21', 'Diskesau', 'Kep/25-T VIII/VIII/2014'),
(36, 46, 70, 1, '1996-03-01', '1996-07-31', 'LND HND', '22-SID/VIII/1996'),
(37, 46, 71, 1, '1997-10-01', '1997-09-30', 'Denma Koop II', '35-SI/IX/1997'),
(38, 46, 72, 1, '2003-03-01', '2003-03-13', 'LND SMO', '9-SVIIIA/III/2003'),
(39, 46, 73, 1, '2010-10-01', '2010-09-29', 'LND Smo', '39-S/VIIIA/X/2010'),
(40, 46, 74, 1, '2011-08-01', '2011-08-23', 'Hardjolukito', '33-SVIIIA/VIII/2011'),
(41, 48, 76, 1, '1997-07-02', '1997-07-02', 'Lanud Sam', 'Skep/III/I/VIII/1997'),
(42, 48, 77, 1, '2002-11-14', '2002-11-14', 'RSPAU Antariksa', 'Skep 43--PKS/XI/2002'),
(43, 48, 78, 1, '2008-09-04', '2008-09-04', 'RSPAU Antariksa', '20-PKS/IX/2008'),
(44, 48, 79, 1, '2010-09-29', '2010-09-29', 'RSPAU Antariksa', '29/PKS/IX/2010'),
(45, 48, 80, 1, '2012-03-22', '2012-03-26', 'RSPAU Hardjolukito', '8-PKS/III/2012'),
(46, 48, 81, 1, '2013-05-07', '2013-05-07', 'RSPAU dr. S.Hardjolukito', '14-PKS/V/2013'),
(53, 49, 89, 1, '2000-06-24', '2000-06-20', 'Lnd Kalijati', 'Skep/87-TI/VI/2000'),
(54, 49, 90, 1, '2002-03-14', '2002-03-22', 'Lnd Sdm', 'Skep 20-PKS/III/2002'),
(55, 49, 91, 1, '2003-09-25', '2006-09-27', 'Lnd Sdm', 'Skep /7-PKS III/2003'),
(56, 49, 92, 1, '2010-07-26', '2010-07-26', 'Lnd Sdm', 'Kep/18-PKS/VII/2010'),
(57, 49, 93, 1, '2011-03-22', '2011-03-22', 'LND Sdm', 'Kep/6-PKS/III'),
(58, 49, 94, 1, '2013-09-24', '2013-09-24', 'Lnd Hlm', 'Kep 26-PKS/IX/2013'),
(59, 16, 95, 1, '2002-01-23', '2002-01-23', '-', 'Skep/15-T I/I/2002'),
(60, 16, 96, 1, '2002-08-06', '2002-08-01', 'Disinfolahtaau', 'Skep/25-T VIII/VIII/2002'),
(61, 16, 97, 1, '2004-07-01', '2004-06-29', 'Lanud Wir', 'Skep/31-T VIII/VI/2004'),
(62, 16, 98, 1, '2006-09-15', '2006-09-18', 'Lanud Tpi', 'Skep/30-T VII/IX/2006'),
(63, 16, 99, 1, '2008-09-18', '2008-09-17', 'Disdikau', 'Skep/44-T VIII/IX/2008'),
(64, 16, 100, 1, '2012-11-05', '2012-11-08', 'Disdikau', 'Kep/39-T VIII/XI/2012'),
(65, 16, 101, 1, '2013-02-04', '2013-02-01', 'AAU', 'Kep/2-T VIII/II/2013'),
(66, 16, 102, 1, '2015-11-16', '2013-11-13', 'Srenaau', 'Kep/29-T VIII/IX/2015'),
(67, 16, 103, 1, '2016-10-28', '2016-10-28', 'RSPAU dr. S. Hardjolukito', 'Kep/37-T VIII/X/2016'),
(75, 17, 112, 1, '2019-06-25', '2008-01-25', 'Skadik 501', 'Kep/23-T I/I/2008'),
(76, 17, 113, 1, '2019-06-25', '2008-07-14', 'Mako Korpaskhas', 'Kep/30-T VIII/VII/2008'),
(77, 17, 114, 1, '2019-06-25', '2011-02-28', 'Mako Korpaskhas', 'Kep/T VII/II/2011'),
(78, 17, 115, 1, '2019-06-25', '2013-10-10', 'Mako Korpaskhas', 'Kep/38-T VIII/X/2013'),
(79, 17, 116, 1, '2019-06-25', '2014-11-07', 'Lanud Hasanuddin', 'Kep/40-T VIII/Xi/204'),
(80, 17, 117, 1, '2019-06-25', '2015-05-29', 'Lanud Iskandar', 'Kep/12-T VII/V/2015'),
(81, 17, 118, 1, '2019-06-25', '2016-10-28', 'RSPAU dr. S. Hardjolukito', 'Kep/37-TVIII/X/2016'),
(82, 50, 120, 1, '2007-03-05', '2007-03-01', 'LND Balikpapan', 'Skep /5-PKS/III/2007'),
(83, 50, 121, 1, '2008-03-19', '2008-03-18', 'LND Adi', 'Kep/7-PKS/III/2008'),
(84, 50, 122, 1, '2009-09-08', '2009-09-07', 'RSAU dr. S. hardjolukito', 'Kep/18-PKS/IX/2009'),
(86, 23, 27, 1, '1998-10-23', '1998-10-23', 'slogau', '27-T VIII/X/1998'),
(87, 18, 124, 1, '1996-08-09', '1996-08-06', 'Depodiklat Paskhas', '145-T I/VII/1996'),
(88, 18, 125, 1, '1997-07-01', '1997-06-24', 'Disdikau', '19-TVIII/VI/1997'),
(89, 18, 125, 1, '2002-05-31', '2002-06-25', 'Disdikau', '178-T VIII/VI/2002'),
(90, 18, 126, 1, '2013-08-16', '2013-08-26', 'Kodikau', '34-TVIII/VIII/2013'),
(91, 18, 127, 1, '2013-10-17', '2013-10-21', 'RSPAU dr. S. Hardjolukito', '41-TVIII/X/2013'),
(92, 19, 129, 1, '2014-07-27', '2013-07-21', 'RSPAU dr. S. Hardjolukito', 'Kep/25-T VIII/VIII/2014'),
(102, 22, 23, 2, '2008-08-21', '2008-08-19', 'Wingdikum', 'Kep/143-TI/VIII/2008'),
(103, 22, 139, 1, '2008-12-24', '2008-12-22', 'Lanud Adi', 'Kep/58-T/VIII/XII/2008'),
(104, 22, 140, 1, '2017-11-30', '2017-11-30', 'Diskesau', 'Kep/30-VIII/XI/2017'),
(105, 53, 143, 1, '2002-04-01', '2002-12-14', 'L HSN', 'Skep/6-VIII/XII/1992'),
(106, 53, 144, 1, '2003-04-01', '2003-08-01', 'L ADI', 'Skep 21-T/VIII/2003'),
(107, 53, 145, 1, '2007-04-07', '2007-11-29', 'LND Mus', 'Skep/240-T/XI/2007'),
(108, 53, 146, 1, '2011-04-22', '2011-02-22', 'Lnd Wsa', 'Skep /6-PKS/IV/2011'),
(109, 53, 147, 1, '2014-08-29', '2014-08-29', 'RSPAU dr. S. Hardjolukito', 'Kep 19-PKS/VIII/2014'),
(110, 13, 148, 1, '2019-06-03', '2019-06-01', 'SATU', 'NO'),
(111, 13, 149, 1, '2019-06-03', '2019-06-13', 'satu', 'no'),
(112, 54, 151, 1, '2010-07-02', '2010-08-16', 'RSPAU dr. S. Hardjolukito', 'Kep/28-SXII/VIII/2010'),
(113, 54, 152, 1, '2012-03-22', '2013-03-22', 'RSPAU dr. S. Hardjolukito', 'Kep/14-S III/III/2013'),
(114, 55, 154, 1, '2002-12-01', '2002-04-21', 'Lnd Adi', '18--S ID/IV/2003'),
(115, 55, 155, 1, '2004-04-01', '2004-03-19', 'Yanpers Adi', '09-S I/III/2004'),
(116, 55, 155, 1, '2007-04-01', '2007-03-14', 'Lanud Adi', '09-S III/III/2007'),
(117, 55, 155, 1, '2011-04-01', '2011-03-18', 'Lanud Adi', '11-S III/III/2011'),
(118, 55, 155, 1, '2015-04-01', '2015-04-02', 'RSPAU dr. S. Hardjolukito', '09-S III/IV/2015'),
(122, 56, 160, 1, '2004-06-01', '2004-05-18', 'Lnd Adi', 'Skep /19-S VIIIA /V/2004'),
(123, 56, 161, 1, '2010-09-01', '2010-10-28', 'Diskesau', 'Kep /39-SVIII/X/2010'),
(124, 56, 162, 1, '2011-12-01', '2011-12-12', 'Diskesau', 'Kep/45-SVII A/XII/2011'),
(125, 57, 164, 1, '2008-12-01', '2009-03-17', 'Lnd Adi', 'Kep/9-S ID/III/2009'),
(126, 57, 165, 1, '2010-06-01', '2010-05-17', 'RSPAU dr Hardjolukito', 'Kep/16-S1/ V/2010'),
(127, 57, 166, 1, '2013-04-01', '2013-03-22', 'RSPAU dr.S Hardjolukito', 'Kep/14-S/III/2013'),
(128, 58, 167, 2, '2009-12-01', '2008-05-05', 'Rumkit Adi', '11-S10/V/2008'),
(129, 58, 60, 1, '2010-09-01', '2010-10-29', 'RSPAU dr. S. Hardjolukito', '39-SVIIIA/X/2010'),
(130, 61, 86, 1, '1992-02-15', '1992-02-11', 'Rumkit Lnd Biak', 'Skep/02-Milwa-I/II/92'),
(131, 61, 170, 1, '1994-05-28', '1994-05-27', 'Rumkit Abd', 'Skep/07-PKS/V/1994'),
(132, 61, 170, 1, '1996-05-01', '1996-05-01', 'Rumkit Adi', 'Skep/07-PKS/IV/1996'),
(133, 61, 171, 1, '1999-01-12', '1999-01-12', 'FKG UGN Yka', 'B/23/I/1999'),
(134, 61, 172, 1, '2005-03-24', '2005-03-24', 'Rumkit Adi', 'Skep/07-PKS/III/2005'),
(135, 61, 173, 1, '2010-09-23', '2010-09-23', 'RSPAU dr.Hardjo', 'Kep/29-PKS/IX/2010'),
(136, 61, 174, 1, '2013-03-20', '2013-03-20', 'RSPAU dr.Hardjo', 'Kep/7-PKS/III/2013'),
(137, 61, 169, 1, '2015-03-25', '2015-03-22', 'RSPAU dr.Hardjo', 'Kep/8-PKS/III/2015'),
(138, 62, 176, 1, '2001-11-01', '2011-11-07', 'LND RNI', 'Skep/32-PKS/XI/2001'),
(139, 62, 177, 1, '2002-05-20', '2002-05-24', 'LND RNI', 'Kep /27-PKS/V/2002'),
(140, 62, 178, 1, '2004-08-01', '2004-07-01', 'LND ABD', 'Kep/24-PKS/VII/2004'),
(141, 62, 179, 2, '2007-11-22', '2007-11-21', 'LND MUL', 'Kep/28-PKS/XI/2007'),
(142, 62, 180, 1, '2011-03-22', '2011-03-22', 'Lakesgilut', 'Kep/6-PKS/III/2011'),
(143, 62, 181, 1, '2014-08-29', '2014-08-29', 'Lakesgilut', 'Kep /19-PKS/VIII/2014'),
(144, 62, 182, 1, '2015-12-31', '2015-09-22', 'RSPAU dr. S. Hardjolukito', 'Kep/23-PKS/IX/2015'),
(145, 20, 192, 1, '2003-12-01', '2004-12-01', 'DISADAAU', 'Kep/12-SID/ IV/2004'),
(146, 20, 193, 1, '2013-02-20', '2013-02-20', 'Koopsau 1', 'Kep/8-SVIII A/II/2013'),
(147, 20, 194, 2, '2015-09-30', '2015-09-28', 'Koopsau 1', 'Kep/30-S VIII A/IX/2015'),
(148, 20, 195, 1, '2019-03-29', '2019-03-20', 'Diskesau', 'Kep/8-S VIII A/III/2019'),
(149, 36, 167, 1, '2007-12-01', '2008-05-05', 'RSPAU dr. S. Hardjolukito', 'Kep/11-S ID/V/2008'),
(150, 36, 196, 1, '2009-12-01', '2009-04-30', 'RSPAU dr. S. Hardjolukito', 'Kep/17-S 1 /iv/2009'),
(151, 36, 197, 1, '2012-04-01', '2012-04-28', 'RSPAU dr. S. Hardjolukito', 'Kep/14-S III/III/2012'),
(156, 74, 202, 1, '2009-12-01', '2010-03-23', 'Diskesau', 'Kep/8-S ID/III/2010'),
(157, 74, 203, 1, '2011-07-01', '2011-06-23', 'Diskesau', 'Kep/24-51/VI/2011'),
(158, 74, 203, 1, '2012-03-01', '2012-03-01', 'RSPAU dr. S. Hardjolukito', 'Kep/II-S VIII A/III/2012'),
(159, 74, 204, 1, '2014-04-01', '2014-03-26', 'RSPAU dr. S. Hardjolukito', 'Kep/11-S III/2014'),
(160, 75, 151, 1, '2010-03-23', '2010-03-23', 'Diskesau', 'Kep/8-S ID/III/2010'),
(161, 76, 207, 1, '1996-02-01', '1996-01-25', 'Diskesau', 'Kep/02-PKS/I/1996'),
(162, 76, 208, 1, '1998-06-15', '1998-06-22', 'L Iwj', 'Kep/15-PKS/VI/1998'),
(163, 76, 209, 1, '2000-06-24', '2000-06-29', 'Diskesau', 'Kep/20-PKS/VI/2000'),
(164, 76, 210, 1, '2001-06-01', '2001-06-06', 'Diskesau', 'Kep/16-PKS/VI/2003'),
(165, 76, 211, 1, '2005-11-17', '2005-11-17', 'Diskesau', 'Kep/25-PKS/XI/2005'),
(166, 76, 212, 1, '2006-07-06', '2006-07-07', 'Denma Mabesau', 'Kep/17-PKSVII/2006'),
(167, 76, 213, 1, '2011-08-22', '2011-08-22', 'Diskesau', 'Kep/17-PKS/VIII/2011'),
(168, 76, 214, 1, '2013-07-31', '2013-07-29', 'Lakespra Saryanto', 'Kep/21-PKS/VII/2003'),
(169, 76, 215, 1, '2013-11-27', '2013-11-27', 'Lakespra Saryanto', 'Kep/30-PKS/XI/2013'),
(170, 76, 216, 1, '2014-03-17', '2014-03-17', 'Kodikau', 'Kep/5-PKS/III/2014'),
(171, 76, 217, 1, '2014-08-29', '2014-08-29', 'Diskesau', 'Kep/19-pks/VIII/2014'),
(172, 76, 218, 1, '2016-03-24', '2016-03-24', 'Diskesau', 'Kep/5-PKS/III/2016'),
(173, 76, 206, 1, '2018-05-11', '2018-05-11', 'Diskesau', 'Kep/17-PKS/V/2018'),
(178, 37, 224, 1, '2009-03-05', '2009-03-04', 'Lnd Spo', 'Kep/2-PKS/III'),
(179, 37, 225, 1, '2011-08-22', '2011-08-19', 'Lnd Abd', 'Kep/16-PKS/VIII/2011'),
(180, 37, 226, 1, '2014-08-29', '2014-08-25', 'Lnd Abd', 'Kep/18-PKS/VIII/2014'),
(181, 37, 227, 1, '2016-03-24', '2016-03-24', 'RSPAU dr. S. Hardjolukito', 'Kep/4-PKS/III/2016'),
(182, 78, 229, 1, '2005-04-01', '2005-03-30', 'Diskesau', 'Kep/6- S I/III/2005'),
(183, 78, 230, 1, '2008-04-01', '2008-03-19', 'Diskesau', 'Kep/7-S III/III/ 2008'),
(184, 78, 231, 1, '2011-10-01', '2011-09-15', 'Diskesau', 'Kep/36-S III/IX/2011'),
(185, 78, 232, 1, '2015-04-01', '2015-04-02', 'Diskesau', 'Kep/9-SIII/IV/2015'),
(186, 78, 233, 1, '2018-08-10', '2018-08-08', 'Diskesau', 'Kep/29-S VIIIA/VIII/2018'),
(193, 80, 160, 1, '1999-03-01', '1999-05-12', 'LND Adi', 'Kep/16-S ID/V/1999'),
(194, 80, 236, 1, '2000-09-01', '2000-08-30', 'LND Adi', 'Kep/29-S I/VIII/2000'),
(195, 80, 237, 1, '2001-04-01', '2001-03-01', 'Lnd Adi', '103/II/01/Kep/IV/2001'),
(196, 80, 238, 1, '2005-04-01', '2005-03-17', 'Lnd Adi', 'Kep/5-S III/2005'),
(197, 80, 239, 1, '2012-10-01', '2012-09-17', 'RSPAU dr. S. Hardjolukito', 'Kep/33-S III/IX/2012'),
(198, 80, 240, 1, '2016-04-01', '2016-03-18', 'RSPAU dr. S. Hardjolukito', 'Kep/13-S III/2016'),
(209, 83, 252, 1, '1989-06-29', '1989-06-28', 'Lnd MUL', '38/ABRI/1989'),
(210, 83, 253, 1, '1993-01-01', '1994-05-27', 'Dirkesau', '07/PKS/V/1994'),
(211, 83, 254, 1, '1994-05-28', '1993-01-11', 'Rumkit Abd', '02/PKS/VI/1993'),
(212, 83, 255, 1, '1999-09-01', '1999-09-09', 'Diskesau', '27/PKS/IX/1999'),
(213, 83, 256, 1, '2002-04-01', '2002-04-17', 'Seslafiau', '23-PKSIV/2002'),
(214, 83, 257, 1, '2003-08-01', '2003-08-08', 'RSAU Esnawan', '14-PKS/VIII/2003'),
(215, 83, 258, 1, '2010-05-06', '2010-05-10', 'Diskesau', '11-PKS/V/2012'),
(216, 83, 259, 1, '2012-03-22', '2012-03-26', 'Diskesau', '8-PKS/III/2012'),
(217, 83, 260, 1, '2014-08-29', '2014-08-29', 'Diskesau', '19-PKS/VIII/2014'),
(218, 83, 261, 1, '2017-07-01', '2017-05-05', 'RSPAU dr. S. Hardjolukito', 'Kep/123-T IIIB/V/2017'),
(219, 84, 263, 2, '1991-01-08', '1991-01-07', 'L Slm', 'Kep/01-TI/I/1991'),
(220, 84, 264, 1, '1992-03-27', '1992-03-27', 'L Adi', 'Kep/06-TVIII/III/1992'),
(221, 84, 265, 1, '1993-07-23', '1993-07-23', 'L Adi', 'Sprint/188/VIII/1993'),
(222, 84, 266, 1, '2012-11-27', '2012-11-20', 'Depo 30', 'Kep/255-TI/XI/2012'),
(223, 84, 267, 1, '2014-10-28', '2014-08-29', 'L Bny', 'Kep/19-PKS/VIII/2014'),
(224, 84, 268, 1, '2017-03-27', '2017-03-27', 'Diskesau', 'Kep/6 PKS/III/2017'),
(228, 85, 272, 1, '2011-04-01', '2011-04-07', 'Lnd DMN', 'kep/15-5 VIII A/IV/2011'),
(229, 85, 273, 1, '2010-03-01', '2010-03-19', 'Diskesau', 'Kep/31-5 VIII A/X/2013'),
(230, 85, 274, 1, '2015-03-01', '2014-03-26', 'Diskesau', 'kep/11-5 III/III/2014'),
(235, 87, 281, 1, '1995-12-02', '1995-11-22', 'Rumkit Slm', 'Kep/24-T VIII/XI/1995'),
(236, 87, 282, 1, '2000-08-04', '2000-06-26', 'Rumkit Manuhua', 'Kep/21-VIII/VI'),
(237, 87, 283, 1, '2005-12-16', '2005-11-21', 'Rmkit Adi', 'Kep/31-TVIII/XII 2005'),
(238, 87, 284, 1, '2017-10-01', '2017-09-19', 'Diskesau', 'Kep/282 TIII/IX2017'),
(239, 88, 285, 1, '1998-03-01', '1998-03-01', 'Lnd Slm', 'Skep /19-SIB/VI/1998'),
(240, 88, 286, 1, '2009-09-30', '2009-09-30', 'Diskesau', 'Kep/25-5 VIII A/IX2009 '),
(241, 89, 288, 1, '1991-01-02', '1991-01-01', 'Lnd Slm', 'Kep/02-II/I/1991'),
(242, 89, 289, 1, '1994-05-25', '1994-05-27', 'Paskhas', 'Kep/ 20-IV/V/1993'),
(243, 89, 290, 1, '1998-10-01', '1998-10-01', 'L Rsn', 'Kep/21-V/1998'),
(244, 89, 291, 1, '2017-11-30', '2017-11-30', 'Diskesau', 'Kep/30-TVIII/I/2017'),
(248, 86, 294, 1, '1989-08-07', '1989-08-07', 'RSU Purwodadi', '1826/kanwil/pers.C/SK1989'),
(249, 86, 295, 2, '1996-07-17', '1996-07-17', 'RSAU Antariksa Hlm', 'Kep/04 05.4.219 553'),
(250, 86, 160, 1, '2004-04-01', '2004-04-14', 'Lnd Adi', 'Kep/11-S VIIIA/IV/2004');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pangkat`
--

CREATE TABLE `riwayat_pangkat` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `tmt` date DEFAULT NULL,
  `id_pangkat` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pangkat`
--

INSERT INTO `riwayat_pangkat` (`id`, `id_pegawai`, `tmt`, `id_pangkat`) VALUES
(10, 19, '2013-11-13', 22),
(11, 19, '2017-04-01', 21),
(13, 21, '2015-10-09', 16),
(14, 22, '2008-08-21', 22),
(15, 22, '2011-10-01', 21),
(16, 22, '2015-10-01', 20),
(18, 25, '1993-03-20', 16),
(19, 25, '1997-10-01', 15),
(20, 25, '2001-10-01', 14),
(21, 25, '2006-10-01', 13),
(22, 25, '2011-10-01', 12),
(23, 25, '2015-10-01', 11),
(24, 30, '2001-01-19', 16),
(25, 30, '2005-04-01', 15),
(26, 30, '2010-04-01', 14),
(27, 30, '2015-04-01', 13),
(28, 13, '2019-06-01', 1),
(29, 46, '1997-10-01', 30),
(30, 46, '1999-04-01', 29),
(31, 46, '2005-04-01', 28),
(32, 46, '2009-04-01', 27),
(33, 46, '2012-04-01', 26),
(34, 48, '1997-07-02', 10),
(35, 48, '2002-04-01', 9),
(36, 48, '2019-06-24', 8),
(37, 48, '2009-04-01', 7),
(38, 48, '2019-04-01', 6),
(39, 49, '2000-06-24', 10),
(40, 49, '2004-10-01', 9),
(41, 49, '2007-10-01', 8),
(42, 49, '2011-10-01', 7),
(51, 16, '2002-01-31', 16),
(52, 16, '2007-04-01', 15),
(53, 16, '2012-04-01', 14),
(54, 16, '2017-04-01', 13),
(55, 17, '2008-02-02', 16),
(56, 17, '2013-04-01', 15),
(64, 23, '1998-01-09', 16),
(65, 51, '2010-12-01', 30),
(66, 51, '2015-04-01', 29),
(67, 51, '2019-04-01', 28),
(68, 18, '1996-08-09', 22),
(69, 18, '1999-10-01', 21),
(70, 18, '2002-10-01', 20),
(71, 18, '2006-10-01', 19),
(72, 18, '2007-05-09', 16),
(73, 18, '2012-10-01', 15),
(74, 18, '2017-10-01', 14),
(75, 52, '1991-10-21', 16),
(76, 52, '1996-04-01', 15),
(77, 52, '2000-10-01', 14),
(78, 52, '2019-06-27', 13),
(79, 52, '2009-10-01', 12),
(80, 52, '2013-10-01', 11),
(81, 53, '1991-01-08', 16),
(82, 53, '1995-04-01', 15),
(83, 53, '1999-04-01', 14),
(84, 53, '2003-04-01', 13),
(85, 53, '2007-12-07', 10),
(86, 54, '2010-11-01', 30),
(87, 54, '2013-04-01', 29),
(88, 54, '2017-04-01', 28),
(89, 55, '2004-04-01', 34),
(90, 55, '2007-04-01', 33),
(91, 55, '2011-04-01', 32),
(92, 55, '2015-04-01', 31),
(93, 56, '2005-04-01', 32),
(94, 56, '2008-04-01', 31),
(95, 56, '2012-04-01', 30),
(96, 56, '2016-04-01', 29),
(97, 57, '2010-06-01', 32),
(98, 57, '2013-04-01', 31),
(99, 58, '2009-06-01', 32),
(100, 58, '2012-04-01', 31),
(101, 59, '2009-06-01', 32),
(102, 59, '2012-04-01', 31),
(103, 59, '2018-04-01', 30),
(104, 61, '1992-02-15', 9),
(105, 61, '1998-04-01', 8),
(106, 61, '2005-10-01', 7),
(107, 61, '2010-04-01', 6),
(108, 61, '2015-10-01', 5),
(109, 63, '2010-06-01', 32),
(110, 63, '2013-04-01', 31),
(111, 64, '2010-06-01', 32),
(112, 64, '2013-04-01', 31),
(113, 65, '2011-07-01', 32),
(114, 65, '2014-04-01', 31),
(115, 69, '1991-10-01', 9),
(116, 69, '1997-10-01', 8),
(117, 69, '2004-04-01', 7),
(118, 69, '2008-04-01', 6),
(119, 69, '2012-04-01', 5),
(120, 69, '2017-12-11', 4),
(121, 70, '2000-06-24', 10),
(122, 70, '2002-10-01', 9),
(123, 70, '2006-10-01', 8),
(124, 70, '2013-10-01', 7),
(125, 20, '2003-12-01', 34),
(126, 20, '2008-04-01', 33),
(127, 20, '2012-04-01', 32),
(128, 20, '2016-04-01', 31),
(129, 36, '2009-06-01', 32),
(130, 36, '2012-04-01', 31),
(131, 36, '2018-10-01', 30),
(132, 74, '2011-07-01', 32),
(133, 74, '2014-04-01', 31),
(136, 75, '2011-06-23', 32),
(137, 75, '2014-03-26', 31),
(144, 76, '1992-08-21', 10),
(145, 76, '1995-04-01', 9),
(146, 76, '2000-04-01', 8),
(147, 76, '2007-04-01', 7),
(148, 76, '2011-04-01', 6),
(149, 76, '2016-04-01', 5),
(154, 77, '2009-04-30', 30),
(155, 77, '2012-04-01', 29),
(156, 77, '2015-10-01', 28),
(157, 77, '2019-04-01', 27),
(161, 37, '2009-07-01', 10),
(162, 37, '2011-10-01', 9),
(163, 37, '2015-05-01', 8),
(169, 78, '2005-04-01', 32),
(170, 78, '2008-04-01', 31),
(171, 78, '2011-10-01', 30),
(172, 78, '2015-04-01', 29),
(173, 78, '2018-08-01', 28),
(180, 80, '2000-09-01', 33),
(181, 80, '2001-04-01', 32),
(182, 80, '2005-04-01', 31),
(183, 80, '2009-04-01', 30),
(184, 80, '2012-10-01', 29),
(185, 80, '2016-04-01', 28),
(186, 81, '2012-05-15', 32),
(187, 81, '2015-04-02', 31),
(188, 83, '1989-06-29', 10),
(189, 83, '1993-04-01', 9),
(190, 83, '1998-04-01', 8),
(191, 83, '2004-10-01', 7),
(192, 83, '2009-04-01', 6),
(193, 83, '2015-04-01', 5),
(194, 84, '1991-01-08', 16),
(195, 84, '1995-04-01', 15),
(196, 84, '1999-04-01', 14),
(197, 84, '2003-04-01', 13),
(198, 84, '2008-04-01', 12),
(199, 84, '2012-04-01', 11),
(200, 84, '2012-11-20', 10),
(201, 84, '2016-04-01', 9),
(214, 85, '1999-09-01', 34),
(215, 85, '2002-04-01', 33),
(216, 85, '2006-04-01', 32),
(217, 85, '2010-04-01', 31),
(218, 85, '2014-04-01', 30),
(219, 85, '2017-10-01', 29),
(227, 86, '1990-11-01', 33),
(228, 86, '1992-04-01', 32),
(229, 86, '1996-04-01', 31),
(230, 86, '2000-04-01', 30),
(231, 86, '2004-04-01', 29),
(232, 86, '2008-04-01', 28),
(233, 86, '2012-04-01', 27),
(234, 87, '1995-05-30', 22),
(235, 87, '1998-10-01', 21),
(236, 87, '2001-10-01', 20),
(237, 87, '2005-10-01', 19),
(238, 87, '2007-05-09', 16),
(239, 87, '2012-10-01', 15),
(240, 87, '2017-10-01', 14),
(241, 88, '1999-03-01', 33),
(242, 88, '2001-04-01', 32),
(243, 88, '2005-04-01', 31),
(244, 88, '2009-04-01', 30),
(245, 88, '2012-10-01', 29),
(246, 88, '2016-04-01', 28),
(259, 89, '1991-01-09', 22),
(260, 89, '1994-04-01', 21),
(261, 89, '1997-04-01', 20),
(262, 89, '2000-07-25', 16),
(263, 89, '2004-10-01', 15),
(264, 89, '2009-10-01', 14),
(265, 89, '2014-04-01', 13);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pendidikan_militer`
--

CREATE TABLE `riwayat_pendidikan_militer` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `tahun_keluar` year(4) DEFAULT NULL,
  `angkatan` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `sekolah` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pendidikan_militer`
--

INSERT INTO `riwayat_pendidikan_militer` (`id`, `id_pegawai`, `tahun_masuk`, `tahun_keluar`, `angkatan`, `tmt`, `sekolah`) VALUES
(11, 20, 2010, 2008, '24', '2014-10-08', 'DIKLAT KEJURUAN PNS GOL II ADMINPERS'),
(12, 21, 2015, 2015, '40', '2015-10-09', 'Semaba PK Wara '),
(13, 21, 2015, 2016, '11', '2016-05-10', 'Sejurba Kes'),
(14, 22, 2008, 2008, '56', '2008-08-21', 'Semata PK '),
(15, 22, 2008, 2008, '14', '2008-12-24', 'Sejursarta Adminpers'),
(16, 22, 2015, 2015, '29', '2015-03-13', 'Susjurlata Adminpers'),
(17, 25, 1993, 1993, 'V', '1993-09-03', 'Sejurba Adm Pers'),
(18, 29, 1991, 1992, 'XII', '1992-06-12', 'SECABA PK'),
(19, 29, 1992, 1992, 'III', '1992-12-11', 'SEJURBA ADMINKU'),
(20, 29, 1995, 1995, 'XXII', '1995-08-07', 'SUSJUR BABUK DEPHAN'),
(21, 29, 2003, 2003, 'IV', '2003-03-03', 'SUSBAMENJUR ADMKU'),
(22, 29, 2006, 2006, 'IX', '2006-12-08', 'SETUKPA'),
(23, 30, 2000, 2001, '24', '2001-01-19', 'SEBA PK Wara'),
(24, 30, 2001, 2001, '14', '2001-06-27', 'Sejurba Adminku'),
(25, 30, 2004, 2004, '1', '2004-07-02', 'Siskomlapku Kemhan'),
(26, 30, 2004, 2004, '37', '2004-11-01', 'Susbabuk Kemhan'),
(29, 46, 1997, 1997, 'III', '1997-08-14', 'Latsarmil'),
(33, 48, 1976, 1997, 'IV', '1997-07-02', 'Sema PK'),
(34, 48, 2008, 2008, 'LXXXII', '2008-06-13', 'Sekkau'),
(35, 48, 1997, 1997, 'I', '1997-09-03', 'Susarjemen'),
(36, 49, 1999, 2000, 'VII', '2000-06-24', 'Semapa PK TNI'),
(37, 49, 2000, 2000, 'IX', '2000-09-08', 'Sussarjemen PAPK'),
(38, 49, 2001, 2001, 'II', '2001-01-19', 'Sesarcab Pa Kesehatan'),
(39, 49, 2010, 2010, 'LXXXVIII', '2010-12-17', 'Sekkau'),
(40, 49, 2012, 2012, 'VII', '2010-06-15', 'Suspa Binteman'),
(44, 16, 2001, 2002, '25', '2002-01-31', 'Semaba PK Wara'),
(45, 16, 2002, 2002, '17', '2012-01-23', 'Sejurba PDE'),
(46, 16, 2019, 2019, '21', '2019-03-28', 'Susbamenjur PDE'),
(47, 17, 2007, 2008, '31', '2008-02-02', 'Semaba PK Wara'),
(48, 17, 2008, 2008, '24', '2008-07-09', 'Sejurba PDE'),
(49, 17, 2009, 2009, '3', '2019-06-25', 'Sus Teknisi Komputer'),
(50, 17, 2009, 2009, '166', '2009-12-22', 'Susparadasar'),
(52, 50, 2006, 2006, 'XIII', '2006-07-15', 'DIKMA PA PK TNI '),
(53, 50, 2006, 2006, 'IX', '2006-10-30', 'KIBI AAU'),
(54, 50, 2006, 2006, '15', '2006-12-04', 'Sussarjemen PAPK'),
(55, 50, 2007, 2007, '8', '2007-03-05', 'Sesarcab Kes'),
(64, 18, 1996, 1996, '33', '1996-08-09', 'Secata'),
(65, 18, 1996, 1996, '-', '2019-06-25', 'Sejursarta Paskhas'),
(66, 18, 2002, 2002, '3', '2002-08-07', 'Sejursarta Adm'),
(67, 18, 2004, 2004, '8', '2004-10-10', 'Susjurlata Adm'),
(68, 18, 2007, 2007, '13', '2007-05-09', 'Setukba '),
(69, 19, 2013, 2013, '65', '2013-11-13', 'Semata PK'),
(70, 19, 2013, 2014, '18', '2014-03-20', 'Sejusarta Adm'),
(77, 53, 1991, 1991, 'XI', '1990-08-15', 'Secaba'),
(78, 53, 1991, 1991, 'XV', '1991-03-10', 'SBIT'),
(79, 53, 1992, 1992, 'XIII', '1992-03-01', 'BMSC'),
(80, 53, 1992, 1992, 'XII', '1992-11-05', 'ACSMBSC'),
(81, 53, 2003, 2003, 'xv', '2003-08-07', 'Susbamenjur Tek'),
(82, 53, 2007, 2007, 'X', '2007-12-06', 'Setukpa'),
(83, 13, 2012, 2013, 'AU', '2012-01-01', 'TNI AU'),
(84, 54, 2009, 2009, 'X', '2009-05-20', 'Diklatsarmil'),
(85, 54, 2009, 2009, 'XIII', '2009-07-17', 'Diklatprajab'),
(86, 54, 2011, 2011, 'V', '2011-11-11', 'Diklatsarjemen'),
(87, 55, 2003, 2003, 'IX', '2003-06-23', 'Diklat Prajabatan'),
(88, 56, 2004, 2004, '9', '2004-06-16', 'Prajab'),
(89, 56, 2010, 2010, '6', '2010-07-14', 'Susjur'),
(90, 56, 2015, 2015, '2', '2015-09-18', 'Alih Golongan'),
(94, 57, 2009, 2009, 'IV', '2009-08-11', 'Latsarmil'),
(95, 57, 2009, 2009, 'XXIII', '2009-08-28', 'Latprajab'),
(96, 57, 2010, 2010, 'IV', '2010-03-02', 'Latsarjemen'),
(97, 58, 2009, 2007, '3', '2008-08-07', 'Latsarmil '),
(98, 58, 2002, 2022, '22', '2008-08-21', 'Diklat Prajab'),
(99, 58, 2028, 2026, '4', '2010-11-26', 'Diklatsarjemen'),
(100, 58, 2004, 2031, 'XI', '2014-10-31', 'Diklatjurkes'),
(101, 59, 2008, 2008, 'III', '2008-07-09', 'Latsarmil CPNS Gol II'),
(102, 59, 2008, 2008, 'XXII', '2008-08-11', 'Diklat Prajab Gol II'),
(103, 59, 2010, 2010, 'IV', '2010-10-26', 'Latsarjemen Pns Gol II'),
(104, 59, 2015, 2015, 'XII', '2015-06-12', 'Diklatjur Pns Gol II Kes'),
(105, 59, 2017, 2017, 'VI', '2018-03-21', 'Dik Algol Pns Gol II'),
(106, 61, 1991, 1992, '1', '1992-02-12', 'Sarmil/wamil'),
(107, 61, 1992, 1992, '9', '1992-04-18', 'Susormat'),
(108, 61, 1995, 1995, '13', '1995-04-13', 'Suslihpa'),
(109, 61, 2007, 2007, '82', '2007-12-14', 'Sekkau'),
(110, 61, 2009, 2009, '4', '2009-10-29', 'Suskesbangan'),
(111, 62, 2000, 2001, '8', '2001-06-23', 'Semapa Pk'),
(112, 62, 2001, 2001, '10', '2001-09-07', 'Sussarjemen'),
(113, 62, 2001, 2001, '3', '2001-11-08', 'Sesarcab Kes'),
(114, 62, 2002, 2003, '1', '2003-01-20', 'Susdokgibangan'),
(115, 62, 2005, 2005, '38', '2005-08-18', 'Kibi Abd Saleh'),
(116, 62, 2011, 2011, '90', '2011-12-16', 'Sekkau'),
(117, 62, 2015, 2015, '52', '2015-11-18', 'Seskoau'),
(118, 64, 2009, 2009, 'IV', '2009-08-11', 'Diklatsarmil Gol II'),
(119, 64, 2009, 2009, 'XXIII', '2009-08-28', 'Diklatprajab Gol II'),
(120, 64, 2010, 2010, 'IV', '2010-12-30', 'DIKLATSARJEMEN'),
(121, 64, 2016, 2016, 'XVI', '2016-12-20', 'Diklatjur PNS Gol II Kes'),
(122, 65, 2010, 2010, 'V', '2010-06-01', 'Diklat Sarmil Gol II'),
(123, 65, 2010, 2010, 'XXIV', '2010-06-14', 'Diklat Prajab Gol II'),
(124, 65, 2011, 2011, 'V', '2011-11-11', 'Diklat Sarjemen'),
(125, 65, 2017, 2017, 'XVII', '2017-03-01', 'Diklatjur PNS Gol II Kes'),
(126, 68, 1984, 1985, 'XVIII', '1985-03-09', 'Setamilsuk'),
(127, 68, 1985, 1988, 'IV', '1988-07-09', 'SPK AU'),
(128, 68, 1988, 1988, 'XXXI', '1988-09-08', 'Secabasus'),
(129, 68, 1994, 1995, 'VII', '1995-03-15', 'Suwatud'),
(130, 68, 1997, 1998, 'VII', '1998-01-10', 'Susbamenjurkes'),
(131, 68, 2007, 2007, 'X', '2007-11-29', 'Setukpa'),
(132, 69, 1992, 1992, 'I', '1992-02-15', 'Sepa Milwa Gel 1'),
(133, 69, 1992, 1992, 'IX', '1992-04-18', 'Kursus Orientasi Matra'),
(134, 69, 1992, 1992, 'X', '1992-07-07', 'Dik Terbang Layang'),
(135, 69, 1992, 1992, 'XIII', '1995-04-03', 'Sekolah Peralihan Pa'),
(136, 69, 2004, 2004, 'LXXVI', '2004-12-17', 'Sekkau'),
(137, 69, 2007, 2007, 'XLIV', '2007-11-22', 'Seskoau'),
(142, 70, 1999, 2000, 'VII', '2000-06-24', 'Sepa PK TNI'),
(143, 70, 2000, 2000, 'IX', '2000-08-31', 'Susarjemen'),
(144, 70, 2000, 2001, 'II', '2001-01-19', 'Sarcab Kes'),
(145, 70, 2013, 2013, 'VI', '2016-08-02', 'Suspajemen'),
(146, 36, 2008, 2008, 'III', '2008-08-07', 'latsarmil'),
(147, 36, 2008, 2008, 'XXII', '2008-08-21', 'Latprajab'),
(148, 36, 2009, 2009, 'III', '2009-11-05', 'Latsarjemen'),
(149, 36, 2014, 2014, 'XI', '2014-12-01', 'Diklatjur Kes'),
(150, 74, 2010, 2010, 'V', '2010-06-01', 'Diklatsarmil'),
(151, 74, 2010, 2010, 'XIII', '2010-06-14', 'Diklatprajab'),
(152, 74, 2010, 2010, 'IV', '2010-12-30', 'Diklatsarjemen'),
(153, 74, 2018, 2018, 'XIX', '2018-06-11', 'Diklatsusjurkes'),
(157, 75, 2010, 2010, 'V', '2010-05-03', 'Latsarmil'),
(158, 75, 2010, 2010, 'V', '2010-06-03', 'Latprajab'),
(159, 75, 2011, 2011, 'V', '2011-11-14', 'Latsarjemen'),
(166, 76, 1992, 1992, 'V', '1992-08-21', 'Sepamilsuk'),
(167, 76, 1992, 1992, 'XI', '1992-12-02', 'Susormat'),
(168, 76, 1997, 1998, 'XVI', '1998-04-21', 'Sekespra'),
(169, 76, 2000, 2000, 'XXXIII', '2000-06-13', 'Kibi'),
(170, 76, 2006, 2006, '80', '2006-12-15', 'Sekkau'),
(171, 76, 2010, 2010, 'XLVII', '2010-11-04', 'Seskoau'),
(172, 77, 2008, 2008, 'IX', '2008-06-01', 'Latsarmil'),
(173, 77, 2008, 2008, 'II', '2008-10-08', 'Latprajab G III'),
(177, 37, 2008, 2008, 'XV', '2008-07-01', 'Sepa PK TNI'),
(178, 37, 2008, 2008, 'XVII', '2008-11-05', 'Sussarjemen'),
(179, 37, 2009, 2009, 'X', '2009-03-05', 'Sesarcab'),
(180, 78, 2004, 2004, '1', '2004-06-16', 'Diklat Prajab Gol II'),
(181, 78, 2009, 2009, '11', '2009-08-25', 'Susjur PNS Gol II Kes'),
(182, 80, 1999, 1999, 'I', '1999-11-30', 'Diklat Prajab'),
(183, 80, 2006, 2006, 'II', '2006-08-11', 'Susjur PNS Gol II Kes'),
(184, 82, 2008, 2008, 'III', '2008-07-09', 'Latsarmil'),
(185, 82, 2008, 2008, 'XXII', '2008-08-11', 'Diklat Prajab II'),
(186, 82, 2009, 2009, 'III', '2009-11-11', 'Latsarjemen Gol II'),
(193, 83, 1989, 1989, '2', '1989-06-20', 'Sepamilsuk'),
(194, 83, 2004, 2004, '75', '2004-06-18', 'Sekkau'),
(195, 83, 2008, 2008, '45', '2008-11-20', 'Seskoau'),
(196, 84, 1990, 1991, '11', '1991-01-08', 'Sebamilsuk'),
(197, 84, 1991, 1991, '15', '1991-08-31', 'SBIT'),
(198, 84, 1991, 1992, '11', '1992-03-14', 'SOBSC'),
(199, 84, 2007, 2007, '20', '2007-05-23', 'Susbamenjur kal'),
(200, 84, 2012, 2012, '15', '2014-11-20', 'Setukpa'),
(201, 87, 1995, 1995, 'XXX', '1995-05-30', 'Secata PK'),
(202, 87, 1995, 1995, 'I', '1995-12-15', 'Sejursarta'),
(203, 87, 1997, 2000, 'XII', '2000-07-01', 'SPK TNI AU'),
(204, 87, 2006, 2006, 'III', '2006-12-01', 'Susjurlata'),
(205, 87, 2007, 2007, 'XIII', '2007-05-09', 'Setukba'),
(206, 87, 2011, 2011, 'X', '2011-10-04', 'Suswatud'),
(207, 87, 2012, 2012, 'X', '2012-09-29', 'Operator Komp'),
(208, 88, 1998, 1998, 'XIII', '1998-11-30', 'Latprajab'),
(209, 88, 2006, 2006, 'VII', '2006-08-11', 'Susjurkes'),
(215, 89, 1990, 1991, 'XXVI', '1991-01-09', 'Secata'),
(216, 89, 1994, 1997, 'IX', '1997-07-10', 'SPK AU'),
(217, 89, 1991, 1991, 'CXI', '1991-02-19', 'Spara Dsr'),
(218, 89, 1992, 1992, 'III', '1992-02-21', 'Komando'),
(219, 89, 2000, 2000, 'III', '2000-07-25', 'Setukba');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pendidikan_umum`
--

CREATE TABLE `riwayat_pendidikan_umum` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `tahun_keluar` year(4) DEFAULT NULL,
  `lemdik` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolah` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pendidikan_umum`
--

INSERT INTO `riwayat_pendidikan_umum` (`id`, `id_pegawai`, `tahun_masuk`, `tahun_keluar`, `lemdik`, `sekolah`) VALUES
(6, 19, 2009, 2011, 'SMA', 'Budi Luhur Yogyakarta'),
(7, 19, 2006, 2009, 'SMP', 'SMP N 1 Berbah'),
(8, 19, 2000, 2006, 'SD', 'SD N Berbah 2'),
(10, 21, 2010, 2013, 'SMA', 'SMA N 23 Bandung'),
(11, 21, 2007, 2010, 'SMP', 'SMP N 45 Bandung'),
(12, 21, 2001, 2007, 'SD', 'SD N Griba 27 Bandung'),
(16, 25, 1980, 1986, 'SD', 'N Angkasa I'),
(17, 25, 1986, 1989, 'SMP', 'N Berbah'),
(18, 25, 1989, 1992, 'SMA', 'Institut Indonesia I Yogya'),
(19, 28, 1978, 1984, 'SD', 'Angkasa II'),
(20, 28, 1984, 1987, 'SMP', 'N 1 Maospati'),
(21, 28, 1987, 1990, 'SMA', 'N Maospati'),
(22, 28, 1994, 1997, 'D III', 'Akademi Keuangan & Perbankan  Borobudur'),
(23, 29, 1977, 1983, 'SD', 'N MEJING'),
(24, 29, 1983, 1986, 'SMP', 'N CANDIMULYO'),
(25, 29, 1986, 1989, 'SMEA', 'N MAGELANG'),
(26, 29, 1998, 2000, 'D-III', 'AKUNTANSI UNIV KUSUMANEGARA JKT'),
(27, 30, 1989, 1994, 'SD', 'Mardi Yuana Serang'),
(28, 30, 1994, 1997, 'SMP', 'Mardi Yuana Serang'),
(29, 30, 1997, 2000, 'SMA', 'Mardi Yuana Serang'),
(37, 45, 1973, 1979, 'SD ', 'Np Serengan Surakarta'),
(38, 45, 1979, 1982, 'SMPN', '3 Surakarta'),
(39, 45, 1982, 1985, 'SMU', '1 Surakarta'),
(40, 45, 1985, 1993, 'D III', 'Fak kedokteran Gigi UGM '),
(41, 48, 1979, 1985, 'SD', 'Jatisawit I'),
(42, 48, 1985, 1988, 'SMP', 'N Jatiyoso'),
(43, 48, 1988, 1991, 'SMA', 'N Jumapolo'),
(44, 48, 1991, 1995, 'Akper', 'Panti Kosala'),
(45, 49, 1983, 1989, 'SD', 'N III Ketapang Susukan'),
(46, 49, 1989, 1992, 'MTs', 'N Susukan'),
(47, 49, 1992, 1995, 'MA ', 'N 1'),
(48, 49, 1995, 1998, 'D3', 'Akademi Fisioterapi Depkes'),
(49, 49, 2013, 2015, 'S 2', 'Unhan'),
(50, 16, 1988, 1994, 'SD', 'SD N Sorogenen 1'),
(51, 16, 1994, 1997, 'SMP', 'SLTP N 1 Kalasan'),
(52, 16, 1997, 2000, 'SMA', 'SMU N 1 Kalasan'),
(56, 17, 1995, 2001, 'SD', 'SDN Daawinangun I'),
(57, 17, 2001, 2004, 'SMP', 'SMP N II Klangenan'),
(58, 17, 2004, 2007, 'SMK', 'SMK Islami Center'),
(76, 50, 1986, 1991, 'SD', 'Netral D Yogyakarta'),
(77, 50, 1991, 1994, 'SMP', 'N 3 Yogyakarta'),
(78, 50, 1994, 1997, 'SMA', 'N 3 Yogyakarta'),
(79, 50, 1997, 2003, 'PT', 'S-1 FKG UGM'),
(80, 50, 2003, 2005, 'PT', 'Pend.Profesi FKG UGM'),
(102, 51, 1987, 1993, 'SD ', 'Muhammadiyah Gendeng Yogya'),
(103, 51, 1993, 1996, 'SMP', 'Muhammadiyah I Berbah Yogya'),
(104, 51, 1996, 1999, 'SMU', 'Muhammadiyah III Yogya'),
(105, 51, 2000, 2007, 'PT', 'UII Yogya'),
(109, 18, 1982, 1987, 'SD', 'SD N Piyungan III'),
(110, 18, 1987, 1990, 'SMP', 'SMP N Piyungan'),
(111, 18, 1990, 1993, 'SMA', 'SMA Muh 1 Prambanan'),
(112, 18, 2001, 2005, 'S-1', 'Sekolah Tinggi Manajemen LPMI '),
(113, 22, 1993, 1999, 'SD', 'SDN JOMBLANG II'),
(114, 22, 1999, 2002, 'SMP', 'SLTP N BERBAH II'),
(115, 22, 2002, 2005, 'SMA', 'SMA N Banguntapan I'),
(116, 53, 1977, 1983, 'SD ', 'Blora'),
(117, 53, 1983, 1986, 'SMP', 'Kanisius Kalasan Yogya'),
(118, 53, 1986, 1989, 'STM', 'N 2 Yogyakarta'),
(119, 13, 1998, 2000, 'SD', 'SEKOLAH DASAR'),
(120, 13, 1998, 2000, 'SXMP', 'SEKOLAH DASAR3'),
(125, 54, 1991, 1997, 'SD', '1 Ngaran'),
(126, 54, 1997, 2000, 'SMP', '1 Polanharjo'),
(127, 54, 2000, 2003, 'SMA', '1 Karanganom'),
(128, 54, 2003, 2007, 'S 1', 'UPN YOGYAKARTA'),
(129, 55, 1985, 1990, 'SD', 'Ngentak Banguntapan Bantul'),
(130, 55, 1990, 1993, 'SMP', '17 VI Berbah Sleman'),
(131, 55, 1993, 1996, 'STM', 'Naional Sendang Tirto Sleman'),
(136, 56, 1981, 1987, 'SD ', 'SDK Kedon Bantul YK'),
(137, 56, 1987, 1990, 'SMP', 'SMPK Ganjuran Bantul Yk'),
(138, 56, 1990, 1993, 'SMA', 'BOPKRI Bantul'),
(139, 56, 1996, 1999, 'D III', 'AKPER Bethesda Yk'),
(140, 57, 1992, 1998, 'SD', 'N Hargomulyo'),
(141, 57, 1998, 2001, 'SMP', 'N 2 TEMON'),
(142, 57, 2001, 2004, 'SMA', '1 TEMON'),
(143, 57, 2004, 2007, 'D 3', 'Akper Notokusumo Yga'),
(144, 58, 1991, 1997, 'SD', 'N Adisutjipto II'),
(145, 58, 1997, 2000, 'SLTP ', 'N 3 Depok'),
(146, 58, 2000, 2003, 'SMA N ', 'N 1 Banguntapan Bantul'),
(147, 58, 2003, 2006, 'D3 ', 'Kesehatan Gigi Poltekkis Yogyakarta'),
(148, 59, 1991, 1997, 'SD', 'N Banteran 1'),
(149, 59, 1997, 2000, 'SLTP', '1 Ngaglik'),
(150, 59, 2000, 2003, 'SLTA', 'N Ngaglik'),
(151, 59, 2003, 2006, 'Akademi', 'Akper Wiyata Husada Yogyakarta'),
(152, 61, 1969, 1975, 'SD', 'N 104 Yosodipuro Solo'),
(153, 61, 1975, 1979, 'SMP', 'N 3 Solo'),
(154, 61, 1979, 1982, 'SMA', 'N 3 Solo'),
(155, 61, 1984, 1990, 'S 1', 'FKG UGM Yogya'),
(156, 61, 1998, 2005, 'S-2', 'Bedah Mulut UGM'),
(157, 62, 1981, 1987, 'SD', 'Angkasa 3 Jakarta'),
(158, 62, 1987, 1990, 'SMP', 'N 128 Jakarta'),
(159, 62, 1990, 1993, 'SMA', 'N 67 Jakarta'),
(160, 62, 1993, 1999, 'S 1', 'FKG UNIV TRISAKTI Jkt'),
(161, 62, 2007, 2010, 'S 2', 'Spes Penyakit Mulut FKG Unair'),
(166, 63, 1992, 1998, 'SD', 'Angkasa IX Halim Jaktim'),
(167, 63, 1998, 2001, 'SMP', 'N 81 Lubang Buaya Jaktim'),
(168, 63, 2001, 2004, 'SMU', 'N 67 Halim Jaktim'),
(169, 63, 2004, 2007, 'PTN', 'Poltekkes Jkt II Jur.Teknik Radiodiagnostik&Radioterapi'),
(170, 64, 1993, 1999, 'SD', 'N Gombang III'),
(171, 64, 1999, 2002, 'SMP', 'N I Cawas'),
(172, 64, 2002, 2005, 'SMA', 'I Cawas '),
(173, 64, 2005, 2008, 'D III', 'Poltekes TNI AU Ciumbuleuit Bdg'),
(178, 65, 1992, 1998, 'SD', 'N 09 Sungai raya, Pontianak'),
(179, 65, 1998, 2001, 'SMP', '1 Kartasura'),
(180, 65, 2001, 2004, 'SMA', 'N 1 Kartasura,Sukoharjo'),
(181, 65, 2004, 2007, 'D III', 'Akper PPNI Surakarta'),
(194, 69, 1970, 1976, 'SD', 'Giki Jakarta'),
(195, 69, 1977, 1980, 'SMP', 'N 1 Jakarta'),
(196, 69, 1980, 1983, 'SMA', 'N  IV Bandung'),
(197, 69, 1984, 1991, 'FK Katolik Atmajaya Jkt', 'Atmajaya'),
(198, 69, 1995, 2000, 'S II', 'Spesialis Bedah Syaraf Unpad'),
(199, 69, 2001, 2004, 'S III', 'Program Doktor Pasca Sarjana'),
(200, 70, 1981, 1987, 'SD', 'N 7 Jakarta'),
(201, 70, 1987, 1990, 'SMP', 'N 56 Jakarta'),
(202, 70, 1990, 1993, 'SMA', 'N 6 Jakarta'),
(203, 70, 1993, 1999, 'Univ.Prof Dr.Moestopo', 'Jakarta'),
(205, 23, 1982, 1988, 'Sdn Bumiharjo', 'Bumiharjo'),
(206, 23, 1988, 1991, 'SMP', 'N 1 Borobudur'),
(207, 23, 1991, 1994, 'SMA', 'N 1 Kota Mungkid'),
(218, 36, 1991, 1997, 'SD ', 'N Adisutjipto I'),
(219, 36, 1997, 2000, 'SLTP ', 'N 1 Yogyakarta'),
(220, 36, 2000, 2003, 'SLTA', 'N 8 Yogyakarta'),
(221, 36, 2003, 2006, 'D III', 'Akper Panti Rapih Yka'),
(222, 36, 2009, 2010, 'S 1', 'Stikes Aisyah Yogyakarta'),
(227, 74, 1996, 2000, 'SD', 'N Pelemsari '),
(228, 74, 2000, 2003, 'SMP N', '1 Kalasan'),
(229, 74, 2003, 2006, 'SMA N', '9 Yogyakarta'),
(230, 74, 2006, 2009, 'D III ', 'POLTEKKES Kemenkes Yogyakarta'),
(235, 75, 1993, 1999, 'SD', 'K TOTOGAN'),
(236, 75, 1999, 2002, 'SLTPN ', '1 Berbah'),
(237, 75, 2002, 2005, 'SLTAN', 'N Prambanan'),
(238, 75, 2005, 2008, 'D III', 'Akper Panti Rapih'),
(244, 76, 1976, 1982, 'SD', 'N Batujajar bandung'),
(245, 76, 1982, 1985, 'SMP', 'N 3 Cimahi'),
(246, 76, 1985, 1988, 'SMA', 'N 2 Cimahi'),
(247, 76, 1988, 1995, 'S 1', 'Universitas padjadjaran'),
(248, 76, 2001, 2005, 'S-2', 'Universitas Indonesia'),
(249, 77, 1990, 1996, 'SD', 'N 1 Ampana,Kab.Tojo una-una, Sulteng'),
(250, 77, 1996, 1999, 'SMP', 'N 1 Ampana,Kab.Tojo una-una, Sulteng'),
(251, 77, 1999, 2002, 'SMU', 'N 1Luwuk,Kab.Banggai Sulteng'),
(252, 77, 2002, 2006, 'S 1', 'Stikes Wira Husada Kota Yogyakarta'),
(261, 37, 1992, 1998, 'SD', 'Kerik I Magetan'),
(262, 37, 1998, 2001, 'SMP', 'Kawedanan'),
(263, 37, 2001, 2004, 'SMU ', 'Madiun II'),
(264, 37, 2004, 2007, 'D III', 'Radiologi Unair Surabaya'),
(280, 78, 1983, 1988, 'SD', 'N Tegalmiring Purworejo'),
(281, 78, 1988, 1991, 'SMP', 'N Banyuurip Purworejo'),
(282, 78, 1991, 1994, 'SPK', 'PPNI Surakarta'),
(283, 78, 1994, 1995, 'D 1', 'PROG Pendidikan Bidan Olahraga'),
(284, 78, 2000, 2003, 'D 3', 'PROG Diploma III kebidanan'),
(290, 80, 1983, 1989, 'SD', 'Muh Kedung Banteng I'),
(291, 80, 1989, 1992, 'SMP', 'Muh I Gedongan'),
(292, 80, 1992, 1995, 'SMA ', 'ISLAM II Moyudan'),
(293, 80, 1993, 1998, 'D 3', 'Akper Yky Yogyakarta'),
(294, 80, 2016, 2019, 'S 1 ', 'Universitas Alma Ata Yogyakarta '),
(299, 81, 1989, 1994, 'SD', 'N Mranggen 01'),
(300, 81, 1994, 1997, 'SMP', 'N 1 Polokarto'),
(301, 81, 1997, 2000, 'SMA', 'N 1 Polokarto'),
(302, 81, 2001, 2004, 'D 3', 'D III Keperawatan'),
(307, 82, 1991, 1997, 'SD', 'Salakan Lor II, kalasan,Sleman'),
(308, 82, 1997, 2000, 'SLTP', '2 Kalasan,Sleman'),
(309, 82, 2000, 2003, 'SMU', 'Muhammadiyah I Prambanan'),
(310, 82, 2003, 2006, 'Akademi', 'Akper Wiyata Husada Yga'),
(321, 83, 1971, 1977, 'SD', 'Keper'),
(322, 83, 1977, 1981, 'SMP', 'Porong'),
(323, 83, 1981, 1984, 'SMA', 'Muhammadiyah Sidoarjo'),
(324, 83, 1984, 1992, 'S-1', 'Farmasi Unair'),
(325, 83, 2000, 2003, 'S-2', 'Farmasi ITB'),
(329, 20, 1995, 1998, 'SMU N', 'SALAMAN'),
(330, 20, 1992, 1995, 'SMP', 'N 1 Borobudur'),
(331, 20, 1986, 1992, 'SD', 'N Bumiharjo'),
(335, 84, 1978, 1984, 'SD', 'N Wijimulyo Lor Kulon Progo'),
(336, 84, 1984, 1987, 'SMP', 'N Nanggulan Kulon Progo'),
(337, 84, 1987, 1990, 'SMA', 'N Sentolo'),
(338, 85, 1983, 1989, 'SD', 'N 1 Bakulan'),
(339, 85, 1989, 1992, 'SMP ', 'N 2 JETIS Bantul'),
(340, 85, 1992, 1995, 'SPK', 'Karya Husada Yka'),
(341, 85, 2017, 2018, 'D 3', 'Akper Stikes Panti rapih'),
(342, 86, 1972, 1977, 'SD', 'N Jetis I Blora'),
(343, 86, 1977, 1981, 'SMP', 'XV Semarang'),
(344, 86, 1981, 1984, 'SMA', 'N VII Semarang'),
(345, 86, 1985, 1988, 'D 3', 'Akademi Anastesi Semarang'),
(352, 87, 1982, 1988, 'SD', 'N Batursari'),
(353, 87, 1988, 1991, 'SMP', 'N Batangan'),
(354, 87, 1997, 2000, 'SPK', 'Sulaiman Bdg'),
(359, 88, 1980, 1986, 'SD ', '1 Jungke Karanganyar'),
(360, 88, 1986, 1989, 'SMP', 'N 2 Karanganyar'),
(361, 88, 1989, 1992, 'SMA', 'N Kebakkramat Karanganyar'),
(362, 88, 1992, 1995, 'D III', 'Akper Patria Husada Surakarta'),
(371, 89, 1977, 1982, 'SD ', 'N Sleman'),
(372, 89, 1982, 1986, 'SMP', 'Sleman'),
(373, 89, 1986, 1989, 'MAN', 'Sleman'),
(374, 89, 1994, 1987, 'SPK AU', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_penugasan`
--

CREATE TABLE `riwayat_penugasan` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `pangkat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_tanggal` date DEFAULT NULL,
  `sampai_tanggal` year(4) DEFAULT NULL,
  `lokasi_penempatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_penugasan`
--

INSERT INTO `riwayat_penugasan` (`id`, `id_pegawai`, `pangkat`, `mulai_tanggal`, `sampai_tanggal`, `lokasi_penempatan`) VALUES
(1, 21, 'Serda', NULL, 1970, 'Lanud Jayapura'),
(2, 21, 'Serda', NULL, 1970, 'RSAU Salamun Bandung'),
(8, 24, 'Serda', NULL, 1982, 'Bandung'),
(9, 24, 'Sertu', NULL, 1987, 'Jakarta'),
(10, 24, 'Letda', NULL, 1997, 'Yogyakarta'),
(11, 24, 'Lettu', NULL, 2019, 'Yogyakarta'),
(12, 24, 'Mayor', NULL, 2019, 'Yogyakarta'),
(13, 29, 'Staff Bendahara BRR Nad', NULL, 2019, 'Aceh'),
(15, 13, 'PANG', NULL, 2019, 'LOK'),
(134, 23, 'Serda', NULL, 1998, 'Jakarta'),
(135, 23, 'Serka', NULL, 2019, 'Bandung'),
(136, 23, 'Serma', NULL, 2019, 'Bandung'),
(137, 23, 'Letda', NULL, 2019, 'Morotai'),
(138, 23, 'Letda', NULL, 2019, 'Yogyakarta'),
(139, 51, 'PNS III A', NULL, 2019, 'Progar AAU'),
(140, 51, 'PNS III B', NULL, 2019, 'Lanud Manuhua'),
(141, 51, 'PNS III B', NULL, 2019, 'Pekas Denma Koopsau II'),
(142, 51, 'PNS III B', NULL, 2019, 'Tur Adminku Pekas RSPAU dr.S Hardjolukito yogya'),
(143, 55, 'Pns II c', NULL, 1970, 'Lanud Adi'),
(144, 55, 'Pns II D', NULL, 2019, 'RSPAU dr.S.Hardjolukito'),
(147, 83, 'Satgaskes NAD', NULL, 2019, 'Aceh'),
(148, 83, 'Perwira Kes PBB Lebanon', NULL, 2019, 'Libanon');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_tanda_jasa`
--

CREATE TABLE `riwayat_tanda_jasa` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED NOT NULL,
  `tahun_perolehan` year(4) NOT NULL,
  `nama_penghargaan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara_pemberi` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_tanda_jasa`
--

INSERT INTO `riwayat_tanda_jasa` (`id`, `id_pegawai`, `tahun_perolehan`, `nama_penghargaan`, `negara_pemberi`) VALUES
(1, 25, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(2, 25, 0000, 'Satyalencana Kesetiaan 16 TH', ''),
(3, 29, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(4, 29, 0000, 'Satyalencana Kesetiaan XVI TH', ''),
(5, 29, 0000, 'Satyalencana Wira Dharma', ''),
(9, 48, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(10, 48, 0000, 'Dwijasista', ''),
(11, 48, 0000, 'Satya Lancana Kesetiaan 16 TH', ''),
(16, 17, 0000, 'Satyalencana Kebatian Sosial', ''),
(19, 50, 0000, 'Satya Lancana Dharma Nusa', ''),
(24, 18, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(25, 18, 0000, 'Satyalencana Kesetian XVI TH', ''),
(26, 18, 0000, 'Satyalencana Dwija Sista', ''),
(32, 16, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(33, 16, 0000, 'Styalencana Kesetiaan XVI Th', ''),
(34, 16, 0000, 'Satyalencana Wiranusa', ''),
(35, 16, 0000, 'Satyalencana Wira Dharma', ''),
(36, 16, 0000, 'Satyalencana Dwija Sista', ''),
(37, 53, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(38, 53, 0000, 'Satyalencana XVI TH', ''),
(39, 53, 0000, 'Satyalencana Kebaktian Sosial', ''),
(40, 53, 0000, 'Satyalencana Wira Dharma', ''),
(41, 61, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(42, 61, 0000, 'Satyalencana Kesetiaan 16 TH', ''),
(43, 61, 0000, 'piagam Penghargaan hari Bhakti', ''),
(44, 62, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(45, 68, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(46, 68, 0000, 'Satya Lancana Dharma Nusa', ''),
(47, 68, 0000, 'Satya Lancana Kesetiaan 24 TH', ''),
(48, 68, 0000, 'Satya Lancana Narariya', ''),
(49, 20, 0000, 'Tanda jasa Kesetiaan 10 Th', ''),
(58, 76, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(59, 76, 0000, 'Satyalencana Kesetiaan XVI TH', ''),
(60, 76, 0000, 'Satyalencana  Dwidya Sistha', ''),
(61, 76, 0000, 'Satyalencana Seroja', ''),
(68, 83, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(69, 83, 0000, 'Satyalencana Kesetiaan XVI TH', ''),
(70, 83, 0000, 'Satyalencancana Bhakti Kesehatan', ''),
(71, 83, 0000, 'Satyalencana Dwijasista', ''),
(72, 83, 0000, 'Satyalencana XXIV Th', ''),
(73, 83, 0000, 'Penghargaan Shanti Dharma Libanon', ''),
(74, 84, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(75, 84, 0000, 'Satyalencana kesetiaan XVI TH', ''),
(78, 87, 0000, 'Satya Lancana kesetiaan 8 TH', ''),
(79, 87, 0000, 'Satya lancana kesetiaan 12 TH', ''),
(80, 89, 0000, 'Satyalencana Kesetiaan VIII TH', ''),
(81, 89, 0000, 'Satyalencana Kesetiaan 16 TH', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `id_pegawai` mediumint(8) UNSIGNED DEFAULT NULL,
  `id_role` smallint(5) UNSIGNED NOT NULL,
  `password_hash` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status_aktivasi` smallint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_pegawai`, `id_role`, `password_hash`, `username`, `nama`, `email`, `id_status_aktivasi`) VALUES
(2, NULL, 1, '$2y$10$Q54dh/nijH5Os/Gtq6dHDuQwluPs1fZjoidcEkU90k8CGbLexxzJ.', 'admin', 'Admin', 'admin@gmail.com', 2),
(8, 13, 2, NULL, '213123345', 'Dennis Arfan', 'dennisarfan@gmail.com', 1),
(12, 16, 2, NULL, '528957', 'Diana Mahastuti', 'dianamahastuti@gmail.com', 1),
(15, 17, 2, NULL, '536846', 'Faradilla Hanayunita', 'diellahanayunita@yahoo.com', 1),
(16, 18, 2, NULL, '521397', 'Eko Kriswantoro', 'ekokriswantoro@yahoo.co.id', 1),
(17, 19, 2, NULL, '542814', 'Kristianto Yudhi Pratamarani', 'kris.kirun@gmail.com', 1),
(18, 20, 2, NULL, '197902272003121001', 'Safarin', 'Safarin2702@gmail.com', 1),
(19, 21, 2, NULL, '544356', 'Gina Anggraeni Suwandi', 'anggraenigina49@gmail.com', 1),
(20, 22, 2, NULL, '537720', 'Hendra Gunawan', 'Pello.pers56@gmai.com', 1),
(21, 23, 2, NULL, '523741', 'Supoyo', 'poyomorotai@gmail.com', 1),
(22, 24, 2, NULL, '510566', 'Desmi Nellita', 'Desminellita31062@gmail.com', 1),
(23, 25, 2, NULL, '517420', 'Erny Utaminingsih', 'utaminingsiherny@gmail.com', 1),
(26, 28, 2, NULL, '516256', 'Dyah Lastiati', 'phiengky@yahoo.com', 1),
(27, 29, 2, NULL, '516229', 'Mugiyo prayitno', 'kmugiyo@yahoo.com', 1),
(28, 30, 2, NULL, '528005', 'Caroline Since Uskono', 'uskonocarolinasince@gmail.com', 1),
(29, 31, 2, NULL, '198407272010122003', 'Eka Yuliatun,A.Md', 'fearleykaborneo@yahoo.co.id', 1),
(30, 32, 2, NULL, '517400', 'Susi Endahwati', 'Susiendahwati13@gmail.com', 1),
(31, 33, 2, NULL, '528326', 'Edy Supriyanto', 'edykhitan57@gmail.com', 1),
(32, 34, 2, NULL, '526986', 'Heri Subiakto', 'HERYFASINT39@gmail.com', 1),
(33, 35, 2, NULL, '196806201998031004', 'Suryana', 'suryanaamisena@gmail.com', 1),
(34, 36, 2, NULL, '198504262007122001', 'Dian Fajaryati', 'rednadine13@mail.com', 1),
(35, 37, 2, NULL, '537327', 'Dwi Wida Hudyasari', 'widalfian@yahoo.co.com', 1),
(36, 38, 2, NULL, '1966904231998032001', 'Sri Palupi Saptarini,S.Sos', 'Sri.palupi69@g.mail.com', 1),
(38, 39, 2, NULL, '520937', 'Rum Yulaika Wulandari', 'rumyulaikawulandari@gmail.com', 1),
(39, 40, 2, NULL, '198407182007122001', 'Priani', '12sy@gmail.com', 1),
(40, 41, 2, NULL, '522792', 'I Wayan Polih', 'wayanp2508@gmail.com', 1),
(41, 42, 2, NULL, '198406142007122001', 'TH. Dwi Wahyuni', 'theresladio84@gmail.com', 1),
(42, 43, 2, NULL, '198503102008122003', 'Fitrya Ulfah H A.Md.KG', 'ibrahimdenta@gmail.com', 1),
(43, 44, 2, NULL, '198204242007122001', 'Umi Rodiyah', 'Umirodiyah67@gmail.com', 1),
(44, 45, 2, NULL, '196604112002122002', 'drg.Umi Sarwi  Endah', 'umumisarwi@gmail.com', 1),
(45, 46, 2, NULL, '196602261996031001', 'drg.Heru Maksmara, Sp.Perio', 'maxmaraheru@gmail.com', 1),
(46, 47, 2, NULL, '197603052006042001', 'Sundari', 'sundariatika@gmail.com', 1),
(47, 48, 2, NULL, '522791', 'Lartono', '05lartono@gmail.com', 1),
(48, 49, 2, NULL, '527118', 'Muhammad Nanang Dhian Purnomo', 'fisionanang@gmail.com', 1),
(49, 50, 2, NULL, '534546', 'drg.Enny Yuliati', 'yuliatienny@gmail.com', 1),
(50, 51, 2, NULL, '198210312010121003', 'Mohammad Sinatria Yogasara,SE', 'sinatriayogasara@gmail.com', 1),
(51, 52, 2, NULL, '515611', 'Sri Rahayu', 'Sri14rahayu@gmail.com', 1),
(52, 53, 2, NULL, '514707', 'Ignatius Indarto', 'belgiindar70@gmail.com', 1),
(53, 54, 2, NULL, '198404102008122004', 'Budi Hastuti', 'budihastuti84@gmail.com', 1),
(54, 55, 2, NULL, '197409192002121005', 'Karyanto', 'karyanto.Putra7@gmail.com', 1),
(55, 56, 2, NULL, '197505062003122001', 'Alexandra Mutiaraningati', 'alexandramutiara@gmail.com', 1),
(56, 57, 2, NULL, '198510112008121002', 'Purwoko Wegig Pracoyo', 'pracoyowegig11@gmail.com', 1),
(57, 58, 2, NULL, '198508312007122001', 'Ery Widyanti', 'erywidyanti07@gmail.com', 1),
(58, 59, 2, NULL, '198503242007122001', 'Waqit Nurrohmanudin', 'waqitnr@yahoo.com', 1),
(59, 60, 2, NULL, '525831', 'Suryanto, S.Sos., M.Pd.', 'zorojanto@gmail.com', 1),
(60, 61, 2, NULL, '522964', 'drg.Agus Mulato,Sp.BM', 'agusmulat@yahoo.coid', 1),
(61, 62, 2, NULL, '528362', 'drg. Purnama Jaya, Sp.PM', 'nomidrg@yahoo.co.id', 1),
(62, 63, 2, NULL, '198608242008122001', 'Nurul Pramugrahini', 'nurulrahini86@gmail.com', 1),
(63, 64, 2, NULL, '198611022008122001', 'Sri Sumarsih, AMd.Kep', 'srisumarsih021186@gmail.com', 1),
(64, 65, 2, NULL, '198701062009121004', 'Ragil Tri Aryanto.S.,A.Md Kep', 'ragiltriaryanto@gmail.com', 1),
(65, 66, 2, NULL, '198003102008121001', 'Danang Suseno', 'danang.blackgarenk@gmail.com', 1),
(66, 67, 2, NULL, '541675', 'drg.Endiyanto Wahyu N.', 'hunterdepok@yahoo.com', 1),
(67, 68, 2, NULL, '507259', 'F.X.Suparja', 'suparja1235@gmail.com', 1),
(68, 69, 2, NULL, '520712', 'Dr.dr.Isdwiranto Iskanto,SpBS(K).,Sp KP', 'isdwiranto@gmail.com', 1),
(69, 70, 2, NULL, '527176', 'drg. Hellen Amalia Kirana D.', 'hellenfajar@yahoo.com', 1),
(70, 71, 2, NULL, '198102132005012004', 'Lina Efendi', 'linahanifa@gmail.com', 1),
(71, 72, 2, NULL, '198008102007122001', 'Suci Kusumawati,AMd.kep', 'jihanbellasuci@gmail.com', 1),
(72, 73, 2, NULL, '198701092008121001', 'Damas Nurisma Aji,A.Md', 'damasrspau@gmail.com', 1),
(73, 74, 2, NULL, '198803262009122001', 'Dyah Ayu puspitasari', 'inidyahayu@yahoo.com', 1),
(74, 75, 2, NULL, '198704122009122004', 'Bernadeta Pipit Apriliyani', 'pipitapriliyani354yudiyanto354@gmail.com', 1),
(75, 76, 2, NULL, '516302', 'dr.Djarot Sujatmoko', 'ventindjarot@gmail.com', 1),
(76, 77, 2, NULL, '198309202007121001', 'Boby Rachmad', 'prominensasky@gmail.com', 1),
(77, 78, 2, NULL, '197611052003122001', 'Dwi Briyantiningsih, Am Keb', 'dwibriyantiningsih@gmail.com', 1),
(79, 80, 2, NULL, '197703231999032004', 'Laila Nurhayati', 'lailanurhayati03@gmail.com', 1),
(80, 81, 2, NULL, '198203172010122001', 'Dwi Susianingsih', 'Silviananda3@gmail.com', 1),
(83, 82, 2, NULL, '198410212007122001', 'Eni Puji Astuti', 'enirsau@gmail.com', 1),
(84, 83, 2, NULL, '513108', 'Drs.Nur Abdul Goni,M.Si.Apt', 'nurabdulgoni66@gmail.com', 1),
(85, 84, 2, NULL, '514877', 'Agung Joko Suryono', 'agungjsgg@gmail.com', 1),
(86, 85, 2, NULL, '197702121998032003', 'PURYANTI', 'sugiyatno988@gmail.com', 1),
(87, 86, 2, NULL, '196603092002122002', 'Erna Diana Sylviana', 'ernadiana9@gmail.com', 1),
(88, 87, 2, NULL, '520045', 'Sariyun', 'Sariyun.rspau2017@gmail.com', 1),
(89, 88, 2, NULL, '197301181998032005', 'Tri Wahyu Khasanah', 'triwahyukhasanah@gmail.com', 1),
(90, 89, 2, NULL, '515334', 'Suhartana', 'suhartanta36@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `validation_tokens`
--

CREATE TABLE `validation_tokens` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `token` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` mediumint(8) UNSIGNED NOT NULL,
  `action` tinyint(3) UNSIGNED NOT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `validation_tokens`
--

INSERT INTO `validation_tokens` (`id`, `token`, `id_user`, `action`, `expiration_date`) VALUES
(10, 'eae18a5a75c71bb40c5736dbb7920f23', 8, 1, NULL),
(13, 'fbf3c0e1c88ceecf3c32ac69a291b286', 12, 1, NULL),
(14, 'a82972e26a98217d627245207431c9bd', 15, 1, NULL),
(15, '4d3979d52c83cc0ee4fc61a086b31341', 16, 1, NULL),
(16, '7268e2213597ebc7614852d847252041', 17, 1, NULL),
(17, '1210b950df0c751a63b945548381f69e', 18, 1, NULL),
(18, '5abddce9d2c818ca5fda496930bef897', 19, 1, NULL),
(19, '7e8161f1997e1cb34e3e33fd9d10f566', 20, 1, NULL),
(20, 'd71c580027effa8558beefe9c9269ef0', 21, 1, NULL),
(21, '2ef13ad18e5cee717fa74a9fa98cb6a4', 22, 1, NULL),
(22, '9289facd5219944a8aa9777ef254c8f5', 23, 1, NULL),
(24, '25c98249fedfb0f6281ab662fc22011a', 26, 1, NULL),
(25, 'ae4168fd95c1cddcddff2021764e00a7', 27, 1, NULL),
(26, '4370007316b77737375b4ba8ca5ac9e3', 28, 1, NULL),
(27, 'ba0314a68589ac552d36f3e16a274700', 29, 1, NULL),
(28, '625eaba2197de2b5ae081a50d3dde0b0', 30, 1, NULL),
(29, '0915c37275375be89f36cf7f50761066', 31, 1, NULL),
(30, '3d9358896950ad741761ba59dd858411', 32, 1, NULL),
(31, 'c92dbbac5a2710747c8578207aca2c50', 33, 1, NULL),
(32, 'cad6452c625cc308cb36ecfd5b5f4ffb', 34, 1, NULL),
(33, '874501148fcf1ace1b9f477912379a31', 35, 1, NULL),
(34, 'f55626c40e53067b9de2a838fe77c923', 36, 1, NULL),
(35, '014d798be5debd4bd0c8fc9d1b9818ac', 38, 1, NULL),
(36, '3b9ec5ff534a91b3befecfe418eade11', 39, 1, NULL),
(37, '8927b9637659189413e07e0b0431a306', 40, 1, NULL),
(38, '79542a3e5105fa2b37fc79e1f2b3dffe', 41, 1, NULL),
(39, '5f808a92e8976c30bd8ebf56b354c8ac', 42, 1, NULL),
(40, 'b1feccc05ef693cd21a8b10b02bc20e5', 43, 1, NULL),
(41, '874a327e9026f87f82a34dc661e2f508', 44, 1, NULL),
(42, '76063df3c4948ebdcbe12c4ab4309061', 45, 1, NULL),
(43, '7c2f39ff12678e2092e82a9a6d1612be', 46, 1, NULL),
(44, '0868e8d4f6642ebab673ef1fb1789b46', 47, 1, NULL),
(45, 'd3c7af33dfe31e20bed69c79274dacca', 48, 1, NULL),
(46, '60f38d8b588ac773d76e1afd80207654', 49, 1, NULL),
(47, 'fcf3bca663a06e74949a780fd269da01', 50, 1, NULL),
(48, '0611f77d0ed843553e90b8f5ea47dff7', 51, 1, NULL),
(49, 'a3021d097a4b3b29dd4306f5da1475a4', 52, 1, NULL),
(50, '5e08d75971b615e3fb2b4602e2b21beb', 53, 1, NULL),
(51, '8145a6d8fda9b67260352074664978df', 54, 1, NULL),
(52, 'ee4785817806ecdf836244d0c540ab88', 55, 1, NULL),
(53, 'd48bfd744ba2d58b5376d58426822646', 56, 1, NULL),
(54, 'ca5d31700093132cfd8997af2086cf19', 57, 1, NULL),
(55, '4dfb2ccbd6ee75d3deff2ad52d649d49', 58, 1, NULL),
(56, '7beee920a837d3f375b821ed650e45e2', 59, 1, NULL),
(57, '585a9396aeaf0c7114128dd851bea86f', 60, 1, NULL),
(58, '523ca86ff2f460dc804a469e8b3c6a38', 61, 1, NULL),
(59, '419b4ba8e6792be5ec6381c5f8ad86f9', 62, 1, NULL),
(60, '6d1352c31606312d628945c29f5eca09', 63, 1, NULL),
(61, '93555edc48bee8b9c91aabd6af68d043', 64, 1, NULL),
(62, '6e5e0d6f2549864454a3db9d10f1bc57', 65, 1, NULL),
(63, '31377e0d96c1acc6f8c5eb04b545fb98', 66, 1, NULL),
(64, '80734e5a7df205237f89c6bf0d9f22dc', 67, 1, NULL),
(65, 'd6af3e8a5f6400d5bc1916230e092a15', 68, 1, NULL),
(66, '8785426561482031e1d5a76561d9775d', 69, 1, NULL),
(67, '9729b5e8afadaddf8127919d826a39d4', 70, 1, NULL),
(68, 'fd08f9ad76850a2e2d4cb1b85a7711d9', 71, 1, NULL),
(69, '16b36cb7123bf3392cb90640acceb33e', 72, 1, NULL),
(70, 'ac171fa2af37d765fe10a8cdc8ab245e', 73, 1, NULL),
(71, '9e6a403c54ee6a4a9e7b5bee4dfb73e7', 74, 1, NULL),
(72, '82fde5f742cd6ff36984011e086d1348', 75, 1, NULL),
(73, '5b64a6d18f2646b8b07903f46a2d3c8b', 76, 1, NULL),
(74, 'fca1ed16a620ee8dee638b2ecd2d41e1', 77, 1, NULL),
(75, '5cece26f754d11a92a5ba982ab64a000', 79, 1, NULL),
(76, '0184e7e87744356e46861ed0c4bfa0f4', 80, 1, NULL),
(77, 'df7c0f6a9a748b7401571d7a61b7b12f', 83, 1, NULL),
(78, '8e0734fac2ef6b57b90a72209bbeb236', 84, 1, NULL),
(79, 'a55818679681fd48138f356d673d4202', 85, 1, NULL),
(80, 'cd8b76d227f1bf2528e9d7a80d733c31', 86, 1, NULL),
(81, 'dc8d27576840e8ecd2c24bfd51535b91', 87, 1, NULL),
(82, '010f7330601c7663ee0b1958bc4430be', 88, 1, NULL),
(83, 'e77b44d18c56544b93234ac6a7368a1d', 89, 1, NULL),
(84, '0265181c883d21313eb0f6a4d35c6b18', 90, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_keluarga`
--
ALTER TABLE `data_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_hubungan_keluarga` (`id_hubungan_keluarga`),
  ADD KEY `id_jenis_kelamin` (`id_jenis_kelamin`),
  ADD KEY `id_tempat_lahir` (`id_tempat_lahir`),
  ADD KEY `id_tempat_menikah` (`id_tempat_menikah`),
  ADD KEY `id_suku` (`id_suku`),
  ADD KEY `id_status_kehidupan` (`id_status_kehidupan`),
  ADD KEY `id_status_pernikahan` (`id_status_pernikahan`),
  ADD KEY `id_status_tertanggung` (`id_status_tertanggung`);

--
-- Indexes for table `m_agama`
--
ALTER TABLE `m_agama`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_bagian`
--
ALTER TABLE `m_bagian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_dikmilti`
--
ALTER TABLE `m_dikmilti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_dikumti`
--
ALTER TABLE `m_dikumti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_golongan`
--
ALTER TABLE `m_golongan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_golongan_darah`
--
ALTER TABLE `m_golongan_darah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_grade`
--
ALTER TABLE `m_grade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_hubungan_keluarga`
--
ALTER TABLE `m_hubungan_keluarga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_jenis_kelamin`
--
ALTER TABLE `m_jenis_kelamin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_korp`
--
ALTER TABLE `m_korp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_kota`
--
ALTER TABLE `m_kota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_pangkat`
--
ALTER TABLE `m_pangkat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_profesi`
--
ALTER TABLE `m_profesi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_role`
--
ALTER TABLE `m_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_ruangan`
--
ALTER TABLE `m_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_spesialis`
--
ALTER TABLE `m_spesialis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_aktivasi`
--
ALTER TABLE `m_status_aktivasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_jabatan`
--
ALTER TABLE `m_status_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_kehidupan`
--
ALTER TABLE `m_status_kehidupan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_kepegawaian`
--
ALTER TABLE `m_status_kepegawaian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_pernikahan`
--
ALTER TABLE `m_status_pernikahan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_status_tertanggung`
--
ALTER TABLE `m_status_tertanggung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_suku`
--
ALTER TABLE `m_suku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `m_unit_kerja`
--
ALTER TABLE `m_unit_kerja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_dikmilti` (`id_dikmilti`),
  ADD KEY `id_dikumti` (`id_dikumti`),
  ADD KEY `id_golongan` (`id_golongan`),
  ADD KEY `id_golongan_darah` (`id_golongan_darah`),
  ADD KEY `id_grade` (`id_grade`),
  ADD KEY `id_jenis_kelamin` (`id_jenis_kelamin`),
  ADD KEY `id_kota` (`id_kota`),
  ADD KEY `id_pangkat` (`id_pangkat`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_status_kepegawaian` (`id_status_kepegawaian`),
  ADD KEY `id_status_pernikahan` (`id_status_pernikahan`),
  ADD KEY `id_unit_kerja` (`id_unit_kerja`),
  ADD KEY `id_suku` (`id_suku`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_korp` (`id_korp`),
  ADD KEY `id_spes` (`id_spesialis`),
  ADD KEY `id_prof` (`id_profesi`),
  ADD KEY `id_bagian` (`id_bagian`),
  ADD KEY `id_kenaikan_pangkat` (`id_kenaikan_pangkat`);

--
-- Indexes for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_status_jabatan` (`id_status_jabatan`),
  ADD KEY `riwayat_jabatan_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pangkat` (`id_pangkat`),
  ADD KEY `riwayat_pangkat_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `riwayat_pendidikan_militer`
--
ALTER TABLE `riwayat_pendidikan_militer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pendidikan_militer_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `riwayat_pendidikan_umum`
--
ALTER TABLE `riwayat_pendidikan_umum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pendidikan_umum_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `riwayat_penugasan`
--
ALTER TABLE `riwayat_penugasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_penugasan_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `riwayat_tanda_jasa`
--
ALTER TABLE `riwayat_tanda_jasa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_tanda_jasa_ibfk_1` (`id_pegawai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_status_aktivasi` (`id_status_aktivasi`);

--
-- Indexes for table `validation_tokens`
--
ALTER TABLE `validation_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_keluarga`
--
ALTER TABLE `data_keluarga`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `m_agama`
--
ALTER TABLE `m_agama`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_bagian`
--
ALTER TABLE `m_bagian`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `m_dikmilti`
--
ALTER TABLE `m_dikmilti`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `m_dikumti`
--
ALTER TABLE `m_dikumti`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `m_golongan`
--
ALTER TABLE `m_golongan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_golongan_darah`
--
ALTER TABLE `m_golongan_darah`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_grade`
--
ALTER TABLE `m_grade`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `m_hubungan_keluarga`
--
ALTER TABLE `m_hubungan_keluarga`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT for table `m_jenis_kelamin`
--
ALTER TABLE `m_jenis_kelamin`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_korp`
--
ALTER TABLE `m_korp`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_kota`
--
ALTER TABLE `m_kota`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `m_pangkat`
--
ALTER TABLE `m_pangkat`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `m_profesi`
--
ALTER TABLE `m_profesi`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `m_role`
--
ALTER TABLE `m_role`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_ruangan`
--
ALTER TABLE `m_ruangan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_spesialis`
--
ALTER TABLE `m_spesialis`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `m_status_aktivasi`
--
ALTER TABLE `m_status_aktivasi`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_status_jabatan`
--
ALTER TABLE `m_status_jabatan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_status_kehidupan`
--
ALTER TABLE `m_status_kehidupan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_status_kepegawaian`
--
ALTER TABLE `m_status_kepegawaian`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_status_pernikahan`
--
ALTER TABLE `m_status_pernikahan`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_status_tertanggung`
--
ALTER TABLE `m_status_tertanggung`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_suku`
--
ALTER TABLE `m_suku`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_unit_kerja`
--
ALTER TABLE `m_unit_kerja`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan_militer`
--
ALTER TABLE `riwayat_pendidikan_militer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan_umum`
--
ALTER TABLE `riwayat_pendidikan_umum`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
--
-- AUTO_INCREMENT for table `riwayat_penugasan`
--
ALTER TABLE `riwayat_penugasan`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `riwayat_tanda_jasa`
--
ALTER TABLE `riwayat_tanda_jasa`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `validation_tokens`
--
ALTER TABLE `validation_tokens`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_keluarga`
--
ALTER TABLE `data_keluarga`
  ADD CONSTRAINT `data_keluarga_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `m_agama` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_2` FOREIGN KEY (`id_hubungan_keluarga`) REFERENCES `m_hubungan_keluarga` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_3` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `m_jenis_kelamin` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_7` FOREIGN KEY (`id_status_kehidupan`) REFERENCES `m_status_kehidupan` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_8` FOREIGN KEY (`id_status_pernikahan`) REFERENCES `m_status_pernikahan` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_9` FOREIGN KEY (`id_status_tertanggung`) REFERENCES `m_status_tertanggung` (`id`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `m_agama` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_10` FOREIGN KEY (`id_pangkat`) REFERENCES `m_pangkat` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_11` FOREIGN KEY (`id_ruangan`) REFERENCES `m_ruangan` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_12` FOREIGN KEY (`id_status_kepegawaian`) REFERENCES `m_status_kepegawaian` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_13` FOREIGN KEY (`id_status_pernikahan`) REFERENCES `m_status_pernikahan` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_14` FOREIGN KEY (`id_unit_kerja`) REFERENCES `m_unit_kerja` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_15` FOREIGN KEY (`id_suku`) REFERENCES `m_suku` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_16` FOREIGN KEY (`id_jabatan`) REFERENCES `m_jabatan` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_20` FOREIGN KEY (`id_bagian`) REFERENCES `m_bagian` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_21` FOREIGN KEY (`id_kenaikan_pangkat`) REFERENCES `m_pangkat` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`id_dikmilti`) REFERENCES `m_dikmilti` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_4` FOREIGN KEY (`id_dikumti`) REFERENCES `m_dikumti` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_5` FOREIGN KEY (`id_golongan`) REFERENCES `m_golongan` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_6` FOREIGN KEY (`id_golongan_darah`) REFERENCES `m_golongan_darah` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_7` FOREIGN KEY (`id_grade`) REFERENCES `m_grade` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_8` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `m_jenis_kelamin` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_9` FOREIGN KEY (`id_kota`) REFERENCES `m_kota` (`id`);

--
-- Constraints for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD CONSTRAINT `riwayat_jabatan_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_jabatan_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `m_jabatan` (`id`),
  ADD CONSTRAINT `riwayat_jabatan_ibfk_3` FOREIGN KEY (`id_status_jabatan`) REFERENCES `m_status_jabatan` (`id`);

--
-- Constraints for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD CONSTRAINT `riwayat_pangkat_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_pangkat_ibfk_2` FOREIGN KEY (`id_pangkat`) REFERENCES `m_pangkat` (`id`);

--
-- Constraints for table `riwayat_pendidikan_militer`
--
ALTER TABLE `riwayat_pendidikan_militer`
  ADD CONSTRAINT `riwayat_pendidikan_militer_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_pendidikan_umum`
--
ALTER TABLE `riwayat_pendidikan_umum`
  ADD CONSTRAINT `riwayat_pendidikan_umum_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_penugasan`
--
ALTER TABLE `riwayat_penugasan`
  ADD CONSTRAINT `riwayat_penugasan_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_tanda_jasa`
--
ALTER TABLE `riwayat_tanda_jasa`
  ADD CONSTRAINT `riwayat_tanda_jasa_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `m_role` (`id`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_status_aktivasi`) REFERENCES `m_status_aktivasi` (`id`);

--
-- Constraints for table `validation_tokens`
--
ALTER TABLE `validation_tokens`
  ADD CONSTRAINT `validation_tokens_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
