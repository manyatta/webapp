-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 09:27 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `environment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `officeNumber` int(7) NOT NULL,
  `name` varchar(70) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `officeNumber`, `name`, `password`) VALUES
(1, 5138, 'cyprian', '52c69e3a57331081823331c4e69d3f2e');

-- --------------------------------------------------------

--
-- Table structure for table `kfs_report`
--

CREATE TABLE `kfs_report` (
  `report_id` int(20) NOT NULL,
  `photo_name` varchar(20) NOT NULL,
  `photo_url` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `county` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `kfs_report`
--

INSERT INTO `kfs_report` (`report_id`, `photo_name`, `photo_url`, `activity`, `county`, `latitude`, `longitude`) VALUES
(1, '1.jpg', 'http://localhost/webapp/kfmUploads/1.jpg', 'charcoal', 'lamu', '0.0315592', '36.2818197'),
(5, '5.jpg', 'http://localhost/webapp/kfmUploads/5.jpg', 'burning', 'Kisumu', '0.0294973', '36.2795225'),
(8, '8.jpg', 'http://localhost/webapp/kfmUploads/8.jpg', 'trees', 'Kisumu', '0.0255021', '36.2730833'),
(10, '10.jpg', 'http://localhost/webapp/kfmUploads/10.jpg', 'hello', 'Narok', '0.0255021', '36.2730833');

-- --------------------------------------------------------

--
-- Table structure for table `municiple_report`
--

CREATE TABLE `municiple_report` (
  `report_id` int(20) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `photo_url` varchar(100) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `municiple_report`
--

INSERT INTO `municiple_report` (`report_id`, `photo_name`, `photo_url`, `activity`, `county`, `latitude`, `longitude`) VALUES
(1, '1.jpg', 'http://localhost/webapp/mUploads/1.jpg', 'plastic', 'Laikipia', '0.0297323', '36.2798614'),
(4, '4.jpg', 'http://localhost/webapp/mUploads/4.jpg', 'litter', 'Narok', '0.0295764', '36.279198'),
(6, '6.jpg', 'http://localhost/webapp/mUploads/6.jpg', 'littering', 'Lamu', '0.0306726', '36.280878'),
(8, '7.jpg', 'http://localhost/webapp/mUploads/7.jpg', 'hello', 'Narok', '0.0255021', '36.2730833');

-- --------------------------------------------------------

--
-- Table structure for table `nema_image`
--

CREATE TABLE `nema_image` (
  `report_id` int(20) NOT NULL,
  `photo_name` varchar(50) NOT NULL,
  `photo_url` varchar(50) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `nema_image`
--

INSERT INTO `nema_image` (`report_id`, `photo_name`, `photo_url`, `activity`, `county`, `latitude`, `longitude`) VALUES
(1, '1.jpg', 'http://localhost/webapp/uploads/1.jpg', 'coding', 'Lamu', '0.0280884', '36.2741001'),
(3, '3.jpg', 'http://localhost/webapp/uploads/3.jpg', 'electronic', 'Lamu', '0.0280884', '36.2741001'),
(18, '18.jpg', 'http://localhost/webapp/uploads/18.jpg', 'the hand', 'Nairobi', '0.0294973', '36.2795225'),
(19, '19.jpg', 'http://localhost/webapp/uploads/19.jpg', 'pollution', 'Narok', '0.0313774', '36.2825724'),
(21, '21.jpg', 'http://localhost/webapp/uploads/21.jpg', 'environment polution', 'Nairobi', '0.0297325', '36.2795225');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `username`, `password`) VALUES
(1, 'manyatta', '96e79218965eb72c92a549dd5a330112'),
(2, 'Msangi', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'abigael', '52c69e3a57331081823331c4e69d3f2e'),
(4, 'Moses', '721f9ff7c9e6068e3cc0388cfbc1aff6'),
(5, 'denno', 'e754b8857a738f11d2e8189c3f88a853'),
(6, 'manyatt', '9fa10577daae3cd6c2643d91a9d52a2c'),
(7, 'Shaniz', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Michael', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'aricha', '256aecf139c757410b10f31900895df3'),
(10, 'lilian', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'robert', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `oNumber` (`officeNumber`);

--
-- Indexes for table `kfs_report`
--
ALTER TABLE `kfs_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `municiple_report`
--
ALTER TABLE `municiple_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `nema_image`
--
ALTER TABLE `nema_image`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kfs_report`
--
ALTER TABLE `kfs_report`
  MODIFY `report_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `municiple_report`
--
ALTER TABLE `municiple_report`
  MODIFY `report_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nema_image`
--
ALTER TABLE `nema_image`
  MODIFY `report_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
