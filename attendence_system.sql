-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 02:54 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `student_name`, `roll_number`) VALUES
(1, 'John', '20'),
(3, 'Sam', '10'),
(4, 'Rahul', '5'),
(7, 'Sahil', '15'),
(12, 'Jassi Gill', '50'),
(13, 'jivjyot', '24'),
(14, 'Kohli', '8'),
(15, 'Rohit', '7'),
(16, 'Rinkal', '30'),
(17, 'HArshit', '420');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_records`
--

CREATE TABLE `attendence_records` (
  `id` int(10) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `attendence_status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence_records`
--

INSERT INTO `attendence_records` (`id`, `student_name`, `roll_number`, `attendence_status`, `date`) VALUES
(1, 'John', '20', 'Present', '2018-08-25'),
(2, 'Sam', '10', 'Absent', '2018-08-25'),
(3, 'Rahul', '5', 'Present', '2018-08-25'),
(4, 'Sahil', '15', 'Absent', '2018-08-26'),
(5, 'Sahil', '15', 'Absent', '2018-08-26'),
(6, 'Sahil', '15', 'Absent', '2018-08-26'),
(7, 'John', '20', 'Absent', '2018-08-27'),
(8, 'Sam', '10', 'Present', '2018-08-27'),
(9, 'Rahul', '5', 'Present', '2018-08-27'),
(10, 'Sahil', '15', 'Present', '2018-08-27'),
(11, 'Jassi Gill', '50', 'Absent', '2018-08-27'),
(12, 'John', '20', 'Present', '2018-09-05'),
(13, 'Sam', '10', 'Present', '2018-09-05'),
(14, 'Rahul', '5', 'Present', '2018-09-05'),
(15, 'Sahil', '15', 'Absent', '2018-09-05'),
(16, 'Jassi Gill', '50', 'Absent', '2018-09-05'),
(17, 'jivjyot', '24', 'Present', '2018-09-05'),
(18, 'John', '20', 'Present', '2018-09-11'),
(19, 'Sam', '10', 'Absent', '2018-09-11'),
(20, 'Rahul', '5', 'Present', '2018-09-11'),
(21, 'Sahil', '15', 'Present', '2018-09-11'),
(22, 'Jassi Gill', '50', 'Present', '2018-09-11'),
(23, 'jivjyot', '24', 'Present', '2018-09-11'),
(24, 'John', '20', 'Present', '2018-09-13'),
(25, 'Sam', '10', 'Present', '2018-09-13'),
(26, 'Rahul', '5', 'Present', '2018-09-13'),
(27, 'Sahil', '15', 'Present', '2018-09-13'),
(28, 'Jassi Gill', '50', 'Absent', '2018-09-13'),
(29, 'jivjyot', '24', 'Present', '2018-09-13'),
(30, 'John', '20', 'Present', '2018-10-06'),
(31, 'Sam', '10', 'Present', '2018-10-06'),
(32, 'Rahul', '5', 'Present', '2018-10-06'),
(33, 'Sahil', '15', 'Absent', '2018-10-06'),
(34, 'Jassi Gill', '50', 'Absent', '2018-10-06'),
(35, 'jivjyot', '24', 'Absent', '2018-10-06'),
(36, 'John', '20', 'Present', '2018-10-08'),
(37, 'Sam', '10', 'Present', '2018-10-08'),
(38, 'Rahul', '5', 'Present', '2018-10-08'),
(39, 'Sahil', '15', 'Present', '2018-10-08'),
(40, 'Jassi Gill', '50', 'Present', '2018-10-08'),
(41, 'jivjyot', '24', 'Present', '2018-10-08'),
(42, 'Kohli', '8', 'Present', '2018-10-08'),
(43, 'Rohit', '7', 'Present', '2018-10-08'),
(44, 'John', '20', 'Present', '2018-10-23'),
(45, 'Sam', '10', 'Present', '2018-10-23'),
(46, 'Rahul', '5', 'Absent', '2018-10-23'),
(47, 'Sahil', '15', 'Present', '2018-10-23'),
(48, 'Jassi Gill', '50', 'Present', '2018-10-23'),
(49, 'jivjyot', '24', 'Absent', '2018-10-23'),
(50, 'Kohli', '8', 'Present', '2018-10-23'),
(51, 'Rohit', '7', 'Present', '2018-10-23'),
(52, 'John', '20', 'Present', '2018-10-25'),
(53, 'Sam', '10', 'Present', '2018-10-25'),
(54, 'Rahul', '5', 'Present', '2018-10-25'),
(55, 'Sahil', '15', 'Absent', '2018-10-25'),
(56, 'Jassi Gill', '50', 'Absent', '2018-10-25'),
(57, 'jivjyot', '24', 'Absent', '2018-10-25'),
(58, 'Kohli', '8', 'Present', '2018-10-25'),
(59, 'Rohit', '7', 'Absent', '2018-10-25'),
(60, 'John', '20', 'Absent', '2018-11-02'),
(61, 'Sam', '10', 'Present', '2018-11-02'),
(62, 'Rahul', '5', 'Present', '2018-11-02'),
(63, 'Sahil', '15', 'Present', '2018-11-02'),
(64, 'Jassi Gill', '50', 'Absent', '2018-11-02'),
(65, 'jivjyot', '24', 'Absent', '2018-11-02'),
(66, 'Kohli', '8', 'Present', '2018-11-02'),
(67, 'Rohit', '7', 'Present', '2018-11-02'),
(68, 'John', '20', 'Present', '2018-11-10'),
(69, 'Sam', '10', 'Present', '2018-11-10'),
(70, 'Rahul', '5', 'Absent', '2018-11-10'),
(71, 'Sahil', '15', 'Absent', '2018-11-10'),
(72, 'Jassi Gill', '50', 'Present', '2018-11-10'),
(73, 'jivjyot', '24', 'Present', '2018-11-10'),
(74, 'Kohli', '8', 'Absent', '2018-11-10'),
(75, 'Rohit', '7', 'Absent', '2018-11-10'),
(76, 'Rinkal', '30', 'Present', '2018-11-10'),
(77, 'John', '20', 'Present', '2018-12-20'),
(78, 'Sam', '10', 'Present', '2018-12-20'),
(79, 'Rahul', '5', 'Absent', '2018-12-20'),
(80, 'Sahil', '15', 'Absent', '2018-12-20'),
(81, 'Jassi Gill', '50', 'Present', '2018-12-20'),
(82, 'jivjyot', '24', 'Present', '2018-12-20'),
(83, 'Kohli', '8', 'Absent', '2018-12-20'),
(84, 'Rohit', '7', 'Absent', '2018-12-20'),
(85, 'Rinkal', '30', 'Present', '2018-12-20'),
(86, 'John', '20', 'Absent', '2019-08-14'),
(87, 'Sam', '10', 'Present', '2019-08-14'),
(88, 'Rahul', '5', 'Present', '2019-08-14'),
(89, 'Sahil', '15', 'Absent', '2019-08-14'),
(90, 'Jassi Gill', '50', 'Present', '2019-08-14'),
(91, 'jivjyot', '24', 'Present', '2019-08-14'),
(92, 'Kohli', '8', 'Absent', '2019-08-14'),
(93, 'Rohit', '7', 'Present', '2019-08-14'),
(94, 'Rinkal', '30', 'Present', '2019-08-14'),
(95, 'John', '20', 'Present', '2020-08-25'),
(96, 'Sam', '10', 'Present', '2020-08-25'),
(97, 'Rahul', '5', 'Absent', '2020-08-25'),
(98, 'Sahil', '15', 'Absent', '2020-08-25'),
(99, 'Jassi Gill', '50', 'Absent', '2020-08-25'),
(100, 'jivjyot', '24', 'Present', '2020-08-25'),
(101, 'Kohli', '8', 'Present', '2020-08-25'),
(102, 'Rohit', '7', 'Absent', '2020-08-25'),
(103, 'Rinkal', '30', 'Present', '2020-08-25'),
(104, 'HArshit', '420', 'Present', '2020-08-25'),
(105, 'John', '20', 'Present', '2020-08-27'),
(106, 'Sam', '10', 'Present', '2020-08-27'),
(107, 'Rahul', '5', 'Present', '2020-08-27'),
(108, 'Sahil', '15', 'Absent', '2020-08-27'),
(109, 'Jassi Gill', '50', 'Absent', '2020-08-27'),
(110, 'jivjyot', '24', 'Absent', '2020-08-27'),
(111, 'Kohli', '8', 'Present', '2020-08-27'),
(112, 'Rohit', '7', 'Present', '2020-08-27'),
(113, 'Rinkal', '30', 'Present', '2020-08-27'),
(114, 'HArshit', '420', 'Present', '2020-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(22) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reference` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_records`
--
ALTER TABLE `attendence_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `attendence_records`
--
ALTER TABLE `attendence_records`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
