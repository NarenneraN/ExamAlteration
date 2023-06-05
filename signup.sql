-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 07:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `password`, `address`, `image`, `department`) VALUES
(10, 'Karthi', 'karthi@gmail.com', '$2b$10$PMfbjgkycyl3RSQ3e6Y0HuL5aBwg58PzStpGQ.VpB1iOvc2IQ.Kp2', '', '', NULL),
(12, 'Gautham', 'gautham@gmail.com', '$2b$10$jkczRxeGcFp3Ju3V3HQWde2ii6iyFUmcjt4ugoaqAE/2jt9ZL3yWi', '', '', NULL),
(13, 'Arun', 'arun@gmail.com', '$2b$10$2ps.o1k9ziz.H5n2DLR70uocfJxkF0XTfM83D6OxO7NKsXkHYv0Bm', '', '', NULL),
(15, 'Deepika', 'deepika@gmail.com', '$2b$10$3wLqmUwyad6RISKTpBGv.OWUXlC8Vqe01.dOlHKTOo7CqE16.BARi', '', '', NULL),
(16, 'Ramya', 'ramya@gmail.com', '$2b$10$YC005sgbrVIYBrozKM9FweP0k.5Pa61Ui9Hpk/oa4C3v0iRluXef2', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `id` int(11) NOT NULL,
  `academicyear` varchar(255) NOT NULL,
  `examname` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `slot` varchar(255) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `facultyname` varchar(255) NOT NULL,
  `facultymail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`id`, `academicyear`, `examname`, `department`, `date`, `slot`, `starttime`, `endtime`, `roomnumber`, `course`, `facultyname`, `facultymail`) VALUES
(42, 'ENDSEM', '2023', 'CSE', '2023-06-15', 'FN', '09:00:00', '11:30:00', 'A-102', 'Compiler Design', 'Gautham', 'gautham@gmail.com'),
(43, 'ENDSEM', '2023', 'CSE', '2023-06-17', 'AN', '13:00:00', '15:30:00', 'A-104', 'Distributed Systems', 'Arthi', 'arthi@gmail.com'),
(44, 'ENDSEM', '2023', 'CSE', '2023-06-19', 'FN', '09:00:00', '11:30:00', 'A-103', 'Networks', 'Karthi', 'karthi@gmail.com'),
(45, 'ENDSEM', '2023', 'CSE', '2023-06-20', 'FN', '09:00:00', '11:30:00', 'C-103', 'DBMS', 'Ramya', 'ramya@gmail.com'),
(46, 'ENDSEM', '2023', 'CSE', '2023-06-22', 'AN', '13:00:00', '15:30:00', 'A-102', 'Software Engineering', 'Arun', 'arun@gmail.com'),
(47, 'ENDSEM', '2023', 'CSE', '2023-06-24', 'FN', '09:00:00', '11:30:00', 'A-104', 'OOPS', 'Gautham', 'gautham@gmail.com'),
(48, 'ENDSEM', '2023', 'CSE', '2023-06-26', 'FN', '00:00:09', '00:00:11', 'C-104', 'Data Structures', 'Karthi', 'karthi@gmail.com'),
(49, 'ENDSEM', '2023', 'CSE', '2023-06-27', 'AN', '13:00:00', '15:30:00', 'C-102', 'Embedded Systems', 'Deepika', 'deepika@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `examschedulepdf`
--

CREATE TABLE `examschedulepdf` (
  `id` int(11) NOT NULL,
  `examname` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examschedulepdf`
--

INSERT INTO `examschedulepdf` (`id`, `examname`, `year`, `department`, `filename`) VALUES
(6, 'ENDSEM', 2023, 'CSE', '1684826804960.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `fexamid` int(11) NOT NULL,
  `texamid` int(11) NOT NULL,
  `fmail` varchar(255) DEFAULT NULL,
  `tmail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `fexamid`, `texamid`, `fmail`, `tmail`) VALUES
(5, 42, 43, 'gautham@gmail.com', 'arthi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examschedulepdf`
--
ALTER TABLE `examschedulepdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `examschedulepdf`
--
ALTER TABLE `examschedulepdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
