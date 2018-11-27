-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 05:46 PM
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
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `director` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` text,
  `title` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `address`, `phone`, `email`, `fax`, `director`, `created_at`, `updated_at`, `deleted_at`, `description`, `title`, `created_by`) VALUES
(1, 'Fujitech', 'Tang 5 So 1 Thái Hà', '0918484638', 'dam.le@fujitehjsc.com', NULL, 3, '2018-11-26 06:19:23', '2018-11-15 00:48:10', NULL, '', 1, 0),
(2, 'fujitechjsc2', NULL, '0965737294', NULL, NULL, 4, '2018-11-26 08:15:29', '2018-11-26 01:15:29', NULL, '', 2, 0),
(3, 'Fuji2', NULL, '0965737294', NULL, NULL, 1, '2018-11-26 08:39:58', '2018-11-15 00:49:07', NULL, '', 1, 0),
(5, 'fujitechjsc', NULL, NULL, NULL, NULL, NULL, '2018-11-26 08:39:11', '2018-11-26 01:11:59', NULL, NULL, 1, 4),
(6, 'fujitechjsc', 'Thái Hà', '0912012321', 'dam.le@fujitechjsc.com', NULL, 1, '2018-11-26 02:01:31', '2018-11-26 02:01:31', NULL, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `group_name`, `created_by`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Group 1', 6, 0, '2018-11-15 06:51:06', NULL, NULL),
(2, 'Group 2', 1, 1, '2018-11-15 10:11:56', '2018-11-15 00:50:00', NULL),
(3, 'Group 3', 1, 1, '2018-11-15 10:11:54', '2018-11-15 00:49:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` smallint(6) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` smallint(6) NOT NULL DEFAULT '1',
  `facebook_id` int(11) DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `group_id`, `birthday`, `avatar`, `phone`, `address`, `gender`, `facebook_id`, `line_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'dam.le@fujitechjsc.com', '$2y$10$Szcg9vTECIJzJxO9G3k20ObKEE0QFa3JMBqkkUZv9jeFjHTijvHIS', 9, 1, '1990-10-20', 'http://localhost/Calendara_app/public/avatar/avatar_1.PNG', '+84918484638', 'Số 1 Thái Hà', 1, NULL, NULL, 'NJmlQZ8JHKSuD3i9hiOuAf45E7HMNbkmntH97eyTkSzVCYRcYwE8OjupKmQP', NULL, '2018-11-01 01:39:41', '2018-11-15 02:57:12'),
(2, 'dampow', 'dampow@gmail.com', '$2y$10$8nYZImt6u3WTMcU7vFdtyeU3yn4DpEjUT0Qfis..H4KPs1/5QrCtK', 1, 1, '1990-10-20', NULL, '+84349609913', 'Số 1 Thái Hà', 1, NULL, NULL, '4B5wdIbz3W9ryfk3ZNlzOHBksPLaSGN2QQrlx0bTuhzOnTwxPUFWa7LNZSMS', NULL, '2018-11-01 01:40:30', '2018-11-01 01:40:30'),
(3, 'fuji', NULL, '$2y$10$wEESOGAlppEI16nplX7p7.JM/k8ApUZu/SOEm0f1OUoAfBLiBmYKC', 0, 1, NULL, NULL, '+84965737294', NULL, 1, NULL, NULL, 'vIr3JkVps0zgzmrLBdklLpFAKjosZCqz2GgDpTUVtPz0kg411LUndCxz7bED', NULL, '2018-11-01 18:59:44', '2018-11-23 02:21:55'),
(4, 'Le Xuan Dam', 'dam.le@fujitechjsc12.com', '$2y$10$bLlRDcTzOzCtZW9NF.Kzpel07zz21o90H6sNz1r.JoIIYxQuPBfKi', 9, 1, '1990-10-20', 'http://192.168.0.91/avatar/avatar_4.jpg', '0918484638', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-01 19:00:10', '2018-11-15 02:57:12'),
(5, 'Le Xuan Dam', NULL, '$2y$10$bkxv2GLlDE6dIuqy0EWxKe4vsV4fe8grQh.e/ao28GdAAK2PJoc8S', 1, NULL, '1990-10-20', NULL, '0918484131', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-01 19:02:43', '2018-11-01 19:02:43'),
(6, 'Dam Pow', 'dam.le@gmail.com', '$2y$10$pLPqT1ApS86U1a9LzILhyOGURTLxKHr180cBCce8MyMbu9I8MThhq', 1, NULL, '1990-10-20', NULL, '09184841232', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-05 20:21:48', '2018-11-14 23:42:51'),
(7, 'Le Xuan Dam1', 'dam.le@fujitechjsc.com', '$2y$10$l0tQQb0WZURNRAaRZMd6.uV5GDzBGLX2RtiPrRYz61bQhMrIKpePy', 1, 1, '1990-10-20', NULL, '091848412', 'Tầng 5 Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-05 20:23:18', '2018-11-15 02:57:12'),
(8, 'Le Xuan Dam', 'lexuandam96@gmail.com', '$2y$10$L5rmNnZWrDOGJRF9AAD3oOmXtQkknDyBDifLJF6eGHsC/6hhQ/DXm', 1, NULL, '1990-10-20', NULL, '0965737294', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-18 23:32:13', '2018-11-18 23:32:13'),
(9, 'Le Xuan Dam', 'lexuandam960@gmail.com', '$2y$10$YPk4jplMuSLh5HpU18HdQOw1yLVJ8rW.T4ifvgg5Iz12yBREWbM46', 1, NULL, NULL, NULL, '09657372940', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-18 23:32:53', '2018-11-18 23:32:53'),
(10, 'Le Xuan Dam', 'lexuandam960@g0mail.com', '$2y$10$WuFOFG/PjXQpR6Z9kzUolewJ7y3vEXYV9YOuv8d75YnhkS47kucZi', 1, NULL, NULL, NULL, '096573702940', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-18 23:33:04', '2018-11-18 23:33:04'),
(11, 'ew', NULL, '$2y$10$0uJ6Ywyu8rA1qAXf2bbTc.EAQf6kc7MXui.5.UFsxJM8.K58/fj8a', 1, NULL, NULL, NULL, '43', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:18:54', '2018-11-19 01:18:54'),
(12, 'qwert', NULL, '$2y$10$72TKR.GPO4SiLceVEQPsY.ZDIglDfUuk3Go4Ig4vNzp2Lvcth33bO', 1, NULL, NULL, NULL, '434', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:21:04', '2018-11-19 01:21:04'),
(13, 'qeedse', NULL, '$2y$10$dORbSaDL2ENxaJ6hDqs9OOZj/oEQ60fjS4iP1mYmPYVlzgsugpELu', 1, NULL, NULL, NULL, '12345', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:22:47', '2018-11-19 01:22:47'),
(14, 'qa', NULL, '$2y$10$rCH.iw9y5N.GmiJdssaSU.mziYFL2L2uDk3LSJuPhSizhTf0hUSd6', 1, NULL, NULL, NULL, '098', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:27:46', '2018-11-19 01:27:46'),
(15, 'qa', NULL, '$2y$10$ZXbJV/d5/5xzZPQBUDHsg.7/Lyqw7u.6woCGa5Whmun45P9y2gOpq', 1, NULL, NULL, NULL, '0989', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:28:37', '2018-11-19 01:28:37'),
(16, 'qa', NULL, '$2y$10$E7q8bsDo7HBNyoabk9hf1.xzgX1TuPrKGbyWQ.KCojZXt/77KyqiK', 0, NULL, NULL, NULL, '09890', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:32:28', '2018-11-19 01:32:28'),
(17, 'a', NULL, '$2y$10$CoHJH4J9dQA8NT5tAqDsyOexxT7l54kZ49X8HChwZhI1ukWTJzd4u', 0, NULL, NULL, NULL, '123', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:33:26', '2018-11-19 01:33:26'),
(18, 'a', 'a', '$2y$10$0lYeqh3AcbTICb5Uq55e/O4g2uLF97V/z45q9JKO3BH4hr/FUfvL6', 0, NULL, '1970-01-01', NULL, '1234', 'a', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:35:06', '2018-11-19 01:35:06'),
(19, 'aaa', 'aa', '$2y$10$HD0B7zbpcwDG.wrFUqrJeupnjnMGU/ZDhAyLjTT0zRqISfzTo52YG', 0, NULL, '1970-01-01', NULL, '123456', 'aa', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:44:20', '2018-11-19 01:44:20'),
(20, 'q', 'q', '$2y$10$fBH.uB0fZELRrtIFBwj3cuWZlI8s93BIrCYWiUQWV.G3o.d432j7.', 0, NULL, '1990-11-19', NULL, '1', 'q', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:52:32', '2018-11-20 19:54:56'),
(21, 'fuji', NULL, '$2y$10$L.9X89LMr68fDoiM9b4UmepJ3vRtY8bSu3G4nDzdzG8pqiCOy627S', 1, NULL, NULL, NULL, '0123456789', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-22 01:02:36', '2018-11-22 01:02:36'),
(22, 'fuji', NULL, '$2y$10$qPgf/7oiu85q0ySqrl7veusGMXo0nYTDZ1ca6dUGNqKmMEdkbMqr.', 0, NULL, NULL, NULL, '01234567891', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-23 01:55:38', '2018-11-23 01:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_genba`
--

CREATE TABLE `user_genba` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `genba_id` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `user_genba`
--

INSERT INTO `user_genba` (`id`, `user_id`, `genba_id`, `department`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(2, 1, 1, 9, '0000-00-00 00:00:00', NULL, NULL),
(3, 2, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(4, 3, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 4, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 5, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 6, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 7, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 8, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(10, 9, 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(11, 1, 2, 1, '0000-00-00 00:00:00', NULL, NULL),
(12, 2, 2, 9, '0000-00-00 00:00:00', NULL, NULL),
(13, 3, 2, 1, '0000-00-00 00:00:00', NULL, NULL),
(14, 1, 3, 1, '0000-00-00 00:00:00', NULL, NULL),
(15, 2, 3, 9, '0000-00-00 00:00:00', NULL, NULL),
(16, 4, 3, 1, '0000-00-00 00:00:00', NULL, NULL),
(17, 1, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(18, 3, 4, 9, '0000-00-00 00:00:00', NULL, NULL),
(19, 4, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(20, 2, 5, 9, '0000-00-00 00:00:00', NULL, NULL),
(21, 4, 5, 1, '0000-00-00 00:00:00', NULL, NULL),
(22, 5, 5, 1, '0000-00-00 00:00:00', NULL, NULL),
(23, 6, 5, 1, '0000-00-00 00:00:00', NULL, NULL),
(24, 8, 5, 1, '0000-00-00 00:00:00', NULL, NULL),
(25, 12, 6, 9, '0000-00-00 00:00:00', NULL, NULL),
(26, 2, 6, 1, '0000-00-00 00:00:00', NULL, NULL),
(27, 4, 6, 1, '0000-00-00 00:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
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
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
