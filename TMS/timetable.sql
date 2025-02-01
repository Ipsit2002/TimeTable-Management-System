-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 06:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`b_id`, `b_name`) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'EEE'),
(4, 'ME'),
(5, 'COE');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `s_no` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`s_no`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@edu.in', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_no` int(11) NOT NULL,
  `s_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `roll_no` int(5) NOT NULL,
  `course` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_no`, `s_id`, `name`, `roll_no`, `course`, `year`, `email`, `password`) VALUES
(1, 202001, 'Ayaan Ray', 3, 'CSE', '3rd Year', 'ayaang.ray@gmail.com', '1234'),
(2, 202002, 'Wridip Sarkar', 5, 'CE', '2nd Year', 'wridip@gmail.com', '1234'),
(3, 202003, 'Tushar Kanti Das', 15, 'ECE', '3rd Year', 'tushar@gmail.com', '1234'),
(4, 202004, 'Ipsitneel Chaudhury', 2, 'EEE', '4th Year', 'ipsit@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `sl_no` int(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `p5` varchar(50) NOT NULL,
  `p6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`sl_no`, `day`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 'Monday', '-', '-', '-', '-', '-', '-'),
(2, 'Tuesday ', 'C, TKB Sir', 'C, TKB Sir', '-', '-', 'Engineering Drawing, PD Maam', 'DSA, TKB Sir'),
(3, 'Wednesday ', '-', 'Machine Learning, PD Maam', 'IoT Lab, MKN Sir', 'IoT Lab, MKN Sir', '-', 'DSA, TKB Sir'),
(4, 'Thursday ', 'Engineering Drawing, PD Maam', '-', '-', 'Python, MKN Sir', 'Python, MKN Sir', '-'),
(5, 'Friday ', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `sl_no` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `p5` varchar(50) NOT NULL,
  `p6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`sl_no`, `day`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 'Monday', '-', '-', '-', '-', '-', '-'),
(2, 'Tuesday', '-', '-', '-', '-', '-', '-'),
(3, 'Wednesday ', '-', '-', '-', '-', '-', '-'),
(4, 'Thursday ', '-', '-', '-', '-', '-', '-'),
(5, 'Friday ', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `sl_no` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `p5` varchar(50) NOT NULL,
  `p6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`sl_no`, `day`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 'Monday', '-', '-', '-', '-', '-', '-'),
(2, 'Tuesday ', '-', '-', '-', '-', '-', '-'),
(3, 'Wednesday ', '-', '-', '-', '-', '-', '-'),
(4, 'Thursday ', '-', '-', '-', '-', '-', '-'),
(5, 'Friday ', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `table4`
--

CREATE TABLE `table4` (
  `sl_no` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `p5` varchar(50) NOT NULL,
  `p6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table4`
--

INSERT INTO `table4` (`sl_no`, `day`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 'Monday ', '-', '-', '-', '-', '-', '-'),
(2, 'Tuesday ', '-', '-', '-', '-', '-', '-'),
(3, 'Wednesday ', '-', '-', '-', '-', '-', '-'),
(4, 'Thursday ', '-', '-', '-', '-', '-', '-'),
(5, 'Friday', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `table5`
--

CREATE TABLE `table5` (
  `sl_no` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `p5` varchar(50) NOT NULL,
  `p6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table5`
--

INSERT INTO `table5` (`sl_no`, `day`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`) VALUES
(1, 'Monday ', '-', '-', '-', '-', '-', '-'),
(2, 'Tuesday ', '-', '-', '-', '-', '-', '-'),
(3, 'Wednesday ', '-', '-', '-', '-', '-', '-'),
(4, 'Thursday ', '-', '-', '-', '-', '-', '-'),
(5, 'Friday', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `s_no` int(11) NOT NULL,
  `t_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`s_no`, `t_id`, `name`, `email`, `password`) VALUES
(1, 202101, 'Nairanjana Choudhury', 'nc@gmail.com', '1234'),
(2, 202102, 'Mrinal Kanti Nath', 'mkn@gmail.com', '1234'),
(14, 202103, 'Ujjal Chakrabarty', 'uc@gmail.com', '1234'),
(15, 202104, 'Timir Kanti Bhadra', 'tkb@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `course` (`course`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `table4`
--
ALTER TABLE `table4`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `table5`
--
ALTER TABLE `table5`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `sl_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table2`
--
ALTER TABLE `table2`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table3`
--
ALTER TABLE `table3`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table4`
--
ALTER TABLE `table4`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table5`
--
ALTER TABLE `table5`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
