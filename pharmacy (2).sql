-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2018 at 01:19 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyid` int(15) NOT NULL,
  `companytype` varchar(20) NOT NULL,
  `companydescription` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirmpassword` varchar(15) NOT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `username`, `email`, `password`, `confirmpassword`, `age`) VALUES
(20, 'tushar', 'nikunj@gmail.com', '123456', '123456', 21),
(21, 'ronak gohil', 'ronak@gmail.com', '123456', '123456', 21);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(10) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forgetpassword`
--

CREATE TABLE `forgetpassword` (
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirmpassword` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicalstore`
--

CREATE TABLE `medicalstore` (
  `medicalid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirmpassword` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalstore`
--

INSERT INTO `medicalstore` (`medicalid`, `username`, `email`, `password`, `confirmpassword`, `city`) VALUES
(9, 'tushar', 'tushar@gmail.com', '123456', '123456', 'bhavnagar'),
(11, 'utsav nathvani', 'utsav@gmail.com', '654321', '654321', 'valsad');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `medicinesid` int(15) NOT NULL,
  `medicinesname` varchar(20) NOT NULL,
  `medicinestype` varchar(20) NOT NULL,
  `medicinescost` int(15) NOT NULL,
  `medicinescompany` varchar(20) NOT NULL,
  `medicinesdescription` varchar(20) NOT NULL,
  `medicinescity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicinesid`, `medicinesname`, `medicinestype`, `medicinescost`, `medicinescompany`, `medicinesdescription`, `medicinescity`) VALUES
(1, 'peracitamol', 'fever', 65, 'shipla', 'one one one', ''),
(2, 'zenretard', 'mind', 100, 'intas', 'one one one', ''),
(3, 'jdad', 'aaa', 56, 'asd', 'dasd', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `fullname` varchar(20) NOT NULL,
  `mobilenumber` int(20) NOT NULL,
  `pincode` int(10) NOT NULL,
  `houseno` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `landmark` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`fullname`, `mobilenumber`, `pincode`, `houseno`, `area`, `landmark`, `city`, `state`) VALUES
('nikunj chaklasiya', 456464654, 78787, 'hjhjahjha', 'tatatat', 'annbanbbna', 'surat', 'gujrat'),
('jhjjh', 45454, 56565, 'kjkjkjkj', 'kjkjkj', 'kjkjkjkj', 'kjkjhjh', 'jkhjkhjkh');

-- --------------------------------------------------------

--
-- Table structure for table `syrup`
--

CREATE TABLE `syrup` (
  `syrupid` int(15) NOT NULL,
  `syrupname` varchar(20) NOT NULL,
  `syruptype` varchar(20) NOT NULL,
  `syrupcost` int(20) NOT NULL,
  `syrupcompany` varchar(20) NOT NULL,
  `syrupdescription` varchar(20) NOT NULL,
  `syrupcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syrup`
--

INSERT INTO `syrup` (`syrupid`, `syrupname`, `syruptype`, `syrupcost`, `syrupcompany`, `syrupdescription`, `syrupcity`) VALUES
(1, 'tushq dx 100ml', 'cough', 85, 'torex', 'one one one', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Aceclofenac 100 mg Tab', 'ME01', 'medicine\\me01.jpeg', 85.00),
(2, 'Asprin 150 mg Tab', 'ME02', 'medicine\\me02.jpeg', 75.00),
(3, 'Paracetamol 325mg Tab', 'ME03', 'medicine\\me03.jpeg', 70.00),
(4, 'tushq dx', 'ME04', 'medicine\\me04.jpeg', 77.00),
(5, 'antibiotics', 'ME05', 'medicine\\me05.jpeg', 95.00),
(6, 'glucose', 'ME06', 'medicine\\me06jpeg', 100.00),
(7, 'Calamine Lotion', 'me07', 'medicine\\me07.jpeg', 95.00),
(8, 'Fluconazole 150 mg Tabs', 'me08', 'medicine\\me09.jpeg', 80.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `medicalstore`
--
ALTER TABLE `medicalstore`
  ADD PRIMARY KEY (`medicalid`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicinesid`);

--
-- Indexes for table `syrup`
--
ALTER TABLE `syrup`
  ADD PRIMARY KEY (`syrupid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicalstore`
--
ALTER TABLE `medicalstore`
  MODIFY `medicalid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `medicinesid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `syrup`
--
ALTER TABLE `syrup`
  MODIFY `syrupid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
