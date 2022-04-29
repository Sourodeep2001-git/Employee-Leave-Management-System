-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 06:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(5, 'souro', 'fd418cd5261baa8e5234a9a5cfd435a8', 'Sourodeep Paul', 'sourodeepxd2001@gmail.com', '2022-02-14 12:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `md`
--

CREATE TABLE `md` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(60) NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md`
--

INSERT INTO `md` (`id`, `UserName`, `Password`, `fullname`, `email`, `UpdationDate`) VALUES
(5, 'souro', 'c542bfda5e59b9475685f78faaec0e87', 'Sourodeep Paul', 'sourodeepxd2001@gmail.com', '2022-04-07 15:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(9, 'Accounts', 'AC', 'AC125', '2022-03-27 06:51:49'),
(10, 'Human Resource', 'HR', 'HR100', '2022-03-27 12:17:26'),
(11, 'Information Technology', 'IT', 'IT420', '2022-03-27 12:20:22'),
(12, 'Operation', 'OP', 'OP390', '2022-03-27 12:22:50'),
(13, 'Voulnteer', 'VT', 'VT095', '2022-03-27 12:24:59'),
(14, 'Research', 'RS', 'RS250', '2022-03-27 12:26:46'),
(15, 'Marketing', 'MT', 'MT600', '2022-03-27 12:28:31'),
(16, 'Sales', 'SL', 'SL545', '2022-03-27 12:28:54'),
(17, 'Finance', 'FN', 'FN780', '2022-03-27 12:30:10'),
(18, 'Banking', 'BN', 'BN050', '2022-03-27 12:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(9, 'EMP_123456789', 'Sourodeep', 'Paul', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '2001-01-10', 'Human Resource', '29, Padma Babu Road, Bally', 'Howrah', 'India', '9876543210', 1, '2022-02-14 13:05:53'),
(10, 'EMP_3456789021', 'Indrajit', 'Mukherjee', 'im@gmail.com', 'e24f6e3ce19ee0728ff1c443e4ff488d', 'Male', '2001-10-03', 'Marketing', '85/2 Goshwami Para Road , Bally', 'Howrah', 'India', '9876543210', 1, '2022-02-15 06:03:42'),
(11, 'EMP_12345567980', 'Tiyasha ', 'Majumder', 'tm@gmail.com', '07c8dba3848f9e354aa85a5ab7881dea', 'Female', '2001-06-21', 'Marketing', 'Sasthitala Sapuipara, Bally', 'Howrah', 'India', '8910037568', 1, '2022-03-27 06:50:20'),
(12, 'EMP_9876432160', 'Soumana', 'Samaddar', 'ss@yahoo.com', '3691308f2a4c2f6983f2880d32e29c84', 'Female', '1965-06-24', 'Voulnteer', 'Baidyabati', 'Hooghly', 'India', '9513578520', 1, '2022-04-01 07:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `MDRemark` mediumtext DEFAULT NULL,
  `MDRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `MDRemark`, `MDRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(22, 'Medical Leave', '2022-02-16', '2022-02-20', 'Please, accept my leave.', '2022-02-14 13:08:29', 'Good Luck', '2022-02-14 18:40:45 ', 1, 1, 9),
(23, 'Religious Holidays', '2022-03-02', '2022-03-06', 'Please Concern my leave.', '2022-02-15 06:05:27', 'Sorry!!', '2022-02-15 11:36:37 ', 2, 1, 10),
(24, 'Casual Leave', '2022-03-03', '2022-03-07', '', '2022-02-25 09:25:52', 'Enjoy ur day', '2022-02-25 14:57:29 ', 1, 1, 10),
(26, 'Casual Leave', '2022-05-05', '2022-05-10', '', '2022-03-27 07:06:20', 'Enjoy ur Day\r\n', '2022-03-27 12:39:57 ', 1, 1, 11),
(27, 'Voting Leave (VL)', '2022-03-01', '2022-03-01', 'Chuti amar chai..... se je korei hok', '2022-04-01 07:53:46', 'Dbo na.... ja korar kore ne', '2022-04-01 13:25:01 ', 2, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Casual Leave (CL)', 'Provided for urgent matters to the employees.', '2022-03-30 16:05:38'),
(15, 'Medical Leave (ML)', 'Related to Health Problems of Employee\'s and their family', '2022-03-30 16:08:38'),
(16, 'Religious Holiday (RL)', 'Based on employee\'s followed religion', '2022-03-30 16:11:53'),
(17, 'Restricted Holiday (RH)', 'Holiday that is optional', '2022-03-30 16:19:42'),
(18, 'Voting Leave (VL)', 'For official election day', '2022-03-30 16:21:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md`
--
ALTER TABLE `md`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `md`
--
ALTER TABLE `md`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
