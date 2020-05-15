-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 03:06 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mining`
--

-- --------------------------------------------------------

--
-- Table structure for table `knn`
--

CREATE TABLE `knn` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knn`
--

INSERT INTO `knn` (`id`, `x`, `y`, `z`, `kelas`) VALUES
(1, 3, 5, 2, 'BAD'),
(2, 4, 3, 2, 'GOOD'),
(3, 7, 5, 2, 'GOOD'),
(4, 2, 1, 2, 'BAD'),
(5, 1, 2, 2, 'GOOD'),
(6, 9, 7, 2, 'BAD'),
(7, 8, 3, 2, 'BAD'),
(8, 7, 5, 2, 'BAD'),
(9, 3, 8, 2, 'BAD'),
(10, 1, 1, 2, 'GOOD'),
(11, 2, 2, 2, 'BAD'),
(12, 6, 6, 2, 'GOOD'),
(13, 2, 3, 2, 'BAD'),
(14, 5, 1, 2, 'GOOD'),
(15, 9, 2, 2, 'GOOD'),
(16, 7, 9, 2, 'BAD'),
(18, 1, 7, 2, 'GOOD'),
(20, 5, 5, 2, 'GOOD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knn`
--
ALTER TABLE `knn`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knn`
--
ALTER TABLE `knn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
