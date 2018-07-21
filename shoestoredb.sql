-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2017 at 09:04 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

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
('Md. Hossain', 'hossain01', 1684369981, 7, 'Gazibari, Station road'),
('Hossain Ahmed Liton', 'liton01', 1617818187, 2, 'Kamarpara'),
('masum', 'masum01', 1758469321, 0, 'gazipur'),
('Nurul Haque', 'Nurul Haque01', 1684369981, 4, 'Gazibari'),
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
('Adidas sport', 'adidassport08', 8, 2300, 22),
('casual', 'casual02', 2, 2500, 23),
('casual', 'casual05', 5, 3000, 15),
('Formal', 'Formal01', 7, 500, 18),
('High heel', 'Heal9', 5, 1400, 9),
('Nike crogs', 'nikecrogs06', 6, 1800, 46);

-- --------------------------------------------------------

--
-- Table structure for table `solditemtb`
--

CREATE TABLE `solditemtb` (
  `transactionid` int(11) DEFAULT NULL,
  `itemcode` varchar(200) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solditemtb`
--

INSERT INTO `solditemtb` (`transactionid`, `itemcode`, `unitprice`, `quantity`, `date`) VALUES
(1, 'casual02', 2500, 3, '2017-04-01'),
(1, 'formal01', 500, 3, '2017-04-01'),
(2, 'casual02', 2500, 1, '2017-04-03'),
(2, 'formal01', 500, 1, '2017-04-03'),
(3, 'casual02', 2500, 1, '2017-04-03'),
(4, 'formal01', 500, 1, '2017-04-03'),
(5, 'casual02', 2500, 2, '2017-04-03'),
(6, 'casual02', 2500, 2, '2017-04-03'),
(7, 'formal01', 500, 1, '2017-04-03'),
(8, 'formal01', 500, 1, '2017-04-03'),
(8, 'formal01', 500, 1, '2017-04-03'),
(9, 'formal01', 500, 2, '2017-04-03'),
(10, 'casual02', 2500, 1, '2017-04-03'),
(11, 'formal01', 500, 1, '2017-04-03'),
(12, 'formal01', 500, 1, '2017-04-03'),
(12, 'formal01', 500, 1, '2017-04-03'),
(13, 'formal01', 500, 1, '2017-04-03'),
(14, 'casual02', 2500, 1, '2017-04-03'),
(15, 'casual02', 2500, 1, '2017-04-04'),
(16, 'casual02', 2500, 1, '2017-04-04'),
(16, 'casual02', 2500, 1, '2017-04-04'),
(17, 'casual02', 2500, 1, '2017-04-04'),
(18, 'casual02', 2500, 1, '2017-04-04'),
(18, 'casual02', 2500, 1, '2017-04-04'),
(19, 'casual02', 2500, 1, '2017-04-04'),
(20, 'formal01', 500, 1, '2017-04-04'),
(21, 'casual02', 2500, 1, '2017-04-04'),
(22, 'formal01', 500, 1, '2017-04-04'),
(23, 'Adidassport08', 2300, 2, '2017-04-04'),
(23, 'formal01', 500, 1, '2017-04-04'),
(24, 'nikecrogs06', 1800, 1, '2017-04-04'),
(24, 'nikecrogs06', 1800, 1, '2017-04-04'),
(24, 'nikecrogs06', 1800, 1, '2017-04-04'),
(25, 'nikecrogs06', 1800, 2, '2017-04-04'),
(26, 'nikecrogs06', 1800, 3, '2017-04-04'),
(26, 'formal01', 500, 2, '2017-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `transactionsummary`
--

CREATE TABLE `transactionsummary` (
  `transactionid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `customername` varchar(200) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionsummary`
--

INSERT INTO `transactionsummary` (`transactionid`, `date`, `customername`, `mobile`, `subtotal`, `discount`, `total`) VALUES
(1, '2017-04-01', 'dead', 1684369981, 9000, 10, 8100),
(2, '2017-04-03', 'dead', 1684369981, 3000, 10, 2700),
(3, '2017-04-03', 'dead', 1684369981, 2500, 10, 2250),
(4, '2017-04-03', 'dead', 1684369981, 500, 10, 450),
(5, '2017-04-03', 'dead', 1684369981, 5000, 10, 4500),
(6, '2017-04-03', 'dead', 1684369981, 5000, 10, 4500),
(7, '2017-04-03', 'dead', 1684369981, 500, 10, 450),
(8, '2017-04-03', 'asdasd', 1254879, 500, 0, 500),
(9, '2017-04-03', 'dead', 1684369981, 1000, 10, 900),
(10, '2017-04-03', 'asfafas', 45646, 2500, 0, 2500),
(11, '2017-04-03', 'dead', 1684369981, 500, 10, 450),
(12, '2017-04-03', 'dead', 1684369981, 500, 10, 450),
(13, '2017-04-03', 'dead', 1684369981, 500, 10, 450),
(14, '2017-04-03', 'dead', 1684369981, 2500, 10, 2250),
(15, '2017-04-04', 'dead', 1684369981, 2500, 10, 2250),
(16, '2017-04-04', 'dead', 1684369981, 2500, 10, 2250),
(17, '2017-04-04', 'dead', 1684369981, 2500, 10, 2250),
(18, '2017-04-04', 'asdasd', 15485, 2500, 0, 2500),
(19, '2017-04-04', 'asfasfas', 23424, 2500, 0, 2500),
(20, '2017-04-04', 'afafasfas', 65468, 500, 0, 500),
(21, '2017-04-04', 'afadfsdg', 45165, 2500, 0, 2500),
(22, '2017-04-04', 'agfagdagd', 15487, 500, 0, 500),
(23, '2017-04-04', 'dead', 1684369981, 5100, 10, 4590),
(24, '2017-04-04', 'tahmena', 123654789, 1800, 0, 1800),
(25, '2017-04-04', 'rifat', 168459736, 3600, 0, 3600),
(26, '2017-04-04', 'dead', 1684369981, 6400, 10, 5760);

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
-- Indexes for table `transactionsummary`
--
ALTER TABLE `transactionsummary`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `usertb`
--
ALTER TABLE `usertb`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
