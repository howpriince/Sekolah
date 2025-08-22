-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2025 at 05:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(20) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
('ADM001', 'admin', 'admin', '$2y$10$30hvBRr5rokBui15R1M1VeztOyAUA1W3D1I4pV4EoVraINow6KAni');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nuptk` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `gelar` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` enum('Aktif','Cuti','Tidak Aktif') NOT NULL,
  `tgl_masuk` date NOT NULL,
  `pendidikan_terakhir` enum('SMA/Sederajat','D1','D2','D3','D4','S1','S2','S3') NOT NULL,
  `riwayat_pendidikan` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nuptk`, `nama_lengkap`, `gelar`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `email`, `no_hp`, `status`, `tgl_masuk`, `pendidikan_terakhir`, `riwayat_pendidikan`, `foto`, `created_at`, `updated_at`) VALUES
(2, '197912120002', '123456789013', 'Maria Kristina', 'M.Pd', 'Bandung', '1979-12-12', 'P', 'Kristen', 'Jl. Mawar No.5, Karawaci, Tangerang', 'maria.kristina@example.com', '081234567891', 'Aktif', '2008-03-20', 'S2', 'S1 Sastra Inggris - Universitas Indonesia; S2 Pendidikan Bahasa Inggris - UPI', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(3, '198802150003', '123456789014', 'Siti Rahmawati', 'S.Pd', 'Bogor', '1988-02-15', 'P', 'Islam', 'Jl. Dahlia No.3, Karawaci, Tangerang', 'siti.rahma@example.com', '081234567892', 'Aktif', '2012-01-05', 'S1', 'S1 Pendidikan Bahasa Indonesia - Universitas Negeri Jakarta', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(4, '198305220004', '123456789015', 'Andi Pratama', 'S.Pd', 'Surabaya', '1983-05-22', 'L', 'Katolik', 'Jl. Anggrek No.7, Karawaci, Tangerang', 'andi.pratama@example.com', '081234567893', 'Aktif', '2009-06-01', 'S1', 'S1 Pendidikan IPA - Universitas Negeri Surabaya', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(5, '198701050005', '123456789016', 'Ketut Arya Putra', 'S.Pd', 'Denpasar', '1987-01-05', 'L', 'Hindu', 'Jl. Flamboyan No.10, Karawaci, Tangerang', 'ketut.arya@example.com', '081234567894', 'Aktif', '2011-08-18', 'S1', 'S1 Pendidikan IPS - Universitas Pendidikan Ganesha', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(6, '198411300006', '123456789017', 'Lina Wijayanti', 'S.Pd', 'Semarang', '1984-11-30', 'P', 'Buddha', 'Jl. Kenanga No.2, Karawaci, Tangerang', 'lina.wijayanti@example.com', '081234567895', 'Aktif', '2007-09-12', 'S1', 'S1 Pendidikan Agama Buddha - STAB Nalanda', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(7, '197805180007', '123456789018', 'Hendra Gunawan', 'M.Pd', 'Medan', '1978-05-18', 'L', 'Kristen', 'Jl. Teratai No.8, Karawaci, Tangerang', 'hendra.gunawan@example.com', '081234567896', 'Aktif', '2005-02-14', 'S2', 'S1 Ilmu Politik - Universitas Sumatera Utara; S2 Pendidikan PPKn - UNIMED', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(8, '198909250008', '123456789019', 'Rina Melati', 'S.Pd', 'Palembang', '1989-09-25', 'P', 'Islam', 'Jl. Cempaka No.4, Karawaci, Tangerang', 'rina.melati@example.com', '081234567897', 'Aktif', '2014-04-22', 'S1', 'S1 Pendidikan Seni - Universitas Sriwijaya', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(9, '198212140009', '123456789020', 'Surya Dharma', 'S.Pd', 'Padang', '1982-12-14', 'L', 'Buddha', 'Jl. Bougenville No.6, Karawaci, Tangerang', 'surya.dharma@example.com', '081234567898', 'Aktif', '2008-11-17', 'S1', 'S1 Pendidikan Jasmani - Universitas Negeri Padang', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(10, '198605030010', '123456789021', 'Anita Dewi', 'S.Pd', 'Malang', '1986-05-03', 'P', 'Katolik', 'Jl. Wijaya Kusuma No.9, Karawaci, Tangerang', 'anita.dewi@example.com', '081234567899', 'Aktif', '2013-05-10', 'S1', 'S1 Pendidikan Kesejahteraan Keluarga - Universitas Negeri Malang', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(11, '198001270011', '123456789022', 'Bayu Saputra', 'S.Pd', 'Pontianak', '1980-01-27', 'L', 'Konghucu', 'Jl. Kemuning No.11, Karawaci, Tangerang', 'bayu.saputra@example.com', '081234567900', 'Aktif', '2006-03-08', 'S1', 'S1 Teknik Informatika - Universitas Tanjungpura', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(12, '198704170012', '123456789023', 'Dewi Anggraini', 'M.Pd', 'Yogyakarta', '1987-04-17', 'P', 'Islam', 'Jl. Puspa Indah No.13, Karawaci, Tangerang', 'dewi.anggraini@example.com', '081234567901', 'Aktif', '2012-09-27', 'S2', 'S1 Pendidikan Matematika - UNY; S2 Pendidikan - UGM', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(13, '197911050013', '123456789024', 'Agus Salim', 'S.Pd', 'Banjarmasin', '1979-11-05', 'L', 'Islam', 'Jl. Melur No.14, Karawaci, Tangerang', 'agus.salim@example.com', '081234567902', 'Aktif', '2004-08-19', 'S1', 'S1 Pendidikan Bahasa Indonesia - Universitas Lambung Mangkurat', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(14, '198302090014', '123456789025', 'Ratna Sari', 'S.Pd', 'Makassar', '1983-02-09', 'P', 'Kristen', 'Jl. Cemara No.15, Karawaci, Tangerang', 'ratna.sari@example.com', '081234567903', 'Aktif', '2009-12-30', 'S1', 'S1 Pendidikan IPA - Universitas Negeri Makassar', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14'),
(15, '198605200015', '123456789026', 'Yusuf Maulana', 'S.Pd', 'Cirebon', '1986-05-20', 'L', 'Islam', 'Jl. Rambutan No.16, Karawaci, Tangerang', 'yusuf.maulana@example.com', '081234567904', 'Aktif', '2011-07-11', 'S1', 'S1 Pendidikan IPS - IAIN Syekh Nurjati', 'default.png', '2025-08-10 09:12:14', '2025-08-10 09:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `wali_kelas` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kelas`, `semester`, `tahun_ajaran`, `wali_kelas`, `created_at`) VALUES
(1, 1, '1', '2023/2024', 3, '2025-08-22 01:57:45'),
(3, 2, '1', '2023/2024', 2, '2025-08-21 20:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_detail`
--

CREATE TABLE `jadwal_detail` (
  `id_detail` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_detail`
--

INSERT INTO `jadwal_detail` (`id_detail`, `id_jadwal`, `hari`, `jam_mulai`, `jam_selesai`, `id_mapel`, `id_guru`) VALUES
(8, 1, 'Senin', '07:00:00', '07:45:00', 1, 11),
(9, 1, 'Selasa', '07:00:00', '07:45:00', 1, 11),
(10, 1, 'Rabu', '07:00:00', '07:45:00', 1, 10),
(11, 3, 'Senin', '07:00:00', '07:45:00', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `id_tingkat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_tingkat`) VALUES
(1, 'VII A', 7),
(2, 'VII B', 7),
(3, 'VIII A', 8),
(4, 'VIII B', 8),
(5, 'IX A', 9),
(6, 'IX B', 9);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `jenis` enum('Wajib','Pilihan','Muatan Lokal') NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `jp` int(3) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `status` enum('Aktif','Non-Aktif') DEFAULT 'Aktif',
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `jenis`, `id_tingkat`, `jp`, `id_guru`, `status`, `deskripsi`) VALUES
(1, 'MTK1', 'Matematika 1', 'Wajib', 7, 4, 15, 'Aktif', 'Ngitung BOSSS');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `uh1` decimal(5,2) DEFAULT NULL,
  `uh2` decimal(5,2) DEFAULT NULL,
  `uh3` decimal(5,2) DEFAULT NULL,
  `uts` decimal(5,2) DEFAULT NULL,
  `uas` decimal(5,2) DEFAULT NULL,
  `nilai_akhir` decimal(5,2) DEFAULT NULL,
  `predikat` enum('A','B','C','D','E') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_siswa`, `id_mapel`, `id_kelas`, `semester`, `tahun_ajaran`, `uh1`, `uh2`, `uh3`, `uts`, `uas`, `nilai_akhir`, `predikat`) VALUES
(2, 1, 1, 1, '1', '20203/202', '85.00', '85.00', '85.00', '84.00', '99.00', '87.60', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `no_telp_ortu` varchar(20) NOT NULL,
  `alamat_ortu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nisn`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `id_kelas`, `tahun_masuk`, `foto`, `nama_ortu`, `no_telp_ortu`, `alamat_ortu`) VALUES
(1, '2023001', '1234567890', 'Rizky Saputra', 'L', 'Tangerang', '2010-04-12', 'Islam', 'Jl. Melati No.5, Karawaci, Tangerang', 1, 2023, NULL, 'Budi Saputra', '081234567890', 'Jl. Melati No.5, Karawaci, Tangerang'),
(2, '2023002', '2234567890', 'Dewi Lestari', 'P', 'Jakarta', '2010-09-05', 'Kristen', 'Jl. Kenanga No.12, Karawaci, Tangerang', 1, 2023, NULL, 'Sutrisno Lestari', '081234567891', 'Jl. Kenanga No.12, Karawaci, Tangerang'),
(3, '2023003', '3234567890', 'Ahmad Fauzan', 'L', 'Serang', '2010-06-21', 'Katolik', 'Jl. Dahlia No.8, Karawaci, Tangerang', 1, 2023, NULL, 'Fauzi Hidayat', '081234567892', 'Jl. Dahlia No.8, Karawaci, Tangerang'),
(4, '2023004', '4234567890', 'Putri Ayu', 'P', 'Tangerang', '2010-02-17', 'Hindu', 'Jl. Anggrek No.3, Karawaci, Tangerang', 1, 2023, NULL, 'Ahmad Yani', '081234567893', 'Jl. Anggrek No.3, Karawaci, Tangerang'),
(5, '2023005', '5234567890', 'Fajar Pratama', 'L', 'Jakarta', '2010-11-30', 'Buddha', 'Jl. Flamboyan No.20, Karawaci, Tangerang', 1, 2023, NULL, 'Prasetyo', '081234567894', 'Jl. Flamboyan No.20, Karawaci, Tangerang'),
(6, '2023006', '6234567890', 'Siti Nurhaliza', 'P', 'Bogor', '2010-07-25', 'Konghucu', 'Jl. Mawar No.1, Karawaci, Tangerang', 1, 2023, NULL, 'Ahmad Fauzi', '081234567895', 'Jl. Mawar No.1, Karawaci, Tangerang'),
(7, '2023007', '7234567890', 'Agus Salim', 'L', 'Depok', '2010-05-13', 'Islam', 'Jl. Teratai No.15, Karawaci, Tangerang', 1, 2023, NULL, 'Salim Hidayat', '081234567896', 'Jl. Teratai No.15, Karawaci, Tangerang'),
(8, '2023008', '8234567890', 'Citra Dewi', 'P', 'Tangerang', '2010-08-09', 'Kristen', 'Jl. Cempaka No.7, Karawaci, Tangerang', 1, 2023, NULL, 'Bambang Supriyadi', '081234567897', 'Jl. Cempaka No.7, Karawaci, Tangerang'),
(9, '2023009', '9234567890', 'Dani Saputra', 'L', 'Bekasi', '2010-03-22', 'Katolik', 'Jl. Kemuning No.18, Karawaci, Tangerang', 1, 2023, NULL, 'Saputra Hadi', '081234567898', 'Jl. Kemuning No.18, Karawaci, Tangerang'),
(10, '2023010', '1334567890', 'Nisa Amelia', 'P', 'Serang', '2010-01-15', 'Hindu', 'Jl. Bougenville No.4, Karawaci, Tangerang', 1, 2023, NULL, 'Amiruddin', '081234567899', 'Jl. Bougenville No.4, Karawaci, Tangerang'),
(11, '2023011', '1434567890', 'Rama Prasetya', 'L', 'Tangerang', '2010-09-19', 'Buddha', 'Jl. Angsana No.2, Karawaci, Tangerang', 2, 2023, NULL, 'Prasetya Hadi', '081234567800', 'Jl. Angsana No.2, Karawaci, Tangerang'),
(12, '2023012', '1534567890', 'Lina Marlina', 'P', 'Jakarta', '2010-12-05', 'Konghucu', 'Jl. Pinus No.6, Karawaci, Tangerang', 2, 2023, NULL, 'Marlina Yusup', '081234567801', 'Jl. Pinus No.6, Karawaci, Tangerang'),
(13, '2023013', '1634567890', 'Bagus Santoso', 'L', 'Bogor', '2010-04-14', 'Islam', 'Jl. Mahoni No.11, Karawaci, Tangerang', 2, 2023, NULL, 'Santoso', '081234567802', 'Jl. Mahoni No.11, Karawaci, Tangerang'),
(14, '2023014', '1734567890', 'Vina Agustina', 'P', 'Bekasi', '2010-10-25', 'Kristen', 'Jl. Beringin No.14, Karawaci, Tangerang', 2, 2023, NULL, 'Agus Hidayat', '081234567803', 'Jl. Beringin No.14, Karawaci, Tangerang'),
(15, '2023015', '1834567890', 'Dian Pratama', 'L', 'Depok', '2010-08-01', 'Katolik', 'Jl. Kenari No.9, Karawaci, Tangerang', 2, 2023, NULL, 'Pratama', '081234567804', 'Jl. Kenari No.9, Karawaci, Tangerang'),
(16, '2023016', '1934567890', 'Sari Lestari', 'P', 'Tangerang', '2010-06-18', 'Hindu', 'Jl. Waru No.10, Karawaci, Tangerang', 2, 2023, NULL, 'Lestari', '081234567805', 'Jl. Waru No.10, Karawaci, Tangerang'),
(17, '2023017', '2034567890', 'Andi Firmansyah', 'L', 'Jakarta', '2010-07-11', 'Buddha', 'Jl. Jati No.13, Karawaci, Tangerang', 2, 2023, NULL, 'Firmansyah', '081234567806', 'Jl. Jati No.13, Karawaci, Tangerang'),
(18, '2023018', '2134567890', 'Rani Amelia', 'P', 'Serang', '2010-02-02', 'Konghucu', 'Jl. Sawo No.19, Karawaci, Tangerang', 2, 2023, NULL, 'Amelia', '081234567807', 'Jl. Sawo No.19, Karawaci, Tangerang'),
(19, '2023019', '2234567890', 'Ilham Saputra', 'L', 'Tangerang', '2010-05-23', 'Islam', 'Jl. Sengon No.16, Karawaci, Tangerang', 2, 2023, NULL, 'Saputra', '081234567808', 'Jl. Sengon No.16, Karawaci, Tangerang'),
(20, '2023020', '2334567890', 'Nadia Putri', 'P', 'Bekasi', '2010-03-27', 'Kristen', 'Jl. Karet No.17, Karawaci, Tangerang', 2, 2023, NULL, 'Putri', '081234567809', 'Jl. Karet No.17, Karawaci, Tangerang'),
(21, '2023021', '2434567890', 'Yusuf Maulana', 'L', 'Tangerang', '2009-09-15', 'Katolik', 'Jl. Mawar Indah No.5, Karawaci, Tangerang', 3, 2024, NULL, 'Maulana Hidayat', '081234567810', 'Jl. Mawar Indah No.5, Karawaci, Tangerang'),
(22, '2023022', '2534567890', 'Salsa Fitriani', 'P', 'Jakarta', '2009-12-02', 'Hindu', 'Jl. Kenanga Indah No.2, Karawaci, Tangerang', 3, 2024, NULL, 'Fitriani Anwar', '081234567811', 'Jl. Kenanga Indah No.2, Karawaci, Tangerang'),
(23, '2023023', '2634567890', 'Farhan Ramadhan', 'L', 'Bogor', '2009-05-28', 'Buddha', 'Jl. Anggrek Indah No.7, Karawaci, Tangerang', 3, 2024, NULL, 'Ramadhan', '081234567812', 'Jl. Anggrek Indah No.7, Karawaci, Tangerang'),
(24, '2023024', '2734567890', 'Laras Puspita', 'P', 'Bekasi', '2009-06-14', 'Konghucu', 'Jl. Melati Raya No.3, Karawaci, Tangerang', 3, 2024, NULL, 'Puspita Sari', '081234567813', 'Jl. Melati Raya No.3, Karawaci, Tangerang'),
(25, '2023025', '2834567890', 'Hendra Wijaya', 'L', 'Serang', '2009-07-21', 'Islam', 'Jl. Flamboyan Raya No.12, Karawaci, Tangerang', 3, 2024, NULL, 'Wijaya', '081234567814', 'Jl. Flamboyan Raya No.12, Karawaci, Tangerang'),
(26, '2023026', '2934567890', 'Novi Anggraini', 'P', 'Tangerang', '2009-11-09', 'Kristen', 'Jl. Cempaka Raya No.8, Karawaci, Tangerang', 3, 2024, NULL, 'Anggraini', '081234567815', 'Jl. Cempaka Raya No.8, Karawaci, Tangerang'),
(27, '2023027', '3034567890', 'Rahmat Hidayat', 'L', 'Depok', '2009-04-19', 'Katolik', 'Jl. Teratai Raya No.15, Karawaci, Tangerang', 3, 2024, NULL, 'Hidayat', '081234567816', 'Jl. Teratai Raya No.15, Karawaci, Tangerang'),
(28, '2023028', '3134567890', 'Cindy Amelia', 'P', 'Jakarta', '2009-02-05', 'Hindu', 'Jl. Bougenville Raya No.4, Karawaci, Tangerang', 3, 2024, NULL, 'Amelia', '081234567817', 'Jl. Bougenville Raya No.4, Karawaci, Tangerang'),
(29, '2023029', '3234567890', 'Arif Setiawan', 'L', 'Bogor', '2009-03-27', 'Buddha', 'Jl. Angsana Raya No.10, Karawaci, Tangerang', 3, 2024, NULL, 'Setiawan', '081234567818', 'Jl. Angsana Raya No.10, Karawaci, Tangerang'),
(30, '2023030', '3334567890', 'Sinta Permata', 'P', 'Bekasi', '2009-01-11', 'Konghucu', 'Jl. Pinus Raya No.9, Karawaci, Tangerang', 3, 2024, NULL, 'Permata', '081234567819', 'Jl. Pinus Raya No.9, Karawaci, Tangerang'),
(31, '2023031', '3434567890', 'Dedi Kurniawan', 'L', 'Tangerang', '2009-08-13', 'Islam', 'Jl. Mahoni Raya No.1, Karawaci, Tangerang', 4, 2024, NULL, 'Kurniawan', '081234567820', 'Jl. Mahoni Raya No.1, Karawaci, Tangerang'),
(32, '2023032', '3534567890', 'Tania Putri', 'P', 'Jakarta', '2009-10-03', 'Kristen', 'Jl. Beringin Raya No.6, Karawaci, Tangerang', 4, 2024, NULL, 'Putri', '081234567821', 'Jl. Beringin Raya No.6, Karawaci, Tangerang'),
(33, '2023033', '3634567890', 'Rizal Firmansyah', 'L', 'Bogor', '2009-05-07', 'Katolik', 'Jl. Kenari Raya No.12, Karawaci, Tangerang', 4, 2024, NULL, 'Firmansyah', '081234567822', 'Jl. Kenari Raya No.12, Karawaci, Tangerang'),
(34, '2023034', '3734567890', 'Ayu Safitri', 'P', 'Bekasi', '2009-06-15', 'Hindu', 'Jl. Waru Raya No.3, Karawaci, Tangerang', 4, 2024, NULL, 'Safitri', '081234567823', 'Jl. Waru Raya No.3, Karawaci, Tangerang'),
(35, '2023035', '3834567890', 'Imam Santoso', 'L', 'Serang', '2009-07-09', 'Buddha', 'Jl. Jati Raya No.14, Karawaci, Tangerang', 4, 2024, NULL, 'Santoso', '081234567824', 'Jl. Jati Raya No.14, Karawaci, Tangerang'),
(36, '2023036', '3934567890', 'Mega Andriani', 'P', 'Tangerang', '2009-12-29', 'Konghucu', 'Jl. Sawo Raya No.8, Karawaci, Tangerang', 4, 2024, NULL, 'Andriani', '081234567825', 'Jl. Sawo Raya No.8, Karawaci, Tangerang'),
(37, '2023037', '4034567890', 'Taufik Hidayat', 'L', 'Depok', '2009-04-12', 'Islam', 'Jl. Sengon Raya No.16, Karawaci, Tangerang', 4, 2024, NULL, 'Hidayat', '081234567826', 'Jl. Sengon Raya No.16, Karawaci, Tangerang'),
(38, '2023038', '4134567890', 'Vera Lestari', 'P', 'Jakarta', '2009-09-20', 'Kristen', 'Jl. Karet Raya No.5, Karawaci, Tangerang', 4, 2024, NULL, 'Lestari', '081234567827', 'Jl. Karet Raya No.5, Karawaci, Tangerang'),
(39, '2023039', '4234567890', 'Gilang Saputra', 'L', 'Bogor', '2009-03-17', 'Katolik', 'Jl. Melinjo Raya No.18, Karawaci, Tangerang', 4, 2024, NULL, 'Saputra', '081234567828', 'Jl. Melinjo Raya No.18, Karawaci, Tangerang'),
(40, '2023040', '4334567890', 'Maya Aprilia', 'P', 'Bekasi', '2009-01-28', 'Hindu', 'Jl. Durian Raya No.11, Karawaci, Tangerang', 4, 2024, NULL, 'Aprilia', '081234567829', 'Jl. Durian Raya No.11, Karawaci, Tangerang'),
(41, '2023041', '4434567890', 'Eko Prasetyo', 'L', 'Tangerang', '2008-09-04', 'Buddha', 'Jl. Jeruk Raya No.7, Karawaci, Tangerang', 5, 2025, NULL, 'Prasetyo', '081234567830', 'Jl. Jeruk Raya No.7, Karawaci, Tangerang'),
(42, '2023042', '4534567890', 'Intan Sari', 'P', 'Jakarta', '2008-12-01', 'Konghucu', 'Jl. Salak Raya No.4, Karawaci, Tangerang', 5, 2025, NULL, 'Sari', '081234567831', 'Jl. Salak Raya No.4, Karawaci, Tangerang'),
(43, '2023043', '4634567890', 'Adi Saputra', 'L', 'Bogor', '2008-05-16', 'Islam', 'Jl. Rambutan Raya No.15, Karawaci, Tangerang', 5, 2025, NULL, 'Saputra', '081234567832', 'Jl. Rambutan Raya No.15, Karawaci, Tangerang'),
(44, '2023044', '4734567890', 'Ratna Dewi', 'P', 'Bekasi', '2008-06-21', 'Kristen', 'Jl. Nangka Raya No.10, Karawaci, Tangerang', 5, 2025, NULL, 'Dewi', '081234567833', 'Jl. Nangka Raya No.10, Karawaci, Tangerang'),
(45, '2023045', '4834567890', 'Budi Santoso', 'L', 'Serang', '2008-07-13', 'Katolik', 'Jl. Mangga Raya No.6, Karawaci, Tangerang', 5, 2025, NULL, 'Santoso', '081234567834', 'Jl. Mangga Raya No.6, Karawaci, Tangerang'),
(46, '2023046', '4934567890', 'Nina Lestari', 'P', 'Tangerang', '2008-11-27', 'Hindu', 'Jl. Pepaya Raya No.12, Karawaci, Tangerang', 5, 2025, NULL, 'Lestari', '081234567835', 'Jl. Pepaya Raya No.12, Karawaci, Tangerang'),
(47, '2023047', '5034567890', 'Andri Wijaya', 'L', 'Depok', '2008-04-18', 'Buddha', 'Jl. Kedondong Raya No.2, Karawaci, Tangerang', 5, 2025, NULL, 'Wijaya', '081234567836', 'Jl. Kedondong Raya No.2, Karawaci, Tangerang'),
(48, '2023048', '5134567890', 'Siska Amelia', 'P', 'Jakarta', '2008-02-09', 'Konghucu', 'Jl. Pisang Raya No.14, Karawaci, Tangerang', 5, 2025, NULL, 'Amelia', '081234567837', 'Jl. Pisang Raya No.14, Karawaci, Tangerang'),
(49, '2023049', '5234567890', 'Yudi Hidayat', 'L', 'Bogor', '2008-03-25', 'Islam', 'Jl. Kelapa Raya No.8, Karawaci, Tangerang', 5, 2025, NULL, 'Hidayat', '081234567838', 'Jl. Kelapa Raya No.8, Karawaci, Tangerang'),
(50, '2023050', '5334567890', 'Rina Pertiwi', 'P', 'Bekasi', '2008-01-05', 'Kristen', 'Jl. Durian Raya No.9, Karawaci, Tangerang', 5, 2025, NULL, 'Pertiwi', '081234567839', 'Jl. Durian Raya No.9, Karawaci, Tangerang'),
(51, '2023051', '5434567890', 'Heri Gunawan', 'L', 'Tangerang', '2008-08-08', 'Katolik', 'Jl. Jambu Raya No.5, Karawaci, Tangerang', 6, 2025, NULL, 'Gunawan', '081234567840', 'Jl. Jambu Raya No.5, Karawaci, Tangerang'),
(52, '2023052', '5534567890', 'Fitri Handayani', 'P', 'Jakarta', '2008-10-14', 'Hindu', 'Jl. Sirsak Raya No.7, Karawaci, Tangerang', 6, 2025, NULL, 'Handayani', '081234567841', 'Jl. Sirsak Raya No.7, Karawaci, Tangerang'),
(53, '2023053', '5634567890', 'Fahmi Ramadhan', 'L', 'Bogor', '2008-05-19', 'Buddha', 'Jl. Pepaya Raya No.3, Karawaci, Tangerang', 6, 2025, NULL, 'Ramadhan', '081234567842', 'Jl. Pepaya Raya No.3, Karawaci, Tangerang'),
(54, '2023054', '5734567890', 'Tika Anggraini', 'P', 'Bekasi', '2008-06-12', 'Konghucu', 'Jl. Manggis Raya No.8, Karawaci, Tangerang', 6, 2025, NULL, 'Anggraini', '081234567843', 'Jl. Manggis Raya No.8, Karawaci, Tangerang'),
(55, '2023055', '5834567890', 'Rio Saputra', 'L', 'Serang', '2008-07-30', 'Islam', 'Jl. Kedondong Raya No.9, Karawaci, Tangerang', 6, 2025, NULL, 'Saputra', '081234567844', 'Jl. Kedondong Raya No.9, Karawaci, Tangerang'),
(56, '2023056', '5934567890', 'Wulan Permata', 'P', 'Tangerang', '2008-11-06', 'Kristen', 'Jl. Nangka Raya No.15, Karawaci, Tangerang', 6, 2025, NULL, 'Permata', '081234567845', 'Jl. Nangka Raya No.15, Karawaci, Tangerang'),
(57, '2023057', '6034567890', 'Anwar Hidayat', 'L', 'Depok', '2008-04-02', 'Katolik', 'Jl. Rambutan Raya No.17, Karawaci, Tangerang', 6, 2025, NULL, 'Hidayat', '081234567846', 'Jl. Rambutan Raya No.17, Karawaci, Tangerang'),
(58, '2023058', '6134567890', 'Mira Lestari', 'P', 'Jakarta', '2008-02-22', 'Hindu', 'Jl. Jeruk Raya No.13, Karawaci, Tangerang', 6, 2025, NULL, 'Lestari', '081234567847', 'Jl. Jeruk Raya No.13, Karawaci, Tangerang'),
(59, '2023059', '6234567890', 'Fikri Wijaya', 'L', 'Bogor', '2008-03-11', 'Buddha', 'Jl. Salak Raya No.12, Karawaci, Tangerang', 6, 2025, NULL, 'Wijaya', '081234567848', 'Jl. Salak Raya No.12, Karawaci, Tangerang'),
(60, '2023060', '6334567890', 'Dian Amelia', 'P', 'Bekasi', '2008-01-09', 'Konghucu', 'Jl. Pisang Raya No.6, Karawaci, Tangerang', 6, 2025, NULL, 'Amelia', '081234567849', 'Jl. Pisang Raya No.6, Karawaci, Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `tingkat`
--

CREATE TABLE `tingkat` (
  `id_tingkat` int(11) NOT NULL,
  `nama_tingkat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkat`
--

INSERT INTO `tingkat` (`id_tingkat`, `nama_tingkat`) VALUES
(7, 'VII'),
(8, 'VIII'),
(9, 'IX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_wali_kelas` (`wali_kelas`);

--
-- Indexes for table `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indexes for table `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`wali_kelas`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  ADD CONSTRAINT `jadwal_detail_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_detail_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
