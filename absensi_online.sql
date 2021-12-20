-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 05:19 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_absensi`
--

CREATE TABLE `db_absensi` (
  `id_absen` bigint(20) NOT NULL,
  `kode_absen` varchar(100) NOT NULL,
  `nama_pegawai` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `tgl_absen` varchar(125) NOT NULL,
  `jam_masuk` varchar(13) NOT NULL,
  `jam_pulang` varchar(13) NOT NULL,
  `status_pegawai` int(1) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `maps_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_absensi`
--

INSERT INTO `db_absensi` (`id_absen`, `kode_absen`, `nama_pegawai`, `kode_pegawai`, `tgl_absen`, `jam_masuk`, `jam_pulang`, `status_pegawai`, `keterangan_absen`, `maps_absen`) VALUES
(5, 'absen_20211182242', 'Fajri Jeisyazidan Albarda', '963106847517542', 'Selasa, 30 November 2021', '14:09:10', '16:52:48', 2, 'Bekerja Di Kantor', 'No Location'),
(6, 'absen_20211156005', 'Umar', '650385712896324', 'Selasa, 30 November 2021', '14:09:41', '', 2, 'Bekerja Di Kantor', 'No Location'),
(7, 'absen_20211149489', 'Muhamad Rifki Adnan', '293571010111', 'Selasa, 30 November 2021', '14:23:40', '', 2, 'Hadir', 'No Location'),
(8, 'absen_20211292100', 'Umar', '650385712896324', 'Rabu, 1 Desember 2021', '10:08:25', '', 2, 'Hadir', 'No Location');

-- --------------------------------------------------------

--
-- Table structure for table `db_rememberme`
--

CREATE TABLE `db_rememberme` (
  `id_session` int(11) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_agent` varchar(35) NOT NULL,
  `agent_string` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `user_ip` varchar(35) NOT NULL,
  `cookie_hash` varchar(255) NOT NULL,
  `expired` int(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `db_setting`
--

CREATE TABLE `db_setting` (
  `status_setting` int(1) NOT NULL DEFAULT 0,
  `nama_instansi` varchar(255) NOT NULL,
  `jumbotron_lead_set` varchar(125) NOT NULL,
  `nama_app_absensi` varchar(20) NOT NULL DEFAULT 'Absensi Online',
  `logo_instansi` varchar(255) NOT NULL,
  `timezone` varchar(35) NOT NULL,
  `absen_mulai` varchar(13) NOT NULL,
  `absen_mulai_to` varchar(13) NOT NULL,
  `absen_pulang` varchar(13) NOT NULL,
  `maps_use` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_setting`
--

INSERT INTO `db_setting` (`status_setting`, `nama_instansi`, `jumbotron_lead_set`, `nama_app_absensi`, `logo_instansi`, `timezone`, `absen_mulai`, `absen_mulai_to`, `absen_pulang`, `maps_use`) VALUES
(1, 'Lab ICT [Universitas Budi Luhur]', 'Bersama Kita Bisa', 'Lab ICT', '2fcba1554d5523b9738d5a98ec6f257b.png', 'Asia/Jakarta', '06:00:00', '08:00:00', '16:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `umur` int(11) NOT NULL,
  `image` varchar(125) NOT NULL,
  `qr_code_image` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `instansi` varchar(125) NOT NULL,
  `jabatan` varchar(125) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `is_active` int(1) NOT NULL,
  `qr_code_use` int(2) NOT NULL,
  `last_login` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `role_id`, `umur`, `image`, `qr_code_image`, `kode_pegawai`, `instansi`, `jabatan`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `is_active`, `qr_code_use`, `last_login`, `date_created`) VALUES
(12, 'Muhamad Rifki Adnan', 'rifki', '$2y$10$ptl26Gtjp7DU/MKdPATda.1lbegea0ORaSXJk7ONp4ipLESxiWb6C', 1, 21, 'default.png', 'qr_code_293571010111.png', '293571010111', 'Lab ICT [Universitas Budi Luhur]', 'Supervisor Jaringan', '2001-02-24', 'Tangerang', 'Laki - Laki', 1, 1, 1638339368, 1584698797),
(48, 'Fajri Jeisyazidan Albarda', 'Fajri', '$2y$10$YoIG90YsT6MKjIlIn5yI2udfV9gAwLMI99lmhfKpZqJYQZPNTimBy', 2, 20, 'default.png', 'qr_code_963106847517542.png', '963106847517542', 'Lab ICT [Universitas Budi Luhur]', 'Asisten Lab', '2001-11-25', 'Jakarta', 'Laki - Laki', 1, 1, 1638365605, 1638160718),
(49, 'Diana Fidia', 'diana', '$2y$10$x6eRVvWJPETvxxT7pa2ay.0.qp6xevD.Mnh0U6h80eGa4U9oKCbMC', 3, 19, 'default.png', 'qr_code_076485364298297.png', '076485364298297', 'Lab ICT [Universitas Budi Luhur]', 'Calon Asisten Lab', '2002-10-16', 'Tangerang', 'Perempuan', 1, 1, 0, 1638160921),
(50, 'Sanding Riyanto', 'sanding', '$2y$10$K4S6BOchOUZDh9OTIbpicOVXsBV3toPnlmFhzRJB0uzVrJekXA.2i', 1, 21, 'default.png', 'qr_code_801756073249824.png', '801756073249824', 'Lab ICT [Universitas Budi Luhur]', 'Supervison Calas &amp; Kedisiplinan', '2021-11-19', 'Banyumas', 'Laki - Laki', 1, 1, 1638256474, 1638167366),
(51, 'Umar', 'umar', '$2y$10$5gtYOTZah5oBnQ5a.BVvtOksyO8iQD7Oo8TbJ1qpdTXR881pZFN0i', 3, 19, 'default.png', 'qr_code_650385712896324.png', '650385712896324', 'Lab ICT [Universitas Budi Luhur]', 'Calon Asisten Lab', '2021-11-18', 'jakarta', 'Laki - Laki', 1, 1, 1638330334, 1638255926);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_absensi`
--
ALTER TABLE `db_absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `db_rememberme`
--
ALTER TABLE `db_rememberme`
  ADD PRIMARY KEY (`id_session`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_absensi`
--
ALTER TABLE `db_absensi`
  MODIFY `id_absen` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_rememberme`
--
ALTER TABLE `db_rememberme`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
