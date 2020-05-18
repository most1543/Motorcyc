-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2020 at 10:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Motorcyc`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `TradingNum` varchar(10) NOT NULL,
  `PCode` varchar(10) NOT NULL,
  `ReceiptNum` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Cash` char(1) NOT NULL,
  `Online` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `TradingNum` varchar(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `AddNo` varchar(10) DEFAULT NULL,
  `AddDistrict` varchar(30) DEFAULT NULL,
  `AddProvince` varchar(30) DEFAULT NULL,
  `ZipCode` varchar(5) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Nname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Nationality` varchar(10) DEFAULT NULL,
  `Bday` date DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `CitizenID` varchar(13) DEFAULT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Picture`
--

CREATE TABLE `Picture` (
  `PCode` varchar(10) NOT NULL,
  `Picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pname_Thai` char(30) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `Size` int(3) NOT NULL,
  `Color` char(10) NOT NULL,
  `Decorate` char(1) NOT NULL,
  `General` char(1) NOT NULL,
  `Price` int(10) NOT NULL,
  `Cost` int(10) NOT NULL,
  `Brand` char(20) NOT NULL,
  `Pname_Eng` char(30) NOT NULL,
  `StockNum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockNum` int(2) NOT NULL,
  `Inventories` int(5) NOT NULL,
  `Supplier` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`TradingNum`,`PCode`),
  ADD KEY `PCode` (`PCode`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`TradingNum`);

--
-- Indexes for table `Picture`
--
ALTER TABLE `Picture`
  ADD PRIMARY KEY (`PCode`,`Picture`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `StockNum` (`StockNum`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockNum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`TradingNum`) REFERENCES `member` (`TradingNum`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`PCode`) REFERENCES `product` (`Code`);

--
-- Constraints for table `Picture`
--
ALTER TABLE `Picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`PCode`) REFERENCES `product` (`Code`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`StockNum`) REFERENCES `stock` (`StockNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
