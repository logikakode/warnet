-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2014 at 01:33 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_warnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE IF NOT EXISTS `gedung` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`kelas`, `nominal`) VALUES
('A', '20000000'),
('B', '17000000'),
('C', '14000000'),
('D', '10000000'),
('E', '5000000');

-- --------------------------------------------------------

--
-- Table structure for table `headset`
--

CREATE TABLE IF NOT EXISTS `headset` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headset`
--

INSERT INTO `headset` (`kelas`, `nominal`) VALUES
('A', '238000'),
('B', '140000'),
('C', '85000'),
('D', '79000');

-- --------------------------------------------------------

--
-- Table structure for table `komputer`
--

CREATE TABLE IF NOT EXISTS `komputer` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komputer`
--

INSERT INTO `komputer` (`kelas`, `nominal`) VALUES
('A', '3405000'),
('B', '2700000'),
('C', '2550000');

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE IF NOT EXISTS `printer` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`kelas`, `nominal`) VALUES
('A', '2293000'),
('B', '1770000'),
('C', '1286000');

-- --------------------------------------------------------

--
-- Table structure for table `renovasi`
--

CREATE TABLE IF NOT EXISTS `renovasi` (
  `kelas` varchar(5) DEFAULT NULL,
  `nominal` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renovasi`
--

INSERT INTO `renovasi` (`kelas`, `nominal`) VALUES
('A', '5000000'),
('B', '3500000'),
('C', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE IF NOT EXISTS `speaker` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`kelas`, `nominal`) VALUES
('A', '625000'),
('B', '427500'),
('C', '303500');

-- --------------------------------------------------------

--
-- Table structure for table `speedy`
--

CREATE TABLE IF NOT EXISTS `speedy` (
  `kelas` varchar(5) NOT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speedy`
--

INSERT INTO `speedy` (`kelas`, `nominal`) VALUES
('A', '5495000'),
('B', '2795000'),
('C', '1895000'),
('D', '995000'),
('E', '695000'),
('F', '3200000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dana_awal`
--

CREATE TABLE IF NOT EXISTS `tbl_dana_awal` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(100) DEFAULT NULL,
  `kelas` varchar(45) DEFAULT NULL,
  `jumlah` varchar(45) DEFAULT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  `id` varchar(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_dana_awal`
--

INSERT INTO `tbl_dana_awal` (`no`, `keterangan`, `kelas`, `jumlah`, `nominal`, `id`) VALUES
(1, 'Baiya Gedung', 'gedung', '1', '-', 'gedung'),
(2, 'Biaya Renovasi', 'renovasi', '1', '-', 'renovasi'),
(3, 'Biaya Ijin', '-', '1', '750000', 'ijin'),
(4, 'Biaya Pendaftaran Speedy', 'speedy', '1', '100000', 'speedy'),
(5, 'Biaya Jasa Setting warnet', '-', '1', '1000000', 'jasa-setting-warnet'),
(6, 'Biaya Instalasi Listrik', '-', '1', '300000', 'ins-listrik'),
(7, 'Biaya Instalasi Telpon', '-', '1', '100000', 'ins-telpon'),
(8, 'Biaya Instalasi Air', '-', '1', '250000', 'ins-air'),
(9, 'Banner (jumlah dalam satuan meter persegi)', '-', '7', '20000', 'banner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dana_pengadaan`
--

CREATE TABLE IF NOT EXISTS `tbl_dana_pengadaan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(45) DEFAULT NULL,
  `kelas` varchar(45) DEFAULT NULL,
  `jumlah` varchar(45) DEFAULT NULL,
  `nominal` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_dana_pengadaan`
--

INSERT INTO `tbl_dana_pengadaan` (`no`, `keterangan`, `kelas`, `jumlah`, `nominal`, `id`) VALUES
(1, 'karpet (per meter persegi )', '-', '30', '50000', 'karpet'),
(2, 'Meja Komputer ( Client )', '-', '20', '75000', 'meja-client'),
(3, 'Meja Komputer ( Billing )', '-', '1', '350000', 'meja-billing'),
(4, 'Komputer Client', 'komputer', '20', '-', 'komputer-client'),
(5, 'Komputer Billing', 'komputer', '1', '-', 'komputer-billing'),
(6, 'Router', '-', '1', '400000', 'router'),
(7, 'Kabel UTP (per meter )', '-', '100', '5000', 'kabel'),
(8, 'Switch hub', '-', '1', '650000', 'switch'),
(9, 'RJ-45 (per Box)', '-', '1', '50000', 'rj'),
(10, 'Headset', 'headset', '20', '-', 'headset'),
(11, 'Printer', 'printer', '1', '-', 'printer'),
(12, 'Speaker', 'speaker', '1', '-', 'speaker'),
(13, 'UPS', '-', '21', '800000', 'ups'),
(14, 'Kipas Angin', '-', '4', '300000', 'kipas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dana_rutinitas_bulanan`
--

CREATE TABLE IF NOT EXISTS `tbl_dana_rutinitas_bulanan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nominal` varchar(35) NOT NULL,
  `id` varchar(35) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_dana_rutinitas_bulanan`
--

INSERT INTO `tbl_dana_rutinitas_bulanan` (`no`, `keterangan`, `jumlah`, `nominal`, `id`) VALUES
(1, 'Gaji Karyawan', 2, '750000', 'gaji-karyawan'),
(2, 'Biaya Listrik, Air dan Telpon', 1, '1500000', 'biaya-listrik-air-telpon'),
(3, 'Biaya Speedy', 1, '-', 'biaya-speedy'),
(4, 'Kertas HVS A4', 2, '33000', 'hvs-a4'),
(5, 'Kertas HVS F4/Legal', 2, '37000', 'hvs-f4'),
(6, 'Tinta Printer ( Hitam )', 2, '50000', 'tinta-hitam'),
(7, 'Tinta Printer ( Warna ) per set', 2, '150000', 'tinta-warna'),
(8, 'Biaya Lain - Lain', 1, '2000000', 'biaya-lain2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dana_rutinitas_tahunan`
--

CREATE TABLE IF NOT EXISTS `tbl_dana_rutinitas_tahunan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nominal` varchar(35) NOT NULL,
  `id` varchar(35) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_dana_rutinitas_tahunan`
--

INSERT INTO `tbl_dana_rutinitas_tahunan` (`no`, `keterangan`, `jumlah`, `nominal`, `id`) VALUES
(1, 'Ijin Operasional', 1, '1500000', 'ijin-operasional'),
(2, 'THR', 2, '500000', 'thr');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
