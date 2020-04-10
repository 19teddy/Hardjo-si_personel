-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2019 at 08:57 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.3.5-1+ubuntu18.04.1+deb.sury.org+1

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
  `id_tempat_lahir` smallint(5) UNSIGNED NOT NULL,
  `id_tempat_menikah` smallint(5) UNSIGNED NOT NULL,
  `id_suku` smallint(5) UNSIGNED NOT NULL,
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
(5, 13, 1, 4, 1, 6, 1, 2, 1, 4, 1, '1965-06-16', '1990-01-22', 'Abdul Kodir', 'Jl. Parakan Asri dalam No. 50', 'Kota Bandung', 'Karyawan Swasta');

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
(7, 'Diklatpim  Tk. IV'),
(26, 'Diklatsarjemen'),
(24, 'Jur  Aminu Ku'),
(22, 'Laprajab'),
(14, 'Larsarjemen Gol II'),
(2, 'Latprajab'),
(6, 'Latprajab Gol III'),
(25, 'Latsamil'),
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
(4, 'S1'),
(5, 'S2'),
(6, 'S3'),
(7, 'safarin'),
(1, 'SMA');

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
(29, '13-01-1982'),
(31, '13-9-1993'),
(32, '25-09-1998'),
(34, 'Anggota Dispers Kalijati'),
(30, 'Anggota Dispullahta'),
(23, 'Anggota Skadik 503'),
(24, 'Anggota Urpers Rumkit Adi'),
(52, 'B operator Komptr Bag.Instal Gilut'),
(48, 'Ba Adminku Pekas  RSPAU dr S.Hardjolukito'),
(47, 'Ba Adminku Pekas Abd'),
(43, 'Ba Adminku Pekas RSPAU dr. S.Hardjolukito'),
(33, 'Ba Adminpers Urpers Bagum RSPAU dr. S.Hardjolukito'),
(35, 'Ba Adminpers Urpers taud Hardjolukito'),
(18, 'Ba Adminu Binrohwat Binkopetensi RSPAU dr. S. Hardjolukito'),
(17, 'Ba Operator Komp Si Info Infolahta Bagum'),
(39, 'Ba Pekas disku'),
(46, 'Ba Pembukuan Pekas Lnd Rai'),
(51, 'Ba perawat Watinap Watum'),
(27, 'Ba Slogau'),
(61, 'Bidan Pelaksana Lanjutan Bag Inf Fetomaternal Dep Obs'),
(12, 'DANFLIGHT B SEMABA WARA'),
(13, 'DANFLIGHT B SKADIK 105'),
(5, 'Jabatan'),
(57, 'Kabag Bankes Dep Dukkes'),
(7, 'Kasi Infolahta Bagum'),
(14, 'KASIMIN DISBIN WINGKAR '),
(28, 'Kasipers Bagum'),
(55, 'Kaunitjangwat Jangkes'),
(59, 'Kaunitwatinap Watum RS.dr. Hardjolukito'),
(11, 'KAUR PROGAPL JARKOM INFOLAHTA'),
(41, 'Kaur Rengar Prog AAU'),
(37, 'KAUR Simak BMN'),
(15, 'KAUR SISINFOLAHTA SI INFOLAHTA BAGUM'),
(40, 'Kaurelav Progar Denma'),
(56, 'Kaurminpersip Bagum RSPAU  S.Hardjolukito'),
(50, 'Kaurminpersmil Sipers Bagum'),
(6, 'Kepala RSPAU'),
(4, 'Kolonel Kes'),
(21, 'Pelaksana subdisadaaero'),
(49, 'Pengatur Adminu Bagum RSPAU dr. S.Hardjolukito'),
(9, 'Pengatur Perawat Watum'),
(60, 'Perawat Gigi Pelaksana'),
(54, 'Perawat Pelaksana'),
(58, 'Perawat Pelaksana lanjutan Bag Jiwa dep Jiwa'),
(26, 'Ps Kaursisinfolahta Infolahta RSPAU Hardjolukito'),
(10, 'Ps. KASI INFOLAHTA BAGUM'),
(38, 'Ps. Kaur Rengar progar'),
(36, 'Ps.Kasi TU Bagum RSPAU dr.S.Hardjolukito'),
(42, 'PS.Kauren prog Adi'),
(44, 'Staf Pekas Dnm Koharmatau'),
(45, 'Staf Pekas Lanud WMI'),
(19, 'Ta '),
(25, 'Ta Adminu  Urmin TU Sipers TU Bagum RSPAU dr.S Hardjolukito'),
(22, 'Ta Adminu Urmin Tu Si TU Bagum'),
(1, 'Test Jabatan 1'),
(2, 'Test Jabatan 2'),
(3, 'Test Jabatan 3'),
(16, 'Tur Adminu Bagum'),
(53, 'TUR ADMINU RSPAU'),
(20, 'Tur Adminu Si TU Sipers RSPAU'),
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
(8, 'Klaten Jawa Tengah'),
(1, 'Kota Bandung'),
(2, 'Kota Cirebon'),
(6, 'Kota Cirebonx'),
(9, 'Magelang'),
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
(2, 'Dokter'),
(8, 'Fasint Harfa'),
(5, 'Keuangan'),
(9, 'Paramedis'),
(3, 'PDE'),
(7, 'Perawat'),
(4, 'Pers'),
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
(1, 'PDE'),
(2, 'Pers'),
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
(13, 1, 7, 3, 2, 1, 1, 1, 5, 1, 1, 8, NULL, 1, 4, NULL, 2, NULL, 1, 1, NULL, '2019-04-01', '0000-00-00', '2019-05-01', '0000-00-00', NULL, '2019-05-02', '2019-05-03', 170, 55, NULL, 'Dennis Arfan', NULL, '213123345', 'Asal Masuk', 'RSPAU dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Parakan Asri dalam', NULL, '087821491949', '', '93yvxuc164ownn95tszmtp9s4hnj04ug.jpg', NULL, 'Teknik Elektronika'),
(16, 1, 9, 11, 1, 2, 4, 2, 17, 2, 7, 13, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '1981-09-03', NULL, '2002-01-01', NULL, NULL, '2019-05-02', '2019-05-24', 170, 85, NULL, 'Diana Mahastuti', NULL, '528957', 'Semaba PK Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Ds. Dhuri Rt/Rw 007/021 Tirtomartani Kalasan Sleman', NULL, '081226636277', NULL, '0', NULL, 'SMA N 1 Kalasan'),
(17, 1, 9, 28, 1, NULL, NULL, NULL, NULL, 2, 7, 14, NULL, 1, 2, NULL, 1, NULL, NULL, 1, NULL, '1989-07-07', NULL, NULL, NULL, NULL, NULL, NULL, 163, 60, NULL, 'Faradilla Hanayunita', NULL, '536846', 'Semaba PK Wara XXXI', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', NULL, NULL, '082262063131', NULL, '0', NULL, 'SMK Islam Center Cirebon'),
(18, 1, 7, 34, 4, NULL, 2, NULL, 18, NULL, 7, 14, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, NULL, '1975-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, 'Eko Kriswantoro', NULL, '521397', 'Secata PK XXXII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Piyungan Rt/Rw 001/   srimartani Piyungan Bantul', NULL, '087878280675', NULL, '0', NULL, 'Sekolah Tinggi Ilmu Manajemen LPMI'),
(19, 2, 7, NULL, NULL, NULL, 2, NULL, NULL, 1, 8, 21, NULL, 1, 1, NULL, 1, NULL, NULL, 2, NULL, '1992-12-17', NULL, NULL, NULL, NULL, NULL, NULL, 172, 64, NULL, 'Kristianto Yudhi Pratamarani', NULL, '542814', 'Semata PK LXV', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Demangan RT/Rw 001/008 Kajoran Klaten Selatan', NULL, '085786465121', NULL, '0', NULL, NULL),
(20, 1, 7, 12, 1, NULL, 4, NULL, 20, NULL, 9, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1979-02-27', NULL, '2003-12-01', NULL, NULL, '2014-12-08', '2014-10-08', 163, 60, NULL, 'Safarin', NULL, '197902272003121001', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kauman II Rt 017 Rw 08 Payaman Secang Magelang', NULL, '081398579373', NULL, '0', NULL, NULL),
(21, 1, 8, 29, 1, 2, 3, NULL, NULL, 2, 10, 16, NULL, 1, 2, NULL, 2, NULL, NULL, NULL, NULL, '1995-10-18', NULL, '2015-10-09', NULL, NULL, '2016-05-10', '2013-06-01', 163, 60, NULL, 'Gina Anggraeni Suwandi', NULL, '544356', 'Semaba PK Wara XL', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Jatiwangi 5 No. 5 Antapani Bandung', NULL, '082126945708', NULL, '0', NULL, 'SMA N 23 Bandung'),
(22, 1, 7, NULL, 1, 1, 1, 3, 22, 1, 7, 20, NULL, 1, 1, NULL, 1, NULL, NULL, 2, NULL, '1987-04-04', NULL, '2008-08-21', NULL, NULL, '2008-12-24', '2005-09-03', 172, 65, NULL, 'Hendra Gunawan', NULL, '537720', 'semata PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kauman GM I/187 rT 039 Rw 11 Gondomanan', NULL, '085100225444', NULL, '0', NULL, 'SMA N Banguntapan I'),
(23, 1, 9, 27, 4, NULL, 4, NULL, 26, 1, 9, 10, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1975-08-18', NULL, '1998-07-23', NULL, NULL, NULL, NULL, 162, 69, NULL, 'Supoyo', NULL, '523741', 'Semaba PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Sigug Rt 6 Rw2 Bumiharjo Borobudur Magelang Ja-teng', NULL, '081312811083', NULL, '0', NULL, NULL),
(24, 1, 7, NULL, 1, NULL, 4, 4, 28, 2, 7, 7, NULL, 1, 1, NULL, 4, NULL, NULL, 2, NULL, '1962-10-03', NULL, '1981-09-21', NULL, NULL, '1997-12-11', '2081-01-22', 159, 76, NULL, 'Desmi Nellita', NULL, '510566', 'Sebamilwa Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok P -13 Lanud Adisutjipto', NULL, '087839112013', NULL, '0', NULL, NULL),
(25, 1, 7, 30, 1, NULL, 4, NULL, 33, 2, 7, 11, NULL, 1, 1, NULL, 1, NULL, 4, NULL, NULL, '1974-09-12', NULL, NULL, NULL, NULL, NULL, NULL, 160, 64, NULL, 'Erny Utaminingsih', NULL, '517420', 'Bintara Wara', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Jl. Mangga  RT 2 RW 56 Sambi Legi Kidul Maguwoharjo', NULL, '085742154502', NULL, '0', NULL, NULL),
(28, 1, 9, 27, 2, NULL, 1, 4, 37, 2, 7, 8, NULL, 1, 5, NULL, 1, NULL, 3, NULL, NULL, '1971-09-11', NULL, '1992-05-02', NULL, NULL, '2011-06-12', '2019-06-12', 160, 65, NULL, 'Dyah Lastiati', NULL, '516256', 'Seba PK', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Blok c47 Komplek Adisutjipto', NULL, '085717084771', NULL, '0', NULL, 'Akuntansi Keuangan'),
(29, 1, 7, 27, 2, 3, 4, NULL, 38, 1, 7, 8, NULL, 1, 1, NULL, 1, NULL, 5, NULL, NULL, '1970-05-18', NULL, '1992-05-01', NULL, NULL, NULL, NULL, 173, 90, NULL, 'Mugiyo prayitno', NULL, '516229', 'Secaba PK XII', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komlek TNI AU Blok M  55 Lanud Adisutjipto', NULL, '081319350324', NULL, '0', NULL, NULL),
(30, 3, 7, NULL, 1, NULL, 4, NULL, 43, 2, 7, 13, NULL, 1, 1, NULL, 5, NULL, 5, NULL, NULL, '1981-05-09', NULL, '2001-01-19', NULL, NULL, '2001-01-19', '2000-06-22', 165, 60, NULL, 'Caroline Since Uskono', NULL, '528005', 'Jakarta', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Komp.TNI AU AdisutjiptoBlok R -6', NULL, '087862173037', NULL, '0', NULL, NULL),
(31, 1, 7, 25, 4, NULL, 1, NULL, 49, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, 4, NULL, NULL, '1984-07-27', NULL, '2011-04-01', NULL, NULL, '2011-06-26', '2001-09-10', 160, 64, NULL, 'Eka Yuliatun,A.Md', NULL, '198407272010122003', 'CPNS', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Pondok II Widodomartani Ngemplak', NULL, '085600779031', NULL, '0', NULL, NULL),
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
(44, 1, NULL, 8, 2, 3, 3, 4, 61, 2, 7, 31, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '1982-04-24', NULL, '2007-12-01', NULL, NULL, '2017-06-22', '2004-06-01', 160, 54, NULL, 'Umi Rodiyah', NULL, '198204242007122001', 'Cpns', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU', 'MABESAU', 'Kadisimo Rt 17/07 Birit Wedi Klaten', NULL, '081288126345', NULL, '0', NULL, NULL);

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
(9, 19, 19, 1, '2014-07-27', '2013-07-21', 'RSPAU dr. S. Hardjolukito', 'Kep/25-T VIII/VIII/2014'),
(10, 20, 21, 1, '2003-12-01', '2004-12-01', 'DISADAAU', 'Kep/12-SID/ IV/2004'),
(11, 22, 23, 2, '2008-08-21', '2008-08-19', 'Wingdikum', 'Kep/143-TI/VIII/2008'),
(12, 22, 24, 1, '2008-12-24', '2008-12-22', 'Lanud Adi', 'Kep/58-T/VIII/XII/2008'),
(13, 22, 25, 1, '2017-11-30', '2017-11-30', 'Diskesau', 'Kep/30-VIII/XI/2017'),
(14, 23, 27, 1, '1998-10-23', '1998-10-23', 'slogau', '27-T VIII/X/1998'),
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
(29, 30, 48, 1, '2014-07-24', '2014-07-21', 'Diskesau', 'Kep/25-T VIII/VIII/2014');

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
(9, 16, '2002-01-31', 16),
(10, 19, '2013-11-13', 22),
(11, 19, '2017-04-01', 21),
(12, 20, '2003-12-01', 34),
(13, 21, '2015-10-09', 16),
(14, 22, '2008-08-21', 22),
(15, 22, '2011-10-01', 21),
(16, 22, '2015-10-01', 20),
(17, 23, '1998-01-09', 16),
(18, 25, '1993-03-20', 16),
(19, 25, '1997-10-01', 15),
(20, 25, '2001-10-01', 14),
(21, 25, '2006-10-01', 13),
(22, 25, '2011-10-01', 12),
(23, 25, '2015-10-01', 11),
(24, 30, '2001-01-19', 16),
(25, 30, '2005-04-01', 15),
(26, 30, '2010-04-01', 14),
(27, 30, '2015-04-01', 13);

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
(9, 16, 2001, 2002, '25', '2002-01-31', 'Semaba PK Wara'),
(10, 19, 2013, 2013, '65', '2013-11-13', 'Semata PK'),
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
(26, 30, 2004, 2004, '37', '2004-11-01', 'Susbabuk Kemhan');

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
(5, 16, 1988, 1994, 'SD', 'SD N Sorogenen 1'),
(6, 19, 2009, 2011, 'SMA', 'Budi Luhur Yogyakarta'),
(7, 19, 2006, 2009, 'SMP', 'SMP N 1 Berbah'),
(8, 19, 2000, 2006, 'SD', 'SD N Berbah 2'),
(9, 20, 1995, 1998, 'SMU N', 'SALAMAN'),
(10, 21, 2010, 2013, 'SMA', 'SMA N 23 Bandung'),
(11, 21, 2007, 2010, 'SMP', 'SMP N 45 Bandung'),
(12, 21, 2001, 2007, 'SD', 'SD N Griba 27 Bandung'),
(13, 22, 1993, 1999, 'SD', 'SDN JOMBLANG II'),
(14, 22, 1999, 2002, 'SMP', 'SLTP N BERBAH II'),
(15, 23, 1982, 1988, 'Sdn Bumiharjo', 'Bumiharjo'),
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
(29, 30, 1997, 2000, 'SMA', 'Mardi Yuana Serang');

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
(3, 23, 'Serda', NULL, 1998, 'Jakarta'),
(4, 23, 'Serka', NULL, 2019, 'Bandung'),
(5, 23, 'Serma', NULL, 2019, 'Bandung'),
(6, 23, 'Letda', NULL, 2019, 'Morotai'),
(7, 23, 'Letda', NULL, 2019, 'Yogyakarta'),
(8, 24, 'Serda', NULL, 1982, 'Bandung'),
(9, 24, 'Sertu', NULL, 1987, 'Jakarta'),
(10, 24, 'Letda', NULL, 1997, 'Yogyakarta'),
(11, 24, 'Lettu', NULL, 2019, 'Yogyakarta'),
(12, 24, 'Mayor', NULL, 2019, 'Yogyakarta'),
(13, 29, 'Staff Bendahara BRR Nad', NULL, 2019, 'Aceh');

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
(5, 29, 0000, 'Satyalencana Wira Dharma', '');

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
(43, 44, 2, NULL, '198204242007122001', 'Umi Rodiyah', 'Umirodiyah67@gmail.com', 1);

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
(40, 'b1feccc05ef693cd21a8b10b02bc20e5', 43, 1, NULL);

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `m_dikumti`
--
ALTER TABLE `m_dikumti`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `m_pangkat`
--
ALTER TABLE `m_pangkat`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `m_profesi`
--
ALTER TABLE `m_profesi`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_unit_kerja`
--
ALTER TABLE `m_unit_kerja`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan_militer`
--
ALTER TABLE `riwayat_pendidikan_militer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `riwayat_pendidikan_umum`
--
ALTER TABLE `riwayat_pendidikan_umum`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `riwayat_penugasan`
--
ALTER TABLE `riwayat_penugasan`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `riwayat_tanda_jasa`
--
ALTER TABLE `riwayat_tanda_jasa`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `validation_tokens`
--
ALTER TABLE `validation_tokens`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
  ADD CONSTRAINT `data_keluarga_ibfk_4` FOREIGN KEY (`id_tempat_lahir`) REFERENCES `m_kota` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_5` FOREIGN KEY (`id_tempat_menikah`) REFERENCES `m_kota` (`id`),
  ADD CONSTRAINT `data_keluarga_ibfk_6` FOREIGN KEY (`id_suku`) REFERENCES `m_suku` (`id`),
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
