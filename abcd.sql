-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 02:50 AM
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
-- Database: `abcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `contact`, `date_of_birth`) VALUES
(5, 'Jaspreet Singh', 'jack22@gmail.com', '123456', '', '0000-00-00'),
(11, 'Raj', 'raj@gmail.com', '1234', '', '0000-00-00'),
(12, 'Jon', 'jon@gmail.com', '$2y$10$IMfRiK.ReVuihudADBxb.ebwPyQ6OokWUu8JEouu.W93Wnans6z4m', '', '0000-00-00'),
(13, 'Happy', 'happy@gmail.com', '$2y$10$1/XTrdkAd2L5RDlQ0EphVeYkylnM7RIH10SkRv8bVqjaq04P40r4i', '', '0000-00-00'),
(14, 'Sam', 'sam@gmail.com', '$2y$10$buTZjrDAiwnVtTkPz7tR9.m4bGK/AJ4D8.ixoyylyd.yaDcmpJfHi', '', '0000-00-00'),
(15, 'kohli', 'kohli@gmail.com', '$2y$10$OhiRAA6mXaEGosjHVsboL.IDrtKHUa8TsOqOxLsF5HuawiF1MUqwu', '', '0000-00-00'),
(16, 'Rocky', 'rocky@yahoo.com', '$2y$10$nXuXF4TqkEULXnb17Fj2zOBg.9q.XysQS7JmgDmg7YvWwz3UsHqy2', '888888888', '2018-01-08'),
(17, 'Jethalal', 'jetha@gmail.com', '$2y$10$OiS2n6hOsQLOIRfmE.s1AOazeEtYpuotcQ2lsmYKhxI4jYQn8Y6.G', '8860242101', '1999-08-31'),
(18, 'Jaspreet Singh', 'jassi80singh80@gmail.com', '$2y$10$zT1ki6ydghcLWo3iE4Sp6.W/.fQ4wLo1VJdE/igdzOSua7HxaRq.m', '08860242101', '2020-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `user_input`
--

CREATE TABLE `user_input` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `organisation` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `about_yourself` varchar(255) NOT NULL,
  `why_you_applied` varchar(255) NOT NULL,
  `response_1` varchar(255) NOT NULL,
  `response_2` varchar(255) NOT NULL,
  `response_3` varchar(255) NOT NULL,
  `response_4` varchar(255) NOT NULL,
  `response_5` varchar(255) NOT NULL,
  `response_6` varchar(255) NOT NULL,
  `response_7` varchar(255) NOT NULL,
  `response_8` varchar(255) NOT NULL,
  `response_9` varchar(255) NOT NULL,
  `refer_address` varchar(255) NOT NULL,
  `financial_contribution` decimal(10,0) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_input`
--

INSERT INTO `user_input` (`id`, `name`, `contact_number`, `email_address`, `gender`, `date_of_birth`, `occupation`, `organisation`, `facebook_link`, `website`, `current_address`, `permanent_address`, `nationality`, `language`, `about_yourself`, `why_you_applied`, `response_1`, `response_2`, `response_3`, `response_4`, `response_5`, `response_6`, `response_7`, `response_8`, `response_9`, `refer_address`, `financial_contribution`, `reason`) VALUES
(1, '', 0, '', '', '0000-00-00', '', '', '', '', '', '', 'vgfhfh', 'dfkjdkgkgk', 'sfggfdg', 'ddfgff', 'grrhth', 'gfhfhtht', 'gfgrgrr', 'grrththtr', 'ggdtrg', 'regreg', '', '', '', '', '0', ''),
(2, '', 0, '', '', '0000-00-00', '', '', '', '', '', '', 'indian', 'english', 'ssssssss', 'ssssssssss', 'sssssssssss', 'sssssssss', 'sssssssssssss', 'sssssssssssss', 'ssssssssssssss', 'sssssssss', '', '', '', '', '0', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_input`
--
ALTER TABLE `user_input`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_input`
--
ALTER TABLE `user_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
