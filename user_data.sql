-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 06:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `TYPE` varchar(256) NOT NULL,
  `LATITUDE` varchar(256) NOT NULL,
  `LONGITUDE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NAME`, `TYPE`, `LATITUDE`, `LONGITUDE`) VALUES
(1, 'Doctor1', 'Doctor', '19.2222503', '72.9875365'),
(2, 'Doctor2', 'Doctor', '19.9114575', '75.3186241'),
(3, 'Doctor3', 'Doctor', '19.1915606', '73.0073196'),
(4, 'Doctor4', 'Doctor', '19.1945024', '72.9865133'),
(5, 'Lawyer1', 'Lawyer', '19.2073382', '73.0061213'),
(6, 'Lawyer2', 'Lawyer', '19.2064196', '73.0104561'),
(7, 'Lawyer3', 'Lawyer', '19.2085898', '73.0124856'),
(8, 'Lawyer4', 'Lawyer', '19.2033299', '72.9775244'),
(9, 'Engineer1', 'Engineer', '19.2704739', '72.9623431'),
(10, 'Engineer2', 'Engineer', '19.2053706', '72.959713');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
