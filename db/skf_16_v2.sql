-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 01:45 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skf_16_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `feel`
--

CREATE TABLE `feel` (
  `feel_id` int(4) NOT NULL,
  `feel` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feel`
--

INSERT INTO `feel` (`feel_id`, `feel`) VALUES
(1, 'มีความสุข'),
(2, 'ดีใจ'),
(3, 'โกรธ'),
(4, 'เหงา'),
(5, 'แปลกๆ');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(4) NOT NULL,
  `fullname` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `fullname`, `image`) VALUES
(1, 'Donald Trump', '01.jpg'),
(2, 'Sam Smith', '02.jpg'),
(3, 'Lincoln Burrows', '03.jpg'),
(4, 'Jon Snow', '04.jpg'),
(5, 'Mark Lee', '05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `member_id` int(4) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `message`, `member_id`, `time`) VALUES
(1, 'เหงาอยากทำอะไรสักอย่าง', 1, '2017-04-14 09:19:10'),
(2, 'อยากเต้นจังเลย', 5, '2017-04-16 07:16:19'),
(3, 'กินข้าวริมน้ำ', 4, '2017-04-18 10:12:24'),
(4, 'อยากไปดู fast 8', 3, '2017-04-18 20:27:43'),
(5, 'อยากกินบิงซู', 2, '2017-04-19 11:20:13'),
(6, 'ทดลองเป็น hipster', 1, '2017-04-19 13:18:26'),
(7, 'โอ้ย อากาศร้อนจังเลย', 2, '2017-04-20 10:17:12'),
(8, 'อยากไปดู coldplay', 3, '2017-04-20 09:18:26'),
(9, 'อยากเปียก สาดน้ำเราที', 1, '2017-04-21 12:11:23'),
(10, 'อยากกินหมูกระทะ', 5, '2017-04-21 13:20:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feel`
--
ALTER TABLE `feel`
  ADD PRIMARY KEY (`feel_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feel`
--
ALTER TABLE `feel`
  MODIFY `feel_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
