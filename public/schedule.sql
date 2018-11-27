-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 05:28 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `memo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_company` int(11) DEFAULT NULL,
  `ordering_company` int(11) DEFAULT NULL,
  `children_company` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `user_id`, `start_time`, `end_time`, `title`, `location`, `memo`, `parent_company`, `ordering_company`, `children_company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 4, '2018-11-15 00:00:00', '2018-12-03 00:00:00', 'di choi', 'ha noi', 'test', NULL, NULL, NULL, '2018-11-22 02:49:14', '2018-11-22 02:49:14', NULL),
(16, 4, '2018-12-01 00:00:00', '2018-12-05 00:00:00', 'di choi', 'ha noi', 'test', 0, NULL, NULL, '2018-11-22 03:40:20', '2018-11-22 03:40:20', NULL),
(17, 4, '2018-02-01 00:00:00', '2018-05-05 00:00:00', 'di choi', 'ha noi', 'test', NULL, NULL, NULL, '2018-11-22 03:41:43', '2018-11-22 03:41:43', NULL),
(18, 4, '2018-11-10 14:00:00', '2018-11-30 08:00:00', 'dampow', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:42:43', '2018-11-26 06:42:43', NULL),
(19, 4, '2018-11-14 14:00:00', '2018-11-30 08:00:00', 'dampow1', 'Số 1 Thái Hà', 'API Schedule', 3, NULL, NULL, '2018-11-26 06:42:53', '2018-11-26 06:42:53', NULL),
(20, 4, '2018-11-14 14:00:00', '2018-11-20 08:00:00', 'dampow2', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:43:02', '2018-11-26 06:43:02', NULL),
(21, 4, '2018-11-15 14:00:00', '2018-11-16 08:00:00', 'dampow3', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:43:17', '2018-11-26 06:43:17', NULL),
(22, 4, '2018-11-15 08:00:00', '2018-11-19 17:00:00', 'dampow3', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:43:53', '2018-11-26 06:43:53', NULL),
(23, 4, '2018-11-05 08:00:00', '2018-11-14 17:00:00', 'dampow3', 'Số 1 Thái Hà', 'API Schedule', 1, NULL, NULL, '2018-11-26 06:44:51', '2018-11-26 06:44:51', NULL),
(24, 4, '2018-09-05 08:00:00', '2018-09-09 17:00:00', 'genba', 'Số 1 Thái Hà', 'API Schedule', 2, NULL, NULL, '2018-11-26 06:45:25', '2018-11-26 06:45:25', NULL),
(25, 4, '2018-09-15 08:00:00', '2018-09-19 17:00:00', 'genba1', 'Số 1 Thái Hà', 'API Schedule', 3, NULL, NULL, '2018-11-26 06:45:44', '2018-11-26 06:45:44', NULL),
(26, 4, '2018-09-08 08:00:00', '2018-09-12 17:00:00', 'genba2', 'Số 1 Thái Hà', 'API Schedule', 1, 1, 1, '2018-11-26 06:45:59', '2018-11-26 06:45:59', NULL),
(27, 4, '2018-09-01 08:00:00', '2018-09-25 17:00:00', 'genba1', 'Số 1 Thái Hà', 'API Schedule', 2, NULL, NULL, '2018-11-26 06:46:12', '2018-11-26 06:46:12', NULL),
(28, 4, '2018-12-01 08:00:00', '2018-12-25 17:00:00', 'genba2', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:46:22', '2018-11-26 06:46:22', NULL),
(29, 4, '2018-12-05 08:00:00', '2018-12-06 17:00:00', 'genba5', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:46:33', '2018-11-26 06:46:33', NULL),
(30, 4, '2018-12-06 08:00:00', '2018-12-09 17:00:00', 'genba3', 'Số 1 Thái Hà', 'API Schedule', NULL, NULL, NULL, '2018-11-26 06:46:41', '2018-11-26 06:46:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
