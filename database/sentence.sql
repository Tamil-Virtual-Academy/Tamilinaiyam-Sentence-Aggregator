-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 01:57 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `for_admin`
--

CREATE TABLE `for_admin` (
  `sno` int(11) NOT NULL,
  `sentance_no` varchar(500) NOT NULL,
  `users` varchar(5000) NOT NULL,
  `Tamil` varchar(255) NOT NULL,
  `English` varchar(255) NOT NULL,
  `sports` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `for_aggre_dom`
--

CREATE TABLE `for_aggre_dom` (
  `sno` int(11) NOT NULL,
  `code` varchar(10000) NOT NULL,
  `code1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `for_aggre_dom`
--

INSERT INTO `for_aggre_dom` (`sno`, `code`, `code1`) VALUES
(1, 'base64_decode', '');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `keywords` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `links` varchar(20000) NOT NULL,
  `links_id` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `sno` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`sno`, `user_id`, `user_name`, `password`, `role`) VALUES
(1, 'ID1', 'admin', 'admin', 1),
(2, 'USER1', 'user', 'user', 3),
(3, 'USER217', 'TVA01', 'admin123', 3);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `sno` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `value` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sentance`
--

CREATE TABLE `sentance` (
  `sno` int(11) NOT NULL,
  `sentances` varchar(9999) CHARACTER SET utf8 NOT NULL,
  `link_id` varchar(500) NOT NULL,
  `USER1finished` tinyint(4) NOT NULL,
  `ID1finished` tinyint(4) NOT NULL,
  `USER217finished` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sentance_admin_checked`
--

CREATE TABLE `sentance_admin_checked` (
  `sno` int(11) NOT NULL,
  `sentance_no` varchar(9000) NOT NULL,
  `category_names` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sentence`
--

CREATE TABLE `sentence` (
  `sno` int(11) NOT NULL,
  `sentence` varchar(10000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sublinks`
--

CREATE TABLE `sublinks` (
  `sno` int(11) NOT NULL,
  `sublink` varchar(20000) NOT NULL,
  `sublink_id` varchar(2000) NOT NULL,
  `mainlink_id` varchar(20) NOT NULL,
  `checked` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `sno` int(11) NOT NULL,
  `words` mediumtext NOT NULL,
  `link_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `for_admin`
--
ALTER TABLE `for_admin`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `for_aggre_dom`
--
ALTER TABLE `for_aggre_dom`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `links_id` (`links_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sentance`
--
ALTER TABLE `sentance`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sentance_admin_checked`
--
ALTER TABLE `sentance_admin_checked`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sentence`
--
ALTER TABLE `sentence`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sublinks`
--
ALTER TABLE `sublinks`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `for_admin`
--
ALTER TABLE `for_admin`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT for table `for_aggre_dom`
--
ALTER TABLE `for_aggre_dom`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sentance`
--
ALTER TABLE `sentance`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506580;
--
-- AUTO_INCREMENT for table `sentance_admin_checked`
--
ALTER TABLE `sentance_admin_checked`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sentence`
--
ALTER TABLE `sentence`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16016;
--
-- AUTO_INCREMENT for table `sublinks`
--
ALTER TABLE `sublinks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16834;
--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
