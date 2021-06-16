-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 01:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `cr`
--

CREATE TABLE `cr` (
  `email` varchar(40) NOT NULL,
  `divi` varchar(30) NOT NULL,
  `gender` tinytext NOT NULL,
  `about` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cr`
--

INSERT INTO `cr` (`email`, `divi`, `gender`, `about`, `name`, `votes`) VALUES
('miracleneil5@gmail.com', 'fe', 'male', 'ythtyh', 'Ayush Tiwari', 0),
('tnyash007@gmail.com', 'fe', 'female', 'iasmdmfsfdf', 'Anshika Tiwari', 1),
('yashd2d@gmail.com', 'fe', 'male', 'hhjrefgdgjdvdfv', 'Yash Tiwari', 2);

-- --------------------------------------------------------

--
-- Table structure for table `culturalincharge`
--

CREATE TABLE `culturalincharge` (
  `email` varchar(40) NOT NULL,
  `divi` varchar(30) NOT NULL,
  `gender` tinytext NOT NULL,
  `about` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `culturalincharge`
--

INSERT INTO `culturalincharge` (`email`, `divi`, `gender`, `about`, `name`, `votes`) VALUES
('yashd2d@gmail.com', 'fe', 'male', 'hello I am Yash', 'Yash Tiwari', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecellincharge`
--

CREATE TABLE `ecellincharge` (
  `email` varchar(40) NOT NULL,
  `divi` varchar(30) NOT NULL,
  `gender` tinytext NOT NULL,
  `about` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `fromdate` text NOT NULL,
  `todate` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `name`, `fromdate`, `todate`, `status`) VALUES
(5, 'cr', '12-06-2021 20:35 pm', '13-06-2021 11:26 am', 0),
(85, 'cr', '12-06-2021 20:35 pm', '13-06-2021 11:26 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `musicincharge`
--

CREATE TABLE `musicincharge` (
  `email` varchar(40) NOT NULL,
  `divi` varchar(30) NOT NULL,
  `gender` tinytext NOT NULL,
  `about` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sportincharge`
--

CREATE TABLE `sportincharge` (
  `email` varchar(40) NOT NULL,
  `divi` varchar(30) NOT NULL,
  `gender` tinytext NOT NULL,
  `about` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `cemail` text NOT NULL,
  `password` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `gender` tinytext NOT NULL,
  `course` tinytext NOT NULL,
  `divi` tinytext NOT NULL,
  `token_id` varchar(30) NOT NULL,
  `cr` tinyint(4) NOT NULL DEFAULT 0,
  `ecellinncharge` tinyint(4) NOT NULL DEFAULT 0,
  `sportincharge` tinyint(4) DEFAULT 0,
  `musicincharge` tinyint(4) NOT NULL DEFAULT 0,
  `culturalincharge` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`firstname`, `lastname`, `email`, `cemail`, `password`, `dob`, `mobileno`, `gender`, `course`, `divi`, `token_id`, `cr`, `ecellinncharge`, `sportincharge`, `musicincharge`, `culturalincharge`) VALUES
('Ayush', 'Tiwari', 'miracleneil5@gmail.com', 'lalu@gmail.com', 'ayush12345', '2004-11-30', '9374700428', 'male', 'Comp', 'fe', '24', 1, 0, 0, 0, 0),
('Anshika', 'Tiwari', 'tnyash007@gmail.com', 'anshu@gmail.com', 'anshika@12', '2004-11-30', '9377892723', 'female', 'Comp', 'fe', '25', 1, 0, 0, 0, 0),
('Yash', 'Tiwari', 'yashd2d@gmail.com', 'yashtechie001@gmail.com', 'yash123456', '2001-10-07', '7016183012', 'male', 'Comp', 'fe', '21', 1, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr`
--
ALTER TABLE `cr`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `culturalincharge`
--
ALTER TABLE `culturalincharge`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ecellincharge`
--
ALTER TABLE `ecellincharge`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musicincharge`
--
ALTER TABLE `musicincharge`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sportincharge`
--
ALTER TABLE `sportincharge`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`(40)),
  ADD UNIQUE KEY `mob_no` (`mobileno`),
  ADD UNIQUE KEY `cemail_id` (`cemail`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
