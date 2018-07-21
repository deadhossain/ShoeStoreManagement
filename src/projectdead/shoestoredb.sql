-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 10:40 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoestoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customername` varchar(200) DEFAULT NULL,
  `customerid` varchar(200) NOT NULL,
  `mobile` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customername`, `customerid`, `mobile`, `discount`, `address`) VALUES
('dead', 'dead01', 1684369981, 10, 'gazibari,tongi'),
('masum', 'masum01', 1758469321, 0, 'gazipur'),
('rifat', 'rifat01', 1684369982, 5, 'pollibiddut');

-- --------------------------------------------------------

--
-- Table structure for table `iteminfotb`
--

CREATE TABLE `iteminfotb` (
  `itemname` varchar(200) DEFAULT NULL,
  `itemcode` varchar(200) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `itemprice` int(11) DEFAULT '200',
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iteminfotb`
--

INSERT INTO `iteminfotb` (`itemname`, `itemcode`, `size`, `itemprice`, `quantity`) VALUES
('casual', 'casual02', 2, 2500, 5),
('casual', 'casual05', 5, 3000, 0),
('Formal', 'Formal01', 7, 500, 5);

-- --------------------------------------------------------

--
-- Table structure for table `usertb`
--

CREATE TABLE `usertb` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `level` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertb`
--

INSERT INTO `usertb` (`username`, `password`, `level`) VALUES
('dead', '123', 'Leader'),
('masum', 'msum', 'Co-Leader'),
('rifat', 'goru', 'Co-Leader');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `iteminfotb`
--
ALTER TABLE `iteminfotb`
  ADD PRIMARY KEY (`itemcode`);

--
-- Indexes for table `usertb`
--
ALTER TABLE `usertb`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
