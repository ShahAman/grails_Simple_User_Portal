-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 12:18 AM
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
-- Database: `sup`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `identity_hash` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `identity_hash_last_update` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `member_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `version`, `address`, `is_active`, `date_created`, `first_name`, `identity_hash`, `last_updated`, `password`, `identity_hash_last_update`, `last_name`, `member_type`, `email`, `phone_number`) VALUES
(1, 0, 'Dhanmondi, Dhaka', b'1', '2019-07-21 08:58:01', 'System', NULL, '2019-07-21 08:58:01', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Administrator', 'ADMINISTRATOR', 'admin@localhost.local', 13434),
(2, 0, 'usa', b'1', '2019-07-21 16:13:36', 'user', NULL, '2019-07-21 16:13:36', 'e99a18c428cb38d5f260853678922e03', NULL, '1', 'REGULAR_MEMBER', 'user@gmail.com', 123453454),
(3, 0, 'user2add', b'1', '2019-07-21 22:25:32', 'user', NULL, '2019-07-21 22:25:32', '6c44e5cd17f0019c64b042e4a745412a', NULL, '2', 'REGULAR_MEMBER', 'user2@gmail.com', 5678),
(4, 0, '12/a,dhanmondi', b'1', '2019-07-21 22:30:07', 'karim', NULL, '2019-07-21 22:30:07', 'd79c8788088c2193f0244d8f1f36d2db', NULL, 'rahmen', 'REGULAR_MEMBER', 'karimrahman@yahoo.com', 19344545),
(5, 0, 'user3add', b'1', '2019-07-22 11:13:11', 'user', NULL, '2019-07-22 11:13:11', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '3', 'REGULAR_MEMBER', 'user3@gmail.com', 12789),
(6, 0, 'abcd', b'1', '2019-07-22 22:21:34', 'test1', NULL, '2019-07-22 22:21:34', '6074c6aa3488f3c2dddff2a7ca821aab', NULL, 'testLastName', 'REGULAR_MEMBER', 'test1@gmail.com', 5555);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
