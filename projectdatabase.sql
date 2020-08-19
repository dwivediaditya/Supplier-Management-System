-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2012 at 07:25 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_info`
--

CREATE TABLE IF NOT EXISTS `client_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_delivery` double(12,2) NOT NULL DEFAULT '0.00',
  `total_discount` double(12,2) NOT NULL DEFAULT '0.00',
  `total_paid_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `datee` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `client_info`
--

INSERT INTO `client_info` (`id`, `name`, `address`, `contact`, `total_delivery`, `total_discount`, `total_paid_amount`, `datee`) VALUES
(15, 'Abul Mal', 'Sylhet', '0119...', 230176.00, 800.00, 230476.00, '2012-09-11'),
(16, 'tamim', 'sadd', '019', 10000.00, 0.00, 200.00, '2012-09-05'),
(17, 'Nahid', 'Modina Mrkrt', '0173.........', 0.00, 0.00, 0.00, '2012-07-10'),
(18, 'Nahid eu', 'Modina sylhet', '0173.........', 0.00, 0.00, 0.00, '2012-07-10'),
(19, 'Nahid', 'Modina', '0173.........', 0.00, 0.00, 0.00, '2012-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `collection_table`
--

CREATE TABLE IF NOT EXISTS `collection_table` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taka` double(12,2) NOT NULL,
  `total_taka` double(12,2) NOT NULL,
  `collection_date` date NOT NULL,
  `discount` double(12,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `collection_table`
--

INSERT INTO `collection_table` (`serial_no`, `id`, `name`, `taka`, `total_taka`, `collection_date`, `discount`, `description`) VALUES
(1, 15, 'Abul Mal', 100.00, 230276.00, '2012-09-12', 0.00, 'nogod'),
(2, 15, 'Abul Mal', 200.00, 230476.00, '2012-09-06', 0.00, 'ng'),
(3, 15, 'Abul Mal', 0.00, 230476.00, '2012-09-01', 500.00, 'ng'),
(4, 15, 'Abul Mal', 0.00, 230476.00, '2012-09-07', 100.00, 'ng'),
(5, 16, 'tamim', 100.00, 100.00, '2012-09-03', 0.00, 'nn'),
(6, 16, 'tamim', 100.00, 200.00, '2012-09-12', 0.00, 'nogod');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_table`
--

CREATE TABLE IF NOT EXISTS `delivery_table` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loading_place` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `length` double(12,2) NOT NULL,
  `width` double(12,2) NOT NULL,
  `height` double(12,2) NOT NULL,
  `amount` double(12,3) NOT NULL,
  `rate` double(12,2) NOT NULL,
  `total_amount` double(12,2) NOT NULL,
  `total_dalivery` double(12,2) NOT NULL,
  `due_taka` double(12,2) NOT NULL,
  `advance` double(12,2) NOT NULL,
  `remarks` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `delivery_table`
--

INSERT INTO `delivery_table` (`serial_no`, `id`, `name`, `truck_number`, `description`, `loading_place`, `delivery_date`, `length`, `width`, `height`, `amount`, `rate`, `total_amount`, `total_dalivery`, `due_taka`, `advance`, `remarks`) VALUES
(7, 15, 'Abul Mal', '111', 'fdffds', 'dhaka', '2012-09-13', 46.00, 34.00, 12.00, 23000.000, 10.00, 230000.00, 230000.00, 30000.00, 0.00, 'ads'),
(8, 15, 'Abul Mal', '12', 'dfggd', 'ewr', '2012-09-06', 44.00, 4.00, 44.00, 44.000, 4.00, 176.00, 230176.00, 30176.00, 0.00, 'fddff'),
(9, 16, 'tamim', '22', 'se', 'gg', '2012-09-06', 6.00, 66.00, 66.00, 100.000, 100.00, 10000.00, 10000.00, 10000.00, 0.00, 'opio');

-- --------------------------------------------------------

--
-- Table structure for table `discount_table`
--

CREATE TABLE IF NOT EXISTS `discount_table` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(12,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_table`
--

CREATE TABLE IF NOT EXISTS `document_table` (
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_table`
--

INSERT INTO `document_table` (`name`, `path`, `comment`) VALUES
('Labiba', 'tutorialspdfslabiba', 'PDFs'),
('Bangladesh', 'tutorialspdfsflag', 'Image'),
('DataBase', 'tutorialspdfssqlite', 'SQLite'),
('DataBaseOri', 'C:UsersVishDesktopJMFproj', 'SQLite');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE IF NOT EXISTS `login_table` (
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `variable_table`
--

CREATE TABLE IF NOT EXISTS `variable_table` (
  `max_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_table`
--

INSERT INTO `variable_table` (`max_id`) VALUES
(19);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
