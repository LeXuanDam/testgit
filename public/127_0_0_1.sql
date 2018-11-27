-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 05:33 PM
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
-- Database: `calendar`
--
CREATE DATABASE IF NOT EXISTS `calendar` DEFAULT CHARACTER SET utf32 COLLATE utf32_unicode_ci;
USE `calendar`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `director` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `address`, `phone`, `email`, `fax`, `director`, `created_at`, `updated_at`, `deleted_at`, `description`) VALUES
(1, 'Fujitech', 'Tang 5 So 1 Thái Hà', '0918484638', 'dam.le@fujitehjsc.com', NULL, 3, '2018-11-15 07:48:10', '2018-11-15 00:48:10', NULL, ''),
(2, 'Fuji2', NULL, '0965737294', NULL, NULL, 4, '2018-11-15 10:07:40', '2018-11-15 03:07:40', NULL, ''),
(3, 'Fuji2', NULL, '0965737294', NULL, NULL, 1, '2018-11-15 07:49:07', '2018-11-15 00:49:07', '2018-11-15 00:49:07', ''),
(4, 'fujitechjsc 2', 'Tang 5 So 1 Thai Ha', '0123456789', 'dam.le@fujitechjsc.com', NULL, 4, '2018-11-15 10:07:33', '2018-11-15 03:07:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genba`
--

CREATE TABLE `genba` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genba`
--

INSERT INTO `genba` (`id`, `user_id`, `start_time`, `end_time`, `title`, `location`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà123', 'API genba', '2018-10-30 02:54:47', '2018-11-01 03:02:48', '2018-11-01 03:02:48'),
(2, 1, '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-30 02:55:32', '2018-11-01 03:33:24', '2018-11-01 03:33:24'),
(3, 1, '2018-10-31 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-30 02:56:03', '2018-11-01 03:16:08', NULL),
(4, 1, '2018-10-31 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-30 02:56:43', '2018-11-06 08:11:25', '2018-11-06 08:11:25'),
(5, 1, '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-30 08:33:17', '2018-11-06 08:18:42', '2018-11-06 08:18:42'),
(6, 1, '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-30 08:34:11', '2018-10-30 08:34:11', NULL),
(7, 1, '2018-10-31 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-31 04:37:30', '2018-11-08 02:57:41', NULL),
(9, 1, '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-10-31 06:54:51', '2018-10-31 06:54:51', NULL),
(10, 1, '2018-10-29 00:00:00', '2018-10-31 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-11-06 03:24:59', '2018-11-06 03:24:59', NULL),
(11, 1, '2018-10-29 00:00:00', '2018-10-30 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-11-06 07:01:53', '2018-11-06 07:01:53', NULL),
(12, 1, '2018-10-30 00:00:00', '2018-10-30 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-11-06 07:07:29', '2018-11-06 07:07:29', NULL),
(13, 1, '2018-10-03 00:00:00', '2018-10-03 00:00:00', 'test genba', 'Số 1 Thái Hà', 'API genba', '2018-11-06 07:48:01', '2018-11-06 07:48:01', NULL);

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
-- Table structure for table `time_sheet`
--

CREATE TABLE `time_sheet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `genba_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_katakana` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kanj` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `uuid`, `name_katakana`, `name_kanj`, `email`, `password`, `level`, `group_id`, `birthday`, `avatar`, `phone`, `address`, `gender`, `facebook_id`, `line_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '', 'admin', '', 'dam.le@fujitechjsc.com', '$2y$10$Szcg9vTECIJzJxO9G3k20ObKEE0QFa3JMBqkkUZv9jeFjHTijvHIS', 9, 1, '1990-10-20', 'http://localhost/Calendara_app/public/avatar/avatar_1.PNG', '+84918484638', 'Số 1 Thái Hà', 1, NULL, NULL, 'dqLyXMTddAD1e1B671XXNfL3KyjVEo8i1WDnHK9KT12nNrkvWQnkBBK2IG3D', NULL, '2018-11-01 01:39:41', '2018-11-15 02:57:12'),
(2, '', 'dampow', '', 'dampow@gmail.com', '$2y$10$8nYZImt6u3WTMcU7vFdtyeU3yn4DpEjUT0Qfis..H4KPs1/5QrCtK', 1, 1, '1990-10-20', NULL, '+84349609913', 'Số 1 Thái Hà', 1, NULL, NULL, '4B5wdIbz3W9ryfk3ZNlzOHBksPLaSGN2QQrlx0bTuhzOnTwxPUFWa7LNZSMS', NULL, '2018-11-01 01:40:30', '2018-11-01 01:40:30'),
(3, '', 'Le Xuan Dam', '', 'dampow@gmail.com', '$2y$10$wEESOGAlppEI16nplX7p7.JM/k8ApUZu/SOEm0f1OUoAfBLiBmYKC', 1, 1, '1990-10-20', NULL, '+84965737294', 'Số 1 Thái Hà', 1, NULL, NULL, 'vIr3JkVps0zgzmrLBdklLpFAKjosZCqz2GgDpTUVtPz0kg411LUndCxz7bED', NULL, '2018-11-01 18:59:44', '2018-11-15 02:57:12'),
(4, '', 'Le Xuan Dam', '', 'dam.le@fujitechjsc12.com', '$2y$10$bLlRDcTzOzCtZW9NF.Kzpel07zz21o90H6sNz1r.JoIIYxQuPBfKi', 9, 1, '1990-10-20', NULL, '0918484638', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-01 19:00:10', '2018-11-15 02:57:12'),
(5, '', 'Le Xuan Dam', '', NULL, '$2y$10$bkxv2GLlDE6dIuqy0EWxKe4vsV4fe8grQh.e/ao28GdAAK2PJoc8S', 1, NULL, '1990-10-20', NULL, '0918484131', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-01 19:02:43', '2018-11-01 19:02:43'),
(6, '', 'Dam Pow', '', 'dam.le@gmail.com', '$2y$10$pLPqT1ApS86U1a9LzILhyOGURTLxKHr180cBCce8MyMbu9I8MThhq', 1, NULL, '1990-10-20', NULL, '09184841232', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-05 20:21:48', '2018-11-14 23:42:51'),
(7, '', 'Le Xuan Dam1', '', 'dam.le@fujitechjsc.com', '$2y$10$l0tQQb0WZURNRAaRZMd6.uV5GDzBGLX2RtiPrRYz61bQhMrIKpePy', 1, 1, '1990-10-20', NULL, '091848412', 'Tầng 5 Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-05 20:23:18', '2018-11-15 02:57:12'),
(8, '', 'Le Xuan Dam', '', 'lexuandam96@gmail.com', '$2y$10$L5rmNnZWrDOGJRF9AAD3oOmXtQkknDyBDifLJF6eGHsC/6hhQ/DXm', 1, NULL, '1990-10-20', NULL, '0965737294', 'Số 1 Thái Hà', 1, NULL, NULL, NULL, NULL, '2018-11-18 23:32:13', '2018-11-18 23:32:13'),
(9, '', 'Le Xuan Dam', '', 'lexuandam960@gmail.com', '$2y$10$YPk4jplMuSLh5HpU18HdQOw1yLVJ8rW.T4ifvgg5Iz12yBREWbM46', 1, NULL, NULL, NULL, '09657372940', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-18 23:32:53', '2018-11-18 23:32:53'),
(10, '', 'Le Xuan Dam', '', 'lexuandam960@g0mail.com', '$2y$10$WuFOFG/PjXQpR6Z9kzUolewJ7y3vEXYV9YOuv8d75YnhkS47kucZi', 1, NULL, NULL, NULL, '096573702940', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-18 23:33:04', '2018-11-18 23:33:04'),
(11, '', 'ew', '', NULL, '$2y$10$0uJ6Ywyu8rA1qAXf2bbTc.EAQf6kc7MXui.5.UFsxJM8.K58/fj8a', 1, NULL, NULL, NULL, '43', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:18:54', '2018-11-19 01:18:54'),
(12, '', 'qwert', '', NULL, '$2y$10$72TKR.GPO4SiLceVEQPsY.ZDIglDfUuk3Go4Ig4vNzp2Lvcth33bO', 1, NULL, NULL, NULL, '434', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:21:04', '2018-11-19 01:21:04'),
(13, '', 'qeedse', '', NULL, '$2y$10$dORbSaDL2ENxaJ6hDqs9OOZj/oEQ60fjS4iP1mYmPYVlzgsugpELu', 1, NULL, NULL, NULL, '12345', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:22:47', '2018-11-19 01:22:47'),
(14, '', 'qa', '', NULL, '$2y$10$rCH.iw9y5N.GmiJdssaSU.mziYFL2L2uDk3LSJuPhSizhTf0hUSd6', 1, NULL, NULL, NULL, '098', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:27:46', '2018-11-19 01:27:46'),
(15, '', 'qa', '', NULL, '$2y$10$ZXbJV/d5/5xzZPQBUDHsg.7/Lyqw7u.6woCGa5Whmun45P9y2gOpq', 1, NULL, NULL, NULL, '0989', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:28:37', '2018-11-19 01:28:37'),
(16, '', 'qa', '', NULL, '$2y$10$E7q8bsDo7HBNyoabk9hf1.xzgX1TuPrKGbyWQ.KCojZXt/77KyqiK', 0, NULL, NULL, NULL, '09890', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:32:28', '2018-11-19 01:32:28'),
(17, '', 'a', '', NULL, '$2y$10$CoHJH4J9dQA8NT5tAqDsyOexxT7l54kZ49X8HChwZhI1ukWTJzd4u', 0, NULL, NULL, NULL, '123', NULL, 1, NULL, NULL, NULL, NULL, '2018-11-19 01:33:26', '2018-11-19 01:33:26'),
(18, '', 'a', '', 'a', '$2y$10$0lYeqh3AcbTICb5Uq55e/O4g2uLF97V/z45q9JKO3BH4hr/FUfvL6', 0, NULL, '1970-01-01', NULL, '1234', 'a', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:35:06', '2018-11-19 01:35:06'),
(19, '', 'aaa', '', 'aa', '$2y$10$HD0B7zbpcwDG.wrFUqrJeupnjnMGU/ZDhAyLjTT0zRqISfzTo52YG', 0, NULL, '1970-01-01', NULL, '123456', 'aa', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:44:20', '2018-11-19 01:44:20'),
(20, '', 'q', '', 'q', '$2y$10$fBH.uB0fZELRrtIFBwj3cuWZlI8s93BIrCYWiUQWV.G3o.d432j7.', 0, NULL, '1990-11-19', NULL, '1', 'q', 1, NULL, NULL, NULL, NULL, '2018-11-19 01:52:32', '2018-11-20 19:54:56');

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
-- Indexes for table `time_sheet`
--
ALTER TABLE `time_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_genba`
--
ALTER TABLE `user_genba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `time_sheet`
--
ALTER TABLE `time_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_genba`
--
ALTER TABLE `user_genba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `eccube3`
--
CREATE DATABASE IF NOT EXISTS `eccube3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `eccube3`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`) VALUES
('20150602223925'),
('20150612152108'),
('20150613000000'),
('20150716105942'),
('20150716110252'),
('20150716110827'),
('20150716110834'),
('20150722170707'),
('20150728172928'),
('20150731154721'),
('20150804132137'),
('20150805105421'),
('20150806184533'),
('20150806220909'),
('20150806222639'),
('20150812132454'),
('20150821134922'),
('20151016145841'),
('20151022094610'),
('20151023102323'),
('20151110174227'),
('20151113150301'),
('20151116142354'),
('20151124184644'),
('20160114093442'),
('20160114142234'),
('20160216215635'),
('20160413151321'),
('20160823140932'),
('20160823172700'),
('20160908161616'),
('20161014100031'),
('20161108095350'),
('20161219135621'),
('20161219143135'),
('20170217184500'),
('20170224150000'),
('20170225120000');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_authority_role`
--

CREATE TABLE `dtb_authority_role` (
  `authority_role_id` int(11) NOT NULL,
  `authority_id` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `deny_url` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_base_info`
--

CREATE TABLE `dtb_base_info` (
  `id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `company_name` longtext,
  `company_kana` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `business_hour` longtext,
  `email01` longtext,
  `email02` longtext,
  `email03` longtext,
  `email04` longtext,
  `shop_name` longtext,
  `shop_kana` longtext,
  `shop_name_eng` longtext,
  `update_date` datetime NOT NULL,
  `good_traded` longtext,
  `message` longtext,
  `latitude` longtext,
  `longitude` longtext,
  `delivery_free_amount` decimal(10,0) DEFAULT NULL,
  `delivery_free_quantity` int(11) DEFAULT NULL,
  `option_multiple_shipping` smallint(6) DEFAULT '0',
  `option_mypage_order_status_display` smallint(6) DEFAULT '1',
  `nostock_hidden` smallint(6) DEFAULT '0',
  `option_favorite_product` smallint(6) DEFAULT '1',
  `option_product_delivery_fee` smallint(6) DEFAULT '0',
  `option_product_tax_rule` smallint(6) DEFAULT '0',
  `option_customer_activate` smallint(6) DEFAULT '1',
  `option_remember_me` smallint(6) DEFAULT '0',
  `authentication_key` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_base_info`
--

INSERT INTO `dtb_base_info` (`id`, `country_id`, `pref`, `company_name`, `company_kana`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `business_hour`, `email01`, `email02`, `email03`, `email04`, `shop_name`, `shop_kana`, `shop_name_eng`, `update_date`, `good_traded`, `message`, `latitude`, `longitude`, `delivery_free_amount`, `delivery_free_quantity`, `option_multiple_shipping`, `option_mypage_order_status_display`, `nostock_hidden`, `option_favorite_product`, `option_product_delivery_fee`, `option_product_tax_rule`, `option_customer_activate`, `option_remember_me`, `authentication_key`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thuong.nguyen@fujitechjsc.com', 'thuong.nguyen@fujitechjsc.com', 'thuong.nguyen@fujitechjsc.com', 'thuong.nguyen@fujitechjsc.com', 'MY FREEDOM', NULL, NULL, '2018-05-15 09:18:49', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_block`
--

CREATE TABLE `dtb_block` (
  `block_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `block_name` longtext,
  `file_name` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `logic_flg` smallint(6) NOT NULL DEFAULT '1',
  `deletable_flg` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_block`
--

INSERT INTO `dtb_block` (`block_id`, `device_type_id`, `block_name`, `file_name`, `create_date`, `update_date`, `logic_flg`, `deletable_flg`) VALUES
(1, 10, 'カテゴリ', 'category', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 1, 0),
(2, 10, 'カゴの中', 'cart', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 1, 0),
(3, 10, '商品検索', 'search_product', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 1, 0),
(4, 10, '新着情報', 'news', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 1, 0),
(5, 10, 'ログイン', 'login', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 1, 0),
(6, 10, 'ロゴ', 'logo', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0, 0),
(7, 10, 'フッター', 'footer', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0, 0),
(8, 10, '新着商品', 'new_product', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0, 0),
(9, 10, 'フリーエリア', 'free', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0, 0),
(10, 10, 'ギャラリー', 'garally', '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_block_position`
--

CREATE TABLE `dtb_block_position` (
  `page_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `block_row` int(11) DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_block_position`
--

INSERT INTO `dtb_block_position` (`page_id`, `target_id`, `block_id`, `block_row`, `anywhere`) VALUES
(1, 2, 1, 5, 1),
(1, 2, 2, 2, 1),
(1, 2, 3, 3, 1),
(1, 2, 5, 4, 1),
(1, 2, 6, 1, 1),
(1, 8, 4, 2, 0),
(1, 8, 8, 1, 0),
(1, 8, 9, 3, 0),
(1, 8, 10, 4, 0),
(1, 9, 7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category`
--

CREATE TABLE `dtb_category` (
  `category_id` int(11) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `category_name` longtext NOT NULL,
  `level` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category`
--

INSERT INTO `dtb_category` (`category_id`, `parent_category_id`, `creator_id`, `category_name`, `level`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, NULL, 1, 'キッチンツール', 1, 5, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(2, NULL, 1, 'インテリア', 1, 6, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(3, 1, 1, '食器', 2, 3, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(4, 1, 1, '調理器具', 2, 4, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(5, 3, 1, 'フォーク', 3, 2, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(6, NULL, 1, '新入荷', 1, 1, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_count`
--

CREATE TABLE `dtb_category_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category_count`
--

INSERT INTO `dtb_category_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 1, '2018-05-15 09:18:09'),
(4, 1, '2018-05-15 09:18:09'),
(5, 1, '2018-05-15 09:18:09'),
(6, 2, '2018-05-15 09:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_total_count`
--

CREATE TABLE `dtb_category_total_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category_total_count`
--

INSERT INTO `dtb_category_total_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 2, '2018-05-15 09:18:09'),
(3, 2, '2018-05-15 09:18:09'),
(4, 1, '2018-05-15 09:18:09'),
(5, 1, '2018-05-15 09:18:09'),
(6, 2, '2018-05-15 09:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_category`
--

CREATE TABLE `dtb_class_category` (
  `class_category_id` int(11) NOT NULL,
  `class_name_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class_category`
--

INSERT INTO `dtb_class_category` (`class_category_id`, `class_name_id`, `creator_id`, `name`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, 1, '金', 1, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(2, 1, 1, '銀', 2, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(3, 1, 1, 'プラチナ', 3, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(4, 2, 1, '120mm', 1, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(5, 2, 1, '170mm', 2, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(6, 2, 1, '150cm', 3, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_name`
--

CREATE TABLE `dtb_class_name` (
  `class_name_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class_name`
--

INSERT INTO `dtb_class_name` (`class_name_id`, `creator_id`, `name`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, '材質', 1, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0),
(2, 1, 'サイズ', 2, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv`
--

CREATE TABLE `dtb_csv` (
  `csv_id` int(11) NOT NULL,
  `csv_type` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `entity_name` longtext NOT NULL,
  `field_name` longtext NOT NULL,
  `reference_field_name` longtext,
  `disp_name` longtext NOT NULL,
  `rank` smallint(6) NOT NULL,
  `enable_flg` smallint(6) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_csv`
--

INSERT INTO `dtb_csv` (`csv_id`, `csv_type`, `creator_id`, `entity_name`, `field_name`, `reference_field_name`, `disp_name`, `rank`, `enable_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'Eccube\\Entity\\Product', 'id', NULL, '商品ID', 1, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(2, 1, 1, 'Eccube\\Entity\\Product', 'Status', 'id', '公開ステータス(ID)', 2, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(3, 1, 1, 'Eccube\\Entity\\Product', 'Status', 'name', '公開ステータス(名称)', 3, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(4, 1, 1, 'Eccube\\Entity\\Product', 'name', NULL, '商品名', 4, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(5, 1, 1, 'Eccube\\Entity\\Product', 'note', NULL, 'ショップ用メモ欄', 5, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(6, 1, 1, 'Eccube\\Entity\\Product', 'description_list', NULL, '商品説明(一覧)', 6, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(7, 1, 1, 'Eccube\\Entity\\Product', 'description_detail', NULL, '商品説明(詳細)', 7, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(8, 1, 1, 'Eccube\\Entity\\Product', 'search_word', NULL, '検索ワード', 8, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(9, 1, 1, 'Eccube\\Entity\\Product', 'free_area', NULL, 'フリーエリア', 9, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(10, 1, 1, 'Eccube\\Entity\\ProductClass', 'id', NULL, '商品規格ID', 10, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(11, 1, 1, 'Eccube\\Entity\\ProductClass', 'ProductType', 'id', '商品種別(ID)', 11, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(12, 1, 1, 'Eccube\\Entity\\ProductClass', 'ProductType', 'name', '商品種別(名称)', 12, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(13, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory1', 'id', '規格分類1(ID)', 13, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(14, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory1', 'name', '規格分類1(名称)', 14, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(15, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory2', 'id', '規格分類2(ID)', 15, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(16, 1, 1, 'Eccube\\Entity\\ProductClass', 'ClassCategory2', 'name', '規格分類2(名称)', 16, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(17, 1, 1, 'Eccube\\Entity\\ProductClass', 'DeliveryDate', 'id', '発送日目安(ID)', 17, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(18, 1, 1, 'Eccube\\Entity\\ProductClass', 'DeliveryDate', 'name', '発送日目安(名称)', 18, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(19, 1, 1, 'Eccube\\Entity\\ProductClass', 'code', NULL, '商品コード', 19, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(20, 1, 1, 'Eccube\\Entity\\ProductClass', 'stock', NULL, '在庫数', 20, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(21, 1, 1, 'Eccube\\Entity\\ProductClass', 'stock_unlimited', NULL, '在庫数無制限フラグ', 21, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(22, 1, 1, 'Eccube\\Entity\\ProductClass', 'sale_limit', NULL, '販売制限数', 22, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(23, 1, 1, 'Eccube\\Entity\\ProductClass', 'price01', NULL, '通常価格', 23, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(24, 1, 1, 'Eccube\\Entity\\ProductClass', 'price02', NULL, '販売価格', 24, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(25, 1, 1, 'Eccube\\Entity\\ProductClass', 'delivery_fee', NULL, '送料', 25, 0, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(26, 1, 1, 'Eccube\\Entity\\Product', 'ProductImage', 'file_name', '商品画像', 26, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(27, 1, 1, 'Eccube\\Entity\\Product', 'ProductCategories', 'category_id', '商品カテゴリ(ID)', 27, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(28, 1, 1, 'Eccube\\Entity\\Product', 'ProductCategories', 'Category', '商品カテゴリ(名称)', 28, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(29, 2, 1, 'Eccube\\Entity\\Customer', 'id', NULL, '会員ID', 1, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(30, 2, 1, 'Eccube\\Entity\\Customer', 'name01', NULL, 'お名前(姓)', 2, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(31, 2, 1, 'Eccube\\Entity\\Customer', 'name02', NULL, 'お名前(名)', 3, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(32, 2, 1, 'Eccube\\Entity\\Customer', 'kana01', NULL, 'お名前(セイ)', 4, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(33, 2, 1, 'Eccube\\Entity\\Customer', 'kana02', NULL, 'お名前(メイ)', 5, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(34, 2, 1, 'Eccube\\Entity\\Customer', 'company_name', NULL, '会社名', 6, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(35, 2, 1, 'Eccube\\Entity\\Customer', 'zip01', NULL, '郵便番号1', 7, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(36, 2, 1, 'Eccube\\Entity\\Customer', 'zip02', NULL, '郵便番号2', 8, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(37, 2, 1, 'Eccube\\Entity\\Customer', 'Pref', 'id', '都道府県(ID)', 9, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(38, 2, 1, 'Eccube\\Entity\\Customer', 'Pref', 'name', '都道府県(名称)', 10, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(39, 2, 1, 'Eccube\\Entity\\Customer', 'addr01', NULL, '住所1', 11, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(40, 2, 1, 'Eccube\\Entity\\Customer', 'addr02', NULL, '住所2', 12, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(41, 2, 1, 'Eccube\\Entity\\Customer', 'email', NULL, 'メールアドレス', 13, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(42, 2, 1, 'Eccube\\Entity\\Customer', 'tel01', NULL, 'TEL1', 14, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(43, 2, 1, 'Eccube\\Entity\\Customer', 'tel02', NULL, 'TEL2', 15, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(44, 2, 1, 'Eccube\\Entity\\Customer', 'tel03', NULL, 'TEL3', 16, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(45, 2, 1, 'Eccube\\Entity\\Customer', 'fax01', NULL, 'FAX1', 17, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(46, 2, 1, 'Eccube\\Entity\\Customer', 'fax02', NULL, 'FAX2', 18, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(47, 2, 1, 'Eccube\\Entity\\Customer', 'fax03', NULL, 'FAX3', 19, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(48, 2, 1, 'Eccube\\Entity\\Customer', 'Sex', 'id', '性別(ID)', 20, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(49, 2, 1, 'Eccube\\Entity\\Customer', 'Sex', 'name', '性別(名称)', 21, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(50, 2, 1, 'Eccube\\Entity\\Customer', 'Job', 'id', '職業(ID)', 22, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(51, 2, 1, 'Eccube\\Entity\\Customer', 'Job', 'name', '職業(名称)', 23, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(52, 2, 1, 'Eccube\\Entity\\Customer', 'birth', NULL, '誕生日', 24, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(53, 2, 1, 'Eccube\\Entity\\Customer', 'first_buy_date', NULL, '初回購入日', 25, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(54, 2, 1, 'Eccube\\Entity\\Customer', 'last_buy_date', NULL, '最終購入日', 26, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(55, 2, 1, 'Eccube\\Entity\\Customer', 'buy_times', NULL, '購入回数', 27, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(56, 2, 1, 'Eccube\\Entity\\Customer', 'note', NULL, 'ショップ用メモ欄', 28, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(57, 2, 1, 'Eccube\\Entity\\Customer', 'Status', 'id', '会員ステータス(ID)', 29, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(58, 2, 1, 'Eccube\\Entity\\Customer', 'Status', 'name', '会員ステータス(名称)', 30, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(59, 2, 1, 'Eccube\\Entity\\Customer', 'create_date', NULL, '登録日', 31, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(60, 2, 1, 'Eccube\\Entity\\Customer', 'update_date', NULL, '更新日', 32, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(61, 3, 1, 'Eccube\\Entity\\Order', 'id', NULL, '注文ID', 1, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(62, 3, 1, 'Eccube\\Entity\\Order', 'Customer', 'id', '会員ID', 2, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(63, 3, 1, 'Eccube\\Entity\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(64, 3, 1, 'Eccube\\Entity\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(65, 3, 1, 'Eccube\\Entity\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(66, 3, 1, 'Eccube\\Entity\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(67, 3, 1, 'Eccube\\Entity\\Order', 'company_name', NULL, '会社名', 7, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(68, 3, 1, 'Eccube\\Entity\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(69, 3, 1, 'Eccube\\Entity\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(70, 3, 1, 'Eccube\\Entity\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(71, 3, 1, 'Eccube\\Entity\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(72, 3, 1, 'Eccube\\Entity\\Order', 'addr01', NULL, '住所1', 12, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(73, 3, 1, 'Eccube\\Entity\\Order', 'addr02', NULL, '住所2', 13, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(74, 3, 1, 'Eccube\\Entity\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(75, 3, 1, 'Eccube\\Entity\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(76, 3, 1, 'Eccube\\Entity\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(77, 3, 1, 'Eccube\\Entity\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(78, 3, 1, 'Eccube\\Entity\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(79, 3, 1, 'Eccube\\Entity\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(80, 3, 1, 'Eccube\\Entity\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(81, 3, 1, 'Eccube\\Entity\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(82, 3, 1, 'Eccube\\Entity\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(83, 3, 1, 'Eccube\\Entity\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(84, 3, 1, 'Eccube\\Entity\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(85, 3, 1, 'Eccube\\Entity\\Order', 'birth', NULL, '誕生日', 25, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(86, 3, 1, 'Eccube\\Entity\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(87, 3, 1, 'Eccube\\Entity\\Order', 'subtotal', NULL, '小計', 27, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(88, 3, 1, 'Eccube\\Entity\\Order', 'discount', NULL, '値引き', 28, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(89, 3, 1, 'Eccube\\Entity\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(90, 3, 1, 'Eccube\\Entity\\Order', 'tax', NULL, '税金', 30, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(91, 3, 1, 'Eccube\\Entity\\Order', 'total', NULL, '合計', 31, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(92, 3, 1, 'Eccube\\Entity\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(93, 3, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(94, 3, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(95, 3, 1, 'Eccube\\Entity\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(96, 3, 1, 'Eccube\\Entity\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(97, 3, 1, 'Eccube\\Entity\\Order', 'order_date', NULL, '受注日', 37, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(98, 3, 1, 'Eccube\\Entity\\Order', 'payment_date', NULL, '入金日', 38, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(99, 3, 1, 'Eccube\\Entity\\Order', 'commit_date', NULL, '発送日', 39, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(100, 3, 1, 'Eccube\\Entity\\OrderDetail', 'id', NULL, '注文詳細ID', 40, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(101, 3, 1, 'Eccube\\Entity\\OrderDetail', 'Product', 'id', '商品ID', 41, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(102, 3, 1, 'Eccube\\Entity\\OrderDetail', 'ProductClass', 'id', '商品規格ID', 42, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(103, 3, 1, 'Eccube\\Entity\\OrderDetail', 'product_name', NULL, '商品名', 43, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(104, 3, 1, 'Eccube\\Entity\\OrderDetail', 'product_code', NULL, '商品コード', 44, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(105, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_name1', NULL, '規格名1', 45, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(106, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_name2', NULL, '規格名2', 46, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(107, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_category_name1', NULL, '規格分類名1', 47, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(108, 3, 1, 'Eccube\\Entity\\OrderDetail', 'class_category_name2', NULL, '規格分類名2', 48, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(109, 3, 1, 'Eccube\\Entity\\OrderDetail', 'price', NULL, '価格', 49, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(110, 3, 1, 'Eccube\\Entity\\OrderDetail', 'quantity', NULL, '個数', 50, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(111, 3, 1, 'Eccube\\Entity\\OrderDetail', 'tax_rate', NULL, '税率', 51, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(112, 3, 1, 'Eccube\\Entity\\OrderDetail', 'tax_rule', NULL, '税率ルール(ID)', 52, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(113, 4, 1, 'Eccube\\Entity\\Order', 'id', NULL, '注文ID', 1, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(114, 4, 1, 'Eccube\\Entity\\Order', 'Customer', 'id', '会員ID', 2, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(115, 4, 1, 'Eccube\\Entity\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(116, 4, 1, 'Eccube\\Entity\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(117, 4, 1, 'Eccube\\Entity\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(118, 4, 1, 'Eccube\\Entity\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(119, 4, 1, 'Eccube\\Entity\\Order', 'company_name', NULL, '会社名', 7, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(120, 4, 1, 'Eccube\\Entity\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(121, 4, 1, 'Eccube\\Entity\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(122, 4, 1, 'Eccube\\Entity\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(123, 4, 1, 'Eccube\\Entity\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(124, 4, 1, 'Eccube\\Entity\\Order', 'addr01', NULL, '住所1', 12, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(125, 4, 1, 'Eccube\\Entity\\Order', 'addr02', NULL, '住所2', 13, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(126, 4, 1, 'Eccube\\Entity\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(127, 4, 1, 'Eccube\\Entity\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(128, 4, 1, 'Eccube\\Entity\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(129, 4, 1, 'Eccube\\Entity\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(130, 4, 1, 'Eccube\\Entity\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(131, 4, 1, 'Eccube\\Entity\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(132, 4, 1, 'Eccube\\Entity\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(133, 4, 1, 'Eccube\\Entity\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(134, 4, 1, 'Eccube\\Entity\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(135, 4, 1, 'Eccube\\Entity\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(136, 4, 1, 'Eccube\\Entity\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(137, 4, 1, 'Eccube\\Entity\\Order', 'birth', NULL, '誕生日', 25, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(138, 4, 1, 'Eccube\\Entity\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(139, 4, 1, 'Eccube\\Entity\\Order', 'subtotal', NULL, '小計', 27, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(140, 4, 1, 'Eccube\\Entity\\Order', 'discount', NULL, '値引き', 28, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(141, 4, 1, 'Eccube\\Entity\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(142, 4, 1, 'Eccube\\Entity\\Order', 'tax', NULL, '税金', 30, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(143, 4, 1, 'Eccube\\Entity\\Order', 'total', NULL, '合計', 31, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(144, 4, 1, 'Eccube\\Entity\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(145, 4, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(146, 4, 1, 'Eccube\\Entity\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(147, 4, 1, 'Eccube\\Entity\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(148, 4, 1, 'Eccube\\Entity\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(149, 4, 1, 'Eccube\\Entity\\Order', 'order_date', NULL, '受注日', 37, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(150, 4, 1, 'Eccube\\Entity\\Order', 'payment_date', NULL, '入金日', 38, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(151, 4, 1, 'Eccube\\Entity\\Order', 'commit_date', NULL, '発送日', 39, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(152, 4, 1, 'Eccube\\Entity\\Shipping', 'id', NULL, '配送ID', 40, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(153, 4, 1, 'Eccube\\Entity\\Shipping', 'name01', NULL, '配送先_お名前(姓)', 41, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(154, 4, 1, 'Eccube\\Entity\\Shipping', 'name02', NULL, '配送先_お名前(名)', 42, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(155, 4, 1, 'Eccube\\Entity\\Shipping', 'kana01', NULL, '配送先_お名前(セイ)', 43, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(156, 4, 1, 'Eccube\\Entity\\Shipping', 'kana02', NULL, '配送先_お名前(メイ)', 44, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(157, 4, 1, 'Eccube\\Entity\\Shipping', 'company_name', NULL, '配送先_会社名', 45, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(158, 4, 1, 'Eccube\\Entity\\Shipping', 'zip01', NULL, '配送先_郵便番号1', 46, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(159, 4, 1, 'Eccube\\Entity\\Shipping', 'zip02', NULL, '配送先_郵便番号2', 47, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(160, 4, 1, 'Eccube\\Entity\\Shipping', 'Pref', 'id', '配送先_都道府県(ID)', 48, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(161, 4, 1, 'Eccube\\Entity\\Shipping', 'Pref', 'name', '配送先_都道府県(名称)', 49, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(162, 4, 1, 'Eccube\\Entity\\Shipping', 'addr01', NULL, '配送先_住所1', 50, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(163, 4, 1, 'Eccube\\Entity\\Shipping', 'addr02', NULL, '配送先_住所2', 51, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(164, 4, 1, 'Eccube\\Entity\\Shipping', 'tel01', NULL, '配送先_TEL1', 52, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(165, 4, 1, 'Eccube\\Entity\\Shipping', 'tel02', NULL, '配送先_TEL2', 53, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(166, 4, 1, 'Eccube\\Entity\\Shipping', 'tel03', NULL, '配送先_TEL3', 54, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(167, 4, 1, 'Eccube\\Entity\\Shipping', 'fax01', NULL, '配送先_FAX1', 55, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(168, 4, 1, 'Eccube\\Entity\\Shipping', 'fax02', NULL, '配送先_FAX2', 56, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(169, 4, 1, 'Eccube\\Entity\\Shipping', 'fax03', NULL, '配送先_FAX3', 57, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(170, 4, 1, 'Eccube\\Entity\\Shipping', 'Delivery', 'id', '配送業者(ID)', 58, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(171, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_name', NULL, '配送業者(名称)', 59, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(172, 4, 1, 'Eccube\\Entity\\Shipping', 'DeliveryTime', 'id', 'お届け時間ID', 60, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(173, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_time', NULL, 'お届け時間(名称)', 61, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(174, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_date', NULL, 'お届け希望日', 62, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(175, 4, 1, 'Eccube\\Entity\\Shipping', 'DeliveryFee', 'id', '送料ID', 63, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(176, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_delivery_fee', NULL, '送料', 64, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(177, 4, 1, 'Eccube\\Entity\\Shipping', 'shipping_commit_date', NULL, '発送日', 65, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(178, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'id', NULL, '配送商品ID', 66, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(179, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'Product', 'id', '商品ID', 67, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(180, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'ProductClass', 'id', '商品規格ID', 68, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(181, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'product_name', NULL, '商品名', 69, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(182, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'product_code', NULL, '商品コード', 70, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(183, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_name1', NULL, '規格名1', 71, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(184, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_name2', NULL, '規格名2', 72, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(185, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_category_name1', NULL, '規格分類名1', 73, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(186, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'class_category_name2', NULL, '規格分類名2', 74, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(187, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'price', NULL, '価格', 75, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(188, 4, 1, 'Eccube\\Entity\\ShipmentItem', 'quantity', NULL, '個数', 76, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(189, 5, 1, 'Eccube\\Entity\\Category', 'id', NULL, 'カテゴリID', 1, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(190, 5, 1, 'Eccube\\Entity\\Category', 'rank', NULL, '表示ランク', 2, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(191, 5, 1, 'Eccube\\Entity\\Category', 'name', NULL, 'カテゴリ名', 3, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(192, 5, 1, 'Eccube\\Entity\\Category', 'Parent', 'id', '親カテゴリID', 4, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(193, 5, 1, 'Eccube\\Entity\\Category', 'level', NULL, '階層', 5, 1, '2018-05-15 09:18:15', '2018-05-15 09:18:15'),
(194, 1, 1, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'tag_id', 'タグ(ID)', 29, 1, '2018-05-15 11:18:38', '2018-05-15 11:18:38'),
(195, 1, 1, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'Tag', 'タグ(名称)', 30, 1, '2018-05-15 11:18:38', '2018-05-15 11:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer`
--

CREATE TABLE `dtb_customer` (
  `customer_id` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `sex` smallint(6) DEFAULT NULL,
  `job` smallint(6) DEFAULT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `name01` longtext NOT NULL,
  `name02` longtext NOT NULL,
  `kana01` longtext,
  `kana02` longtext,
  `company_name` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `email` longtext NOT NULL,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `birth` datetime DEFAULT NULL,
  `password` longtext,
  `salt` longtext,
  `secret_key` varchar(200) NOT NULL,
  `first_buy_date` datetime DEFAULT NULL,
  `last_buy_date` datetime DEFAULT NULL,
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(10,0) DEFAULT '0',
  `note` longtext,
  `reset_key` longtext,
  `reset_expire` datetime DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_address`
--

CREATE TABLE `dtb_customer_address` (
  `customer_address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref` smallint(6) DEFAULT NULL,
  `name01` longtext,
  `name02` longtext,
  `kana01` longtext,
  `kana02` longtext,
  `company_name` longtext,
  `zip01` longtext,
  `zip02` longtext,
  `zipcode` longtext,
  `addr01` longtext,
  `addr02` longtext,
  `tel01` longtext,
  `tel02` longtext,
  `tel03` longtext,
  `fax01` longtext,
  `fax02` longtext,
  `fax03` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_favorite_product`
--

CREATE TABLE `dtb_customer_favorite_product` (
  `favorite_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery`
--

CREATE TABLE `dtb_delivery` (
  `delivery_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `product_type_id` smallint(6) NOT NULL,
  `name` longtext,
  `service_name` longtext,
  `description` longtext,
  `confirm_url` longtext,
  `rank` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery`
--

INSERT INTO `dtb_delivery` (`delivery_id`, `creator_id`, `product_type_id`, `name`, `service_name`, `description`, `confirm_url`, `rank`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'サンプル業者', 'サンプル業者', NULL, NULL, 1, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09'),
(2, 1, 2, 'サンプル宅配', 'サンプル宅配', NULL, NULL, 2, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_date`
--

CREATE TABLE `dtb_delivery_date` (
  `date_id` int(11) NOT NULL,
  `name` longtext,
  `value` smallint(6) NOT NULL DEFAULT '0',
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_date`
--

INSERT INTO `dtb_delivery_date` (`date_id`, `name`, `value`, `rank`) VALUES
(1, '即日', 0, 0),
(2, '1～2日後', 1, 1),
(3, '3～4日後', 3, 2),
(4, '1週間以降', 7, 3),
(5, '2週間以降', 14, 4),
(6, '3週間以降', 21, 5),
(7, '1ヶ月以降', 30, 6),
(8, '2ヶ月以降', 60, 7),
(9, 'お取り寄せ(商品入荷後)', -1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_fee`
--

CREATE TABLE `dtb_delivery_fee` (
  `fee_id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `pref` smallint(6) NOT NULL,
  `fee` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_fee`
--

INSERT INTO `dtb_delivery_fee` (`fee_id`, `delivery_id`, `pref`, `fee`) VALUES
(1, 1, 1, '1000'),
(2, 1, 2, '1000'),
(3, 1, 3, '1000'),
(4, 1, 4, '1000'),
(5, 1, 5, '1000'),
(6, 1, 6, '1000'),
(7, 1, 7, '1000'),
(8, 1, 8, '1000'),
(9, 1, 9, '1000'),
(10, 1, 10, '1000'),
(11, 1, 11, '1000'),
(12, 1, 12, '1000'),
(13, 1, 13, '1000'),
(14, 1, 14, '1000'),
(15, 1, 15, '1000'),
(16, 1, 16, '1000'),
(17, 1, 17, '1000'),
(18, 1, 18, '1000'),
(19, 1, 19, '1000'),
(20, 1, 20, '1000'),
(21, 1, 21, '1000'),
(22, 1, 22, '1000'),
(23, 1, 23, '1000'),
(24, 1, 24, '1000'),
(25, 1, 25, '1000'),
(26, 1, 26, '1000'),
(27, 1, 27, '1000'),
(28, 1, 28, '1000'),
(29, 1, 29, '1000'),
(30, 1, 30, '1000'),
(31, 1, 31, '1000'),
(32, 1, 32, '1000'),
(33, 1, 33, '1000'),
(34, 1, 34, '1000'),
(35, 1, 35, '1000'),
(36, 1, 36, '1000'),
(37, 1, 37, '1000'),
(38, 1, 38, '1000'),
(39, 1, 39, '1000'),
(40, 1, 40, '1000'),
(41, 1, 41, '1000'),
(42, 1, 42, '1000'),
(43, 1, 43, '1000'),
(44, 1, 44, '1000'),
(45, 1, 45, '1000'),
(46, 1, 46, '1000'),
(47, 1, 47, '1000'),
(48, 2, 1, '0'),
(49, 2, 2, '0'),
(50, 2, 3, '0'),
(51, 2, 4, '0'),
(52, 2, 5, '0'),
(53, 2, 6, '0'),
(54, 2, 7, '0'),
(55, 2, 8, '0'),
(56, 2, 9, '0'),
(57, 2, 10, '0'),
(58, 2, 11, '0'),
(59, 2, 12, '0'),
(60, 2, 13, '0'),
(61, 2, 14, '0'),
(62, 2, 15, '0'),
(63, 2, 16, '0'),
(64, 2, 17, '0'),
(65, 2, 18, '0'),
(66, 2, 19, '0'),
(67, 2, 20, '0'),
(68, 2, 21, '0'),
(69, 2, 22, '0'),
(70, 2, 23, '0'),
(71, 2, 24, '0'),
(72, 2, 25, '0'),
(73, 2, 26, '0'),
(74, 2, 27, '0'),
(75, 2, 28, '0'),
(76, 2, 29, '0'),
(77, 2, 30, '0'),
(78, 2, 31, '0'),
(79, 2, 32, '0'),
(80, 2, 33, '0'),
(81, 2, 34, '0'),
(82, 2, 35, '0'),
(83, 2, 36, '0'),
(84, 2, 37, '0'),
(85, 2, 38, '0'),
(86, 2, 39, '0'),
(87, 2, 40, '0'),
(88, 2, 41, '0'),
(89, 2, 42, '0'),
(90, 2, 43, '0'),
(91, 2, 44, '0'),
(92, 2, 45, '0'),
(93, 2, 46, '0'),
(94, 2, 47, '0');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_time`
--

CREATE TABLE `dtb_delivery_time` (
  `time_id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_time`
--

INSERT INTO `dtb_delivery_time` (`time_id`, `delivery_id`, `delivery_time`) VALUES
(1, 1, '午前'),
(2, 1, '午後');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_help`
--

CREATE TABLE `dtb_help` (
  `id` int(11) NOT NULL,
  `law_country_id` smallint(6) DEFAULT NULL,
  `law_pref` smallint(6) DEFAULT NULL,
  `customer_agreement` longtext,
  `law_company` longtext,
  `law_manager` longtext,
  `law_zip01` longtext,
  `law_zip02` longtext,
  `law_zipcode` longtext,
  `law_addr01` longtext,
  `law_addr02` longtext,
  `law_tel01` longtext,
  `law_tel02` longtext,
  `law_tel03` longtext,
  `law_fax01` longtext,
  `law_fax02` longtext,
  `law_fax03` longtext,
  `law_email` longtext,
  `law_url` longtext,
  `law_term01` longtext,
  `law_term02` longtext,
  `law_term03` longtext,
  `law_term04` longtext,
  `law_term05` longtext,
  `law_term06` longtext,
  `law_term07` longtext,
  `law_term08` longtext,
  `law_term09` longtext,
  `law_term10` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_help`
--

INSERT INTO `dtb_help` (`id`, `law_country_id`, `law_pref`, `customer_agreement`, `law_company`, `law_manager`, `law_zip01`, `law_zip02`, `law_zipcode`, `law_addr01`, `law_addr02`, `law_tel01`, `law_tel02`, `law_tel03`, `law_fax01`, `law_fax02`, `law_fax03`, `law_email`, `law_url`, `law_term01`, `law_term02`, `law_term03`, `law_term04`, `law_term05`, `law_term06`, `law_term07`, `law_term08`, `law_term09`, `law_term10`, `create_date`, `update_date`) VALUES
(1, NULL, NULL, '第1条 (会員)\n\n1. 「会員」とは、当社が定める手続に従い本規約に同意の上、入会の申し込みを行う個人をいいます。\n2. 「会員情報」とは、会員が当社に開示した会員の属性に関する情報および会員の取引に関する履歴等の情報をいいます。\n3. 本規約は、全ての会員に適用され、登録手続時および登録後にお守りいただく規約です。\n\n第2条 (登録)\n\n1. 会員資格\n本規約に同意の上、所定の入会申込みをされたお客様は、所定の登録手続完了後に会員としての資格を有します。会員登録手続は、会員となるご本人が行ってください。代理による登録は一切認められません。なお、過去に会員資格が取り消された方やその他当社が相応しくないと判断した方からの会員申込はお断りする場合があります。\n\n2. 会員情報の入力\n会員登録手続の際には、入力上の注意をよく読み、所定の入力フォームに必要事項を正確に入力してください。会員情報の登録において、特殊記号・旧漢字・ローマ数字などはご使用になれません。これらの文字が登録された場合は当社にて変更致します。\n\n3. パスワードの管理\n(1)パスワードは会員本人のみが利用できるものとし、第三者に譲渡・貸与できないものとします。\n(2)パスワードは、他人に知られることがないよう定期的に変更する等、会員本人が責任をもって管理してください。\n(3)パスワードを用いて当社に対して行われた意思表示は、会員本人の意思表示とみなし、そのために生じる支払等は全て会員の責任となります。\n\n第3条 (変更)\n\n1. 会員は、氏名、住所など当社に届け出た事項に変更があった場合には、速やかに当社に連絡するものとします。\n2. 変更登録がなされなかったことにより生じた損害について、当社は一切責任を負いません。また、変更登録がなされた場合でも、変更登録前にすでに手続がなされた取引は、変更登録前の情報に基づいて行われますのでご注意ください。\n\n第4条 (退会)\n\n会員が退会を希望する場合には、会員本人が退会手続きを行ってください。所定の退会手続の終了後に、退会となります。\n\n第5条 (会員資格の喪失及び賠償義務)\n\n1. 会員が、会員資格取得申込の際に虚偽の申告をしたとき、通信販売による代金支払債務を怠ったとき、その他当社が会員として不適当と認める事由があるときは、当社は、会員資格を取り消すことができることとします。\n\n2. 会員が、以下の各号に定める行為をしたときは、これにより当社が被った損害を賠償する責任を負います。\n(1)会員番号、パスワードを不正に使用すること\n(2)当ホームページにアクセスして情報を改ざんしたり、当ホームページに有害なコンピュータープログラムを送信するなどして、当社の営業を妨害すること\n(3)当社が扱う商品の知的所有権を侵害する行為をすること\n(4)その他、この利用規約に反する行為をすること\n\n第6条 (会員情報の取扱い)\n1. 当社は、原則として会員情報を会員の事前の同意なく第三者に対して開示することはありません。ただし、次の各号の場合には、会員の事前の同意なく、当社は会員情報その他のお客様情報を開示できるものとします。\n(1)法令に基づき開示を求められた場合\n(2)当社の権利、利益、名誉等を保護するために必要であると当社が判断した場合\n\n2. 会員情報につきましては、当社の「個人情報保護への取組み」に従い、当社が管理します。当社は、会員情報を、会員へのサービス提供、サービス内容の向上、サービスの利用促進、およびサービスの健全かつ円滑な運営の確保を図る目的のために、当社おいて利用することができるものとします。\n\n3. 当社は、会員に対して、メールマガジンその他の方法による情報提供(広告を含みます)を行うことができるものとします。会員が情報提供を希望しない場合は、当社所定の方法に従い、その旨を通知して頂ければ、情報提供を停止します。ただし、本サービス運営に必要な情報提供につきましては、会員の希望により停止をすることはできません。\n\n第7条 (禁止事項)\n\n本サービスの利用に際して、会員に対し次の各号の行為を行うことを禁止します。\n\n1. 法令または本規約、本サービスご利用上のご注意、本サービスでのお買い物上のご注意その他の本規約等に違反すること\n2. 当社、およびその他の第三者の権利、利益、名誉等を損ねること\n3. 青少年の心身に悪影響を及ぼす恐れがある行為、その他公序良俗に反する行為を行うこと\n4. 他の利用者その他の第三者に迷惑となる行為や不快感を抱かせる行為を行うこと\n5. 虚偽の情報を入力すること\n6. 有害なコンピュータープログラム、メール等を送信または書き込むこと\n7. 当社のサーバーその他のコンピューターに不正にアクセスすること\n8. パスワードを第三者に貸与・譲渡すること、または第三者と共用すること\n9. その他当社が不適切と判断すること\n\n第8条 (サービスの中断・停止等)\n\n1. 当社は、本サービスの稼動状態を良好に保つために、次の各号の一に該当する場合、予告なしに、本サービスの提供全てあるいは一部を停止することがあります。\n(1)システムの定期保守および緊急保守のために必要な場合\n(2)システムに負荷が集中した場合\n(3)火災、停電、第三者による妨害行為などによりシステムの運用が困難になった場合\n(4)その他、止むを得ずシステムの停止が必要と当社が判断した場合\n\n第9条 (サービスの変更・廃止)\n\n当社は、その判断によりサービスの全部または一部を事前の通知なく、適宜変更・廃止できるものとします。\n\n第10条 (免責)\n\n1. 通信回線やコンピューターなどの障害によるシステムの中断・遅滞・中止・データの消失、データへの不正アクセスにより生じた損害、その他当社のサービスに関して会員に生じた損害について、当社は一切責任を負わないものとします。\n2. 当社は、当社のウェブページ・サーバー・ドメインなどから送られるメール・コンテンツに、コンピューター・ウィルスなどの有害なものが含まれていないことを保証いたしません。\n3. 会員が本規約等に違反したことによって生じた損害については、当社は一切責任を負いません。\n\n第11条 (本規約の改定)\n\n当社は、本規約を任意に改定できるものとし、また、当社において本規約を補充する規約(以下「補充規約」といいます)を定めることができます。本規約の改定または補充は、改定後の本規約または補充規約を当社所定のサイトに掲示したときにその効力を生じるものとします。この場合、会員は、改定後の規約および補充規約に従うものと致します。\n\n第12条 (準拠法、管轄裁判所)\n\n本規約に関して紛争が生じた場合、当社本店所在地を管轄する地方裁判所を第一審の専属的合意管轄裁判所とします。 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-15 09:18:10', '2018-05-15 09:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history`
--

CREATE TABLE `dtb_mail_history` (
  `send_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `subject` longtext,
  `mail_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_template`
--

CREATE TABLE `dtb_mail_template` (
  `template_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` longtext,
  `file_name` longtext,
  `subject` longtext,
  `header` longtext,
  `footer` longtext,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_mail_template`
--

INSERT INTO `dtb_mail_template` (`template_id`, `creator_id`, `name`, `file_name`, `subject`, `header`, `footer`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, '注文受付メール', 'Mail/order.twig', 'ご注文ありがとうございます', 'この度はご注文いただき誠にありがとうございます。\n下記ご注文内容にお間違えがないかご確認下さい。\n\n', '\n============================================\n\n\nこのメッセージはお客様へのお知らせ専用ですので、\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\nご了承ください。\n\nご質問やご不明な点がございましたら、こちらからお願いいたします。\n\n', 0, '2018-05-15 09:18:10', '2018-05-15 09:18:10'),
(5, 1, '問合受付メール', 'Mail/contact.twig', 'お問い合わせを受け付けました', NULL, NULL, 0, '2018-05-15 09:18:10', '2018-05-15 09:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member`
--

CREATE TABLE `dtb_member` (
  `member_id` int(11) NOT NULL,
  `work` smallint(6) DEFAULT NULL,
  `authority` smallint(6) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `name` longtext,
  `department` longtext,
  `login_id` longtext NOT NULL,
  `password` longtext NOT NULL,
  `salt` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_member`
--

INSERT INTO `dtb_member` (`member_id`, `work`, `authority`, `creator_id`, `name`, `department`, `login_id`, `password`, `salt`, `rank`, `del_flg`, `create_date`, `update_date`, `login_date`) VALUES
(1, 1, 0, 1, 'dummy', NULL, 'dummy', 'dummy', 'dummy', 0, 1, '2018-05-15 09:18:08', '2018-05-15 09:18:08', NULL),
(2, 1, 0, 1, '管理者', 'EC-CUBE SHOP', 'thuong', '2c6756aaef37a2d6248f2bf64a9e9a85edd6e0ec8b7cd80f67f5c9911ff98375', 'tU2yExuGqBUw37CId8rUAfTvGIHLa1yh', 1, 0, '2018-05-15 09:18:49', '2018-05-15 11:19:22', '2018-05-15 11:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news`
--

CREATE TABLE `dtb_news` (
  `news_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `news_title` longtext NOT NULL,
  `news_comment` longtext,
  `news_url` longtext,
  `news_select` smallint(6) NOT NULL DEFAULT '0',
  `link_method` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_news`
--

INSERT INTO `dtb_news` (`news_id`, `creator_id`, `news_date`, `rank`, `news_title`, `news_comment`, `news_url`, `news_select`, `link_method`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, '2018-05-15 09:18:10', 1, 'サイトオープンいたしました!', '一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！', NULL, 0, 1, '2018-05-15 09:18:10', '2018-05-15 09:18:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order`
--

CREATE TABLE `dtb_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_country_id` smallint(6) DEFAULT NULL,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_job` smallint(6) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `pre_order_id` longtext,
  `message` longtext,
  `order_name01` longtext,
  `order_name02` longtext,
  `order_kana01` longtext,
  `order_kana02` longtext,
  `order_company_name` longtext,
  `order_email` longtext,
  `order_tel01` longtext,
  `order_tel02` longtext,
  `order_tel03` longtext,
  `order_fax01` longtext,
  `order_fax02` longtext,
  `order_fax03` longtext,
  `order_zip01` longtext,
  `order_zip02` longtext,
  `order_zipcode` longtext,
  `order_addr01` longtext,
  `order_addr02` longtext,
  `order_birth` datetime DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `delivery_fee_total` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_method` longtext,
  `note` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `commit_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_detail`
--

CREATE TABLE `dtb_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `product_name` longtext NOT NULL,
  `product_code` longtext,
  `class_name1` longtext,
  `class_name2` longtext,
  `class_category_name1` longtext,
  `class_category_name2` longtext,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `tax_rate` decimal(10,0) DEFAULT NULL,
  `tax_rule` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_page_layout`
--

CREATE TABLE `dtb_page_layout` (
  `page_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `page_name` longtext,
  `url` longtext NOT NULL,
  `file_name` longtext,
  `edit_flg` smallint(6) DEFAULT '1',
  `author` longtext,
  `description` longtext,
  `keyword` longtext,
  `update_url` longtext,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `meta_robots` longtext,
  `meta_tags` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_page_layout`
--

INSERT INTO `dtb_page_layout` (`page_id`, `device_type_id`, `page_name`, `url`, `file_name`, `edit_flg`, `author`, `description`, `keyword`, `update_url`, `create_date`, `update_date`, `meta_robots`, `meta_tags`) VALUES
(0, 10, 'プレビューデータ', 'preview', NULL, 1, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(1, 10, 'TOPページ', 'homepage', 'index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(2, 10, '商品一覧ページ', 'product_list', 'Product/list', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(3, 10, '商品詳細ページ', 'product_detail', 'Product/detail', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(4, 10, 'MYページ', 'mypage', 'Mypage/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(5, 10, 'MYページ/会員登録内容変更(入力ページ)', 'mypage_change', 'Mypage/change', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(6, 10, 'MYページ/会員登録内容変更(完了ページ)', 'mypage_change_complete', 'Mypage/change_complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(7, 10, 'MYページ/お届け先一覧', 'mypage_delivery', 'Mypage/delivery', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(8, 10, 'MYページ/お届け先追加', 'mypage_delivery_new', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(9, 10, 'MYページ/お気に入り一覧', 'mypage_favorite', 'Mypage/favorite', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(10, 10, 'MYページ/購入履歴詳細', 'mypage_history', 'Mypage/history', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(11, 10, 'MYページ/ログイン', 'mypage_login', 'Mypage/login', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(12, 10, 'MYページ/退会手続き(入力ページ)', 'mypage_withdraw', 'Mypage/withdraw', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(13, 10, 'MYページ/退会手続き(完了ページ)', 'mypage_withdraw_complete', 'Mypage/withdraw_complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(14, 10, '当サイトについて', 'help_about', 'Help/about', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(15, 10, '現在のカゴの中', 'cart', 'Cart/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(16, 10, 'お問い合わせ(入力ページ)', 'contact', 'Contact/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(17, 10, 'お問い合わせ(完了ページ)', 'contact_complete', 'Contact/complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(18, 10, '会員登録(入力ページ)', 'entry', 'Entry/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(19, 10, 'ご利用規約', 'help_agreement', 'Help/agreement', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(20, 10, '会員登録(完了ページ)', 'entry_complete', 'Entry/complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(21, 10, '特定商取引に関する法律に基づく表記', 'help_tradelaw', 'Help/tradelaw', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(22, 10, '本会員登録(完了ページ)', 'entry_activate', 'Entry/activate', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(23, 10, '商品購入', 'shopping', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(24, 10, '商品購入/お届け先の指定', 'shopping_shipping', 'Shopping/shipping', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(25, 10, '商品購入/お届け先の複数指定', 'shopping_shipping_multiple', 'Shopping/shipping_multiple', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(28, 10, '商品購入/ご注文完了', 'shopping_complete', 'Shopping/complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', 'noindex', NULL),
(29, 10, 'プライバシーポリシー', 'help_privacy', 'Help/privacy', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(30, 10, '商品購入ログイン', 'shopping_login', 'Shopping/login', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(31, 10, '非会員購入情報入力', 'shopping_nonmember', 'Shopping/nonmember', 2, NULL, NULL, NULL, NULL, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, NULL),
(32, 10, '商品購入/お届け先の追加', 'shopping_shipping_edit', 'Shopping/shipping_edit', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', 'noindex', NULL),
(33, 10, '商品購入/お届け先の複数指定(お届け先の追加)', 'shopping_shipping_multiple_edit', 'Shopping/shipping_multiple_edit', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', 'noindex', NULL),
(34, 10, '商品購入/購入エラー', 'shopping_error', 'Shopping/shopping_error', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', 'noindex', NULL),
(35, 10, 'ご利用ガイド', 'help_guide', 'Help/guide', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', NULL, NULL),
(36, 10, 'パスワード再発行(入力ページ)', 'forgot', 'Forgot/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', NULL, NULL),
(37, 10, 'パスワード再発行(完了ページ)', 'forgot_complete', 'Forgot/complete', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:32', 'noindex', NULL),
(38, 10, 'パスワード変更(完了ページ)', 'forgot_reset', 'Forgot/reset', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:32', '2018-05-15 11:18:39', 'noindex', NULL),
(39, 10, '商品購入/配送方法選択', 'shopping_delivery', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:37', '2018-05-15 11:18:37', 'noindex', NULL),
(40, 10, '商品購入/支払方法選択', 'shopping_payment', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:37', '2018-05-15 11:18:37', 'noindex', NULL),
(41, 10, '商品購入/お届け先変更', 'shopping_shipping_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:37', '2018-05-15 11:18:37', 'noindex', NULL),
(42, 10, '商品購入/お届け先変更', 'shopping_shipping_edit_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:37', '2018-05-15 11:18:37', 'noindex', NULL),
(43, 10, '商品購入/お届け先の複数指定', 'shopping_shipping_multiple_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:37', '2018-05-15 11:18:37', 'noindex', NULL),
(44, 10, 'MYページ/お届け先編集', 'mypage_delivery_edit', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:41', '2018-05-15 11:18:41', 'noindex', NULL),
(45, 10, '商品購入/確認', 'shopping_confirm', 'Shopping/confirm', 2, NULL, NULL, NULL, NULL, '2018-05-15 11:18:49', '2018-05-15 11:18:49', 'noindex', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment`
--

CREATE TABLE `dtb_payment` (
  `payment_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `payment_method` longtext,
  `charge` decimal(10,0) DEFAULT NULL,
  `rule_max` decimal(10,0) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `fix_flg` smallint(6) DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `payment_image` longtext,
  `charge_flg` smallint(6) DEFAULT '1',
  `rule_min` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment`
--

INSERT INTO `dtb_payment` (`payment_id`, `creator_id`, `payment_method`, `charge`, `rule_max`, `rank`, `fix_flg`, `del_flg`, `create_date`, `update_date`, `payment_image`, `charge_flg`, `rule_min`) VALUES
(1, 1, '郵便振替', '0', NULL, 4, 1, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, 1, '0'),
(2, 1, '現金書留', '0', NULL, 3, 1, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, 1, '0'),
(3, 1, '銀行振込', '0', NULL, 2, 1, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, 1, '0'),
(4, 1, '代金引換', '0', NULL, 1, 1, 0, '2018-05-15 09:18:09', '2018-05-15 09:18:09', NULL, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_option`
--

CREATE TABLE `dtb_payment_option` (
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment_option`
--

INSERT INTO `dtb_payment_option` (`delivery_id`, `payment_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin`
--

CREATE TABLE `dtb_plugin` (
  `plugin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `code` longtext NOT NULL,
  `class_name` longtext NOT NULL,
  `plugin_enable` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL,
  `source` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_event_handler`
--

CREATE TABLE `dtb_plugin_event_handler` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL,
  `handler_type` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product`
--

CREATE TABLE `dtb_product` (
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `name` text NOT NULL,
  `note` text,
  `description_list` text,
  `description_detail` text,
  `search_word` text,
  `free_area` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product`
--

INSERT INTO `dtb_product` (`product_id`, `creator_id`, `status`, `name`, `note`, `description_list`, `description_detail`, `search_word`, `free_area`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 1, 1, 'ディナーフォーク', NULL, NULL, 'セットで揃えたいディナー用のカトラリー。\n定番の銀製は、シルバー特有の美しい輝きと柔らかな曲線が特徴です。適度な重みと日本人の手に合いやすいサイズ感で長く愛用いただけます。\n最高級プラチナフォークは、贈り物としても人気です。', NULL, NULL, 0, '2018-05-15 09:18:10', '2018-05-15 09:18:10'),
(2, 1, 1, 'パーコレーター', NULL, NULL, '\nパーコレーターはコーヒーの粉をセットして直火にかけて抽出する器具です。\nアウトドアでも淹れたてのコーヒーをお楽しみいただけます。\nいまだけ、おいしい淹れ方の冊子つきです。', NULL, NULL, 0, '2018-05-15 09:18:10', '2018-05-15 09:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_category`
--

CREATE TABLE `dtb_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_category`
--

INSERT INTO `dtb_product_category` (`product_id`, `category_id`, `rank`) VALUES
(1, 5, 1),
(1, 6, 1),
(2, 1, 1),
(2, 4, 1),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_class`
--

CREATE TABLE `dtb_product_class` (
  `product_class_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type_id` smallint(6) NOT NULL,
  `class_category_id1` int(11) DEFAULT NULL,
  `class_category_id2` int(11) DEFAULT NULL,
  `delivery_date_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `product_code` longtext,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` smallint(6) NOT NULL,
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(10,0) DEFAULT NULL,
  `price02` decimal(10,0) NOT NULL,
  `delivery_fee` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_class`
--

INSERT INTO `dtb_product_class` (`product_class_id`, `product_id`, `product_type_id`, `class_category_id1`, `class_category_id2`, `delivery_date_id`, `creator_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `delivery_fee`, `create_date`, `update_date`, `del_flg`) VALUES
(0, 1, 1, NULL, NULL, NULL, 1, 'fork-01', NULL, 1, NULL, '115000', '110000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 1),
(1, 1, 1, 3, 6, NULL, 1, 'fork-01', NULL, 1, NULL, '115000', '110000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(2, 1, 1, 3, 5, NULL, 1, 'fork-02', NULL, 1, NULL, '95000', '93000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(3, 1, 1, 3, 4, NULL, 1, 'fork-03', NULL, 1, NULL, '75000', '74000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(4, 1, 1, 2, 6, NULL, 1, 'fork-04', NULL, 1, NULL, '95000', '93000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(5, 1, 1, 2, 5, NULL, 1, 'fork-05', NULL, 1, NULL, '50000', '49000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(6, 1, 1, 2, 4, NULL, 1, 'fork-06', NULL, 1, NULL, '35000', '34500', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(7, 1, 1, 1, 6, NULL, 1, 'fork-07', NULL, 1, NULL, NULL, '18000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(8, 1, 1, 1, 5, NULL, 1, 'fork-08', NULL, 1, NULL, NULL, '13000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(9, 1, 1, 1, 4, NULL, 1, 'fork-09', NULL, 1, NULL, NULL, '5000', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0),
(10, 2, 1, NULL, NULL, NULL, 1, 'cafe-01', '100', 0, '5', '3000', '2800', NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_image`
--

CREATE TABLE `dtb_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `file_name` longtext NOT NULL,
  `rank` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_image`
--

INSERT INTO `dtb_product_image` (`product_image_id`, `product_id`, `creator_id`, `file_name`, `rank`, `create_date`) VALUES
(1, 1, 1, 'fork-1.jpg', 1, '2018-05-15 09:18:11'),
(2, 1, 1, 'fork-2.jpg', 2, '2018-05-15 09:18:11'),
(3, 1, 1, 'fork-3.jpg', 3, '2018-05-15 09:18:11'),
(4, 2, 1, 'cafe-1.jpg', 3, '2018-05-15 09:18:11'),
(5, 2, 1, 'cafe-2.jpg', 3, '2018-05-15 09:18:11'),
(6, 2, 1, 'cafe-3.jpg', 3, '2018-05-15 09:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_stock`
--

CREATE TABLE `dtb_product_stock` (
  `product_stock_id` int(11) NOT NULL,
  `product_class_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_stock`
--

INSERT INTO `dtb_product_stock` (`product_stock_id`, `product_class_id`, `creator_id`, `stock`, `create_date`, `update_date`) VALUES
(1, 0, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(2, 1, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(3, 2, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(4, 3, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(5, 4, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(6, 5, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(7, 6, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(8, 7, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(9, 8, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(10, 9, 1, NULL, '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(11, 10, 1, '100', '2018-05-15 09:18:11', '2018-05-15 09:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_tag`
--

CREATE TABLE `dtb_product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag` smallint(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipment_item`
--

CREATE TABLE `dtb_shipment_item` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `product_name` longtext NOT NULL,
  `product_code` longtext,
  `class_name1` longtext,
  `class_name2` longtext,
  `class_category_name1` longtext,
  `class_category_name2` longtext,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipping`
--

CREATE TABLE `dtb_shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_country_id` smallint(6) DEFAULT NULL,
  `shipping_pref` smallint(6) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `shipping_name01` longtext,
  `shipping_name02` longtext,
  `shipping_kana01` longtext,
  `shipping_kana02` longtext,
  `shipping_company_name` longtext,
  `shipping_tel01` longtext,
  `shipping_tel02` longtext,
  `shipping_tel03` longtext,
  `shipping_fax01` longtext,
  `shipping_fax02` longtext,
  `shipping_fax03` longtext,
  `shipping_zip01` longtext,
  `shipping_zip02` longtext,
  `shipping_zipcode` longtext,
  `shipping_addr01` longtext,
  `shipping_addr02` longtext,
  `shipping_delivery_name` longtext,
  `shipping_delivery_time` longtext,
  `shipping_delivery_date` datetime DEFAULT NULL,
  `shipping_delivery_fee` decimal(10,0) DEFAULT NULL,
  `shipping_commit_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_tax_rule`
--

CREATE TABLE `dtb_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `product_class_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `country_id` smallint(6) DEFAULT NULL,
  `pref_id` smallint(6) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `calc_rule` smallint(6) DEFAULT NULL,
  `tax_rate` decimal(10,0) NOT NULL DEFAULT '8',
  `tax_adjust` decimal(10,0) NOT NULL DEFAULT '0',
  `apply_date` datetime NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_tax_rule`
--

INSERT INTO `dtb_tax_rule` (`tax_rule_id`, `product_class_id`, `creator_id`, `country_id`, `pref_id`, `product_id`, `calc_rule`, `tax_rate`, `tax_adjust`, `apply_date`, `del_flg`, `create_date`, `update_date`) VALUES
(1, NULL, 1, NULL, NULL, NULL, 1, '8', '0', '2018-05-15 09:18:08', 0, '2018-05-15 09:18:08', '2018-05-15 09:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_template`
--

CREATE TABLE `dtb_template` (
  `template_id` int(11) NOT NULL,
  `device_type_id` smallint(6) DEFAULT NULL,
  `template_code` longtext NOT NULL,
  `template_name` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_template`
--

INSERT INTO `dtb_template` (`template_id`, `device_type_id`, `template_code`, `template_name`, `create_date`, `update_date`) VALUES
(1, 10, 'default', 'デフォルト', '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(2, 1, 'mobile', 'モバイル', '2018-05-15 09:18:11', '2018-05-15 09:18:11'),
(4, 2, 'sphone', 'スマートフォン', '2018-05-15 09:18:11', '2018-05-15 09:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_authority`
--

CREATE TABLE `mtb_authority` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_authority`
--

INSERT INTO `mtb_authority` (`id`, `name`, `rank`) VALUES
(0, 'システム管理者', 0),
(1, '店舗オーナー', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_country`
--

CREATE TABLE `mtb_country` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_country`
--

INSERT INTO `mtb_country` (`id`, `name`, `rank`) VALUES
(4, 'アフガニスタン', 4),
(8, 'アルバニア', 12),
(10, '南極', 149),
(12, 'アルジェリア', 9),
(16, 'アメリカ領サモア', 7),
(20, 'アンドラ', 17),
(24, 'アンゴラ', 15),
(28, 'アンティグア・バーブーダ', 16),
(31, 'アゼルバイジャン', 3),
(32, 'アルゼンチン', 10),
(36, 'オーストラリア', 39),
(40, 'オーストリア', 40),
(44, 'バハマ', 167),
(48, 'バーレーン', 161),
(50, 'バングラデシュ', 175),
(51, 'アルメニア', 13),
(52, 'バルバドス', 172),
(56, 'ベルギー', 201),
(60, 'バミューダ諸島|バミューダ', 169),
(64, 'ブータン', 181),
(68, 'ボリビア|ボリビア多民族国', 206),
(70, 'ボスニア・ヘルツェゴビナ', 203),
(72, 'ボツワナ', 204),
(74, 'ブーベ島', 182),
(76, 'ブラジル', 186),
(84, 'ベリーズ', 199),
(86, 'イギリス領インド洋地域', 20),
(90, 'ソロモン諸島', 121),
(92, 'イギリス領ヴァージン諸島', 21),
(96, 'ブルネイ|ブルネイ・ダルサラーム', 193),
(100, 'ブルガリア', 191),
(104, 'ミャンマー', 224),
(108, 'ブルンジ', 194),
(112, 'ベラルーシ', 198),
(116, 'カンボジア', 55),
(120, 'カメルーン', 53),
(124, 'カナダ', 51),
(132, 'カーボベルデ', 45),
(136, 'ケイマン諸島', 75),
(140, '中央アフリカ共和国', 130),
(144, 'スリランカ', 108),
(148, 'チャド', 129),
(152, 'チリ', 134),
(156, '中華人民共和国|中国', 131),
(158, '台湾', 125),
(162, 'クリスマス島 (オーストラリア)|クリスマス島', 71),
(166, 'ココス諸島|ココス（キーリング）諸島', 78),
(170, 'コロンビア', 81),
(174, 'コモロ', 80),
(175, 'マヨット', 214),
(178, 'コンゴ共和国', 82),
(180, 'コンゴ民主共和国', 83),
(184, 'クック諸島', 69),
(188, 'コスタリカ', 79),
(191, 'クロアチア', 74),
(192, 'キューバ', 60),
(196, 'キプロス', 59),
(203, 'チェコ', 128),
(204, 'ベナン', 196),
(208, 'デンマーク', 136),
(212, 'ドミニカ国', 141),
(214, 'ドミニカ共和国', 140),
(218, 'エクアドル', 33),
(222, 'エルサルバドル', 38),
(226, '赤道ギニア', 113),
(231, 'エチオピア', 36),
(232, 'エリトリア', 37),
(233, 'エストニア', 35),
(234, 'フェロー諸島', 184),
(238, 'フォークランド諸島|フォークランド（マルビナス）諸島', 185),
(239, 'サウスジョージア・サウスサンドウィッチ諸島', 85),
(242, 'フィジー', 178),
(246, 'フィンランド', 180),
(248, 'オーランド諸島', 41),
(250, 'フランス', 187),
(254, 'フランス領ギアナ', 188),
(258, 'フランス領ポリネシア', 189),
(260, 'フランス領南方・南極地域', 190),
(262, 'ジブチ', 94),
(266, 'ガボン', 52),
(268, 'グルジア', 72),
(270, 'ガンビア', 54),
(275, 'パレスチナ', 173),
(276, 'ドイツ', 137),
(288, 'ガーナ', 44),
(292, 'ジブラルタル', 95),
(296, 'キリバス', 63),
(300, 'ギリシャ', 62),
(304, 'グリーンランド', 70),
(308, 'グレナダ', 73),
(312, 'グアドループ', 66),
(316, 'グアム', 67),
(320, 'グアテマラ', 65),
(324, 'ギニア', 57),
(328, 'ガイアナ', 47),
(332, 'ハイチ', 162),
(334, 'ハード島とマクドナルド諸島', 160),
(336, 'バチカン|バチカン市国', 164),
(340, 'ホンジュラス', 209),
(344, '香港', 208),
(348, 'ハンガリー', 174),
(352, 'アイスランド', 1),
(356, 'インド', 26),
(360, 'インドネシア', 27),
(364, 'イラン|イラン・イスラム共和国', 25),
(368, 'イラク', 24),
(372, 'アイルランド', 2),
(376, 'イスラエル', 22),
(380, 'イタリア', 23),
(384, 'コートジボワール', 77),
(388, 'ジャマイカ', 97),
(392, '日本', 153),
(398, 'カザフスタン', 48),
(400, 'ヨルダン', 236),
(404, 'ケニア', 76),
(408, '朝鮮民主主義人民共和国', 133),
(410, '大韓民国', 124),
(414, 'クウェート', 68),
(417, 'キルギス', 64),
(418, 'ラオス|ラオス人民民主共和国', 237),
(422, 'レバノン', 247),
(426, 'レソト', 246),
(428, 'ラトビア', 238),
(430, 'リベリア', 242),
(434, 'リビア', 240),
(438, 'リヒテンシュタイン', 241),
(440, 'リトアニア', 239),
(442, 'ルクセンブルク', 244),
(446, 'マカオ', 211),
(450, 'マダガスカル', 213),
(454, 'マラウイ', 215),
(458, 'マレーシア', 219),
(462, 'モルディブ', 230),
(466, 'マリ共和国|マリ', 216),
(470, 'マルタ', 217),
(474, 'マルティニーク', 218),
(478, 'モーリタニア', 227),
(480, 'モーリシャス', 226),
(484, 'メキシコ', 225),
(492, 'モナコ', 229),
(496, 'モンゴル国|モンゴル', 233),
(498, 'モルドバ|モルドバ共和国', 231),
(499, 'モンテネグロ', 234),
(500, 'モントセラト', 235),
(504, 'モロッコ', 232),
(508, 'モザンビーク', 228),
(512, 'オマーン', 42),
(516, 'ナミビア', 148),
(520, 'ナウル', 147),
(524, 'ネパール', 157),
(528, 'オランダ', 43),
(531, 'キュラソー島|キュラソー', 61),
(533, 'アルバ', 11),
(534, 'シント・マールテン|シント・マールテン（オランダ領）', 100),
(535, 'BES諸島|ボネール、シント・ユースタティウスおよびサバ', 205),
(540, 'ニューカレドニア', 155),
(548, 'バヌアツ', 166),
(554, 'ニュージーランド', 156),
(558, 'ニカラグア', 151),
(562, 'ニジェール', 152),
(566, 'ナイジェリア', 146),
(570, 'ニウエ', 150),
(574, 'ノーフォーク島', 158),
(578, 'ノルウェー', 159),
(580, '北マリアナ諸島', 56),
(581, '合衆国領有小離島', 50),
(583, 'ミクロネシア連邦', 221),
(584, 'マーシャル諸島', 210),
(585, 'パラオ', 170),
(586, 'パキスタン', 163),
(591, 'パナマ', 165),
(598, 'パプアニューギニア', 168),
(600, 'パラグアイ', 171),
(604, 'ペルー', 200),
(608, 'フィリピン', 179),
(612, 'ピトケアン諸島|ピトケアン', 177),
(616, 'ポーランド', 202),
(620, 'ポルトガル', 207),
(624, 'ギニアビサウ', 58),
(626, '東ティモール', 176),
(630, 'プエルトリコ', 183),
(634, 'カタール', 49),
(638, 'レユニオン', 248),
(642, 'ルーマニア', 243),
(643, 'ロシア|ロシア連邦', 249),
(646, 'ルワンダ', 245),
(652, 'サン・バルテルミー島|サン・バルテルミー', 88),
(654, 'セントヘレナ・アセンションおよびトリスタンダクーニャ', 118),
(659, 'セントクリストファー・ネイビス', 116),
(660, 'アンギラ', 14),
(662, 'セントルシア', 119),
(663, 'サン・マルタン (西インド諸島)|サン・マルタン（フランス領）', 92),
(666, 'サンピエール島・ミクロン島', 90),
(670, 'セントビンセント・グレナディーン|セントビンセントおよびグレナディーン諸島', 117),
(674, 'サンマリノ', 91),
(678, 'サントメ・プリンシペ', 87),
(682, 'サウジアラビア', 84),
(686, 'セネガル', 114),
(688, 'セルビア', 115),
(690, 'セーシェル', 112),
(694, 'シエラレオネ', 93),
(702, 'シンガポール', 99),
(703, 'スロバキア', 109),
(704, 'ベトナム', 195),
(705, 'スロベニア', 110),
(706, 'ソマリア', 120),
(710, '南アフリカ共和国|南アフリカ', 222),
(716, 'ジンバブエ', 101),
(724, 'スペイン', 106),
(728, '南スーダン', 223),
(729, 'スーダン', 104),
(732, '西サハラ', 154),
(740, 'スリナム', 107),
(744, 'スヴァールバル諸島およびヤンマイエン島', 105),
(748, 'スワジランド', 111),
(752, 'スウェーデン', 103),
(756, 'スイス', 102),
(760, 'シリア|シリア・アラブ共和国', 98),
(762, 'タジキスタン', 126),
(764, 'タイ王国|タイ', 123),
(768, 'トーゴ', 138),
(772, 'トケラウ', 139),
(776, 'トンガ', 145),
(780, 'トリニダード・トバゴ', 142),
(784, 'アラブ首長国連邦', 8),
(788, 'チュニジア', 132),
(792, 'トルコ', 144),
(795, 'トルクメニスタン', 143),
(796, 'タークス・カイコス諸島', 122),
(798, 'ツバル', 135),
(800, 'ウガンダ', 29),
(804, 'ウクライナ', 30),
(807, 'マケドニア共和国|マケドニア旧ユーゴスラビア共和国', 212),
(818, 'エジプト', 34),
(826, 'イギリス', 19),
(831, 'ガーンジー', 46),
(832, 'ジャージー', 96),
(833, 'マン島', 220),
(834, 'タンザニア', 127),
(840, 'アメリカ合衆国', 5),
(850, 'アメリカ領ヴァージン諸島', 6),
(854, 'ブルキナファソ', 192),
(858, 'ウルグアイ', 32),
(860, 'ウズベキスタン', 31),
(862, 'ベネズエラ|ベネズエラ・ボリバル共和国', 197),
(876, 'ウォリス・フツナ', 28),
(882, 'サモア', 86),
(887, 'イエメン', 18),
(894, 'ザンビア', 89);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_csv_type`
--

CREATE TABLE `mtb_csv_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_csv_type`
--

INSERT INTO `mtb_csv_type` (`id`, `name`, `rank`) VALUES
(1, '商品CSV', 3),
(2, '会員CSV', 4),
(3, '受注CSV', 1),
(4, '配送CSV', 2),
(5, 'カテゴリCSV', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_order_status`
--

CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_order_status`
--

INSERT INTO `mtb_customer_order_status` (`id`, `name`, `rank`) VALUES
(1, '注文受付', 1),
(2, '入金待ち', 2),
(3, 'キャンセル', 4),
(4, '注文受付', 5),
(5, '発送済み', 6),
(6, '注文受付', 3),
(7, '注文未完了', 0),
(8, '注文未完了', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_status`
--

CREATE TABLE `mtb_customer_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_status`
--

INSERT INTO `mtb_customer_status` (`id`, `name`, `rank`) VALUES
(1, '仮会員', 0),
(2, '本会員', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_db`
--

CREATE TABLE `mtb_db` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_db`
--

INSERT INTO `mtb_db` (`id`, `name`, `rank`) VALUES
(1, 'PostgreSQL', 0),
(2, 'MySQL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_device_type`
--

CREATE TABLE `mtb_device_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_device_type`
--

INSERT INTO `mtb_device_type` (`id`, `name`, `rank`) VALUES
(1, 'モバイル', 0),
(2, 'スマートフォン', 1),
(10, 'PC', 2),
(99, '管理画面', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_disp`
--

CREATE TABLE `mtb_disp` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_disp`
--

INSERT INTO `mtb_disp` (`id`, `name`, `rank`) VALUES
(1, '公開', 0),
(2, '非公開', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_job`
--

CREATE TABLE `mtb_job` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_job`
--

INSERT INTO `mtb_job` (`id`, `name`, `rank`) VALUES
(1, '公務員', 0),
(2, 'コンサルタント', 1),
(3, 'コンピューター関連技術職', 2),
(4, 'コンピューター関連以外の技術職', 3),
(5, '金融関係', 4),
(6, '医師', 5),
(7, '弁護士', 6),
(8, '総務・人事・事務', 7),
(9, '営業・販売', 8),
(10, '研究・開発', 9),
(11, '広報・宣伝', 10),
(12, '企画・マーケティング', 11),
(13, 'デザイン関係', 12),
(14, '会社経営・役員', 13),
(15, '出版・マスコミ関係', 14),
(16, '学生・フリーター', 15),
(17, '主婦', 16),
(18, 'その他', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status`
--

CREATE TABLE `mtb_order_status` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status`
--

INSERT INTO `mtb_order_status` (`id`, `name`, `rank`) VALUES
(1, '新規受付', 1),
(2, '入金待ち', 2),
(3, 'キャンセル', 4),
(4, '取り寄せ中', 5),
(5, '発送済み', 6),
(6, '入金済み', 3),
(7, '決済処理中', 0),
(8, '購入処理中', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status_color`
--

CREATE TABLE `mtb_order_status_color` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status_color`
--

INSERT INTO `mtb_order_status_color` (`id`, `name`, `rank`) VALUES
(1, '#FFFFFF', 0),
(2, '#FFDE9B', 1),
(3, '#C9C9C9', 2),
(4, '#FFD9D9', 3),
(5, '#BFDFFF', 4),
(6, '#FFFFAB', 5),
(7, '#FFCCCC', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_page_max`
--

CREATE TABLE `mtb_page_max` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_page_max`
--

INSERT INTO `mtb_page_max` (`id`, `name`, `rank`) VALUES
(10, '10', 0),
(20, '20', 1),
(30, '30', 2),
(40, '40', 3),
(50, '50', 4),
(60, '60', 5),
(70, '70', 6),
(80, '80', 7),
(90, '90', 8),
(100, '100', 9);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_pref`
--

CREATE TABLE `mtb_pref` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_pref`
--

INSERT INTO `mtb_pref` (`id`, `name`, `rank`) VALUES
(1, '北海道', 1),
(2, '青森県', 2),
(3, '岩手県', 3),
(4, '宮城県', 4),
(5, '秋田県', 5),
(6, '山形県', 6),
(7, '福島県', 7),
(8, '茨城県', 8),
(9, '栃木県', 9),
(10, '群馬県', 10),
(11, '埼玉県', 11),
(12, '千葉県', 12),
(13, '東京都', 13),
(14, '神奈川県', 14),
(15, '新潟県', 15),
(16, '富山県', 16),
(17, '石川県', 17),
(18, '福井県', 18),
(19, '山梨県', 19),
(20, '長野県', 20),
(21, '岐阜県', 21),
(22, '静岡県', 22),
(23, '愛知県', 23),
(24, '三重県', 24),
(25, '滋賀県', 25),
(26, '京都府', 26),
(27, '大阪府', 27),
(28, '兵庫県', 28),
(29, '奈良県', 29),
(30, '和歌山県', 30),
(31, '鳥取県', 31),
(32, '島根県', 32),
(33, '岡山県', 33),
(34, '広島県', 34),
(35, '山口県', 35),
(36, '徳島県', 36),
(37, '香川県', 37),
(38, '愛媛県', 38),
(39, '高知県', 39),
(40, '福岡県', 40),
(41, '佐賀県', 41),
(42, '長崎県', 42),
(43, '熊本県', 43),
(44, '大分県', 44),
(45, '宮崎県', 45),
(46, '鹿児島県', 46),
(47, '沖縄県', 47);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_max`
--

CREATE TABLE `mtb_product_list_max` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_list_max`
--

INSERT INTO `mtb_product_list_max` (`id`, `name`, `rank`) VALUES
(15, '15件', 0),
(30, '30件', 1),
(50, '50件', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_order_by`
--

CREATE TABLE `mtb_product_list_order_by` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_list_order_by`
--

INSERT INTO `mtb_product_list_order_by` (`id`, `name`, `rank`) VALUES
(1, '価格が低い順', 0),
(2, '新着順', 2),
(3, '価格が高い順', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_type`
--

CREATE TABLE `mtb_product_type` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_type`
--

INSERT INTO `mtb_product_type` (`id`, `name`, `rank`) VALUES
(1, '商品種別A', 0),
(2, '商品種別B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_sex`
--

CREATE TABLE `mtb_sex` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_sex`
--

INSERT INTO `mtb_sex` (`id`, `name`, `rank`) VALUES
(1, '男性', 0),
(2, '女性', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_tag`
--

CREATE TABLE `mtb_tag` (
  `id` smallint(6) NOT NULL,
  `name` longtext NOT NULL,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_tag`
--

INSERT INTO `mtb_tag` (`id`, `name`, `rank`) VALUES
(1, '新商品', 1),
(2, 'おすすめ商品', 2),
(3, '限定品', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_taxrule`
--

CREATE TABLE `mtb_taxrule` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_taxrule`
--

INSERT INTO `mtb_taxrule` (`id`, `name`, `rank`) VALUES
(1, '四捨五入', 0),
(2, '切り捨て', 1),
(3, '切り上げ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_work`
--

CREATE TABLE `mtb_work` (
  `id` smallint(6) NOT NULL,
  `name` longtext,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_work`
--

INSERT INTO `mtb_work` (`id`, `name`, `rank`) VALUES
(0, '非稼働', 0),
(1, '稼働', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_zip`
--

CREATE TABLE `mtb_zip` (
  `zip_id` int(11) NOT NULL,
  `zipcode` longtext,
  `state` longtext,
  `city` longtext,
  `town` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD PRIMARY KEY (`authority_role_id`),
  ADD KEY `IDX_4A1F70B181EC865B` (`authority_id`),
  ADD KEY `IDX_4A1F70B161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D3655F4F92F3E70` (`country_id`),
  ADD KEY `IDX_1D3655F4A1559831` (`pref`);

--
-- Indexes for table `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `device_type_id` (`device_type_id`,`file_name`),
  ADD KEY `IDX_6B54DCBD4FFA550E` (`device_type_id`);

--
-- Indexes for table `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD PRIMARY KEY (`page_id`,`target_id`,`block_id`),
  ADD KEY `IDX_35DCD731E9ED820C` (`block_id`),
  ADD KEY `IDX_35DCD731C4663E4` (`page_id`);

--
-- Indexes for table `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `IDX_5ED2C2B796A8F92` (`parent_category_id`),
  ADD KEY `IDX_5ED2C2B61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_category_count`
--
ALTER TABLE `dtb_category_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dtb_category_total_count`
--
ALTER TABLE `dtb_category_total_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD PRIMARY KEY (`class_category_id`),
  ADD KEY `IDX_9B0D1DBAB462FB2A` (`class_name_id`),
  ADD KEY `IDX_9B0D1DBA61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD PRIMARY KEY (`class_name_id`),
  ADD KEY `IDX_187C95AD61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD PRIMARY KEY (`csv_id`),
  ADD KEY `IDX_F55F48C32C648C74` (`csv_type`),
  ADD KEY `IDX_F55F48C361220EA6` (`creator_id`);

--
-- Indexes for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `secret_key` (`secret_key`),
  ADD KEY `IDX_8298BBE37B00651C` (`status`),
  ADD KEY `IDX_8298BBE3EFA269F7` (`sex`),
  ADD KEY `IDX_8298BBE3FBD8E0F8` (`job`),
  ADD KEY `IDX_8298BBE3F92F3E70` (`country_id`),
  ADD KEY `IDX_8298BBE3A1559831` (`pref`),
  ADD KEY `dtb_customer_create_date_idx` (`create_date`),
  ADD KEY `dtb_customer_update_date_idx` (`update_date`),
  ADD KEY `dtb_customer_last_buy_date_idx` (`last_buy_date`),
  ADD KEY `dtb_customer_buy_times_idx` (`buy_times`),
  ADD KEY `dtb_customer_buy_total_idx` (`buy_total`),
  ADD KEY `dtb_customer_email_idx` (`email`(191));

--
-- Indexes for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD PRIMARY KEY (`customer_address_id`),
  ADD KEY `IDX_6C38C0F89395C3F3` (`customer_id`),
  ADD KEY `IDX_6C38C0F8F92F3E70` (`country_id`),
  ADD KEY `IDX_6C38C0F8A1559831` (`pref`);

--
-- Indexes for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `IDX_ED6313839395C3F3` (`customer_id`),
  ADD KEY `IDX_ED6313834584665A` (`product_id`);

--
-- Indexes for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `IDX_3420D9FA61220EA6` (`creator_id`),
  ADD KEY `IDX_3420D9FA14959723` (`product_type_id`);

--
-- Indexes for table `dtb_delivery_date`
--
ALTER TABLE `dtb_delivery_date`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `IDX_491552412136921` (`delivery_id`),
  ADD KEY `IDX_4915524A1559831` (`pref`);

--
-- Indexes for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `IDX_E80EE3A612136921` (`delivery_id`);

--
-- Indexes for table `dtb_help`
--
ALTER TABLE `dtb_help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FF18F0EB5C77387` (`law_country_id`),
  ADD KEY `IDX_FF18F0EBE3D20F82` (`law_pref`);

--
-- Indexes for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `IDX_4870AB118D9F6D38` (`order_id`),
  ADD KEY `IDX_4870AB115DA0FB8` (`template_id`),
  ADD KEY `IDX_4870AB1161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `IDX_1CB16DB261220EA6` (`creator_id`);

--
-- Indexes for table `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `IDX_10BC3BE6534E6880` (`work`),
  ADD KEY `IDX_10BC3BE64AF96AFC` (`authority`),
  ADD KEY `IDX_10BC3BE661220EA6` (`creator_id`);

--
-- Indexes for table `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `IDX_EA4C351761220EA6` (`creator_id`);

--
-- Indexes for table `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `IDX_1D66D8079395C3F3` (`customer_id`),
  ADD KEY `IDX_1D66D8074AF5C325` (`order_country_id`),
  ADD KEY `IDX_1D66D807ECA4A226` (`order_pref`),
  ADD KEY `IDX_1D66D807ACF92697` (`order_sex`),
  ADD KEY `IDX_1D66D807B883AF98` (`order_job`),
  ADD KEY `IDX_1D66D8074C3A3BB` (`payment_id`),
  ADD KEY `IDX_1D66D8074FFA550E` (`device_type_id`),
  ADD KEY `IDX_1D66D8077B00651C` (`status`),
  ADD KEY `dtb_order_order_date_idx` (`order_date`),
  ADD KEY `dtb_order_payment_date_idx` (`payment_date`),
  ADD KEY `dtb_order_commit_date_idx` (`commit_date`),
  ADD KEY `dtb_order_update_date_idx` (`update_date`),
  ADD KEY `dtb_order_pre_order_id_idx` (`pre_order_id`(40)),
  ADD KEY `dtb_order_order_email_idx` (`order_email`(191));

--
-- Indexes for table `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `IDX_58FE35738D9F6D38` (`order_id`),
  ADD KEY `IDX_58FE357321B06187` (`product_class_id`),
  ADD KEY `dtb_order_detail_product_id_key` (`product_id`);

--
-- Indexes for table `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `IDX_F27999414FFA550E` (`device_type_id`),
  ADD KEY `dtb_page_layout_url_idx` (`url`(128));

--
-- Indexes for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `IDX_7AFF628F61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`),
  ADD KEY `IDX_5631540D12136921` (`delivery_id`),
  ADD KEY `IDX_5631540D4C3A3BB` (`payment_id`);

--
-- Indexes for table `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  ADD PRIMARY KEY (`plugin_id`);

--
-- Indexes for table `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92639EBDEC942BCF` (`plugin_id`);

--
-- Indexes for table `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `IDX_C49DE22F61220EA6` (`creator_id`),
  ADD KEY `IDX_C49DE22F7B00651C` (`status`);

--
-- Indexes for table `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_B05778914584665A` (`product_id`),
  ADD KEY `IDX_B057789112469DE2` (`category_id`);

--
-- Indexes for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD PRIMARY KEY (`product_class_id`),
  ADD KEY `IDX_1A11D1BA4584665A` (`product_id`),
  ADD KEY `IDX_1A11D1BA14959723` (`product_type_id`),
  ADD KEY `IDX_1A11D1BA248D128` (`class_category_id1`),
  ADD KEY `IDX_1A11D1BA9B418092` (`class_category_id2`),
  ADD KEY `IDX_1A11D1BAB28989B5` (`delivery_date_id`),
  ADD KEY `IDX_1A11D1BA61220EA6` (`creator_id`),
  ADD KEY `dtb_product_class_price02_idx` (`price02`),
  ADD KEY `dtb_product_class_stock_stock_unlimited_idx` (`stock`,`stock_unlimited`);

--
-- Indexes for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `IDX_3267CC7A4584665A` (`product_id`),
  ADD KEY `IDX_3267CC7A61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD PRIMARY KEY (`product_stock_id`),
  ADD UNIQUE KEY `UNIQ_BC6C9E4521B06187` (`product_class_id`),
  ADD KEY `IDX_BC6C9E4561220EA6` (`creator_id`);

--
-- Indexes for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD PRIMARY KEY (`product_tag_id`),
  ADD KEY `IDX_4433E7214584665A` (`product_id`),
  ADD KEY `IDX_4433E721389B783` (`tag`),
  ADD KEY `IDX_4433E72161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `IDX_57C3C0398D9F6D38` (`order_id`),
  ADD KEY `IDX_57C3C0394584665A` (`product_id`),
  ADD KEY `IDX_57C3C03921B06187` (`product_class_id`),
  ADD KEY `IDX_57C3C0394887F3F8` (`shipping_id`);

--
-- Indexes for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `IDX_2EBD22CE41D46E2E` (`shipping_country_id`),
  ADD KEY `IDX_2EBD22CE30E90E33` (`shipping_pref`),
  ADD KEY `IDX_2EBD22CE8D9F6D38` (`order_id`),
  ADD KEY `IDX_2EBD22CE12136921` (`delivery_id`),
  ADD KEY `IDX_2EBD22CE5EEADD3B` (`time_id`),
  ADD KEY `IDX_2EBD22CEAB45AECA` (`fee_id`);

--
-- Indexes for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`),
  ADD UNIQUE KEY `UNIQ_59F696DE21B06187` (`product_class_id`),
  ADD KEY `IDX_59F696DE61220EA6` (`creator_id`),
  ADD KEY `IDX_59F696DEF92F3E70` (`country_id`),
  ADD KEY `IDX_59F696DEE171EF5F` (`pref_id`),
  ADD KEY `IDX_59F696DE4584665A` (`product_id`),
  ADD KEY `IDX_59F696DE800F7945` (`calc_rule`);

--
-- Indexes for table `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `IDX_94C12A694FFA550E` (`device_type_id`);

--
-- Indexes for table `mtb_authority`
--
ALTER TABLE `mtb_authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_country`
--
ALTER TABLE `mtb_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_csv_type`
--
ALTER TABLE `mtb_csv_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_customer_order_status`
--
ALTER TABLE `mtb_customer_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_customer_status`
--
ALTER TABLE `mtb_customer_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_db`
--
ALTER TABLE `mtb_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_device_type`
--
ALTER TABLE `mtb_device_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_disp`
--
ALTER TABLE `mtb_disp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_job`
--
ALTER TABLE `mtb_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status`
--
ALTER TABLE `mtb_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status_color`
--
ALTER TABLE `mtb_order_status_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_page_max`
--
ALTER TABLE `mtb_page_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_pref`
--
ALTER TABLE `mtb_pref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_list_max`
--
ALTER TABLE `mtb_product_list_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_list_order_by`
--
ALTER TABLE `mtb_product_list_order_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_type`
--
ALTER TABLE `mtb_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_sex`
--
ALTER TABLE `mtb_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_tag`
--
ALTER TABLE `mtb_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_taxrule`
--
ALTER TABLE `mtb_taxrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_work`
--
ALTER TABLE `mtb_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_zip`
--
ALTER TABLE `mtb_zip`
  ADD PRIMARY KEY (`zip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  MODIFY `authority_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_block`
--
ALTER TABLE `dtb_block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dtb_category`
--
ALTER TABLE `dtb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_category_count`
--
ALTER TABLE `dtb_category_count`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_category_total_count`
--
ALTER TABLE `dtb_category_total_count`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  MODIFY `class_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  MODIFY `class_name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  MODIFY `csv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  MODIFY `customer_address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_delivery_date`
--
ALTER TABLE `dtb_delivery_date`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_help`
--
ALTER TABLE `dtb_help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dtb_member`
--
ALTER TABLE `dtb_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_news`
--
ALTER TABLE `dtb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_order`
--
ALTER TABLE `dtb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  MODIFY `plugin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_product`
--
ALTER TABLE `dtb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  MODIFY `product_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  MODIFY `product_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_template`
--
ALTER TABLE `dtb_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD CONSTRAINT `FK_4A1F70B161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_4A1F70B181EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`);

--
-- Constraints for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD CONSTRAINT `FK_1D3655F4A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_1D3655F4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD CONSTRAINT `FK_6B54DCBD4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Constraints for table `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD CONSTRAINT `FK_35DCD731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page_layout` (`page_id`),
  ADD CONSTRAINT `FK_35DCD731E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `dtb_block` (`block_id`);

--
-- Constraints for table `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD CONSTRAINT `FK_5ED2C2B61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_5ED2C2B796A8F92` FOREIGN KEY (`parent_category_id`) REFERENCES `dtb_category` (`category_id`);

--
-- Constraints for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD CONSTRAINT `FK_9B0D1DBA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_9B0D1DBAB462FB2A` FOREIGN KEY (`class_name_id`) REFERENCES `dtb_class_name` (`class_name_id`);

--
-- Constraints for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD CONSTRAINT `FK_187C95AD61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD CONSTRAINT `FK_F55F48C32C648C74` FOREIGN KEY (`csv_type`) REFERENCES `mtb_csv_type` (`id`),
  ADD CONSTRAINT `FK_F55F48C361220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD CONSTRAINT `FK_8298BBE37B00651C` FOREIGN KEY (`status`) REFERENCES `mtb_customer_status` (`id`),
  ADD CONSTRAINT `FK_8298BBE3A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_8298BBE3EFA269F7` FOREIGN KEY (`sex`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_8298BBE3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_8298BBE3FBD8E0F8` FOREIGN KEY (`job`) REFERENCES `mtb_job` (`id`);

--
-- Constraints for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD CONSTRAINT `FK_6C38C0F89395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`),
  ADD CONSTRAINT `FK_6C38C0F8A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_6C38C0F8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD CONSTRAINT `FK_ED6313834584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_ED6313839395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`);

--
-- Constraints for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD CONSTRAINT `FK_3420D9FA14959723` FOREIGN KEY (`product_type_id`) REFERENCES `mtb_product_type` (`id`),
  ADD CONSTRAINT `FK_3420D9FA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD CONSTRAINT `FK_491552412136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_4915524A1559831` FOREIGN KEY (`pref`) REFERENCES `mtb_pref` (`id`);

--
-- Constraints for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD CONSTRAINT `FK_E80EE3A612136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`);

--
-- Constraints for table `dtb_help`
--
ALTER TABLE `dtb_help`
  ADD CONSTRAINT `FK_FF18F0EB5C77387` FOREIGN KEY (`law_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_FF18F0EBE3D20F82` FOREIGN KEY (`law_pref`) REFERENCES `mtb_pref` (`id`);

--
-- Constraints for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD CONSTRAINT `FK_4870AB115DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `dtb_mail_template` (`template_id`),
  ADD CONSTRAINT `FK_4870AB1161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_4870AB118D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Constraints for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD CONSTRAINT `FK_1CB16DB261220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD CONSTRAINT `FK_10BC3BE64AF96AFC` FOREIGN KEY (`authority`) REFERENCES `mtb_authority` (`id`),
  ADD CONSTRAINT `FK_10BC3BE6534E6880` FOREIGN KEY (`work`) REFERENCES `mtb_work` (`id`),
  ADD CONSTRAINT `FK_10BC3BE661220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD CONSTRAINT `FK_EA4C351761220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD CONSTRAINT `FK_1D66D8074AF5C325` FOREIGN KEY (`order_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_1D66D8074C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`payment_id`),
  ADD CONSTRAINT `FK_1D66D8074FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  ADD CONSTRAINT `FK_1D66D8079395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`customer_id`),
  ADD CONSTRAINT `FK_1D66D807ACF92697` FOREIGN KEY (`order_sex`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_1D66D807B883AF98` FOREIGN KEY (`order_job`) REFERENCES `mtb_job` (`id`),
  ADD CONSTRAINT `FK_1D66D807ECA4A226` FOREIGN KEY (`order_pref`) REFERENCES `mtb_pref` (`id`);

--
-- Constraints for table `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  ADD CONSTRAINT `FK_58FE357321B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_58FE35734584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_58FE35738D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Constraints for table `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD CONSTRAINT `FK_F27999414FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Constraints for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD CONSTRAINT `FK_7AFF628F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD CONSTRAINT `FK_5631540D12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_5631540D4C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`payment_id`);

--
-- Constraints for table `dtb_plugin_event_handler`
--
ALTER TABLE `dtb_plugin_event_handler`
  ADD CONSTRAINT `FK_92639EBDEC942BCF` FOREIGN KEY (`plugin_id`) REFERENCES `dtb_plugin` (`plugin_id`);

--
-- Constraints for table `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD CONSTRAINT `FK_C49DE22F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_C49DE22F7B00651C` FOREIGN KEY (`status`) REFERENCES `mtb_disp` (`id`);

--
-- Constraints for table `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD CONSTRAINT `FK_B057789112469DE2` FOREIGN KEY (`category_id`) REFERENCES `dtb_category` (`category_id`),
  ADD CONSTRAINT `FK_B05778914584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`);

--
-- Constraints for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD CONSTRAINT `FK_1A11D1BA14959723` FOREIGN KEY (`product_type_id`) REFERENCES `mtb_product_type` (`id`),
  ADD CONSTRAINT `FK_1A11D1BA248D128` FOREIGN KEY (`class_category_id1`) REFERENCES `dtb_class_category` (`class_category_id`),
  ADD CONSTRAINT `FK_1A11D1BA4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_1A11D1BA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_1A11D1BA9B418092` FOREIGN KEY (`class_category_id2`) REFERENCES `dtb_class_category` (`class_category_id`),
  ADD CONSTRAINT `FK_1A11D1BAB28989B5` FOREIGN KEY (`delivery_date_id`) REFERENCES `dtb_delivery_date` (`date_id`);

--
-- Constraints for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD CONSTRAINT `FK_3267CC7A4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_3267CC7A61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD CONSTRAINT `FK_BC6C9E4521B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_BC6C9E4561220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD CONSTRAINT `FK_4433E721389B783` FOREIGN KEY (`tag`) REFERENCES `mtb_tag` (`id`),
  ADD CONSTRAINT `FK_4433E7214584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_4433E72161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`);

--
-- Constraints for table `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  ADD CONSTRAINT `FK_57C3C03921B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_57C3C0394584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_57C3C0394887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `dtb_shipping` (`shipping_id`),
  ADD CONSTRAINT `FK_57C3C0398D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`);

--
-- Constraints for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD CONSTRAINT `FK_2EBD22CE12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`delivery_id`),
  ADD CONSTRAINT `FK_2EBD22CE30E90E33` FOREIGN KEY (`shipping_pref`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE41D46E2E` FOREIGN KEY (`shipping_country_id`) REFERENCES `mtb_country` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE5EEADD3B` FOREIGN KEY (`time_id`) REFERENCES `dtb_delivery_time` (`time_id`),
  ADD CONSTRAINT `FK_2EBD22CE8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`order_id`),
  ADD CONSTRAINT `FK_2EBD22CEAB45AECA` FOREIGN KEY (`fee_id`) REFERENCES `dtb_delivery_fee` (`fee_id`);

--
-- Constraints for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD CONSTRAINT `FK_59F696DE21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`product_class_id`),
  ADD CONSTRAINT `FK_59F696DE4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`product_id`),
  ADD CONSTRAINT `FK_59F696DE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`member_id`),
  ADD CONSTRAINT `FK_59F696DE800F7945` FOREIGN KEY (`calc_rule`) REFERENCES `mtb_taxrule` (`id`),
  ADD CONSTRAINT `FK_59F696DEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_59F696DEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD CONSTRAINT `FK_94C12A694FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);
--
-- Database: `fuji1`
--
CREATE DATABASE IF NOT EXISTS `fuji1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `fuji1`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_payment`
--

CREATE TABLE `detail_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2018_07_06_022845_vacation_request', 1),
(2, '2018_07_06_022913_overtime_request', 1),
(3, '2018_07_06_023159_payment_request', 1),
(4, '2018_07_06_023429_detail_payment', 1),
(5, '2018_07_06_023446_training_document', 1);

-- --------------------------------------------------------

--
-- Table structure for table `overtime_request`
--

CREATE TABLE `overtime_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `total_hours` time NOT NULL,
  `status` smallint(6) NOT NULL,
  `project` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total_with_vat` int(11) NOT NULL,
  `curentcy` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_in_charge_user_id` int(11) NOT NULL,
  `paymen_method` smallint(6) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_document`
--

CREATE TABLE `training_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_person` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `starting_day` date NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacation_request`
--

CREATE TABLE `vacation_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vacation_type` smallint(6) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `current_in_charge_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_payment`
--
ALTER TABLE `detail_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_request`
--
ALTER TABLE `overtime_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_request`
--
ALTER TABLE `payment_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_document`
--
ALTER TABLE `training_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation_request`
--
ALTER TABLE `vacation_request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_payment`
--
ALTER TABLE `detail_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `overtime_request`
--
ALTER TABLE `overtime_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_request`
--
ALTER TABLE `payment_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_document`
--
ALTER TABLE `training_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vacation_request`
--
ALTER TABLE `vacation_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `fujierp_dev_db`
--
CREATE DATABASE IF NOT EXISTS `fujierp_dev_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `fujierp_dev_db`;

-- --------------------------------------------------------

--
-- Table structure for table `comment_overtime`
--

CREATE TABLE `comment_overtime` (
  `id` int(11) NOT NULL,
  `overtime_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_payment`
--

CREATE TABLE `comment_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_payment`
--

INSERT INTO `comment_payment` (`id`, `payment_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 101, 46, '123\r\n', 1533191587, 1533191587);

-- --------------------------------------------------------

--
-- Table structure for table `comment_vacation`
--

CREATE TABLE `comment_vacation` (
  `id` int(11) NOT NULL,
  `vacation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Employees', NULL, NULL, NULL),
(2, 'BO', NULL, NULL, NULL),
(3, 'C-Level', NULL, NULL, NULL),
(4, 'Managers', NULL, NULL, NULL),
(5, 'Finance', NULL, NULL, NULL),
(6, 'IT', NULL, NULL, NULL),
(7, 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments_users`
--

CREATE TABLE `departments_users` (
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `is_leader` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments_users`
--

INSERT INTO `departments_users` (`user_id`, `department_id`, `is_leader`, `created_at`, `updated_at`, `id`) VALUES
(1, 7, 0, NULL, NULL, 1),
(29, 4, NULL, NULL, NULL, 2),
(30, 1, NULL, NULL, NULL, 3),
(31, 1, NULL, NULL, NULL, 4),
(32, 1, NULL, NULL, NULL, 5),
(33, 8, NULL, NULL, NULL, 6),
(34, 1, NULL, NULL, NULL, 7),
(35, 1, NULL, NULL, NULL, 8),
(36, 1, NULL, NULL, NULL, 9),
(37, 2, NULL, NULL, NULL, 10),
(38, 1, NULL, NULL, NULL, 11),
(39, 1, NULL, NULL, NULL, 12),
(49, 1, NULL, NULL, NULL, 13),
(41, 1, NULL, NULL, NULL, 14),
(42, 1, NULL, NULL, NULL, 15),
(43, 1, NULL, NULL, NULL, 16),
(44, 1, NULL, NULL, NULL, 17),
(45, 1, NULL, NULL, NULL, 18),
(46, 7, NULL, NULL, NULL, 19),
(47, 1, NULL, NULL, NULL, 20),
(48, 1, NULL, NULL, NULL, 21),
(50, 1, NULL, NULL, NULL, 22),
(52, 1, NULL, NULL, NULL, 23),
(53, 1, NULL, NULL, NULL, 24),
(54, 5, NULL, NULL, NULL, 25),
(66, 7, NULL, NULL, NULL, 26),
(67, 2, NULL, NULL, NULL, 27);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contents` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `from_time` int(11) NOT NULL,
  `to_time` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `room_id`, `from_time`, `to_time`, `created_user_id`, `reasons`, `created_at`, `updated_at`) VALUES
(1, 1, 1533628800, 1533636900, 66, 'hop tre co', 1533627901, NULL),
(2, 1, 1534732200, 1534734000, 37, 'Interview', 1534730849, NULL),
(3, 1, 1534734060, 1534737600, 37, 'Viet-san', 1534730961, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `migration` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`type`, `name`, `migration`) VALUES
('app', 'default', '001_create_users'),
('app', 'default', '002_create_vacations'),
('app', 'default', '003_create_documents'),
('app', 'default', '004_create_projects'),
('app', 'default', '005_create_overtime_requests'),
('app', 'default', '006_create_payments');

-- --------------------------------------------------------

--
-- Table structure for table `overtime_requests`
--

CREATE TABLE `overtime_requests` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `project_id` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `current_group_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_requests`
--

INSERT INTO `overtime_requests` (`id`, `user_id`, `reason`, `start_time`, `end_time`, `project_id`, `status`, `current_group_id`, `created_at`, `updated_at`, `assign_manager_id`, `deleted_at`) VALUES
(1, 57, 'Tranfer Eccu-be Project', 1500771600, 1500780600, '0', 4, 7, 1501641000, NULL, NULL, NULL),
(2, 52, 'Support customer and fix bugs', 1501582500, 1501593300, '0', 4, 7, 1501657800, NULL, NULL, NULL),
(3, 57, 'Eccube Project', 1500891300, 1500901200, '0', 4, 7, 1501657980, NULL, NULL, NULL),
(4, 33, 'Fix bug on Marc2 production server', 1503050400, 1503057600, '0', 4, 7, 1503057720, NULL, NULL, NULL),
(5, 57, 'Support for MARC2 Project (Fix bugs)', 1503051300, 1503057600, '0', 4, 7, 1503057840, NULL, NULL, NULL),
(6, 35, 'Support fix bug on Marc2 production server', 1503050400, 1503057600, '0', 4, 7, 1503057900, NULL, NULL, NULL),
(7, 56, 'Handling marc2 ', 1503052200, 1503057600, '0', 4, 7, 1503058020, NULL, NULL, NULL),
(8, 52, 'support customer to fix bugs', 1503052200, 1503057600, '0', 4, 7, 1503058500, NULL, NULL, NULL),
(9, 57, 'Handle MARC2 deploy', 1503396900, 1503402300, '0', 4, 7, 1503402300, NULL, NULL, NULL),
(10, 52, 'Handle Marc2 tasks and support customer', 1503396900, 1503402300, '0', 4, 7, 1503402360, NULL, NULL, NULL),
(11, 56, 'Support Marc2 deployment ', 1503396900, 1503402420, '0', 4, 7, 1503402420, NULL, NULL, NULL),
(12, 33, 'Fix bugs and deploy to server', 1504000800, 1504008000, '0', 4, 7, 1504013640, NULL, NULL, NULL),
(13, 57, 'Fix bugs and deploy', 1504001700, 1504008000, '0', 4, 7, 1504055460, NULL, NULL, NULL),
(14, 56, 'Handle Marc2 release', 1504174500, 1504179000, '0', 4, 7, 1504179660, NULL, NULL, NULL),
(15, 33, 'Deploy to server Marc2', 1504173600, 1504180800, '0', 4, 7, 1504499460, NULL, NULL, NULL),
(16, 57, 'Support deployment for JP in MARC2 Project', 1504174500, 1504179000, '0', 4, 7, 1504573380, NULL, NULL, NULL),
(17, 57, 'Implement 021 new design', 1504692900, 1504697400, '0', 4, 7, 1505092620, NULL, NULL, NULL),
(18, 57, 'Fix bug in 021 new design', 1504865700, 1504868400, '0', 4, 7, 1505092680, NULL, NULL, NULL),
(19, 33, 'Deploy to Marc2 server', 1504865700, 1504868400, '0', 4, 7, 1505092800, NULL, NULL, NULL),
(20, 52, 'Deploy to production and support', 1504001700, 1504008000, '0', 4, 7, 1505359740, NULL, NULL, NULL),
(21, 52, 'Implement new design', 1504692900, 1504697400, '0', 4, 7, 1505360400, NULL, NULL, NULL),
(22, 35, 'deploy Marc2', 1504001700, 1504008000, '0', 4, 7, 1505361180, NULL, NULL, NULL),
(23, 57, 'Fix bugs in MARC project', 1506593700, 1506599100, '0', 4, 7, 1506599220, NULL, NULL, NULL),
(24, 35, 'Marc2: create new feature', 1506593700, 1506599100, '0', 4, 7, 1506599220, NULL, NULL, NULL),
(25, 52, 'Support MoreVietNam', 1507630500, 1507637700, '0', 4, 7, 1507718940, NULL, NULL, NULL),
(26, 36, 'Support for implementation in narhanoiforum.com ', 1507630500, 1507637700, '0', 4, 7, 1507863960, NULL, NULL, NULL),
(27, 57, 'Fix bugs in TRECO', 1508753700, 1508757600, '0', 4, 7, 1508757420, NULL, NULL, NULL),
(28, 38, 'Maintain and update event for Remonster.', 1509757200, 1509775200, '0', 4, 7, 1509505440, NULL, NULL, NULL),
(29, 57, 'Support ReMonster maintance weekly!', 1509759000, 1509777000, '0', 4, 7, 1509608040, NULL, NULL, NULL),
(30, 38, 'Re:Monster s mainternance', 1510365600, 1510383600, '0', 4, 7, 1510287660, NULL, NULL, NULL),
(31, 31, 'Re:Monster maintenance', 1510279200, 1510293600, '0', 4, 7, 1510309560, NULL, NULL, NULL),
(32, 57, 'Fix bug EC-CUBE', 1509444900, 1509447600, '0', 4, 7, 1510538880, NULL, NULL, NULL),
(33, 38, 'Maintain Remonster', 1510970400, 1510984800, '0', 4, 7, 1510903620, NULL, NULL, NULL),
(34, 57, 'Fix bug of EC-CUBE', 1511345700, 1511352900, '0', 4, 7, 1511433060, NULL, NULL, NULL),
(35, 35, 'fix ECCUBE bug', 1511345700, 1511352900, '0', 4, 7, 1511433120, NULL, NULL, NULL),
(36, 38, 'maintain remonster', 1511575200, 1511589600, '0', 4, 7, 1511434980, NULL, NULL, NULL),
(37, 31, 'ReMonster maintenance', 1511575200, 1511499600, '0', 4, 7, 1511490480, NULL, NULL, NULL),
(38, 31, 'Re:Monster maintence', 1512180000, 1512194400, '0', 4, 7, 1512126600, NULL, NULL, NULL),
(39, 35, 'deploy marc2 production', 1512641700, 1512647100, '0', 4, 7, 1512647460, NULL, NULL, NULL),
(40, 33, 'Deploy Marc2 Production server', 1512641700, 1512647400, '0', 4, 7, 1512647460, NULL, NULL, NULL),
(41, 31, 'ReMonster Maintenance', 1512784800, 1512799200, '0', 4, 7, 1512722460, NULL, NULL, NULL),
(42, 33, 'Development of CRM project', 1512728100, 1512731700, '0', 4, 7, 1512731700, NULL, NULL, NULL),
(43, 35, 'Developing CRM', 1512728100, 1512734400, '0', 4, 7, 1512734460, NULL, NULL, NULL),
(44, 52, 'handle CRM project', 1512728100, 1512734460, '0', 4, 7, 1512734460, NULL, NULL, NULL),
(45, 57, 'Implement CRM features', 1512728100, 1512731700, '0', 4, 7, 1512987540, NULL, NULL, NULL),
(46, 33, 'Test case, Security Marc2 Production', 1512987300, 1512990900, '0', 4, 7, 1512990480, NULL, NULL, NULL),
(47, 35, 'develope CRM', 1512987300, 1512994500, '0', 4, 7, 1512994500, NULL, NULL, NULL),
(48, 33, 'CRM bugs', 1513073700, 1513077300, '0', 4, 7, 1513077240, NULL, NULL, NULL),
(49, 35, 'Developing CRM', 1513073700, 1513080000, '0', 4, 7, 1513080120, NULL, NULL, NULL),
(50, 52, 'Handle CRM tasks', 1513073700, 1513079100, '0', 4, 7, 1513162740, NULL, NULL, NULL),
(51, 57, 'Write test case for CRM Project', 1513073700, 1513077300, '0', 4, 7, 1513163400, NULL, NULL, NULL),
(52, 33, 'CRM project', 1513160100, 1513163700, '0', 4, 7, 1513163460, NULL, NULL, NULL),
(53, 57, 'Implement CRM features', 1513160100, 1513163700, '0', 4, 7, 1513163520, NULL, NULL, NULL),
(54, 52, 'handle CRM tasks', 1513160100, 1513163700, '0', 4, 7, 1513249080, NULL, NULL, NULL),
(55, 33, 'fix bugs CRM project', 1513246500, 1513250100, '0', 4, 7, 1513249740, NULL, NULL, NULL),
(56, 57, 'Write integration test for CRM', 1513246500, 1513250100, '0', 4, 7, 1513300740, NULL, NULL, NULL),
(57, 38, 'Remonster maintain', 1513389600, 1513400400, '0', 4, 7, 1513309500, NULL, NULL, NULL),
(58, 31, 'ReMonster Maintenance', 1513389600, 1513400400, '0', 4, 7, 1513309560, NULL, NULL, NULL),
(59, 35, 'Developing CRM', 1513160100, 1513163700, '0', 4, 7, 1513312860, NULL, NULL, NULL),
(60, 35, 'Developing CRM', 1513246500, 1513250100, '0', 4, 7, 1513312860, NULL, NULL, NULL),
(61, 52, 'handle CRM tasks', 1513246500, 1513250100, '0', 4, 7, 1513334040, NULL, NULL, NULL),
(62, 52, 'handle CRM tasks', 1513246500, 1513250100, '0', 4, 7, 1513334100, NULL, NULL, NULL),
(63, 38, 'Maintain remonster', 1512180000, 1512190800, '0', 4, 7, 1513647780, NULL, NULL, NULL),
(64, 56, 'Handle Treco question order ticket. ', 1513851300, 1513866600, '0', 4, 7, 1513856160, NULL, NULL, NULL),
(65, 57, 'Fix bug for TRECO', 1513808100, 1513824300, '0', 4, 7, 1513904340, NULL, NULL, NULL),
(66, 38, 'Maintain Remonster', 1513994400, 1514005200, '0', 4, 7, 1513913160, NULL, NULL, NULL),
(67, 31, 'ReMonster Maintenance', 1514008800, 1514019600, '0', 4, 7, 1513923360, NULL, NULL, NULL),
(68, 57, 'TRECO + CRM', 1513994400, 1514179800, '0', 4, 7, 1514164440, NULL, NULL, NULL),
(69, 52, 'Handle CRM tasks', 1513851300, 1513864800, '0', 4, 7, 1514164500, NULL, NULL, NULL),
(70, 52, 'Handle CRM tasks', 1513937700, 1513941300, '0', 4, 7, 1514164560, NULL, NULL, NULL),
(71, 31, 'Re:Monster maintenance', 1514599200, 1514610000, '0', 4, 7, 1514601000, NULL, NULL, NULL),
(72, 38, 'Maintain Remonster', 1514599200, 1514610000, '0', 4, 7, 1515122040, NULL, NULL, NULL),
(73, 38, 'Maintain Remonster', 1515204000, 1515214800, '0', 4, 7, 1515122100, NULL, NULL, NULL),
(74, 31, 'Re:Monster maintenance', 1515204000, 1515214800, '0', 4, 7, 1515122220, NULL, NULL, NULL),
(75, 31, 'Re:Monster maintenance', 1515808800, 1515819600, '0', 4, 7, 1515745980, NULL, NULL, NULL),
(76, 38, 'Remonster maintain', 1515808800, 1515819600, '0', 4, 7, 1515758580, NULL, NULL, NULL),
(77, 53, 'translate documents for Marc app.Please check daily report for detail.', 1516011300, 1516014900, '0', 4, 7, 1516080420, NULL, NULL, NULL),
(78, 53, 'Translate MARC App s document.', 1516097700, 1516104000, '0', 4, 7, 1516152060, NULL, NULL, NULL),
(79, 1, 'Review DDD in Marc2App as client request', 1516184100, 1516187700, '0', 4, 7, 1516183380, NULL, NULL, NULL),
(80, 52, 'CRM deploy', 1516011300, 1516015800, '0', 4, 7, 1516184880, NULL, NULL, NULL),
(81, 33, 'OT for Marc2app', 1516184100, 1516188600, '0', 4, 7, 1516188180, NULL, NULL, NULL),
(82, 57, 'Writing + Review DDD for screen', 1516184100, 1516188600, '0', 4, 7, 1516188180, NULL, NULL, NULL),
(83, 56, 'Translate/review marc2app project s DDD ', 1516184100, 1516190400, '0', 4, 7, 1516238640, NULL, NULL, NULL),
(84, 53, 'Translate documents for marc app', 1516184100, 1516190400, '0', 4, 7, 1516245360, NULL, NULL, NULL),
(85, 1, '#NAME?', 1516270500, 1516275900, '0', 4, 7, 1516269000, NULL, NULL, NULL),
(86, 36, 'Team work for the best result when customer is still in Vietnam', 1516184100, 1516188900, '0', 4, 7, 1516271880, NULL, NULL, NULL),
(87, 36, 'Team work for the best result when customer is still in Vietnam.', 1516270500, 1516275300, '0', 4, 7, 1516272000, NULL, NULL, NULL),
(88, 33, 'Research DDD of marc2app', 1516270500, 1516275900, '0', 4, 7, 1516275540, NULL, NULL, NULL),
(89, 57, 'Update DDD for Marc2App', 1516270500, 1516275900, '0', 4, 7, 1516275540, NULL, NULL, NULL),
(90, 56, 'Review marc2app documents.Support team. ', 1516270500, 1516277700, '0', 4, 7, 1516327920, NULL, NULL, NULL),
(91, 56, 'Review marc2app documents.Support team. ', 1516356900, 1516364100, '0', 4, 7, 1516327980, NULL, NULL, NULL),
(92, 33, 'Research DDD of marc2app', 1516356900, 1516362300, '0', 4, 7, 1516328520, NULL, NULL, NULL),
(93, 35, 'deploy CRM to production', 1516011300, 1516014900, '0', 4, 7, 1516343640, NULL, NULL, NULL),
(94, 52, 'TRECO enhance', 1516184100, 1516188600, '0', 4, 7, 1516350720, NULL, NULL, NULL),
(95, 52, 'Treco enhance', 1516270500, 1516272300, '0', 4, 7, 1516350780, NULL, NULL, NULL),
(96, 1, 'Update DDD for virtual currency in Marc2App', 1516356900, 1516360500, '0', 4, 7, 1516360740, NULL, NULL, NULL),
(97, 57, 'Update DDD for Marc2app', 1516356900, 1516361400, '0', 4, 7, 1516361040, NULL, NULL, NULL),
(98, 53, 'Translate for TRECO', 1516356900, 1516361400, '0', 4, 7, 1516361400, NULL, NULL, NULL),
(99, 56, 'Handle marc2app design document tasks. ', 1516410000, 1516420800, '0', 4, 7, 1516363860, NULL, NULL, NULL),
(100, 31, 'Maintenance for Re:Monster', 1516413600, 1516424400, '0', 4, 7, 1516418520, NULL, NULL, NULL),
(101, 33, 'Marc2 app In-app purchase design', 1516410000, 1516424400, '0', 4, 7, 1516419960, NULL, NULL, NULL),
(102, 1, 'OT to complete DDD for Marc2App', 1516410000, 1516419900, '0', 4, 7, 1516420020, NULL, NULL, NULL),
(103, 57, 'Write DDD for user wallet of Marc2App', 1516412700, 1516424400, '0', 4, 7, 1516423860, NULL, NULL, NULL),
(104, 36, 'Team work for the best result when customer is still in Vietnam.', 1516356900, 1516361700, '0', 4, 7, 1516427880, NULL, NULL, NULL),
(105, 36, 'Team work for the best result when customer is still in Vietnam', 1516410900, 1516427940, '0', 4, 7, 1516428000, NULL, NULL, NULL),
(106, 33, 'In app purchase research ', 1516424400, 1516428000, '0', 4, 7, 1516428000, NULL, NULL, NULL),
(107, 57, 'Update DDD for Marc2App', 1516616100, 1516622400, '0', 4, 7, 1516621860, NULL, NULL, NULL),
(108, 56, 'Discuss project DDD.', 1516616100, 1516623300, '0', 4, 7, 1516621980, NULL, NULL, NULL),
(109, 56, 'Handle marc2app tasks. ', 1516702500, 1516709700, '0', 4, 7, 1516670760, NULL, NULL, NULL),
(110, 33, 'Tomorrow Takanashi san comes back Japan. I must Update BL041 and BL045 and show to Takanashi san.', 1516719600, 1516726800, '0', 2, 5, 1516726800, NULL, NULL, NULL),
(111, 33, 'Update BL 041 BL045 for Marc2app Project and set up a alias email for systemadmin.', 1516788900, 1516791240, '0', 2, 5, 1516791300, NULL, NULL, NULL),
(112, 57, 'Implement A01 screen of Marc2App', 1516875300, 1516878900, '0', 2, 5, 1516879260, NULL, NULL, NULL),
(113, 1, 'Implement coding as heavily workload.', 1516875300, 1516878900, '0', 2, 5, 1516879320, NULL, NULL, NULL),
(114, 33, 'Update BL041', 1517014800, 1517029200, '0', 2, 5, 1517029080, NULL, NULL, NULL),
(115, 57, 'Implement A11 screen for Marc2App', 1517017500, 1517029200, '0', 2, 5, 1517029080, NULL, NULL, NULL),
(116, 36, 'Speed up the work result', 1517020200, 1517029200, '0', 2, 5, 1517029200, NULL, NULL, NULL),
(117, 33, 'Meeting with takanashi san', 1517201100, 1517204700, '0', 2, 5, 1517204280, NULL, NULL, NULL),
(118, 1, 'Meeting with Takanashi-san', 1517201100, 1517204700, '0', 2, 5, 1517206020, NULL, NULL, NULL),
(119, 56, 'Review project test cases. ', 1517220900, 1517228100, '0', 2, 5, 1517217780, NULL, NULL, NULL),
(120, 1, 'Rush for deadline', 1517220900, 1517223600, '0', 2, 5, 1517225520, NULL, NULL, NULL),
(121, 57, 'Implement A11 screen', 1517220900, 1517225400, '0', 2, 5, 1517225640, NULL, NULL, NULL),
(122, 33, 'Implement BL022', 1517220900, 1517226300, '0', 2, 5, 1517226180, NULL, NULL, NULL),
(123, 36, 'Speed up the work result', 1517220900, 1517227200, '0', 4, 7, 1517227200, NULL, NULL, NULL),
(124, 56, 'Handle marc2app tasks.', 1517307300, 1517314500, '0', 4, 7, 1517306760, NULL, NULL, NULL),
(125, 33, 'Update BL011 and Update BL022', 1517307300, 1517310900, '0', 4, 7, 1517310420, NULL, NULL, NULL),
(126, 57, 'Implement A21 screen', 1517307300, 1517310900, '0', 4, 7, 1517361780, NULL, NULL, NULL),
(127, 31, 'ReMonster Maintenance', 1517104800, 1517122800, '0', 2, 5, 1517553780, NULL, NULL, NULL),
(128, 1, 'Try to finish all remaining tasks for mobile app', 1517625900, 1517633100, '0', 2, 5, 1517631720, NULL, NULL, NULL),
(129, 33, 'Update Unit test BL002 and Set up Local environment for TRECO project', 1517619600, 1517634000, '0', 2, 5, 1517632500, NULL, NULL, NULL),
(130, 57, 'Implement A43 screen', 1517621400, 1517634000, '0', 2, 5, 1517633640, NULL, NULL, NULL),
(131, 31, 'ReMonster Maintenance', 1517637600, 1517641200, '0', 4, 7, 1517634480, NULL, NULL, NULL),
(132, 1, 'Meeting with Takanashi-san', 1518065100, 1518066900, '0', 2, 5, 1518070680, NULL, NULL, NULL),
(133, 31, 'ReMonster maintenance', 1518328800, 1518339600, '0', 4, 7, 1518325740, NULL, NULL, NULL),
(134, 52, 'Update zodiaq website', 1518430500, 1518435540, '0', 2, 5, 1518435660, NULL, NULL, NULL),
(135, 38, 'remonster maintain', 1517108400, 1517126400, '0', 2, 5, 1519184580, NULL, NULL, NULL),
(136, 55, 'The project Milly android need to be done some function before 28/02, so I need to work at weekend to finish', 1519434000, 1519467300, '0', 2, 5, 1519294560, NULL, NULL, NULL),
(137, 55, 'The project Milly android need to be done some function before 28/02, so I need to work at weekend to finish', 1519520400, 1519553700, '0', 4, 7, 1519294740, NULL, NULL, NULL),
(138, 52, 'Support Tuan-san to crop images for Milly Project', 1519527000, 1519530600, '0', 2, 5, 1519609260, NULL, NULL, NULL),
(139, 56, 'Hanlde milly application development', 1519520400, 1519525800, '0', 2, 5, 1519613700, NULL, NULL, NULL),
(140, 56, 'Hanlde milly application development', 1519383600, 1519389000, '0', 2, 5, 1519613760, NULL, NULL, NULL),
(141, 56, 'Hanlde milly application development', 1519468200, 1519471800, '0', 2, 5, 1519613820, NULL, NULL, NULL),
(142, 57, 'Fix bugs for TRECO', 1519726500, 1519730100, '0', 2, 5, 1519730280, NULL, NULL, NULL),
(143, 33, 'Implement TRECO Enhance No.02', 1519726500, 1519730280, '0', 2, 5, 1519730340, NULL, NULL, NULL),
(144, 1, 'Rush for deadline', 1519726500, 1519731000, '0', 2, 5, 1519731060, NULL, NULL, NULL),
(145, 35, 'Implement Treco ticket', 1519726500, 1519731000, '0', 2, 5, 1519812960, NULL, NULL, NULL),
(146, 1, 'Rush for deadline', 1519812900, 1519818300, '0', 2, 5, 1519817640, NULL, NULL, NULL),
(147, 57, 'Fix bugs of TRECO', 1519812900, 1519817400, '0', 2, 5, 1519817760, NULL, NULL, NULL),
(148, 33, 'Implement TRECO-ENHANCE No.02', 1519812900, 1519819200, '0', 2, 5, 1519819020, NULL, NULL, NULL),
(149, 35, 'implement Treco ticket', 1519812900, 1519819200, '0', 2, 5, 1519897380, NULL, NULL, NULL),
(150, 56, 'Handle milly app', 1519899300, 1519902900, '0', 2, 5, 1519953420, NULL, NULL, NULL),
(151, 35, 'implement Treco request', 1519899300, 1519901100, '0', 2, 5, 1519977120, NULL, NULL, NULL),
(152, 33, 'Fix bug Treco enhance No 047', 1519985700, 1519991100, '0', 2, 5, 1519990920, NULL, NULL, NULL),
(153, 33, 'Hot fix treco enhance', 1520504100, 1520506800, '0', 2, 5, 1520506500, NULL, NULL, NULL),
(154, 37, 'Supervise dismantling office', 1521252000, 1521288000, '0', 2, 5, 1521184680, NULL, NULL, NULL),
(155, 31, 'ReMonster maintenance', 1521252000, 1521262800, '0', 2, 5, 1521251640, NULL, NULL, NULL),
(156, 31, 'ReMonster maintenance', 1520056800, 1520067600, '0', 4, 7, 1521428640, NULL, NULL, NULL),
(157, 31, 'ReMonster maintenance', 1520647200, 1520658000, '0', 2, 5, 1521428760, NULL, NULL, NULL),
(158, 31, 'ReMOnster maintenance', 1521856800, 1521867600, '0', 4, 7, 1521863160, NULL, NULL, NULL),
(159, 31, 'ReMonster maintenance', 1522461600, 1522472400, '0', 4, 7, 1522387860, NULL, NULL, NULL),
(160, 33, 'Hot fix ECCUBE: Fix module Robot payment', 1522404900, 1522411200, '0', 2, 5, 1522411260, NULL, NULL, NULL),
(161, 58, 'Request of project (EC-CUBE)', 1522404900, 1522412100, '0', 2, 5, 1522412280, NULL, NULL, NULL),
(162, 33, 'Fix bugs Robot Payment feature and Deploy to Production server', 1522458000, 1522491300, '0', 2, 5, 1522491000, NULL, NULL, NULL),
(163, 58, 'Request of project (Robot Payment)', 1522461600, 1522490400, '0', 2, 5, 1522491180, NULL, NULL, NULL),
(164, 35, 'Deploy Marc + EcCube', 1522461600, 1522491300, '0', 2, 5, 1522491300, NULL, NULL, NULL),
(165, 31, 'ReMonster maintenance', 1523066400, 1523077200, '0', 2, 5, 1523067300, NULL, NULL, NULL),
(166, 35, 'Fix bug EcCube', 1523614500, 1523619000, '0', 1, 4, 1523618700, NULL, NULL, NULL),
(167, 33, 'Research urgent bugs of ECCUBE', 1523614500, 1523619000, '0', 1, 4, 1523618820, NULL, NULL, NULL),
(168, 33, 'Research urgent bugs of ECCUBE', 1523619000, 1523620800, '0', 1, 4, 1523619960, NULL, NULL, NULL),
(169, 58, 'Fix urgent bugs.', 1523615400, 1523620800, '0', 2, 5, 1523621280, NULL, NULL, NULL),
(170, 31, 'ReMonster maintenance', 1523671200, 1523682000, '0', 2, 5, 1523684280, NULL, NULL, NULL),
(171, 33, 'do statistics about source codes for Marc2', 1524219300, 1524225600, '0', 1, 4, 1524225180, NULL, NULL, NULL),
(172, 31, 'ReMonster maintenace', 1525485600, 1525496400, '0', 4, 7, 1525423380, NULL, NULL, NULL),
(173, 31, 'ReMonster maintenance', 1524276000, 1524286800, '0', 4, 7, 1525423980, NULL, NULL, NULL),
(174, 34, 'Complete urgent first phrase of Yume 100 project', 1525482000, 1525515300, '0', 4, 7, 1525424760, NULL, NULL, NULL),
(175, 33, 'Fix UI bugs for Treco', 1525860900, 1525864620, '0', 4, 7, 1525864680, NULL, NULL, NULL),
(176, 34, 'Complete translation file of Yume 100 urgently', 1526086800, 1526120100, '0', 2, 5, 1526037900, NULL, NULL, NULL),
(177, 31, 'ReMonster maintenance', 1526090400, 1526101200, '0', 2, 5, 1526100120, NULL, NULL, NULL),
(178, 34, 'Complete the translation of Yume 100 urgently', 1526691600, 1526724900, '0', 2, 5, 1526691120, NULL, NULL, NULL),
(179, 31, 'ReMonster MaintenanceYume100 translation team over time.', 1526695200, 1526715000, '0', 2, 5, 1526695500, NULL, NULL, NULL),
(180, 31, 'ReMonster maintenance', 1527300000, 1527310800, '0', 2, 5, 1526955900, NULL, NULL, NULL),
(181, 32, 'Yume 100 translation', 1525482000, 1525500000, '0', 1, 4, 1527039900, NULL, NULL, NULL),
(182, 32, 'Yume 100 translation', 1526086800, 1526120100, '0', 1, 4, 1527039960, NULL, NULL, NULL),
(183, 32, 'Yume 100 translation', 1526709600, 1526724900, '0', 1, 4, 1527040080, NULL, NULL, NULL),
(184, 53, 'OKI/WINNERS: Powerwork: Translate for updated file test case (13file)', 1530320400, 1530333000, '0', 2, 5, 1530333120, NULL, NULL, NULL),
(185, 30, 'Translate file test case (13) for Powerwork project', 1530322200, 1530333000, '0', 4, 7, 1530333240, NULL, NULL, NULL),
(186, 33, 'Support Framgia deploy to ECCUBE Production server', 1533098700, 1533102300, '', 1, 4, 1534734037, 1538124653, 29, NULL),
(187, 55, 'Murakawa is kind of rush, I am OT to finish this project', 1535158800, 1535192100, 'Murakawa', 1, 4, 1535096917, 1538124648, 29, NULL),
(188, 55, 'Murakawa is kind of rush, I am OT to finish this project', 1535763600, 1535796900, 'Murakawa', 1, 4, 1535620960, 1538124643, 29, NULL),
(189, 55, 'Wecssy resubmit QuickTrade app on Apple ITC', 1536368400, 1536401700, 'WecssymQuickTrade', 1, 4, 1536302696, 1538124638, 29, NULL),
(190, 44, 'To refine text of Yume100 game.', 1536973200, 1537006500, '', 0, 3, 1536973557, 1537000308, 29, 1537000308),
(191, 44, '', 1536973200, 1536983100, '', 0, 3, 1537000365, 1537427228, 29, 1537427228),
(192, 44, 'Refine texts of game Yume 100.', 1536991200, 1537006500, 'Yume 100', 1, 4, 1537000397, 1538124633, 29, NULL),
(193, 44, 'Refine texts of game Yume 100.', 1536973200, 1536983100, 'Yume 100', 1, 4, 1537427210, 1538124629, 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `current_group_id` int(11) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `total_with_vat` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `total_amount`, `vat`, `currency`, `status`, `reasons`, `current_group_id`, `payment_method`, `details`, `created_at`, `updated_at`, `assign_manager_id`, `total_with_vat`, `deleted_at`, `file_path`, `file_name`) VALUES
(1, 61, 12740000, 0, '', 4, 'once a year, let employees take medical check.BO team got a quotation from hospital, so please check attached quotation.', NULL, 3, '', 1501050000, NULL, 29, 12740000, NULL, NULL, NULL),
(2, 61, 2157045, 0, '', 4, 'EPayment of copyright royalty to AlphaPolis. June 2017 minutes', NULL, 3, '', 1501491660, NULL, 29, 2157045, NULL, NULL, NULL),
(3, 53, 450000, 0, '', 4, 'For Macbook skype meeting, using ethernet for faster speed. ', NULL, 1, '', 1483842300, NULL, 29, 450000, NULL, NULL, NULL),
(4, 30, 800000, 0, '', 4, '[‰H”Á‰á–h‰u]@Because of Dengue fever is now boom in Hanoi, I request to use disinfection service. ', NULL, 1, '', 1491619200, NULL, 29, 800000, NULL, NULL, NULL),
(5, 59, 200000, 0, '', 4, 'Payment for express delivery from 7/3/2017 to 8/9/2017', NULL, 1, '', 1507430940, NULL, 29, 200000, NULL, NULL, NULL),
(6, 60, 6000000, 0, '', 4, 'To get License Shinchan', NULL, 1, '', 1507448580, NULL, 29, 6000000, NULL, NULL, NULL),
(7, 60, 760000, 0, '', 4, 'Hi,I request we should buy 50 chapters of Shinchan (vietnamese version) https://www.adayroi.com/shin-cau-be-but-chi-truyen-ngan-tron-bo-50-cuon-p-4aeLO-f1-2?pi=jrWzm Thanks./', NULL, 1, '', 1503471660, NULL, 29, 760000, NULL, NULL, NULL),
(8, 38, 900000, 0, '', 4, 'Request mobile card for testing', NULL, 1, '', 1503541440, NULL, 29, 900000, NULL, NULL, NULL),
(9, 54, 1800000, 0, '', 4, ' New digit signature Vina-CA for 1,5 years', NULL, 3, '', 1503654900, NULL, 29, 1800000, NULL, NULL, NULL),
(10, 60, 12000000, 0, '', 4, 'To finish get Shinchan License', NULL, 1, '', 1503911340, NULL, 29, 12000000, NULL, NULL, NULL),
(11, 59, 180000, 0, '', 4, 'Payment for name card order for Hibi san and Kato san. ', NULL, 1, '', 1503979620, NULL, 29, 180000, NULL, NULL, NULL),
(12, 54, 4320000, 0, '', 4, 'Accounting software out of date', NULL, 3, '', 1504161480, NULL, 29, 4320000, NULL, NULL, NULL),
(13, 61, 72292000, 0, '', 4, 'We will order Kayac to rapper for connecting Crayon Shin-chan s game and Fuji SDK. I attached an estimate.Amount (yen) 350,000 Manpower (human day) 15', NULL, 3, '', 1505272620, NULL, 29, 72292000, NULL, NULL, NULL),
(14, 61, 9532665, 0, '', 4, 'EPayment of copyright royalty to AlphaPolis. July 2017 ', NULL, 3, '', 1506483360, NULL, 29, 9532665, NULL, NULL, NULL),
(15, 53, 2772000, 0, '', 4, 'Buy MOONCAKE', NULL, 1, '', 1506660780, NULL, 29, 2772000, NULL, NULL, NULL),
(16, 59, 140000, 0, '', 4, 'To pay the express delivery fee from 8/16/2017 - 9/28/2017', NULL, 1, '', 1489120320, NULL, 29, 140000, NULL, NULL, NULL),
(17, 59, 60000, 0, '', 4, 'Payment for express delivery from 6th Oct to 11th Oct ', NULL, 1, '', 1512892740, NULL, 29, 60000, NULL, NULL, NULL),
(18, 61, 842000, 0, '', 4, 'I had a dinner meeting with the staff at the safari games. I paid for the dinner. I will charge Fuji.', NULL, 1, '', 1507860240, NULL, 29, 842000, NULL, NULL, NULL),
(19, 59, 40000, 0, '', 4, 'Payment for making the more copy of company s key.', NULL, 1, '', 1507869360, NULL, 29, 40000, NULL, NULL, NULL),
(20, 56, 12000, 0, 'JPY', 4, 'iPhone 5s (Jp) to test (old) (mobile) apps (Japan) on Marc2 and other apps. Price ~12,000 Yen Example: http://www.sofmap.com/product_detail.aspx?sku=43436543&gid=UD28070103', NULL, 1, '', 1508732880, NULL, 29, 12000, NULL, NULL, NULL),
(21, 56, 2400000, 0, '', 4, 'iPhone 5s (Jp) to test (old) (mobile) apps (Japan) on Marc2 and other apps. Price ~12,000 Yen Example: http://www.sofmap.com/product_detail.aspx?sku=43436543&gid=UD28070103', NULL, 1, '', 1508806680, NULL, 29, 2400000, NULL, NULL, NULL),
(22, 57, 20782000, 0, '', 4, 'Buy new PC for new staff - Kh?ng Qu?c Hi?u and replace a broken PC power supply', NULL, 1, '', 1508813880, NULL, 29, 20782000, NULL, NULL, NULL),
(23, 62, 545000, 0, '', 4, 'Use for project react native app Marc 2 https://www.phucanh.vn/ban-phim-dell-kb216b-usb-co-day.html https://www.phucanh.vn/chuot-logitech-b100-usb.html https://fptshop.com.vn/phu-kien/cap-micro-usb-rock-1m-nhua-chong-roi https://fptshop.com.vn/phu-kien/cap-lightning-rock-1m', NULL, 1, '', 1508819700, NULL, 29, 545000, NULL, NULL, NULL),
(24, 61, 50796, 0, 'JPY', 4, 'EPayment of copyright royalty to AlphaPolis. August 2017 ', NULL, 3, '', 1509335040, NULL, 29, 50796, NULL, NULL, NULL),
(25, 57, 867000, 0, 'VND', 4, 'Payment for express delivery from 11th Oct to 31st Oct, shipping fee, Activity s stuffs and Birthday gifts', NULL, 1, '', 1509415560, NULL, 29, 867000, NULL, NULL, NULL),
(26, 60, 30, 0, 'USD', 4, 'Tool for ReMonster maintaince.https://gyazo.com/d77841ae1e4e163f7c97fc03c91c13d7 We need plan 10$/ month x 3 month = 30$', NULL, 2, '', 1486798740, NULL, 29, 30, NULL, NULL, NULL),
(27, 37, 319000, 0, 'VND', 4, 'Buy magnet board using for noticing staffs', NULL, 1, '', 1489197660, NULL, 29, 319000, NULL, NULL, NULL),
(28, 62, 99000, 0, 'VND', 4, 'Cap HDMI for connect PC with display https://www.phucanh.vn/cap-hdmi-vention-15m.html', NULL, 1, '', 1497161640, NULL, 29, 99000, NULL, NULL, NULL),
(29, 37, 2000000, 10, 'VND', 4, 'Buy calendar 2018', NULL, 1, '', 1502418840, NULL, 29, 2200000, NULL, NULL, NULL),
(30, 37, 1000000, 0, 'VND', 4, 'Buy gifts for Mr. Takanashi, Mr. Ha and farewell party', NULL, 1, '', 1502425980, NULL, 29, 1000000, NULL, NULL, NULL),
(31, 37, 30000, 0, 'VND', 4, 'Print color documents for Mr. Ha is evaluation report', NULL, 1, '', 1505100180, NULL, 29, 30000, NULL, NULL, NULL),
(32, 37, 1600000, 10, 'VND', 4, 'Print company flyers', NULL, 1, '', 1510541820, NULL, 29, 1760000, NULL, NULL, NULL),
(33, 37, 3800000, 0, 'VND', 1, 'expand the office', NULL, 1, '', 1510630500, NULL, 29, 3800000, NULL, NULL, NULL),
(34, 37, 200000, 0, 'VND', 4, 'Fix the door is lock', NULL, 1, '', 1511148960, NULL, 29, 200000, NULL, NULL, NULL),
(35, 37, 400000, 10, 'VND', 4, 'Print documents for event \"Job Fair\"', NULL, 1, '', 1511517480, NULL, 29, 440000, NULL, NULL, NULL),
(36, 37, 2000000, 0, 'VND', 4, '- Farewell party for Hibi-san =- Staff birthday November party and gifts.', NULL, 1, '', 1511852100, NULL, 29, 2000000, NULL, NULL, NULL),
(37, 56, 150000, 0, 'JPY', 4, '---¡‰ñ‚ÌBodyscannerì‹Æ‚É‚Â‚¢‚ÄAŒ©Ï‚à‚èƒtƒ@ƒCƒ‹‚ðì¬‚µ‚Ü‚µ‚½BEŠJ”­—’èŠúŠÔF11ŒŽ30“ú|12ŒŽ8“úE”ï—pF15–œ‰~Ú‚µ‚­ƒtƒ@ƒCƒ‹‚É‚²Šm”FE‚²ŒŸ“¢‚¨Šè‚¢‚µ‚Ü‚·B---', NULL, 1, '', 1512017100, NULL, 29, 150000, NULL, NULL, NULL),
(38, 38, 300000, 0, 'VND', 4, 'Request mobile card for testing', NULL, 1, '', 1486866180, NULL, 29, 300000, NULL, NULL, NULL),
(39, 37, 210000, 0, 'VND', 4, '- Express delivery from November to 4 December- Having document notarized (support Mr. Ha Nguyen)', NULL, 1, '', 1494578820, NULL, 29, 210000, NULL, NULL, NULL),
(40, 37, 200000, 0, 'VND', 4, 'Fix small meeting room s door', NULL, 1, '', 1513912380, NULL, 29, 200000, NULL, NULL, NULL),
(41, 37, 300000, 0, 'VND', 4, 'Buy decoration for New Year', NULL, 1, '', 1513912500, NULL, 29, 300000, NULL, NULL, NULL),
(42, 37, 3000000, 0, 'VND', 4, 'Buy new swivel chairs to replace broken chairs.', NULL, 1, '', 1513918140, NULL, 29, 3000000, NULL, NULL, NULL),
(43, 37, 250000, 0, 'VND', 4, 'Buy birthday gifts for 3 staffs', NULL, 1, '', 1514253480, NULL, 29, 250000, NULL, NULL, NULL),
(44, 56, 159000, 0, 'VND', 4, 'Hub usb (B? chia c?ng usb): Use it for project Marc2 app https://www.phucanh.vn/bo-chia-usb-1-ra-4-orico-w5ph4-u2-usb20.html', NULL, 1, '', 1514348760, NULL, 29, 159000, NULL, NULL, NULL),
(45, 60, 1130000, 0, 'VND', 4, 'Cost for Bussiness Trip in HCM city', NULL, 1, '', 1519874700, NULL, 29, 1130000, NULL, NULL, NULL),
(46, 37, 165000, 0, 'VND', 4, 'Express delivery from 20 December 2017 to 2 January 2018', NULL, 1, '', 1519888800, NULL, 29, 165000, NULL, NULL, NULL),
(47, 37, 117000, 0, 'VND', 4, 'Buy beverage for company', NULL, 1, '', 1543650120, NULL, 29, 117000, NULL, NULL, NULL),
(48, 33, 0, 0, 'USD', 4, 'Use AWS S3 service to storage Achievement training files(videos/audios). This is request from Mr. Takanashi.', NULL, 2, '', 1516255920, NULL, 29, 0, NULL, NULL, NULL),
(49, 37, 200000, 10, 'VND', 4, 'Print backdrop for Year-end Party', NULL, 1, '', 1517210460, NULL, 29, 220000, NULL, NULL, NULL),
(50, 37, 200000, 10, 'VND', 4, 'Refill ink cartridges 2 times:- 2017/12/12- 2018/1/11', NULL, 1, '', 1525234680, NULL, 29, 220000, NULL, NULL, NULL),
(51, 37, 150000, 0, 'VND', 4, 'Buy birthday gifts for staffs in February.', NULL, 1, '', 1525247340, NULL, 29, 150000, NULL, NULL, NULL),
(52, 36, 25900000, 0, 'VND', 1, 'It is required for building iOS app. Product detail: http://macone.vn/mf840-macbook-pro-retina-13-inch-2015-ram-16/', NULL, 1, '', 1527906240, NULL, 29, 25900000, NULL, NULL, NULL),
(53, 37, 100000, 0, 'VND', 4, 'Express delivery from 15 January 2018 to 29 January 2018', NULL, 1, '', 1530519780, NULL, 29, 100000, NULL, NULL, NULL),
(54, 37, 390000, 0, 'VND', 4, 'Express delivery', NULL, 1, '', 1535875080, NULL, 29, 390000, NULL, NULL, NULL),
(55, 37, 1075000, 10, 'VND', 4, 'Buy stationery', NULL, 1, '', 1519206720, NULL, 29, 1182500, NULL, NULL, NULL),
(56, 37, 120000, 0, 'VND', 4, 'Print namecard for Misaki-san', NULL, 1, '', 1519705740, NULL, 29, 120000, NULL, NULL, NULL),
(57, 37, 250000, 0, 'VND', 4, 'Prepare farewell party and buy farewell gift for D?ng-san', NULL, 1, '', 1519727160, NULL, 29, 250000, NULL, NULL, NULL),
(58, 37, 360000, 0, 'VND', 4, '- Problem with photocopy machine: need to replace drum=- Refill ink cartridge', NULL, 1, '', 1519806240, NULL, 29, 360000, NULL, NULL, NULL),
(59, 37, 125000, 0, 'VND', 4, '- Buy new sim card for Misaki-san- Print extra namecard (cards) for Misaki-san', NULL, 1, '', 1517625900, NULL, 29, 125000, NULL, NULL, NULL),
(60, 56, 200000, 0, 'VND', 4, 'Print the book \"Developer Testing Building Quality into Software\" for internal training (Ach/Treco)', NULL, 1, '', 1517652360, NULL, 29, 200000, NULL, NULL, NULL),
(61, 1, 369000, 0, 'VND', 4, 'Switch to using laptop for better meeting and familiar development enviroments', NULL, 1, '', 1525310460, NULL, 29, 369000, NULL, NULL, NULL),
(62, 37, 2953000, 0, 'VND', 4, 'Buy new monitor for new staff - Tran Ngoc Dien (BrSE)', NULL, 1, '', 1528012020, NULL, 29, 2953000, NULL, NULL, NULL),
(63, 37, 90000, 0, 'VND', 4, 'Print namecard for Misaki-san', NULL, 1, '', 1535946000, NULL, 29, 90000, NULL, NULL, NULL),
(64, 37, 309000, 0, 'VND', 4, 'To buy new cable mini displayport for Misaki-san.', NULL, 1, '', 1521708660, NULL, 29, 309000, NULL, NULL, NULL),
(65, 42, 1799000, 0, 'VND', 4, 'I need to save all requirements that cutomer send to me. ', NULL, 1, '', 521797580, NULL, 29, 1799000, NULL, NULL, NULL),
(66, 37, 90000, 0, 'VND', 4, 'Namecard for Nguyen Thanh Le', NULL, 1, '', 1522218840, NULL, 29, 90000, NULL, NULL, NULL),
(67, 37, 230000, 0, 'VND', 4, 'Express delivery from 27th February to 30th March.', NULL, 1, '', 1522378140, NULL, 29, 230000, NULL, NULL, NULL),
(68, 42, 500000, 0, 'VND', 4, 'IT勉強会参加のため', NULL, 1, '', 1522383600, NULL, 29, 500000, NULL, NULL, NULL),
(69, 37, 83000, 0, 'VND', 4, 'Prepare for Activity and birthday March', NULL, 1, '', 1522390980, NULL, 29, 83000, NULL, NULL, NULL),
(70, 1, 1, 0, 'USD', 4, 'Based on this message :https://www.chatwork.com/#!rid89444473-1032582288908505088 We need to apply credit card and contact support to create EC2 server on AWS for account: fujitech.murakawa.2017@gmail.com.First time, Amazon will charge only 1$ to validate credit card.', NULL, 2, '', 1520133600, NULL, 29, 1, NULL, NULL, NULL),
(71, 37, 3000000, 10, 'VND', 4, 'order 2 tables (sample as at Hung-san s position)', NULL, 1, '', 1520153280, NULL, 29, 3300000, NULL, NULL, NULL),
(72, 55, 124, 0, 'USD', 4, 'Murakawa project need Apple account and Google Store account to public app (Install app on customer devices)- IMPORTANT: Apple account : 99$/year- Google account: 25$/lifetime', NULL, 2, '', 1528099020, NULL, 29, 124, NULL, NULL, NULL),
(73, 37, 495000, 0, 'VND', 4, 'Party celebrate Shin-chan project', NULL, 1, '', 1536026820, NULL, 29, 495000, NULL, NULL, NULL),
(74, 42, 400000, 0, 'VND', 1, 'calling and Internet by mobile phone', NULL, 1, '', 1536046560, NULL, 29, 400000, NULL, NULL, NULL),
(75, 37, 320000, 0, 'VND', 4, 'Buy cable from HDMI to VGA for Dien-san is laptop', NULL, 1, '', 1536046920, NULL, 29, 320000, NULL, NULL, NULL),
(76, 37, 885000, 10, 'VND', 4, 'Buy stationary April 2018', NULL, 1, '', 1536051180, NULL, 29, 973500, NULL, NULL, NULL),
(77, 37, 120000, 0, 'VND', 4, 'Print namecard for Dien-san', NULL, 1, '', 1523872980, NULL, 29, 120000, NULL, NULL, NULL),
(78, 37, 500000, 0, 'VND', 4, 'Staff birthday party April', NULL, 1, '', 1524032940, NULL, 29, 500000, NULL, NULL, NULL),
(79, 54, 4800000, 10, 'VND', 1, 'We need add 1 line internet of other supplier because Internet s VNPT is not stable. Toan-san and I decide to choose Internet of Viettel because it is stable and cheaper.', NULL, 3, '', 1524190320, NULL, 29, 5280000, NULL, NULL, NULL),
(80, 54, 2453637, 10, 'VND', 1, 'To?n-san request buy a Load balancer because we will used Load balancer to open a both 2 line internet ( VNPT and Viettel).', NULL, 1, '', 1524190440, NULL, 29, 2699001, NULL, NULL, NULL),
(81, 54, 5600000, 10, 'VND', 4, 'We must rental car for ?? N?ng trip 03 days: 2/6; 3/6; 4/6', NULL, 3, '', 1520232900, NULL, 29, 6160000, NULL, NULL, NULL),
(82, 33, 420000, 0, 'VND', 4, 'Dear Kato san,Our office doesnt have enough mouses for each members. So i have to request money to buy new mouses. I have inserted description on Describe section below.', NULL, 1, '', 1530758520, NULL, 29, 420000, NULL, NULL, NULL),
(83, 37, 100000, 10, 'VND', 4, 'Refill ink cartridge', NULL, 1, '', 1533465000, NULL, 29, 110000, NULL, NULL, NULL),
(84, 37, 700000, 0, 'VND', 4, 'Farewell party for Ha To Ha-san.', NULL, 1, '', 1536119880, NULL, 29, 700000, NULL, NULL, NULL),
(85, 37, 800000, 0, 'VND', 4, 'Staffs birthday party of May', NULL, 1, '', 1536131580, NULL, 29, 800000, NULL, NULL, NULL),
(86, 37, 120000, 0, 'VND', 4, 'Fix photocopy machine', NULL, 1, '', 1538713440, NULL, 29, 120000, NULL, NULL, NULL),
(87, 38, 770000, 0, 'VND', 4, 'Buy 1 year domain for Yume100', NULL, 3, '', 1527143640, NULL, 29, 770000, NULL, NULL, NULL),
(88, 37, 360000, 0, 'VND', 4, 'Express delivery from 23/4 to 25/5', NULL, 1, '', 1527216180, NULL, 29, 360000, NULL, NULL, NULL),
(89, 37, 110000, 0, 'VND', 4, 'Fill in ink cartridge', NULL, 1, '', 1527564600, NULL, 29, 110000, NULL, NULL, NULL),
(90, 37, 184000, 0, 'VND', 4, 'Name card for Misaki-san', NULL, 1, '', 1533530340, NULL, 29, 184000, NULL, NULL, NULL),
(91, 37, 200000, 0, 'VND', 4, 'Unlock safety box', NULL, 1, '', 1533545040, NULL, 29, 200000, NULL, NULL, NULL),
(92, 55, 254000, 10, 'VND', 4, 'We are using free technical for Murakawa for save our money, But when operation we see free technical is not good Now We need by 2 services for Murakawa website is that SSL and Domain', NULL, 3, '', 1528945860, NULL, 29, 279400, NULL, NULL, NULL),
(93, 37, 700000, 0, 'VND', 4, 'Farewell party for Th??ng-san and welcome new staffs', NULL, 1, '', 1529571720, NULL, 29, 700000, NULL, NULL, NULL),
(94, 37, 800000, 0, 'VND', 4, 'Birthday party June and welcome new member.', NULL, 1, '', 1529571960, NULL, 29, 800000, NULL, NULL, NULL),
(95, 37, 149000, 0, 'VND', 4, 'Our company is lack of internet cable and need to buy pincer and internet cable head.', NULL, 1, '', 1517970360, NULL, 29, 149000, NULL, NULL, NULL),
(96, 37, 630000, 0, 'VND', 4, 'Dear Kato san,Our office doesnt have enough mice for each members. So I have to request to buy new mice.', NULL, 1, '', 1517976960, NULL, 29, 630000, NULL, NULL, NULL),
(97, 37, 350000, 0, 'VND', 4, 'to buy birthday gift and birthday cake for staff of July.', NULL, 1, '', 1532321100, NULL, 29, 350000, NULL, NULL, NULL),
(98, 37, 649000, 0, 'VND', 1, 'Buy new laptop battery charger for Thuy-san (Comtor)and a new HDMI cable', NULL, 1, '', 1532501820, NULL, 29, 649000, NULL, NULL, NULL),
(99, 37, 571200, 10, 'VND', 4, 'To buy stationery for July-August 2018', NULL, 3, '', 1532510100, NULL, 29, 628320, NULL, NULL, NULL),
(100, 1, 46, 0, 'USD', 1, 'Since Yume100 will planning to release on end of August.So this proposal is for Yume100s game server.NOTE: please note that it is monthly subscription.Link to AWSs calculator:https://calculator.s3.amazonaws.com/index.html#r=IAD&key=calc-3018F83D-EE84-431C-8D12-72E822312D68', NULL, 2, '', 1532594880, NULL, 29, 46, NULL, NULL, NULL),
(101, 1, 300000, 10, 'VND', 1, 'Platform server is out of disk space. So database service will crash. I would like to increase it with additional 50GB', NULL, 3, '', 1532917200, NULL, 29, 330000, NULL, NULL, NULL),
(102, 37, 450000, 0, 'VND', 1, 'To buy coffee and tea for office.', 4, 1, 'Milk coffee G7 - 3 in 1\r\nTea Dilmah', 1534324587, 1534730944, 29, 450000, NULL, '', ''),
(103, 37, 115000, 0, 'VND', 1, 'Express delivery from 24th July to 9th Aug.', 4, 1, '- 24/7/2018:	sent to Soft Flight	ltd. company\r\n   at 8F, ACB Building, No 218 Bach Dang, Da Nang city\r\n   Expense: 40,000 vnd\r\n- 26/7/2018: sent to Mpire Agency\r\n   at Queen Plaza, F Central, 16A Lê Hồng Phong, HCMC\r\n   Expense: 35,000 vnd\r\n- 9/8/2018: sent to Gate Online Service JSC\r\n   at No 15-17 Nguyễn Cơ Thạch, HCMC\r\n   Expense: 40,000 vnd', 1534817375, 1535341897, 29, 115000, NULL, '', ''),
(104, 37, 90000, 0, 'VND', 1, 'Print namecard box for Kato-san', 4, 1, 'Print 1 box of namecard', 1534824163, 1535341888, 29, 90000, NULL, '', ''),
(105, 67, 550000, 0, 'VND', 1, 'Throw a farawell party for ms Thuy Tran.', 4, 1, 'Buy snack for party and a farawell gift for ms Thuy.', 1535081176, 1535341879, 29, 550000, NULL, '', ''),
(106, 67, 591000, 10, 'VND', 1, 'There is defect in Ink Cartridge (in printer) so printed documents will be blur and unbold. Therefore we need to replace it with a new Ink Catridge. ', 4, 3, 'Buy new Ink Cartridge for Printer', 1535335343, 1535341865, 29, 650100, NULL, '', ''),
(107, 67, 510000, 10, 'VND', 0, 'Throw a farewell part to Long-san and Toan-san on September 19th', 3, 1, 'Estimate expense (Included VAT)\r\n2 gifts(80,000 per person): 160,000 vnđ\r\nSnacks and drinks            : 250,000 vnđ\r\nFruits                                : 150,000 vnđ\r\n                                  Total: 560,000 vnđ', 1536660582, 1536660582, 29, 561000, NULL, '', ''),
(108, 67, 5760000, 10, 'VND', 0, 'Buy moon cakes as Mid-Autumn Festival gifts for employees.', 3, 1, 'Please check this link: http://bit.ly/2CJydAy', 1536830739, 1536830791, 29, 6336000, NULL, '', ''),
(109, 67, 671600, 10, 'VND', 0, 'Buy stationery for 2018 Oct', 3, 3, 'Please check in this Stationery list: http://bit.ly/2p1rEQc', 1536830895, 1538376033, 29, 738760, NULL, '', ''),
(110, 67, 800000, 0, 'VND', 0, 'Throw Mid-Autumn party at the Office', 3, 1, 'Buy mooncake and snacks: 600,000 vnđ\r\nBuy fruit                              : 200,000 vnđ\r\n', 1536831119, 1536831119, 29, 800000, NULL, '', ''),
(111, 67, 480000, 0, 'VND', 0, 'Buy carton boxes to pack stuffs for office moving.\r\nNo invoice', 3, 1, '30 Carton boxes size: 65x43x30cm', 1537406591, 1537925935, 29, 480000, NULL, '', ''),
(112, 39, 1000000, 0, 'VND', 0, 'I need to buy 20 sim phones to use for Yume100 advertising. \r\nI will use it to create facebook account for Yume100 advertising.', 3, 1, 'Price for one sim phone: 50.000 VND', 1537849695, 1537849695, 29, 1000000, NULL, '', ''),
(113, 67, 3300000, 0, 'VND', 0, 'Wall painting at new Office', 3, 1, 'Mural image: http://bit.ly/2xPMdmK', 1537925911, 1537925911, 29, 3300000, NULL, '', ''),
(114, 67, 8156000, 10, 'VND', 0, 'Buy new funitures for new Office', 3, 3, 'Items	                    Quantity	Unit Price	Price not included VAT       Unit: VNĐ\r\nMeeting room chairs	6	          430,000 	     2,580,000 \r\nMeeting room table	        1	       2,400,000              2,400,000 \r\nPantry chairs	                8	          182,000 	     1,456,000 \r\nPantry tables	                2	          860,000 	     1,720,000 \r\n\r\n                                 Total price (not included VAT)      8,156,000 \r\n                                                                  VAT	         815,600 \r\n                                                            Total price	      8,971,600 \r\n\r\n', 1537926610, 1538115657, 29, 8971600, NULL, '', ''),
(115, 67, 750000, 10, 'VND', 1, 'Order meeting room signs for new office', 4, 3, 'Material: Inox\r\nSize: 8.5x30 cm\r\nContent:\r\n1. SHIBUYA ROOM\r\n2. AKIHABARA ROOM\r\n3. NAMBA ROOM', 1537928071, 1538620734, 29, 825000, NULL, '', ''),
(116, 67, 905000, 10, 'VND', 1, 'Buy new wifi router (suggested buy Hien-san CTO)', 4, 1, 'Product Name: Totolink A3002RU AC 1200Mbps\r\nLink: http://bit.ly/2Rj7SfX\r\n', 1538538224, 1538657213, 29, 995500, NULL, '', ''),
(117, 67, 23300000, 10, 'VND', 1, 'Buy new MacBook for CTO', 4, 2, 'Macbook Pro Retina 13 inch 2015 MF840 Core i5 8GB 256GB Like new', 1538538408, 1538620712, 29, 25630000, NULL, '', ''),
(118, 67, 2024000, 0, 'VND', 1, 'Stick blur decal to glasses', 4, 1, 'Square: 25.3 m^2 \r\nUnit price: 80,000vnđ/m2\r\nTotal: 2,024,000vnđ.', 1538552906, 1538620706, 29, 2024000, NULL, '', ''),
(119, 31, 3500000, 0, 'VND', 1, 'こちらのバナーとストアでの紹介画像一覧がデザイン必要があります。\r\nhttps://docs.google.com/spreadsheets/d/1Z9MxsIILebyE4-liyUKmAkK-u8BTExxZtWllnZBQ20M/', 4, 3, '全22部の画像（バナー17部、ゲームアイコン2部、ストア紹介画像5部×2）\r\nを3-4日かかって350万VNDでやってくれるのですが。\r\n\r\n確認お願いします。', 1538560937, 1538620699, 29, 3500000, NULL, '', ''),
(120, 1, 150, 0, 'USD', 0, 'Based on request from Framgia on Chatwork\r\nhttps://www.chatwork.com/#!rid83159028-1101400070739197952\r\nThey request to increase level of game server to prepare for release.\r\nOur current plan is mentioned in below request:\r\nhttp://app.fujitechjsc.com/payment/view/100\r\nNew plan will be applied with amount in below request:\r\nhttps://calculator.s3.amazonaws.com/index.html#r=SIN&s=EC2&key=calc-9952C8E7-0F15-4E78-B833-B742CFB8A55D', 3, 2, 'This payment is monthly subscription and not include traffic\'s cost.\r\nThis will be charged directly on your credit card append with account noriko.kato@fujitechjsc.com on AWS ', 1539072381, 1539072381, 29, 150, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `summary`, `start_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fuji Internal Site', 'Internal website for company', 2018, 1, NULL, 1532412563, NULL),
(4, 'fuji', '2', 20, 0, 1533017263, 1533017374, 0),
(5, '1', '2', 31, 0, 1533017493, 1533017571, 0),
(6, '2', '2', 20, 0, 1533017602, 1533017616, 0),
(7, 'fuji', 'test', 20, 0, 1533017608, 1533017956, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `start_working_at` time NOT NULL,
  `end_working_at` time NOT NULL,
  `lunch_time` time DEFAULT NULL,
  `dinner_time` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `issue_date`, `start_working_at`, `end_working_at`, `lunch_time`, `dinner_time`, `break_time`, `total_hours`, `created_at`, `updated_at`, `user_id`, `detail`, `deleted_at`) VALUES
(16, '2018-08-01', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533118549, 1533118549, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Comments features on Payment \\/ Deploy\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(17, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533191712, 1533191717, 46, '[{\"project_name\":\"\\\"\\\"\",\"hours\":\"\\\"\\\"\",\"done\":\"\\\"\\\"\",\"todo\":\"\\\"\\\"\",\"issue\":\"\\\"\\\"\",\"note\":\"\\\"\\\"\"}]', 1533191717),
(18, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533204448, 1533204448, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"Implement notification features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"Weekly meeting with Framgia\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(19, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533204886, 1533204886, 35, '[{\"project_name\":\"Fuji site\",\"hours\":\"1\",\"done\":\"Update http:\\/\\/www.fujitechjsc.com\\/demo-vi\\/\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Treco\",\"hours\":\"3\",\"done\":\"Update special char issue\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(20, '2018-08-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533550871, 1533550871, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"Meeting for new future blockchain features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Prepare for next day inspector\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(21, '2018-08-03', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533550909, 1533550909, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Meeting room register features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(22, '2018-08-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533553302, 1534814502, 66, '[{\"project_name\":\"Winner\",\"hours\":\"4\",\"done\":\"L\\u00e0m y\\u00eau c\\u1ea7u m\\u1edbi\",\"todo\":\"\",\"issue\":\"\",\"note\":\"Ch\\u00fa \\u00fd\"},{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"H\\u1ecdp \",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1534814502),
(23, '2018-08-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533553364, 1533883025, 66, '[{\"project_name\":\"Winner\",\"hours\":\"4\",\"done\":\"Hop c\\u00f4ng t\\u00e1c\",\"todo\":\"todo gi day\",\"issue\":\"isssue gi day\",\"note\":\"note gi day\"},{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"H\\u1ecdp \",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(24, '2018-08-07', '09:00:00', '17:15:00', '01:15:00', NULL, NULL, '07:00:00', 1533637509, 1533637509, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"Meeting\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Meeting with goverment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"2\",\"done\":\"Meeting\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(25, '2018-08-08', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533723712, 1533723712, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"Prepare development environments and production enviroments\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Writing documents and prepare sales data to provide to goverment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(26, '2018-08-09', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533808991, 1533808991, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"1\",\"done\":\"Meeting and discuss about progress\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"5\",\"done\":\"Meeting and setup AWS server\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"1\",\"done\":\"Change website\'s footer as request from Mr.Ha\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(27, '2018-08-13', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534156450, 1534414404, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"Implement backend\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"2\",\"done\":\"Estimate\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(28, '2018-08-16', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414387, 1534414387, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4.5\",\"done\":\"Implement forgot API \\/ Supports\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"3\",\"done\":\"Meetings\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Interview\",\"hours\":\"0.5\",\"done\":\"Interview PHP candidate\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(29, '2018-08-14', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414422, 1534414422, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(30, '2018-08-15', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414434, 1534414434, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Working\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(31, '2018-08-17', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534501423, 1534501423, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"7\",\"done\":\"Implement backend API\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"1\",\"done\":\"Meeting with freelancers\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(32, '2018-08-20', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534934146, 1534934146, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(33, '2018-08-21', '08:00:00', '11:45:00', '00:00:00', NULL, NULL, '03:45:00', 1534934174, 1534934174, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(34, '2018-08-22', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534934184, 1534934184, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(35, '2018-08-23', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535019278, 1535019278, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(36, '2018-08-24', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535105801, 1535105801, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(37, '2018-08-27', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535365518, 1535365518, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(38, '2018-08-28', '10:00:00', '17:15:00', '01:15:00', NULL, NULL, '06:00:00', 1535451357, 1535451357, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(39, '2018-08-29', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535536229, 1535536229, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(40, '2018-08-30', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535624234, 1535624234, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(41, '2018-08-31', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535711051, 1535711051, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(42, '2018-09-04', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536057138, 1536057138, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(43, '2018-09-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536143543, 1536143543, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Zodiac Interview\",\"hours\":\"1\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(44, '2018-09-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536225918, 1536225918, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"7.25\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(45, '2018-09-07', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536320209, 1536320209, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(46, '2018-09-10', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536577162, 1536577173, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"interview\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(47, '2018-09-12', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536750176, 1536750176, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(48, '2018-09-13', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536834089, 1536834089, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(49, '2018-09-14', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536920382, 1536920382, 1, '[{\"project_name\":\"Interview\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"CUBE\",\"hours\":\"1\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(50, '2018-09-17', '08:00:00', '16:30:00', '01:15:00', NULL, NULL, '07:15:00', 1537176055, 1537176055, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"7.25\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(51, '2018-10-03', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538564095, 1538564095, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(52, '2018-10-04', '13:00:00', '17:15:00', '00:00:00', NULL, NULL, '04:15:00', 1538647930, 1538647930, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"2\",\"done\":\"Check server and support on landing page\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fujitech Platform\",\"hours\":\"2\",\"done\":\"Talk about GATE payment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(53, '2018-10-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538734903, 1538734903, 1, '[{\"project_name\":\"ERP\",\"hours\":\"4\",\"done\":\"Writing email function\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"Support on landing site\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Platform\",\"hours\":\"2\",\"done\":\"Try to fix this useless GATE payment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(54, '2018-10-08', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538993858, 1538993858, 1, '[{\"project_name\":\"ERP\",\"hours\":\"4\",\"done\":\"Implement backend\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"Meeting with Framgia\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` int(11) DEFAULT '1',
  `last_login` int(11) DEFAULT NULL,
  `login_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_from` date DEFAULT NULL,
  `phone_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `profile_fields` binary(1) DEFAULT NULL,
  `previous_login` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group`, `last_login`, `login_hash`, `display_name`, `start_from`, `phone_number`, `skype_id`, `address`, `dob`, `status`, `created_at`, `updated_at`, `profile_fields`, `previous_login`, `user_id`, `deleted_at`) VALUES
(1, 'long.pham2', 'long.pham2@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 9, 1539071902, 'dbebd99f9c7b124649ff3c72231f5ddbb4ca3755', 'Phạm Việt Long', NULL, '0904915863', 'sior666', NULL, '1988-10-09', 0, 1531465705, 1538126161, 0x61, '1532403521', 1, NULL),
(29, 'noriko.kato', 'noriko.kato@fujitechjsc.com', 'PtSwkkmZ5h61EiQCx4XfaBKCmQv++OxI/uz3zicvWGY=', 7, 1538656985, 'c6c02d9058302f668f4ee59065b406af0ec409e4', 'Noriko Kato', NULL, '01269 919 547', NULL, NULL, '1974-09-02', 0, 0, 1534730747, NULL, NULL, 29, NULL),
(30, 'thuy.vu', 'thuy.vu@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1533538527, '21ff9eed00b6a0b6f5ef751bff54f7cabf9e35e5', 'Vũ Ngọc Thúy', '2015-09-21', '0906 655 590', 'thuy.ngocvu', '48 Hàng Gà, Hoàn Kiếm, HN', '1990-04-05', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'kien.bui', 'kien.bui@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538619109, 'e885b3fd58c5ccbe658cfd55814ede313dcfa099', 'Bùi Hoàng Kiên', '2016-06-10', '01684074 469', 'aaasimov', '16, Ngách 72/82, Tôn Thất Tùng, Đống Đa, Hà Nội', '1994-11-20', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'hoang.le', 'hoang.le@fujitechjsc.com', 'CqmCTQzz1F720sqWAcwH5b7GRwucteRLZcepvTcGenQ=', 3, 1538477108, '93a99274cf7adbcd0dd79a511dd435b91a62d07d', 'Lê Nhật Hoàng', '2016-06-20', '01222223 689', 'noblechapter', 'Số 2, Ngách 47/4, Ngõ 47, Nguyên Hồng, Đống Đa, HN', '1994-04-23', 0, NULL, 1533112269, NULL, NULL, NULL, NULL),
(33, 'toan.nguyen', 'toan.nguyen@fujitechjsc.com', '5gP5m9dI5WRUkFZwRsbDvhh+f/pmQaAtiMeNZGD65vE=', 8, 1537490452, 'f84707f9fa7d9139c62d9f9dd68877e89ab084d2', 'Nguyễn Văn Toàn', '2016-07-11', '01672533 928', NULL, 'Gia Xuyên, Gia Lộc, Hải Dương', '1994-06-16', 0, NULL, 1533173703, NULL, NULL, NULL, NULL),
(34, 'diep.nguyen', 'nguyenhoaquynh211@gmail.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538545351, 'd6edfa88401b8940b8a95a8d476c2285a5ecee2c', 'Nguyễn Ngọc Diệp', '2017-04-24', '0916820 812', 'ngocdiep733', '3B, Bảo Khánh, Hàng Trống, Hoàn Kiếm, Hà Nội', '1990-12-11', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'long.pham', 'long.pham@fujitechjsc.com', 'n1IP0g8b4IkS9+m4LsFt/m907Yrix+NAlEqvWnqpwmQ=', 3, 1537261789, '8e13a6163e30047c726f41b575bce3b72a75ea6a', 'Phạm Quang Long', '2017-08-01', '0915688 563', 'zerokavn', '294 Lê Duẩn, Hà Nội (địa chỉ hộ khẩu)', '1984-10-24', 0, NULL, 1533112867, NULL, NULL, NULL, NULL),
(36, 'minh.pham', 'minh.pham@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Phạm Ngọc Minh', '2017-08-18', '0934224 123', 'minh.pham@fujitechjsc.com', 'p409 B16 tập thể Kim Liên, Đống Đa, Hà Nội', '1984-08-24', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'thuy.tran', 'thuy.tran@fujtechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 4, 1534987198, 'd57cf41f356e7186fd56e27a31fd695ca2ae3ebf', 'Trần Thị Thuý', '2017-10-13', '01205288 558', 'thuy.tran@fujtechjsc.com', '219 Nguyễn Ngọc Vũ, Trung Hoà, Cầu Giấy, Hà Nội', '1992-02-10', 0, 0, 1532405538, NULL, '1532404694', 37, NULL),
(38, 'trang.tran', 'trang.tran@fujitechjsc.com', 'Le5qwAX6XWFHLBZwxVjhwzUBToRchrFddB/BmQRjycU=', 3, 1537513975, '71e17e9324bb7028eaad0efd8e4697da455e118d', 'Trần Quỳnh Trang', NULL, '0986439 951', NULL, 'phúc thọ   mai lâm   đông anh   hà nội', '1993-05-09', 0, NULL, 1537513995, NULL, NULL, NULL, NULL),
(39, 'hieu.ta', 'hieu.ta@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538108029, 'c9374153cdaf5a37d64a503ac2ad54491b5c672e', 'Tạ Trung Hiếu', '2017-10-09', '01689605 206', NULL, '202c6 Khương Thượng   Đống Đa   Hà Nội', '1992-02-04', 0, NULL, 1533112958, NULL, NULL, NULL, NULL),
(41, 'uyen.tran', 'tranthanhuyen1995@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Trần Thanh Uyên', '2018-01-19', '01288239 888', NULL, '609 Truong Dinh, Hoang Mai, Ha Noi', '1995-01-17', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'misaki.dohi', 'misaki.dohi@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1538555677, '66de3b4ab357f6959dd4e133e94183887e6e519b', 'Misaki Dohi', '2018-02-21', '0969788 305', NULL, 'số 17, ngõ 39 Phạm Tuấn Tài, Cầu Giấy, Hà Nội', '1992-12-21', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'dien.tran', 'dien.tran@fujitechjsc.com', 'qmU1EJ7hHLXVcCPBVRS6+WwtQ9gE57bsWgGQX11X+xY=', 3, 1533105166, '6ecd6fcbebb50371fb5b3da8eee311638fd45b07', 'Trần Ngọc Diễn', '0004-09-18', '0981437 159', NULL, '22A, Đức Diễn, Phường Phúc Diễn, Quận Bắc Từ Liêm, Thành Phố Hà Nội', '1989-11-25', 0, NULL, 1533105210, NULL, NULL, NULL, NULL),
(44, 'khanh.vu', 'khanh.vu@fujitechjsc.com', 'ILgcDC99munUoujDrSFyzDJnwcH8AcS4yubj+UPLWBw=', 3, 1538477020, 'de322be2891e60d268672ed51a99ec789f83b169', 'Vũ Việt Khánh', '2018-06-20', '01638994 969', NULL, '22 ngo 44 Thai Thinh, Dong Da, Ha Noi', '1994-11-02', 0, NULL, 1533113083, NULL, NULL, NULL, NULL),
(45, 'hung.nghiem', 'hung.nghiem@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538639764, '88e45b79938ed1149b2806b95204949f7deda348', 'Nghiêm Dương Hưng', '2018-06-20', '0988020 189', NULL, NULL, '1989-02-01', 0, NULL, 1533110228, NULL, NULL, NULL, NULL),
(46, 'dam.le', 'dam.le@fujitechjsc.com', 'wDHxahNxzqCxevMO6mAXnSeOtj8MakomQI0XfnPQV1w=', 3, 1539308040, '0d3f7f0d674bab1dea8ddb8f4cc5ffbb3e073e40', 'Lê Xuân Đạm', '2018-06-25', '0918484 638', NULL, 'Linh Duong Street, Hoang Mai District, Ha Noi City', '1996-05-07', 0, 0, 1532411642, NULL, '1532411322', 46, NULL),
(47, 'anh.tran', 'anh.tran@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1539254025, '9f9eb5c919851f6e2ca651a733cfac262130d4ab', 'Trần Phan Anh', '2018-07-12', '01649609 913', '123', NULL, '1989-01-10', 0, NULL, 1537849420, NULL, NULL, NULL, NULL),
(48, 'lt.anh2904', 'lt.anh2904@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Lê Thuỳ Anh', '2017-12-07', '0974491 882', NULL, '112 Thuỵ Khuê, Tây Hồ, Hà Nội', '1994-11-29', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'hoang.la', 'lnhoang2010@gmail.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1537847494, 'e5b40a0a2d9e2ad4b1b0ef6913fc74208c1ad32d', 'Lã Nhật Hoàng', '2017-12-08', '0939899 100', NULL, 'Số 19 ngách 79/18, ngõ Thổ Quan, Khâm Thiên,Đống Đa, Hà Nội', '1995-10-20', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'linh.dinh', 'dinhdieulinh2610@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Đinh Diệu Linh', '2018-05-14', '0962137 809', NULL, NULL, '1997-10-26', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'viet.nguyen', 'viet.nguyen@fujitechjsc.com', 'GHF5MwQ0iPKfIKaMlRiMhJaS7LXHU/yyI3ADWp+9P24=', 3, 1533537238, 'ac5b599aea01075ed746699948f484ad06abf829', 'Nguyễn Tiến Việt', '2017-01-03', '0986901 110', 'tienvietnguyen1110', '90 Phùng Khoang, Nam Từ Liêm, Hà Nội', '1990-11-10', 0, NULL, 1533115168, NULL, NULL, NULL, NULL),
(53, 'thao.do', 'thao.do@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1537513462, '261a0b1b9be89f30711a5a6e27cb774a9178a79a', 'Đỗ Thị Phương Thảo', '2017-05-02', '0943539 986', 'phuongthao_dt86', 'yên mỹ, thanh trì, Hà Nội', '1986-12-18', 0, 0, 1533104809, NULL, '1532404532', 53, NULL),
(54, 'tram.do', 'tram.do@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 5, 1534817621, 'ac5482b285256e47ee1d8ce14516749acb7fd257', 'Đỗ Thị Ngọc Trâm', '1993-07-30', '01677484920', 'tramlph', 'ngõ 128, Hoàng Văn Thai, Đống Đa, Hà Nội', '2017-05-02', 0, 0, 1532403795, NULL, '1532339096', 54, NULL),
(55, 'tuan.le', 'tuan.le@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1538733170, 'c303d0d3eabb26d09b570f930cc72e7876700f0a', 'Lê Minh Tuấn', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'hung.nguyen', 'hung.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hung.nguyen', NULL, NULL, NULL, NULL, '2018-08-01', 1, NULL, NULL, NULL, NULL, NULL, 423021309),
(57, 'ha.ha', 'ha.ha@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'ha.ha', NULL, NULL, NULL, NULL, '2018-08-01', 1, NULL, NULL, NULL, '', NULL, 521023946),
(58, 'thuong.nguyen', 'thuong.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'thuong.nguyen', NULL, '', NULL, NULL, '1970-01-01', 1, NULL, NULL, NULL, '', NULL, 625011534),
(59, 'hoa.nguyen', 'hoa.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hoa.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1016015007),
(60, 'ha.nguyen', 'ha.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1533546780, 'a5c301a8a0f2c44f93238fdfd773603e9cc1402f', 'ha.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 123),
(61, 'hibi.yasuamasa', 'hibi.yasumasa@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hibi.yasuamasa', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1218013021),
(62, 'hieu.khong', 'hieu.khong@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hieu.khong', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 123),
(63, 'anh.nguyen', 'anh.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'anh.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100520),
(64, 'tuan.chu', 'tuan.chu@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'tuan.chu', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100548),
(65, 'thuynt', 'thuynt@fujitechjsc.com', 'VP1StYx4xqQkCg+QLS8pBmWcZeZx0ajt7pw3AQ3X4W8=', 3, 1534745333, '6d9018052b06be8a7862d06e76140c0ce353a29a', 'thuynt', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1534402484, NULL, NULL, NULL, NULL),
(66, 'admin', 'admin', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 9, 1538634093, '0691e048041774c0ffced5dde95d3c7110493329', 'admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100548),
(67, 'ngan.nguyen', 'ngan.nguyen$fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 9, 1538713051, '9fafe72939e84f3d97bd5cecafb2f4769c489c64', 'Nguyễn Thu Ngân', '2018-08-23', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'hien.tran', 'hien.tran@fujitechjsc.com', '8jn6e8ijRv5csvd652MgoUq8wIJG57C/S6ZK9dg9Id0=', 3, 1538114597, '38c57a8d501e7a0bc35b2e07bde618d2c14d62d3', 'Trần Hiện', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1537424948, NULL, NULL, NULL, NULL),
(69, 'hien.bui', 'hien.bui@fujitechjsc.com', 'J/8xcuYcV1Jidmho9LpSemDpPTwFVfhnmBg7GkWJB/s=', 3, 1539046821, '093caf894ebc17dbad113c80fbd23e7aaa9f76f0', 'Bùi Văn Hiến', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1538368482, NULL, NULL, NULL, NULL),
(70, 'trung.nguyen', 'trung.nguyen@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, NULL, NULL, 'Nguyễn Kim Trung', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `from_time` int(11) NOT NULL,
  `to_time` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `current_group_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `user_id`, `type`, `from_time`, `to_time`, `reasons`, `status`, `current_group_id`, `created_at`, `updated_at`, `assign_manager_id`, `deleted_at`) VALUES
(2, 31, 1, 1501462800, 1501496100, '', 4, 7, 1501458420, NULL, 29, NULL),
(3, 52, 1, 1491613860, 1491646500, '', 4, 7, 1501463580, NULL, 29, NULL),
(4, 35, 4, 1486533600, 1486548900, '', 4, 7, 1486524720, NULL, 29, NULL),
(5, 54, 1, 1501218000, 1501236900, '', 4, 7, 1486541940, NULL, 29, NULL),
(6, 63, 1, 1501462800, 1501497000, '', 4, 7, 1486542960, NULL, 29, NULL),
(7, 64, 1, 1488945600, 1488968100, '', 4, 7, 1488935880, NULL, 29, NULL),
(8, 54, 1, 1488961800, 1488968100, '', 4, 7, 1488956220, NULL, 29, NULL),
(9, 59, 1, 1501462800, 1499508900, '', 4, 7, 1502160660, NULL, 29, NULL),
(10, 60, 4, 1503277200, 1503468000, '', 4, 7, 1502161380, NULL, 29, NULL),
(11, 59, 4, 1504859400, 1504865700, '', 4, 7, 1504838160, NULL, 29, NULL),
(12, 52, 1, 1499475600, 1499489100, '', 4, 7, 1507428420, NULL, 29, NULL),
(13, 60, 4, 1502672400, 1502686800, '', 4, 7, 1502690280, NULL, 29, NULL),
(14, 54, 1, 1502758800, 1502766000, '', 4, 7, 1502754600, NULL, 29, NULL),
(15, 55, 1, 1507424400, 1510136100, '', 4, 7, 1503284760, NULL, 29, NULL),
(16, 55, 1, 1502672400, 1502705700, '', 4, 7, 1503284820, NULL, 29, NULL),
(17, 54, 1, 1500858000, 1500861600, '', 4, 7, 1503285660, NULL, 29, NULL),
(18, 54, 1, 1486515600, 1486522800, '', 4, 7, 1503285720, NULL, 29, NULL),
(19, 63, 1, 1500512400, 1500545700, '', 4, 7, 1503298380, NULL, 29, NULL),
(20, 38, 1, 1503381600, 1503396900, '', 4, 7, 1503369060, NULL, 29, NULL),
(21, 54, 1, 1503622800, 1503656100, '', 4, 7, 1503382200, NULL, 29, NULL),
(22, 38, 1, 1503450000, 1503483300, '', 4, 7, 1503452700, NULL, 29, NULL),
(23, 30, 1, 1503471600, 1503483300, '', 4, 7, 1503539700, NULL, 29, NULL),
(24, 38, 1, 1503549900, 1503569700, '', 4, 7, 1503546960, NULL, 29, NULL),
(25, 30, 1, 1503562500, 1503569700, '', 4, 7, 1503548940, NULL, 29, NULL),
(26, 60, 4, 1503882000, 1503894600, '', 4, 7, 1503898620, NULL, 29, NULL),
(27, 63, 1, 1503968400, 1503982800, '', 4, 7, 1503910920, NULL, 29, NULL),
(28, 57, 1, 1503910800, 1503915300, '', 4, 7, 1503968640, NULL, 29, NULL),
(29, 63, 1, 1504054800, 1504175400, '', 4, 7, 1503996900, NULL, 29, NULL),
(30, 36, 4, 1503968400, 1503959400, '', 4, 7, 1504072860, NULL, 29, NULL),
(31, 54, 1, 1503968400, 1503975600, '', 4, 7, 1504074540, NULL, 29, NULL),
(32, 54, 1, 1506301200, 1506508200, '', 4, 7, 1504074600, NULL, 29, NULL),
(33, 54, 1, 1504072800, 1504074600, '', 4, 7, 1504075560, NULL, 29, NULL),
(34, 30, 1, 1491700500, 1491732900, '', 4, 7, 1504145820, NULL, 29, NULL),
(35, 56, 1, 1494291600, 1494297000, '', 4, 7, 1489077900, NULL, 29, NULL),
(36, 56, 1, 1510189200, 1505385000, '', 4, 7, 1489077960, NULL, 29, NULL),
(37, 38, 1, 1491713100, 1491732900, '', 4, 7, 1491708840, NULL, 29, NULL),
(38, 54, 1, 1491717600, 1491732900, '', 4, 7, 1491715260, NULL, 29, NULL),
(39, 35, 4, 1494291600, 1494298800, '', 4, 7, 1491730920, NULL, 29, NULL),
(40, 59, 1, 1499580000, 1499595300, '', 4, 7, 1499564460, NULL, 29, NULL),
(41, 30, 1, 1499568360, 1499595300, '', 4, 7, 1499568420, NULL, 29, NULL),
(42, 35, 4, 1510189200, 1510198200, '', 4, 7, 1510219740, NULL, 29, NULL),
(43, 30, 1, 1505289600, 1505297700, '', 4, 7, 1505288760, NULL, 29, NULL),
(44, 54, 1, 1505295000, 1505297700, '', 4, 7, 1505289300, NULL, 29, NULL),
(45, 54, 1, 1505368800, 1505370600, '', 4, 7, 1505371800, NULL, 29, NULL),
(46, 38, 1, 1505368800, 1505374200, '', 4, 7, 1505375520, NULL, 29, NULL),
(47, 54, 1, 1505455200, 1505469600, '', 4, 7, 1505452860, NULL, 29, NULL),
(48, 54, 1, 1505350800, 1505470500, '', 4, 7, 1505702160, NULL, 29, NULL),
(49, 60, 1, 1505809800, 1505817000, '', 4, 7, 1505805600, NULL, 29, NULL),
(50, 54, 1, 1503622800, 1503626400, '', 4, 7, 1505963040, NULL, 29, NULL),
(51, 55, 1, 1503363600, 1503377100, '', 4, 7, 1505964660, NULL, 29, NULL),
(52, 52, 1, 1505869200, 1505882700, '', 4, 7, 1505966100, NULL, 29, NULL),
(53, 56, 1, 1505955600, 1505966400, '', 4, 7, 1505966340, NULL, 29, NULL),
(54, 36, 4, 1505870160, 1505956560, '', 4, 7, 1506043140, NULL, 29, NULL),
(55, 31, 1, 1506301200, 1506315600, '', 4, 7, 1506183600, NULL, 29, NULL),
(56, 30, 1, 1506312000, 1506314700, '', 4, 7, 1506307560, NULL, 29, NULL),
(57, 59, 1, 1506301200, 1506314700, '', 4, 7, 1506396960, NULL, 29, NULL),
(58, 52, 1, 1506474000, 1506507300, '', 4, 7, 1506412080, NULL, 29, NULL),
(59, 56, 1, 1506474000, 1506483000, '', 4, 7, 1506471840, NULL, 29, NULL),
(60, 59, 1, 1506664800, 1506680100, '', 4, 7, 1506570840, NULL, 29, NULL),
(61, 38, 1, 1506660300, 1506668400, '', 4, 7, 1506655200, NULL, 29, NULL),
(62, 60, 4, 1486688400, 1486702800, '', 4, 7, 1486708800, NULL, 29, NULL),
(63, 59, 1, 1489136400, 1489140900, '', 4, 7, 1489116180, NULL, 29, NULL),
(64, 30, 1, 1486688400, 1489140900, '', 4, 7, 1491799380, NULL, 29, NULL),
(65, 30, 1, 1491814800, 1491819300, '', 4, 7, 1491799440, NULL, 29, NULL),
(66, 54, 1, 1491798600, 1491805200, '', 4, 7, 1491805620, NULL, 29, NULL),
(67, 31, 1, 1497078000, 1497090600, '', 4, 7, 1494386400, NULL, 29, NULL),
(68, 54, 1, 1497083400, 1497089700, '', 4, 7, 1497057360, NULL, 29, NULL),
(69, 36, 4, 1497076200, 1497090600, '', 4, 7, 1505005980, NULL, 29, NULL),
(70, 36, 4, 1494397800, 1494412200, '', 4, 7, 1505006100, NULL, 29, NULL),
(71, 31, 1, 1505028600, 1505032200, '', 4, 7, 1505013420, NULL, 29, NULL),
(72, 60, 4, 1505005200, 1505026800, '', 4, 7, 1505028240, NULL, 29, NULL),
(73, 57, 1, 1510299420, 1510308900, '', 4, 7, 1510299420, NULL, 29, NULL),
(74, 57, 1, 1512867600, 1512900900, '', 4, 7, 1512867180, NULL, 29, NULL),
(75, 59, 1, 1507881600, 1507889700, '', 4, 7, 1512893040, NULL, 29, NULL),
(76, 60, 4, 1507870800, 1507890600, '', 4, 7, 1507856640, NULL, 29, NULL),
(77, 33, 1, 1507857600, 1507863000, '', 4, 7, 1507863060, NULL, 29, NULL),
(78, 57, 1, 1508115600, 1508129100, '', 4, 7, 1508114220, NULL, 29, NULL),
(79, 54, 1, 1508388300, 1508408100, '', 4, 7, 1508316360, NULL, 29, NULL),
(80, 52, 1, 1508202000, 1508209200, '', 4, 7, 1508379000, NULL, 29, NULL),
(81, 52, 1, 1508374800, 1508378400, '', 4, 7, 1508379000, NULL, 29, NULL),
(82, 56, 1, 1507597200, 1507599000, '', 4, 7, 1508400840, NULL, 29, NULL),
(83, 56, 1, 1506301200, 1506310200, '', 4, 7, 1508400840, NULL, 29, NULL),
(84, 56, 1, 1507856400, 1507858200, '', 4, 7, 1508401200, NULL, 29, NULL),
(85, 38, 1, 1491804000, 1491805800, '', 4, 7, 1508403120, NULL, 29, NULL),
(86, 38, 1, 1505005200, 1505008800, '', 4, 7, 1508403180, NULL, 29, NULL),
(87, 38, 1, 1508374800, 1508378400, '', 4, 7, 1508403240, NULL, 29, NULL),
(88, 36, 4, 1506474000, 1506477600, '', 4, 7, 1508404020, NULL, 29, NULL),
(89, 36, 4, 1505955600, 1505989800, '', 4, 7, 1508404200, NULL, 29, NULL),
(90, 30, 1, 1494378000, 1494385200, '', 4, 7, 1508405220, NULL, 29, NULL),
(91, 30, 1, 1508202000, 1508205600, '', 4, 7, 1508405280, NULL, 29, NULL),
(92, 60, 4, 1506560400, 1506564000, '', 4, 7, 1508405340, NULL, 29, NULL),
(93, 60, 4, 1506301200, 1506308400, '', 4, 7, 1508405580, NULL, 29, NULL),
(94, 52, 1, 1486699200, 1486701000, '', 4, 7, 1508463000, NULL, 29, NULL),
(95, 32, 4, 1505869200, 1505902500, '', 4, 7, 1508726340, NULL, 29, NULL),
(96, 32, 1, 1507863600, 1507874400, '', 4, 7, 1508726460, NULL, 29, NULL),
(97, 54, 1, 1508817600, 1508821200, '', 4, 7, 1508811600, NULL, 29, NULL),
(98, 33, 1, 1508893200, 1508926500, '', 4, 7, 1508812500, NULL, 29, NULL),
(99, 30, 1, 1508907600, 1508926500, '', 4, 7, 1508812620, NULL, 29, NULL),
(100, 38, 1, 1508911200, 1508914800, '', 4, 7, 1508902680, NULL, 29, NULL),
(101, 60, 4, 1509066000, 1509100200, '', 4, 7, 1508903100, NULL, 29, NULL),
(102, 35, 1, 1509066000, 1509100200, '', 4, 7, 1509003060, NULL, 29, NULL),
(103, 38, 1, 1509040800, 1509099300, '', 4, 7, 1509067200, NULL, 29, NULL),
(104, 60, 4, 1509325200, 1509336000, '', 4, 7, 1509356040, NULL, 29, NULL),
(105, 30, 1, 1509440400, 1509444900, '', 4, 7, 1509415740, NULL, 29, NULL),
(106, 30, 1, 1484110800, 1484129700, '', 4, 7, 1484096640, NULL, 29, NULL),
(107, 60, 4, 1484096400, 1484109000, '', 4, 7, 1484099460, NULL, 29, NULL),
(108, 36, 4, 1484096400, 1484110800, '', 4, 7, 1484113920, NULL, 29, NULL),
(109, 38, 1, 1486800000, 1486808100, '', 4, 7, 1486796760, NULL, 29, NULL),
(110, 30, 1, 1486774800, 1486808100, '', 4, 7, 1489197180, NULL, 29, NULL),
(111, 36, 4, 1489194000, 1489201200, '', 4, 7, 1489220460, NULL, 29, NULL),
(112, 62, 4, 1510534800, 1510569000, '', 4, 7, 1497143760, NULL, 29, NULL),
(113, 35, 3, 1489194000, 1489228200, '', 4, 7, 1497165780, NULL, 29, NULL),
(114, 38, 1, 1499756760, 1499768100, '', 4, 7, 1499756820, NULL, 29, NULL),
(115, 30, 1, 1502424000, 1502426700, '', 4, 7, 1502421900, NULL, 29, NULL),
(116, 36, 4, 1499734800, 1502431200, '', 4, 7, 1502434440, NULL, 29, NULL),
(117, 30, 1, 1505091600, 1505096700, '', 4, 7, 1505096820, NULL, 29, NULL),
(118, 35, 4, 1507683600, 1507698000, '', 4, 7, 1505124960, NULL, 29, NULL),
(119, 54, 1, 1507683600, 1507685700, '', 4, 7, 1507686720, NULL, 29, NULL),
(120, 52, 1, 1502413200, 1505124900, '', 4, 7, 1507714020, NULL, 29, NULL),
(121, 52, 1, 1510534800, 1510548300, '', 4, 7, 1510623420, NULL, 29, NULL),
(122, 36, 4, 1510707600, 1510719600, '', 4, 7, 1510720260, NULL, 29, NULL),
(123, 54, 1, 1510719600, 1510729200, '', 4, 7, 1510730160, NULL, 29, NULL),
(124, 54, 1, 1510905600, 1510913700, '', 4, 7, 1510887960, NULL, 29, NULL),
(125, 57, 1, 1507714200, 1507716900, '', 4, 7, 1511147400, NULL, 29, NULL),
(126, 36, 4, 1508751000, 1508753700, '', 4, 7, 1511151180, NULL, 29, NULL),
(127, 36, 4, 1508920200, 1508926500, '', 4, 7, 1511151240, NULL, 29, NULL),
(128, 30, 1, 1511157600, 1511172900, '', 4, 7, 1511152800, NULL, 29, NULL),
(129, 54, 1, 1510621200, 1510624800, '', 4, 7, 1511152920, NULL, 29, NULL),
(130, 54, 1, 1510534800, 1510549200, '', 4, 7, 1511153040, NULL, 29, NULL),
(131, 34, 1, 1508461200, 1508464800, '', 4, 7, 1511153160, NULL, 29, NULL),
(132, 38, 1, 1509325200, 1509328800, '', 4, 7, 1511153280, NULL, 29, NULL),
(133, 38, 1, 1502413200, 1502446500, '', 4, 7, 1511153340, NULL, 29, NULL),
(134, 34, 1, 1486805700, 1486808100, '', 4, 7, 1511153340, NULL, 29, NULL),
(135, 38, 1, 1511139600, 1511143200, '', 4, 7, 1511153400, NULL, 29, NULL),
(136, 38, 1, 1511157600, 1511161200, '', 4, 7, 1511153460, NULL, 29, NULL),
(137, 34, 1, 1502413200, 1502415000, '', 4, 7, 1511153700, NULL, 29, NULL),
(138, 32, 4, 1511139600, 1511153100, '', 4, 7, 1511158200, NULL, 29, NULL),
(139, 32, 4, 1489194000, 1489207500, '', 4, 7, 1511158320, NULL, 29, NULL),
(140, 35, 1, 1511170200, 1511172900, '', 4, 7, 1511164680, NULL, 29, NULL),
(141, 54, 1, 1511244000, 1511258400, '', 4, 7, 1511235360, NULL, 29, NULL),
(142, 54, 1, 1511226000, 1511229600, '', 4, 7, 1511241540, NULL, 29, NULL),
(143, 62, 4, 1511330400, 1511334000, '', 4, 7, 1511250000, NULL, 29, NULL),
(144, 62, 3, 1509012000, 1509012900, '', 4, 7, 1511250120, NULL, 29, NULL),
(145, 52, 1, 1511744400, 1511777700, '', 4, 7, 1511407620, NULL, 29, NULL),
(146, 54, 1, 1511848800, 1511850600, '', 4, 7, 1511851860, NULL, 29, NULL),
(147, 30, 1, 1511935200, 1511950500, '', 4, 7, 1511934540, NULL, 29, NULL),
(148, 57, 1, 1484182800, 1484200800, '', 4, 7, 1512003720, NULL, 29, NULL),
(149, 36, 4, 1499821200, 1499839200, '', 4, 7, 1491969360, NULL, 29, NULL),
(150, 56, 1, 1513558800, 1513593000, '', 4, 7, 1491969720, NULL, 29, NULL),
(151, 35, 1, 1497229200, 1497232800, '', 4, 7, 1499860380, NULL, 29, NULL),
(152, 1, 4, 1502517600, 1502533800, '', 4, 7, 1502507700, NULL, 29, NULL),
(153, 36, 4, 1513065600, 1513073700, '', 4, 7, 1513062180, NULL, 29, NULL),
(154, 1, 4, 1513040400, 1513053900, '', 4, 7, 1513214580, NULL, 29, NULL),
(155, 54, 1, 1513313100, 1513332900, '', 4, 7, 1513560240, NULL, 29, NULL),
(156, 54, 1, 1502526600, 1502532900, '', 4, 7, 1513560420, NULL, 29, NULL),
(157, 54, 1, 1513572300, 1513592100, '', 4, 7, 1513560540, NULL, 29, NULL),
(158, 36, 4, 1513144800, 1513152900, '', 4, 7, 1513580160, NULL, 29, NULL),
(159, 36, 4, 1513321200, 1513332900, '', 4, 7, 1513580280, NULL, 29, NULL),
(160, 57, 1, 1513587600, 1513592100, '', 4, 7, 1513586580, NULL, 29, NULL),
(161, 62, 3, 1513924200, 1513937700, '', 4, 7, 1513647780, NULL, 29, NULL),
(162, 62, 3, 1513329300, 1513332900, '', 4, 7, 1513647900, NULL, 29, NULL),
(163, 38, 1, 1510448400, 1510481700, '', 4, 7, 1513654260, NULL, 29, NULL),
(164, 38, 1, 1497229200, 1497232800, '', 4, 7, 1513654320, NULL, 29, NULL),
(165, 38, 1, 1511771400, 1511777700, '', 4, 7, 1513654380, NULL, 29, NULL),
(166, 33, 1, 1513558800, 1513592100, '', 4, 7, 1513654620, NULL, 29, NULL),
(167, 55, 1, 1513040400, 1513073700, '', 4, 7, 1513656240, NULL, 29, NULL),
(168, 55, 1, 1513126800, 1513160100, '', 4, 7, 1513656300, NULL, 29, NULL),
(169, 54, 1, 1511503200, 1511517600, '', 4, 7, 1513675920, NULL, 29, NULL),
(170, 54, 1, 1510448400, 1510452000, '', 4, 7, 1513676100, NULL, 29, NULL),
(171, 54, 1, 1513645200, 1513648800, '', 4, 7, 1513676160, NULL, 29, NULL),
(172, 54, 1, 1511744400, 1511776800, '', 4, 7, 1513676460, NULL, 29, NULL),
(173, 30, 1, 1513731600, 1513764900, '', 4, 7, 1513828140, NULL, 29, NULL),
(174, 39, 1, 1510466400, 1510481700, '', 4, 7, 1513837800, NULL, 29, NULL),
(175, 1, 4, 1513922400, 1513936800, '', 4, 7, 1513848180, NULL, 29, NULL),
(176, 35, 1, 1513645200, 1513677600, '', 4, 7, 1513908300, NULL, 29, NULL),
(177, 35, 1, 1513818000, 1513850400, '', 4, 7, 1513908300, NULL, 29, NULL),
(178, 30, 1, 1514190000, 1514196900, '', 4, 7, 1514190060, NULL, 29, NULL),
(179, 1, 4, 1514275200, 1514283300, '', 4, 7, 1514260320, NULL, 29, NULL),
(180, 52, 1, 1514336400, 1514349900, '', 4, 7, 1514339700, NULL, 29, NULL),
(181, 52, 1, 1514422800, 1514436300, '', 4, 7, 1514339700, NULL, 29, NULL),
(182, 35, 1, 1514163600, 1514196900, '', 4, 7, 1514340000, NULL, 29, NULL),
(183, 35, 1, 1514250000, 1514283300, '', 4, 7, 1514340060, NULL, 29, NULL),
(184, 35, 1, 1514422800, 1514456100, '', 4, 7, 1514534100, NULL, 29, NULL),
(185, 30, 1, 1514527200, 1514532600, '', 4, 7, 1514534820, NULL, 29, NULL),
(186, 30, 1, 1517455800, 1517480100, '', 4, 7, 1517447760, NULL, 29, NULL),
(187, 62, 3, 1525136400, 1525170600, '', 4, 7, 1517448900, NULL, 29, NULL),
(188, 35, 1, 1525136400, 1525169700, '', 4, 7, 1522576500, NULL, 29, NULL),
(189, 52, 1, 1517446800, 1517480100, '', 4, 7, 1533086340, NULL, 29, NULL),
(190, 52, 1, 1514509200, 1514516400, '', 4, 7, 1533086400, NULL, 29, NULL),
(191, 36, 4, 1519866000, 1519873200, '', 4, 7, 1533121260, NULL, 29, NULL),
(192, 36, 4, 1525136400, 1525139100, '', 4, 7, 1533121320, NULL, 29, NULL),
(193, 36, 4, 1533085200, 1533088800, '', 4, 7, 1533121380, NULL, 29, NULL),
(194, 54, 1, 1535781600, 1535783400, '', 4, 7, 1541035440, NULL, 29, NULL),
(195, 1, 4, 1535763600, 1535777100, '', 4, 7, 1541035560, NULL, 29, NULL),
(196, 1, 4, 1538355600, 1541067300, '', 4, 7, 1541035620, NULL, 29, NULL),
(197, 34, 1, 1543626000, 1543628760, '', 4, 7, 1543632660, NULL, 29, NULL),
(198, 35, 1, 1516093200, 1516097700, '', 4, 7, 1516085280, NULL, 29, NULL),
(199, 52, 1, 1516237200, 1516250700, '', 4, 7, 1516095840, NULL, 29, NULL),
(200, 34, 1, 1516150800, 1516152360, '', 4, 7, 1516183320, NULL, 29, NULL),
(201, 34, 1, 1516237200, 1516241340, '', 4, 7, 1516242720, NULL, 29, NULL),
(202, 36, 4, 1516150800, 1516156200, '', 4, 7, 1516243080, NULL, 29, NULL),
(203, 54, 1, 1515978000, 1515992400, '', 4, 7, 1516326420, NULL, 29, NULL),
(204, 54, 1, 1543626000, 1543631400, '', 4, 7, 1516326480, NULL, 29, NULL),
(205, 54, 1, 1525136400, 1525140000, '', 4, 7, 1516326540, NULL, 29, NULL),
(206, 55, 1, 1516077000, 1516097700, '', 4, 7, 1516330380, NULL, 29, NULL),
(207, 1, 4, 1516237200, 1516250700, '', 4, 7, 1516337160, NULL, 29, NULL),
(208, 39, 1, 1514163600, 1514196900, '', 4, 7, 1516595220, NULL, 29, NULL),
(209, 34, 1, 1513818000, 1513821600, '', 4, 7, 1516595280, NULL, 29, NULL),
(210, 38, 1, 1513904400, 1513908000, '', 4, 7, 1516595340, NULL, 29, NULL),
(211, 38, 1, 1513922400, 1513924200, '', 4, 7, 1516595400, NULL, 29, NULL),
(212, 38, 1, 1519866000, 1519867800, '', 4, 7, 1516595460, NULL, 29, NULL),
(213, 32, 3, 1533085200, 1533118500, '', 4, 7, 1516595460, NULL, 29, NULL),
(214, 38, 1, 1533085200, 1533087000, '', 4, 7, 1516595460, NULL, 29, NULL),
(215, 38, 1, 1543626000, 1543640400, '', 4, 7, 1516595520, NULL, 29, NULL),
(216, 38, 1, 1515978000, 1516013100, '', 4, 7, 1516595580, NULL, 29, NULL),
(217, 38, 1, 1516246200, 1516358700, '', 4, 7, 1516595700, NULL, 29, NULL),
(218, 30, 1, 1538355600, 1516616100, '', 4, 7, 1516596060, NULL, 29, NULL),
(219, 30, 1, 1516150800, 1516153500, '', 4, 7, 1516596120, NULL, 29, NULL),
(220, 52, 1, 1516755600, 1516788900, '', 4, 7, 1516690620, NULL, 29, NULL),
(221, 52, 1, 1516842000, 1516875300, '', 4, 7, 1516690620, NULL, 29, NULL),
(222, 54, 1, 1516755600, 1516760100, '', 4, 7, 1516760400, NULL, 29, NULL),
(223, 56, 5, 1516842000, 1516875300, '', 4, 7, 1516776900, NULL, 29, NULL),
(224, 56, 5, 1516755600, 1516788900, '', 4, 7, 1516776900, NULL, 29, NULL),
(225, 34, 1, 1516872600, 1516875300, '', 4, 7, 1516841820, NULL, 29, NULL),
(226, 36, 4, 1516842000, 1516937400, '', 4, 7, 1517194980, NULL, 29, NULL),
(227, 30, 1, 1517360400, 1517393700, '', 4, 7, 1517282940, NULL, 29, NULL),
(228, 54, 1, 1517299200, 1517307300, '', 4, 7, 1517284740, NULL, 29, NULL),
(229, 1, 4, 1517299200, 1517307300, '', 4, 7, 1517298840, NULL, 29, NULL),
(230, 36, 4, 1517360400, 1517363400, '', 4, 7, 1517364000, NULL, 29, NULL),
(231, 34, 1, 1517360400, 1517365500, '', 4, 7, 1517366280, NULL, 29, NULL),
(232, 1, 4, 1517389200, 1517393700, '', 4, 7, 1517388540, NULL, 29, NULL),
(233, 35, 1, 1517360400, 1517393700, '', 4, 7, 1514887320, NULL, 29, NULL),
(234, 35, 1, 1514854800, 1514858400, '', 4, 7, 1514887380, NULL, 29, NULL),
(235, 54, 1, 1514854800, 1514888100, '', 4, 7, 1517536440, NULL, 29, NULL),
(236, 33, 1, 1525222800, 1525256100, '', 4, 7, 1522645320, NULL, 29, NULL),
(237, 1, 4, 1527901200, 1527914700, '', 4, 7, 1527920400, NULL, 29, NULL),
(238, 30, 1, 1530522900, 1530526500, '', 4, 7, 1530498120, NULL, 29, NULL),
(239, 54, 1, 1530493200, 1530507600, '', 4, 7, 1530510240, NULL, 29, NULL),
(240, 35, 1, 1530493200, 1530496800, '', 4, 7, 1530523860, NULL, 29, NULL),
(241, 34, 1, 1527901200, 1533204900, '', 4, 7, 1533178860, NULL, 29, NULL),
(242, 1, 4, 1530493200, 1530506700, '', 4, 7, 1533179220, NULL, 29, NULL),
(243, 1, 4, 1533171600, 1533175200, '', 4, 7, 1533179280, NULL, 29, NULL),
(244, 54, 1, 1535850000, 1535864400, '', 4, 7, 1533195360, NULL, 29, NULL),
(245, 35, 1, 1535850000, 1535856300, '', 4, 7, 1535857140, NULL, 29, NULL),
(246, 31, 1, 1518483600, 1518517800, '', 4, 7, 1535862300, NULL, 29, NULL),
(247, 54, 1, 1535868000, 1535871600, '', 4, 7, 1535872320, NULL, 29, NULL),
(248, 34, 1, 1535850000, 1535863500, '', 4, 7, 1543714920, NULL, 29, NULL),
(249, 33, 1, 1518483600, 1518516900, '', 4, 7, 1543734240, NULL, 29, NULL),
(250, 35, 1, 1543712400, 1543718700, '', 4, 7, 1543745220, NULL, 29, NULL),
(251, 54, 1, 1518501600, 1518505200, '', 4, 7, 1518486840, NULL, 29, NULL),
(252, 37, 1, 1517390100, 1517393700, '', 4, 7, 1518503940, NULL, 29, NULL),
(253, 37, 1, 1517560200, 1517566500, '', 4, 7, 1518503940, NULL, 29, NULL),
(254, 56, 5, 1527919200, 1527934500, '', 4, 7, 1518507900, NULL, 29, NULL),
(255, 56, 5, 1533189600, 1533204900, '', 4, 7, 1518508260, NULL, 29, NULL),
(256, 38, 1, 1517274000, 1517275800, '', 4, 7, 1519179420, NULL, 29, NULL),
(257, 38, 1, 1517275800, 1517277600, '', 4, 7, 1519179480, NULL, 29, NULL),
(258, 38, 1, 1525222800, 1525256100, '', 4, 7, 1519179540, NULL, 29, NULL),
(259, 38, 1, 1530493200, 1530495000, '', 4, 7, 1519179600, NULL, 29, NULL),
(260, 38, 1, 1533171600, 1533204900, '', 4, 7, 1519179660, NULL, 29, NULL),
(261, 38, 1, 1535850000, 1535853600, '', 4, 7, 1519179720, NULL, 29, NULL),
(262, 1, 4, 1519174800, 1519178400, '', 4, 7, 1519180800, NULL, 29, NULL),
(263, 39, 1, 1525222800, 1525240800, '', 4, 7, 1519182240, NULL, 29, NULL),
(264, 52, 1, 1516600800, 1516602600, '', 4, 7, 1519182540, NULL, 29, NULL),
(265, 52, 1, 1516928400, 1516935600, '', 4, 7, 1519182600, NULL, 29, NULL),
(266, 52, 1, 1517187600, 1517220900, '', 4, 7, 1519182660, NULL, 29, NULL),
(267, 52, 1, 1517274000, 1517287500, '', 4, 7, 1519182720, NULL, 29, NULL),
(268, 52, 1, 1525240800, 1525242600, '', 4, 7, 1519182720, NULL, 29, NULL),
(269, 32, 3, 1525222800, 1525240800, '', 4, 7, 1519184700, NULL, 29, NULL),
(270, 54, 1, 1517274000, 1517277600, '', 4, 7, 1519184760, NULL, 29, NULL),
(271, 54, 1, 1517557500, 1517566500, '', 4, 7, 1519185000, NULL, 29, NULL),
(272, 56, 1, 1519347600, 1519380900, '', 4, 7, 1519261320, NULL, 29, NULL),
(273, 35, 1, 1519347600, 1519351200, '', 4, 7, 1519358100, NULL, 29, NULL),
(274, 35, 1, 1519376400, 1519380900, '', 4, 7, 1519358160, NULL, 29, NULL),
(275, 54, 1, 1519354800, 1519367280, '', 4, 7, 1519367340, NULL, 29, NULL),
(276, 34, 1, 1519693200, 1519700400, '', 4, 7, 1519376460, NULL, 29, NULL),
(277, 37, 1, 1519354800, 1519367400, '', 4, 7, 1519698300, NULL, 29, NULL),
(278, 37, 1, 1519606800, 1519639200, '', 4, 7, 1519698480, NULL, 29, NULL),
(279, 35, 4, 1519693200, 1519696800, '', 4, 7, 1519812900, NULL, 29, NULL),
(280, 36, 4, 1517646600, 1517652900, '', 4, 7, 1517628900, NULL, 29, NULL),
(281, 54, 1, 1530597600, 1530612900, '', 4, 7, 1527993540, NULL, 29, NULL),
(282, 56, 5, 1530579600, 1530612900, '', 4, 7, 1528018740, NULL, 29, NULL),
(283, 35, 1, 1530609300, 1530612900, '', 4, 7, 1533262140, NULL, 29, NULL),
(284, 1, 4, 1533276000, 1533291300, '', 4, 7, 1533263340, NULL, 29, NULL),
(285, 35, 1, 1533289500, 1533291300, '', 4, 7, 1533286980, NULL, 29, NULL),
(286, 36, 4, 1535963400, 1535969700, '', 4, 7, 1535941680, NULL, 29, NULL),
(287, 35, 1, 1535967900, 1535969700, '', 4, 7, 1535966820, NULL, 29, NULL),
(288, 36, 4, 1543798800, 1543802400, '', 4, 7, 1543805280, NULL, 29, NULL),
(289, 54, 1, 1543798800, 1543813200, '', 4, 7, 1543815600, NULL, 29, NULL),
(290, 1, 4, 1521093600, 1521108900, '', 4, 7, 1521076860, NULL, 29, NULL),
(291, 36, 4, 1520989200, 1521022500, '', 4, 7, 1521077100, NULL, 29, NULL),
(292, 1, 4, 1521162000, 1521175500, '', 4, 7, 1521196920, NULL, 29, NULL),
(293, 32, 3, 1543798800, 1543832100, '', 2, 5, 1521421200, NULL, 54, NULL),
(294, 38, 1, 1519693200, 1519695000, '', 2, 5, 1521426480, NULL, 54, NULL),
(295, 38, 1, 1520998200, 1521002700, '', 2, 5, 1521426600, NULL, 54, NULL),
(296, 38, 1, 1521093600, 1521097200, '', 1, 4, 1521426720, NULL, 30, NULL),
(297, 52, 1, 1519261200, 1519264800, '', 4, 7, 1521427380, NULL, 29, NULL),
(298, 52, 1, 1520902800, 1521424800, '', 4, 7, 1521427440, NULL, 29, NULL),
(299, 52, 1, 1521075600, 1521079200, '', 4, 7, 1521427440, NULL, 29, NULL),
(300, 33, 1, 1521612900, 1521627300, '', 2, 5, 1521600300, NULL, 54, NULL),
(301, 54, 1, 1517651100, 1517652900, '', 2, 5, 1521601140, NULL, 54, NULL),
(302, 54, 1, 1520920800, 1520936100, '', 2, 5, 1521601200, NULL, 54, NULL),
(303, 54, 1, 1521075600, 1521079200, '', 2, 5, 1521601260, NULL, 54, NULL),
(304, 58, 3, 1522026000, 1522060200, '', 2, 5, 1521606960, NULL, 54, NULL),
(305, 36, 4, 1521594000, 1521613800, '', 2, 5, 1521614160, NULL, 54, NULL),
(306, 35, 1, 1521606000, 1521615600, '', 2, 5, 1521614940, NULL, 54, NULL),
(307, 1, 4, 1521680400, 1521689400, '', 2, 5, 1521690900, NULL, 54, NULL),
(308, 35, 1, 1521766800, 1521774000, '', 2, 5, 1521704460, NULL, 54, NULL),
(309, 33, 1, 1521766800, 1521781200, '', 2, 5, 1521727740, NULL, 54, NULL),
(310, 38, 1, 1522026000, 1522059300, '', 1, 4, 1521989460, NULL, 30, NULL),
(311, 37, 1, 1522050600, 1522059300, '', 4, 7, 1522119840, NULL, 29, NULL),
(312, 1, 4, 1522112400, 1522125900, '', 4, 7, 1522131660, NULL, 29, NULL),
(313, 32, 3, 1522026000, 1522059300, '', 1, 4, 1522147320, NULL, 30, NULL),
(314, 1, 4, 1522227600, 1522232100, '', 4, 7, 1522227540, NULL, 29, NULL),
(315, 1, 5, 1522315800, 1522318500, '', 4, 7, 1522315500, NULL, 29, NULL),
(316, 56, 1, 1522389600, 1522393200, '', 4, 7, 1522392840, NULL, 29, NULL),
(317, 34, 1, 1522285200, 1522287000, '', 1, 4, 1515021120, NULL, 30, NULL),
(318, 1, 4, 1517706000, 1517719500, '', 4, 7, 1517725200, NULL, 29, NULL),
(319, 52, 1, 1522803600, 1522836900, '', 4, 7, 1520126940, NULL, 29, NULL),
(320, 34, 1, 1520125200, 1520129700, '', 1, 4, 1520147040, NULL, 30, NULL),
(321, 35, 1, 1525426200, 1525421700, '', 2, 5, 1525421760, NULL, 54, NULL),
(322, 54, 1, 1525426200, 1525428900, '', 4, 7, 1525425660, NULL, 29, NULL),
(323, 37, 1, 1525426200, 1525428900, '', 2, 5, 1525425720, NULL, 54, NULL),
(324, 54, 1, 1528092000, 1528095060, '', 4, 7, 1528095060, NULL, 29, NULL),
(325, 56, 1, 1538641800, 1538648100, '', 4, 7, 1538615760, NULL, 29, NULL),
(326, 1, 4, 1538640000, 1538648100, '', 2, 5, 1538639700, NULL, 54, NULL),
(327, 54, 1, 1541322900, 1541326500, '', 4, 7, 1541318700, NULL, 29, NULL),
(328, 36, 4, 1543885200, 1543890600, '', 2, 5, 1543893780, NULL, 54, NULL),
(329, 33, 1, 1523581200, 1523594700, '', 2, 5, 1543911960, NULL, 54, NULL),
(330, 32, 4, 1523581200, 1523594700, '', 2, 5, 1523616300, NULL, 54, NULL),
(331, 54, 1, 1524031200, 1524046500, '', 4, 7, 1523842320, NULL, 29, NULL),
(332, 37, 1, 1523840400, 1523843100, '', 4, 7, 1523843700, NULL, 29, NULL),
(333, 36, 4, 1523870700, 1523873700, '', 4, 7, 1523870700, NULL, 29, NULL),
(334, 58, 4, 1536022800, 1536057000, '', 4, 7, 1523936400, NULL, 29, NULL),
(335, 1, 4, 1524034800, 1524040200, '', 4, 7, 1523949420, NULL, 29, NULL),
(336, 34, 1, 1524099600, 1524132900, '', 4, 7, 1524021780, NULL, 29, NULL),
(337, 38, 1, 1521513000, 1521514800, '', 2, 5, 1524104040, NULL, 54, NULL),
(338, 38, 1, 1522285200, 1522290600, '', 2, 5, 1524104160, NULL, 54, NULL),
(339, 39, 1, 1517706000, 1517739300, '', 2, 5, 1524104400, NULL, 54, NULL),
(340, 54, 1, 1517706000, 1517739300, '', 2, 5, 1524108240, NULL, 54, NULL),
(341, 54, 1, 1520133300, 1520138700, '', 2, 5, 1524108420, NULL, 54, NULL),
(342, 38, 1, 1524123000, 1524132900, '', 1, 4, 1524121380, NULL, 30, NULL),
(343, 35, 1, 1524216600, 1524219300, '', 2, 5, 1524212760, NULL, 54, NULL),
(344, 54, 1, 1524445200, 1524448800, '', 2, 5, 1524449520, NULL, 54, NULL),
(345, 35, 1, 1524735000, 1524737700, '', 2, 5, 1524726000, NULL, 54, NULL),
(346, 36, 4, 1524704400, 1524708900, '', 2, 5, 1524730440, NULL, 54, NULL),
(347, 1, 1, 1517792400, 1517825700, '', 2, 5, 1520244360, NULL, 54, NULL),
(348, 36, 4, 1538701200, 1538735400, '', 2, 5, 1533443100, NULL, 54, NULL),
(349, 1, 1, 1533430800, 1533444300, '', 2, 5, 1533452940, NULL, 54, NULL),
(350, 54, 1, 1538701200, 1538715600, '', 2, 5, 1536110820, NULL, 54, NULL),
(351, 1, 1, 1541379600, 1541386800, '', 2, 5, 1541388180, NULL, 54, NULL),
(352, 35, 1, 1526376600, 1526379300, '', 2, 5, 1526349840, NULL, 54, NULL),
(353, 54, 1, 1526371200, 1526379300, '', 2, 5, 1526368020, NULL, 54, NULL),
(354, 36, 4, 1526461200, 1526465700, '', 2, 5, 1526444820, NULL, 54, NULL),
(355, 55, 1, 1526629500, 1526633100, '', 2, 5, 1526606520, NULL, 54, NULL),
(356, 52, 1, 1526605200, 1526630400, '', 2, 5, 1526625180, 1533537676, 54, NULL),
(357, 54, 1, 1526623200, 1526625000, '', 2, 5, 1526636520, NULL, 54, NULL),
(358, 54, 1, 1527469200, 1527588900, '', 2, 5, 1526878260, NULL, 54, NULL),
(359, 34, 1, 1526895000, 1526897700, '', 2, 5, 1526893860, NULL, 54, NULL),
(360, 37, 1, 1526623200, 1526625000, '', 2, 5, 1526896500, NULL, 54, NULL),
(361, 39, 1, 1526364000, 1526371200, '', 2, 5, 1526956080, NULL, 54, NULL),
(362, 1, 1, 1526432400, 1526445900, '', 2, 5, 1526959080, NULL, 54, NULL),
(363, 58, 1, 1526518800, 1526553000, '', 2, 5, 1526959500, NULL, 54, NULL),
(364, 58, 1, 1526432400, 1526446800, '', 2, 5, 1526959620, NULL, 54, NULL),
(365, 54, 1, 1526605200, 1526608800, '', 2, 5, 1526970480, NULL, 54, NULL),
(366, 35, 1, 1524790800, 1524824100, '', 2, 5, 1526971860, NULL, 54, NULL),
(367, 35, 1, 1517823000, 1517825700, '', 2, 5, 1526971860, NULL, 54, NULL),
(368, 54, 1, 1524618000, 1524651300, '', 2, 5, 1526972880, NULL, 54, NULL),
(369, 36, 4, 1524812400, 1524816000, '', 2, 5, 1526974320, NULL, 54, NULL),
(370, 36, 4, 1526529600, 1526540400, '', 2, 5, 1526974380, NULL, 54, NULL),
(371, 54, 1, 1520229600, 1520244900, '', 2, 5, 1526974860, NULL, 54, NULL),
(372, 58, 1, 1533437100, 1533444300, '', 2, 5, 1526975160, NULL, 54, NULL),
(373, 1, 1, 1524456000, 1524458700, '', 2, 5, 1526975880, NULL, 54, NULL),
(374, 1, 1, 1524790800, 1527390000, '', 2, 5, 1526976060, NULL, 54, NULL),
(375, 1, 1, 1526605200, 1526609400, '', 2, 5, 1526976120, NULL, 54, NULL),
(376, 52, 1, 1530752400, 1530785700, '', 2, 5, 1527037920, 1533537716, 54, NULL),
(377, 52, 1, 1526864400, 1526868000, '', 2, 5, 1527037980, NULL, 54, NULL),
(378, 52, 1, 1527141600, 1527243300, '', 2, 5, 1527037980, 1533537672, 54, NULL),
(379, 38, 1, 1524704400, 1524708000, '', 1, 4, 1527039600, NULL, 30, NULL),
(380, 38, 1, 1533430800, 1536142500, '', 1, 4, 1527039780, NULL, 30, NULL),
(381, 38, 1, 1538719200, 1538721000, '', 1, 4, 1527039840, NULL, 30, NULL),
(382, 54, 1, 1527066000, 1527070500, '', 2, 5, 1527043740, NULL, 54, NULL),
(383, 37, 1, 1527066900, 1527070500, '', 2, 5, 1527064320, NULL, 54, NULL),
(384, 34, 1, 1527123600, 1527125400, '', 1, 4, 1527129540, NULL, 30, NULL),
(385, 35, 1, 1527469200, 1527502500, '', 2, 5, 1527233640, NULL, 54, NULL),
(386, 36, 4, 1527555600, 1527569100, '', 2, 5, 1527495000, NULL, 54, NULL),
(387, 35, 1, 1527586200, 1527588900, '', 2, 5, 1527578520, NULL, 54, NULL),
(388, 58, 4, 1527469200, 1527591600, '', 2, 5, 1527644820, NULL, 54, NULL),
(389, 31, 1, 1525568400, 1525602600, '', 2, 5, 1523031720, NULL, 54, NULL),
(390, 33, 1, 1525568400, 1525581900, '', 2, 5, 1525573980, NULL, 54, NULL),
(391, 54, 1, 1525568400, 1525573800, '', 2, 5, 1525576380, NULL, 54, NULL),
(392, 1, 1, 1525568400, 1525581900, '', 2, 5, 1525604880, NULL, 54, NULL),
(393, 34, 1, 1528246800, 1528254000, '', 1, 4, 1528255620, NULL, 30, NULL),
(394, 33, 1, 1541466000, 1541499300, '', 2, 5, 1533544800, NULL, 54, NULL),
(395, 36, 4, 1541494800, 1541499300, '', 2, 5, 1541488620, NULL, 54, NULL),
(396, 1, 1, 1541495700, 1541499300, '', 2, 5, 1541495160, NULL, 54, NULL),
(397, 34, 1, 1541466000, 1541469600, '', 1, 4, 1541495580, NULL, 30, NULL),
(398, 36, 4, 1544070600, 1544091300, '', 2, 5, 1541495820, NULL, 54, NULL),
(399, 65, 4, 1528956000, 1529057700, '', 2, 5, 1544059920, NULL, 54, NULL),
(400, 58, 4, 1541466000, 1541500200, '', 2, 5, 1544090100, NULL, 54, NULL),
(401, 34, 1, 1528858800, 1528869600, '', 1, 4, 1528855800, NULL, 30, NULL),
(402, 58, 4, 1529024400, 1529058600, '', 2, 5, 1528939620, NULL, 54, NULL),
(403, 54, 1, 1528956000, 1528963380, '', 2, 5, 1528963440, NULL, 54, NULL),
(404, 36, 4, 1528966800, 1528971300, '', 2, 5, 1528964100, NULL, 54, NULL),
(405, 34, 1, 1528963200, 1528965900, '', 1, 4, 1528965780, NULL, 30, NULL),
(406, 1, 1, 1529024400, 1529037900, '', 2, 5, 1529056380, NULL, 54, NULL),
(407, 37, 1, 1529283600, 1529294400, '', 2, 5, 1529303820, NULL, 54, NULL),
(408, 54, 1, 1529629200, 1529662500, '', 2, 5, 1529309640, NULL, 54, NULL),
(409, 58, 4, 1529456400, 1529577000, '', 2, 5, 1529318160, NULL, 54, NULL),
(410, 36, 4, 1529283600, 1529288100, '', 2, 5, 1529389080, NULL, 54, NULL),
(411, 36, 4, 1529370000, 1529388000, '', 2, 5, 1529389140, NULL, 54, NULL),
(412, 52, 1, 1529456400, 1529560800, '', 2, 5, 1529401320, 1533537374, 54, NULL),
(413, 33, 1, 1529629200, 1529662500, '', 2, 5, 1529484840, NULL, 54, NULL),
(414, 35, 1, 1529542800, 1529546400, '', 2, 5, 1529546880, NULL, 54, NULL),
(415, 38, 1, 1526950800, 1526984100, '', 1, 4, 1529577360, NULL, 30, NULL),
(416, 38, 1, 1527555600, 1527557400, '', 1, 4, 1529577480, NULL, 30, NULL),
(417, 1, 1, 1529571600, 1529576100, '', 2, 5, 1529634420, NULL, 54, NULL),
(418, 36, 4, 1529629200, 1529636400, '', 2, 5, 1529640900, NULL, 54, NULL),
(419, 38, 1, 1528275600, 1528280100, '', 1, 4, 1529652780, NULL, 30, NULL),
(420, 38, 1, 1541491200, 1541499300, '', 1, 4, 1529652780, NULL, 30, NULL),
(421, 55, 1, 1525568400, 1525581900, '', 2, 5, 1529658120, NULL, 54, NULL),
(422, 55, 1, 1544086800, 1544091300, '', 2, 5, 1529658240, NULL, 54, NULL),
(423, 34, 1, 1529974800, 1529985600, '', 1, 4, 1529895180, NULL, 54, NULL),
(424, 37, 1, 1529974800, 1529982000, '', 2, 5, 1529983740, NULL, 54, NULL),
(425, 54, 1, 1530061200, 1530063000, '', 2, 5, 1530066240, NULL, 54, NULL),
(426, 54, 1, 1528333200, 1528366500, '', 2, 5, 1530066420, NULL, 54, NULL),
(427, 35, 1, 1529974800, 1529982000, '', 2, 5, 1530094980, NULL, 54, NULL),
(428, 37, 1, 1530171000, 1530181800, '', 2, 5, 1530171240, NULL, 54, NULL),
(429, 36, 4, 1530061200, 1530074700, '', 2, 5, 1530239940, NULL, 54, NULL),
(430, 36, 4, 1530234000, 1530237600, '', 2, 5, 1530239940, NULL, 54, NULL),
(431, 54, 1, 1530264600, 1530267300, '', 2, 5, 1530257700, NULL, 54, NULL),
(432, 35, 1, 1517965200, 1517968800, '', 2, 5, 1517998920, NULL, 54, NULL),
(433, 1, 1, 1528333200, 1528346700, '', 2, 5, 1525659240, NULL, 54, NULL),
(434, 35, 1, 1523062800, 1523096100, '', 2, 5, 1525660440, NULL, 54, NULL),
(435, 1, 1, 1538901900, 1538907300, '', 2, 5, 1538901060, NULL, 54, NULL),
(436, 34, 1, 1531443600, 1531448100, '', 1, 4, 1531451520, NULL, 30, NULL),
(437, 54, 1, 1531807200, 1532081700, '', 2, 5, 1531796160, NULL, 54, NULL),
(438, 54, 1, 1531818000, 1531822500, '', 2, 5, 1531798680, NULL, 54, NULL),
(439, 36, 4, 1531789200, 1531802700, '', 2, 5, 1531886940, NULL, 54, NULL),
(440, 33, 1, 1532048400, 1532081700, '', 2, 5, 1531901580, NULL, 54, NULL),
(441, 44, 4, 1531807200, 1531823400, '', 1, 4, 1531994280, NULL, 30, NULL),
(442, 32, 3, 1529906400, 1529921700, '', 1, 4, 1532056200, NULL, 30, NULL),
(443, 39, 1, 1538874000, 1538875800, '', 1, 4, 1532056260, NULL, 30, NULL),
(444, 36, 4, 1529487000, 1529446500, '', 3, 6, 1532056380, 1534842370, 54, NULL),
(445, 65, 4, 1536282000, 1536300000, '', 3, 6, 1532056920, 1534842366, 54, NULL),
(446, 65, 4, 1531443600, 1532066400, '', 3, 6, 1532056980, 1534842353, 54, NULL),
(447, 33, 1, 1532307600, 1532326500, '', 3, 6, 1532131680, 1534842352, 54, NULL),
(448, 37, 1, 1532307600, 1532314800, '', 3, 6, 1532318820, 1534842324, 54, NULL),
(449, 54, 1, 1532394000, 1532395800, '', 1, 4, 1532397060, NULL, 29, NULL),
(450, 37, 1, 1520384400, 1520398800, '', 1, 4, 1532428560, NULL, 29, NULL),
(451, 35, 1, 1532480400, 1532484000, '', 1, 4, 1532485560, NULL, 29, NULL),
(452, 34, 1, 1532566800, 1532570400, '', 1, 4, 1532584920, NULL, 30, NULL),
(453, 33, 1, 1515391200, 1515406500, '', 1, 4, 1532917320, NULL, 29, NULL),
(454, 33, 1, 1518069600, 1518084900, '', 1, 4, 1532917380, NULL, 29, NULL),
(455, 33, 1, 1520470800, 1520504100, '', 1, 4, 1532917440, NULL, 29, NULL),
(456, 47, 4, 1533776400, 1534155300, 'i\'m go to having a vacation with my family.', 0, 3, 1533178907, 1533178907, 29, NULL),
(457, 1, 1, 1533258000, 1533271500, 'Personal Reasons', 0, 3, 1533277018, 1533277018, 29, NULL),
(458, 52, 1, 1533603600, 1533617100, '50 days of my father\'s death', 3, 6, 1533537530, 1534842335, 0, NULL),
(459, 37, 1, 1533708000, 1533723300, 'Due to private reason, I would like to be absent this afternoon. I\'m sorry for this inconvenience and thank you.', 0, 3, 1533701610, 1533701610, 29, NULL),
(460, 53, 1, 1533794400, 1533809700, 'For private reasons', 0, 3, 1533864855, 1533864855, 29, NULL),
(461, 53, 1, 1534208400, 1534328100, 'Because of private reason ( take care my baby) I am going to be absent on 2018/08/14 (Tueday) and 2018/08/15 (wednesday). I am sorry for this inconvenience. Please contact me via mobile phone if need. Thanks!', 0, 3, 1534123737, 1534123737, 29, NULL),
(462, 1, 1, 1534235400, 1534241700, 'Personal issues', 1, 4, 1534234633, 1535446546, 29, NULL),
(463, 33, 1, 1534294800, 1534303800, 'Private reason', 1, 4, 1534246797, 1535446566, 29, NULL),
(464, 34, 1, 1534122000, 1534241700, 'Fall sick', 1, 4, 1534295883, 1535446577, 29, NULL),
(465, 37, 1, 1534467600, 1534500900, 'Private reason', 0, 3, 1534413035, 1534413035, 29, NULL),
(466, 37, 1, 1533794400, 1533809700, 'Private reason.', 0, 3, 1534413068, 1534413068, 29, NULL),
(467, 38, 1, 1532048400, 1532050200, 'Private reason', 0, 3, 1534730294, 1534730294, 29, NULL),
(468, 38, 1, 1532480400, 1532482200, 'Private reason', 0, 3, 1534730371, 1534730536, 29, NULL),
(469, 38, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534730479, 1534730498, 29, NULL),
(470, 38, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534730552, 1534730552, 29, NULL),
(471, 32, 3, 1533517200, 1533550500, 'Private reasons', 0, 3, 1534730716, 1534730716, 29, NULL),
(472, 39, 1, 1533627900, 1533896100, 'Sick.', 0, 3, 1534731082, 1534731082, 29, NULL),
(473, 35, 1, 1534728300, 1534731900, 'private reason', 0, 3, 1534731848, 1534731848, 29, NULL),
(474, 35, 1, 1534491000, 1534500900, 'private reason', 0, 3, 1534731878, 1534731878, 29, NULL),
(475, 46, 1, 1533517200, 1533530700, 'Private reason', 0, 3, 1534732233, 1534732233, 29, NULL),
(476, 65, 1, 1532394000, 1532412000, 'Private reason', 0, 3, 1534745546, 1534745546, 29, NULL),
(477, 65, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534745709, 1534745709, 29, NULL),
(478, 65, 4, 1533621600, 1533636900, 'Private reason', 1, 4, 1534745777, 1535446478, 29, NULL),
(479, 65, 4, 1533721500, 1534760100, 'Private reason', 1, 4, 1534745841, 1535446501, 29, NULL),
(480, 65, 4, 1533892500, 1534760100, 'Private reason', 1, 4, 1534746019, 1535446519, 29, NULL),
(481, 65, 4, 1534294800, 1534734000, 'Private reason', 1, 4, 1534746058, 1535446525, 29, NULL),
(482, 65, 4, 1534467600, 1534744800, 'Private reason', 1, 4, 1534746118, 1535446531, 29, NULL),
(483, 55, 1, 1532998800, 1533032100, '- I have private family reason,  I take my father to hospital.', 1, 4, 1534749507, 1535446513, 29, NULL),
(484, 1, 1, 1534831200, 1534846500, 'Personal reasons', 1, 4, 1534818252, 1535446488, 29, NULL),
(485, 47, 4, 1534831200, 1534846500, 'take care of my baby', 1, 4, 1534824086, 1535446482, 29, NULL),
(486, 35, 1, 1534831200, 1534846500, 'private reason', 1, 4, 1534825155, 1535446550, 29, NULL),
(487, 44, 1, 1534813200, 1534846500, 'Family\'s matter', 0, 3, 1534900553, 1535682436, 29, NULL),
(488, 44, 4, 1532998800, 1533012300, 'I have to take my mother to the hospital.', 0, 3, 1534900686, 1535682446, 29, NULL),
(489, 53, 1, 1535522400, 1535537700, 'For private reasons', 0, 3, 1535421575, 1535421575, 29, NULL),
(490, 1, 1, 1535418000, 1535425200, 'Personal reasons', 0, 3, 1535426337, 1535426337, 29, NULL),
(491, 35, 1, 1535331600, 1535364900, 'private reason', 0, 3, 1535434102, 1536023615, 29, NULL),
(492, 34, 1, 1535418000, 1535425200, 'Private reason (go to the VNPT to pay monthly internet fee)', 0, 3, 1535435437, 1535435437, 29, NULL),
(493, 53, 1, 1535695200, 1535710500, 'for private reasons', 0, 3, 1535599313, 1535599313, 29, NULL),
(494, 44, 1, 1535677200, 1535680800, 'Private reason', 0, 3, 1535682395, 1535682395, 29, NULL),
(495, 46, 1, 1535677200, 1535682600, 'Private reason', 0, 3, 1535693384, 1535693384, 29, NULL),
(496, 33, 1, 1536022800, 1536041700, 'Private reason', 0, 3, 1535703992, 1535703992, 29, NULL),
(497, 47, 4, 1536022800, 1536056100, 'i was sick and need time to recover', 0, 3, 1535979840, 1535979840, 29, NULL),
(498, 35, 1, 1535590800, 1535624100, 'private', 0, 3, 1536023343, 1536023343, 29, NULL),
(499, 33, 1, 1536732000, 1536920100, 'private reason', 1, 4, 1536056341, 1538657111, 29, NULL),
(500, 33, 1, 1537146000, 1537336800, 'private reason', 0, 3, 1536056396, 1536056396, 29, NULL),
(501, 47, 1, 1536109200, 1536142500, 'My health still bad', 0, 3, 1536064404, 1536064404, 29, NULL),
(502, 35, 1, 1536109200, 1536123600, 'private', 0, 3, 1536203893, 1536203893, 29, NULL),
(503, 35, 1, 1536571800, 1536574500, 'private', 0, 3, 1536570685, 1536570685, 29, NULL),
(504, 35, 1, 1536312600, 1536315300, 'private', 0, 3, 1536570715, 1536570715, 29, NULL),
(505, 46, 1, 1536541200, 1536574500, 'Private reason', 0, 3, 1536915507, 1536915522, 29, NULL),
(506, 35, 1, 1536886800, 1536920100, 'private', 0, 3, 1537261825, 1537261825, 29, NULL),
(507, 35, 1, 1537262100, 1537265700, 'private', 0, 3, 1537261849, 1537261849, 29, NULL),
(508, 34, 1, 1537318800, 1537324200, 'Private reason', 1, 4, 1537406863, 1538657148, 29, NULL),
(509, 67, 4, 1536627600, 1536641100, 'Private reason', 1, 4, 1537416645, 1538657164, 29, NULL),
(510, 68, 4, 1537405200, 1537438500, '11月の頭で私は結婚予定がありますが、結婚式を準備するため、結婚写真を撮って行く予定がありますので、９月２０日に休みさせていただきます。', 1, 4, 1537425318, 1538657202, 29, NULL),
(511, 38, 1, 1535504400, 1535624100, 'stomachache and food poisoning', 1, 4, 1537514125, 1538657195, 29, NULL),
(512, 38, 1, 1535677200, 1535679000, 'problem with motobike', 1, 4, 1537514208, 1538657186, 29, NULL),
(513, 38, 1, 1536552000, 1536561000, 'private reason', 1, 4, 1537514258, 1538657175, 29, NULL),
(514, 38, 1, 1537146000, 1537147800, 'private reason', 1, 4, 1537514297, 1538657079, 29, NULL),
(515, 1, 1, 1537232400, 1537265700, 'Personal reasons', 1, 4, 1537752765, 1538657086, 29, NULL),
(516, 1, 1, 1537430400, 1537438500, 'Go to hospital and check for my neck / shoulder', 1, 4, 1537752941, 1538657096, 29, NULL),
(517, 1, 1, 1537491600, 1537524900, 'Sick and take day off at home', 1, 4, 1537752967, 1538657091, 29, NULL),
(518, 49, 4, 1538096400, 1538388900, 'I will have a trip to Da Nang.  On the trip I will try to cover the work to the best of my ability.', 1, 4, 1537760223, 1538657040, 29, NULL),
(519, 67, 4, 1537954200, 1537956900, 'Private reason', 1, 4, 1537954065, 1538657057, 29, NULL),
(520, 34, 1, 1537855200, 1537870500, 'Having a stomachache', 1, 4, 1538033600, 1538657069, 29, NULL),
(521, 68, 4, 1537837200, 1537956900, 'I am sick so I need absent two day ', 1, 4, 1538114784, 1538657062, 29, NULL),
(522, 44, 1, 1538442000, 1538455500, 'Family\'s matter', 1, 4, 1538477050, 1538657043, 29, NULL),
(523, 34, 1, 1538442000, 1538451000, 'Having a headache', 1, 4, 1538545507, 1538657047, 29, NULL),
(524, 42, 1, 1539651600, 1539684900, 'For the private reason. I need to join the ceremony of the organization.', 1, 4, 1538555853, 1538657050, 29, NULL),
(525, 42, 1, 1539583200, 1539598500, 'for the private reason preparing for the ceremony of the organization.', 1, 4, 1538556415, 1538657031, 29, NULL),
(526, 47, 1, 1538614800, 1538628300, 'I have a private reasons so i would like to absence.', 1, 4, 1538633001, 1538657027, 29, NULL),
(527, 1, 1, 1538614800, 1538628300, 'Personal reasons', 1, 4, 1538636166, 1538657024, 29, NULL),
(528, 45, 3, 1538632800, 1538640000, 'I have to send some documents to my local government', 1, 4, 1538640170, 1538657012, 29, NULL),
(529, 47, 1, 1538960400, 1538973900, 'because of private reason', 0, 3, 1538976662, 1538976662, 29, NULL),
(530, 1, 1, 1539142200, 1539146700, 'Personal issues', 0, 3, 1538993908, 1538993908, 29, NULL),
(531, 46, 1, 1539151200, 1539154800, 'Private reason.', 0, 3, 1539161881, 1539161881, 29, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_overtime`
--
ALTER TABLE `comment_overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_payment`
--
ALTER TABLE `comment_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_vacation`
--
ALTER TABLE `comment_vacation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments_users`
--
ALTER TABLE `departments_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meetings_id_uindex` (`id`);

--
-- Indexes for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_overtime`
--
ALTER TABLE `comment_overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_payment`
--
ALTER TABLE `comment_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_vacation`
--
ALTER TABLE `comment_vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments_users`
--
ALTER TABLE `departments_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;
--
-- Database: `fujierp_dev_db2`
--
CREATE DATABASE IF NOT EXISTS `fujierp_dev_db2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `fujierp_dev_db2`;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `hashtag_user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Dang json array',
  `user_company_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_logo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_logo`, `description`, `start_date`, `end_date`, `fax`, `email`, `address`, `phone`, `company_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'erp', NULL, 'Fujitech JSC', '2018-08-13 10:47:09', NULL, NULL, NULL, NULL, NULL, 0, '2018-08-14 14:39:41', '2018-10-24 02:11:32', '2018-10-24 02:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `company_id`, `name`, `code`, `country`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Vietnam Dong', 'VND', 'Vietnam', 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(2, 1, 'Dollar', 'USD', 'America', 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(3, 1, 'Yen', 'YEN', 'Japan', 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:33', '2018-10-24 02:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `company_id`, `department_name`, `department_alias`, `parent`, `status`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Management', 'Management', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:48', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(2, 1, 'Back Office', 'BO', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:48', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(3, 1, 'Tech Team', ' Tech Team', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:48', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(4, 1, 'Game Comtor Team', 'Game Comtor Team', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(5, 1, 'Fuji All', ' Fuji All', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(6, 1, 'Game Publishing', 'Game Publishing', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(7, 1, 'Finance', 'Finance', NULL, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(8, 1, 'Tech', 'Tech', 3, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33'),
(9, 1, 'IT Comtor', 'IT Comtor', 3, 1, NULL, 1, NULL, '2018-08-16 20:46:49', '2018-10-24 02:11:33', '2018-10-24 02:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `fjc_customer`
--

CREATE TABLE `fjc_customer` (
  `fjc_customer_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fjc_customer`
--

INSERT INTO `fjc_customer` (`fjc_customer_id`, `name`, `email`, `phone`, `website`, `status`, `start_date`, `end_date`, `deleted_at`) VALUES
(1, 'erp', 'fujitecjsc@gmail.com', '0986901110', 'fujitechjsc.com', 0, '2018-08-13 03:47:09', '2018-10-24 02:11:34', '2018-10-24 02:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `fjc_module`
--

CREATE TABLE `fjc_module` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fjc_module`
--

INSERT INTO `fjc_module` (`id`, `name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vacation Request', 'Vacation Request Description', 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:34', '2018-10-24 02:11:34'),
(2, 'Payment Request', 'Payment Request Description', 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:34', '2018-10-24 02:11:34'),
(3, 'Overtime Request', 'Overtime Request Description', 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:34', '2018-10-24 02:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `fjc_role`
--

CREATE TABLE `fjc_role` (
  `fjc_role_id` int(10) NOT NULL,
  `role_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fjc_user`
--

CREATE TABLE `fjc_user` (
  `id` int(11) NOT NULL,
  `login_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fjc_user`
--

INSERT INTO `fjc_user` (`id`, `login_name`, `password`, `password_reset`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'jpviet.com', NULL, 'jpvietdotcom@gmail.com', NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:35', '2018-10-24 02:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `fjc_user_role`
--

CREATE TABLE `fjc_user_role` (
  `fjc_user_id` int(10) NOT NULL,
  `fjc_role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `company_id`, `name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Administrator', NULL, 1, 1, NULL, '2018-08-22 16:04:21', '2018-10-24 02:11:35', '2018-10-24 02:11:35'),
(2, 1, 'Moderation', NULL, 1, 1, NULL, '2018-08-22 16:04:21', '2018-10-24 02:11:35', '2018-10-24 02:11:35'),
(3, 1, 'Everyone', NULL, 1, 1, NULL, '2018-08-22 16:04:21', '2018-10-24 02:11:35', '2018-10-24 02:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(10) NOT NULL,
  `company_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `level_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `company_id`, `level_name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'CEO', 'Chief Executive Officer', 1, 1, NULL, '2018-08-19 15:42:14', '2018-10-24 02:11:36', '2018-10-24 02:11:36'),
(2, '1', 'CTO', 'Chief Technology Officer', 1, 1, NULL, '2018-08-19 15:42:14', '2018-10-24 02:11:36', '2018-10-24 02:11:36'),
(3, '1', 'PM', 'Project Management', 1, 1, NULL, '2018-08-19 15:42:14', '2018-10-24 02:11:36', '2018-10-24 02:11:36'),
(4, '1', 'TL', 'Team Leader', 1, 1, NULL, '2018-08-19 15:42:15', '2018-10-24 02:11:36', '2018-10-24 02:11:36'),
(5, '1', 'SL', 'Sub Leader', 1, 1, NULL, '2018-08-19 15:42:15', '2018-10-24 02:11:36', '2018-10-24 02:11:36'),
(6, '1', 'M', 'Member', 1, 1, NULL, '2018-08-19 15:42:15', '2018-10-24 02:11:36', '2018-10-24 02:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `from_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `room_id`, `user_company_id`, `company_id`, `from_time`, `to_time`, `title`, `reasons`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 23, 1, '2018-08-28 18:00:00', '2018-08-28 19:00:00', 'Hello hoc ', '', 23, 0, '2018-08-28 20:15:18', '2018-08-28 20:15:18', '2018-08-28 20:41:08'),
(2, 1, 23, 1, '2018-08-28 19:00:00', '2018-08-28 20:00:00', 'Chao xin', '', 23, 0, '2018-08-28 20:18:23', '2018-08-28 20:18:23', '2018-08-28 20:41:14'),
(3, 2, 23, 1, '2018-08-28 18:00:00', '2018-08-28 19:00:00', 'Xong nhi o', '', 23, 0, '2018-08-28 20:18:41', '2018-08-28 20:18:41', '2018-08-28 20:41:36'),
(4, 1, 23, 1, '2018-08-29 18:00:00', '2018-08-29 19:00:00', 'Zalata', '', 23, 23, '2018-08-28 20:19:15', '2018-08-28 20:44:43', '2018-10-24 02:11:36'),
(5, 1, 23, 1, '2018-08-29 17:00:00', '2018-08-29 17:00:01', 'hop du an 1', 'hop ky thuat 2', 23, 19, '2018-08-28 20:53:41', '2018-08-28 21:40:10', '2018-10-24 02:11:36'),
(6, 2, 23, 1, '2018-08-28 21:09:00', '2018-08-28 22:54:00', 'Hop voi winner 4', '', 23, 0, '2018-08-28 20:54:53', '2018-08-28 20:54:53', '2018-10-24 02:11:37'),
(7, 8, 10, 1, '2018-08-29 21:22:00', '2018-08-29 23:07:00', 'Hop BO', '', 10, 0, '2018-08-28 21:07:56', '2018-08-28 21:07:56', '2018-10-24 02:11:37'),
(8, 7, 19, 1, '2018-09-02 12:53:20', '2018-09-02 12:53:21', 'hop khach 2', 'hop ky thuat 2', 19, 0, '2018-08-28 21:44:27', '2018-08-28 21:44:27', '2018-10-24 02:11:37'),
(9, 3, 23, 1, '2018-08-30 18:00:00', '2018-08-30 20:30:00', 'Training js', 'Bo sung them chuc nang add nguoi tham gia', 23, 0, '2018-08-30 03:43:40', '2018-08-30 03:43:40', '2018-10-24 02:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `migration` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_company`
--

CREATE TABLE `module_company` (
  `module_company_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `summary` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Title of issue',
  `module_id` int(11) DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL COMMENT 'Json format [1,3,4,6,7]',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Comment of issue',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Read but didn’t see detail. Null - unread.',
  `resource_read_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'See detail when click link on notification or access url directly. Null - unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `company_id`, `user_company_id`, `summary`, `module_id`, `assignee`, `url`, `comment`, `created_at`, `read_at`, `resource_read_at`) VALUES
(1, 1, 1, 'You just reiceved new payment request', 3, 23, '/overtime/view/0', NULL, '2018-08-27 23:20:53', '2018-10-09 02:45:47', '2018-09-10 20:29:34'),
(2, 1, 1, 'You just reiceved new payment request', 3, 23, '/overtime/view/0', NULL, '2018-08-27 23:21:03', '2018-10-09 02:45:47', '2018-10-24 02:11:37'),
(3, 1, 24, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-08-30 01:32:14', '2018-10-24 02:11:37', '2018-10-24 02:11:37'),
(4, 1, 24, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-08-30 01:32:14', '2018-10-24 02:11:37', '2018-10-24 02:11:37'),
(5, 1, 19, 'New vacation request', 2, 24, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:34:00', '2018-10-24 02:11:37', '2018-10-24 02:11:37'),
(6, 1, 19, 'New vacation request', 2, 24, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:43:59', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(7, 1, 19, 'New vacation request', 2, 24, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:46:29', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(8, 1, 19, 'New vacation request', 2, 19, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:54:25', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(9, 1, 19, 'New vacation request 2', 2, 19, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:54:36', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(10, 1, 19, 'New vacation request 3', 2, 19, 'http://dev.erp.fujitechjsc.com/vacation/view/4', 'urgent', '2018-08-30 01:54:39', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(11, 1, 23, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', 'Tesst websocket', '2018-08-30 03:23:47', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(12, 1, 23, 'You just reiceved new payment request', 3, 2, '/overtime/view/0', 'Tesst websocket', '2018-08-30 03:23:47', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(13, 1, 23, 'You just reiceved new payment request', 3, 23, '/overtime/view/0', 'Tesst websocket', '2018-08-30 03:23:47', '2018-10-09 02:45:47', '2018-10-24 02:11:38'),
(14, 1, 37, 'You just reiceved new payment request', 3, 19, '/overtime/view/0', '', '2018-08-31 01:25:10', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(15, 1, 1, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', 'due to new staff', '2018-08-31 01:38:05', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(16, 1, 37, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', '', '2018-08-31 01:42:42', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(17, 1, 37, 'You just reiceved new payment request', 3, 2, '/overtime/view/0', '', '2018-08-31 01:42:42', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(18, 1, 26, 'You just reiceved new payment request', 3, 2, '/overtime/view/0', 'Test socket', '2018-08-31 01:55:59', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(19, 1, 26, 'You just reiceved new payment request', 3, 23, '/overtime/view/0', 'Test socket', '2018-08-31 01:55:59', '2018-10-09 02:45:47', '2018-10-24 02:11:38'),
(20, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', 'test manager', '2018-09-05 02:07:49', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(21, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', 'test manager', '2018-09-05 02:07:49', '2018-10-09 02:45:47', '2018-10-24 02:11:38'),
(22, 1, 37, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', '13', '2018-09-05 02:08:58', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(23, 1, 37, 'You just reiceved new payment request', 3, 19, '/overtime/view/0', '13', '2018-09-05 02:08:58', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(24, 1, 1, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', 'nghi duong hang ngay', '2018-09-05 18:05:47', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(25, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', 'nghi duong hang ngay', '2018-09-05 18:05:47', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(26, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'nghi duong hang ngay', '2018-09-05 18:05:47', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(27, 1, 24, 'You just reiceved new overtime request', 3, 1, '/overtime/view/33', 'Nhieu viec', '2018-09-05 18:48:10', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(28, 1, 24, 'You just reiceved new overtime request', 3, 2, '/overtime/view/33', 'Nhieu viec', '2018-09-05 18:48:10', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(29, 1, 37, 'You just reiceved new overtime request', 3, 2, '/overtime/view/34', '213123', '2018-09-05 20:02:38', '2018-10-24 02:11:38', '2018-10-24 02:11:38'),
(30, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/34', '213123', '2018-09-05 20:02:38', '2018-10-15 02:38:12', '2018-10-24 02:11:38'),
(31, 1, 37, 'You just reiceved new overtime request', 3, 2, '/overtime/view/35', '213123', '2018-09-05 20:03:09', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(32, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/35', '213123', '2018-09-05 20:03:09', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(33, 1, 37, 'You just reiceved new overtime request', 3, 2, '/overtime/view/36', '213123', '2018-09-05 20:09:30', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(34, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/36', '213123', '2018-09-05 20:09:30', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(35, 1, 37, 'You just reiceved new overtime request', 3, 1, '/overtime/view/37', '213213', '2018-09-05 20:09:53', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(36, 1, 37, 'You just reiceved new overtime request', 3, 2, '/overtime/view/37', '213213', '2018-09-05 20:09:53', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(37, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/37', '213213', '2018-09-05 20:09:53', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(38, 1, 37, 'You just reiceved new overtime request', 3, 23, '/overtime/view/37', '213213', '2018-09-05 20:09:53', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(39, 1, 1, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', '213213', '2018-09-05 21:37:22', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(40, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '213213', '2018-09-05 21:37:22', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(41, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '213213', '2018-09-05 21:37:22', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(42, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '123', '2018-09-05 21:37:57', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(43, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', '123', '2018-09-05 21:37:57', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(44, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '123', '2018-09-05 21:37:57', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(45, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '123', '2018-09-05 21:39:13', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(46, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', '123', '2018-09-05 21:39:13', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(47, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '123', '2018-09-05 21:39:13', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(48, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '123', '2018-09-05 21:39:23', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(49, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', '123', '2018-09-05 21:39:23', '2018-10-15 02:38:12', '2018-10-24 02:11:39'),
(50, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '123', '2018-09-05 21:39:23', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(51, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '123', '2018-09-05 21:39:57', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(52, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', '123', '2018-09-05 21:39:57', '2018-10-15 02:38:12', '2018-09-10 20:26:00'),
(53, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '123', '2018-09-05 21:39:57', '2018-10-09 02:45:47', '2018-10-24 02:11:39'),
(54, 1, 1, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', 'test', '2018-09-06 02:35:57', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(55, 1, 1, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', '2345', '2018-09-06 19:12:24', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(56, 1, 1, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', '2345', '2018-09-06 19:12:24', '2018-10-24 02:11:39', '2018-10-24 02:11:39'),
(57, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', '2345', '2018-09-06 19:12:24', '2018-10-09 02:45:47', '2018-10-24 02:11:40'),
(58, 1, 37, 'You just reiceved new overtime request', 3, 2, '/overtime/view/38', '12231223', '2018-09-06 19:26:14', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(59, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/38', '12231223', '2018-09-06 19:26:14', '2018-10-15 02:38:12', '2018-09-10 20:36:24'),
(60, 1, 37, 'You just reiceved new overtime request', 3, 1, '/overtime/view/39', '321', '2018-09-06 19:27:48', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(61, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/39', '321', '2018-09-06 19:27:48', '2018-10-15 02:38:12', '2018-09-10 20:23:35'),
(62, 1, 1, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', '123', '2018-09-06 19:28:51', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(63, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', '123', '2018-09-06 19:28:51', '2018-10-15 02:38:12', '2018-09-10 20:22:40'),
(64, 1, 37, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', '12', '2018-09-06 19:29:25', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(65, 1, 37, 'You just reiceved new payment request', 3, 19, '/overtime/view/0', '12', '2018-09-06 19:29:25', '2018-10-15 02:38:12', '2018-09-10 20:37:57'),
(66, 1, 24, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:20:11', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(67, 1, 24, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:21:09', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(68, 1, 24, 'You just reiceved new overtime request', 3, 19, '/overtime/view/40', 'Nhieu viec', '2018-09-10 23:22:57', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(69, 1, 24, 'You just reiceved new overtime request', 3, 19, '/overtime/view/41', 'Nhieu viec', '2018-09-10 23:25:31', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(70, 1, 1, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'test 2', '2018-09-10 23:27:18', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(71, 1, 24, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:28:13', '2018-10-15 02:38:12', '2018-09-10 23:28:49'),
(72, 1, 24, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:28:35', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(73, 1, 20, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:29:44', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(74, 1, 20, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:31:02', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(75, 1, 21, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:38:46', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(76, 1, 15, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:39:05', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(77, 1, 15, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:40:18', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(78, 1, 16, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:40:35', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(79, 1, 10, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:41:39', '2018-10-15 02:38:12', '2018-09-10 23:42:49'),
(80, 1, 10, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-10 23:42:54', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(81, 1, 10, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:19:57', '2018-10-15 02:38:12', '2018-10-24 02:11:40'),
(82, 1, 24, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:20:19', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(83, 1, 24, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:20:19', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(84, 1, 24, 'You just reiceved new vacation request', 1, 1, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:21:39', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(85, 1, 24, 'You just reiceved new vacation request', 1, 2, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:21:39', '2018-10-24 02:11:40', '2018-10-24 02:11:40'),
(86, 1, 21, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:26:48', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(87, 1, 11, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:27:20', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(88, 1, 11, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:31:42', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(89, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:32:20', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(90, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:33:40', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(91, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:55:33', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(92, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 00:55:57', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(93, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:07:46', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(94, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:08:16', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(95, 1, 12, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:09:13', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(96, 1, 12, 'You just reiceved new vacation request', 1, 20, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:09:23', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(97, 1, 14, 'You just reiceved new vacation request', 1, 19, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:12:02', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(98, 1, 14, 'You just reiceved new vacation request', 1, 18, '/vacation/view/0', 'Xin nghỉ đi chơi', '2018-09-11 01:12:13', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(99, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', 'test 3', '2018-09-11 01:18:38', '2018-10-09 02:45:47', '2018-10-24 02:11:41'),
(100, 1, 1, 'You just reiceved new vacation request', 1, 23, '/vacation/view/0', 'tự xin nghỉ và tự assign lại cho mình', '2018-09-11 01:22:37', '2018-10-09 02:45:47', '2018-10-24 02:11:41'),
(101, 1, 37, 'You just reiceved new overtime request', 3, 1, '/overtime/view/42', '123456', '2018-09-12 02:37:21', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(102, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/42', '123456', '2018-09-12 02:37:21', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(103, 1, 37, 'You just reiceved new overtime request', 3, 1, '/overtime/view/43', 'bla', '2018-09-13 18:18:47', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(104, 1, 37, 'You just reiceved new overtime request', 3, 19, '/overtime/view/43', 'bla', '2018-09-13 18:18:47', '2018-10-15 02:38:12', '2018-10-24 02:11:41'),
(105, 1, 37, 'You just reiceved new payment request', 3, 1, '/overtime/view/0', 'test', '2018-10-15 18:51:41', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(106, 1, 37, 'You just reiceved new payment request', 3, 19, '/overtime/view/0', 'test', '2018-10-15 18:51:41', '2018-10-24 02:11:41', '2018-10-24 02:11:41'),
(107, 1, 37, 'You just reiceved new payment request', 3, 23, '/overtime/view/0', 'test', '2018-10-15 18:51:41', '2018-10-24 02:11:41', '2018-10-24 02:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT '3',
  `assignee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `reason` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `total_hour` int(10) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `user_company_id`, `module_id`, `assignee`, `status_id`, `start_date`, `end_date`, `reason`, `total_hour`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 24, 3, '[23]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 24, 1, NULL, '2018-08-22 01:44:55', '2018-10-10 03:26:41', '2018-10-24 02:11:41'),
(2, 24, 3, '[3,4]', 3, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'nhieu viec lan 3', 7, 1, 2, '2018-08-22 01:46:06', '2018-09-05 20:32:54', '2018-10-24 02:11:41'),
(3, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 01:53:12', '2018-08-22 01:53:12', '2018-10-24 02:11:41'),
(4, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 01:56:34', '2018-08-22 01:56:34', '2018-10-24 02:11:41'),
(5, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 01:57:20', '2018-08-22 01:57:20', '2018-10-24 02:11:41'),
(6, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 02:04:55', '2018-08-22 02:04:55', '2018-10-24 02:11:42'),
(7, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 02:06:38', '2018-08-22 02:06:38', '2018-10-24 02:11:42'),
(8, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 02:16:00', '2018-08-22 02:16:00', '2018-10-24 02:11:42'),
(9, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 19:59:18', '2018-08-22 19:59:19', '2018-10-24 02:11:42'),
(10, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 20:02:48', '2018-08-22 20:02:48', '2018-09-14 02:51:28'),
(11, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 20:05:29', '2018-08-22 20:05:29', '2018-10-24 02:11:42'),
(12, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 20:40:10', '2018-08-22 20:40:10', '2018-10-24 02:11:42'),
(13, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 20:42:26', '2018-08-22 20:42:26', '2018-10-24 02:11:42'),
(14, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 21:05:01', '2018-08-22 21:05:01', '2018-10-24 02:11:42'),
(15, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 21:05:09', '2018-08-22 21:05:09', '2018-10-24 02:11:42'),
(16, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-22 21:09:23', '2018-08-22 21:09:23', '2018-10-24 02:11:42'),
(17, 24, 3, '[3,4]', 3, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'nhieu viec lan 3', 7, 1, 2, '2018-08-22 21:15:35', '2018-09-05 20:32:51', '2018-10-24 02:11:42'),
(18, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 00:49:00', '2018-08-23 00:49:00', '2018-10-24 02:11:42'),
(19, 23, 3, '[1]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Lam tai lieu gap', 3, 1, NULL, '2018-08-23 21:18:30', '2018-08-23 21:18:30', '2018-10-24 02:11:42'),
(20, 23, 3, '[1]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Lam tai lieu gap', 3, 1, NULL, '2018-08-23 21:29:22', '2018-08-23 21:29:22', '2018-10-24 02:11:42'),
(21, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 21:55:31', '2018-08-23 21:55:31', '2018-10-24 02:11:42'),
(22, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:29:36', '2018-08-23 22:29:36', '2018-10-24 02:11:42'),
(23, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:31:47', '2018-08-23 22:31:47', '2018-10-24 02:11:42'),
(24, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:35:27', '2018-08-23 22:35:27', '2018-10-24 02:11:42'),
(25, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:38:48', '2018-08-23 22:38:48', '2018-10-24 02:11:42'),
(26, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:41:04', '2018-08-23 22:41:04', '2018-10-24 02:11:42'),
(27, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:42:46', '2018-08-23 22:42:46', '2018-10-24 02:11:42'),
(28, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:44:54', '2018-08-23 22:44:54', '2018-10-24 02:11:42'),
(29, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:46:02', '2018-08-23 22:46:02', '2018-10-24 02:11:42'),
(30, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:46:23', '2018-08-23 22:46:23', '2018-10-24 02:11:42'),
(31, 24, 3, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, NULL, '2018-08-23 22:51:35', '2018-08-23 22:51:35', '2018-10-24 02:11:42'),
(32, 23, 3, '[1]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Lam tai lieu gap', 3, 1, NULL, '2018-08-23 23:30:03', '2018-08-23 23:30:03', '2018-10-24 02:11:42'),
(33, 24, 0, '[1,2]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, 0, '2018-09-05 18:48:10', '2018-09-05 18:48:10', '2018-10-24 02:11:42'),
(34, 37, 0, '[2,19]', 2, '2018-09-05 17:00:00', '2018-09-06 16:00:00', '213123', 23, 37, 0, '2018-09-05 20:02:38', '2018-09-05 20:02:38', '2018-10-24 02:11:42'),
(35, 37, 0, '[2,19]', 2, '2018-09-05 17:00:00', '2018-09-06 16:00:00', '213123', 23, 37, 0, '2018-09-05 20:03:09', '2018-09-05 20:03:09', '2018-10-24 02:11:42'),
(36, 37, 0, '[2,19]', 2, '2018-09-05 17:00:00', '2018-09-06 16:00:00', '213123', 23, 37, 0, '2018-09-05 20:09:30', '2018-09-05 20:09:30', '2018-10-24 02:11:42'),
(37, 37, 0, '[1,2,19,23]', 2, '2018-09-05 17:00:00', '2018-09-06 15:00:00', 'test update', 22, 37, 0, '2018-09-05 20:09:53', '2018-09-05 20:25:45', '2018-10-24 02:11:42'),
(38, 37, 0, '[2,19]', 2, '2018-09-06 17:00:00', '2018-09-07 16:00:00', '12231223', 23, 37, 0, '2018-09-06 19:26:14', '2018-09-06 19:26:14', '2018-10-24 02:11:42'),
(39, 37, 0, '[1,19]', 2, '2018-09-06 17:00:00', '2018-09-07 16:00:00', '321', 23, 37, 0, '2018-09-06 19:27:48', '2018-09-06 19:27:48', '2018-10-24 02:11:42'),
(40, 24, 0, '[19]', 2, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Nhieu viec', 8, 1, 0, '2018-09-10 23:22:57', '2018-09-10 23:22:57', '2018-10-24 02:11:42'),
(41, 24, 0, '[1,19]', 2, '2018-08-29 00:00:00', '2018-08-29 10:00:00', 'Nhieu viec', 10, 1, 0, '2018-09-10 23:25:31', '2018-09-14 02:00:26', '2018-10-24 02:11:42'),
(42, 37, 0, '[1,19]', 2, '2018-09-11 17:00:00', '2018-09-12 16:00:00', '123456', 23, 37, 0, '2018-09-12 02:37:21', '2018-09-13 19:06:33', '2018-10-24 02:11:42'),
(43, 37, 0, '[1,19]', 2, '2018-09-13 17:00:00', '2018-09-14 16:00:00', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ', 23, 37, 0, '2018-09-13 18:18:47', '2018-10-10 03:28:39', '2018-10-24 02:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `overtime_project`
--

CREATE TABLE `overtime_project` (
  `id` int(11) NOT NULL,
  `overtime_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hour` int(10) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_project`
--

INSERT INTO `overtime_project` (`id`, `overtime_id`, `project_id`, `reason_id`, `detail`, `hour`, `deleted_at`) VALUES
(1, 16, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:42'),
(2, 16, 1, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:42'),
(3, 17, 3, 3, ' du an 3 nhieu viec', 3, '2018-10-24 02:11:43'),
(4, 17, 4, 4, ' du an 4 nhieu viec', 4, '2018-10-24 02:11:43'),
(15, 28, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(16, 28, 1, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(17, 29, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(18, 29, 1, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(19, 30, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(20, 30, 100000, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(21, 31, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(22, 31, 100000, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(23, 32, 1, 1, 'lam tai lieu khach hang', 1, '2018-10-24 02:11:43'),
(24, 32, 2, 1, 'code gui mail trong go lang', 2, '2018-10-24 02:11:43'),
(25, 33, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(26, 33, 2, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(27, 34, 1, 0, '123', 23, '2018-10-24 02:11:43'),
(28, 35, 1, 0, '123', 23, '2018-10-24 02:11:43'),
(29, 36, 1, 0, '123', 23, '2018-10-24 02:11:43'),
(30, 37, 1, 0, '123', 23, '2018-10-24 02:11:43'),
(31, 17, 1, 1, ' du an 1 nhieu viec', 5, '2018-09-06 01:13:20'),
(32, 17, 2, 1, ' du an 2 nhieu viec', 3, '2018-09-06 01:13:20'),
(33, 17, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(34, 17, 2, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(35, 17, 1, 1, ' gio dien lung tung cung duoc nhi', 5, '2018-10-24 02:11:43'),
(36, 17, 2, 1, 'tong so gio lam them la 10 nhe', 3, '2018-10-24 02:11:43'),
(37, 38, 1, 0, '23', 23, '2018-10-24 02:11:43'),
(38, 39, 1, 0, '1', 23, '2018-10-24 02:11:43'),
(39, 40, 1, 1, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:43'),
(40, 40, 2, 1, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:43'),
(41, 41, 1, 1, ' du an 1 nhieu viec', 5, '2018-09-14 02:00:14'),
(42, 41, 2, 1, ' du an 2 nhieu viec', 3, '2018-09-14 02:00:14'),
(43, 42, 1, 0, '123', 11, '2018-09-12 19:47:48'),
(44, 42, 22, 0, '12', 12, '2018-09-12 19:47:48'),
(45, 42, 1, 1, ' du an 1 nhieu viec', 5, '2018-09-12 19:47:48'),
(46, 42, 2, 1, ' du an 2 nhieu viec', 3, '2018-09-12 19:47:48'),
(47, 42, 1, 0, '123', 11, '2018-09-12 19:48:49'),
(48, 42, 22, 0, '12', 10, '2018-09-12 19:48:49'),
(49, 42, 7, 0, '321', 2, '2018-09-12 19:48:49'),
(50, 42, 1, 0, '123', 11, '2018-09-12 19:48:49'),
(51, 42, 22, 0, '12', 10, '2018-09-12 19:49:57'),
(52, 42, 7, 0, '321', 2, '2018-09-12 19:49:57'),
(53, 42, 1, 0, '123', 11, '2018-09-12 19:49:57'),
(54, 42, 22, 0, '12', 10, '2018-09-12 18:41:10'),
(55, 42, 7, 0, '321', 2, '2018-09-12 18:41:10'),
(56, 1, 1, 0, '1', 24, '2018-09-13 19:28:47'),
(57, 1, 1, 0, '1', 20, '2018-09-13 19:28:47'),
(58, 1, 1, 0, '2', 2, '2018-09-13 19:28:47'),
(59, 1, 1, 0, '3', 2, '2018-09-13 19:28:47'),
(60, 42, 1, 0, '123', 11, '2018-09-12 19:35:25'),
(61, 42, 25, 0, '2', 12, '2018-09-12 19:35:25'),
(62, 42, 1, 0, '1', 11, '2018-09-12 19:49:57'),
(63, 42, 2, 0, '2', 12, '2018-09-13 19:06:33'),
(64, 42, 1, 0, '1', 11, '2018-09-13 19:06:33'),
(65, 42, 2, 0, '2', 12, '2018-09-13 19:06:33'),
(66, 42, 1, 0, '1', 11, '2018-09-13 19:06:33'),
(67, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(68, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(69, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(70, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(71, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(72, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(73, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(74, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(75, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(76, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(77, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(78, 42, 1, 0, '1', 11, '2018-10-24 02:11:44'),
(79, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(80, 42, 1, 0, '123', 11, '2018-10-24 02:11:44'),
(81, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(82, 42, 22, 0, '12', 10, '2018-10-24 02:11:44'),
(83, 42, 1, 0, '2', 13, '2018-10-24 02:11:44'),
(84, 43, 1, 0, '1', 21, '2018-09-13 18:56:21'),
(85, 43, 23, 0, '2', 2, '2018-09-13 18:56:21'),
(86, 43, 1, 0, '1', 21, '2018-09-13 18:56:54'),
(87, 43, 23, 0, '2', 2, '2018-09-13 18:56:54'),
(88, 43, 1, 0, '1', 21, '2018-09-13 18:57:26'),
(89, 43, 23, 0, '2', 1, '2018-09-13 18:57:26'),
(90, 43, 2, 0, '3', 1, '2018-09-13 18:57:26'),
(91, 43, 1, 0, '1', 21, '2018-09-13 18:57:50'),
(92, 43, 23, 0, '2', 1, '2018-09-13 18:57:50'),
(93, 43, 2, 0, '3', 1, '2018-09-13 18:57:50'),
(94, 43, 1, 0, '1', 21, '2018-10-10 03:28:39'),
(95, 43, 23, 0, '2', 1, '2018-10-10 03:28:39'),
(96, 43, 2, 0, '3', 1, '2018-10-10 03:28:39'),
(97, 42, 2, 0, '2', 12, '2018-10-24 02:11:44'),
(98, 42, 1, 0, '3', 11, '2018-10-24 02:11:44'),
(99, 1, 1, 0, '1', 23, '2018-09-13 19:36:50'),
(100, 1, 1, 0, '1', 1, '2018-09-13 19:36:50'),
(101, 1, 1, 0, '1', 22, '2018-09-13 19:45:06'),
(102, 1, 2, 0, '1', 1, '2018-09-13 19:45:06'),
(103, 1, 23, 0, '2', 1, '2018-09-13 19:45:06'),
(104, 1, 1, 0, '1', 22, '2018-10-10 03:26:41'),
(105, 1, 2, 0, '1', 2, '2018-10-10 03:26:41'),
(106, 41, 1, 0, ' du an 1 nhieu viec', 5, '2018-09-14 02:00:26'),
(107, 41, 2, 0, ' du an 2 nhieu viec', 3, '2018-09-14 02:00:26'),
(108, 41, 30, 0, ' du an 3 nhieu viec', 2, '2018-09-14 02:00:26'),
(109, 41, 1, 0, ' du an 1 nhieu viec', 5, '2018-10-24 02:11:45'),
(110, 41, 2, 0, ' du an 2 nhieu viec', 3, '2018-10-24 02:11:45'),
(111, 41, 30, 0, ' du an 3 nhieu viec', 2, '2018-10-24 02:11:45'),
(112, 1, 1, 0, '1', 22, '2018-10-24 02:11:45'),
(113, 1, 2, 0, '1', 2, '2018-10-24 02:11:45'),
(114, 43, 1, 0, '1', 21, '2018-10-24 02:11:45'),
(115, 43, 8, 0, '2', 1, '2018-10-24 02:11:45'),
(116, 43, 2, 0, '3', 1, '2018-10-24 02:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT '2',
  `assignee` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON String format. Ex: [4,2,4]',
  `reason` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_payment` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON string array with multi object: Ex: {"detail":"buy new mouse","amount":3,"unit_price":10000,"sub_total":30000}',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` float NOT NULL DEFAULT '0',
  `vat` int(3) NOT NULL DEFAULT '0',
  `total_price_vat` float NOT NULL DEFAULT '0' COMMENT 'Price with VAT',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive. Default: 1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_company_id`, `company_id`, `payment_method_id`, `currency_id`, `module_id`, `assignee`, `reason`, `item_payment`, `description`, `total_price`, `vat`, `total_price_vat`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 2, '[1]', 'due to new staff updated', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff', 60000, 10, 60000, 2, 1, 0, '2018-08-22 00:10:51', '2018-08-22 03:23:02', '2018-08-22 04:26:10'),
(2, 1, 1, 1, 3, 2, '[1]', 'test adding payment again', '[{\"detail\":\"by new macbook\",\"amount\":12,\"unit_price\":100000},{\"detail\":\"buy new HDMI\",\"amount\":14,\"unit_price\":120000}]', '222Dear, i want to buy some devices to work updated', 2880000, 10, 3168000, 1, 1, 0, '2018-08-22 00:10:52', '2018-09-06 01:24:14', '2018-10-24 02:11:45'),
(3, 1, 1, 3, 2, 2, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"qty\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"qty\":3,\"unit_price\":10000},{\"detail\":\"mua macbook\",\"qty\":1,\"unit_price\":32000000}]', 'improve something for new staff', 60000, 0, 60000, 4, 1, 0, '2018-08-22 02:04:57', '2018-09-06 03:14:16', '2018-10-24 02:11:45'),
(4, 1, 1, 1, 1, 2, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff', 60000, 0, 60000, 2, 1, 0, '2018-08-22 02:15:10', '2018-08-31 01:52:52', '2018-10-24 02:11:45'),
(5, 1, 1, 1, 1, 2, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"qty\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"qty\":3,\"unit_price\":10000}]', 'improve something for new staff', 60000, 10, 60000, 2, 1, 0, '2018-08-22 02:17:44', '2018-08-31 01:52:56', '2018-10-24 02:11:45'),
(19, 3, 1, 1, 1, 2, '[1]', '', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123123}]', '123', 15144100, 0, 15144100, 2, 3, 0, '2018-08-22 02:49:39', '2018-08-22 02:49:39', '2018-10-24 02:11:46'),
(20, 3, 1, 1, 1, 2, '[1]', '', '[]', '123', 0, 0, 0, 2, 3, 0, '2018-08-22 02:49:49', '2018-08-22 02:49:49', '2018-10-24 02:11:46'),
(21, 3, 1, 3, 1, 2, '[1]', '123', '[{\"detail\":\"\",\"qty\":0,\"unit_price\":123}]', '123213', 15129, 10, 15129, 2, 3, 0, '2018-08-22 02:50:11', '2018-08-25 08:18:00', '2018-10-24 02:11:46'),
(22, 3, 1, 1, 1, 2, '[1]', '', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123213}]', '2312', 15155200, 0, 15155200, 2, 3, 0, '2018-08-22 02:53:40', '2018-08-22 02:53:40', '2018-08-22 23:53:55'),
(23, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(42, 37, 1, 2, 1, 2, '[1,2,47]', '', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123}]', '123', 15129, 0, 15129, 2, 37, 0, '2018-08-26 20:37:25', '2018-08-26 20:37:25', '2018-10-24 02:11:46'),
(43, 37, 1, 2, 1, 2, '[]', '', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123}]', '123213', 15129, 15, 15129, 4, 37, 0, '2018-08-26 21:22:37', '2018-10-15 19:54:36', '2018-10-24 02:11:46'),
(44, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"qty\":123,\"unit_price\":10000},{\"detail\":\"buy new book\",\"qty\":123,\"unit_price\":10000}]', 'improve something for new staff update123', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-27 00:21:49', '2018-10-24 02:11:46'),
(45, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(46, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(47, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(48, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-08-27 03:51:46'),
(49, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(50, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(51, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(52, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-08-27 02:19:30'),
(53, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(54, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-08-27 02:18:53'),
(55, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(56, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(57, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(58, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(59, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(60, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(61, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(62, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(63, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(64, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(65, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(66, 1, 1, 2, 1, 2, '[1]', 'due to new staff update', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff update', 60000, 0, 60000, 2, 1, 0, '2018-08-23 20:32:00', '2018-08-23 20:32:00', '2018-10-24 02:11:46'),
(67, 37, 1, 2, 1, 2, '[1,2,23,49]', '123213', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123}]', '213213', 15129, 10, 16641.9, 1, 37, 0, '2018-08-26 23:20:51', '2018-09-06 01:23:43', '2018-10-24 02:11:46'),
(68, 1, 1, 1, 3, 2, '[1]', 'test adding payment again', '[{\"detail\":\"by new macbook\",\"amount\":12,\"unit_price\":100000},{\"detail\":\"buy new HDMI\",\"amount\":12,\"unit_price\":120000}]', '222Dear, i want to buy some devices to work updated', 2640000, 11, 2930400, 2, 1, 0, '2018-08-27 01:08:01', '2018-08-27 01:17:13', '2018-10-24 02:11:46'),
(69, 37, 1, 2, 1, 2, '[2,47]', '123', '[{\"detail\":\"123\",\"amount\":123,\"unit_price\":123}]', '123', 15129, 12, 16944.5, 2, 37, 0, '2018-08-27 03:49:49', '2018-08-27 03:49:49', '2018-10-24 02:11:46'),
(70, 23, 1, 3, 1, 2, '[1]', 'Test tao moi payment update', '[{\"detail\":\"Mua vali\",\"amount\":2,\"unit_price\":5200000}]', 'Mo ta chi tiet ve payment update', 10400000, 10, 11440000, 2, 23, 0, '2018-08-27 18:21:57', '2018-08-27 18:23:47', '2018-10-24 02:11:46'),
(71, 23, 1, 1, 1, 2, '[2]', '', '[]', 'tét validate', 70000, 0, 70000, 2, 23, 0, '2018-08-27 18:58:43', '2018-08-27 18:59:09', '2018-10-24 02:11:46'),
(72, 1, 1, 1, 1, 2, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":10,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":10,\"unit_price\":10000}]', 'improve something for new staff', 200000, 10, 220000, 2, 1, 0, '2018-08-27 21:51:33', '2018-08-27 21:51:33', '2018-10-24 02:11:46'),
(73, 1, 1, 1, 1, 0, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":10,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":10,\"unit_price\":10000}]', 'improve something for new staff', 200000, 10, 220000, 2, 1, 0, '2018-08-27 23:13:59', '2018-08-27 23:13:59', '2018-10-24 02:11:46'),
(74, 1, 1, 1, 1, 0, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":10,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":10,\"unit_price\":10000}]', 'improve something for new staff', 200000, 10, 220000, 2, 1, 0, '2018-08-27 23:16:01', '2018-08-27 23:16:01', '2018-10-24 02:11:46'),
(75, 1, 1, 1, 1, 0, '[]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":10,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":10,\"unit_price\":10000}]', 'improve something for new staff', 200000, 10, 220000, 3, 1, 0, '2018-08-27 23:20:53', '2018-10-15 20:03:26', '2018-10-24 02:11:46'),
(76, 1, 1, 1, 1, 0, '[1]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":10,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":10,\"unit_price\":10000}]', 'improve something for new staff', 200000, 10, 220000, 2, 1, 0, '2018-08-27 23:21:03', '2018-08-27 23:21:03', '2018-10-24 02:11:46'),
(77, 37, 1, 2, 3, 0, '[1,23]', '', '[{\"detail\":\"\",\"amount\":123,\"unit_price\":123}]', '123213', 15129, 10, 16641.9, 2, 37, 0, '2018-08-28 19:09:20', '2018-08-28 19:09:48', '2018-10-24 02:11:47'),
(78, 23, 1, 3, 1, 0, '[1,2,23]', 'Tesst websocket', '[{\"detail\":\"Mua them gi do nhi\",\"amount\":1,\"unit_price\":100000}]', 'chua co notification', 100000, 0, 100000, 2, 23, 0, '2018-08-30 03:23:47', '2018-08-30 03:23:47', '2018-10-24 02:11:47'),
(80, 1, 1, 1, 1, 0, '[]', 'due to new staff', '[{\"detail\":\"buy new mouse\",\"amount\":3,\"unit_price\":10000},{\"detail\":\"buy new book\",\"amount\":3,\"unit_price\":10000}]', 'improve something for new staff', 60000, 0, 60000, 3, 1, 0, '2018-08-31 01:38:05', '2018-10-15 20:00:45', '2018-10-24 02:11:47'),
(81, 37, 1, 2, 1, 0, '[]', '', '[{\"detail\":\"\",\"amount\":3123,\"unit_price\":123213},{\"detail\":\"\",\"amount\":31,\"unit_price\":123}]', '123', 384798000, 10, 423278000, 3, 37, 0, '2018-08-31 01:42:42', '2018-10-15 19:45:40', '2018-10-24 02:11:47'),
(82, 26, 1, 2, 1, 0, '[2,23]', 'Test socket', '[{\"detail\":\"Mua thi\\u1ebft b\\u1ecb test socket\",\"amount\":1,\"unit_price\":100000}]', 'Kiểm tra lại chất lượng sản phẩm trc khi mua', 100000, 0, 100000, 1, 26, 0, '2018-08-31 01:55:59', '2018-08-31 01:55:59', '2018-10-24 02:11:47'),
(83, 37, 1, 2, 1, 0, '[1,19]', '13', '[{\"detail\":\"\",\"amount\":111,\"unit_price\":123},{\"detail\":\"\",\"amount\":33,\"unit_price\":10000}]', '123213', 343653, 0, 343653, 2, 37, 0, '2018-09-05 02:08:58', '2018-09-05 02:13:42', '2018-09-14 02:51:45'),
(84, 37, 1, 2, 1, 0, '[]', '1212 1212 1212 1212 1212 1212 1212 1212 1212 1212 1212 1212', '[{\"detail\":\"\",\"amount\":100,\"unit_price\":10000},{\"detail\":\"\",\"amount\":12,\"unit_price\":10000}]', '1231', 1120000, 10, 1232000, 3, 37, 0, '2018-09-06 19:29:25', '2018-10-15 19:43:43', '2018-10-24 02:11:47'),
(85, 37, 1, 2, 1, 0, '[]', 'test', '[{\"detail\":\"\",\"amount\":1,\"unit_price\":100000}]', 'shopping', 100000, 10, 110000, 3, 37, 0, '2018-10-15 18:51:41', '2018-10-15 19:39:40', '2018-10-24 02:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `company_id`, `name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cash', NULL, 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(2, 1, 'Visa', NULL, 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(3, 1, 'Transfer by bank', NULL, 0, 1, NULL, '2018-08-14 14:39:42', '2018-10-24 02:11:47', '2018-10-24 02:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `post_space`
--

CREATE TABLE `post_space` (
  `post_space_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `attachment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Duong dan cua file dang json array',
  `liked_by` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Json format, id of user: [1,3,5,6,7]',
  `liked_count` int(10) DEFAULT NULL COMMENT 'Number of like',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `udpated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_space`
--

INSERT INTO `post_space` (`post_space_id`, `space_id`, `user_company_id`, `status`, `content`, `parent`, `attachment`, `liked_by`, `liked_count`, `created_by`, `udpated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 36, 123, 'test', NULL, 'test.docx', NULL, NULL, 1, NULL, '2018-08-22 22:30:05', '2018-10-24 02:11:47', '2018-08-29 19:55:32'),
(2, 2, 36, 123, 'fujierp', NULL, 'erp.docx', NULL, NULL, 1, NULL, '2018-08-22 22:32:17', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(3, 4, 36, 123, 'fujierp', NULL, 'erp.docx', NULL, NULL, 1, NULL, '2018-08-22 22:32:17', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(4, 3, 36, 123, 'fujierp', NULL, 'erp.docx', NULL, NULL, 1, NULL, '2018-08-22 22:32:17', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(5, 5, 36, 123, 'fujierp', NULL, 'erp.docx', NULL, NULL, 1, NULL, '2018-08-22 22:32:17', '2018-10-24 02:11:47', '2018-10-24 02:11:47'),
(6, 1, 37, 1, 'test', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529569.xlsx', NULL, NULL, 1, NULL, '2018-08-29 00:59:36', '2018-08-29 00:59:36', '2018-08-29 01:04:04'),
(7, 1, 37, 1, 'test', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529569.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:00:33', '2018-08-29 01:00:33', '2018-08-29 01:05:13'),
(8, 1, 37, 1, 'test', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529569.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:00:56', '2018-08-29 01:00:56', '2018-08-29 01:05:09'),
(9, 1, 37, 1, 'test', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529569.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:01:06', '2018-08-29 01:01:06', '2018-08-29 01:05:05'),
(10, 1, 37, 1, 'test', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529569.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:01:49', '2018-08-29 01:01:49', '2018-08-29 01:04:53'),
(11, 1, 37, 1, '12345', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529798.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:03:23', '2018-08-29 01:03:23', '2018-08-29 01:04:36'),
(12, 1, 37, 1, '123456', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529829.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:03:56', '2018-08-29 01:03:56', '2018-08-29 01:04:43'),
(13, 1, 37, 1, '123123', 0, './uploads/2018/8/uoc nguyen toi sao_la hoang-31-5-done_1535529922.xlsx', NULL, NULL, 1, NULL, '2018-08-29 01:05:27', '2018-08-29 01:05:27', '2018-09-13 23:09:08'),
(14, 1, 37, 1, '123213213', 0, './uploads/2018/8/fujierpdb_1535541225.pdf', NULL, NULL, 1, NULL, '2018-08-29 04:13:47', '2018-08-29 04:13:47', '2018-09-13 23:09:43'),
(15, 1, 37, 1, '12313213<b>1321333asd</b>', 0, './uploads/2018/8/event_20171013_1_28_0 (1)_1535593923.xlsx', NULL, NULL, 1, NULL, '2018-08-29 18:52:11', '2018-08-29 18:52:11', '2018-09-13 23:10:19'),
(16, 1, 37, 1, '213123213', 0, './uploads/2018/8/bug 2_1535596473.png', NULL, NULL, 1, NULL, '2018-08-29 19:34:36', '2018-08-29 19:34:36', '2018-10-24 02:11:48'),
(17, 1, 37, 1, '<b>123123123 123123</b><i style=\"\"><b>123213 123123</b>123123</i>', 0, './uploads/2018/8/bug 2_1535596752.png', NULL, NULL, 1, NULL, '2018-08-29 19:39:16', '2018-08-29 19:39:16', '2018-10-24 02:11:48'),
(18, 1, 23, 1, 'Hoc tieng nhat qua video', 0, './uploads/2018/8/50 bai nghe tieng nhat n4 co ban_1535625910.jpg', NULL, NULL, 1, NULL, '2018-08-30 03:45:27', '2018-08-30 03:45:27', '2018-10-24 02:11:48'),
(19, 1, 23, 1, '<b>Boi dam va khong bat buoc upload</b>', 0, './uploads/2018/8/hien thi log git duoi dang do thi_1535626015.png', NULL, NULL, 1, NULL, '2018-08-30 03:47:07', '2018-08-30 03:47:07', '2018-10-24 02:11:48'),
(20, 1, 23, 1, 'sfg', 0, './uploads/2018/8/lê ngọc đăng 1988_1535626120.html', NULL, NULL, 1, NULL, '2018-08-30 03:48:48', '2018-08-30 03:48:48', '2018-10-24 02:11:48'),
(21, 1, 23, 1, 'Tại sao phải yêu cầu upload file', 0, './uploads/2018/9/50 bai nghe tieng nhat n4 co ban_1536053804.jpg', NULL, NULL, 1, NULL, '2018-09-04 02:36:56', '2018-09-04 02:36:56', '2018-10-24 02:11:48'),
(22, 1, 37, 1, '234', 0, './uploads/2018/9/40117404_1013040788878249_6290838959228452864_n_1536206681.jpg', NULL, NULL, 1, NULL, '2018-09-05 21:04:43', '2018-09-05 21:04:43', '2018-10-24 02:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `project_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `company_id`, `project_name`, `description`, `start_date`, `end_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Fuji ERP', 'Fuji internal', '2018-08-24 10:00:00', '2018-08-25 18:00:00', 2, 1, 1, '2018-08-23 23:10:47', '2018-09-05 20:26:33', '2018-10-24 02:11:48'),
(2, 1, 'Winner', 'cho moi nguoi', '2018-08-24 10:00:00', '2018-08-25 18:00:00', 2, 1, 2, '2018-08-23 23:10:57', '2018-08-26 23:45:09', '2018-10-24 02:11:48'),
(3, 1, 'Data Artist', 'AI Project', '2018-05-24 06:25:26', NULL, 0, 1, NULL, '2018-08-23 19:23:36', '2018-10-24 02:11:48', '2018-10-24 02:11:48'),
(4, 1, 'A', 'A', '2018-08-23 08:00:00', '2018-09-28 16:00:00', 1, 1, 0, '2018-08-23 19:23:36', '2018-08-24 02:05:50', '2018-09-18 21:15:42'),
(5, 1, 'C', 'B', '2018-08-28 01:00:00', '2018-09-02 11:00:00', 1, 1, 8, '2018-08-24 03:30:54', '2018-08-27 18:56:26', '2018-09-18 21:15:40'),
(6, 1, 'Tét thoi ma', 'B', '2018-08-28 01:00:00', '2018-08-29 09:00:00', 1, 1, 1, '2018-08-27 18:15:21', '2018-08-27 18:15:29', '2018-09-18 21:15:46'),
(7, 1, 'CPU', 'C', '2018-08-28 17:00:00', '2018-10-06 16:59:00', 1, 8, 0, '2018-08-27 18:56:20', '2018-08-27 18:56:20', '2018-09-18 21:15:51'),
(8, 1, 'du an 3', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 19:20:49', '2018-08-27 19:20:49', '2018-10-24 02:11:49'),
(16, 1, 'du an 7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:28', '2018-08-27 20:56:28', '2018-09-18 21:17:22'),
(17, 1, 'du fan ds7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:36', '2018-08-27 20:56:36', '2018-08-30 20:55:59'),
(18, 1, 'dud fan ds7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:38', '2018-08-27 20:56:38', '2018-09-18 21:15:55'),
(19, 1, 'Data Artist2', 'web ban hang update', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 23, '2018-08-27 20:56:41', '2018-08-27 21:26:58', '2018-09-18 21:16:10'),
(20, 1, 'dud sfdan dsf7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:46', '2018-08-27 20:56:46', '2018-09-18 21:16:36'),
(21, 1, 'dud sfdan fdsf7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:48', '2018-08-27 20:56:48', '2018-09-18 21:16:41'),
(22, 1, 'dud sfddan fdsf7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:50', '2018-08-27 20:56:50', '2018-09-18 21:16:44'),
(23, 1, 'dud ssfddan fdsf7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 20:56:52', '2018-08-27 20:56:52', '2018-09-18 21:16:47'),
(25, 1, 'F', 'F', '2018-08-27 17:00:00', '2018-08-28 16:59:00', 1, 8, 0, '2018-08-27 21:07:16', '2018-08-27 21:07:16', '2018-09-18 21:16:58'),
(27, 1, 'du an 10', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-27 23:27:32', '2018-08-27 23:27:32', '2018-09-18 21:17:06'),
(28, 1, 'du an 100', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-28 02:57:09', '2018-08-28 02:57:09', '2018-09-18 21:17:13'),
(29, 1, 'G', 'G', '2018-08-27 17:00:00', '2018-08-28 16:59:00', 1, 8, 0, '2018-08-28 02:58:09', '2018-08-28 02:58:09', '2018-09-18 21:15:33'),
(30, 1, 'Tao moi project', 'dự án về app tin tức', '2018-08-29 17:00:00', '2018-09-12 16:59:00', 1, 23, 0, '2018-08-28 18:35:33', '2018-08-28 18:35:33', '2018-09-18 21:16:28'),
(31, 1, 'dud ssfddanf fdsf7', 'web ban hang', '2018-08-29 00:00:00', '2018-08-30 00:00:00', 1, 1, 0, '2018-08-28 18:50:32', '2018-08-28 18:50:32', '2018-09-18 21:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `reason_type`
--

CREATE TABLE `reason_type` (
  `reason_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reason_type`
--

INSERT INTO `reason_type` (`reason_type_id`, `company_id`, `name`, `description`, `status`, `created by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Change Request', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49'),
(2, 1, 'Bugs', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49'),
(3, 1, 'Incident', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49'),
(4, 1, 'IT Support', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49'),
(5, 1, 'Event Preparation', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49'),
(6, 1, 'Other', NULL, 0, 1, NULL, '2018-08-14 14:39:41', '2018-10-24 02:11:49', '2018-10-24 02:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `start_working_at` datetime NOT NULL,
  `end_working_at` datetime NOT NULL,
  `lunch_time` float DEFAULT NULL,
  `dinner_time` float DEFAULT NULL,
  `break_time` float DEFAULT NULL,
  `total_hours` float DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci COMMENT 'Json Format [{"project_id":1,"project_name":"Winner","hours":4.5,"done":"Create USER API","doing":"Create PAYMENT API","todo":"Create VACATION API","issue":"Must learn new programming language","note":""},{"project_id":2,"project_name":"Treco","hours":4.5,"done":"Create USER API","doing":"Create PAYMENT API","todo":"Create VACATION API","issue":"Must learn new programming language","note":""}]',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `user_company_id`, `report_date`, `start_working_at`, `end_working_at`, `lunch_time`, `dinner_time`, `break_time`, `total_hours`, `detail`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '2018-08-24 07:59:11', '2018-08-24 08:10:00', '2018-08-24 17:15:00', 3.25, 0, 0, 5.83333, '[]', 1, 0, 0, '2018-08-24 01:33:43', '2018-08-24 02:06:27', '2018-08-30 02:16:30'),
(2, 1, '2018-08-24 07:59:11', '2018-08-24 08:10:00', '2018-08-24 17:15:00', 3.25, 0, 0, 5.83333, '[]', 1, 0, 0, '2018-08-24 01:40:20', '2018-08-30 02:58:27', '2018-10-24 02:11:50'),
(3, 1, '2018-08-24 07:59:11', '2018-08-24 08:10:00', '2018-08-24 17:15:00', 1.25, 0, 0, 7.83333, '[{\"project_id\":1,\"project_name\":\"Winner\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"},{\"project_id\":2,\"projectt_name\":\"Treco\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"}]', 1, 0, 0, '2018-08-24 01:43:06', '2018-08-24 01:43:06', '2018-10-24 02:11:50'),
(4, 1, '2018-08-24 07:59:11', '2018-08-24 08:10:00', '2018-08-24 17:15:00', 1.25, 0, 0, 7.83333, '[{\"project_id\":1,\"project_name\":\"Winner\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"},{\"project_id\":2,\"projectt_name\":\"Treco\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"}]', 1, 0, 0, '2018-08-24 01:44:18', '2018-08-24 01:44:18', '2018-10-24 02:11:50'),
(5, 1, '2018-08-24 07:59:11', '2018-08-24 08:10:00', '2018-08-24 17:15:00', 1.25, 0, 0, 7.83333, '[{\"project_id\":1,\"project_name\":\"Winner\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"},{\"project_id\":2,\"projectt_name\":\"Treco\",\"hours\":4.5,\"done\":\"Create USER API\",\"doing\":\"Create PAYMENT API\",\"todo\":\"Create VACATION API\",\"issue\":\"Must learn new programming language\",\"note\":\"\"}]', 1, 0, 0, '2018-08-29 23:47:39', '2018-08-29 23:47:39', '2018-10-24 02:11:50'),
(6, 23, '2018-08-29 17:00:00', '2018-08-30 01:00:00', '2018-08-30 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":\"1\",\"project_name\":\"\",\"hours\":\"1\",\"done\":\"sdfdsf\",\"doing\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-08-29 23:48:35', '2018-08-29 23:48:35', '2018-10-24 02:11:50'),
(7, 23, '2018-08-29 17:00:00', '2018-08-30 01:00:00', '2018-08-30 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":\"2\",\"project_name\":\"\",\"hours\":\"1\",\"done\":\"\",\"doing\":\"- lam tai lieu du an\",\"todo\":\"- code login\",\"issue\":\"tieng nhat\",\"note\":\"\"}]', 1, 0, 0, '2018-08-29 23:49:08', '2018-08-29 23:49:08', '2018-10-24 02:11:50'),
(8, 23, '2018-08-29 17:00:00', '2018-08-30 01:00:00', '2018-08-30 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":\"2\",\"project_name\":\"\",\"hours\":\"1\",\"done\":\"\",\"doing\":\"- lam tai lieu du an\",\"todo\":\"- code login\",\"issue\":\"tieng nhat\",\"note\":\"\"}]', 1, 0, 0, '2018-08-29 23:49:38', '2018-08-29 23:49:38', '2018-10-24 02:11:50'),
(9, 23, '2018-08-27 17:00:00', '2018-08-30 01:00:00', '2018-08-30 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":3,\"project_name\":\"\",\"hours\":1,\"done\":\"lam gi do\\r\\n- thu enter thi no ra sao\",\"doing\":\"lam gi do2\",\"todo\":\"lam gi do 3\",\"issue\":\"\",\"note\":\"luu y add them vao project\"},{\"project_id\":2,\"project_name\":\"\",\"hours\":4,\"done\":\"- Login\",\"doing\":\"- Logout\",\"todo\":\"- Sending email\",\"issue\":\"noting\",\"note\":\"tote\"}]', 1, 0, 0, '2018-08-29 23:51:42', '2018-08-30 02:45:41', '2018-10-24 02:11:50'),
(10, 23, '2018-08-29 17:00:00', '2018-08-30 01:00:00', '2018-08-30 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":0,\"project_name\":\"\",\"hours\":1.5,\"done\":\"done gi\",\"doing\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-08-29 23:54:52', '2018-08-29 23:54:52', '2018-10-24 02:11:50'),
(11, 23, '2018-08-29 17:00:00', '2018-08-30 02:15:00', '2018-08-30 11:00:00', 1, 0, 0, 7.75, '[{\"project_id\":0,\"project_name\":\"\",\"hours\":1.5,\"done\":\"dieu toa\",\"doing\":\"phet nat\",\"todo\":\" thoi nay\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-08-30 00:41:34', '2018-08-30 00:41:34', '2018-10-24 02:11:50'),
(12, 23, '2018-08-30 17:00:00', '2018-08-31 01:00:00', '2018-08-31 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":2,\"project_name\":\"\",\"hours\":1,\"done\":\"- phan trang du lieu\",\"doing\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-08-30 20:42:00', '2018-08-30 20:42:00', '2018-10-24 02:11:50'),
(13, 23, '2018-08-30 17:00:00', '2018-08-31 01:00:00', '2018-08-31 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":2,\"project_name\":\"\",\"hours\":1,\"done\":\"1sfsfsd\",\"doing\":\"sdfsdf\",\"todo\":\"sdfsdf\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-08-30 20:51:55', '2018-08-30 20:51:55', '2018-10-24 02:11:50'),
(14, 23, '2018-09-09 17:00:00', '2018-09-10 01:00:00', '2018-09-10 10:15:00', 1, 0, 0, 8.25, '[{\"project_id\":2,\"project_name\":\"\",\"hours\":4,\"done\":\"trao \\u0111\\u1ed5i v\\u1edbi kh\\u00e1ch, \\r\\ndeploy\",\"doing\":\"estimate time\",\"todo\":\"l\\u00e0m design\",\"issue\":\"\",\"note\":\"\"},{\"project_id\":1,\"project_name\":\"\",\"hours\":4,\"done\":\"verify, \",\"doing\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1, 0, 0, '2018-09-10 07:10:11', '2018-09-10 07:10:11', '2018-10-24 02:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `room_meeting`
--

CREATE TABLE `room_meeting` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room_meeting`
--

INSERT INTO `room_meeting` (`id`, `company_id`, `name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Snack Room', NULL, 0, 1, NULL, '2018-08-14 14:39:43', '2018-10-24 02:11:50', '2018-10-24 02:11:50'),
(2, 1, 'phong sinh hoat 3', 'cho moi nguoi', 2, 1, 2, '2018-08-14 14:39:43', '2018-08-26 23:45:27', '2018-10-24 02:11:50'),
(3, 1, 'Big Room 2', NULL, 0, 1, NULL, '2018-08-14 14:39:43', '2018-10-24 02:11:50', '2018-10-24 02:11:50'),
(7, 1, 'a a', 'B b', 0, 1, 0, '2018-08-16 22:12:09', '2018-08-16 22:12:09', '2018-10-24 02:11:51'),
(8, 1, 'Room 1', 'Description 1', 0, 1, 0, '2018-08-16 23:08:25', '2018-08-16 23:08:25', '2018-10-24 02:11:51'),
(10, 1, 'Room 2', 'Description 1', 0, 1, 0, '2018-08-16 23:19:24', '2018-08-16 23:19:24', '2018-10-24 02:11:51'),
(13, 1, 'phong sinh hoat', 'cho moi nguoi', 1, 1, 0, '2018-08-26 23:41:39', '2018-08-26 23:41:39', '2018-10-24 02:11:51'),
(15, 1, 'phong sinh hoat 2', 'cho moi nguoi', 1, 1, 0, '2018-08-26 23:43:58', '2018-08-26 23:43:58', '2018-10-24 02:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE `space` (
  `space_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `space_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`space_id`, `user_company_id`, `company_id`, `space_name`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Training Document', 'Training Document', 1, 1, NULL, '2018-08-19 21:34:23', '2018-10-24 02:11:51', '2018-10-24 02:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `company_id`, `department_id`, `name`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Remand', NULL, 1, NULL, '2018-08-19 22:07:36', '2018-10-24 02:11:51', '2018-10-24 02:11:51'),
(2, 1, '[1]', 'Approver Manager', NULL, 1, NULL, '2018-08-19 22:07:36', '2018-10-24 02:11:51', '2018-10-24 02:11:51'),
(3, 1, '[2,7]', 'Approver BO, Finance', NULL, 1, NULL, '2018-08-19 22:07:36', '2018-10-24 02:11:51', '2018-10-24 02:11:51'),
(4, 1, '[1]', 'Approver CEO', NULL, 1, NULL, '2018-08-19 22:07:36', '2018-10-24 02:11:51', '2018-10-24 02:11:51'),
(5, 1, NULL, 'Approved', NULL, 1, NULL, '2018-08-19 22:07:37', '2018-10-24 02:11:51', '2018-10-24 02:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_company`
--

CREATE TABLE `user_company` (
  `user_company_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Multiple department with format: [12,35,6,7]',
  `main_department_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '-1',
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `start_date` datetime DEFAULT NULL COMMENT '1 - active, 2 - inactive',
  `end_date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL COMMENT '0 - Female, 1 - Male',
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_company`
--

INSERT INTO `user_company` (`user_company_id`, `company_id`, `department_id`, `main_department_id`, `level_id`, `group_id`, `first_name`, `last_name`, `login_name`, `password`, `password_reset`, `description`, `birthday`, `avatar`, `start_date`, `end_date`, `status`, `email`, `skype`, `phone`, `gender`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '[1,2,3,4,5,6,7]', 1, 1, -1, 'Long', 'Phạm', 'long.pham2', 'ZPoUsbu7Nydfj7QXnjH7MnKcQCYF0P6wiQqm+rUtL7KoeNnFcRvQkfXt6rTJBSKHukJIeux06EVl1wWt9g5Bqw', NULL, '', '1988-06-05 17:00:00', '', '2017-12-11 17:00:00', NULL, 1, 'long.pham2@fujitechjsc.com', '', '', 0, '', '2018-08-22 15:24:28', '2018-09-05 20:54:26', '2018-10-24 02:11:52'),
(2, 1, '[1]', 1, NULL, -1, 'Kato', 'Noriko', 'noriko.kato', 'QPt4r6XYdGmNdTt7UCJuugq3LFQMciQ1KZNpZCuR0yEHKuXGovNgOexrr3GqExov5m3JvCL6Uw2uj675+Oo+7w', NULL, '', NULL, '', NULL, NULL, 1, 'long.pham2@fujitechjsc.com', '123213', '0123456789', 0, NULL, '2018-08-22 15:24:28', '2018-08-31 01:15:05', '2018-10-24 02:11:52'),
(3, 1, '', 0, 0, -1, 'Long', '', 'long.pham2', 'RSiCoWbi4UCh76lQzJYLxXDyU4AgIWt/9YVkQu2btYMedJJBuCG/nXF7LWIId7n71o++jJsSEjPjyAqn/t3AHg', NULL, '', '1988-12-12 00:00:00', '', '1970-01-01 00:00:00', NULL, 1, 'long.pham2@fujitechjsc.com', '', '', 0, '', '2018-08-22 15:24:28', '2018-08-23 19:48:50', '2018-10-24 02:11:52'),
(4, 1, NULL, NULL, NULL, -1, 'Kiên', 'Bùi Hoàng', 'kien.bui', 'VRGgNrrDqQIkiWTfXcqb7vAmfzI2lVmUj4MOflFz2gS4A5cEwlNFCe5SGKyXfGThPwagQkDBYN5idFbf/r6Ipw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'kien.bui@fujitechjsc.com', 'aaasimov', '01684074 469', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:52', '2018-10-24 02:11:52'),
(5, 1, NULL, NULL, NULL, -1, 'Hoàng', 'Lê Nhật', 'hoang.le', 'p9iLCdB78kGEj84DxCniyBB4ys6Bvrah+PqqlP5iRD8YdO4bI3iZjTbI6O7qzOKpAy/0vdo+89CjCHBPj1KpFg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hoang.le@fujitechjsc.com', 'noblechapter', '01222223 689', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(6, 1, NULL, NULL, NULL, -1, 'Toàn', 'Nguyễn Văn', 'toan.nguyen', 'bLu6mMkgVSC52LGTXZoGoVMpFoOk0G6LZuhN4IkolLPitRBDtH6qgJyC4QJXrH0AlANJXJdB9ag+c1bud5k/rQ', NULL, '', NULL, '', NULL, NULL, 1, 'toan.nguyen@fujitechjsc.com', '123213', '01672533 928', 0, NULL, '2018-08-22 15:24:28', '2018-08-22 21:29:34', '2018-10-24 02:11:53'),
(7, 1, NULL, NULL, NULL, -1, 'Diệp', 'Nguyễn Ngọc', 'diep.nguyen', 'XO1obpUJ+Eynf5T8wH2rSGrz4ybLcSQQetybLsSrluCkdmAquUDndWDeQRGX35gIBJAoDkX6SdJBTlNCoVC3OA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'nguyenhoaquynh211@gmail.com', 'ngocdiep733', '0916820 812', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(8, 1, NULL, NULL, NULL, -1, 'Long', 'Phạm Quang', 'long.pham', 'By0Csx1A/lztqcDkUA+KZ1K87ez362/upnDE92Ur5Vc3bY+Tepn6g13WRC40eThBhbDlnxe+C5ZAoaFe9/zbbw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'long.pham@fujitechjsc.com', 'zerokavn', '0915688 563', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(9, 1, NULL, NULL, NULL, -1, 'Minh', 'Phạm Ngọc', 'minh.pham', 'sqrz8TuiF/B1A0QbI3PIN44BO58Y0kYGOqaCddttiM5hN1SsSHl/Lpz6Jl9ze+DU8LNUT1n/t3mSgQY6kEzlbQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'minh.pham@fujitechjsc.com', 'minh.pham@fujitechjsc.com', '0934224 123', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(10, 1, NULL, NULL, NULL, -1, 'Thuý', 'Trần Thị', 'thuy.tran', '+CH8zxDABGBzk5HxOY+24HDCxqoTqBsAlBks4r11pJh7LR3QjiAG/Nj+HlYE1zfu3qSJFsjmrpSuWLb9hkGcmA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'thuy.tran@fujtechjsc.com', 'thuy.tran@fujtechjsc.com', '01205288 558', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(11, 1, NULL, NULL, NULL, -1, 'Trang', 'Trần Quỳnh', 'trang.tran', '18X5DIbpB+rcGcrzg/19BUU/jqcncdDOOOWDnDql2z55DznKXGWovrVCyr6ArsAbLN2BHdiBndAegUWp31bI6A', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'trang.tran@fujitechjsc.com', NULL, '0986439 951', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(12, 1, NULL, NULL, NULL, -1, 'Hiếu', 'Tạ Trung', 'hieu.ta', 'BnB9ksm6MV6YUAp5W1xNAWglkoBn+6yDbSFMYXbFo6eb7oRt0tZ8DRu7qmD/XsaRqjFLJge92tN6Ce1JKxneFw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hieu.ta@fujitechjsc.com', NULL, '01689605 206', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(13, 1, NULL, NULL, NULL, -1, 'Uyên', 'Trần Thanh', 'uyen.tran', 'r+OnflaItSY1QYjEy7oMyaBR0spP9exVB9xKQN0QLHZUKvO2sIbjz+Li0rErCfGJ2tNhYZlOL7WCGoTL22442A', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'tranthanhuyen1995@gmail.com', NULL, '01288239 888', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(14, 1, NULL, NULL, NULL, -1, 'Dohi', 'Misaki', 'misaki.dohi', '/c7CfxlDqSvB8xFqS5I3fS15Oe+IEOUyy+XRbCn6rX19vxHN5Q46U8RAuXN+jRsL0c4+Ms//j8Fx6yemrY7kcg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'misaki.dohi@fujitechjsc.com', NULL, '0969788 305', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(15, 1, NULL, NULL, NULL, -1, 'Diễn', 'Trần Ngọc', 'dien.tran', 'vxgJ6GtUpm5sNTBmcTjSNBuK4aIPHidKTK8eM2Db852w8ZHnArI0e3F9qzb0K4nE4ZdEH9xylWW7nTxeXsf9kQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dien.tran@fujitechjsc.com', NULL, '0981437 159', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(16, 1, NULL, NULL, NULL, -1, 'Khánh', 'Vũ Việt', 'khanh.vu', '7ZWKkYwmRbnlDHO/Kfa4zDTPL1BxcHtcYJ4+lopOnL7KNaa4OuAdafJ/BGk3zAVfkFNf7tSTZ3r0lefbx5MKEQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'khanh.vu@fujitechjsc.com', NULL, '01638994 969', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(17, 1, NULL, NULL, NULL, -1, 'Hưng', 'Nghiêm Dương', 'hung.nghiem', 'rTplIIkO8NNqPh/dESXC0FZx+iw1JQZrhozlQAOokLOcnTVoNB4S6NcAxVhNEDnJbEDbtrZQICiNR7choQGjFA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hung.nghiem@fujitechjsc.com', NULL, '0988020 189', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(19, 1, '[1]', NULL, NULL, 1, 'Anh', 'Trần Phan', 'anh.tran', 'wX0PmMcNlNqZcc6CgMieWS/n1cPO+/2uc/m3ylgYWaOD153UPeoo2z4pYy9giW6f7jZxyYwPv7mAQOheJoYnjA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'anh.tran@fujitechjsc.com', NULL, '01649609 913', NULL, NULL, '2018-08-22 15:24:28', '2018-08-31 01:09:19', '2018-10-24 02:11:53'),
(20, 1, NULL, NULL, NULL, -1, 'Anh', 'Lê Thuỳ', 'lt.anh2904', 'K9/FdK3RarAezMctWZYU4h8zBaES+b5EVQtVin6cVuuBApOPFBYyWeaba7ZS0b/OqJtMXvaX9egPEdAuKyzJ2A', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'lt.anh2904@gmail.com', NULL, '0974491 882', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(21, 1, NULL, NULL, NULL, -1, 'Hoàng', 'Lã Nhật', 'hoang.la', 'qUlvQdjxt7CfMuNvKW1Z42tDEDNquS/CbpmnxZjO36Vx0QoIAyfX2+AXj1JiFJytDo4FUkYTQ6kSI26vfajzIg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'lnhoang2010@gmail.com', NULL, '0939899 100', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(22, 1, NULL, NULL, NULL, -1, 'Linh', 'Đinh Diệu', 'linh.dinh', 'uCMutN2siJQvkpfVAvFlxRsgbVVoAlYo1Abxllv1oZKJlKqmmADt/P3V8T+kdEqHKRV+KglZYTujkFa01HTzAg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dinhdieulinh2610@gmail.com', NULL, '0962137 809', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(23, 1, '[1,3]', 3, 1, 1, 'Việt', 'Nguyễn Tiến', 'viet.nguyen', 'xdfW2V52R+t6DSaB1XjKOXB38Qyx2w4s5zEF2v87Q/WqpSqh8nCgWzZgk7YrLtMOMbMuDww7ShcFWjzfl/7Xpw', NULL, '', '1990-10-10 17:00:00', 'avatar_23.jpg', '2017-07-02 17:00:00', '0001-12-31 16:53:20', 1, 'viet.nguyen@fujitechjsc.com', 'tienvietnguyen1110', '0986901 110', 0, '千葉県松戸市松戸1307-1', '2018-08-22 15:24:28', '2018-10-04 03:08:58', '2018-10-24 02:11:53'),
(24, 1, NULL, NULL, NULL, -1, 'Thảo', 'Đỗ Thị Phương', 'thao.do', 'VEJGaYXry/WGDme7OtV9FBOWaXYzmga5r138GFaDGjexmzARx8TMDmb7SfpDA5e1a0+j0gmiESxEX55N4VqhYw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'thao.do@fujitechjsc.com', 'phuongthao_dt86', '0943539 986', NULL, NULL, '2018-08-22 15:24:28', '2018-08-30 18:34:08', '2018-10-24 02:11:53'),
(25, 1, NULL, NULL, NULL, -1, 'Trâm', 'Đỗ Thị Ngọc', 'tram.do', 'P0mTdtpUnvXtd8w57t5nEIPr27azsBf4ZJEE++fm8XJWPnxU6gWoV4C4pKeT8NsNVaERIefmw25V14xUjj/zvA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'tram.do@fujitechjsc.com', 'tramlph', '1677484920', NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:53', '2018-10-24 02:11:53'),
(26, 1, NULL, NULL, NULL, -1, 'Tuấn', 'Lê Minh', 'tuan.le', 'xKVA4REHxeAxWZAJJV+SvYsKJf01Asdp7uMTIgPbfDxxdcacWxYGctITCdu1eHL74bPitpmJxd4K/1jMjpCaMg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'tuan.le@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-08-31 01:21:01', '2018-10-24 02:11:53'),
(27, 1, NULL, NULL, NULL, -1, 'hung.nguyen', NULL, 'hung.nguyen', '2udxolHRz4w80LJvKzDDMQ8sDPsTq4FJTV89sStAnBuQmMV9dSfoTqbN+VLATZLAnRhwyvAQNd8IxprN1CSDtg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hung.nguyen@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(28, 1, NULL, NULL, NULL, -1, 'ha.ha', NULL, 'ha.ha', '5fiRQaCMlyI3ZRcrWUYBrqZaPO/aYD8hGPH1jjs5X1joL/RBcpZwQ1PaQR/3rAsg/vCR0om6X4dXvlynYnThBA', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ha.ha@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(29, 1, NULL, NULL, NULL, -1, 'thuong.nguyen', NULL, 'thuong.nguyen', '5+LvcTmjkwRCUoaA5j1e6K94s6WW6k89fA7zkALzV2HyXR2Z61MDLDeo9aSqYFMiO8ebq45CLhR8fP2/8jW3yg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'thuong.nguyen@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(30, 1, NULL, NULL, NULL, -1, 'hoa.nguyen', NULL, 'hoa.nguyen', 'lLEDt3hbod2helTYh9b18jDFRxkG94v2YsBYqCp4tIpfC+iwoObEtrB5rrMuZmzBBZ4asyX4jriiBwzrm15Niw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hoa.nguyen@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(31, 1, NULL, NULL, NULL, -1, 'ha.nguyen', NULL, 'ha.nguyen', '4+lGfAh9xzqUWy8o1l31lGou0qklhjcPRTkSI8TeLdLLU276WwhMWjzdD6su2qnYQqSkh5HAfGg3PXKcRjlN8g', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ha.nguyen@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(32, 1, NULL, NULL, NULL, -1, 'hibi.yasuamasa', NULL, 'hibi.yasuamasa', 'xmAamMbz6IFaJO91h+/tfv4JPNrTWhIneI6HMNYS45MDI9mIOwGl5NN/sINo4kp9A9wBgfnMOHLywQIlLufK2w', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hibi.yasumasa@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(33, 1, NULL, NULL, NULL, -1, 'hieu.khong', NULL, 'hieu.khong', '5csL65U1nBHPSG8ExUbmKWqMWYLWMSz239t5e2Y4ANyQhuQsxtg8pOXMyeTk3iUMteD4imkL3Ga5/2MDKOT03Q', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hieu.khong@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(34, 1, NULL, NULL, NULL, -1, 'anh.nguyen', NULL, 'anh.nguyen', '0qOHYg+QehD9UVMAxWsn6BaX61KiiqUFss0hSL9k88Mt6LvmWAzLr0ZYR5ceWDWDxaSqinKShyLSHRn+p415iQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'anh.nguyen@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(35, 1, NULL, NULL, NULL, -1, 'tuan.chu', NULL, 'tuan.chu', '87sUB48QTBdmC5BWNimNbzYsNsQ/1N9cr0QlfHH054GE8XwDStSV6xmX4E+wPSfuXxI7pU3QKao4UwIrqri0pQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'tuan.chu@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-08-22 23:11:49'),
(36, 1, NULL, NULL, NULL, -1, 'thuynt', NULL, 'thuynt', 'igmeV0yrMpbyNZHj3+t/KDgnQbwBvU0y0o9YlDXa6GKCGtYfRvn4AA+ltcMGMfR6ahdhlR5U9oNLCiZvFrA1og', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'thuynt@fujitechjsc.com', NULL, NULL, NULL, NULL, '2018-08-22 15:24:28', '2018-10-24 02:11:54', '2018-10-24 02:11:54'),
(37, 1, NULL, NULL, 2, 1, 'Đạm', 'Lê Xuân ', 'dam.le', '0uOLisIhJfbh3SunVL/wX8fl8ic/Z99uYbjIg1ZFKOs92TvXUpO43LLWauaihdbyxVa1mr90EcsRNCuCK1iOzw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dam.le@fujitechjsc.com', NULL, '0918484 638', NULL, NULL, '2018-08-22 17:24:33', '2018-08-29 21:33:16', '2018-10-24 02:11:54'),
(38, 1, '', 0, 0, -1, 'Test', 'Test 2', 'test', 'i6Sa0ABymxk925+RUR1uFsdFqr1TEESVDtNysWyE6PPjNmwSzYKhEBYkR2fdxx4WUNCliCu5Ww5RlVXKI2OVjg', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test@fujitechjsc.com', '', '', 0, NULL, '2018-08-22 23:54:03', '2018-08-22 23:54:03', '2018-08-23 00:50:46'),
(39, 1, '', 0, 0, -1, 'Test', 'Test 2', 'test2', 'gFccjYVRUz+kRa7WgvpHqUtTvXkkcp7iUpG8FlPlwa1b781/55hdMYm+qe7izxRp2kAIYFaW6Am1rut55byAVw', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test2@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 00:20:13', '2018-08-23 00:20:13', '2018-09-06 01:37:18'),
(40, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'test1', 'mSNpmQbq16nGO5GalAYZXPkk4nNjoe5pJe1+f7syXWw3Cx8PxyDHiHHU8HGbWWhDHB+oEodaBLtZkpYYhAqWlg', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test1@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 01:40:43', '2018-08-23 01:40:43', '2018-10-24 02:11:54'),
(41, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'test331', '1CNTnD2wc84QDbTrPiLqgp3Rd/x9LAQCaYSgS2wSu0O/gtnmvE4/cOatROHoPHEdb6zinE48b75vvl0isAS39g', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test1111@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:33:55', '2018-08-23 18:33:55', '2018-10-24 02:11:54'),
(42, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'test3311111', 'Gg00dSqqgMX8Q2jeMMIEB0ANnCDInGmJxj0Asvfxr3ffhllhZpjOjEDanz3I1Z1/gpy2dFTAqIUYzSAtIUv1FQ', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test11122221@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:34:03', '2018-08-23 18:34:03', '2018-08-31 01:26:15'),
(43, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'test33111111', '5PL9GCRrs0eKjP4WRjLwLJ6OcKxtUbipHQLkYszh/nxXMu9M9gF617dVwq6/acTMYyNS/cqF6pPtsC9PpYxasw', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test111222121@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:34:27', '2018-08-23 18:34:27', '2018-10-24 02:11:54'),
(44, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'tes1t33111111', '0K7EFh1m6Eg9u4Ym9Dyr5nVewWbcFQgugrhRUfAVZfUMRjEcqDBY7sRkSg/8408u6woNown31wkjeR7LG9ZdCA', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test1112212121@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:34:34', '2018-08-23 18:34:34', '2018-10-24 02:11:54'),
(45, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'tes1t3311111111', 'wSKyTHahNumQ4yc/P94udBCi0BgE7g2cX8UGC0IwSc7umxQicNJDmYL/eNY+fw4Yy6BfwCBq6Xiw7Avp1FVXFQ', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test111221212111@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:35:01', '2018-08-23 18:35:01', '2018-08-28 20:12:28'),
(46, 1, '', 0, 0, -1, 'Test', 'Test 2 33', 'tes1t33111111111', 'wuYM80byjv+UqM+oUrLCOR41EpYdGjf+aOnqeY6JztfhZMLGro1C0Jk3s0Q7Pdm1ADisf3WwxSHgGAcKFxwH+A', NULL, '', NULL, '', '2018-01-02 05:00:00', NULL, 0, 'test1112212112111@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 18:35:07', '2018-08-23 18:35:07', '2018-10-24 02:11:54'),
(47, 1, '', 0, 3, 2, 'Teertst', 'Trtest 2', 'teiiis123453t', 't1bQxWECubLCn0evzprpoYfTZdp+trXkZBoCa0Z2PuZVeD0hZzOOvaxtuZ/ChncHp3mv8XLuPfPbbhhf3Wy7Rw', NULL, '', '2018-08-25 08:06:10', '', '2018-01-02 05:00:00', NULL, 0, 'test1111kk@fu345jitechjsc.com', '', '', 0, 'Thai Ha, Ha Noi', '2018-08-23 19:21:17', '2018-08-23 19:21:17', '2018-10-24 02:11:54'),
(48, 1, '', 0, 0, -1, 'Test', 'Test 2', 'test', 'Bl5dBNoLGFC0donAV9qW39dW3IsytlaQLQ6p0nstrECKqFIB8tUEGHrxYPt6DAHiU3d7y6beJG6UfKi6ksFnUQ', NULL, '', '2018-08-27 08:06:01', '', '2018-01-02 05:00:00', NULL, 0, 'test@fujitechjsc.com', '', '', 0, 'Thai Ha, Ha Noi', '2018-08-23 19:34:52', '2018-08-23 19:34:52', '2018-10-24 02:11:54'),
(49, 1, '', 9, 6, 2, '123', 'test ', 'dam.le111', '9KD/o55YdDjgMOPD/gM4JkVsgm6l2imYGHUdvj4auDNMOHf5BmjpKJ+ztdDYgJZHjIb8i4h631UJqPhlJg/mqA', NULL, '', '2012-12-09 00:00:00', '', '2012-12-11 17:00:00', NULL, 0, 'dam.le111@fujitechjsc.com', '123213', '123', 0, '213123', '2018-08-23 19:36:34', '2018-08-23 20:19:39', '2018-10-24 02:11:54'),
(50, 1, '', 0, 0, -1, 'Test', 'Test 2', 'test12', 'yQoA4MkaPg8qOkSLtg3Sm/R3IAC73wxaFryWM/Q+B9VEDlK0si98pmR1GDquBE0kAx8m+O7FOSiLlf9swlT5UQ', NULL, '', '1988-12-12 00:00:00', '', '2018-01-02 05:00:00', NULL, 0, 'test12@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 20:24:03', '2018-08-23 20:24:03', '2018-10-24 02:11:54'),
(51, 1, '', 0, 0, -1, 'Test', 'Test 2', 'ssssssssss', 'zh9/QqOf76O3XcsIn4ZM+a43qiDGdaMJO1PSrLzqEE7kRRavwwc3896GBTo2aj5sxsjG01EtrooPMU2iCuYkGA', NULL, '', '1988-12-12 00:00:00', '', '2018-01-02 05:00:00', NULL, 0, 'test1sss2ddsc342@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 20:35:31', '2018-08-23 20:35:31', '2018-08-27 03:56:32'),
(52, 1, 'null', 1, 6, 2, 'tao moi', '', 'tao.moi', 'AcU5TAWK4OANc3VHI0eXt8z9qsmrjcKcQUhkgW575nT5Jdc2aKrPiCqyKCDqUUGD1LfVGDuAnbTR4ns3+gho/w', NULL, '', '1990-10-09 17:00:00', '', '2018-10-09 17:00:00', NULL, 0, 'tao.moi@gmail.com', '', '', 0, '', '2018-08-23 20:36:11', '2018-08-23 20:55:44', '2018-10-24 02:11:54'),
(53, 1, 'null', 1, 1, 2, 'Test', 'Test 2', 'ssssssss555ss', 'ArlXf4xhtCGKGycXFoGU3mad1NdtKRzkomtNyxNNnqTlvdBT0Ckj7kNSNzNXxDOrncE4VHNvR0cb7Sy0iGBD5w', NULL, '', '1988-12-11 17:00:00', '', '2018-01-01 17:00:00', NULL, 0, 'test1s5555ss2ddsc342@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 20:46:17', '2018-08-24 01:54:57', '2018-08-27 02:21:23'),
(54, 1, '', 0, 0, -1, 'Test', 'Test 2', 'ssssdddssss555ss', '6U1zPC246ryN9h+Lf4N+QOReYMWoa/nBQen8n8nHHtN5bPZLXiTI8SiyPxa/Lk85vnjBVtNxUXR5PalgQ2oGhA', NULL, '', '1988-12-12 00:00:00', '', '2018-01-02 05:00:00', NULL, 0, 'testddd1s5555ss2ddsc342@fujitechjsc.com', '', '', 0, 'THai Ha Ha Noi', '2018-08-23 20:47:33', '2018-08-23 20:47:33', '2018-08-27 02:21:02'),
(55, 1, 'null', 0, 6, -1, '12321', '12311', '123111', '+a08aNJhXwDXci7scmL0Nz+5xBDEQeEDVg+MKtVsF0cUa+EHWFxQJoZnpUhwTZpGOPE6nYJCfpq1tbVqpRtTWQ', NULL, '', NULL, '', '1970-01-01 00:00:00', NULL, 0, 'dam.111le@fujitechjsc.com', '', '', 0, '', '2018-08-27 03:57:27', '2018-08-27 03:57:27', '2018-10-24 02:11:54'),
(56, 1, 'null', 3, 6, -1, '123', '123', 'anh.tr111an', 'ZE7RjbZ7+pwril6DOEFXyNN9aK/BRmn0x5phDrlGE8bDDPrzNmlGF4991fL4aX10ccN4cLa6PS4ZRC+goHI0Aw', NULL, '', NULL, '', '1970-01-01 00:00:00', NULL, 0, 'lexuandam96@11gmail.com', '', '', 0, '', '2018-08-27 19:19:43', '2018-08-27 19:19:43', '2018-10-24 02:11:55'),
(57, 1, '[2,5,8]', 5, 6, -1, 'dam', 'le', 'dam.le121', 'FTfpVia8d6lFbts6TsadBcnOtkv9XdUjlykWRNyUuBn4RJyh2m6BdY2fTKj/MGQcbx5L4oUvheYstNckPEkAZg', NULL, '', '1996-12-11 17:00:00', '', '2017-12-11 17:00:00', NULL, 0, 'dam.le@fujit1echjsc.com', '', '', 0, '', '2018-08-27 21:32:52', '2018-08-27 21:37:17', '2018-10-24 02:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_project`
--

CREATE TABLE `user_project` (
  `id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '1 - active, 2 - inactive',
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_project`
--

INSERT INTO `user_project` (`id`, `user_company_id`, `company_id`, `project_id`, `level_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 24, 1, 1, 2, 1, 1, NULL, '2018-08-23 21:59:23', '2018-10-24 02:11:56', '2018-10-24 02:11:56'),
(2, 1, 1, 1, 3, 1, 1, NULL, '2018-08-23 21:59:23', '2018-10-24 02:11:56', '2018-10-24 02:11:56'),
(3, 23, 1, 1, 4, 1, 1, NULL, '2018-08-23 21:59:23', '2018-10-24 02:11:56', '2018-10-24 02:11:56'),
(4, 23, 1, 2, 4, 1, 1, NULL, '2018-08-23 21:59:23', '2018-10-24 02:11:56', '2018-10-24 02:11:56'),
(5, 24, 1, 2, 2, 1, 1, NULL, '2018-08-23 21:59:23', '2018-10-24 02:11:56', '2018-10-24 02:11:56'),
(6, 2, 1, 3, 5, 1, 1, 2, '2018-08-26 20:19:03', '2018-08-26 20:20:55', '2018-10-24 02:11:56'),
(7, 3, 1, 3, 4, 1, 1, 0, '2018-08-26 20:19:03', '2018-08-26 20:19:03', '2018-10-24 02:11:57'),
(8, 4, 1, 3, 3, 1, 1, 0, '2018-08-27 18:39:27', '2018-08-27 18:39:27', '2018-10-24 02:11:57'),
(9, 3, 1, 2, 6, 1, 1, 2, '2018-08-27 18:39:27', '2018-08-27 18:44:51', '2018-08-27 18:46:24'),
(10, 5, 1, 3, 3, 1, 1, 0, '2018-08-27 18:39:59', '2018-08-27 18:39:59', '2018-10-24 02:11:57'),
(11, 23, 1, 3, 4, 1, 1, 0, '2018-08-27 18:39:59', '2018-08-27 18:39:59', '2018-10-24 02:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_space`
--

CREATE TABLE `user_space` (
  `user_space_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_space`
--

INSERT INTO `user_space` (`user_space_id`, `space_id`, `user_company_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2018-08-19 21:34:23', '2018-10-24 02:11:57', '2018-10-24 02:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `vacation_id` int(11) NOT NULL,
  `user_company_id` int(11) NOT NULL,
  `vacation_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT '1',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `reason` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `vacation_status` int(1) NOT NULL DEFAULT '0',
  `assignee` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`vacation_id`, `user_company_id`, `vacation_type_id`, `company_id`, `module_id`, `start_date`, `end_date`, `reason`, `vacation_status`, `assignee`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, '2018-08-20 01:00:00', '2018-08-20 10:15:00', '123213', 0, '[1,2]', 1, 3, '2018-08-20 02:19:44', '2018-08-20 02:19:44', '2018-08-21 18:49:37'),
(2, 2, 2, 2, 1, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'Xin nghỉ đi chơi lan 2', 2, '[1,19,23]', 1, 37, '2018-08-20 19:09:12', '2018-09-06 21:06:53', '2018-10-24 02:11:58'),
(3, 1, 2, 1, 1, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'Xin nghỉ đi chơi lan 2', 5, '[]', 1, 2, '2018-08-20 20:50:44', '2018-09-06 03:14:07', '2018-10-24 02:11:59'),
(4, 1, 3, 1, 1, '2018-07-02 13:20:00', '2018-07-24 13:18:00', 'Xin nghỉ đi chơi mai ma khong duoc. Chán', 0, '[1,2,23]', 1, 37, '2018-08-27 19:36:10', '2018-09-13 19:37:33', '2018-10-24 02:11:59'),
(5, 1, 0, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 0, '[1,2]', 1, 1, '2018-08-16 00:21:07', '2018-08-16 00:21:07', '2018-08-21 18:41:06'),
(6, 1, 0, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 0, '[1,2]', 1, 1, '2018-08-16 00:21:18', '2018-08-16 00:21:18', '2018-10-24 02:11:59'),
(7, 1, 0, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 0, '[1,2]', 1, 1, '2018-08-16 00:21:33', '2018-08-16 00:21:33', '2018-10-24 02:11:59'),
(8, 1, 0, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 0, '[1,2]', 1, 1, '2018-08-16 00:28:09', '2018-08-16 00:28:09', '2018-08-21 18:49:07'),
(9, 24, 1, 1, 1, '2018-08-29 13:18:00', '2018-08-30 13:18:00', 'Xin nghỉ đi chơi', 0, '[1]', 1, 23, '2018-08-24 01:55:11', '2018-08-24 01:55:11', '2018-10-24 02:11:59'),
(10, 24, 2, 0, 1, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'Xin nghỉ đi chơi lan 2', 2, '[1,2]', 1, 1, '2018-08-16 03:04:21', '2018-08-16 03:04:21', '2018-09-14 02:51:00'),
(11, 24, 2, 1, 1, '2018-09-29 00:00:00', '2018-09-30 00:00:00', 'Xin nghỉ đi chơi lan 2', 2, '[1]', 1, 2, '2018-08-20 03:19:55', '2018-08-20 03:19:55', '2018-10-24 02:11:59'),
(12, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 20:41:27', '2018-08-16 20:41:27', '2018-10-24 02:11:59'),
(13, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 21:19:16', '2018-08-16 21:19:16', '2018-10-24 02:11:59'),
(14, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 21:21:27', '2018-08-16 21:21:27', '2018-10-24 02:12:00'),
(19, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 22:23:40', '2018-08-16 22:23:40', '2018-10-24 02:12:00'),
(20, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 22:30:42', '2018-08-16 22:30:42', '2018-10-24 02:12:00'),
(21, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[1,2]', 1, 1, '2018-08-16 22:55:51', '2018-08-16 22:55:51', '2018-10-24 02:12:00'),
(22, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Re1', 1, '[1,2]', 1, 1, '2018-08-16 23:11:39', '2018-08-16 23:11:39', '2018-10-24 02:12:00'),
(23, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Re1', 1, '[1,2]', 1, 1, '2018-08-16 23:17:48', '2018-08-16 23:17:48', '2018-10-24 02:12:00'),
(24, 1, 1, 1, 1, '2018-08-17 01:00:00', '2018-08-17 10:15:00', 'Reason 1', 1, '[1,2]', 1, 1, '2018-08-17 00:10:43', '2018-08-17 00:10:43', '2018-10-24 02:12:00'),
(25, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-08-20 19:10:53', '2018-10-11 18:55:52', '2018-10-24 02:12:00'),
(26, 1, 1, 1, 1, '2018-08-21 01:00:00', '2018-08-21 10:15:00', 'rea1', 1, '[1,2]', 1, 0, '2018-08-20 20:00:33', '2018-08-20 20:00:33', '2018-10-24 02:12:00'),
(27, 1, 4, 1, 1, '2018-08-21 01:00:00', '2018-08-21 10:15:00', 'Test vacation', 2, '[2]', 1, 0, '2018-08-21 02:14:28', '2018-08-21 02:14:28', '2018-10-24 02:12:00'),
(28, 1, 1, 1, 1, '2018-08-22 01:00:00', '2018-08-22 10:15:00', 'Test nghi', 2, '[1]', 1, 0, '2018-08-21 18:27:54', '2018-08-21 18:27:54', '2018-10-24 02:12:00'),
(29, 1, 1, 1, 1, '2018-08-22 01:00:00', '2018-08-22 10:15:00', 'Test nghi', 2, '[1]', 1, 0, '2018-08-21 18:28:58', '2018-08-21 18:28:58', '2018-10-24 02:12:00'),
(33, 1, 1, 1, 1, '2018-08-22 01:00:00', '2018-08-22 10:15:00', 'rea 2', 2, '[1]', 15, 0, '2018-08-21 19:12:07', '2018-08-21 19:12:07', '2018-10-24 02:12:00'),
(34, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[1,2]', 1, 0, '2018-08-21 20:39:37', '2018-08-21 20:39:37', '2018-10-24 02:12:00'),
(35, 1, 1, 1, 1, '2018-08-23 01:00:00', '2018-08-23 10:15:00', 'Phai di don con som', 2, '[1]', 1, 0, '2018-08-22 02:23:05', '2018-08-22 02:23:05', '2018-10-24 02:12:00'),
(36, 1, 1, 1, 1, '2018-08-23 01:00:00', '2018-08-23 10:15:00', 'rea', 2, '[1]', 8, 0, '2018-08-23 02:02:03', '2018-08-23 02:02:03', '2018-10-24 02:12:00'),
(37, 1, 1, 1, 1, '2018-08-23 13:18:00', '2018-08-23 13:18:00', 'rea 2', 2, '[1]', 8, 8, '2018-08-23 02:08:23', '2018-08-23 02:08:23', '2018-10-24 02:12:00'),
(38, 1, 5, 1, 1, '2018-08-30 01:00:00', '2018-09-06 10:15:00', 'Di cong tac', 2, '[1]', 23, 0, '2018-08-23 19:09:59', '2018-08-23 19:09:59', '2018-10-24 02:12:00'),
(39, 24, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[1,2]', 1, 0, '2018-08-27 00:05:20', '2018-08-27 00:05:20', '2018-10-24 02:12:00'),
(40, 1, 1, 1, 1, '2018-08-28 04:00:00', '2018-08-28 09:59:00', 'FF', 2, '[1]', 1, 0, '2018-08-27 18:33:57', '2018-08-27 18:33:57', '2018-10-24 02:12:00'),
(41, 1, 1, 1, 1, '2018-08-29 00:00:00', '2018-08-30 01:00:00', 'e', 2, '[1]', 8, 0, '2018-08-27 18:54:02', '2018-08-27 18:54:02', '2018-10-24 02:12:00'),
(42, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[1,2]', 1, 0, '2018-08-30 01:32:14', '2018-08-30 01:32:14', '2018-10-24 02:12:00'),
(43, 1, 1, 1, 0, '2018-09-04 17:00:00', '2018-09-05 16:59:00', '123', 2, '', 37, 0, '2018-09-05 02:03:56', '2018-09-05 02:03:56', '2018-10-24 02:12:00'),
(44, 1, 1, 1, 0, '2018-09-04 17:00:00', '2018-09-05 16:59:00', 'test manager', 2, '[2,23]', 37, 0, '2018-09-05 02:07:49', '2018-09-05 02:07:49', '2018-10-24 02:12:01'),
(45, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', 'nghi duong hang ngay', 2, '[1,2,19]', 23, 0, '2018-09-05 18:05:47', '2018-09-05 18:05:47', '2018-10-24 02:12:01'),
(46, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', '213213', 2, '[1,2,23]', 37, 0, '2018-09-05 21:37:22', '2018-09-05 21:37:22', '2018-10-24 02:12:01'),
(47, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', '123', 2, '[2,19,23]', 37, 0, '2018-09-05 21:37:57', '2018-09-05 21:37:57', '2018-10-24 02:12:01'),
(48, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', '123', 2, '[2,19,23]', 37, 0, '2018-09-05 21:39:13', '2018-09-05 21:39:13', '2018-10-24 02:12:01'),
(49, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', '123', 2, '[2,19,23]', 37, 0, '2018-09-05 21:39:23', '2018-09-05 21:39:23', '2018-10-24 02:12:01'),
(50, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', '123', 2, '[2,19,23]', 37, 0, '2018-09-05 21:39:57', '2018-09-05 21:39:57', '2018-10-24 02:12:01'),
(51, 1, 1, 1, 0, '2018-09-05 17:00:00', '2018-09-06 16:59:00', 'test', 2, '[1]', 19, 0, '2018-09-06 02:35:57', '2018-09-06 02:35:57', '2018-10-24 02:12:01'),
(52, 1, 1, 1, 0, '2018-09-06 17:00:00', '2018-09-07 16:59:00', '2345', 2, '[1,2,23]', 37, 0, '2018-09-06 19:12:24', '2018-09-06 19:12:24', '2018-10-24 02:12:01'),
(53, 1, 1, 1, 0, '2018-09-06 17:00:00', '2018-09-07 16:59:00', '123', 2, '[1,19]', 37, 0, '2018-09-06 19:28:51', '2018-09-06 19:28:51', '2018-10-24 02:12:01'),
(54, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:20:11', '2018-09-10 23:20:11', '2018-10-24 02:12:01'),
(55, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:21:09', '2018-09-10 23:21:09', '2018-10-24 02:12:01'),
(56, 1, 1, 1, 0, '2018-09-10 17:00:00', '2018-09-11 16:59:00', 'test 2', 2, '[19]', 19, 0, '2018-09-10 23:27:18', '2018-09-10 23:27:18', '2018-10-24 02:12:01'),
(57, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:28:13', '2018-09-10 23:28:13', '2018-10-24 02:12:01'),
(58, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:28:35', '2018-09-10 23:28:35', '2018-10-24 02:12:01'),
(59, 20, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:29:44', '2018-09-10 23:29:44', '2018-10-24 02:12:01'),
(60, 20, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:31:02', '2018-09-10 23:31:02', '2018-10-24 02:12:01'),
(61, 21, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:38:46', '2018-09-10 23:38:46', '2018-10-24 02:12:01'),
(62, 15, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:39:05', '2018-09-10 23:39:05', '2018-10-24 02:12:01'),
(63, 15, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:40:18', '2018-09-10 23:40:18', '2018-10-24 02:12:01'),
(64, 16, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:40:35', '2018-09-10 23:40:35', '2018-10-24 02:12:01'),
(65, 10, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:41:39', '2018-09-10 23:41:39', '2018-10-24 02:12:02'),
(66, 10, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-10 23:42:54', '2018-09-10 23:42:54', '2018-10-24 02:12:02'),
(67, 10, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:19:57', '2018-09-11 00:19:57', '2018-10-24 02:12:02'),
(68, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[1,2]', 1, 0, '2018-09-11 00:20:19', '2018-09-11 00:20:19', '2018-10-24 02:12:02'),
(69, 24, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[1,2]', 1, 0, '2018-09-11 00:21:39', '2018-09-11 00:21:39', '2018-10-24 02:12:02'),
(70, 21, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:26:48', '2018-09-11 00:26:48', '2018-10-24 02:12:02'),
(71, 11, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:27:20', '2018-09-11 00:27:20', '2018-10-24 02:12:02'),
(72, 11, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:31:42', '2018-09-11 00:31:42', '2018-10-24 02:12:02'),
(73, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:32:20', '2018-09-11 00:32:20', '2018-10-24 02:12:02'),
(74, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:33:40', '2018-09-11 00:33:40', '2018-10-24 02:12:02'),
(75, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 2, '[19]', 1, 0, '2018-09-11 00:55:33', '2018-09-11 00:55:33', '2018-10-24 02:12:02'),
(76, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-09-11 00:55:57', '2018-10-15 20:03:12', '2018-10-24 02:12:02'),
(77, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-09-11 01:07:46', '2018-10-11 18:56:05', '2018-10-24 02:12:02'),
(78, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-09-11 01:08:16', '2018-10-11 19:13:51', '2018-10-24 02:12:02'),
(79, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-09-11 01:09:13', '2018-10-11 19:11:54', '2018-10-24 02:12:03'),
(80, 12, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 3, '[]', 1, 0, '2018-09-11 01:09:23', '2018-10-11 18:55:13', '2018-10-24 02:12:03'),
(81, 14, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[]', 1, 0, '2018-09-11 01:12:02', '2018-10-11 19:06:36', '2018-10-24 02:12:03'),
(82, 14, 1, 1, 0, '2018-08-29 00:00:00', '2018-08-30 00:00:00', 'Xin nghỉ đi chơi', 1, '[]', 1, 0, '2018-09-11 01:12:13', '2018-10-11 18:54:53', '2018-10-24 02:12:03'),
(83, 1, 1, 1, 0, '2018-09-10 17:00:00', '2018-09-11 16:59:00', 'test 3', 1, '[]', 19, 0, '2018-09-11 01:18:38', '2018-10-11 18:54:37', '2018-10-24 02:12:03'),
(84, 1, 1, 1, 0, '2018-09-10 17:00:00', '2018-09-11 16:59:00', 'tự xin nghỉ và tự assign lại cho mình', 5, '[]', 23, 0, '2018-09-11 01:22:37', '2018-10-11 19:15:55', '2018-10-24 02:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `vacation_type`
--

CREATE TABLE `vacation_type` (
  `vacation_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vacation_type`
--

INSERT INTO `vacation_type` (`vacation_type_id`, `company_id`, `name`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Annual leave', NULL, 1, NULL, '2018-08-14 14:39:40', '2018-10-24 02:12:04', '2018-10-24 02:12:04'),
(2, 1, 'Insuarance leave', NULL, 1, NULL, '2018-08-14 14:39:40', '2018-10-24 02:12:04', '2018-10-24 02:12:04'),
(3, 1, 'Private time off with pay', NULL, 1, NULL, '2018-08-14 14:39:40', '2018-10-24 02:12:04', '2018-10-24 02:12:04'),
(4, 1, 'Business trip with pay', NULL, 1, NULL, '2018-08-14 14:39:40', '2018-10-24 02:12:04', '2018-10-24 02:12:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`,`company_id`,`user_company_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`,`company_id`),
  ADD UNIQUE KEY `code_UNIQUE` (`code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`,`company_id`);

--
-- Indexes for table `fjc_customer`
--
ALTER TABLE `fjc_customer`
  ADD PRIMARY KEY (`fjc_customer_id`);

--
-- Indexes for table `fjc_module`
--
ALTER TABLE `fjc_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `fjc_role`
--
ALTER TABLE `fjc_role`
  ADD PRIMARY KEY (`fjc_role_id`);

--
-- Indexes for table `fjc_user`
--
ALTER TABLE `fjc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fjc_user_role`
--
ALTER TABLE `fjc_user_role`
  ADD PRIMARY KEY (`fjc_user_id`,`fjc_role_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`,`company_id`),
  ADD UNIQUE KEY `level_name_UNIQUE` (`level_name`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_company`
--
ALTER TABLE `module_company`
  ADD PRIMARY KEY (`module_company_id`,`module_id`,`company_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_project`
--
ALTER TABLE `overtime_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_company_id_index` (`user_company_id`),
  ADD KEY `company_id_index` (`company_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`,`company_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `post_space`
--
ALTER TABLE `post_space`
  ADD PRIMARY KEY (`post_space_id`,`space_id`,`user_company_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_name_UNIQUE` (`project_name`),
  ADD KEY `company_id_idx` (`company_id`);

--
-- Indexes for table `reason_type`
--
ALTER TABLE `reason_type`
  ADD PRIMARY KEY (`reason_type_id`,`company_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_company_id_idx` (`user_company_id`);

--
-- Indexes for table `room_meeting`
--
ALTER TABLE `room_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `company_id_idx` (`company_id`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`space_id`,`user_company_id`,`company_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`,`company_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `user_company`
--
ALTER TABLE `user_company`
  ADD PRIMARY KEY (`user_company_id`),
  ADD KEY `firstName_fidx` (`first_name`),
  ADD KEY `lastName_fidx` (`last_name`),
  ADD KEY `email_fidx` (`email`);

--
-- Indexes for table `user_project`
--
ALTER TABLE `user_project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_project_uniq` (`project_id`,`user_company_id`),
  ADD KEY `user_company_id_idx` (`user_company_id`),
  ADD KEY `company_id_idx` (`company_id`),
  ADD KEY `project_id_idx` (`project_id`),
  ADD KEY `level_id_idx` (`level_id`);

--
-- Indexes for table `user_space`
--
ALTER TABLE `user_space`
  ADD PRIMARY KEY (`user_space_id`,`space_id`,`user_company_id`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`vacation_id`,`user_company_id`,`vacation_type_id`,`company_id`);

--
-- Indexes for table `vacation_type`
--
ALTER TABLE `vacation_type`
  ADD PRIMARY KEY (`vacation_type_id`,`company_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fjc_customer`
--
ALTER TABLE `fjc_customer`
  MODIFY `fjc_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fjc_module`
--
ALTER TABLE `fjc_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fjc_user`
--
ALTER TABLE `fjc_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `overtime_project`
--
ALTER TABLE `overtime_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_space`
--
ALTER TABLE `post_space`
  MODIFY `post_space_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reason_type`
--
ALTER TABLE `reason_type`
  MODIFY `reason_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_meeting`
--
ALTER TABLE `room_meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `space`
--
ALTER TABLE `space`
  MODIFY `space_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_company`
--
ALTER TABLE `user_company`
  MODIFY `user_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_project`
--
ALTER TABLE `user_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_space`
--
ALTER TABLE `user_space`
  MODIFY `user_space_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `vacation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `vacation_type`
--
ALTER TABLE `vacation_type`
  MODIFY `vacation_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `fujierp_pro_db`
--
CREATE DATABASE IF NOT EXISTS `fujierp_pro_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `fujierp_pro_db`;

-- --------------------------------------------------------

--
-- Table structure for table `comment_overtime`
--

CREATE TABLE `comment_overtime` (
  `id` int(11) NOT NULL,
  `overtime_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_payment`
--

CREATE TABLE `comment_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_payment`
--

INSERT INTO `comment_payment` (`id`, `payment_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 101, 46, '123\r\n', 1533191587, 1533191587);

-- --------------------------------------------------------

--
-- Table structure for table `comment_vacation`
--

CREATE TABLE `comment_vacation` (
  `id` int(11) NOT NULL,
  `vacation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Employees', NULL, NULL, NULL),
(2, 'BO', NULL, NULL, NULL),
(3, 'C-Level', NULL, NULL, NULL),
(4, 'Managers', NULL, NULL, NULL),
(5, 'Finance', NULL, NULL, NULL),
(6, 'IT', NULL, NULL, NULL),
(7, 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments_users`
--

CREATE TABLE `departments_users` (
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `is_leader` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments_users`
--

INSERT INTO `departments_users` (`user_id`, `department_id`, `is_leader`, `created_at`, `updated_at`, `id`) VALUES
(1, 7, 0, NULL, NULL, 1),
(29, 4, NULL, NULL, NULL, 2),
(30, 1, NULL, NULL, NULL, 3),
(31, 1, NULL, NULL, NULL, 4),
(32, 1, NULL, NULL, NULL, 5),
(33, 8, NULL, NULL, NULL, 6),
(34, 1, NULL, NULL, NULL, 7),
(35, 1, NULL, NULL, NULL, 8),
(36, 1, NULL, NULL, NULL, 9),
(37, 2, NULL, NULL, NULL, 10),
(38, 1, NULL, NULL, NULL, 11),
(39, 1, NULL, NULL, NULL, 12),
(49, 1, NULL, NULL, NULL, 13),
(41, 1, NULL, NULL, NULL, 14),
(42, 1, NULL, NULL, NULL, 15),
(43, 1, NULL, NULL, NULL, 16),
(44, 1, NULL, NULL, NULL, 17),
(45, 1, NULL, NULL, NULL, 18),
(46, 7, NULL, NULL, NULL, 19),
(47, 1, NULL, NULL, NULL, 20),
(48, 1, NULL, NULL, NULL, 21),
(50, 1, NULL, NULL, NULL, 22),
(52, 1, NULL, NULL, NULL, 23),
(53, 1, NULL, NULL, NULL, 24),
(54, 5, NULL, NULL, NULL, 25),
(66, 7, NULL, NULL, NULL, 26),
(67, 2, NULL, NULL, NULL, 27);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contents` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `from_time` int(11) NOT NULL,
  `to_time` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `room_id`, `from_time`, `to_time`, `created_user_id`, `reasons`, `created_at`, `updated_at`) VALUES
(1, 1, 1533628800, 1533636900, 66, 'hop tre co', 1533627901, NULL),
(2, 1, 1534732200, 1534734000, 37, 'Interview', 1534730849, NULL),
(3, 1, 1534734060, 1534737600, 37, 'Viet-san', 1534730961, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `migration` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`type`, `name`, `migration`) VALUES
('app', 'default', '001_create_users'),
('app', 'default', '002_create_vacations'),
('app', 'default', '003_create_documents'),
('app', 'default', '004_create_projects'),
('app', 'default', '005_create_overtime_requests'),
('app', 'default', '006_create_payments');

-- --------------------------------------------------------

--
-- Table structure for table `overtime_requests`
--

CREATE TABLE `overtime_requests` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `project_id` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `current_group_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `overtime_requests`
--

INSERT INTO `overtime_requests` (`id`, `user_id`, `reason`, `start_time`, `end_time`, `project_id`, `status`, `current_group_id`, `created_at`, `updated_at`, `assign_manager_id`, `deleted_at`) VALUES
(1, 57, 'Tranfer Eccu-be Project', 1500771600, 1500780600, '0', 4, 7, 1501641000, NULL, NULL, NULL),
(2, 52, 'Support customer and fix bugs', 1501582500, 1501593300, '0', 4, 7, 1501657800, NULL, NULL, NULL),
(3, 57, 'Eccube Project', 1500891300, 1500901200, '0', 4, 7, 1501657980, NULL, NULL, NULL),
(4, 33, 'Fix bug on Marc2 production server', 1503050400, 1503057600, '0', 4, 7, 1503057720, NULL, NULL, NULL),
(5, 57, 'Support for MARC2 Project (Fix bugs)', 1503051300, 1503057600, '0', 4, 7, 1503057840, NULL, NULL, NULL),
(6, 35, 'Support fix bug on Marc2 production server', 1503050400, 1503057600, '0', 4, 7, 1503057900, NULL, NULL, NULL),
(7, 56, 'Handling marc2 ', 1503052200, 1503057600, '0', 4, 7, 1503058020, NULL, NULL, NULL),
(8, 52, 'support customer to fix bugs', 1503052200, 1503057600, '0', 4, 7, 1503058500, NULL, NULL, NULL),
(9, 57, 'Handle MARC2 deploy', 1503396900, 1503402300, '0', 4, 7, 1503402300, NULL, NULL, NULL),
(10, 52, 'Handle Marc2 tasks and support customer', 1503396900, 1503402300, '0', 4, 7, 1503402360, NULL, NULL, NULL),
(11, 56, 'Support Marc2 deployment ', 1503396900, 1503402420, '0', 4, 7, 1503402420, NULL, NULL, NULL),
(12, 33, 'Fix bugs and deploy to server', 1504000800, 1504008000, '0', 4, 7, 1504013640, NULL, NULL, NULL),
(13, 57, 'Fix bugs and deploy', 1504001700, 1504008000, '0', 4, 7, 1504055460, NULL, NULL, NULL),
(14, 56, 'Handle Marc2 release', 1504174500, 1504179000, '0', 4, 7, 1504179660, NULL, NULL, NULL),
(15, 33, 'Deploy to server Marc2', 1504173600, 1504180800, '0', 4, 7, 1504499460, NULL, NULL, NULL),
(16, 57, 'Support deployment for JP in MARC2 Project', 1504174500, 1504179000, '0', 4, 7, 1504573380, NULL, NULL, NULL),
(17, 57, 'Implement 021 new design', 1504692900, 1504697400, '0', 4, 7, 1505092620, NULL, NULL, NULL),
(18, 57, 'Fix bug in 021 new design', 1504865700, 1504868400, '0', 4, 7, 1505092680, NULL, NULL, NULL),
(19, 33, 'Deploy to Marc2 server', 1504865700, 1504868400, '0', 4, 7, 1505092800, NULL, NULL, NULL),
(20, 52, 'Deploy to production and support', 1504001700, 1504008000, '0', 4, 7, 1505359740, NULL, NULL, NULL),
(21, 52, 'Implement new design', 1504692900, 1504697400, '0', 4, 7, 1505360400, NULL, NULL, NULL),
(22, 35, 'deploy Marc2', 1504001700, 1504008000, '0', 4, 7, 1505361180, NULL, NULL, NULL),
(23, 57, 'Fix bugs in MARC project', 1506593700, 1506599100, '0', 4, 7, 1506599220, NULL, NULL, NULL),
(24, 35, 'Marc2: create new feature', 1506593700, 1506599100, '0', 4, 7, 1506599220, NULL, NULL, NULL),
(25, 52, 'Support MoreVietNam', 1507630500, 1507637700, '0', 4, 7, 1507718940, NULL, NULL, NULL),
(26, 36, 'Support for implementation in narhanoiforum.com ', 1507630500, 1507637700, '0', 4, 7, 1507863960, NULL, NULL, NULL),
(27, 57, 'Fix bugs in TRECO', 1508753700, 1508757600, '0', 4, 7, 1508757420, NULL, NULL, NULL),
(28, 38, 'Maintain and update event for Remonster.', 1509757200, 1509775200, '0', 4, 7, 1509505440, NULL, NULL, NULL),
(29, 57, 'Support ReMonster maintance weekly!', 1509759000, 1509777000, '0', 4, 7, 1509608040, NULL, NULL, NULL),
(30, 38, 'Re:Monster s mainternance', 1510365600, 1510383600, '0', 4, 7, 1510287660, NULL, NULL, NULL),
(31, 31, 'Re:Monster maintenance', 1510279200, 1510293600, '0', 4, 7, 1510309560, NULL, NULL, NULL),
(32, 57, 'Fix bug EC-CUBE', 1509444900, 1509447600, '0', 4, 7, 1510538880, NULL, NULL, NULL),
(33, 38, 'Maintain Remonster', 1510970400, 1510984800, '0', 4, 7, 1510903620, NULL, NULL, NULL),
(34, 57, 'Fix bug of EC-CUBE', 1511345700, 1511352900, '0', 4, 7, 1511433060, NULL, NULL, NULL),
(35, 35, 'fix ECCUBE bug', 1511345700, 1511352900, '0', 4, 7, 1511433120, NULL, NULL, NULL),
(36, 38, 'maintain remonster', 1511575200, 1511589600, '0', 4, 7, 1511434980, NULL, NULL, NULL),
(37, 31, 'ReMonster maintenance', 1511575200, 1511499600, '0', 4, 7, 1511490480, NULL, NULL, NULL),
(38, 31, 'Re:Monster maintence', 1512180000, 1512194400, '0', 4, 7, 1512126600, NULL, NULL, NULL),
(39, 35, 'deploy marc2 production', 1512641700, 1512647100, '0', 4, 7, 1512647460, NULL, NULL, NULL),
(40, 33, 'Deploy Marc2 Production server', 1512641700, 1512647400, '0', 4, 7, 1512647460, NULL, NULL, NULL),
(41, 31, 'ReMonster Maintenance', 1512784800, 1512799200, '0', 4, 7, 1512722460, NULL, NULL, NULL),
(42, 33, 'Development of CRM project', 1512728100, 1512731700, '0', 4, 7, 1512731700, NULL, NULL, NULL),
(43, 35, 'Developing CRM', 1512728100, 1512734400, '0', 4, 7, 1512734460, NULL, NULL, NULL),
(44, 52, 'handle CRM project', 1512728100, 1512734460, '0', 4, 7, 1512734460, NULL, NULL, NULL),
(45, 57, 'Implement CRM features', 1512728100, 1512731700, '0', 4, 7, 1512987540, NULL, NULL, NULL),
(46, 33, 'Test case, Security Marc2 Production', 1512987300, 1512990900, '0', 4, 7, 1512990480, NULL, NULL, NULL),
(47, 35, 'develope CRM', 1512987300, 1512994500, '0', 4, 7, 1512994500, NULL, NULL, NULL),
(48, 33, 'CRM bugs', 1513073700, 1513077300, '0', 4, 7, 1513077240, NULL, NULL, NULL),
(49, 35, 'Developing CRM', 1513073700, 1513080000, '0', 4, 7, 1513080120, NULL, NULL, NULL),
(50, 52, 'Handle CRM tasks', 1513073700, 1513079100, '0', 4, 7, 1513162740, NULL, NULL, NULL),
(51, 57, 'Write test case for CRM Project', 1513073700, 1513077300, '0', 4, 7, 1513163400, NULL, NULL, NULL),
(52, 33, 'CRM project', 1513160100, 1513163700, '0', 4, 7, 1513163460, NULL, NULL, NULL),
(53, 57, 'Implement CRM features', 1513160100, 1513163700, '0', 4, 7, 1513163520, NULL, NULL, NULL),
(54, 52, 'handle CRM tasks', 1513160100, 1513163700, '0', 4, 7, 1513249080, NULL, NULL, NULL),
(55, 33, 'fix bugs CRM project', 1513246500, 1513250100, '0', 4, 7, 1513249740, NULL, NULL, NULL),
(56, 57, 'Write integration test for CRM', 1513246500, 1513250100, '0', 4, 7, 1513300740, NULL, NULL, NULL),
(57, 38, 'Remonster maintain', 1513389600, 1513400400, '0', 4, 7, 1513309500, NULL, NULL, NULL),
(58, 31, 'ReMonster Maintenance', 1513389600, 1513400400, '0', 4, 7, 1513309560, NULL, NULL, NULL),
(59, 35, 'Developing CRM', 1513160100, 1513163700, '0', 4, 7, 1513312860, NULL, NULL, NULL),
(60, 35, 'Developing CRM', 1513246500, 1513250100, '0', 4, 7, 1513312860, NULL, NULL, NULL),
(61, 52, 'handle CRM tasks', 1513246500, 1513250100, '0', 4, 7, 1513334040, NULL, NULL, NULL),
(62, 52, 'handle CRM tasks', 1513246500, 1513250100, '0', 4, 7, 1513334100, NULL, NULL, NULL),
(63, 38, 'Maintain remonster', 1512180000, 1512190800, '0', 4, 7, 1513647780, NULL, NULL, NULL),
(64, 56, 'Handle Treco question order ticket. ', 1513851300, 1513866600, '0', 4, 7, 1513856160, NULL, NULL, NULL),
(65, 57, 'Fix bug for TRECO', 1513808100, 1513824300, '0', 4, 7, 1513904340, NULL, NULL, NULL),
(66, 38, 'Maintain Remonster', 1513994400, 1514005200, '0', 4, 7, 1513913160, NULL, NULL, NULL),
(67, 31, 'ReMonster Maintenance', 1514008800, 1514019600, '0', 4, 7, 1513923360, NULL, NULL, NULL),
(68, 57, 'TRECO + CRM', 1513994400, 1514179800, '0', 4, 7, 1514164440, NULL, NULL, NULL),
(69, 52, 'Handle CRM tasks', 1513851300, 1513864800, '0', 4, 7, 1514164500, NULL, NULL, NULL),
(70, 52, 'Handle CRM tasks', 1513937700, 1513941300, '0', 4, 7, 1514164560, NULL, NULL, NULL),
(71, 31, 'Re:Monster maintenance', 1514599200, 1514610000, '0', 4, 7, 1514601000, NULL, NULL, NULL),
(72, 38, 'Maintain Remonster', 1514599200, 1514610000, '0', 4, 7, 1515122040, NULL, NULL, NULL),
(73, 38, 'Maintain Remonster', 1515204000, 1515214800, '0', 4, 7, 1515122100, NULL, NULL, NULL),
(74, 31, 'Re:Monster maintenance', 1515204000, 1515214800, '0', 4, 7, 1515122220, NULL, NULL, NULL),
(75, 31, 'Re:Monster maintenance', 1515808800, 1515819600, '0', 4, 7, 1515745980, NULL, NULL, NULL),
(76, 38, 'Remonster maintain', 1515808800, 1515819600, '0', 4, 7, 1515758580, NULL, NULL, NULL),
(77, 53, 'translate documents for Marc app.Please check daily report for detail.', 1516011300, 1516014900, '0', 4, 7, 1516080420, NULL, NULL, NULL),
(78, 53, 'Translate MARC App s document.', 1516097700, 1516104000, '0', 4, 7, 1516152060, NULL, NULL, NULL),
(79, 1, 'Review DDD in Marc2App as client request', 1516184100, 1516187700, '0', 4, 7, 1516183380, NULL, NULL, NULL),
(80, 52, 'CRM deploy', 1516011300, 1516015800, '0', 4, 7, 1516184880, NULL, NULL, NULL),
(81, 33, 'OT for Marc2app', 1516184100, 1516188600, '0', 4, 7, 1516188180, NULL, NULL, NULL),
(82, 57, 'Writing + Review DDD for screen', 1516184100, 1516188600, '0', 4, 7, 1516188180, NULL, NULL, NULL),
(83, 56, 'Translate/review marc2app project s DDD ', 1516184100, 1516190400, '0', 4, 7, 1516238640, NULL, NULL, NULL),
(84, 53, 'Translate documents for marc app', 1516184100, 1516190400, '0', 4, 7, 1516245360, NULL, NULL, NULL),
(85, 1, '#NAME?', 1516270500, 1516275900, '0', 4, 7, 1516269000, NULL, NULL, NULL),
(86, 36, 'Team work for the best result when customer is still in Vietnam', 1516184100, 1516188900, '0', 4, 7, 1516271880, NULL, NULL, NULL),
(87, 36, 'Team work for the best result when customer is still in Vietnam.', 1516270500, 1516275300, '0', 4, 7, 1516272000, NULL, NULL, NULL),
(88, 33, 'Research DDD of marc2app', 1516270500, 1516275900, '0', 4, 7, 1516275540, NULL, NULL, NULL),
(89, 57, 'Update DDD for Marc2App', 1516270500, 1516275900, '0', 4, 7, 1516275540, NULL, NULL, NULL),
(90, 56, 'Review marc2app documents.Support team. ', 1516270500, 1516277700, '0', 4, 7, 1516327920, NULL, NULL, NULL),
(91, 56, 'Review marc2app documents.Support team. ', 1516356900, 1516364100, '0', 4, 7, 1516327980, NULL, NULL, NULL),
(92, 33, 'Research DDD of marc2app', 1516356900, 1516362300, '0', 4, 7, 1516328520, NULL, NULL, NULL),
(93, 35, 'deploy CRM to production', 1516011300, 1516014900, '0', 4, 7, 1516343640, NULL, NULL, NULL),
(94, 52, 'TRECO enhance', 1516184100, 1516188600, '0', 4, 7, 1516350720, NULL, NULL, NULL),
(95, 52, 'Treco enhance', 1516270500, 1516272300, '0', 4, 7, 1516350780, NULL, NULL, NULL),
(96, 1, 'Update DDD for virtual currency in Marc2App', 1516356900, 1516360500, '0', 4, 7, 1516360740, NULL, NULL, NULL),
(97, 57, 'Update DDD for Marc2app', 1516356900, 1516361400, '0', 4, 7, 1516361040, NULL, NULL, NULL),
(98, 53, 'Translate for TRECO', 1516356900, 1516361400, '0', 4, 7, 1516361400, NULL, NULL, NULL),
(99, 56, 'Handle marc2app design document tasks. ', 1516410000, 1516420800, '0', 4, 7, 1516363860, NULL, NULL, NULL),
(100, 31, 'Maintenance for Re:Monster', 1516413600, 1516424400, '0', 4, 7, 1516418520, NULL, NULL, NULL),
(101, 33, 'Marc2 app In-app purchase design', 1516410000, 1516424400, '0', 4, 7, 1516419960, NULL, NULL, NULL),
(102, 1, 'OT to complete DDD for Marc2App', 1516410000, 1516419900, '0', 4, 7, 1516420020, NULL, NULL, NULL),
(103, 57, 'Write DDD for user wallet of Marc2App', 1516412700, 1516424400, '0', 4, 7, 1516423860, NULL, NULL, NULL),
(104, 36, 'Team work for the best result when customer is still in Vietnam.', 1516356900, 1516361700, '0', 4, 7, 1516427880, NULL, NULL, NULL),
(105, 36, 'Team work for the best result when customer is still in Vietnam', 1516410900, 1516427940, '0', 4, 7, 1516428000, NULL, NULL, NULL),
(106, 33, 'In app purchase research ', 1516424400, 1516428000, '0', 4, 7, 1516428000, NULL, NULL, NULL),
(107, 57, 'Update DDD for Marc2App', 1516616100, 1516622400, '0', 4, 7, 1516621860, NULL, NULL, NULL),
(108, 56, 'Discuss project DDD.', 1516616100, 1516623300, '0', 4, 7, 1516621980, NULL, NULL, NULL),
(109, 56, 'Handle marc2app tasks. ', 1516702500, 1516709700, '0', 4, 7, 1516670760, NULL, NULL, NULL),
(110, 33, 'Tomorrow Takanashi san comes back Japan. I must Update BL041 and BL045 and show to Takanashi san.', 1516719600, 1516726800, '0', 2, 5, 1516726800, NULL, NULL, NULL),
(111, 33, 'Update BL 041 BL045 for Marc2app Project and set up a alias email for systemadmin.', 1516788900, 1516791240, '0', 2, 5, 1516791300, NULL, NULL, NULL),
(112, 57, 'Implement A01 screen of Marc2App', 1516875300, 1516878900, '0', 2, 5, 1516879260, NULL, NULL, NULL),
(113, 1, 'Implement coding as heavily workload.', 1516875300, 1516878900, '0', 2, 5, 1516879320, NULL, NULL, NULL),
(114, 33, 'Update BL041', 1517014800, 1517029200, '0', 2, 5, 1517029080, NULL, NULL, NULL),
(115, 57, 'Implement A11 screen for Marc2App', 1517017500, 1517029200, '0', 2, 5, 1517029080, NULL, NULL, NULL),
(116, 36, 'Speed up the work result', 1517020200, 1517029200, '0', 2, 5, 1517029200, NULL, NULL, NULL),
(117, 33, 'Meeting with takanashi san', 1517201100, 1517204700, '0', 2, 5, 1517204280, NULL, NULL, NULL),
(118, 1, 'Meeting with Takanashi-san', 1517201100, 1517204700, '0', 2, 5, 1517206020, NULL, NULL, NULL),
(119, 56, 'Review project test cases. ', 1517220900, 1517228100, '0', 2, 5, 1517217780, NULL, NULL, NULL),
(120, 1, 'Rush for deadline', 1517220900, 1517223600, '0', 2, 5, 1517225520, NULL, NULL, NULL),
(121, 57, 'Implement A11 screen', 1517220900, 1517225400, '0', 2, 5, 1517225640, NULL, NULL, NULL),
(122, 33, 'Implement BL022', 1517220900, 1517226300, '0', 2, 5, 1517226180, NULL, NULL, NULL),
(123, 36, 'Speed up the work result', 1517220900, 1517227200, '0', 4, 7, 1517227200, NULL, NULL, NULL),
(124, 56, 'Handle marc2app tasks.', 1517307300, 1517314500, '0', 4, 7, 1517306760, NULL, NULL, NULL),
(125, 33, 'Update BL011 and Update BL022', 1517307300, 1517310900, '0', 4, 7, 1517310420, NULL, NULL, NULL),
(126, 57, 'Implement A21 screen', 1517307300, 1517310900, '0', 4, 7, 1517361780, NULL, NULL, NULL),
(127, 31, 'ReMonster Maintenance', 1517104800, 1517122800, '0', 2, 5, 1517553780, NULL, NULL, NULL),
(128, 1, 'Try to finish all remaining tasks for mobile app', 1517625900, 1517633100, '0', 2, 5, 1517631720, NULL, NULL, NULL),
(129, 33, 'Update Unit test BL002 and Set up Local environment for TRECO project', 1517619600, 1517634000, '0', 2, 5, 1517632500, NULL, NULL, NULL),
(130, 57, 'Implement A43 screen', 1517621400, 1517634000, '0', 2, 5, 1517633640, NULL, NULL, NULL),
(131, 31, 'ReMonster Maintenance', 1517637600, 1517641200, '0', 4, 7, 1517634480, NULL, NULL, NULL),
(132, 1, 'Meeting with Takanashi-san', 1518065100, 1518066900, '0', 2, 5, 1518070680, NULL, NULL, NULL),
(133, 31, 'ReMonster maintenance', 1518328800, 1518339600, '0', 4, 7, 1518325740, NULL, NULL, NULL),
(134, 52, 'Update zodiaq website', 1518430500, 1518435540, '0', 2, 5, 1518435660, NULL, NULL, NULL),
(135, 38, 'remonster maintain', 1517108400, 1517126400, '0', 2, 5, 1519184580, NULL, NULL, NULL),
(136, 55, 'The project Milly android need to be done some function before 28/02, so I need to work at weekend to finish', 1519434000, 1519467300, '0', 2, 5, 1519294560, NULL, NULL, NULL),
(137, 55, 'The project Milly android need to be done some function before 28/02, so I need to work at weekend to finish', 1519520400, 1519553700, '0', 4, 7, 1519294740, NULL, NULL, NULL),
(138, 52, 'Support Tuan-san to crop images for Milly Project', 1519527000, 1519530600, '0', 2, 5, 1519609260, NULL, NULL, NULL),
(139, 56, 'Hanlde milly application development', 1519520400, 1519525800, '0', 2, 5, 1519613700, NULL, NULL, NULL),
(140, 56, 'Hanlde milly application development', 1519383600, 1519389000, '0', 2, 5, 1519613760, NULL, NULL, NULL),
(141, 56, 'Hanlde milly application development', 1519468200, 1519471800, '0', 2, 5, 1519613820, NULL, NULL, NULL),
(142, 57, 'Fix bugs for TRECO', 1519726500, 1519730100, '0', 2, 5, 1519730280, NULL, NULL, NULL),
(143, 33, 'Implement TRECO Enhance No.02', 1519726500, 1519730280, '0', 2, 5, 1519730340, NULL, NULL, NULL),
(144, 1, 'Rush for deadline', 1519726500, 1519731000, '0', 2, 5, 1519731060, NULL, NULL, NULL),
(145, 35, 'Implement Treco ticket', 1519726500, 1519731000, '0', 2, 5, 1519812960, NULL, NULL, NULL),
(146, 1, 'Rush for deadline', 1519812900, 1519818300, '0', 2, 5, 1519817640, NULL, NULL, NULL),
(147, 57, 'Fix bugs of TRECO', 1519812900, 1519817400, '0', 2, 5, 1519817760, NULL, NULL, NULL),
(148, 33, 'Implement TRECO-ENHANCE No.02', 1519812900, 1519819200, '0', 2, 5, 1519819020, NULL, NULL, NULL),
(149, 35, 'implement Treco ticket', 1519812900, 1519819200, '0', 2, 5, 1519897380, NULL, NULL, NULL),
(150, 56, 'Handle milly app', 1519899300, 1519902900, '0', 2, 5, 1519953420, NULL, NULL, NULL),
(151, 35, 'implement Treco request', 1519899300, 1519901100, '0', 2, 5, 1519977120, NULL, NULL, NULL),
(152, 33, 'Fix bug Treco enhance No 047', 1519985700, 1519991100, '0', 2, 5, 1519990920, NULL, NULL, NULL),
(153, 33, 'Hot fix treco enhance', 1520504100, 1520506800, '0', 2, 5, 1520506500, NULL, NULL, NULL),
(154, 37, 'Supervise dismantling office', 1521252000, 1521288000, '0', 2, 5, 1521184680, NULL, NULL, NULL),
(155, 31, 'ReMonster maintenance', 1521252000, 1521262800, '0', 2, 5, 1521251640, NULL, NULL, NULL),
(156, 31, 'ReMonster maintenance', 1520056800, 1520067600, '0', 4, 7, 1521428640, NULL, NULL, NULL),
(157, 31, 'ReMonster maintenance', 1520647200, 1520658000, '0', 2, 5, 1521428760, NULL, NULL, NULL),
(158, 31, 'ReMOnster maintenance', 1521856800, 1521867600, '0', 4, 7, 1521863160, NULL, NULL, NULL),
(159, 31, 'ReMonster maintenance', 1522461600, 1522472400, '0', 4, 7, 1522387860, NULL, NULL, NULL),
(160, 33, 'Hot fix ECCUBE: Fix module Robot payment', 1522404900, 1522411200, '0', 2, 5, 1522411260, NULL, NULL, NULL),
(161, 58, 'Request of project (EC-CUBE)', 1522404900, 1522412100, '0', 2, 5, 1522412280, NULL, NULL, NULL),
(162, 33, 'Fix bugs Robot Payment feature and Deploy to Production server', 1522458000, 1522491300, '0', 2, 5, 1522491000, NULL, NULL, NULL),
(163, 58, 'Request of project (Robot Payment)', 1522461600, 1522490400, '0', 2, 5, 1522491180, NULL, NULL, NULL),
(164, 35, 'Deploy Marc + EcCube', 1522461600, 1522491300, '0', 2, 5, 1522491300, NULL, NULL, NULL),
(165, 31, 'ReMonster maintenance', 1523066400, 1523077200, '0', 2, 5, 1523067300, NULL, NULL, NULL),
(166, 35, 'Fix bug EcCube', 1523614500, 1523619000, '0', 1, 4, 1523618700, NULL, NULL, NULL),
(167, 33, 'Research urgent bugs of ECCUBE', 1523614500, 1523619000, '0', 1, 4, 1523618820, NULL, NULL, NULL),
(168, 33, 'Research urgent bugs of ECCUBE', 1523619000, 1523620800, '0', 1, 4, 1523619960, NULL, NULL, NULL),
(169, 58, 'Fix urgent bugs.', 1523615400, 1523620800, '0', 2, 5, 1523621280, NULL, NULL, NULL),
(170, 31, 'ReMonster maintenance', 1523671200, 1523682000, '0', 2, 5, 1523684280, NULL, NULL, NULL),
(171, 33, 'do statistics about source codes for Marc2', 1524219300, 1524225600, '0', 1, 4, 1524225180, NULL, NULL, NULL),
(172, 31, 'ReMonster maintenace', 1525485600, 1525496400, '0', 4, 7, 1525423380, NULL, NULL, NULL),
(173, 31, 'ReMonster maintenance', 1524276000, 1524286800, '0', 4, 7, 1525423980, NULL, NULL, NULL),
(174, 34, 'Complete urgent first phrase of Yume 100 project', 1525482000, 1525515300, '0', 4, 7, 1525424760, NULL, NULL, NULL),
(175, 33, 'Fix UI bugs for Treco', 1525860900, 1525864620, '0', 4, 7, 1525864680, NULL, NULL, NULL),
(176, 34, 'Complete translation file of Yume 100 urgently', 1526086800, 1526120100, '0', 2, 5, 1526037900, NULL, NULL, NULL),
(177, 31, 'ReMonster maintenance', 1526090400, 1526101200, '0', 2, 5, 1526100120, NULL, NULL, NULL),
(178, 34, 'Complete the translation of Yume 100 urgently', 1526691600, 1526724900, '0', 2, 5, 1526691120, NULL, NULL, NULL),
(179, 31, 'ReMonster MaintenanceYume100 translation team over time.', 1526695200, 1526715000, '0', 2, 5, 1526695500, NULL, NULL, NULL),
(180, 31, 'ReMonster maintenance', 1527300000, 1527310800, '0', 2, 5, 1526955900, NULL, NULL, NULL),
(181, 32, 'Yume 100 translation', 1525482000, 1525500000, '0', 1, 4, 1527039900, NULL, NULL, NULL),
(182, 32, 'Yume 100 translation', 1526086800, 1526120100, '0', 1, 4, 1527039960, NULL, NULL, NULL),
(183, 32, 'Yume 100 translation', 1526709600, 1526724900, '0', 1, 4, 1527040080, NULL, NULL, NULL),
(184, 53, 'OKI/WINNERS: Powerwork: Translate for updated file test case (13file)', 1530320400, 1530333000, '0', 2, 5, 1530333120, NULL, NULL, NULL),
(185, 30, 'Translate file test case (13) for Powerwork project', 1530322200, 1530333000, '0', 4, 7, 1530333240, NULL, NULL, NULL),
(186, 33, 'Support Framgia deploy to ECCUBE Production server', 1533098700, 1533102300, '', 1, 4, 1534734037, 1538124653, 29, NULL),
(187, 55, 'Murakawa is kind of rush, I am OT to finish this project', 1535158800, 1535192100, 'Murakawa', 1, 4, 1535096917, 1538124648, 29, NULL),
(188, 55, 'Murakawa is kind of rush, I am OT to finish this project', 1535763600, 1535796900, 'Murakawa', 1, 4, 1535620960, 1538124643, 29, NULL),
(189, 55, 'Wecssy resubmit QuickTrade app on Apple ITC', 1536368400, 1536401700, 'WecssymQuickTrade', 1, 4, 1536302696, 1538124638, 29, NULL),
(190, 44, 'To refine text of Yume100 game.', 1536973200, 1537006500, '', 0, 3, 1536973557, 1537000308, 29, 1537000308),
(191, 44, '', 1536973200, 1536983100, '', 0, 3, 1537000365, 1537427228, 29, 1537427228),
(192, 44, 'Refine texts of game Yume 100.', 1536991200, 1537006500, 'Yume 100', 1, 4, 1537000397, 1538124633, 29, NULL),
(193, 44, 'Refine texts of game Yume 100.', 1536973200, 1536983100, 'Yume 100', 1, 4, 1537427210, 1538124629, 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `current_group_id` int(11) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `total_with_vat` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `total_amount`, `vat`, `currency`, `status`, `reasons`, `current_group_id`, `payment_method`, `details`, `created_at`, `updated_at`, `assign_manager_id`, `total_with_vat`, `deleted_at`, `file_path`, `file_name`) VALUES
(1, 61, 12740000, 0, '', 4, 'once a year, let employees take medical check.BO team got a quotation from hospital, so please check attached quotation.', NULL, 3, '', 1501050000, NULL, 29, 12740000, NULL, NULL, NULL),
(2, 61, 2157045, 0, '', 4, 'EPayment of copyright royalty to AlphaPolis. June 2017 minutes', NULL, 3, '', 1501491660, NULL, 29, 2157045, NULL, NULL, NULL),
(3, 53, 450000, 0, '', 4, 'For Macbook skype meeting, using ethernet for faster speed. ', NULL, 1, '', 1483842300, NULL, 29, 450000, NULL, NULL, NULL),
(4, 30, 800000, 0, '', 4, '[‰H”Á‰á–h‰u]@Because of Dengue fever is now boom in Hanoi, I request to use disinfection service. ', NULL, 1, '', 1491619200, NULL, 29, 800000, NULL, NULL, NULL),
(5, 59, 200000, 0, '', 4, 'Payment for express delivery from 7/3/2017 to 8/9/2017', NULL, 1, '', 1507430940, NULL, 29, 200000, NULL, NULL, NULL),
(6, 60, 6000000, 0, '', 4, 'To get License Shinchan', NULL, 1, '', 1507448580, NULL, 29, 6000000, NULL, NULL, NULL),
(7, 60, 760000, 0, '', 4, 'Hi,I request we should buy 50 chapters of Shinchan (vietnamese version) https://www.adayroi.com/shin-cau-be-but-chi-truyen-ngan-tron-bo-50-cuon-p-4aeLO-f1-2?pi=jrWzm Thanks./', NULL, 1, '', 1503471660, NULL, 29, 760000, NULL, NULL, NULL),
(8, 38, 900000, 0, '', 4, 'Request mobile card for testing', NULL, 1, '', 1503541440, NULL, 29, 900000, NULL, NULL, NULL),
(9, 54, 1800000, 0, '', 4, ' New digit signature Vina-CA for 1,5 years', NULL, 3, '', 1503654900, NULL, 29, 1800000, NULL, NULL, NULL),
(10, 60, 12000000, 0, '', 4, 'To finish get Shinchan License', NULL, 1, '', 1503911340, NULL, 29, 12000000, NULL, NULL, NULL),
(11, 59, 180000, 0, '', 4, 'Payment for name card order for Hibi san and Kato san. ', NULL, 1, '', 1503979620, NULL, 29, 180000, NULL, NULL, NULL),
(12, 54, 4320000, 0, '', 4, 'Accounting software out of date', NULL, 3, '', 1504161480, NULL, 29, 4320000, NULL, NULL, NULL),
(13, 61, 72292000, 0, '', 4, 'We will order Kayac to rapper for connecting Crayon Shin-chan s game and Fuji SDK. I attached an estimate.Amount (yen) 350,000 Manpower (human day) 15', NULL, 3, '', 1505272620, NULL, 29, 72292000, NULL, NULL, NULL),
(14, 61, 9532665, 0, '', 4, 'EPayment of copyright royalty to AlphaPolis. July 2017 ', NULL, 3, '', 1506483360, NULL, 29, 9532665, NULL, NULL, NULL),
(15, 53, 2772000, 0, '', 4, 'Buy MOONCAKE', NULL, 1, '', 1506660780, NULL, 29, 2772000, NULL, NULL, NULL),
(16, 59, 140000, 0, '', 4, 'To pay the express delivery fee from 8/16/2017 - 9/28/2017', NULL, 1, '', 1489120320, NULL, 29, 140000, NULL, NULL, NULL),
(17, 59, 60000, 0, '', 4, 'Payment for express delivery from 6th Oct to 11th Oct ', NULL, 1, '', 1512892740, NULL, 29, 60000, NULL, NULL, NULL),
(18, 61, 842000, 0, '', 4, 'I had a dinner meeting with the staff at the safari games. I paid for the dinner. I will charge Fuji.', NULL, 1, '', 1507860240, NULL, 29, 842000, NULL, NULL, NULL),
(19, 59, 40000, 0, '', 4, 'Payment for making the more copy of company s key.', NULL, 1, '', 1507869360, NULL, 29, 40000, NULL, NULL, NULL),
(20, 56, 12000, 0, 'JPY', 4, 'iPhone 5s (Jp) to test (old) (mobile) apps (Japan) on Marc2 and other apps. Price ~12,000 Yen Example: http://www.sofmap.com/product_detail.aspx?sku=43436543&gid=UD28070103', NULL, 1, '', 1508732880, NULL, 29, 12000, NULL, NULL, NULL),
(21, 56, 2400000, 0, '', 4, 'iPhone 5s (Jp) to test (old) (mobile) apps (Japan) on Marc2 and other apps. Price ~12,000 Yen Example: http://www.sofmap.com/product_detail.aspx?sku=43436543&gid=UD28070103', NULL, 1, '', 1508806680, NULL, 29, 2400000, NULL, NULL, NULL),
(22, 57, 20782000, 0, '', 4, 'Buy new PC for new staff - Kh?ng Qu?c Hi?u and replace a broken PC power supply', NULL, 1, '', 1508813880, NULL, 29, 20782000, NULL, NULL, NULL),
(23, 62, 545000, 0, '', 4, 'Use for project react native app Marc 2 https://www.phucanh.vn/ban-phim-dell-kb216b-usb-co-day.html https://www.phucanh.vn/chuot-logitech-b100-usb.html https://fptshop.com.vn/phu-kien/cap-micro-usb-rock-1m-nhua-chong-roi https://fptshop.com.vn/phu-kien/cap-lightning-rock-1m', NULL, 1, '', 1508819700, NULL, 29, 545000, NULL, NULL, NULL),
(24, 61, 50796, 0, 'JPY', 4, 'EPayment of copyright royalty to AlphaPolis. August 2017 ', NULL, 3, '', 1509335040, NULL, 29, 50796, NULL, NULL, NULL),
(25, 57, 867000, 0, 'VND', 4, 'Payment for express delivery from 11th Oct to 31st Oct, shipping fee, Activity s stuffs and Birthday gifts', NULL, 1, '', 1509415560, NULL, 29, 867000, NULL, NULL, NULL),
(26, 60, 30, 0, 'USD', 4, 'Tool for ReMonster maintaince.https://gyazo.com/d77841ae1e4e163f7c97fc03c91c13d7 We need plan 10$/ month x 3 month = 30$', NULL, 2, '', 1486798740, NULL, 29, 30, NULL, NULL, NULL),
(27, 37, 319000, 0, 'VND', 4, 'Buy magnet board using for noticing staffs', NULL, 1, '', 1489197660, NULL, 29, 319000, NULL, NULL, NULL),
(28, 62, 99000, 0, 'VND', 4, 'Cap HDMI for connect PC with display https://www.phucanh.vn/cap-hdmi-vention-15m.html', NULL, 1, '', 1497161640, NULL, 29, 99000, NULL, NULL, NULL),
(29, 37, 2000000, 10, 'VND', 4, 'Buy calendar 2018', NULL, 1, '', 1502418840, NULL, 29, 2200000, NULL, NULL, NULL),
(30, 37, 1000000, 0, 'VND', 4, 'Buy gifts for Mr. Takanashi, Mr. Ha and farewell party', NULL, 1, '', 1502425980, NULL, 29, 1000000, NULL, NULL, NULL),
(31, 37, 30000, 0, 'VND', 4, 'Print color documents for Mr. Ha is evaluation report', NULL, 1, '', 1505100180, NULL, 29, 30000, NULL, NULL, NULL),
(32, 37, 1600000, 10, 'VND', 4, 'Print company flyers', NULL, 1, '', 1510541820, NULL, 29, 1760000, NULL, NULL, NULL),
(33, 37, 3800000, 0, 'VND', 1, 'expand the office', NULL, 1, '', 1510630500, NULL, 29, 3800000, NULL, NULL, NULL),
(34, 37, 200000, 0, 'VND', 4, 'Fix the door is lock', NULL, 1, '', 1511148960, NULL, 29, 200000, NULL, NULL, NULL),
(35, 37, 400000, 10, 'VND', 4, 'Print documents for event \"Job Fair\"', NULL, 1, '', 1511517480, NULL, 29, 440000, NULL, NULL, NULL),
(36, 37, 2000000, 0, 'VND', 4, '- Farewell party for Hibi-san =- Staff birthday November party and gifts.', NULL, 1, '', 1511852100, NULL, 29, 2000000, NULL, NULL, NULL),
(37, 56, 150000, 0, 'JPY', 4, '---¡‰ñ‚ÌBodyscannerì‹Æ‚É‚Â‚¢‚ÄAŒ©Ï‚à‚èƒtƒ@ƒCƒ‹‚ðì¬‚µ‚Ü‚µ‚½BEŠJ”­—’èŠúŠÔF11ŒŽ30“ú|12ŒŽ8“úE”ï—pF15–œ‰~Ú‚µ‚­ƒtƒ@ƒCƒ‹‚É‚²Šm”FE‚²ŒŸ“¢‚¨Šè‚¢‚µ‚Ü‚·B---', NULL, 1, '', 1512017100, NULL, 29, 150000, NULL, NULL, NULL),
(38, 38, 300000, 0, 'VND', 4, 'Request mobile card for testing', NULL, 1, '', 1486866180, NULL, 29, 300000, NULL, NULL, NULL),
(39, 37, 210000, 0, 'VND', 4, '- Express delivery from November to 4 December- Having document notarized (support Mr. Ha Nguyen)', NULL, 1, '', 1494578820, NULL, 29, 210000, NULL, NULL, NULL),
(40, 37, 200000, 0, 'VND', 4, 'Fix small meeting room s door', NULL, 1, '', 1513912380, NULL, 29, 200000, NULL, NULL, NULL),
(41, 37, 300000, 0, 'VND', 4, 'Buy decoration for New Year', NULL, 1, '', 1513912500, NULL, 29, 300000, NULL, NULL, NULL),
(42, 37, 3000000, 0, 'VND', 4, 'Buy new swivel chairs to replace broken chairs.', NULL, 1, '', 1513918140, NULL, 29, 3000000, NULL, NULL, NULL),
(43, 37, 250000, 0, 'VND', 4, 'Buy birthday gifts for 3 staffs', NULL, 1, '', 1514253480, NULL, 29, 250000, NULL, NULL, NULL),
(44, 56, 159000, 0, 'VND', 4, 'Hub usb (B? chia c?ng usb): Use it for project Marc2 app https://www.phucanh.vn/bo-chia-usb-1-ra-4-orico-w5ph4-u2-usb20.html', NULL, 1, '', 1514348760, NULL, 29, 159000, NULL, NULL, NULL),
(45, 60, 1130000, 0, 'VND', 4, 'Cost for Bussiness Trip in HCM city', NULL, 1, '', 1519874700, NULL, 29, 1130000, NULL, NULL, NULL),
(46, 37, 165000, 0, 'VND', 4, 'Express delivery from 20 December 2017 to 2 January 2018', NULL, 1, '', 1519888800, NULL, 29, 165000, NULL, NULL, NULL),
(47, 37, 117000, 0, 'VND', 4, 'Buy beverage for company', NULL, 1, '', 1543650120, NULL, 29, 117000, NULL, NULL, NULL),
(48, 33, 0, 0, 'USD', 4, 'Use AWS S3 service to storage Achievement training files(videos/audios). This is request from Mr. Takanashi.', NULL, 2, '', 1516255920, NULL, 29, 0, NULL, NULL, NULL),
(49, 37, 200000, 10, 'VND', 4, 'Print backdrop for Year-end Party', NULL, 1, '', 1517210460, NULL, 29, 220000, NULL, NULL, NULL),
(50, 37, 200000, 10, 'VND', 4, 'Refill ink cartridges 2 times:- 2017/12/12- 2018/1/11', NULL, 1, '', 1525234680, NULL, 29, 220000, NULL, NULL, NULL),
(51, 37, 150000, 0, 'VND', 4, 'Buy birthday gifts for staffs in February.', NULL, 1, '', 1525247340, NULL, 29, 150000, NULL, NULL, NULL),
(52, 36, 25900000, 0, 'VND', 1, 'It is required for building iOS app. Product detail: http://macone.vn/mf840-macbook-pro-retina-13-inch-2015-ram-16/', NULL, 1, '', 1527906240, NULL, 29, 25900000, NULL, NULL, NULL),
(53, 37, 100000, 0, 'VND', 4, 'Express delivery from 15 January 2018 to 29 January 2018', NULL, 1, '', 1530519780, NULL, 29, 100000, NULL, NULL, NULL),
(54, 37, 390000, 0, 'VND', 4, 'Express delivery', NULL, 1, '', 1535875080, NULL, 29, 390000, NULL, NULL, NULL),
(55, 37, 1075000, 10, 'VND', 4, 'Buy stationery', NULL, 1, '', 1519206720, NULL, 29, 1182500, NULL, NULL, NULL),
(56, 37, 120000, 0, 'VND', 4, 'Print namecard for Misaki-san', NULL, 1, '', 1519705740, NULL, 29, 120000, NULL, NULL, NULL),
(57, 37, 250000, 0, 'VND', 4, 'Prepare farewell party and buy farewell gift for D?ng-san', NULL, 1, '', 1519727160, NULL, 29, 250000, NULL, NULL, NULL),
(58, 37, 360000, 0, 'VND', 4, '- Problem with photocopy machine: need to replace drum=- Refill ink cartridge', NULL, 1, '', 1519806240, NULL, 29, 360000, NULL, NULL, NULL),
(59, 37, 125000, 0, 'VND', 4, '- Buy new sim card for Misaki-san- Print extra namecard (cards) for Misaki-san', NULL, 1, '', 1517625900, NULL, 29, 125000, NULL, NULL, NULL),
(60, 56, 200000, 0, 'VND', 4, 'Print the book \"Developer Testing Building Quality into Software\" for internal training (Ach/Treco)', NULL, 1, '', 1517652360, NULL, 29, 200000, NULL, NULL, NULL),
(61, 1, 369000, 0, 'VND', 4, 'Switch to using laptop for better meeting and familiar development enviroments', NULL, 1, '', 1525310460, NULL, 29, 369000, NULL, NULL, NULL),
(62, 37, 2953000, 0, 'VND', 4, 'Buy new monitor for new staff - Tran Ngoc Dien (BrSE)', NULL, 1, '', 1528012020, NULL, 29, 2953000, NULL, NULL, NULL),
(63, 37, 90000, 0, 'VND', 4, 'Print namecard for Misaki-san', NULL, 1, '', 1535946000, NULL, 29, 90000, NULL, NULL, NULL),
(64, 37, 309000, 0, 'VND', 4, 'To buy new cable mini displayport for Misaki-san.', NULL, 1, '', 1521708660, NULL, 29, 309000, NULL, NULL, NULL),
(65, 42, 1799000, 0, 'VND', 4, 'I need to save all requirements that cutomer send to me. ', NULL, 1, '', 521797580, NULL, 29, 1799000, NULL, NULL, NULL),
(66, 37, 90000, 0, 'VND', 4, 'Namecard for Nguyen Thanh Le', NULL, 1, '', 1522218840, NULL, 29, 90000, NULL, NULL, NULL),
(67, 37, 230000, 0, 'VND', 4, 'Express delivery from 27th February to 30th March.', NULL, 1, '', 1522378140, NULL, 29, 230000, NULL, NULL, NULL),
(68, 42, 500000, 0, 'VND', 4, 'IT勉強会参加のため', NULL, 1, '', 1522383600, NULL, 29, 500000, NULL, NULL, NULL),
(69, 37, 83000, 0, 'VND', 4, 'Prepare for Activity and birthday March', NULL, 1, '', 1522390980, NULL, 29, 83000, NULL, NULL, NULL),
(70, 1, 1, 0, 'USD', 4, 'Based on this message :https://www.chatwork.com/#!rid89444473-1032582288908505088 We need to apply credit card and contact support to create EC2 server on AWS for account: fujitech.murakawa.2017@gmail.com.First time, Amazon will charge only 1$ to validate credit card.', NULL, 2, '', 1520133600, NULL, 29, 1, NULL, NULL, NULL),
(71, 37, 3000000, 10, 'VND', 4, 'order 2 tables (sample as at Hung-san s position)', NULL, 1, '', 1520153280, NULL, 29, 3300000, NULL, NULL, NULL),
(72, 55, 124, 0, 'USD', 4, 'Murakawa project need Apple account and Google Store account to public app (Install app on customer devices)- IMPORTANT: Apple account : 99$/year- Google account: 25$/lifetime', NULL, 2, '', 1528099020, NULL, 29, 124, NULL, NULL, NULL),
(73, 37, 495000, 0, 'VND', 4, 'Party celebrate Shin-chan project', NULL, 1, '', 1536026820, NULL, 29, 495000, NULL, NULL, NULL),
(74, 42, 400000, 0, 'VND', 1, 'calling and Internet by mobile phone', NULL, 1, '', 1536046560, NULL, 29, 400000, NULL, NULL, NULL),
(75, 37, 320000, 0, 'VND', 4, 'Buy cable from HDMI to VGA for Dien-san is laptop', NULL, 1, '', 1536046920, NULL, 29, 320000, NULL, NULL, NULL),
(76, 37, 885000, 10, 'VND', 4, 'Buy stationary April 2018', NULL, 1, '', 1536051180, NULL, 29, 973500, NULL, NULL, NULL),
(77, 37, 120000, 0, 'VND', 4, 'Print namecard for Dien-san', NULL, 1, '', 1523872980, NULL, 29, 120000, NULL, NULL, NULL),
(78, 37, 500000, 0, 'VND', 4, 'Staff birthday party April', NULL, 1, '', 1524032940, NULL, 29, 500000, NULL, NULL, NULL),
(79, 54, 4800000, 10, 'VND', 1, 'We need add 1 line internet of other supplier because Internet s VNPT is not stable. Toan-san and I decide to choose Internet of Viettel because it is stable and cheaper.', NULL, 3, '', 1524190320, NULL, 29, 5280000, NULL, NULL, NULL),
(80, 54, 2453637, 10, 'VND', 1, 'To?n-san request buy a Load balancer because we will used Load balancer to open a both 2 line internet ( VNPT and Viettel).', NULL, 1, '', 1524190440, NULL, 29, 2699001, NULL, NULL, NULL),
(81, 54, 5600000, 10, 'VND', 4, 'We must rental car for ?? N?ng trip 03 days: 2/6; 3/6; 4/6', NULL, 3, '', 1520232900, NULL, 29, 6160000, NULL, NULL, NULL),
(82, 33, 420000, 0, 'VND', 4, 'Dear Kato san,Our office doesnt have enough mouses for each members. So i have to request money to buy new mouses. I have inserted description on Describe section below.', NULL, 1, '', 1530758520, NULL, 29, 420000, NULL, NULL, NULL),
(83, 37, 100000, 10, 'VND', 4, 'Refill ink cartridge', NULL, 1, '', 1533465000, NULL, 29, 110000, NULL, NULL, NULL),
(84, 37, 700000, 0, 'VND', 4, 'Farewell party for Ha To Ha-san.', NULL, 1, '', 1536119880, NULL, 29, 700000, NULL, NULL, NULL),
(85, 37, 800000, 0, 'VND', 4, 'Staffs birthday party of May', NULL, 1, '', 1536131580, NULL, 29, 800000, NULL, NULL, NULL),
(86, 37, 120000, 0, 'VND', 4, 'Fix photocopy machine', NULL, 1, '', 1538713440, NULL, 29, 120000, NULL, NULL, NULL),
(87, 38, 770000, 0, 'VND', 4, 'Buy 1 year domain for Yume100', NULL, 3, '', 1527143640, NULL, 29, 770000, NULL, NULL, NULL),
(88, 37, 360000, 0, 'VND', 4, 'Express delivery from 23/4 to 25/5', NULL, 1, '', 1527216180, NULL, 29, 360000, NULL, NULL, NULL),
(89, 37, 110000, 0, 'VND', 4, 'Fill in ink cartridge', NULL, 1, '', 1527564600, NULL, 29, 110000, NULL, NULL, NULL),
(90, 37, 184000, 0, 'VND', 4, 'Name card for Misaki-san', NULL, 1, '', 1533530340, NULL, 29, 184000, NULL, NULL, NULL),
(91, 37, 200000, 0, 'VND', 4, 'Unlock safety box', NULL, 1, '', 1533545040, NULL, 29, 200000, NULL, NULL, NULL),
(92, 55, 254000, 10, 'VND', 4, 'We are using free technical for Murakawa for save our money, But when operation we see free technical is not good Now We need by 2 services for Murakawa website is that SSL and Domain', NULL, 3, '', 1528945860, NULL, 29, 279400, NULL, NULL, NULL),
(93, 37, 700000, 0, 'VND', 4, 'Farewell party for Th??ng-san and welcome new staffs', NULL, 1, '', 1529571720, NULL, 29, 700000, NULL, NULL, NULL),
(94, 37, 800000, 0, 'VND', 4, 'Birthday party June and welcome new member.', NULL, 1, '', 1529571960, NULL, 29, 800000, NULL, NULL, NULL),
(95, 37, 149000, 0, 'VND', 4, 'Our company is lack of internet cable and need to buy pincer and internet cable head.', NULL, 1, '', 1517970360, NULL, 29, 149000, NULL, NULL, NULL),
(96, 37, 630000, 0, 'VND', 4, 'Dear Kato san,Our office doesnt have enough mice for each members. So I have to request to buy new mice.', NULL, 1, '', 1517976960, NULL, 29, 630000, NULL, NULL, NULL),
(97, 37, 350000, 0, 'VND', 4, 'to buy birthday gift and birthday cake for staff of July.', NULL, 1, '', 1532321100, NULL, 29, 350000, NULL, NULL, NULL),
(98, 37, 649000, 0, 'VND', 1, 'Buy new laptop battery charger for Thuy-san (Comtor)and a new HDMI cable', NULL, 1, '', 1532501820, NULL, 29, 649000, NULL, NULL, NULL),
(99, 37, 571200, 10, 'VND', 4, 'To buy stationery for July-August 2018', NULL, 3, '', 1532510100, NULL, 29, 628320, NULL, NULL, NULL),
(100, 1, 46, 0, 'USD', 1, 'Since Yume100 will planning to release on end of August.So this proposal is for Yume100s game server.NOTE: please note that it is monthly subscription.Link to AWSs calculator:https://calculator.s3.amazonaws.com/index.html#r=IAD&key=calc-3018F83D-EE84-431C-8D12-72E822312D68', NULL, 2, '', 1532594880, NULL, 29, 46, NULL, NULL, NULL),
(101, 1, 300000, 10, 'VND', 1, 'Platform server is out of disk space. So database service will crash. I would like to increase it with additional 50GB', NULL, 3, '', 1532917200, NULL, 29, 330000, NULL, NULL, NULL),
(102, 37, 450000, 0, 'VND', 1, 'To buy coffee and tea for office.', 4, 1, 'Milk coffee G7 - 3 in 1\r\nTea Dilmah', 1534324587, 1534730944, 29, 450000, NULL, '', ''),
(103, 37, 115000, 0, 'VND', 1, 'Express delivery from 24th July to 9th Aug.', 4, 1, '- 24/7/2018:	sent to Soft Flight	ltd. company\r\n   at 8F, ACB Building, No 218 Bach Dang, Da Nang city\r\n   Expense: 40,000 vnd\r\n- 26/7/2018: sent to Mpire Agency\r\n   at Queen Plaza, F Central, 16A Lê Hồng Phong, HCMC\r\n   Expense: 35,000 vnd\r\n- 9/8/2018: sent to Gate Online Service JSC\r\n   at No 15-17 Nguyễn Cơ Thạch, HCMC\r\n   Expense: 40,000 vnd', 1534817375, 1535341897, 29, 115000, NULL, '', ''),
(104, 37, 90000, 0, 'VND', 1, 'Print namecard box for Kato-san', 4, 1, 'Print 1 box of namecard', 1534824163, 1535341888, 29, 90000, NULL, '', ''),
(105, 67, 550000, 0, 'VND', 1, 'Throw a farawell party for ms Thuy Tran.', 4, 1, 'Buy snack for party and a farawell gift for ms Thuy.', 1535081176, 1535341879, 29, 550000, NULL, '', ''),
(106, 67, 591000, 10, 'VND', 1, 'There is defect in Ink Cartridge (in printer) so printed documents will be blur and unbold. Therefore we need to replace it with a new Ink Catridge. ', 4, 3, 'Buy new Ink Cartridge for Printer', 1535335343, 1535341865, 29, 650100, NULL, '', ''),
(107, 67, 510000, 10, 'VND', 0, 'Throw a farewell part to Long-san and Toan-san on September 19th', 3, 1, 'Estimate expense (Included VAT)\r\n2 gifts(80,000 per person): 160,000 vnđ\r\nSnacks and drinks            : 250,000 vnđ\r\nFruits                                : 150,000 vnđ\r\n                                  Total: 560,000 vnđ', 1536660582, 1536660582, 29, 561000, NULL, '', ''),
(108, 67, 5760000, 10, 'VND', 0, 'Buy moon cakes as Mid-Autumn Festival gifts for employees.', 3, 1, 'Please check this link: http://bit.ly/2CJydAy', 1536830739, 1536830791, 29, 6336000, NULL, '', ''),
(109, 67, 671600, 10, 'VND', 0, 'Buy stationery for 2018 Oct', 3, 3, 'Please check in this Stationery list: http://bit.ly/2p1rEQc', 1536830895, 1538376033, 29, 738760, NULL, '', ''),
(110, 67, 800000, 0, 'VND', 0, 'Throw Mid-Autumn party at the Office', 3, 1, 'Buy mooncake and snacks: 600,000 vnđ\r\nBuy fruit                              : 200,000 vnđ\r\n', 1536831119, 1536831119, 29, 800000, NULL, '', ''),
(111, 67, 480000, 0, 'VND', 0, 'Buy carton boxes to pack stuffs for office moving.\r\nNo invoice', 3, 1, '30 Carton boxes size: 65x43x30cm', 1537406591, 1537925935, 29, 480000, NULL, '', ''),
(112, 39, 1000000, 0, 'VND', 0, 'I need to buy 20 sim phones to use for Yume100 advertising. \r\nI will use it to create facebook account for Yume100 advertising.', 3, 1, 'Price for one sim phone: 50.000 VND', 1537849695, 1537849695, 29, 1000000, NULL, '', ''),
(113, 67, 3300000, 0, 'VND', 0, 'Wall painting at new Office', 3, 1, 'Mural image: http://bit.ly/2xPMdmK', 1537925911, 1537925911, 29, 3300000, NULL, '', ''),
(114, 67, 8156000, 10, 'VND', 0, 'Buy new funitures for new Office', 3, 3, 'Items	                    Quantity	Unit Price	Price not included VAT       Unit: VNĐ\r\nMeeting room chairs	6	          430,000 	     2,580,000 \r\nMeeting room table	        1	       2,400,000              2,400,000 \r\nPantry chairs	                8	          182,000 	     1,456,000 \r\nPantry tables	                2	          860,000 	     1,720,000 \r\n\r\n                                 Total price (not included VAT)      8,156,000 \r\n                                                                  VAT	         815,600 \r\n                                                            Total price	      8,971,600 \r\n\r\n', 1537926610, 1538115657, 29, 8971600, NULL, '', ''),
(115, 67, 750000, 10, 'VND', 1, 'Order meeting room signs for new office', 4, 3, 'Material: Inox\r\nSize: 8.5x30 cm\r\nContent:\r\n1. SHIBUYA ROOM\r\n2. AKIHABARA ROOM\r\n3. NAMBA ROOM', 1537928071, 1538620734, 29, 825000, NULL, '', ''),
(116, 67, 905000, 10, 'VND', 1, 'Buy new wifi router (suggested buy Hien-san CTO)', 4, 1, 'Product Name: Totolink A3002RU AC 1200Mbps\r\nLink: http://bit.ly/2Rj7SfX\r\n', 1538538224, 1538657213, 29, 995500, NULL, '', ''),
(117, 67, 23300000, 10, 'VND', 1, 'Buy new MacBook for CTO', 4, 2, 'Macbook Pro Retina 13 inch 2015 MF840 Core i5 8GB 256GB Like new', 1538538408, 1538620712, 29, 25630000, NULL, '', ''),
(118, 67, 2024000, 0, 'VND', 1, 'Stick blur decal to glasses', 4, 1, 'Square: 25.3 m^2 \r\nUnit price: 80,000vnđ/m2\r\nTotal: 2,024,000vnđ.', 1538552906, 1538620706, 29, 2024000, NULL, '', ''),
(119, 31, 3500000, 0, 'VND', 1, 'こちらのバナーとストアでの紹介画像一覧がデザイン必要があります。\r\nhttps://docs.google.com/spreadsheets/d/1Z9MxsIILebyE4-liyUKmAkK-u8BTExxZtWllnZBQ20M/', 4, 3, '全22部の画像（バナー17部、ゲームアイコン2部、ストア紹介画像5部×2）\r\nを3-4日かかって350万VNDでやってくれるのですが。\r\n\r\n確認お願いします。', 1538560937, 1538620699, 29, 3500000, NULL, '', ''),
(120, 1, 150, 0, 'USD', 0, 'Based on request from Framgia on Chatwork\r\nhttps://www.chatwork.com/#!rid83159028-1101400070739197952\r\nThey request to increase level of game server to prepare for release.\r\nOur current plan is mentioned in below request:\r\nhttp://app.fujitechjsc.com/payment/view/100\r\nNew plan will be applied with amount in below request:\r\nhttps://calculator.s3.amazonaws.com/index.html#r=SIN&s=EC2&key=calc-9952C8E7-0F15-4E78-B833-B742CFB8A55D', 3, 2, 'This payment is monthly subscription and not include traffic\'s cost.\r\nThis will be charged directly on your credit card append with account noriko.kato@fujitechjsc.com on AWS ', 1539072381, 1539072381, 29, 150, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `summary`, `start_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fuji Internal Site', 'Internal website for company', 2018, 1, NULL, 1532412563, NULL),
(4, 'fuji', '2', 20, 0, 1533017263, 1533017374, 0),
(5, '1', '2', 31, 0, 1533017493, 1533017571, 0),
(6, '2', '2', 20, 0, 1533017602, 1533017616, 0),
(7, 'fuji', 'test', 20, 0, 1533017608, 1533017956, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `start_working_at` time NOT NULL,
  `end_working_at` time NOT NULL,
  `lunch_time` time DEFAULT NULL,
  `dinner_time` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `issue_date`, `start_working_at`, `end_working_at`, `lunch_time`, `dinner_time`, `break_time`, `total_hours`, `created_at`, `updated_at`, `user_id`, `detail`, `deleted_at`) VALUES
(16, '2018-08-01', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533118549, 1533118549, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Comments features on Payment \\/ Deploy\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(17, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533191712, 1533191717, 46, '[{\"project_name\":\"\\\"\\\"\",\"hours\":\"\\\"\\\"\",\"done\":\"\\\"\\\"\",\"todo\":\"\\\"\\\"\",\"issue\":\"\\\"\\\"\",\"note\":\"\\\"\\\"\"}]', 1533191717),
(18, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533204448, 1533204448, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"Implement notification features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"Weekly meeting with Framgia\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(19, '2018-08-02', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533204886, 1533204886, 35, '[{\"project_name\":\"Fuji site\",\"hours\":\"1\",\"done\":\"Update http:\\/\\/www.fujitechjsc.com\\/demo-vi\\/\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Treco\",\"hours\":\"3\",\"done\":\"Update special char issue\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(20, '2018-08-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533550871, 1533550871, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"Meeting for new future blockchain features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Prepare for next day inspector\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(21, '2018-08-03', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533550909, 1533550909, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Meeting room register features\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(22, '2018-08-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533553302, 1534814502, 66, '[{\"project_name\":\"Winner\",\"hours\":\"4\",\"done\":\"L\\u00e0m y\\u00eau c\\u1ea7u m\\u1edbi\",\"todo\":\"\",\"issue\":\"\",\"note\":\"Ch\\u00fa \\u00fd\"},{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"H\\u1ecdp \",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', 1534814502),
(23, '2018-08-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533553364, 1533883025, 66, '[{\"project_name\":\"Winner\",\"hours\":\"4\",\"done\":\"Hop c\\u00f4ng t\\u00e1c\",\"todo\":\"todo gi day\",\"issue\":\"isssue gi day\",\"note\":\"note gi day\"},{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"H\\u1ecdp \",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(24, '2018-08-07', '09:00:00', '17:15:00', '01:15:00', NULL, NULL, '07:00:00', 1533637509, 1533637509, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"Meeting\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Meeting with goverment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"2\",\"done\":\"Meeting\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(25, '2018-08-08', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533723712, 1533723712, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"Prepare development environments and production enviroments\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"4\",\"done\":\"Writing documents and prepare sales data to provide to goverment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(26, '2018-08-09', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1533808991, 1533808991, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"1\",\"done\":\"Meeting and discuss about progress\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"5\",\"done\":\"Meeting and setup AWS server\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"1\",\"done\":\"Change website\'s footer as request from Mr.Ha\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(27, '2018-08-13', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534156450, 1534414404, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"Implement backend\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"2\",\"done\":\"Estimate\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(28, '2018-08-16', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414387, 1534414387, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4.5\",\"done\":\"Implement forgot API \\/ Supports\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"3\",\"done\":\"Meetings\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Interview\",\"hours\":\"0.5\",\"done\":\"Interview PHP candidate\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(29, '2018-08-14', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414422, 1534414422, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(30, '2018-08-15', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534414434, 1534414434, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"Working\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(31, '2018-08-17', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534501423, 1534501423, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"7\",\"done\":\"Implement backend API\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"True Money\",\"hours\":\"1\",\"done\":\"Meeting with freelancers\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(32, '2018-08-20', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534934146, 1534934146, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(33, '2018-08-21', '08:00:00', '11:45:00', '00:00:00', NULL, NULL, '03:45:00', 1534934174, 1534934174, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(34, '2018-08-22', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1534934184, 1534934184, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(35, '2018-08-23', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535019278, 1535019278, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(36, '2018-08-24', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535105801, 1535105801, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(37, '2018-08-27', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535365518, 1535365518, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(38, '2018-08-28', '10:00:00', '17:15:00', '01:15:00', NULL, NULL, '06:00:00', 1535451357, 1535451357, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(39, '2018-08-29', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535536229, 1535536229, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(40, '2018-08-30', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535624234, 1535624234, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(41, '2018-08-31', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1535711051, 1535711051, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(42, '2018-09-04', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536057138, 1536057138, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"6\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(43, '2018-09-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536143543, 1536143543, 1, '[{\"project_name\":\"Fuji Internal\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Zodiac Interview\",\"hours\":\"1\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(44, '2018-09-06', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536225918, 1536225918, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"7.25\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(45, '2018-09-07', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536320209, 1536320209, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(46, '2018-09-10', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536577162, 1536577173, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fuji Game\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"interview\",\"hours\":\"2\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(47, '2018-09-12', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536750176, 1536750176, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(48, '2018-09-13', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536834089, 1536834089, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(49, '2018-09-14', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1536920382, 1536920382, 1, '[{\"project_name\":\"Interview\",\"hours\":\"4\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"3\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"CUBE\",\"hours\":\"1\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(50, '2018-09-17', '08:00:00', '16:30:00', '01:15:00', NULL, NULL, '07:15:00', 1537176055, 1537176055, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"7.25\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(51, '2018-10-03', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538564095, 1538564095, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"8\",\"done\":\"\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(52, '2018-10-04', '13:00:00', '17:15:00', '00:00:00', NULL, NULL, '04:15:00', 1538647930, 1538647930, 1, '[{\"project_name\":\"Yume100\",\"hours\":\"2\",\"done\":\"Check server and support on landing page\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Fujitech Platform\",\"hours\":\"2\",\"done\":\"Talk about GATE payment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(53, '2018-10-05', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538734903, 1538734903, 1, '[{\"project_name\":\"ERP\",\"hours\":\"4\",\"done\":\"Writing email function\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"2\",\"done\":\"Support on landing site\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Platform\",\"hours\":\"2\",\"done\":\"Try to fix this useless GATE payment\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL),
(54, '2018-10-08', '08:00:00', '17:15:00', '01:15:00', NULL, NULL, '08:00:00', 1538993858, 1538993858, 1, '[{\"project_name\":\"ERP\",\"hours\":\"4\",\"done\":\"Implement backend\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"},{\"project_name\":\"Yume 100\",\"hours\":\"4\",\"done\":\"Meeting with Framgia\",\"todo\":\"\",\"issue\":\"\",\"note\":\"\"}]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` int(11) DEFAULT '1',
  `last_login` int(11) DEFAULT NULL,
  `login_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_from` date DEFAULT NULL,
  `phone_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `profile_fields` binary(1) DEFAULT NULL,
  `previous_login` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group`, `last_login`, `login_hash`, `display_name`, `start_from`, `phone_number`, `skype_id`, `address`, `dob`, `status`, `created_at`, `updated_at`, `profile_fields`, `previous_login`, `user_id`, `deleted_at`) VALUES
(1, 'long.pham2', 'long.pham2@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 9, 1539071902, 'dbebd99f9c7b124649ff3c72231f5ddbb4ca3755', 'Phạm Việt Long', NULL, '0904915863', 'sior666', NULL, '1988-10-09', 0, 1531465705, 1538126161, 0x61, '1532403521', 1, NULL),
(29, 'noriko.kato', 'noriko.kato@fujitechjsc.com', 'PtSwkkmZ5h61EiQCx4XfaBKCmQv++OxI/uz3zicvWGY=', 7, 1538656985, 'c6c02d9058302f668f4ee59065b406af0ec409e4', 'Noriko Kato', NULL, '01269 919 547', NULL, NULL, '1974-09-02', 0, 0, 1534730747, NULL, NULL, 29, NULL),
(30, 'thuy.vu', 'thuy.vu@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1533538527, '21ff9eed00b6a0b6f5ef751bff54f7cabf9e35e5', 'Vũ Ngọc Thúy', '2015-09-21', '0906 655 590', 'thuy.ngocvu', '48 Hàng Gà, Hoàn Kiếm, HN', '1990-04-05', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'kien.bui', 'kien.bui@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538619109, 'e885b3fd58c5ccbe658cfd55814ede313dcfa099', 'Bùi Hoàng Kiên', '2016-06-10', '01684074 469', 'aaasimov', '16, Ngách 72/82, Tôn Thất Tùng, Đống Đa, Hà Nội', '1994-11-20', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'hoang.le', 'hoang.le@fujitechjsc.com', 'CqmCTQzz1F720sqWAcwH5b7GRwucteRLZcepvTcGenQ=', 3, 1538477108, '93a99274cf7adbcd0dd79a511dd435b91a62d07d', 'Lê Nhật Hoàng', '2016-06-20', '01222223 689', 'noblechapter', 'Số 2, Ngách 47/4, Ngõ 47, Nguyên Hồng, Đống Đa, HN', '1994-04-23', 0, NULL, 1533112269, NULL, NULL, NULL, NULL),
(33, 'toan.nguyen', 'toan.nguyen@fujitechjsc.com', '5gP5m9dI5WRUkFZwRsbDvhh+f/pmQaAtiMeNZGD65vE=', 8, 1537490452, 'f84707f9fa7d9139c62d9f9dd68877e89ab084d2', 'Nguyễn Văn Toàn', '2016-07-11', '01672533 928', NULL, 'Gia Xuyên, Gia Lộc, Hải Dương', '1994-06-16', 0, NULL, 1533173703, NULL, NULL, NULL, NULL),
(34, 'diep.nguyen', 'nguyenhoaquynh211@gmail.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538545351, 'd6edfa88401b8940b8a95a8d476c2285a5ecee2c', 'Nguyễn Ngọc Diệp', '2017-04-24', '0916820 812', 'ngocdiep733', '3B, Bảo Khánh, Hàng Trống, Hoàn Kiếm, Hà Nội', '1990-12-11', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'long.pham', 'long.pham@fujitechjsc.com', 'n1IP0g8b4IkS9+m4LsFt/m907Yrix+NAlEqvWnqpwmQ=', 3, 1537261789, '8e13a6163e30047c726f41b575bce3b72a75ea6a', 'Phạm Quang Long', '2017-08-01', '0915688 563', 'zerokavn', '294 Lê Duẩn, Hà Nội (địa chỉ hộ khẩu)', '1984-10-24', 0, NULL, 1533112867, NULL, NULL, NULL, NULL),
(36, 'minh.pham', 'minh.pham@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Phạm Ngọc Minh', '2017-08-18', '0934224 123', 'minh.pham@fujitechjsc.com', 'p409 B16 tập thể Kim Liên, Đống Đa, Hà Nội', '1984-08-24', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'thuy.tran', 'thuy.tran@fujtechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 4, 1534987198, 'd57cf41f356e7186fd56e27a31fd695ca2ae3ebf', 'Trần Thị Thuý', '2017-10-13', '01205288 558', 'thuy.tran@fujtechjsc.com', '219 Nguyễn Ngọc Vũ, Trung Hoà, Cầu Giấy, Hà Nội', '1992-02-10', 0, 0, 1532405538, NULL, '1532404694', 37, NULL),
(38, 'trang.tran', 'trang.tran@fujitechjsc.com', 'Le5qwAX6XWFHLBZwxVjhwzUBToRchrFddB/BmQRjycU=', 3, 1537513975, '71e17e9324bb7028eaad0efd8e4697da455e118d', 'Trần Quỳnh Trang', NULL, '0986439 951', NULL, 'phúc thọ   mai lâm   đông anh   hà nội', '1993-05-09', 0, NULL, 1537513995, NULL, NULL, NULL, NULL),
(39, 'hieu.ta', 'hieu.ta@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538108029, 'c9374153cdaf5a37d64a503ac2ad54491b5c672e', 'Tạ Trung Hiếu', '2017-10-09', '01689605 206', NULL, '202c6 Khương Thượng   Đống Đa   Hà Nội', '1992-02-04', 0, NULL, 1533112958, NULL, NULL, NULL, NULL),
(41, 'uyen.tran', 'tranthanhuyen1995@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Trần Thanh Uyên', '2018-01-19', '01288239 888', NULL, '609 Truong Dinh, Hoang Mai, Ha Noi', '1995-01-17', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'misaki.dohi', 'misaki.dohi@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1538555677, '66de3b4ab357f6959dd4e133e94183887e6e519b', 'Misaki Dohi', '2018-02-21', '0969788 305', NULL, 'số 17, ngõ 39 Phạm Tuấn Tài, Cầu Giấy, Hà Nội', '1992-12-21', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'dien.tran', 'dien.tran@fujitechjsc.com', 'qmU1EJ7hHLXVcCPBVRS6+WwtQ9gE57bsWgGQX11X+xY=', 3, 1533105166, '6ecd6fcbebb50371fb5b3da8eee311638fd45b07', 'Trần Ngọc Diễn', '0004-09-18', '0981437 159', NULL, '22A, Đức Diễn, Phường Phúc Diễn, Quận Bắc Từ Liêm, Thành Phố Hà Nội', '1989-11-25', 0, NULL, 1533105210, NULL, NULL, NULL, NULL),
(44, 'khanh.vu', 'khanh.vu@fujitechjsc.com', 'ILgcDC99munUoujDrSFyzDJnwcH8AcS4yubj+UPLWBw=', 3, 1538477020, 'de322be2891e60d268672ed51a99ec789f83b169', 'Vũ Việt Khánh', '2018-06-20', '01638994 969', NULL, '22 ngo 44 Thai Thinh, Dong Da, Ha Noi', '1994-11-02', 0, NULL, 1533113083, NULL, NULL, NULL, NULL),
(45, 'hung.nghiem', 'hung.nghiem@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1538639764, '88e45b79938ed1149b2806b95204949f7deda348', 'Nghiêm Dương Hưng', '2018-06-20', '0988020 189', NULL, NULL, '1989-02-01', 0, NULL, 1533110228, NULL, NULL, NULL, NULL),
(46, 'dam.le', 'dam.le@fujitechjsc.com', 'wDHxahNxzqCxevMO6mAXnSeOtj8MakomQI0XfnPQV1w=', 3, 1542766787, '9cb71e2eee798409e4a582e2604e49d358a2b72b', 'Lê Xuân Đạm', '2018-06-25', '0918484 638', NULL, 'Linh Duong Street, Hoang Mai District, Ha Noi City', '1996-05-07', 0, 0, 1532411642, NULL, '1532411322', 46, NULL),
(47, 'anh.tran', 'anh.tran@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1539254025, '9f9eb5c919851f6e2ca651a733cfac262130d4ab', 'Trần Phan Anh', '2018-07-12', '01649609 913', '123', NULL, '1989-01-10', 0, NULL, 1537849420, NULL, NULL, NULL, NULL),
(48, 'lt.anh2904', 'lt.anh2904@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Lê Thuỳ Anh', '2017-12-07', '0974491 882', NULL, '112 Thuỵ Khuê, Tây Hồ, Hà Nội', '1994-11-29', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'hoang.la', 'lnhoang2010@gmail.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1537847494, 'e5b40a0a2d9e2ad4b1b0ef6913fc74208c1ad32d', 'Lã Nhật Hoàng', '2017-12-08', '0939899 100', NULL, 'Số 19 ngách 79/18, ngõ Thổ Quan, Khâm Thiên,Đống Đa, Hà Nội', '1995-10-20', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'linh.dinh', 'dinhdieulinh2610@gmail.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'Đinh Diệu Linh', '2018-05-14', '0962137 809', NULL, NULL, '1997-10-26', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'viet.nguyen', 'viet.nguyen@fujitechjsc.com', 'GHF5MwQ0iPKfIKaMlRiMhJaS7LXHU/yyI3ADWp+9P24=', 3, 1533537238, 'ac5b599aea01075ed746699948f484ad06abf829', 'Nguyễn Tiến Việt', '2017-01-03', '0986901 110', 'tienvietnguyen1110', '90 Phùng Khoang, Nam Từ Liêm, Hà Nội', '1990-11-10', 0, NULL, 1533115168, NULL, NULL, NULL, NULL),
(53, 'thao.do', 'thao.do@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, 1537513462, '261a0b1b9be89f30711a5a6e27cb774a9178a79a', 'Đỗ Thị Phương Thảo', '2017-05-02', '0943539 986', 'phuongthao_dt86', 'yên mỹ, thanh trì, Hà Nội', '1986-12-18', 0, 0, 1533104809, NULL, '1532404532', 53, NULL),
(54, 'tram.do', 'tram.do@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 5, 1534817621, 'ac5482b285256e47ee1d8ce14516749acb7fd257', 'Đỗ Thị Ngọc Trâm', '1993-07-30', '01677484920', 'tramlph', 'ngõ 128, Hoàng Văn Thai, Đống Đa, Hà Nội', '2017-05-02', 0, 0, 1532403795, NULL, '1532339096', 54, NULL),
(55, 'tuan.le', 'tuan.le@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1538733170, 'c303d0d3eabb26d09b570f930cc72e7876700f0a', 'Lê Minh Tuấn', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'hung.nguyen', 'hung.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hung.nguyen', NULL, NULL, NULL, NULL, '2018-08-01', 1, NULL, NULL, NULL, NULL, NULL, 423021309),
(57, 'ha.ha', 'ha.ha@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'ha.ha', NULL, NULL, NULL, NULL, '2018-08-01', 1, NULL, NULL, NULL, '', NULL, 521023946),
(58, 'thuong.nguyen', 'thuong.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'thuong.nguyen', NULL, '', NULL, NULL, '1970-01-01', 1, NULL, NULL, NULL, '', NULL, 625011534),
(59, 'hoa.nguyen', 'hoa.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hoa.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1016015007),
(60, 'ha.nguyen', 'ha.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, 1533546780, 'a5c301a8a0f2c44f93238fdfd773603e9cc1402f', 'ha.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 123),
(61, 'hibi.yasuamasa', 'hibi.yasumasa@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hibi.yasuamasa', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1218013021),
(62, 'hieu.khong', 'hieu.khong@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'hieu.khong', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 123),
(63, 'anh.nguyen', 'anh.nguyen@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'anh.nguyen', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100520),
(64, 'tuan.chu', 'tuan.chu@fujitechjsc.com', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 3, NULL, NULL, 'tuan.chu', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100548),
(65, 'thuynt', 'thuynt@fujitechjsc.com', 'VP1StYx4xqQkCg+QLS8pBmWcZeZx0ajt7pw3AQ3X4W8=', 3, 1534745333, '6d9018052b06be8a7862d06e76140c0ce353a29a', 'thuynt', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1534402484, NULL, NULL, NULL, NULL),
(66, 'admin', 'admin', 'G+nhj1LBl/rhw1avWii7Tq5Mt9SD/ueUUvdeCqqtFAE=', 9, 1538634093, '0691e048041774c0ffced5dde95d3c7110493329', 'admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 907100548),
(67, 'ngan.nguyen', 'ngan.nguyen$fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 9, 1538713051, '9fafe72939e84f3d97bd5cecafb2f4769c489c64', 'Nguyễn Thu Ngân', '2018-08-23', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'hien.tran', 'hien.tran@fujitechjsc.com', '8jn6e8ijRv5csvd652MgoUq8wIJG57C/S6ZK9dg9Id0=', 3, 1538114597, '38c57a8d501e7a0bc35b2e07bde618d2c14d62d3', 'Trần Hiện', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1537424948, NULL, NULL, NULL, NULL),
(69, 'hien.bui', 'hien.bui@fujitechjsc.com', 'J/8xcuYcV1Jidmho9LpSemDpPTwFVfhnmBg7GkWJB/s=', 3, 1539046821, '093caf894ebc17dbad113c80fbd23e7aaa9f76f0', 'Bùi Văn Hiến', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1538368482, NULL, NULL, NULL, NULL),
(70, 'trung.nguyen', 'trung.nguyen@fujitechjsc.com', 'UR/5FroYOxxGOYdQo8OgBajYPRYMP4/PwNo6N5u/W38=', 3, NULL, NULL, 'Nguyễn Kim Trung', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `from_time` int(11) NOT NULL,
  `to_time` int(11) NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `current_group_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `assign_manager_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `user_id`, `type`, `from_time`, `to_time`, `reasons`, `status`, `current_group_id`, `created_at`, `updated_at`, `assign_manager_id`, `deleted_at`) VALUES
(2, 31, 1, 1501462800, 1501496100, '', 4, 7, 1501458420, NULL, 29, NULL),
(3, 52, 1, 1491613860, 1491646500, '', 4, 7, 1501463580, NULL, 29, NULL),
(4, 35, 4, 1486533600, 1486548900, '', 4, 7, 1486524720, NULL, 29, NULL),
(5, 54, 1, 1501218000, 1501236900, '', 4, 7, 1486541940, NULL, 29, NULL),
(6, 63, 1, 1501462800, 1501497000, '', 4, 7, 1486542960, NULL, 29, NULL),
(7, 64, 1, 1488945600, 1488968100, '', 4, 7, 1488935880, NULL, 29, NULL),
(8, 54, 1, 1488961800, 1488968100, '', 4, 7, 1488956220, NULL, 29, NULL),
(9, 59, 1, 1501462800, 1499508900, '', 4, 7, 1502160660, NULL, 29, NULL),
(10, 60, 4, 1503277200, 1503468000, '', 4, 7, 1502161380, NULL, 29, NULL),
(11, 59, 4, 1504859400, 1504865700, '', 4, 7, 1504838160, NULL, 29, NULL),
(12, 52, 1, 1499475600, 1499489100, '', 4, 7, 1507428420, NULL, 29, NULL),
(13, 60, 4, 1502672400, 1502686800, '', 4, 7, 1502690280, NULL, 29, NULL),
(14, 54, 1, 1502758800, 1502766000, '', 4, 7, 1502754600, NULL, 29, NULL),
(15, 55, 1, 1507424400, 1510136100, '', 4, 7, 1503284760, NULL, 29, NULL),
(16, 55, 1, 1502672400, 1502705700, '', 4, 7, 1503284820, NULL, 29, NULL),
(17, 54, 1, 1500858000, 1500861600, '', 4, 7, 1503285660, NULL, 29, NULL),
(18, 54, 1, 1486515600, 1486522800, '', 4, 7, 1503285720, NULL, 29, NULL),
(19, 63, 1, 1500512400, 1500545700, '', 4, 7, 1503298380, NULL, 29, NULL),
(20, 38, 1, 1503381600, 1503396900, '', 4, 7, 1503369060, NULL, 29, NULL),
(21, 54, 1, 1503622800, 1503656100, '', 4, 7, 1503382200, NULL, 29, NULL),
(22, 38, 1, 1503450000, 1503483300, '', 4, 7, 1503452700, NULL, 29, NULL),
(23, 30, 1, 1503471600, 1503483300, '', 4, 7, 1503539700, NULL, 29, NULL),
(24, 38, 1, 1503549900, 1503569700, '', 4, 7, 1503546960, NULL, 29, NULL),
(25, 30, 1, 1503562500, 1503569700, '', 4, 7, 1503548940, NULL, 29, NULL),
(26, 60, 4, 1503882000, 1503894600, '', 4, 7, 1503898620, NULL, 29, NULL),
(27, 63, 1, 1503968400, 1503982800, '', 4, 7, 1503910920, NULL, 29, NULL),
(28, 57, 1, 1503910800, 1503915300, '', 4, 7, 1503968640, NULL, 29, NULL),
(29, 63, 1, 1504054800, 1504175400, '', 4, 7, 1503996900, NULL, 29, NULL),
(30, 36, 4, 1503968400, 1503959400, '', 4, 7, 1504072860, NULL, 29, NULL),
(31, 54, 1, 1503968400, 1503975600, '', 4, 7, 1504074540, NULL, 29, NULL),
(32, 54, 1, 1506301200, 1506508200, '', 4, 7, 1504074600, NULL, 29, NULL),
(33, 54, 1, 1504072800, 1504074600, '', 4, 7, 1504075560, NULL, 29, NULL),
(34, 30, 1, 1491700500, 1491732900, '', 4, 7, 1504145820, NULL, 29, NULL),
(35, 56, 1, 1494291600, 1494297000, '', 4, 7, 1489077900, NULL, 29, NULL),
(36, 56, 1, 1510189200, 1505385000, '', 4, 7, 1489077960, NULL, 29, NULL),
(37, 38, 1, 1491713100, 1491732900, '', 4, 7, 1491708840, NULL, 29, NULL),
(38, 54, 1, 1491717600, 1491732900, '', 4, 7, 1491715260, NULL, 29, NULL),
(39, 35, 4, 1494291600, 1494298800, '', 4, 7, 1491730920, NULL, 29, NULL),
(40, 59, 1, 1499580000, 1499595300, '', 4, 7, 1499564460, NULL, 29, NULL),
(41, 30, 1, 1499568360, 1499595300, '', 4, 7, 1499568420, NULL, 29, NULL),
(42, 35, 4, 1510189200, 1510198200, '', 4, 7, 1510219740, NULL, 29, NULL),
(43, 30, 1, 1505289600, 1505297700, '', 4, 7, 1505288760, NULL, 29, NULL),
(44, 54, 1, 1505295000, 1505297700, '', 4, 7, 1505289300, NULL, 29, NULL),
(45, 54, 1, 1505368800, 1505370600, '', 4, 7, 1505371800, NULL, 29, NULL),
(46, 38, 1, 1505368800, 1505374200, '', 4, 7, 1505375520, NULL, 29, NULL),
(47, 54, 1, 1505455200, 1505469600, '', 4, 7, 1505452860, NULL, 29, NULL),
(48, 54, 1, 1505350800, 1505470500, '', 4, 7, 1505702160, NULL, 29, NULL),
(49, 60, 1, 1505809800, 1505817000, '', 4, 7, 1505805600, NULL, 29, NULL),
(50, 54, 1, 1503622800, 1503626400, '', 4, 7, 1505963040, NULL, 29, NULL),
(51, 55, 1, 1503363600, 1503377100, '', 4, 7, 1505964660, NULL, 29, NULL),
(52, 52, 1, 1505869200, 1505882700, '', 4, 7, 1505966100, NULL, 29, NULL),
(53, 56, 1, 1505955600, 1505966400, '', 4, 7, 1505966340, NULL, 29, NULL),
(54, 36, 4, 1505870160, 1505956560, '', 4, 7, 1506043140, NULL, 29, NULL),
(55, 31, 1, 1506301200, 1506315600, '', 4, 7, 1506183600, NULL, 29, NULL),
(56, 30, 1, 1506312000, 1506314700, '', 4, 7, 1506307560, NULL, 29, NULL),
(57, 59, 1, 1506301200, 1506314700, '', 4, 7, 1506396960, NULL, 29, NULL),
(58, 52, 1, 1506474000, 1506507300, '', 4, 7, 1506412080, NULL, 29, NULL),
(59, 56, 1, 1506474000, 1506483000, '', 4, 7, 1506471840, NULL, 29, NULL),
(60, 59, 1, 1506664800, 1506680100, '', 4, 7, 1506570840, NULL, 29, NULL),
(61, 38, 1, 1506660300, 1506668400, '', 4, 7, 1506655200, NULL, 29, NULL),
(62, 60, 4, 1486688400, 1486702800, '', 4, 7, 1486708800, NULL, 29, NULL),
(63, 59, 1, 1489136400, 1489140900, '', 4, 7, 1489116180, NULL, 29, NULL),
(64, 30, 1, 1486688400, 1489140900, '', 4, 7, 1491799380, NULL, 29, NULL),
(65, 30, 1, 1491814800, 1491819300, '', 4, 7, 1491799440, NULL, 29, NULL),
(66, 54, 1, 1491798600, 1491805200, '', 4, 7, 1491805620, NULL, 29, NULL),
(67, 31, 1, 1497078000, 1497090600, '', 4, 7, 1494386400, NULL, 29, NULL),
(68, 54, 1, 1497083400, 1497089700, '', 4, 7, 1497057360, NULL, 29, NULL),
(69, 36, 4, 1497076200, 1497090600, '', 4, 7, 1505005980, NULL, 29, NULL),
(70, 36, 4, 1494397800, 1494412200, '', 4, 7, 1505006100, NULL, 29, NULL),
(71, 31, 1, 1505028600, 1505032200, '', 4, 7, 1505013420, NULL, 29, NULL),
(72, 60, 4, 1505005200, 1505026800, '', 4, 7, 1505028240, NULL, 29, NULL),
(73, 57, 1, 1510299420, 1510308900, '', 4, 7, 1510299420, NULL, 29, NULL),
(74, 57, 1, 1512867600, 1512900900, '', 4, 7, 1512867180, NULL, 29, NULL),
(75, 59, 1, 1507881600, 1507889700, '', 4, 7, 1512893040, NULL, 29, NULL),
(76, 60, 4, 1507870800, 1507890600, '', 4, 7, 1507856640, NULL, 29, NULL),
(77, 33, 1, 1507857600, 1507863000, '', 4, 7, 1507863060, NULL, 29, NULL),
(78, 57, 1, 1508115600, 1508129100, '', 4, 7, 1508114220, NULL, 29, NULL),
(79, 54, 1, 1508388300, 1508408100, '', 4, 7, 1508316360, NULL, 29, NULL),
(80, 52, 1, 1508202000, 1508209200, '', 4, 7, 1508379000, NULL, 29, NULL),
(81, 52, 1, 1508374800, 1508378400, '', 4, 7, 1508379000, NULL, 29, NULL),
(82, 56, 1, 1507597200, 1507599000, '', 4, 7, 1508400840, NULL, 29, NULL),
(83, 56, 1, 1506301200, 1506310200, '', 4, 7, 1508400840, NULL, 29, NULL),
(84, 56, 1, 1507856400, 1507858200, '', 4, 7, 1508401200, NULL, 29, NULL),
(85, 38, 1, 1491804000, 1491805800, '', 4, 7, 1508403120, NULL, 29, NULL),
(86, 38, 1, 1505005200, 1505008800, '', 4, 7, 1508403180, NULL, 29, NULL),
(87, 38, 1, 1508374800, 1508378400, '', 4, 7, 1508403240, NULL, 29, NULL),
(88, 36, 4, 1506474000, 1506477600, '', 4, 7, 1508404020, NULL, 29, NULL),
(89, 36, 4, 1505955600, 1505989800, '', 4, 7, 1508404200, NULL, 29, NULL),
(90, 30, 1, 1494378000, 1494385200, '', 4, 7, 1508405220, NULL, 29, NULL),
(91, 30, 1, 1508202000, 1508205600, '', 4, 7, 1508405280, NULL, 29, NULL),
(92, 60, 4, 1506560400, 1506564000, '', 4, 7, 1508405340, NULL, 29, NULL),
(93, 60, 4, 1506301200, 1506308400, '', 4, 7, 1508405580, NULL, 29, NULL),
(94, 52, 1, 1486699200, 1486701000, '', 4, 7, 1508463000, NULL, 29, NULL),
(95, 32, 4, 1505869200, 1505902500, '', 4, 7, 1508726340, NULL, 29, NULL),
(96, 32, 1, 1507863600, 1507874400, '', 4, 7, 1508726460, NULL, 29, NULL),
(97, 54, 1, 1508817600, 1508821200, '', 4, 7, 1508811600, NULL, 29, NULL),
(98, 33, 1, 1508893200, 1508926500, '', 4, 7, 1508812500, NULL, 29, NULL),
(99, 30, 1, 1508907600, 1508926500, '', 4, 7, 1508812620, NULL, 29, NULL),
(100, 38, 1, 1508911200, 1508914800, '', 4, 7, 1508902680, NULL, 29, NULL),
(101, 60, 4, 1509066000, 1509100200, '', 4, 7, 1508903100, NULL, 29, NULL),
(102, 35, 1, 1509066000, 1509100200, '', 4, 7, 1509003060, NULL, 29, NULL),
(103, 38, 1, 1509040800, 1509099300, '', 4, 7, 1509067200, NULL, 29, NULL),
(104, 60, 4, 1509325200, 1509336000, '', 4, 7, 1509356040, NULL, 29, NULL),
(105, 30, 1, 1509440400, 1509444900, '', 4, 7, 1509415740, NULL, 29, NULL),
(106, 30, 1, 1484110800, 1484129700, '', 4, 7, 1484096640, NULL, 29, NULL),
(107, 60, 4, 1484096400, 1484109000, '', 4, 7, 1484099460, NULL, 29, NULL),
(108, 36, 4, 1484096400, 1484110800, '', 4, 7, 1484113920, NULL, 29, NULL),
(109, 38, 1, 1486800000, 1486808100, '', 4, 7, 1486796760, NULL, 29, NULL),
(110, 30, 1, 1486774800, 1486808100, '', 4, 7, 1489197180, NULL, 29, NULL),
(111, 36, 4, 1489194000, 1489201200, '', 4, 7, 1489220460, NULL, 29, NULL),
(112, 62, 4, 1510534800, 1510569000, '', 4, 7, 1497143760, NULL, 29, NULL),
(113, 35, 3, 1489194000, 1489228200, '', 4, 7, 1497165780, NULL, 29, NULL),
(114, 38, 1, 1499756760, 1499768100, '', 4, 7, 1499756820, NULL, 29, NULL),
(115, 30, 1, 1502424000, 1502426700, '', 4, 7, 1502421900, NULL, 29, NULL),
(116, 36, 4, 1499734800, 1502431200, '', 4, 7, 1502434440, NULL, 29, NULL),
(117, 30, 1, 1505091600, 1505096700, '', 4, 7, 1505096820, NULL, 29, NULL),
(118, 35, 4, 1507683600, 1507698000, '', 4, 7, 1505124960, NULL, 29, NULL),
(119, 54, 1, 1507683600, 1507685700, '', 4, 7, 1507686720, NULL, 29, NULL),
(120, 52, 1, 1502413200, 1505124900, '', 4, 7, 1507714020, NULL, 29, NULL),
(121, 52, 1, 1510534800, 1510548300, '', 4, 7, 1510623420, NULL, 29, NULL),
(122, 36, 4, 1510707600, 1510719600, '', 4, 7, 1510720260, NULL, 29, NULL),
(123, 54, 1, 1510719600, 1510729200, '', 4, 7, 1510730160, NULL, 29, NULL),
(124, 54, 1, 1510905600, 1510913700, '', 4, 7, 1510887960, NULL, 29, NULL),
(125, 57, 1, 1507714200, 1507716900, '', 4, 7, 1511147400, NULL, 29, NULL),
(126, 36, 4, 1508751000, 1508753700, '', 4, 7, 1511151180, NULL, 29, NULL),
(127, 36, 4, 1508920200, 1508926500, '', 4, 7, 1511151240, NULL, 29, NULL),
(128, 30, 1, 1511157600, 1511172900, '', 4, 7, 1511152800, NULL, 29, NULL),
(129, 54, 1, 1510621200, 1510624800, '', 4, 7, 1511152920, NULL, 29, NULL),
(130, 54, 1, 1510534800, 1510549200, '', 4, 7, 1511153040, NULL, 29, NULL),
(131, 34, 1, 1508461200, 1508464800, '', 4, 7, 1511153160, NULL, 29, NULL),
(132, 38, 1, 1509325200, 1509328800, '', 4, 7, 1511153280, NULL, 29, NULL),
(133, 38, 1, 1502413200, 1502446500, '', 4, 7, 1511153340, NULL, 29, NULL),
(134, 34, 1, 1486805700, 1486808100, '', 4, 7, 1511153340, NULL, 29, NULL),
(135, 38, 1, 1511139600, 1511143200, '', 4, 7, 1511153400, NULL, 29, NULL),
(136, 38, 1, 1511157600, 1511161200, '', 4, 7, 1511153460, NULL, 29, NULL),
(137, 34, 1, 1502413200, 1502415000, '', 4, 7, 1511153700, NULL, 29, NULL),
(138, 32, 4, 1511139600, 1511153100, '', 4, 7, 1511158200, NULL, 29, NULL),
(139, 32, 4, 1489194000, 1489207500, '', 4, 7, 1511158320, NULL, 29, NULL),
(140, 35, 1, 1511170200, 1511172900, '', 4, 7, 1511164680, NULL, 29, NULL),
(141, 54, 1, 1511244000, 1511258400, '', 4, 7, 1511235360, NULL, 29, NULL),
(142, 54, 1, 1511226000, 1511229600, '', 4, 7, 1511241540, NULL, 29, NULL),
(143, 62, 4, 1511330400, 1511334000, '', 4, 7, 1511250000, NULL, 29, NULL),
(144, 62, 3, 1509012000, 1509012900, '', 4, 7, 1511250120, NULL, 29, NULL),
(145, 52, 1, 1511744400, 1511777700, '', 4, 7, 1511407620, NULL, 29, NULL),
(146, 54, 1, 1511848800, 1511850600, '', 4, 7, 1511851860, NULL, 29, NULL),
(147, 30, 1, 1511935200, 1511950500, '', 4, 7, 1511934540, NULL, 29, NULL),
(148, 57, 1, 1484182800, 1484200800, '', 4, 7, 1512003720, NULL, 29, NULL),
(149, 36, 4, 1499821200, 1499839200, '', 4, 7, 1491969360, NULL, 29, NULL),
(150, 56, 1, 1513558800, 1513593000, '', 4, 7, 1491969720, NULL, 29, NULL),
(151, 35, 1, 1497229200, 1497232800, '', 4, 7, 1499860380, NULL, 29, NULL),
(152, 1, 4, 1502517600, 1502533800, '', 4, 7, 1502507700, NULL, 29, NULL),
(153, 36, 4, 1513065600, 1513073700, '', 4, 7, 1513062180, NULL, 29, NULL),
(154, 1, 4, 1513040400, 1513053900, '', 4, 7, 1513214580, NULL, 29, NULL),
(155, 54, 1, 1513313100, 1513332900, '', 4, 7, 1513560240, NULL, 29, NULL),
(156, 54, 1, 1502526600, 1502532900, '', 4, 7, 1513560420, NULL, 29, NULL),
(157, 54, 1, 1513572300, 1513592100, '', 4, 7, 1513560540, NULL, 29, NULL),
(158, 36, 4, 1513144800, 1513152900, '', 4, 7, 1513580160, NULL, 29, NULL),
(159, 36, 4, 1513321200, 1513332900, '', 4, 7, 1513580280, NULL, 29, NULL),
(160, 57, 1, 1513587600, 1513592100, '', 4, 7, 1513586580, NULL, 29, NULL),
(161, 62, 3, 1513924200, 1513937700, '', 4, 7, 1513647780, NULL, 29, NULL),
(162, 62, 3, 1513329300, 1513332900, '', 4, 7, 1513647900, NULL, 29, NULL),
(163, 38, 1, 1510448400, 1510481700, '', 4, 7, 1513654260, NULL, 29, NULL),
(164, 38, 1, 1497229200, 1497232800, '', 4, 7, 1513654320, NULL, 29, NULL),
(165, 38, 1, 1511771400, 1511777700, '', 4, 7, 1513654380, NULL, 29, NULL),
(166, 33, 1, 1513558800, 1513592100, '', 4, 7, 1513654620, NULL, 29, NULL),
(167, 55, 1, 1513040400, 1513073700, '', 4, 7, 1513656240, NULL, 29, NULL),
(168, 55, 1, 1513126800, 1513160100, '', 4, 7, 1513656300, NULL, 29, NULL),
(169, 54, 1, 1511503200, 1511517600, '', 4, 7, 1513675920, NULL, 29, NULL),
(170, 54, 1, 1510448400, 1510452000, '', 4, 7, 1513676100, NULL, 29, NULL),
(171, 54, 1, 1513645200, 1513648800, '', 4, 7, 1513676160, NULL, 29, NULL),
(172, 54, 1, 1511744400, 1511776800, '', 4, 7, 1513676460, NULL, 29, NULL),
(173, 30, 1, 1513731600, 1513764900, '', 4, 7, 1513828140, NULL, 29, NULL),
(174, 39, 1, 1510466400, 1510481700, '', 4, 7, 1513837800, NULL, 29, NULL),
(175, 1, 4, 1513922400, 1513936800, '', 4, 7, 1513848180, NULL, 29, NULL),
(176, 35, 1, 1513645200, 1513677600, '', 4, 7, 1513908300, NULL, 29, NULL),
(177, 35, 1, 1513818000, 1513850400, '', 4, 7, 1513908300, NULL, 29, NULL),
(178, 30, 1, 1514190000, 1514196900, '', 4, 7, 1514190060, NULL, 29, NULL),
(179, 1, 4, 1514275200, 1514283300, '', 4, 7, 1514260320, NULL, 29, NULL),
(180, 52, 1, 1514336400, 1514349900, '', 4, 7, 1514339700, NULL, 29, NULL),
(181, 52, 1, 1514422800, 1514436300, '', 4, 7, 1514339700, NULL, 29, NULL),
(182, 35, 1, 1514163600, 1514196900, '', 4, 7, 1514340000, NULL, 29, NULL),
(183, 35, 1, 1514250000, 1514283300, '', 4, 7, 1514340060, NULL, 29, NULL),
(184, 35, 1, 1514422800, 1514456100, '', 4, 7, 1514534100, NULL, 29, NULL),
(185, 30, 1, 1514527200, 1514532600, '', 4, 7, 1514534820, NULL, 29, NULL),
(186, 30, 1, 1517455800, 1517480100, '', 4, 7, 1517447760, NULL, 29, NULL),
(187, 62, 3, 1525136400, 1525170600, '', 4, 7, 1517448900, NULL, 29, NULL),
(188, 35, 1, 1525136400, 1525169700, '', 4, 7, 1522576500, NULL, 29, NULL),
(189, 52, 1, 1517446800, 1517480100, '', 4, 7, 1533086340, NULL, 29, NULL),
(190, 52, 1, 1514509200, 1514516400, '', 4, 7, 1533086400, NULL, 29, NULL),
(191, 36, 4, 1519866000, 1519873200, '', 4, 7, 1533121260, NULL, 29, NULL),
(192, 36, 4, 1525136400, 1525139100, '', 4, 7, 1533121320, NULL, 29, NULL),
(193, 36, 4, 1533085200, 1533088800, '', 4, 7, 1533121380, NULL, 29, NULL),
(194, 54, 1, 1535781600, 1535783400, '', 4, 7, 1541035440, NULL, 29, NULL),
(195, 1, 4, 1535763600, 1535777100, '', 4, 7, 1541035560, NULL, 29, NULL),
(196, 1, 4, 1538355600, 1541067300, '', 4, 7, 1541035620, NULL, 29, NULL),
(197, 34, 1, 1543626000, 1543628760, '', 4, 7, 1543632660, NULL, 29, NULL),
(198, 35, 1, 1516093200, 1516097700, '', 4, 7, 1516085280, NULL, 29, NULL),
(199, 52, 1, 1516237200, 1516250700, '', 4, 7, 1516095840, NULL, 29, NULL),
(200, 34, 1, 1516150800, 1516152360, '', 4, 7, 1516183320, NULL, 29, NULL),
(201, 34, 1, 1516237200, 1516241340, '', 4, 7, 1516242720, NULL, 29, NULL),
(202, 36, 4, 1516150800, 1516156200, '', 4, 7, 1516243080, NULL, 29, NULL),
(203, 54, 1, 1515978000, 1515992400, '', 4, 7, 1516326420, NULL, 29, NULL),
(204, 54, 1, 1543626000, 1543631400, '', 4, 7, 1516326480, NULL, 29, NULL),
(205, 54, 1, 1525136400, 1525140000, '', 4, 7, 1516326540, NULL, 29, NULL),
(206, 55, 1, 1516077000, 1516097700, '', 4, 7, 1516330380, NULL, 29, NULL),
(207, 1, 4, 1516237200, 1516250700, '', 4, 7, 1516337160, NULL, 29, NULL),
(208, 39, 1, 1514163600, 1514196900, '', 4, 7, 1516595220, NULL, 29, NULL),
(209, 34, 1, 1513818000, 1513821600, '', 4, 7, 1516595280, NULL, 29, NULL),
(210, 38, 1, 1513904400, 1513908000, '', 4, 7, 1516595340, NULL, 29, NULL),
(211, 38, 1, 1513922400, 1513924200, '', 4, 7, 1516595400, NULL, 29, NULL),
(212, 38, 1, 1519866000, 1519867800, '', 4, 7, 1516595460, NULL, 29, NULL),
(213, 32, 3, 1533085200, 1533118500, '', 4, 7, 1516595460, NULL, 29, NULL),
(214, 38, 1, 1533085200, 1533087000, '', 4, 7, 1516595460, NULL, 29, NULL),
(215, 38, 1, 1543626000, 1543640400, '', 4, 7, 1516595520, NULL, 29, NULL),
(216, 38, 1, 1515978000, 1516013100, '', 4, 7, 1516595580, NULL, 29, NULL),
(217, 38, 1, 1516246200, 1516358700, '', 4, 7, 1516595700, NULL, 29, NULL),
(218, 30, 1, 1538355600, 1516616100, '', 4, 7, 1516596060, NULL, 29, NULL),
(219, 30, 1, 1516150800, 1516153500, '', 4, 7, 1516596120, NULL, 29, NULL),
(220, 52, 1, 1516755600, 1516788900, '', 4, 7, 1516690620, NULL, 29, NULL),
(221, 52, 1, 1516842000, 1516875300, '', 4, 7, 1516690620, NULL, 29, NULL),
(222, 54, 1, 1516755600, 1516760100, '', 4, 7, 1516760400, NULL, 29, NULL),
(223, 56, 5, 1516842000, 1516875300, '', 4, 7, 1516776900, NULL, 29, NULL),
(224, 56, 5, 1516755600, 1516788900, '', 4, 7, 1516776900, NULL, 29, NULL),
(225, 34, 1, 1516872600, 1516875300, '', 4, 7, 1516841820, NULL, 29, NULL),
(226, 36, 4, 1516842000, 1516937400, '', 4, 7, 1517194980, NULL, 29, NULL),
(227, 30, 1, 1517360400, 1517393700, '', 4, 7, 1517282940, NULL, 29, NULL),
(228, 54, 1, 1517299200, 1517307300, '', 4, 7, 1517284740, NULL, 29, NULL),
(229, 1, 4, 1517299200, 1517307300, '', 4, 7, 1517298840, NULL, 29, NULL),
(230, 36, 4, 1517360400, 1517363400, '', 4, 7, 1517364000, NULL, 29, NULL),
(231, 34, 1, 1517360400, 1517365500, '', 4, 7, 1517366280, NULL, 29, NULL),
(232, 1, 4, 1517389200, 1517393700, '', 4, 7, 1517388540, NULL, 29, NULL),
(233, 35, 1, 1517360400, 1517393700, '', 4, 7, 1514887320, NULL, 29, NULL),
(234, 35, 1, 1514854800, 1514858400, '', 4, 7, 1514887380, NULL, 29, NULL),
(235, 54, 1, 1514854800, 1514888100, '', 4, 7, 1517536440, NULL, 29, NULL),
(236, 33, 1, 1525222800, 1525256100, '', 4, 7, 1522645320, NULL, 29, NULL),
(237, 1, 4, 1527901200, 1527914700, '', 4, 7, 1527920400, NULL, 29, NULL),
(238, 30, 1, 1530522900, 1530526500, '', 4, 7, 1530498120, NULL, 29, NULL),
(239, 54, 1, 1530493200, 1530507600, '', 4, 7, 1530510240, NULL, 29, NULL),
(240, 35, 1, 1530493200, 1530496800, '', 4, 7, 1530523860, NULL, 29, NULL),
(241, 34, 1, 1527901200, 1533204900, '', 4, 7, 1533178860, NULL, 29, NULL),
(242, 1, 4, 1530493200, 1530506700, '', 4, 7, 1533179220, NULL, 29, NULL),
(243, 1, 4, 1533171600, 1533175200, '', 4, 7, 1533179280, NULL, 29, NULL),
(244, 54, 1, 1535850000, 1535864400, '', 4, 7, 1533195360, NULL, 29, NULL),
(245, 35, 1, 1535850000, 1535856300, '', 4, 7, 1535857140, NULL, 29, NULL),
(246, 31, 1, 1518483600, 1518517800, '', 4, 7, 1535862300, NULL, 29, NULL),
(247, 54, 1, 1535868000, 1535871600, '', 4, 7, 1535872320, NULL, 29, NULL),
(248, 34, 1, 1535850000, 1535863500, '', 4, 7, 1543714920, NULL, 29, NULL),
(249, 33, 1, 1518483600, 1518516900, '', 4, 7, 1543734240, NULL, 29, NULL),
(250, 35, 1, 1543712400, 1543718700, '', 4, 7, 1543745220, NULL, 29, NULL),
(251, 54, 1, 1518501600, 1518505200, '', 4, 7, 1518486840, NULL, 29, NULL),
(252, 37, 1, 1517390100, 1517393700, '', 4, 7, 1518503940, NULL, 29, NULL),
(253, 37, 1, 1517560200, 1517566500, '', 4, 7, 1518503940, NULL, 29, NULL),
(254, 56, 5, 1527919200, 1527934500, '', 4, 7, 1518507900, NULL, 29, NULL),
(255, 56, 5, 1533189600, 1533204900, '', 4, 7, 1518508260, NULL, 29, NULL),
(256, 38, 1, 1517274000, 1517275800, '', 4, 7, 1519179420, NULL, 29, NULL),
(257, 38, 1, 1517275800, 1517277600, '', 4, 7, 1519179480, NULL, 29, NULL),
(258, 38, 1, 1525222800, 1525256100, '', 4, 7, 1519179540, NULL, 29, NULL),
(259, 38, 1, 1530493200, 1530495000, '', 4, 7, 1519179600, NULL, 29, NULL),
(260, 38, 1, 1533171600, 1533204900, '', 4, 7, 1519179660, NULL, 29, NULL),
(261, 38, 1, 1535850000, 1535853600, '', 4, 7, 1519179720, NULL, 29, NULL),
(262, 1, 4, 1519174800, 1519178400, '', 4, 7, 1519180800, NULL, 29, NULL),
(263, 39, 1, 1525222800, 1525240800, '', 4, 7, 1519182240, NULL, 29, NULL),
(264, 52, 1, 1516600800, 1516602600, '', 4, 7, 1519182540, NULL, 29, NULL),
(265, 52, 1, 1516928400, 1516935600, '', 4, 7, 1519182600, NULL, 29, NULL),
(266, 52, 1, 1517187600, 1517220900, '', 4, 7, 1519182660, NULL, 29, NULL),
(267, 52, 1, 1517274000, 1517287500, '', 4, 7, 1519182720, NULL, 29, NULL),
(268, 52, 1, 1525240800, 1525242600, '', 4, 7, 1519182720, NULL, 29, NULL),
(269, 32, 3, 1525222800, 1525240800, '', 4, 7, 1519184700, NULL, 29, NULL),
(270, 54, 1, 1517274000, 1517277600, '', 4, 7, 1519184760, NULL, 29, NULL),
(271, 54, 1, 1517557500, 1517566500, '', 4, 7, 1519185000, NULL, 29, NULL),
(272, 56, 1, 1519347600, 1519380900, '', 4, 7, 1519261320, NULL, 29, NULL),
(273, 35, 1, 1519347600, 1519351200, '', 4, 7, 1519358100, NULL, 29, NULL),
(274, 35, 1, 1519376400, 1519380900, '', 4, 7, 1519358160, NULL, 29, NULL),
(275, 54, 1, 1519354800, 1519367280, '', 4, 7, 1519367340, NULL, 29, NULL),
(276, 34, 1, 1519693200, 1519700400, '', 4, 7, 1519376460, NULL, 29, NULL),
(277, 37, 1, 1519354800, 1519367400, '', 4, 7, 1519698300, NULL, 29, NULL),
(278, 37, 1, 1519606800, 1519639200, '', 4, 7, 1519698480, NULL, 29, NULL),
(279, 35, 4, 1519693200, 1519696800, '', 4, 7, 1519812900, NULL, 29, NULL),
(280, 36, 4, 1517646600, 1517652900, '', 4, 7, 1517628900, NULL, 29, NULL),
(281, 54, 1, 1530597600, 1530612900, '', 4, 7, 1527993540, NULL, 29, NULL),
(282, 56, 5, 1530579600, 1530612900, '', 4, 7, 1528018740, NULL, 29, NULL),
(283, 35, 1, 1530609300, 1530612900, '', 4, 7, 1533262140, NULL, 29, NULL),
(284, 1, 4, 1533276000, 1533291300, '', 4, 7, 1533263340, NULL, 29, NULL),
(285, 35, 1, 1533289500, 1533291300, '', 4, 7, 1533286980, NULL, 29, NULL),
(286, 36, 4, 1535963400, 1535969700, '', 4, 7, 1535941680, NULL, 29, NULL),
(287, 35, 1, 1535967900, 1535969700, '', 4, 7, 1535966820, NULL, 29, NULL),
(288, 36, 4, 1543798800, 1543802400, '', 4, 7, 1543805280, NULL, 29, NULL),
(289, 54, 1, 1543798800, 1543813200, '', 4, 7, 1543815600, NULL, 29, NULL),
(290, 1, 4, 1521093600, 1521108900, '', 4, 7, 1521076860, NULL, 29, NULL),
(291, 36, 4, 1520989200, 1521022500, '', 4, 7, 1521077100, NULL, 29, NULL),
(292, 1, 4, 1521162000, 1521175500, '', 4, 7, 1521196920, NULL, 29, NULL),
(293, 32, 3, 1543798800, 1543832100, '', 2, 5, 1521421200, NULL, 54, NULL),
(294, 38, 1, 1519693200, 1519695000, '', 2, 5, 1521426480, NULL, 54, NULL),
(295, 38, 1, 1520998200, 1521002700, '', 2, 5, 1521426600, NULL, 54, NULL),
(296, 38, 1, 1521093600, 1521097200, '', 1, 4, 1521426720, NULL, 30, NULL),
(297, 52, 1, 1519261200, 1519264800, '', 4, 7, 1521427380, NULL, 29, NULL),
(298, 52, 1, 1520902800, 1521424800, '', 4, 7, 1521427440, NULL, 29, NULL),
(299, 52, 1, 1521075600, 1521079200, '', 4, 7, 1521427440, NULL, 29, NULL),
(300, 33, 1, 1521612900, 1521627300, '', 2, 5, 1521600300, NULL, 54, NULL),
(301, 54, 1, 1517651100, 1517652900, '', 2, 5, 1521601140, NULL, 54, NULL),
(302, 54, 1, 1520920800, 1520936100, '', 2, 5, 1521601200, NULL, 54, NULL),
(303, 54, 1, 1521075600, 1521079200, '', 2, 5, 1521601260, NULL, 54, NULL),
(304, 58, 3, 1522026000, 1522060200, '', 2, 5, 1521606960, NULL, 54, NULL),
(305, 36, 4, 1521594000, 1521613800, '', 2, 5, 1521614160, NULL, 54, NULL),
(306, 35, 1, 1521606000, 1521615600, '', 2, 5, 1521614940, NULL, 54, NULL),
(307, 1, 4, 1521680400, 1521689400, '', 2, 5, 1521690900, NULL, 54, NULL),
(308, 35, 1, 1521766800, 1521774000, '', 2, 5, 1521704460, NULL, 54, NULL),
(309, 33, 1, 1521766800, 1521781200, '', 2, 5, 1521727740, NULL, 54, NULL),
(310, 38, 1, 1522026000, 1522059300, '', 1, 4, 1521989460, NULL, 30, NULL),
(311, 37, 1, 1522050600, 1522059300, '', 4, 7, 1522119840, NULL, 29, NULL),
(312, 1, 4, 1522112400, 1522125900, '', 4, 7, 1522131660, NULL, 29, NULL),
(313, 32, 3, 1522026000, 1522059300, '', 1, 4, 1522147320, NULL, 30, NULL),
(314, 1, 4, 1522227600, 1522232100, '', 4, 7, 1522227540, NULL, 29, NULL),
(315, 1, 5, 1522315800, 1522318500, '', 4, 7, 1522315500, NULL, 29, NULL),
(316, 56, 1, 1522389600, 1522393200, '', 4, 7, 1522392840, NULL, 29, NULL),
(317, 34, 1, 1522285200, 1522287000, '', 1, 4, 1515021120, NULL, 30, NULL),
(318, 1, 4, 1517706000, 1517719500, '', 4, 7, 1517725200, NULL, 29, NULL),
(319, 52, 1, 1522803600, 1522836900, '', 4, 7, 1520126940, NULL, 29, NULL),
(320, 34, 1, 1520125200, 1520129700, '', 1, 4, 1520147040, NULL, 30, NULL),
(321, 35, 1, 1525426200, 1525421700, '', 2, 5, 1525421760, NULL, 54, NULL),
(322, 54, 1, 1525426200, 1525428900, '', 4, 7, 1525425660, NULL, 29, NULL),
(323, 37, 1, 1525426200, 1525428900, '', 2, 5, 1525425720, NULL, 54, NULL),
(324, 54, 1, 1528092000, 1528095060, '', 4, 7, 1528095060, NULL, 29, NULL),
(325, 56, 1, 1538641800, 1538648100, '', 4, 7, 1538615760, NULL, 29, NULL),
(326, 1, 4, 1538640000, 1538648100, '', 2, 5, 1538639700, NULL, 54, NULL),
(327, 54, 1, 1541322900, 1541326500, '', 4, 7, 1541318700, NULL, 29, NULL),
(328, 36, 4, 1543885200, 1543890600, '', 2, 5, 1543893780, NULL, 54, NULL),
(329, 33, 1, 1523581200, 1523594700, '', 2, 5, 1543911960, NULL, 54, NULL),
(330, 32, 4, 1523581200, 1523594700, '', 2, 5, 1523616300, NULL, 54, NULL),
(331, 54, 1, 1524031200, 1524046500, '', 4, 7, 1523842320, NULL, 29, NULL),
(332, 37, 1, 1523840400, 1523843100, '', 4, 7, 1523843700, NULL, 29, NULL),
(333, 36, 4, 1523870700, 1523873700, '', 4, 7, 1523870700, NULL, 29, NULL),
(334, 58, 4, 1536022800, 1536057000, '', 4, 7, 1523936400, NULL, 29, NULL),
(335, 1, 4, 1524034800, 1524040200, '', 4, 7, 1523949420, NULL, 29, NULL),
(336, 34, 1, 1524099600, 1524132900, '', 4, 7, 1524021780, NULL, 29, NULL),
(337, 38, 1, 1521513000, 1521514800, '', 2, 5, 1524104040, NULL, 54, NULL),
(338, 38, 1, 1522285200, 1522290600, '', 2, 5, 1524104160, NULL, 54, NULL),
(339, 39, 1, 1517706000, 1517739300, '', 2, 5, 1524104400, NULL, 54, NULL),
(340, 54, 1, 1517706000, 1517739300, '', 2, 5, 1524108240, NULL, 54, NULL),
(341, 54, 1, 1520133300, 1520138700, '', 2, 5, 1524108420, NULL, 54, NULL),
(342, 38, 1, 1524123000, 1524132900, '', 1, 4, 1524121380, NULL, 30, NULL),
(343, 35, 1, 1524216600, 1524219300, '', 2, 5, 1524212760, NULL, 54, NULL),
(344, 54, 1, 1524445200, 1524448800, '', 2, 5, 1524449520, NULL, 54, NULL),
(345, 35, 1, 1524735000, 1524737700, '', 2, 5, 1524726000, NULL, 54, NULL),
(346, 36, 4, 1524704400, 1524708900, '', 2, 5, 1524730440, NULL, 54, NULL),
(347, 1, 1, 1517792400, 1517825700, '', 2, 5, 1520244360, NULL, 54, NULL),
(348, 36, 4, 1538701200, 1538735400, '', 2, 5, 1533443100, NULL, 54, NULL),
(349, 1, 1, 1533430800, 1533444300, '', 2, 5, 1533452940, NULL, 54, NULL),
(350, 54, 1, 1538701200, 1538715600, '', 2, 5, 1536110820, NULL, 54, NULL),
(351, 1, 1, 1541379600, 1541386800, '', 2, 5, 1541388180, NULL, 54, NULL),
(352, 35, 1, 1526376600, 1526379300, '', 2, 5, 1526349840, NULL, 54, NULL),
(353, 54, 1, 1526371200, 1526379300, '', 2, 5, 1526368020, NULL, 54, NULL),
(354, 36, 4, 1526461200, 1526465700, '', 2, 5, 1526444820, NULL, 54, NULL),
(355, 55, 1, 1526629500, 1526633100, '', 2, 5, 1526606520, NULL, 54, NULL),
(356, 52, 1, 1526605200, 1526630400, '', 2, 5, 1526625180, 1533537676, 54, NULL),
(357, 54, 1, 1526623200, 1526625000, '', 2, 5, 1526636520, NULL, 54, NULL),
(358, 54, 1, 1527469200, 1527588900, '', 2, 5, 1526878260, NULL, 54, NULL),
(359, 34, 1, 1526895000, 1526897700, '', 2, 5, 1526893860, NULL, 54, NULL),
(360, 37, 1, 1526623200, 1526625000, '', 2, 5, 1526896500, NULL, 54, NULL),
(361, 39, 1, 1526364000, 1526371200, '', 2, 5, 1526956080, NULL, 54, NULL),
(362, 1, 1, 1526432400, 1526445900, '', 2, 5, 1526959080, NULL, 54, NULL),
(363, 58, 1, 1526518800, 1526553000, '', 2, 5, 1526959500, NULL, 54, NULL),
(364, 58, 1, 1526432400, 1526446800, '', 2, 5, 1526959620, NULL, 54, NULL),
(365, 54, 1, 1526605200, 1526608800, '', 2, 5, 1526970480, NULL, 54, NULL),
(366, 35, 1, 1524790800, 1524824100, '', 2, 5, 1526971860, NULL, 54, NULL),
(367, 35, 1, 1517823000, 1517825700, '', 2, 5, 1526971860, NULL, 54, NULL),
(368, 54, 1, 1524618000, 1524651300, '', 2, 5, 1526972880, NULL, 54, NULL),
(369, 36, 4, 1524812400, 1524816000, '', 2, 5, 1526974320, NULL, 54, NULL),
(370, 36, 4, 1526529600, 1526540400, '', 2, 5, 1526974380, NULL, 54, NULL),
(371, 54, 1, 1520229600, 1520244900, '', 2, 5, 1526974860, NULL, 54, NULL),
(372, 58, 1, 1533437100, 1533444300, '', 2, 5, 1526975160, NULL, 54, NULL),
(373, 1, 1, 1524456000, 1524458700, '', 2, 5, 1526975880, NULL, 54, NULL),
(374, 1, 1, 1524790800, 1527390000, '', 2, 5, 1526976060, NULL, 54, NULL),
(375, 1, 1, 1526605200, 1526609400, '', 2, 5, 1526976120, NULL, 54, NULL),
(376, 52, 1, 1530752400, 1530785700, '', 2, 5, 1527037920, 1533537716, 54, NULL),
(377, 52, 1, 1526864400, 1526868000, '', 2, 5, 1527037980, NULL, 54, NULL),
(378, 52, 1, 1527141600, 1527243300, '', 2, 5, 1527037980, 1533537672, 54, NULL),
(379, 38, 1, 1524704400, 1524708000, '', 1, 4, 1527039600, NULL, 30, NULL),
(380, 38, 1, 1533430800, 1536142500, '', 1, 4, 1527039780, NULL, 30, NULL),
(381, 38, 1, 1538719200, 1538721000, '', 1, 4, 1527039840, NULL, 30, NULL),
(382, 54, 1, 1527066000, 1527070500, '', 2, 5, 1527043740, NULL, 54, NULL),
(383, 37, 1, 1527066900, 1527070500, '', 2, 5, 1527064320, NULL, 54, NULL),
(384, 34, 1, 1527123600, 1527125400, '', 1, 4, 1527129540, NULL, 30, NULL),
(385, 35, 1, 1527469200, 1527502500, '', 2, 5, 1527233640, NULL, 54, NULL),
(386, 36, 4, 1527555600, 1527569100, '', 2, 5, 1527495000, NULL, 54, NULL),
(387, 35, 1, 1527586200, 1527588900, '', 2, 5, 1527578520, NULL, 54, NULL),
(388, 58, 4, 1527469200, 1527591600, '', 2, 5, 1527644820, NULL, 54, NULL),
(389, 31, 1, 1525568400, 1525602600, '', 2, 5, 1523031720, NULL, 54, NULL),
(390, 33, 1, 1525568400, 1525581900, '', 2, 5, 1525573980, NULL, 54, NULL),
(391, 54, 1, 1525568400, 1525573800, '', 2, 5, 1525576380, NULL, 54, NULL),
(392, 1, 1, 1525568400, 1525581900, '', 2, 5, 1525604880, NULL, 54, NULL),
(393, 34, 1, 1528246800, 1528254000, '', 1, 4, 1528255620, NULL, 30, NULL),
(394, 33, 1, 1541466000, 1541499300, '', 2, 5, 1533544800, NULL, 54, NULL),
(395, 36, 4, 1541494800, 1541499300, '', 2, 5, 1541488620, NULL, 54, NULL),
(396, 1, 1, 1541495700, 1541499300, '', 2, 5, 1541495160, NULL, 54, NULL),
(397, 34, 1, 1541466000, 1541469600, '', 1, 4, 1541495580, NULL, 30, NULL),
(398, 36, 4, 1544070600, 1544091300, '', 2, 5, 1541495820, NULL, 54, NULL),
(399, 65, 4, 1528956000, 1529057700, '', 2, 5, 1544059920, NULL, 54, NULL),
(400, 58, 4, 1541466000, 1541500200, '', 2, 5, 1544090100, NULL, 54, NULL),
(401, 34, 1, 1528858800, 1528869600, '', 1, 4, 1528855800, NULL, 30, NULL),
(402, 58, 4, 1529024400, 1529058600, '', 2, 5, 1528939620, NULL, 54, NULL),
(403, 54, 1, 1528956000, 1528963380, '', 2, 5, 1528963440, NULL, 54, NULL),
(404, 36, 4, 1528966800, 1528971300, '', 2, 5, 1528964100, NULL, 54, NULL),
(405, 34, 1, 1528963200, 1528965900, '', 1, 4, 1528965780, NULL, 30, NULL),
(406, 1, 1, 1529024400, 1529037900, '', 2, 5, 1529056380, NULL, 54, NULL),
(407, 37, 1, 1529283600, 1529294400, '', 2, 5, 1529303820, NULL, 54, NULL),
(408, 54, 1, 1529629200, 1529662500, '', 2, 5, 1529309640, NULL, 54, NULL),
(409, 58, 4, 1529456400, 1529577000, '', 2, 5, 1529318160, NULL, 54, NULL),
(410, 36, 4, 1529283600, 1529288100, '', 2, 5, 1529389080, NULL, 54, NULL),
(411, 36, 4, 1529370000, 1529388000, '', 2, 5, 1529389140, NULL, 54, NULL),
(412, 52, 1, 1529456400, 1529560800, '', 2, 5, 1529401320, 1533537374, 54, NULL),
(413, 33, 1, 1529629200, 1529662500, '', 2, 5, 1529484840, NULL, 54, NULL),
(414, 35, 1, 1529542800, 1529546400, '', 2, 5, 1529546880, NULL, 54, NULL),
(415, 38, 1, 1526950800, 1526984100, '', 1, 4, 1529577360, NULL, 30, NULL),
(416, 38, 1, 1527555600, 1527557400, '', 1, 4, 1529577480, NULL, 30, NULL),
(417, 1, 1, 1529571600, 1529576100, '', 2, 5, 1529634420, NULL, 54, NULL),
(418, 36, 4, 1529629200, 1529636400, '', 2, 5, 1529640900, NULL, 54, NULL),
(419, 38, 1, 1528275600, 1528280100, '', 1, 4, 1529652780, NULL, 30, NULL),
(420, 38, 1, 1541491200, 1541499300, '', 1, 4, 1529652780, NULL, 30, NULL),
(421, 55, 1, 1525568400, 1525581900, '', 2, 5, 1529658120, NULL, 54, NULL),
(422, 55, 1, 1544086800, 1544091300, '', 2, 5, 1529658240, NULL, 54, NULL),
(423, 34, 1, 1529974800, 1529985600, '', 1, 4, 1529895180, NULL, 54, NULL),
(424, 37, 1, 1529974800, 1529982000, '', 2, 5, 1529983740, NULL, 54, NULL),
(425, 54, 1, 1530061200, 1530063000, '', 2, 5, 1530066240, NULL, 54, NULL),
(426, 54, 1, 1528333200, 1528366500, '', 2, 5, 1530066420, NULL, 54, NULL),
(427, 35, 1, 1529974800, 1529982000, '', 2, 5, 1530094980, NULL, 54, NULL),
(428, 37, 1, 1530171000, 1530181800, '', 2, 5, 1530171240, NULL, 54, NULL),
(429, 36, 4, 1530061200, 1530074700, '', 2, 5, 1530239940, NULL, 54, NULL),
(430, 36, 4, 1530234000, 1530237600, '', 2, 5, 1530239940, NULL, 54, NULL),
(431, 54, 1, 1530264600, 1530267300, '', 2, 5, 1530257700, NULL, 54, NULL),
(432, 35, 1, 1517965200, 1517968800, '', 2, 5, 1517998920, NULL, 54, NULL),
(433, 1, 1, 1528333200, 1528346700, '', 2, 5, 1525659240, NULL, 54, NULL),
(434, 35, 1, 1523062800, 1523096100, '', 2, 5, 1525660440, NULL, 54, NULL),
(435, 1, 1, 1538901900, 1538907300, '', 2, 5, 1538901060, NULL, 54, NULL),
(436, 34, 1, 1531443600, 1531448100, '', 1, 4, 1531451520, NULL, 30, NULL),
(437, 54, 1, 1531807200, 1532081700, '', 2, 5, 1531796160, NULL, 54, NULL),
(438, 54, 1, 1531818000, 1531822500, '', 2, 5, 1531798680, NULL, 54, NULL),
(439, 36, 4, 1531789200, 1531802700, '', 2, 5, 1531886940, NULL, 54, NULL),
(440, 33, 1, 1532048400, 1532081700, '', 2, 5, 1531901580, NULL, 54, NULL),
(441, 44, 4, 1531807200, 1531823400, '', 1, 4, 1531994280, NULL, 30, NULL),
(442, 32, 3, 1529906400, 1529921700, '', 1, 4, 1532056200, NULL, 30, NULL),
(443, 39, 1, 1538874000, 1538875800, '', 1, 4, 1532056260, NULL, 30, NULL),
(444, 36, 4, 1529487000, 1529446500, '', 3, 6, 1532056380, 1534842370, 54, NULL),
(445, 65, 4, 1536282000, 1536300000, '', 3, 6, 1532056920, 1534842366, 54, NULL),
(446, 65, 4, 1531443600, 1532066400, '', 3, 6, 1532056980, 1534842353, 54, NULL),
(447, 33, 1, 1532307600, 1532326500, '', 3, 6, 1532131680, 1534842352, 54, NULL),
(448, 37, 1, 1532307600, 1532314800, '', 3, 6, 1532318820, 1534842324, 54, NULL),
(449, 54, 1, 1532394000, 1532395800, '', 1, 4, 1532397060, NULL, 29, NULL),
(450, 37, 1, 1520384400, 1520398800, '', 1, 4, 1532428560, NULL, 29, NULL),
(451, 35, 1, 1532480400, 1532484000, '', 1, 4, 1532485560, NULL, 29, NULL),
(452, 34, 1, 1532566800, 1532570400, '', 1, 4, 1532584920, NULL, 30, NULL),
(453, 33, 1, 1515391200, 1515406500, '', 1, 4, 1532917320, NULL, 29, NULL),
(454, 33, 1, 1518069600, 1518084900, '', 1, 4, 1532917380, NULL, 29, NULL),
(455, 33, 1, 1520470800, 1520504100, '', 1, 4, 1532917440, NULL, 29, NULL),
(456, 47, 4, 1533776400, 1534155300, 'i\'m go to having a vacation with my family.', 0, 3, 1533178907, 1533178907, 29, NULL),
(457, 1, 1, 1533258000, 1533271500, 'Personal Reasons', 0, 3, 1533277018, 1533277018, 29, NULL),
(458, 52, 1, 1533603600, 1533617100, '50 days of my father\'s death', 3, 6, 1533537530, 1534842335, 0, NULL),
(459, 37, 1, 1533708000, 1533723300, 'Due to private reason, I would like to be absent this afternoon. I\'m sorry for this inconvenience and thank you.', 0, 3, 1533701610, 1533701610, 29, NULL),
(460, 53, 1, 1533794400, 1533809700, 'For private reasons', 0, 3, 1533864855, 1533864855, 29, NULL),
(461, 53, 1, 1534208400, 1534328100, 'Because of private reason ( take care my baby) I am going to be absent on 2018/08/14 (Tueday) and 2018/08/15 (wednesday). I am sorry for this inconvenience. Please contact me via mobile phone if need. Thanks!', 0, 3, 1534123737, 1534123737, 29, NULL),
(462, 1, 1, 1534235400, 1534241700, 'Personal issues', 1, 4, 1534234633, 1535446546, 29, NULL),
(463, 33, 1, 1534294800, 1534303800, 'Private reason', 1, 4, 1534246797, 1535446566, 29, NULL),
(464, 34, 1, 1534122000, 1534241700, 'Fall sick', 1, 4, 1534295883, 1535446577, 29, NULL),
(465, 37, 1, 1534467600, 1534500900, 'Private reason', 0, 3, 1534413035, 1534413035, 29, NULL),
(466, 37, 1, 1533794400, 1533809700, 'Private reason.', 0, 3, 1534413068, 1534413068, 29, NULL),
(467, 38, 1, 1532048400, 1532050200, 'Private reason', 0, 3, 1534730294, 1534730294, 29, NULL),
(468, 38, 1, 1532480400, 1532482200, 'Private reason', 0, 3, 1534730371, 1534730536, 29, NULL),
(469, 38, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534730479, 1534730498, 29, NULL),
(470, 38, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534730552, 1534730552, 29, NULL),
(471, 32, 3, 1533517200, 1533550500, 'Private reasons', 0, 3, 1534730716, 1534730716, 29, NULL),
(472, 39, 1, 1533627900, 1533896100, 'Sick.', 0, 3, 1534731082, 1534731082, 29, NULL),
(473, 35, 1, 1534728300, 1534731900, 'private reason', 0, 3, 1534731848, 1534731848, 29, NULL),
(474, 35, 1, 1534491000, 1534500900, 'private reason', 0, 3, 1534731878, 1534731878, 29, NULL),
(475, 46, 1, 1533517200, 1533530700, 'Private reason', 0, 3, 1534732233, 1534732233, 29, NULL),
(476, 65, 1, 1532394000, 1532412000, 'Private reason', 0, 3, 1534745546, 1534745546, 29, NULL),
(477, 65, 1, 1533085200, 1533118500, 'Private reason', 0, 3, 1534745709, 1534745709, 29, NULL),
(478, 65, 4, 1533621600, 1533636900, 'Private reason', 1, 4, 1534745777, 1535446478, 29, NULL),
(479, 65, 4, 1533721500, 1534760100, 'Private reason', 1, 4, 1534745841, 1535446501, 29, NULL),
(480, 65, 4, 1533892500, 1534760100, 'Private reason', 1, 4, 1534746019, 1535446519, 29, NULL),
(481, 65, 4, 1534294800, 1534734000, 'Private reason', 1, 4, 1534746058, 1535446525, 29, NULL),
(482, 65, 4, 1534467600, 1534744800, 'Private reason', 1, 4, 1534746118, 1535446531, 29, NULL),
(483, 55, 1, 1532998800, 1533032100, '- I have private family reason,  I take my father to hospital.', 1, 4, 1534749507, 1535446513, 29, NULL),
(484, 1, 1, 1534831200, 1534846500, 'Personal reasons', 1, 4, 1534818252, 1535446488, 29, NULL),
(485, 47, 4, 1534831200, 1534846500, 'take care of my baby', 1, 4, 1534824086, 1535446482, 29, NULL),
(486, 35, 1, 1534831200, 1534846500, 'private reason', 1, 4, 1534825155, 1535446550, 29, NULL),
(487, 44, 1, 1534813200, 1534846500, 'Family\'s matter', 0, 3, 1534900553, 1535682436, 29, NULL),
(488, 44, 4, 1532998800, 1533012300, 'I have to take my mother to the hospital.', 0, 3, 1534900686, 1535682446, 29, NULL),
(489, 53, 1, 1535522400, 1535537700, 'For private reasons', 0, 3, 1535421575, 1535421575, 29, NULL),
(490, 1, 1, 1535418000, 1535425200, 'Personal reasons', 0, 3, 1535426337, 1535426337, 29, NULL),
(491, 35, 1, 1535331600, 1535364900, 'private reason', 0, 3, 1535434102, 1536023615, 29, NULL),
(492, 34, 1, 1535418000, 1535425200, 'Private reason (go to the VNPT to pay monthly internet fee)', 0, 3, 1535435437, 1535435437, 29, NULL),
(493, 53, 1, 1535695200, 1535710500, 'for private reasons', 0, 3, 1535599313, 1535599313, 29, NULL),
(494, 44, 1, 1535677200, 1535680800, 'Private reason', 0, 3, 1535682395, 1535682395, 29, NULL),
(495, 46, 1, 1535677200, 1535682600, 'Private reason', 0, 3, 1535693384, 1535693384, 29, NULL),
(496, 33, 1, 1536022800, 1536041700, 'Private reason', 0, 3, 1535703992, 1535703992, 29, NULL),
(497, 47, 4, 1536022800, 1536056100, 'i was sick and need time to recover', 0, 3, 1535979840, 1535979840, 29, NULL),
(498, 35, 1, 1535590800, 1535624100, 'private', 0, 3, 1536023343, 1536023343, 29, NULL),
(499, 33, 1, 1536732000, 1536920100, 'private reason', 1, 4, 1536056341, 1538657111, 29, NULL),
(500, 33, 1, 1537146000, 1537336800, 'private reason', 0, 3, 1536056396, 1536056396, 29, NULL),
(501, 47, 1, 1536109200, 1536142500, 'My health still bad', 0, 3, 1536064404, 1536064404, 29, NULL),
(502, 35, 1, 1536109200, 1536123600, 'private', 0, 3, 1536203893, 1536203893, 29, NULL),
(503, 35, 1, 1536571800, 1536574500, 'private', 0, 3, 1536570685, 1536570685, 29, NULL),
(504, 35, 1, 1536312600, 1536315300, 'private', 0, 3, 1536570715, 1536570715, 29, NULL),
(505, 46, 1, 1536541200, 1536574500, 'Private reason', 0, 3, 1536915507, 1536915522, 29, NULL),
(506, 35, 1, 1536886800, 1536920100, 'private', 0, 3, 1537261825, 1537261825, 29, NULL),
(507, 35, 1, 1537262100, 1537265700, 'private', 0, 3, 1537261849, 1537261849, 29, NULL),
(508, 34, 1, 1537318800, 1537324200, 'Private reason', 1, 4, 1537406863, 1538657148, 29, NULL),
(509, 67, 4, 1536627600, 1536641100, 'Private reason', 1, 4, 1537416645, 1538657164, 29, NULL),
(510, 68, 4, 1537405200, 1537438500, '11月の頭で私は結婚予定がありますが、結婚式を準備するため、結婚写真を撮って行く予定がありますので、９月２０日に休みさせていただきます。', 1, 4, 1537425318, 1538657202, 29, NULL),
(511, 38, 1, 1535504400, 1535624100, 'stomachache and food poisoning', 1, 4, 1537514125, 1538657195, 29, NULL),
(512, 38, 1, 1535677200, 1535679000, 'problem with motobike', 1, 4, 1537514208, 1538657186, 29, NULL),
(513, 38, 1, 1536552000, 1536561000, 'private reason', 1, 4, 1537514258, 1538657175, 29, NULL),
(514, 38, 1, 1537146000, 1537147800, 'private reason', 1, 4, 1537514297, 1538657079, 29, NULL),
(515, 1, 1, 1537232400, 1537265700, 'Personal reasons', 1, 4, 1537752765, 1538657086, 29, NULL),
(516, 1, 1, 1537430400, 1537438500, 'Go to hospital and check for my neck / shoulder', 1, 4, 1537752941, 1538657096, 29, NULL),
(517, 1, 1, 1537491600, 1537524900, 'Sick and take day off at home', 1, 4, 1537752967, 1538657091, 29, NULL),
(518, 49, 4, 1538096400, 1538388900, 'I will have a trip to Da Nang.  On the trip I will try to cover the work to the best of my ability.', 1, 4, 1537760223, 1538657040, 29, NULL),
(519, 67, 4, 1537954200, 1537956900, 'Private reason', 1, 4, 1537954065, 1538657057, 29, NULL),
(520, 34, 1, 1537855200, 1537870500, 'Having a stomachache', 1, 4, 1538033600, 1538657069, 29, NULL),
(521, 68, 4, 1537837200, 1537956900, 'I am sick so I need absent two day ', 1, 4, 1538114784, 1538657062, 29, NULL),
(522, 44, 1, 1538442000, 1538455500, 'Family\'s matter', 1, 4, 1538477050, 1538657043, 29, NULL),
(523, 34, 1, 1538442000, 1538451000, 'Having a headache', 1, 4, 1538545507, 1538657047, 29, NULL),
(524, 42, 1, 1539651600, 1539684900, 'For the private reason. I need to join the ceremony of the organization.', 1, 4, 1538555853, 1538657050, 29, NULL),
(525, 42, 1, 1539583200, 1539598500, 'for the private reason preparing for the ceremony of the organization.', 1, 4, 1538556415, 1538657031, 29, NULL),
(526, 47, 1, 1538614800, 1538628300, 'I have a private reasons so i would like to absence.', 1, 4, 1538633001, 1538657027, 29, NULL),
(527, 1, 1, 1538614800, 1538628300, 'Personal reasons', 1, 4, 1538636166, 1538657024, 29, NULL),
(528, 45, 3, 1538632800, 1538640000, 'I have to send some documents to my local government', 1, 4, 1538640170, 1538657012, 29, NULL),
(529, 47, 1, 1538960400, 1538973900, 'because of private reason', 0, 3, 1538976662, 1538976662, 29, NULL),
(530, 1, 1, 1539142200, 1539146700, 'Personal issues', 0, 3, 1538993908, 1538993908, 29, NULL),
(531, 46, 1, 1539151200, 1539154800, 'Private reason.', 0, 3, 1539161881, 1539161881, 29, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_overtime`
--
ALTER TABLE `comment_overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_payment`
--
ALTER TABLE `comment_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_vacation`
--
ALTER TABLE `comment_vacation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments_users`
--
ALTER TABLE `departments_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meetings_id_uindex` (`id`);

--
-- Indexes for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_overtime`
--
ALTER TABLE `comment_overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_payment`
--
ALTER TABLE `comment_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_vacation`
--
ALTER TABLE `comment_vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments_users`
--
ALTER TABLE `departments_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;
--
-- Database: `internal_site`
--
CREATE DATABASE IF NOT EXISTS `internal_site` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `internal_site`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_payments`
--

CREATE TABLE `detail_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_payments`
--

INSERT INTO `detail_payments` (`id`, `payment_id`, `detail`, `qty`, `unit_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'aaaaaaaaaa', 1, 1000, 1000, '2018-07-11 17:00:00', NULL),
(2, 1, 'bbbbbbbb', 1, 2000, 2000, '2018-07-11 17:00:00', NULL),
(3, 1, 'aaaaaaaaaa', 1, 1000, 1000, '2018-07-11 17:00:00', NULL),
(4, 1, 'bbbbbbbb', 1, 2000, 2000, '2018-07-11 17:00:00', NULL),
(5, 2, 'aaaaaa', 1, 1234, 1234, '2018-07-11 17:00:00', NULL),
(6, 2, 'bbbbbbbb', 1, 12345, 12345, '2018-07-11 17:00:00', NULL),
(7, 2, 'aaaaaa', 1, 1234, 1234, '2018-07-11 17:00:00', NULL),
(8, 2, 'bbbbbbbb', 1, 12345, 12345, '2018-07-11 17:00:00', NULL);

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
(2, '2018_07_09_063553_create_projects_table', 1),
(3, '2018_07_09_064847_create_detail_payments_table', 1),
(4, '2018_07_09_065049_create_training_documents_table', 1),
(5, '2018_07_09_065841_create_users_table', 1),
(6, '2018_07_09_071328_create_payment_requests_table', 1),
(7, '2018_07_09_072547_create_vacation_requests_table', 1),
(8, '2018_07_09_062913_create_overtime_requests_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `overtime_requests`
--

CREATE TABLE `overtime_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_hours` time NOT NULL,
  `status` smallint(6) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overtime_requests`
--

INSERT INTO `overtime_requests` (`id`, `user_id`, `reasons`, `start_time`, `end_time`, `total_hours`, `status`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 1, '123', '2018-07-01 00:00:00', '2018-07-01 06:00:00', '05:00:00', 0, 1, '2018-06-30 17:00:00', '2018-07-12 23:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total_with_vat` int(11) NOT NULL,
  `curentcy` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_in_charge_user_id` int(11) NOT NULL,
  `payment_method` smallint(6) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `user_id`, `price`, `vat`, `total_with_vat`, `curentcy`, `status`, `reasons`, `current_in_charge_user_id`, `payment_method`, `detail_id`, `describe`, `created_at`, `updated_at`) VALUES
(1, 1, 123, 10, 130, 0, 0, '123456 780', 1, 1, 1, '1234123', '2018-07-18 17:00:00', NULL),
(2, 2, 123, 10, 130, 1, 1, '123', 2, 1, 2, '123', '2018-07-11 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Internal site', '2018-07-11 17:00:00', NULL),
(2, '22', '2018-07-11 17:00:00', NULL),
(3, '12', '2018-07-11 17:00:00', NULL),
(4, '22', '2018-07-11 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_documents`
--

CREATE TABLE `training_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_personal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` smallint(6) NOT NULL,
  `starting_day` date NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email_personal`, `email_company`, `password`, `birthday`, `phone`, `skype`, `department`, `starting_day`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van A', 'lexuandam21@gmail.com', 'lexuandam96@gmail.com', 'dampow', '2018-07-04', '0123456789', '123456', 2, '2018-07-12', 1, '2018-07-03 17:00:00', '2018-07-12 01:55:36'),
(2, 'Le Xuan Dam', 'lexuandam21@gmail.com', 'lexuandam21@gmail.com', 'dampow', '2018-07-12', '01234567891', '', 1, '2018-07-01', 1, '2018-07-11 17:00:00', '2018-07-12 03:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `vacation_requests`
--

CREATE TABLE `vacation_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vacation_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `reasons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `current_in_charge_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vacation_requests`
--

INSERT INTO `vacation_requests` (`id`, `user_id`, `vacation_type`, `start_date`, `end_date`, `reasons`, `status`, `current_in_charge_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Annual leave', '2018-07-12 00:00:00', '2018-07-12 00:00:00', '123', 1, 1, '2018-07-11 17:00:00', '2018-07-12 23:38:09'),
(2, 1, 'Private time off with', '2018-07-12 00:00:00', '2018-07-12 00:00:00', '456', 1, 1, '2018-07-11 17:00:00', '2018-07-12 23:38:24'),
(3, 1, 'Annual leave', '2018-07-04 00:00:00', '2018-07-04 00:00:00', '231', 1, 1, '2018-07-11 17:00:00', '2018-07-12 23:38:18'),
(4, 1, 'Business trip(with pay)', '2018-07-04 00:00:00', '2018-07-04 00:00:00', '745', 1, 1, '2018-07-11 17:00:00', '2018-07-12 23:38:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_payments`
--
ALTER TABLE `detail_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_documents`
--
ALTER TABLE `training_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation_requests`
--
ALTER TABLE `vacation_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_payments`
--
ALTER TABLE `detail_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `training_documents`
--
ALTER TABLE `training_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vacation_requests`
--
ALTER TABLE `vacation_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `landing_page`
--
CREATE DATABASE IF NOT EXISTS `landing_page` DEFAULT CHARACTER SET utf32 COLLATE utf32_unicode_ci;
USE `landing_page`;

-- --------------------------------------------------------

--
-- Table structure for table `maintain`
--

CREATE TABLE `maintain` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf32_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `maintain`
--

INSERT INTO `maintain` (`id`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Tiáº¿p tá»¥c chuá»—i sá»± kiá»‡n tuáº§n trÆ°á»›c vÃ  nháº±m Ä‘áº£m báº£o tá»‘t hÆ¡n cháº¥t lÆ°á»£ng cá»§a dá»‹ch vá»¥, cÅ©ng nhÆ° Ä‘á»ƒ ngÆ°á»i chÆ¡i tráº£i nghiá»‡m tá»‘t hÆ¡n khi tham gia Re:Monster, BQT xin tiáº¿n hÃ nh báº£o trÃ¬ há»‡ thá»‘ng, Ä‘á»“ng thá»i má»Ÿ ra ná»™i dung má»›i nhÆ° sau:\n<br>Thá»i gian báº£o trÃ¬ dá»± kiáº¿n:\n<br>Báº¯t Ä‘áº§u:  09:00 ngÃ y 13/10/2018\n<br>Káº¿t thÃºc: 12:00 ngÃ y 13/10/2018\n<br>Ná»™i dung chi tiáº¿t báº£o trÃ¬ vui lÃ²ng theo dÃµi táº¡i trang chá»§ hoáº·c Fanpage.\n<br>- Trong thá»i gian báº£o trÃ¬, ngÆ°á»i chÆ¡i vui lÃ²ng khÃ´ng Ä‘Äƒng nháº­p game nháº­p vÃ o game Ä‘á»ƒ trÃ¡nh sá»± cá»‘ xáº£y ra.\n<br>- Sau khi báº£o trÃ¬ xong, báº¡n sáº½ cÃ³ thá»ƒ Ä‘Äƒng nháº­p vÃ o game bÃ¬nh thÆ°á»ng Ä‘á»ƒ tham gia cÃ¡c hoáº¡t Ä‘á»™ng trong game.\n<br>- Táº¥t cáº£ cÃ¡c sá»± kiá»‡n nÃªu trÃªn Ä‘á»u chá»‰ báº¯t Ä‘áº§u tá»« sau khi káº¿t thÃºc báº£o trÃ¬.\n<br>BQT vÃ´ cÃ¹ng xin lá»—i vÃ¬ sá»± báº¥t tiá»‡n nÃ y!', '2018-10-22 15:07:23', '2018-10-24 02:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf32_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf32_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf32_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-25 09:21:03', '2018-09-25 09:21:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf32_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf32_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://yume100.vn', 'yes'),
(2, 'home', 'http://yume100.vn', 'yes'),
(3, 'blogname', 'Landing page', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dam.le@fujitechjsc.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:54:\"/var/www/html/landing/wp-content/themes/yume/index.php\";i:2;s:54:\"/var/www/html/landing/wp-content/themes/yume/style.css\";i:3;s:71:\"/var/www/html/landing/wp-content/plugins/advanced-custom-fields/acf.php\";i:4;s:68:\"C:\\xampp\\htdocs\\www\\wordpress/wp-content/plugins/akismet/akismet.php\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'yume', 'yes'),
(41, 'stylesheet', 'yume', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1540275665;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540286465;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540286490;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540351217;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537867555;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540257843;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'current_theme', 'Yume', 'yes'),
(145, 'theme_mods_yume', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(218, 'mobile_view_theme_link_text', 'Switch To Mobile Version', 'yes'),
(219, 'desktop_view_theme_link_text', 'Switch To Desktop Version', 'yes'),
(220, 'show_switch_link_for_desktop', 'no', 'yes'),
(221, 'forced_layout_expire_time', '0', 'yes'),
(222, 'iphone_theme', 'Yume Mobile', 'yes'),
(223, 'ipad_theme', 'Yume Mobile', 'yes'),
(224, 'android_theme', 'Yume Mobile', 'yes'),
(225, 'android_tab_theme', 'Yume Mobile', 'yes'),
(226, 'blackberry_theme', 'Yume Mobile', 'yes'),
(227, 'windows_theme', 'Yume Mobile', 'yes'),
(228, 'opera_theme', 'Yume Mobile', 'yes'),
(229, 'parm_os_theme', 'Yume Mobile', 'yes'),
(230, 'other_theme', 'Yume Mobile', 'yes'),
(307, 'category_children', 'a:0:{}', 'yes'),
(337, 'WPLANG', '', 'yes'),
(338, 'new_admin_email', 'dam.le@fujitechjsc.com', 'yes'),
(353, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:10:\"yume100.vn\";s:8:\"username\";s:7:\"landing\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(357, 'acf_version', '5.7.7', 'yes'),
(358, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1540257864;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";s:3:\"2.1\";s:9:\"hello.php\";s:3:\"1.7\";s:37:\"wp-mobile-detect/wp-mobile-detect.php\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/any-mobile-theme-switcher\";s:4:\"slug\";s:25:\"any-mobile-theme-switcher\";s:6:\"plugin\";s:55:\"any-mobile-theme-switcher/any-mobile-theme-switcher.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/any-mobile-theme-switcher/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/any-mobile-theme-switcher.2.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/any-mobile-theme-switcher/assets/icon-128x128.png?rev=1109204\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/any-mobile-theme-switcher/assets/banner-772x250.png?rev=1109204\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-mobile-detect/wp-mobile-detect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-mobile-detect\";s:4:\"slug\";s:16:\"wp-mobile-detect\";s:6:\"plugin\";s:37:\"wp-mobile-detect/wp-mobile-detect.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-mobile-detect/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-mobile-detect.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/wp-mobile-detect.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(575, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540257864;s:7:\"checked\";a:5:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:4:\"yume\";s:3:\"2.0\";s:10:\"yumemobile\";s:3:\"2.0\";}s:8:\"response\";a:1:{s:4:\"yume\";a:4:{s:5:\"theme\";s:4:\"yume\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:34:\"https://wordpress.org/themes/yume/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/theme/yume.2.3.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(577, '_transient_doing_cron', '1543223507.8670499324798583984375', 'yes'),
(597, '_site_transient_timeout_theme_roots', '1540866927', 'no'),
(598, '_site_transient_theme_roots', 'a:6:{s:10:\"New folder\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:4:\"yume\";s:7:\"/themes\";s:10:\"yumemobile\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf32_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2018/09/avatar.png'),
(4, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:155;s:6:\"height\";i:156;s:4:\"file\";s:18:\"2018/09/avatar.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"avatar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1538036845:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_edit_lock', '1538022245:1'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1538022261:1'),
(19, 14, '_edit_last', '1'),
(20, 14, '_edit_lock', '1538022287:1'),
(23, 16, '_edit_last', '3'),
(24, 16, '_edit_lock', '1538990317:3'),
(29, 23, '_edit_lock', '1539009749:1'),
(30, 25, '_edit_lock', '1539048961:3'),
(31, 25, '_edit_last', '3'),
(36, 28, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7.zip'),
(37, 28, '_wp_attachment_context', 'upgrader'),
(38, 29, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7-1.zip'),
(39, 29, '_wp_attachment_context', 'upgrader'),
(40, 30, '_edit_lock', '1539050158:3'),
(41, 30, '_edit_last', '3'),
(42, 30, '_pingme', '1'),
(43, 30, '_encloseme', '1'),
(44, 32, '_edit_lock', '1539050706:3'),
(45, 32, '_edit_last', '3'),
(46, 32, '_pingme', '1'),
(47, 32, '_encloseme', '1'),
(48, 34, '_edit_lock', '1539050973:3'),
(49, 34, '_edit_last', '3'),
(50, 34, '_pingme', '1'),
(51, 34, '_encloseme', '1'),
(52, 36, '_edit_lock', '1539051113:3'),
(53, 36, '_edit_last', '3'),
(54, 36, '_pingme', '1'),
(55, 36, '_encloseme', '1'),
(56, 38, '_edit_lock', '1539051412:3'),
(57, 38, '_edit_last', '3'),
(58, 39, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7-2.zip'),
(59, 39, '_wp_attachment_context', 'upgrader'),
(62, 41, '_edit_lock', '1539051907:1'),
(63, 38, '_pingme', '1'),
(64, 38, '_encloseme', '1'),
(65, 41, '_edit_last', '1'),
(66, 45, '_edit_lock', '1539051666:3'),
(67, 45, '_edit_last', '3'),
(68, 45, '_pingme', '1'),
(69, 45, '_encloseme', '1'),
(70, 45, 'thumb_img', ''),
(71, 45, '_thumb_img', 'field_5bbc105b34c34'),
(72, 45, '_', 'field_5bbc107734c35'),
(73, 46, 'thumb_img', ''),
(74, 46, '_thumb_img', 'field_5bbc105b34c34'),
(75, 47, '_edit_lock', '1539051918:3'),
(76, 47, '_edit_last', '3'),
(77, 55, '_edit_lock', '1539055408:1'),
(78, 55, '_edit_last', '1'),
(79, 50, '_edit_lock', '1539070072:1'),
(81, 50, '_edit_last', '1'),
(90, 75, '_edit_lock', '1539053314:1'),
(91, 76, '_edit_lock', '1539053379:1'),
(92, 76, '_edit_last', '1'),
(95, 76, 'thumb_img', ''),
(96, 76, '_thumb_img', 'field_5bbc14d28457a'),
(97, 77, 'thumb_img', ''),
(98, 77, '_thumb_img', 'field_5bbc14d28457a'),
(99, 78, '_edit_lock', '1539053840:1'),
(100, 78, '_edit_last', '1'),
(103, 78, 'thumb_img', ''),
(104, 78, '_thumb_img', 'field_5bbc14d28457a'),
(105, 79, 'thumb_img', ''),
(106, 79, '_thumb_img', 'field_5bbc14d28457a'),
(109, 81, '_edit_lock', '1539056657:3'),
(110, 81, '_edit_last', '3'),
(113, 81, 'thumb_img', ''),
(114, 81, '_thumb_img', 'field_5bbc14d28457a'),
(115, 82, 'thumb_img', ''),
(116, 82, '_thumb_img', 'field_5bbc14d28457a'),
(117, 83, '_edit_lock', '1539053917:1'),
(118, 83, '_edit_last', '1'),
(121, 83, 'thumb_img', ''),
(122, 83, '_thumb_img', 'field_5bbc14d28457a'),
(123, 84, 'thumb_img', ''),
(124, 84, '_thumb_img', 'field_5bbc14d28457a'),
(127, 85, 'thumb_img', ''),
(128, 85, '_thumb_img', 'field_5bbc14d28457a'),
(131, 55, 'thumb_img', ''),
(132, 55, '_thumb_img', 'field_5bbc14d28457a'),
(133, 86, 'thumb_img', ''),
(134, 86, '_thumb_img', 'field_5bbc14d28457a'),
(137, 88, 'thumb_img', ''),
(138, 88, '_thumb_img', 'field_5bbc14d28457a'),
(143, 89, 'thumb_img', ''),
(144, 89, '_thumb_img', 'field_5bbc14d28457a'),
(146, 91, '_edit_lock', '1539057316:1'),
(147, 92, '_wp_attached_file', '2018/10/logo.png'),
(148, 92, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:519;s:6:\"height\";i:408;s:4:\"file\";s:16:\"2018/10/logo.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 91, '_edit_last', '1'),
(152, 91, 'thumb_img', '92'),
(153, 91, '_thumb_img', 'field_5bbc14d28457a'),
(154, 93, 'thumb_img', '92'),
(155, 93, '_thumb_img', 'field_5bbc14d28457a'),
(158, 94, 'thumb_img', '92'),
(159, 94, '_thumb_img', 'field_5bbc14d28457a'),
(160, 95, '_edit_lock', '1539155986:3'),
(161, 95, '_edit_last', '1'),
(162, 96, '_wp_attached_file', '2018/10/30742208_1664479413607836_2593000755184124530_n.jpg'),
(163, 96, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:410;s:6:\"height\";i:520;s:4:\"file\";s:59:\"2018/10/30742208_1664479413607836_2593000755184124530_n.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 95, 'thumb_img', '92'),
(167, 95, '_thumb_img', 'field_5bbc14d28457a'),
(168, 97, 'thumb_img', '92'),
(169, 97, '_thumb_img', 'field_5bbc14d28457a'),
(170, 99, '_wp_attached_file', '2018/10/pri_00023_full.png'),
(171, 99, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:512;s:6:\"height\";i:1150;s:4:\"file\";s:26:\"2018/10/pri_00023_full.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 100, 'thumb_img', '92'),
(175, 100, '_thumb_img', 'field_5bbc14d28457a'),
(176, 101, '_wp_attached_file', '2018/10/pri_00137_full.png'),
(177, 101, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:378;s:6:\"height\";i:1126;s:4:\"file\";s:26:\"2018/10/pri_00137_full.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 102, 'thumb_img', '92'),
(181, 102, '_thumb_img', 'field_5bbc14d28457a'),
(182, 103, '_edit_lock', '1539057725:1'),
(183, 103, '_edit_last', '1'),
(186, 103, 'thumb_img', ''),
(187, 103, '_thumb_img', 'field_5bbc14d28457a'),
(188, 104, 'thumb_img', ''),
(189, 104, '_thumb_img', 'field_5bbc14d28457a'),
(192, 105, 'thumb_img', '92'),
(193, 105, '_thumb_img', 'field_5bbc14d28457a'),
(196, 106, 'thumb_img', '92'),
(197, 106, '_thumb_img', 'field_5bbc14d28457a'),
(198, 108, '_edit_lock', '1539068031:3'),
(199, 108, '_edit_last', '3'),
(200, 109, '_wp_attached_file', '2018/10/1.jpg'),
(201, 109, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:266;s:6:\"height\";i:426;s:4:\"file\";s:13:\"2018/10/1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 110, '_wp_attached_file', '2018/10/2.jpg'),
(203, 110, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:506;s:6:\"height\";i:377;s:4:\"file\";s:13:\"2018/10/2.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 111, '_wp_attached_file', '2018/10/3.jpg'),
(205, 111, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:596;s:6:\"height\";i:302;s:4:\"file\";s:13:\"2018/10/3.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 108, 'thumb_img', ''),
(209, 108, '_thumb_img', 'field_5bbc14d28457a'),
(210, 112, 'thumb_img', ''),
(211, 112, '_thumb_img', 'field_5bbc14d28457a'),
(214, 113, 'thumb_img', ''),
(215, 113, '_thumb_img', 'field_5bbc14d28457a'),
(216, 114, '_edit_lock', '1539068925:3'),
(217, 114, '_edit_last', '3'),
(218, 115, '_wp_attached_file', '2018/10/1-1.jpg'),
(219, 115, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:661;s:6:\"height\";i:771;s:4:\"file\";s:15:\"2018/10/1-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 116, '_wp_attached_file', '2018/10/2.png'),
(221, 116, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:265;s:6:\"height\";i:447;s:4:\"file\";s:13:\"2018/10/2.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 117, '_wp_attached_file', '2018/10/3.png'),
(223, 117, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:847;s:6:\"height\";i:341;s:4:\"file\";s:13:\"2018/10/3.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 114, 'thumb_img', ''),
(227, 114, '_thumb_img', 'field_5bbc14d28457a'),
(228, 118, 'thumb_img', ''),
(229, 118, '_thumb_img', 'field_5bbc14d28457a'),
(230, 119, '_edit_lock', '1539156403:3'),
(231, 119, '_edit_last', '3'),
(234, 119, 'thumb_img', ''),
(235, 119, '_thumb_img', 'field_5bbc14d28457a'),
(236, 120, 'thumb_img', ''),
(237, 120, '_thumb_img', 'field_5bbc14d28457a'),
(238, 121, '_edit_lock', '1539073716:1'),
(239, 121, '_edit_last', '1'),
(242, 121, 'thumb_img', ''),
(243, 121, '_thumb_img', 'field_5bbc14d28457a'),
(244, 122, 'thumb_img', ''),
(245, 122, '_thumb_img', 'field_5bbc14d28457a'),
(248, 123, 'thumb_img', ''),
(249, 123, '_thumb_img', 'field_5bbc14d28457a'),
(252, 124, 'thumb_img', ''),
(253, 124, '_thumb_img', 'field_5bbc14d28457a'),
(256, 125, 'thumb_img', ''),
(257, 125, '_thumb_img', 'field_5bbc14d28457a'),
(260, 126, 'thumb_img', ''),
(261, 126, '_thumb_img', 'field_5bbc14d28457a'),
(262, 128, '_edit_lock', '1539152282:3'),
(263, 128, '_edit_last', '3'),
(264, 129, '_wp_attached_file', '2018/10/1.png'),
(265, 129, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:630;s:4:\"file\";s:13:\"2018/10/1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 130, '_wp_attached_file', '2018/10/a2.png'),
(267, 130, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:363;s:6:\"height\";i:633;s:4:\"file\";s:14:\"2018/10/a2.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 131, '_wp_attached_file', '2018/10/a3.png'),
(269, 131, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:634;s:4:\"file\";s:14:\"2018/10/a3.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 132, '_wp_attached_file', '2018/10/a4.png'),
(271, 132, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:634;s:4:\"file\";s:14:\"2018/10/a4.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 128, 'thumb_img', ''),
(275, 128, '_thumb_img', 'field_5bbc14d28457a'),
(276, 133, 'thumb_img', ''),
(277, 133, '_thumb_img', 'field_5bbc14d28457a'),
(278, 134, '_edit_lock', '1539152779:3'),
(279, 134, '_edit_last', '3'),
(280, 135, '_wp_attached_file', '2018/10/a1.png'),
(281, 135, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:365;s:6:\"height\";i:637;s:4:\"file\";s:14:\"2018/10/a1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 136, '_wp_attached_file', '2018/10/a2-1.png'),
(283, 136, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:289;s:6:\"height\";i:506;s:4:\"file\";s:16:\"2018/10/a2-1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 137, '_wp_attached_file', '2018/10/a3.jpg'),
(285, 137, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:270;s:6:\"height\";i:478;s:4:\"file\";s:14:\"2018/10/a3.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 138, '_wp_attached_file', '2018/10/a5.jpg'),
(287, 138, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:634;s:4:\"file\";s:14:\"2018/10/a5.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 134, 'thumb_img', ''),
(291, 134, '_thumb_img', 'field_5bbc14d28457a'),
(292, 139, 'thumb_img', ''),
(293, 139, '_thumb_img', 'field_5bbc14d28457a'),
(294, 140, '_edit_lock', '1539153200:3'),
(295, 140, '_edit_last', '3'),
(296, 141, '_wp_attached_file', '2018/10/a1.jpg'),
(297, 141, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:634;s:4:\"file\";s:14:\"2018/10/a1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 142, '_wp_attached_file', '2018/10/a2.jpg'),
(299, 142, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:631;s:4:\"file\";s:14:\"2018/10/a2.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 143, '_wp_attached_file', '2018/10/a3-1.jpg'),
(301, 143, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:639;s:4:\"file\";s:16:\"2018/10/a3-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 140, 'thumb_img', ''),
(305, 140, '_thumb_img', 'field_5bbc14d28457a'),
(306, 144, 'thumb_img', ''),
(307, 144, '_thumb_img', 'field_5bbc14d28457a'),
(310, 145, 'thumb_img', ''),
(311, 145, '_thumb_img', 'field_5bbc14d28457a'),
(312, 146, '_edit_lock', '1539153299:3'),
(313, 146, '_edit_last', '3'),
(314, 147, '_wp_attached_file', '2018/10/a1-1.jpg'),
(315, 147, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:358;s:6:\"height\";i:631;s:4:\"file\";s:16:\"2018/10/a1-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 148, '_wp_attached_file', '2018/10/a2-1.jpg'),
(317, 148, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:358;s:6:\"height\";i:631;s:4:\"file\";s:16:\"2018/10/a2-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 146, 'thumb_img', ''),
(321, 146, '_thumb_img', 'field_5bbc14d28457a'),
(322, 149, 'thumb_img', ''),
(323, 149, '_thumb_img', 'field_5bbc14d28457a'),
(324, 150, '_edit_lock', '1539153577:3'),
(325, 150, '_edit_last', '3'),
(326, 151, '_wp_attached_file', '2018/10/a1-2.jpg'),
(327, 151, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:631;s:4:\"file\";s:16:\"2018/10/a1-2.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 152, '_wp_attached_file', '2018/10/a2-2.png'),
(329, 152, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:361;s:6:\"height\";i:630;s:4:\"file\";s:16:\"2018/10/a2-2.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 150, 'thumb_img', ''),
(333, 150, '_thumb_img', 'field_5bbc14d28457a'),
(334, 153, 'thumb_img', ''),
(335, 153, '_thumb_img', 'field_5bbc14d28457a'),
(338, 154, 'thumb_img', ''),
(339, 154, '_thumb_img', 'field_5bbc14d28457a'),
(340, 155, '_edit_lock', '1539154153:3'),
(341, 155, '_edit_last', '3'),
(342, 156, '_wp_attached_file', '2018/10/a1-3.jpg'),
(343, 156, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:365;s:6:\"height\";i:637;s:4:\"file\";s:16:\"2018/10/a1-3.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 157, '_wp_attached_file', '2018/10/a2-3.png'),
(345, 157, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:634;s:4:\"file\";s:16:\"2018/10/a2-3.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 155, 'thumb_img', ''),
(349, 155, '_thumb_img', 'field_5bbc14d28457a'),
(350, 158, 'thumb_img', ''),
(351, 158, '_thumb_img', 'field_5bbc14d28457a'),
(352, 159, '_edit_lock', '1539154397:3'),
(353, 159, '_edit_last', '3'),
(354, 160, '_wp_attached_file', '2018/10/a1-4.jpg'),
(355, 160, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:365;s:6:\"height\";i:637;s:4:\"file\";s:16:\"2018/10/a1-4.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 161, '_wp_attached_file', '2018/10/a2-2.jpg'),
(357, 161, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:364;s:6:\"height\";i:634;s:4:\"file\";s:16:\"2018/10/a2-2.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 159, 'thumb_img', ''),
(361, 159, '_thumb_img', 'field_5bbc14d28457a'),
(362, 162, 'thumb_img', ''),
(363, 162, '_thumb_img', 'field_5bbc14d28457a'),
(364, 163, '_edit_lock', '1539154834:3'),
(365, 163, '_edit_last', '3'),
(366, 164, '_wp_attached_file', '2018/10/a1-5.jpg'),
(367, 164, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:633;s:4:\"file\";s:16:\"2018/10/a1-5.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 165, '_wp_attached_file', '2018/10/a2-3.jpg'),
(369, 165, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:356;s:6:\"height\";i:632;s:4:\"file\";s:16:\"2018/10/a2-3.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 166, '_wp_attached_file', '2018/10/a3-1.png'),
(371, 166, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:360;s:6:\"height\";i:636;s:4:\"file\";s:16:\"2018/10/a3-1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 163, 'thumb_img', ''),
(375, 163, '_thumb_img', 'field_5bbc14d28457a'),
(376, 167, 'thumb_img', ''),
(377, 167, '_thumb_img', 'field_5bbc14d28457a'),
(378, 168, '_edit_lock', '1539155387:3'),
(379, 168, '_edit_last', '3'),
(380, 169, '_wp_attached_file', '2018/10/a1-6.jpg'),
(381, 169, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:635;s:4:\"file\";s:16:\"2018/10/a1-6.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 170, '_wp_attached_file', '2018/10/a2-4.jpg'),
(383, 170, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:356;s:6:\"height\";i:632;s:4:\"file\";s:16:\"2018/10/a2-4.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 171, '_wp_attached_file', '2018/10/a3-2.png'),
(385, 171, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:364;s:6:\"height\";i:633;s:4:\"file\";s:16:\"2018/10/a3-2.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(388, 168, 'thumb_img', ''),
(389, 168, '_thumb_img', 'field_5bbc14d28457a'),
(390, 172, 'thumb_img', ''),
(391, 172, '_thumb_img', 'field_5bbc14d28457a'),
(394, 173, 'thumb_img', ''),
(395, 173, '_thumb_img', 'field_5bbc14d28457a'),
(396, 174, '_edit_lock', '1539319534:3'),
(397, 174, '_edit_last', '3'),
(398, 175, '_wp_attached_file', '2018/10/a1-1.png'),
(399, 175, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:359;s:6:\"height\";i:630;s:4:\"file\";s:16:\"2018/10/a1-1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 176, '_wp_attached_file', '2018/10/a2-4.png'),
(401, 176, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:362;s:6:\"height\";i:632;s:4:\"file\";s:16:\"2018/10/a2-4.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 177, '_wp_attached_file', '2018/10/3-1.png'),
(403, 177, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:267;s:6:\"height\";i:469;s:4:\"file\";s:15:\"2018/10/3-1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 178, '_wp_attached_file', '2018/10/4.png'),
(405, 178, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:361;s:6:\"height\";i:633;s:4:\"file\";s:13:\"2018/10/4.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 174, 'thumb_img', ''),
(409, 174, '_thumb_img', 'field_5bbc14d28457a'),
(410, 179, 'thumb_img', ''),
(411, 179, '_thumb_img', 'field_5bbc14d28457a'),
(412, 180, '_edit_lock', '1539156034:3'),
(413, 180, '_edit_last', '3'),
(416, 180, 'thumb_img', ''),
(417, 180, '_thumb_img', 'field_5bbc14d28457a'),
(418, 181, 'thumb_img', ''),
(419, 181, '_thumb_img', 'field_5bbc14d28457a'),
(422, 183, 'thumb_img', ''),
(423, 183, '_thumb_img', 'field_5bbc14d28457a'),
(426, 184, 'thumb_img', ''),
(427, 184, '_thumb_img', 'field_5bbc14d28457a'),
(428, 185, '_edit_lock', '1539156946:3'),
(429, 185, '_edit_last', '3'),
(432, 185, 'thumb_img', ''),
(433, 185, '_thumb_img', 'field_5bbc14d28457a'),
(434, 186, 'thumb_img', ''),
(435, 186, '_thumb_img', 'field_5bbc14d28457a'),
(436, 187, '_edit_lock', '1539339039:1'),
(437, 187, '_edit_last', '1'),
(474, 187, '_wp_trash_meta_status', 'publish'),
(475, 187, '_wp_trash_meta_time', '1539653604'),
(476, 187, '_wp_desired_post_slug', 'huong-dan-test'),
(477, 95, '_wp_trash_meta_status', 'publish'),
(478, 95, '_wp_trash_meta_time', '1539653644'),
(479, 95, '_wp_desired_post_slug', 'vuon-mat-trang');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf32_unicode_ci NOT NULL,
  `post_title` text COLLATE utf32_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf32_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf32_unicode_ci NOT NULL,
  `pinged` text COLLATE utf32_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf32_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(48, 3, '2018-10-09 02:23:28', '2018-10-09 02:23:28', '<span style=\"font-weight: 400;\">Bước 1: Tại màn hình chính chọn nhiệm vụ.</span>\r\n\r\n[Ảnh 1]\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</span>\r\n\r\n[Ảnh][Ảnh]', 'Hướng dẫn MISSION', '', 'publish', 'open', 'open', '', 'huong-dan-mission', '', '', '2018-10-09 02:23:28', '2018-10-09 02:23:28', '', 0, 'http://yume100.vn/?p=45', 0, 'post', '', 0),
(49, 3, '2018-10-09 02:23:28', '2018-10-09 02:23:28', '<span style=\"font-weight: 400;\">Bước 1: Tại màn hình chính chọn nhiệm vụ.</span>\r\n\r\n[Ảnh 1]\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</span>\r\n\r\n[Ảnh][Ảnh]', 'Hướng dẫn MISSION', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 02:23:28', '2018-10-09 02:23:28', '', 45, 'http://yume100.vn/2018/10/09/45-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thumb image', 'thumb-image', 'publish', 'closed', 'closed', '', 'group_5bbc0ffd9e19b', '', '', '2018-10-09 03:26:15', '2018-10-09 03:26:15', '', 0, 'http://yume100.vn/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(51, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'thumb img', 'thumb_img', 'publish', 'closed', 'closed', '', 'field_5bbc105b34c34', '', '', '2018-10-09 02:20:44', '2018-10-09 02:20:44', '', 41, 'http://yume100.vn/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(52, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5bbc107734c35', '', '', '2018-10-09 02:20:44', '2018-10-09 02:20:44', '', 41, 'http://yume100.vn/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(53, 3, '2018-10-09 02:19:15', '2018-10-09 02:19:15', '<b>Bước 1: </b><span style=\"font-weight: 400;\">Khi bạn đạt rank 5. Tại màn hình chính chọn “</span><b>THỬ THÁCH ĐIỂM</b><span style=\"font-weight: 400;\">”</span>\r\n\r\n[Ảnh 1]\r\n\r\n<b>Bước 2: </b><span style=\"font-weight: 400;\">Click vào</span><b> “THỬ SỨC”</b>\r\n\r\n[Ảnh 2]\r\n\r\n<b>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</b>\r\n\r\n[Ảnh 3]', 'Hướng dẫn thử thách điểm.', '', 'publish', 'open', 'open', '', 'huong-dan-thu-thach-diem', '', '', '2018-10-09 02:19:15', '2018-10-09 02:19:15', '', 0, 'http://yume100.vn/?p=38', 0, 'post', '', 0),
(55, 3, '2018-10-09 02:56:49', '2018-10-09 02:56:49', '<strong>Bước 1</strong>: <span style=\"font-weight: 400;\">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”\r\n\r\n<strong>Bước 2</strong>: <span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”\r\n\r\n<strong>Bước 3</strong>: <span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style=\"font-weight: 400;\">mà bạn muốn chơi.</span>\r\n\r\n&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'publish', 'open', 'open', '', 'huong-dan-vuon-mat-trang', '', '', '2018-10-09 03:08:26', '2018-10-09 03:08:26', '', 0, 'http://yume100.vn/?p=55', 0, 'post', '', 0),
(80, 3, '2018-10-09 02:56:49', '2018-10-09 02:56:49', '<b>Bước 1: </b><span style=\"font-weight: 400;\">Tại màn hình chính chọn</span><b> “Truyện”</b>\r\n\r\n<b>Bước 2: </b><span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span><b> “Vườn mặt trăng”</b>\r\n\r\n<b>Bước 3: </b><span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style=\"font-weight: 400;\">mà bạn muốn chơi. </span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 02:56:49', '2018-10-09 02:56:49', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0),
(81, 3, '2018-10-09 02:57:59', '2018-10-09 02:57:59', 'Chào các bạn ,\r\n\r\nĐể giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.\r\n\r\nPhần I : Lập tài khoản Fuji Game:\r\n\r\nNhững lợi ích khi bạn có tài khoản Fuji Game :\r\n- Lưu trữ dữ liệu trong game của bạn\r\n\r\n- Dễ dàng quản lý số Fcoin của tài khoản\r\n\r\n- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game\r\n\r\nNgoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :\r\n\r\n- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn\r\n\r\n- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn\r\n\r\n&nbsp;\r\n\r\nBước 1: Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản\r\n\r\nBước 2: Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.\r\n\r\nBước 3: Nhập mã bảo vệ.... ...và đánh dấu chọn mục \"Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản\", nhấp chọn nút \"Đăng ký\" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:\r\n\r\nBước 4: Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.\r\n\r\nBước 5: Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!\r\n\r\n&nbsp;\r\n\r\nXong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.\r\n\r\n&nbsp;\r\n\r\nThay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Hướng dẫn đăng ký tài khoản Fuji', '', 'publish', 'open', 'open', '', 'huong-dan-dang-ky-tai-khoan-fuji', '', '', '2018-10-09 02:57:59', '2018-10-09 02:57:59', '', 0, 'http://yume100.vn/?p=81', 0, 'post', '', 0),
(82, 3, '2018-10-09 02:57:59', '2018-10-09 02:57:59', 'Chào các bạn ,\r\n\r\nĐể giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.\r\n\r\nPhần I : Lập tài khoản Fuji Game:\r\n\r\nNhững lợi ích khi bạn có tài khoản Fuji Game :\r\n- Lưu trữ dữ liệu trong game của bạn\r\n\r\n- Dễ dàng quản lý số Fcoin của tài khoản\r\n\r\n- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game\r\n\r\nNgoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :\r\n\r\n- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn\r\n\r\n- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn\r\n\r\n&nbsp;\r\n\r\nBước 1: Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản\r\n\r\nBước 2: Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.\r\n\r\nBước 3: Nhập mã bảo vệ.... ...và đánh dấu chọn mục \"Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản\", nhấp chọn nút \"Đăng ký\" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:\r\n\r\nBước 4: Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.\r\n\r\nBước 5: Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!\r\n\r\n&nbsp;\r\n\r\nXong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.\r\n\r\n&nbsp;\r\n\r\nThay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Hướng dẫn đăng ký tài khoản Fuji', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-10-09 02:57:59', '2018-10-09 02:57:59', '', 81, 'http://yume100.vn/2018/10/09/81-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-10-09 03:01:27', '2018-10-09 03:01:27', '<b>Bước 1: </b><span style=\"font-weight: 400;\">Tại màn hình chính chọn</span><b> “Truyện”</b>\r\n\r\n<b>Bước 2: </b><span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span><b> “Vườn mặt trăng”</b>\r\n\r\n<b>Bước 3: </b><span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style=\"font-weight: 400;\">mà bạn muốn chơi.</span>\r\n\r\n<b>Bước 4: </b><span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style=\"font-weight: 400;\">mà bạn muốn chơi.</span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:01:27', '2018-10-09 03:01:27', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-10-09 03:08:12', '2018-10-09 03:08:12', '<p><strong>Bước 1</strong>: <span style=\"font-weight: 400;\">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”</p>\\n\r\n\r\n<p><strong>Bước 2</strong>: <span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”</p>\r\n\r\n<p><strong>Bước 3</strong>: <span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style=\"font-weight: 400;\">mà bạn muốn chơi.</span></p>\r\n\r\n&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2018-10-09 03:08:12', '2018-10-09 03:08:12', '', 55, 'http://yume100.vn/2018/10/09/55-autosave-v1/', 0, 'revision', '', 0),
(88, 1, '2018-10-09 03:05:10', '2018-10-09 03:05:10', 'Bước 1: <span style=\"font-weight: 400;\">Tại màn hình chính chọn</span> “Truyện”\r\n\r\nBước 2: <span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span> “Vườn sao băng”\r\n\r\nBước 3: <span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span> “Vườn mặt trăng” <span style=\"font-weight: 400;\">mà bạn muốn chơi.</span>\r\n\r\nBước 4: <span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span> “Vườn mặt trăng” <span style=\"font-weight: 400;\">mà bạn muốn chơi.</span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:05:10', '2018-10-09 03:05:10', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-10-09 03:08:26', '2018-10-09 03:08:26', '<p><strong>Bước 1</strong>: <span style=\"font-weight: 400;\">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”</p>\\n\r\n\r\n<p><strong>Bước 2</strong>: <span style=\"font-weight: 400;\">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”</p>\r\n\r\n<p><strong>Bước 3</strong>: <span style=\"font-weight: 400;\">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style=\"font-weight: 400;\">mà bạn muốn chơi.</span></p>\r\n\r\n&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:08:26', '2018-10-09 03:08:26', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-10-09 03:26:43', '2018-10-09 03:26:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-10-09 03:26:43', '2018-10-09 03:26:43', '', 91, 'http://yume100.vn/wp-content/uploads/2018/10/logo.png', 0, 'attachment', 'image/png', 0),
(95, 3, '2018-10-09 03:48:00', '2018-10-09 03:48:00', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”.</strong>\r\n\r\n<img class=\" wp-image-101 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png\" alt=\"\" width=\"132\" height=\"393\" />\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'trash', 'open', 'open', '', 'vuon-mat-trang__trashed', '', '', '2018-10-16 01:34:04', '2018-10-16 01:34:04', '', 0, 'http://yume100.vn/?p=95', 0, 'post', '', 0),
(96, 3, '2018-10-09 03:47:49', '2018-10-09 03:47:49', '', '30742208_1664479413607836_2593000755184124530_n', '', 'inherit', 'open', 'closed', '', '30742208_1664479413607836_2593000755184124530_n', '', '', '2018-10-09 03:47:49', '2018-10-09 03:47:49', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 3, '2018-10-09 03:48:00', '2018-10-09 03:48:00', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:48:00', '2018-10-09 03:48:00', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0),
(98, 3, '2018-10-09 03:51:33', '2018-10-09 03:51:33', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\n\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\n\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\n\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>\n\n<img class=\"size-full wp-image-101 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png\" alt=\"\" width=\"378\" height=\"1126\" />\n\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\n\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2018-10-09 03:51:33', '2018-10-09 03:51:33', '', 95, 'http://yume100.vn/2018/10/09/95-autosave-v1/', 0, 'revision', '', 0),
(99, 3, '2018-10-09 03:49:41', '2018-10-09 03:49:41', '', 'pri_00023_full', '', 'inherit', 'open', 'closed', '', 'pri_00023_full', '', '', '2018-10-09 03:49:41', '2018-10-09 03:49:41', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png', 0, 'attachment', 'image/png', 0),
(100, 3, '2018-10-09 03:50:17', '2018-10-09 03:50:17', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:50:17', '2018-10-09 03:50:17', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0),
(101, 3, '2018-10-09 03:50:56', '2018-10-09 03:50:56', '', 'pri_00137_full', '', 'inherit', 'open', 'closed', '', 'pri_00137_full', '', '', '2018-10-09 03:50:56', '2018-10-09 03:50:56', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png', 0, 'attachment', 'image/png', 0),
(102, 3, '2018-10-09 03:51:47', '2018-10-09 03:51:47', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>\r\n\r\n<img class=\" wp-image-101 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png\" alt=\"\" width=\"132\" height=\"393\" />\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:51:47', '2018-10-09 03:51:47', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-10-09 06:10:55', '2018-10-09 06:10:55', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng” Bước 3: Sau đó bạn chọn vào sự kiện trong “Vườn mặt trăng” mà bạn muốn chơi.</strong>\r\n\r\n<img class=\" wp-image-101 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png\" alt=\"\" width=\"132\" height=\"393\" />\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 06:10:55', '2018-10-09 06:10:55', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-10-09 06:11:38', '2018-10-09 06:11:38', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>\r\n\r\n<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>\r\n\r\n<strong><img class=\"wp-image-99 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png\" alt=\"\" width=\"201\" height=\"452\" /></strong>\r\n\r\n<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”.</strong>\r\n\r\n<img class=\" wp-image-101 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png\" alt=\"\" width=\"132\" height=\"393\" />\r\n\r\n<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.\r\n\r\n<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 06:11:38', '2018-10-09 06:11:38', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0),
(108, 3, '2018-10-09 06:52:04', '2018-10-09 06:52:04', 'Chào các bạn,\r\n\r\n- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất, team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.\r\n\r\n<strong>Phần I :</strong> Lập tài khoản Fuji Game:\r\n\r\nNhững lợi ích khi bạn có tài khoản Fuji Game:\r\n- Lưu trữ dữ liệu trong game của bạn.\r\n\r\n- Dễ dàng quản lý số Fcoin của tài khoản.\r\n\r\n- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.\r\n\r\nNgoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :\r\n\r\n- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.\r\n\r\n- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>\r\n\r\n<img class=\"size-full wp-image-109 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1.jpg\" alt=\"\" width=\"266\" height=\"426\" />\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>\r\n\r\n<img class=\"size-full wp-image-110 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/2.jpg\" alt=\"\" width=\"506\" height=\"377\" />\r\n\r\n<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục \"Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản\", nhấp chọn nút \"Đăng ký\" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:\r\n\r\n<img class=\"size-full wp-image-111 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3.jpg\" alt=\"\" width=\"596\" height=\"302\" />\r\n\r\n<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.\r\n\r\n<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!\r\n\r\n<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>\r\n\r\n<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'publish', 'open', 'open', '', 'huong-dan-dang-ky-tai-khoan', '', '', '2018-10-09 06:55:30', '2018-10-09 06:55:30', '', 0, 'http://yume100.vn/?p=108', 0, 'post', '', 0),
(109, 3, '2018-10-09 06:49:08', '2018-10-09 06:49:08', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-10-09 06:49:08', '2018-10-09 06:49:08', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 3, '2018-10-09 06:50:19', '2018-10-09 06:50:19', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-10-09 06:50:19', '2018-10-09 06:50:19', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 3, '2018-10-09 06:51:06', '2018-10-09 06:51:06', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-10-09 06:51:06', '2018-10-09 06:51:06', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 3, '2018-10-09 06:52:04', '2018-10-09 06:52:04', 'Chào các bạn,\r\n\r\n- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.\r\n\r\n<strong>Phần I :</strong> Lập tài khoản Fuji Game:\r\n\r\nNhững lợi ích khi bạn có tài khoản Fuji Game :\r\n- Lưu trữ dữ liệu trong game của bạn.\r\n\r\n- Dễ dàng quản lý số Fcoin của tài khoản.\r\n\r\n- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.\r\n\r\nNgoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :\r\n\r\n- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.\r\n\r\n- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>\r\n\r\n<img class=\"size-full wp-image-109 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1.jpg\" alt=\"\" width=\"266\" height=\"426\" />\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>\r\n\r\n<img class=\"size-full wp-image-110 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/2.jpg\" alt=\"\" width=\"506\" height=\"377\" />\r\n\r\n<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục \"Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản\", nhấp chọn nút \"Đăng ký\" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:\r\n\r\n<img class=\"size-full wp-image-111 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3.jpg\" alt=\"\" width=\"596\" height=\"302\" />\r\n\r\n<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.\r\n\r\n<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!\r\n\r\n<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>\r\n\r\n<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-10-09 06:52:04', '2018-10-09 06:52:04', '', 108, 'http://yume100.vn/2018/10/09/108-revision-v1/', 0, 'revision', '', 0),
(113, 3, '2018-10-09 06:55:30', '2018-10-09 06:55:30', 'Chào các bạn,\r\n\r\n- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất, team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.\r\n\r\n<strong>Phần I :</strong> Lập tài khoản Fuji Game:\r\n\r\nNhững lợi ích khi bạn có tài khoản Fuji Game:\r\n- Lưu trữ dữ liệu trong game của bạn.\r\n\r\n- Dễ dàng quản lý số Fcoin của tài khoản.\r\n\r\n- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.\r\n\r\nNgoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :\r\n\r\n- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.\r\n\r\n- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>\r\n\r\n<img class=\"size-full wp-image-109 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1.jpg\" alt=\"\" width=\"266\" height=\"426\" />\r\n\r\n<span style=\"font-weight: 400;\"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>\r\n\r\n<img class=\"size-full wp-image-110 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/2.jpg\" alt=\"\" width=\"506\" height=\"377\" />\r\n\r\n<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục \"Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản\", nhấp chọn nút \"Đăng ký\" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:\r\n\r\n<img class=\"size-full wp-image-111 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3.jpg\" alt=\"\" width=\"596\" height=\"302\" />\r\n\r\n<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.\r\n\r\n<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!\r\n\r\n<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>\r\n\r\n<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-10-09 06:55:30', '2018-10-09 06:55:30', '', 108, 'http://yume100.vn/2018/10/09/108-revision-v1/', 0, 'revision', '', 0),
(114, 3, '2018-10-09 07:04:30', '2018-10-09 07:04:30', '- Trong <strong>Yume100</strong>, Thạch Anh là đơn vị tài nguyên trung gian trong các giao dịch. Sở hữu Thạch Anh cho phép bạn có thể dễ dàng Hồi phục thể lực, Quay Gacha để nhận những hoàng tử cấp hiếm cao... để sở hữu Thạch Anh các bạn có thể lựa chọn một trong các phương án mà FujiGame cung cấp.\r\n\r\n<img class=\"wp-image-115 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg\" alt=\"\" width=\"402\" height=\"469\" />\r\n\r\n<span style=\"font-weight: 400;\">- Thanh toán qua Appstore / Google Play.</span>\r\n\r\n<span style=\"font-weight: 400;\">- </span><span style=\"font-weight: 400;\">Thanh toán bằng </span><b>Fcoin.</b>\r\n\r\nTrong đó, việc thanh toán bằng <strong>Fcoin</strong> vô cùng dễ dàng, đồng thời giúp giúp các bạn dễ dàng quản lý số dư tài khoản của mình.\r\n<p style=\"text-align: center;\"><em>\"Fcoin là đơn vị tài nguyên trung gian giúp bạn sử dụng và trải nghiệm tất cả các sản phẩm &amp; dịch vụ mà FujiGame cung cấp!\"</em></p>\r\n<em> </em>Để có Fcoin, các bạn có thể thực hiện theo 1 trong các cách sau:\r\n<h3><strong>1. FCOIN MIỄN PHÍ</strong></h3>\r\nTruy cập và theo dõi các hoạt động, sự kiện của <strong>FujiGame</strong> trên fanpage chính thức <a href=\"https://www.facebook.com/fujigame.vn\">https://www.facebook.com/fujigame.vn</a>\r\n<h3><strong>2. NẠP FCOIN</strong></h3>\r\n<em><strong>Bước 1:</strong> </em>Truy cập <a href=\"https://fujigame.vn/\">https://fujigame.vn</a>\r\n\r\n<em><strong>Bước 2:</strong> </em>Đăng nhập bằng tài khoản của bạn.\r\n\r\n<img class=\"size-full wp-image-116 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/2.png\" alt=\"\" width=\"265\" height=\"447\" />\r\n\r\n<em><strong>Bước 3:</strong> </em>Lựa chọn một trong các hình thức nạp tiền phù hợp.\r\n\r\n<strong>- Nạp tiền qua ngân hàng.</strong>\r\n\r\n<strong>- Nạp tiền qua tin nhắn SMS.</strong>\r\n\r\n<strong>- Nạp tiền qua thẻ cào Appota Card.</strong>\r\n\r\n<img class=\"alignnone size-full wp-image-117\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3.png\" alt=\"\" width=\"847\" height=\"341\" />\r\n<p style=\"text-align: center;\"><strong>Chúc các bạn chơi game vui vẻ!</strong></p>\r\n<p style=\"text-align: right;\"></p>\r\n<strong> </strong>', 'Hướng dẫn nạp tiền.', '', 'publish', 'open', 'open', '', 'huong-dan-nap-tien', '', '', '2018-10-09 07:04:30', '2018-10-09 07:04:30', '', 0, 'http://yume100.vn/?p=114', 0, 'post', '', 0),
(115, 3, '2018-10-09 06:59:28', '2018-10-09 06:59:28', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-10-09 06:59:28', '2018-10-09 06:59:28', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 3, '2018-10-09 07:02:26', '2018-10-09 07:02:26', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-10-09 07:02:26', '2018-10-09 07:02:26', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/2.png', 0, 'attachment', 'image/png', 0),
(117, 3, '2018-10-09 07:03:35', '2018-10-09 07:03:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-10-09 07:03:35', '2018-10-09 07:03:35', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/3.png', 0, 'attachment', 'image/png', 0),
(118, 3, '2018-10-09 07:04:30', '2018-10-09 07:04:30', '- Trong <strong>Yume100</strong>, Thạch Anh là đơn vị tài nguyên trung gian trong các giao dịch. Sở hữu Thạch Anh cho phép bạn có thể dễ dàng Hồi phục thể lực, Quay Gacha để nhận những hoàng tử cấp hiếm cao... để sở hữu Thạch Anh các bạn có thể lựa chọn một trong các phương án mà FujiGame cung cấp.\r\n\r\n<img class=\"wp-image-115 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg\" alt=\"\" width=\"402\" height=\"469\" />\r\n\r\n<span style=\"font-weight: 400;\">- Thanh toán qua Appstore / Google Play.</span>\r\n\r\n<span style=\"font-weight: 400;\">- </span><span style=\"font-weight: 400;\">Thanh toán bằng </span><b>Fcoin.</b>\r\n\r\nTrong đó, việc thanh toán bằng <strong>Fcoin</strong> vô cùng dễ dàng, đồng thời giúp giúp các bạn dễ dàng quản lý số dư tài khoản của mình.\r\n<p style=\"text-align: center;\"><em>\"Fcoin là đơn vị tài nguyên trung gian giúp bạn sử dụng và trải nghiệm tất cả các sản phẩm &amp; dịch vụ mà FujiGame cung cấp!\"</em></p>\r\n<em> </em>Để có Fcoin, các bạn có thể thực hiện theo 1 trong các cách sau:\r\n<h3><strong>1. FCOIN MIỄN PHÍ</strong></h3>\r\nTruy cập và theo dõi các hoạt động, sự kiện của <strong>FujiGame</strong> trên fanpage chính thức <a href=\"https://www.facebook.com/fujigame.vn\">https://www.facebook.com/fujigame.vn</a>\r\n<h3><strong>2. NẠP FCOIN</strong></h3>\r\n<em><strong>Bước 1:</strong> </em>Truy cập <a href=\"https://fujigame.vn/\">https://fujigame.vn</a>\r\n\r\n<em><strong>Bước 2:</strong> </em>Đăng nhập bằng tài khoản của bạn.\r\n\r\n<img class=\"size-full wp-image-116 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/2.png\" alt=\"\" width=\"265\" height=\"447\" />\r\n\r\n<em><strong>Bước 3:</strong> </em>Lựa chọn một trong các hình thức nạp tiền phù hợp.\r\n\r\n<strong>- Nạp tiền qua ngân hàng.</strong>\r\n\r\n<strong>- Nạp tiền qua tin nhắn SMS.</strong>\r\n\r\n<strong>- Nạp tiền qua thẻ cào Appota Card.</strong>\r\n\r\n<img class=\"alignnone size-full wp-image-117\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3.png\" alt=\"\" width=\"847\" height=\"341\" />\r\n<p style=\"text-align: center;\"><strong>Chúc các bạn chơi game vui vẻ!</strong></p>\r\n<p style=\"text-align: right;\"></p>\r\n<strong> </strong>', 'Hướng dẫn nạp tiền.', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-10-09 07:04:30', '2018-10-09 07:04:30', '', 114, 'http://yume100.vn/2018/10/09/114-revision-v1/', 0, 'revision', '', 0),
(119, 3, '2018-10-09 07:11:52', '2018-10-09 07:11:52', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n&nbsp;\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'publish', 'open', 'open', '', 'huong-dan-lien-ket-tai-khoan', '', '', '2018-10-10 07:22:21', '2018-10-10 07:22:21', '', 0, 'http://yume100.vn/?p=119', 0, 'post', '', 0),
(120, 3, '2018-10-09 07:11:52', '2018-10-09 07:11:52', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh1]</span>\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 07:11:52', '2018-10-09 07:11:52', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0),
(124, 3, '2018-10-09 10:29:25', '2018-10-09 10:29:25', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n<img class=\"alignnone size-full wp-image-96 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg\" alt=\"\" width=\"410\" height=\"520\" />\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:29:25', '2018-10-09 10:29:25', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0),
(125, 3, '2018-10-09 10:30:11', '2018-10-09 10:30:11', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n<img class=\"size-full wp-image-96 alignleft\" src=\"http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg\" alt=\"\" width=\"410\" height=\"520\" />\r\n\r\n&nbsp;\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:30:11', '2018-10-09 10:30:11', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0),
(126, 3, '2018-10-09 10:30:31', '2018-10-09 10:30:31', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n<img class=\"size-full wp-image-96 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg\" alt=\"\" width=\"410\" height=\"520\" />\r\n\r\n&nbsp;\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:30:31', '2018-10-09 10:30:31', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0),
(128, 3, '2018-10-10 06:16:37', '2018-10-10 06:16:37', '<b><i>- </i></b>Từ Màn hình chính, chọn nút Gacha để mở giao diện quay gacha.\r\n\r\n<img class=\"size-full wp-image-129 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1.png\" alt=\"\" width=\"359\" height=\"630\" />\r\n\r\nCó 3 loại Gacha:\r\n- Gacha Hoàng Tử: Quay bằng Thạch Anh, 1 lần 5 đá. 10 lần 50 đá, chắc chắn sẽ đc 1 hoàng tử 4 sao, khi quay gacha sẽ nhận được các hoàng tử, các loại tiên và goldie.\r\n\r\n<img class=\"size-full wp-image-130 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2.png\" alt=\"\" width=\"363\" height=\"633\" />\r\n\r\n- Gacha Sự kiện: Gacha này chỉ mở theo sự kiện, trong các sự kiện đặc biệt có Gacha đặc biệt sẽ mở ở phần này. Khi quay gacha này sẽ nhận được Hoàng tử sự kiện, các loại tiên và goldie…\r\n\r\n<img class=\"size-full wp-image-131 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n\r\n- Gacha Bạn bè: Sử dụng xu bạn bè để quay Gacha, quay gacha loại này sẽ nhận được rất nhiều Goldie và các loại tiên, cùng với các hoàng tử 2*.\r\n\r\n<img class=\"size-full wp-image-132 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a4.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n<h3 style=\"text-align: center;\"><strong> Chúc các bạn chơi game vui vẻ!</strong></h3>', 'Hướng dẫn quay gacha', '', 'publish', 'open', 'open', '', 'huong-dan-quay-gacha', '', '', '2018-10-10 06:16:37', '2018-10-10 06:16:37', '', 0, 'http://yume100.vn/?p=128', 0, 'post', '', 0),
(129, 3, '2018-10-10 06:13:51', '2018-10-10 06:13:51', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2018-10-10 06:13:51', '2018-10-10 06:13:51', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/1.png', 0, 'attachment', 'image/png', 0),
(130, 3, '2018-10-10 06:14:41', '2018-10-10 06:14:41', '\r\n', 'a2', '', 'inherit', 'open', 'closed', '', 'a2', '', '', '2018-10-10 06:14:41', '2018-10-10 06:14:41', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a2.png', 0, 'attachment', 'image/png', 0),
(131, 3, '2018-10-10 06:15:22', '2018-10-10 06:15:22', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3', '', '', '2018-10-10 06:15:22', '2018-10-10 06:15:22', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a3.png', 0, 'attachment', 'image/png', 0),
(132, 3, '2018-10-10 06:15:54', '2018-10-10 06:15:54', '', 'a4', '', 'inherit', 'open', 'closed', '', 'a4', '', '', '2018-10-10 06:15:54', '2018-10-10 06:15:54', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a4.png', 0, 'attachment', 'image/png', 0),
(133, 3, '2018-10-10 06:16:37', '2018-10-10 06:16:37', '<b><i>- </i></b>Từ Màn hình chính, chọn nút Gacha để mở giao diện quay gacha.\r\n\r\n<img class=\"size-full wp-image-129 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/1.png\" alt=\"\" width=\"359\" height=\"630\" />\r\n\r\nCó 3 loại Gacha:\r\n- Gacha Hoàng Tử: Quay bằng Thạch Anh, 1 lần 5 đá. 10 lần 50 đá, chắc chắn sẽ đc 1 hoàng tử 4 sao, khi quay gacha sẽ nhận được các hoàng tử, các loại tiên và goldie.\r\n\r\n<img class=\"size-full wp-image-130 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2.png\" alt=\"\" width=\"363\" height=\"633\" />\r\n\r\n- Gacha Sự kiện: Gacha này chỉ mở theo sự kiện, trong các sự kiện đặc biệt có Gacha đặc biệt sẽ mở ở phần này. Khi quay gacha này sẽ nhận được Hoàng tử sự kiện, các loại tiên và goldie…\r\n\r\n<img class=\"size-full wp-image-131 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n\r\n- Gacha Bạn bè: Sử dụng xu bạn bè để quay Gacha, quay gacha loại này sẽ nhận được rất nhiều Goldie và các loại tiên, cùng với các hoàng tử 2*.\r\n\r\n<img class=\"size-full wp-image-132 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a4.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n<h3 style=\"text-align: center;\"><strong> Chúc các bạn chơi game vui vẻ!</strong></h3>', 'Hướng dẫn quay gacha', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-10-10 06:16:37', '2018-10-10 06:16:37', '', 128, 'http://yume100.vn/2018/10/10/128-revision-v1/', 0, 'revision', '', 0),
(134, 3, '2018-10-10 06:24:33', '2018-10-10 06:24:33', '<h3 style=\"text-align: center;\"><em><strong>Bước 1:</strong> </em>Tại màn hình chính click vào “Cửa hàng”</h3>\r\n<img class=\"size-full wp-image-135 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1.png\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><em><strong>Bước 2:</strong></em> chọn vật phẩm mà bạn muốn mua</h3>\r\n<img class=\" wp-image-136 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-1.png\" alt=\"\" width=\"353\" height=\"618\" />\r\n<h3 style=\"text-align: center;\"><em><strong>Bước 3: </strong></em>Chọn số lượng cần mua sau có click vào “<strong>MUA HÀNG</strong>”</h3>\r\n<img class=\" wp-image-137 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3.jpg\" alt=\"\" width=\"355\" height=\"629\" />\r\n\r\n<strong>Lưu ý: </strong>Các bạn có thể vào phần xem video để nhận thưởng “<strong>THẠCH ANH</strong>” hoặc “<strong>VÀNG</strong>”\r\n\r\n<img class=\"size-full wp-image-138 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a5.jpg\" alt=\"\" width=\"359\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cash Shop”', '', 'publish', 'open', 'open', '', 'huong-dan-cash-shop', '', '', '2018-10-10 06:24:33', '2018-10-10 06:24:33', '', 0, 'http://yume100.vn/?p=134', 0, 'post', '', 0),
(135, 3, '2018-10-10 06:19:08', '2018-10-10 06:19:08', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2018-10-10 06:19:08', '2018-10-10 06:19:08', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a1.png', 0, 'attachment', 'image/png', 0),
(136, 3, '2018-10-10 06:20:46', '2018-10-10 06:20:46', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-2', '', '', '2018-10-10 06:20:46', '2018-10-10 06:20:46', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a2-1.png', 0, 'attachment', 'image/png', 0),
(137, 3, '2018-10-10 06:22:24', '2018-10-10 06:22:24', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-2', '', '', '2018-10-10 06:22:24', '2018-10-10 06:22:24', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a3.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 3, '2018-10-10 06:24:02', '2018-10-10 06:24:02', '', 'a5', '', 'inherit', 'open', 'closed', '', 'a5', '', '', '2018-10-10 06:24:02', '2018-10-10 06:24:02', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a5.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 3, '2018-10-10 06:24:33', '2018-10-10 06:24:33', '<h3 style=\"text-align: center;\"><em><strong>Bước 1:</strong> </em>Tại màn hình chính click vào “Cửa hàng”</h3>\r\n<img class=\"size-full wp-image-135 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1.png\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><em><strong>Bước 2:</strong></em> chọn vật phẩm mà bạn muốn mua</h3>\r\n<img class=\" wp-image-136 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-1.png\" alt=\"\" width=\"353\" height=\"618\" />\r\n<h3 style=\"text-align: center;\"><em><strong>Bước 3: </strong></em>Chọn số lượng cần mua sau có click vào “<strong>MUA HÀNG</strong>”</h3>\r\n<img class=\" wp-image-137 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3.jpg\" alt=\"\" width=\"355\" height=\"629\" />\r\n\r\n<strong>Lưu ý: </strong>Các bạn có thể vào phần xem video để nhận thưởng “<strong>THẠCH ANH</strong>” hoặc “<strong>VÀNG</strong>”\r\n\r\n<img class=\"size-full wp-image-138 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a5.jpg\" alt=\"\" width=\"359\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cash Shop”', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-10-10 06:24:33', '2018-10-10 06:24:33', '', 134, 'http://yume100.vn/2018/10/10/134-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 3, '2018-10-10 06:31:14', '2018-10-10 06:31:14', '<h3 style=\"text-align: center;\"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></h3>\r\n<img class=\"size-full wp-image-141 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1.jpg\" alt=\"\" width=\"359\" height=\"634\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: Click vào “THỬ SỨC”</strong></h3>\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2.jpg\" alt=\"\" width=\"360\" height=\"631\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></h3>\r\n<img class=\"size-full wp-image-143 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg\" alt=\"\" width=\"360\" height=\"639\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'publish', 'open', 'open', '', 'huong-dan-thu-thach-diem-2', '', '', '2018-10-10 06:32:08', '2018-10-10 06:32:08', '', 0, 'http://yume100.vn/?p=140', 0, 'post', '', 0),
(141, 3, '2018-10-10 06:28:58', '2018-10-10 06:28:58', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-2', '', '', '2018-10-10 06:28:58', '2018-10-10 06:28:58', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a1.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 3, '2018-10-10 06:29:40', '2018-10-10 06:29:40', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-3', '', '', '2018-10-10 06:29:40', '2018-10-10 06:29:40', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a2.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 3, '2018-10-10 06:30:10', '2018-10-10 06:30:10', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-3', '', '', '2018-10-10 06:30:10', '2018-10-10 06:30:10', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 3, '2018-10-10 06:31:14', '2018-10-10 06:31:14', '<p style=\"text-align: center;\"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></p>\r\n<img class=\"size-full wp-image-141 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1.jpg\" alt=\"\" width=\"359\" height=\"634\" />\r\n<p style=\"text-align: center;\"><strong>Bước 2: Click vào “THỬ SỨC”</strong></p>\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2.jpg\" alt=\"\" width=\"360\" height=\"631\" />\r\n<p style=\"text-align: center;\"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></p>\r\n<img class=\"size-full wp-image-143 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg\" alt=\"\" width=\"360\" height=\"639\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-10-10 06:31:14', '2018-10-10 06:31:14', '', 140, 'http://yume100.vn/2018/10/10/140-revision-v1/', 0, 'revision', '', 0),
(145, 3, '2018-10-10 06:32:08', '2018-10-10 06:32:08', '<h3 style=\"text-align: center;\"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></h3>\r\n<img class=\"size-full wp-image-141 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1.jpg\" alt=\"\" width=\"359\" height=\"634\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: Click vào “THỬ SỨC”</strong></h3>\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2.jpg\" alt=\"\" width=\"360\" height=\"631\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></h3>\r\n<img class=\"size-full wp-image-143 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg\" alt=\"\" width=\"360\" height=\"639\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-10-10 06:32:08', '2018-10-10 06:32:08', '', 140, 'http://yume100.vn/2018/10/10/140-revision-v1/', 0, 'revision', '', 0),
(146, 3, '2018-10-10 06:36:15', '2018-10-10 06:36:15', '<h3 style=\"text-align: center;\">Bước 1: Tại màn hình chính chọn nhiệm vụ.</h3>\r\n<img class=\"size-full wp-image-147 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg\" alt=\"\" width=\"358\" height=\"631\" />\r\n<h4 style=\"text-align: center;\">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</h4>\r\n<img class=\"size-full wp-image-148 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg\" alt=\"\" width=\"358\" height=\"631\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn MISSION', '', 'publish', 'open', 'open', '', 'huong-dan-mission-2', '', '', '2018-10-10 06:36:15', '2018-10-10 06:36:15', '', 0, 'http://yume100.vn/?p=146', 0, 'post', '', 0),
(147, 3, '2018-10-10 06:33:52', '2018-10-10 06:33:52', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-3', '', '', '2018-10-10 06:33:52', '2018-10-10 06:33:52', '', 146, 'http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 3, '2018-10-10 06:35:21', '2018-10-10 06:35:21', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-4', '', '', '2018-10-10 06:35:21', '2018-10-10 06:35:21', '', 146, 'http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 3, '2018-10-10 06:36:15', '2018-10-10 06:36:15', '<h3 style=\"text-align: center;\">Bước 1: Tại màn hình chính chọn nhiệm vụ.</h3>\r\n<img class=\"size-full wp-image-147 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg\" alt=\"\" width=\"358\" height=\"631\" />\r\n<h4 style=\"text-align: center;\">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</h4>\r\n<img class=\"size-full wp-image-148 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg\" alt=\"\" width=\"358\" height=\"631\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn MISSION', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-10-10 06:36:15', '2018-10-10 06:36:15', '', 146, 'http://yume100.vn/2018/10/10/146-revision-v1/', 0, 'revision', '', 0),
(150, 3, '2018-10-10 06:40:33', '2018-10-10 06:40:33', '<h4 style=\"text-align: center;\"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h4>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-151 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg\" alt=\"\" width=\"359\" height=\"631\" /></p>\r\n\r\n<h4 style=\"text-align: center;\"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h4>\r\n<img class=\"wp-image-152 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-2.png\" alt=\"\" width=\"361\" height=\"630\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'publish', 'open', 'open', '', 'huong-dan-tiec-chao-mung', '', '', '2018-10-10 06:41:02', '2018-10-10 06:41:02', '', 0, 'http://yume100.vn/?p=150', 0, 'post', '', 0),
(151, 3, '2018-10-10 06:38:32', '2018-10-10 06:38:32', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-4', '', '', '2018-10-10 06:38:32', '2018-10-10 06:38:32', '', 150, 'http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 3, '2018-10-10 06:39:11', '2018-10-10 06:39:11', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-5', '', '', '2018-10-10 06:39:11', '2018-10-10 06:39:11', '', 150, 'http://yume100.vn/wp-content/uploads/2018/10/a2-2.png', 0, 'attachment', 'image/png', 0),
(153, 3, '2018-10-10 06:40:33', '2018-10-10 06:40:33', '<h3 style=\"text-align: center;\"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h3>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-151 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg\" alt=\"\" width=\"359\" height=\"631\" /></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h3>\r\n<img class=\"wp-image-152 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-2.png\" alt=\"\" width=\"361\" height=\"630\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2018-10-10 06:40:33', '2018-10-10 06:40:33', '', 150, 'http://yume100.vn/2018/10/10/150-revision-v1/', 0, 'revision', '', 0),
(154, 3, '2018-10-10 06:41:02', '2018-10-10 06:41:02', '<h4 style=\"text-align: center;\"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h4>\r\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-151 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg\" alt=\"\" width=\"359\" height=\"631\" /></p>\r\n\r\n<h4 style=\"text-align: center;\"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h4>\r\n<img class=\"wp-image-152 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-2.png\" alt=\"\" width=\"361\" height=\"630\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2018-10-10 06:41:02', '2018-10-10 06:41:02', '', 150, 'http://yume100.vn/2018/10/10/150-revision-v1/', 0, 'revision', '', 0),
(155, 3, '2018-10-10 06:48:00', '2018-10-10 06:48:00', '<h3 style=\"text-align: center;\"><strong><em>Bước 1:</em> </strong>Khi đạt Rank 5 tại màn hình chính chọn<strong> “Cộng đồng”</strong></h3>\r\n<img class=\"size-full wp-image-156 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><strong><em>Bước 2:</em> </strong>Tại màn hình này. Bạn có thể tìm hiểu về cộng đồng là gì? Cũng như cách tham gia hay tạo 1 cộng đồng hoặc mời bạn bè vào cộng đồng của mình.</h3>\r\n<img class=\"size-full wp-image-157 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-3.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cộng đồng”', '', 'publish', 'open', 'open', '', 'huong-dan-cong-dong', '', '', '2018-10-10 06:48:00', '2018-10-10 06:48:00', '', 0, 'http://yume100.vn/?p=155', 0, 'post', '', 0),
(156, 3, '2018-10-10 06:45:53', '2018-10-10 06:45:53', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-5', '', '', '2018-10-10 06:45:53', '2018-10-10 06:45:53', '', 155, 'http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 3, '2018-10-10 06:46:51', '2018-10-10 06:46:51', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-6', '', '', '2018-10-10 06:46:51', '2018-10-10 06:46:51', '', 155, 'http://yume100.vn/wp-content/uploads/2018/10/a2-3.png', 0, 'attachment', 'image/png', 0),
(158, 3, '2018-10-10 06:48:00', '2018-10-10 06:48:00', '<h3 style=\"text-align: center;\"><strong><em>Bước 1:</em> </strong>Khi đạt Rank 5 tại màn hình chính chọn<strong> “Cộng đồng”</strong></h3>\r\n<img class=\"size-full wp-image-156 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><strong><em>Bước 2:</em> </strong>Tại màn hình này. Bạn có thể tìm hiểu về cộng đồng là gì? Cũng như cách tham gia hay tạo 1 cộng đồng hoặc mời bạn bè vào cộng đồng của mình.</h3>\r\n<img class=\"size-full wp-image-157 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-3.png\" alt=\"\" width=\"360\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cộng đồng”', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2018-10-10 06:48:00', '2018-10-10 06:48:00', '', 155, 'http://yume100.vn/2018/10/10/155-revision-v1/', 0, 'revision', '', 0),
(159, 3, '2018-10-10 06:51:41', '2018-10-10 06:51:41', '<h3 style=\"text-align: center;\"><strong>Bước 1: </strong>sau khi nhận thưởng các bạn về màn hình chính và chọn hộp quà.</h3>\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: </strong>Tại đây sẽ xuất hiện những phần thưởng mà bạn được nhận. Click vào ô nhận tất cả để nhận.</h3>\r\n<img class=\"size-full wp-image-161 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg\" alt=\"\" width=\"364\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Nhận quà”', '', 'publish', 'open', 'open', '', 'huong-dan-nhan-qua', '', '', '2018-10-10 06:51:41', '2018-10-10 06:51:41', '', 0, 'http://yume100.vn/?p=159', 0, 'post', '', 0),
(160, 3, '2018-10-10 06:50:29', '2018-10-10 06:50:29', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-6', '', '', '2018-10-10 06:50:29', '2018-10-10 06:50:29', '', 159, 'http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 3, '2018-10-10 06:51:03', '2018-10-10 06:51:03', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-7', '', '', '2018-10-10 06:51:03', '2018-10-10 06:51:03', '', 159, 'http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 3, '2018-10-10 06:51:41', '2018-10-10 06:51:41', '<h3 style=\"text-align: center;\"><strong>Bước 1: </strong>sau khi nhận thưởng các bạn về màn hình chính và chọn hộp quà.</h3>\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: </strong>Tại đây sẽ xuất hiện những phần thưởng mà bạn được nhận. Click vào ô nhận tất cả để nhận.</h3>\r\n<img class=\"size-full wp-image-161 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg\" alt=\"\" width=\"364\" height=\"634\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Nhận quà”', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2018-10-10 06:51:41', '2018-10-10 06:51:41', '', 159, 'http://yume100.vn/2018/10/10/159-revision-v1/', 0, 'revision', '', 0),
(163, 3, '2018-10-10 06:58:45', '2018-10-10 06:58:45', '<p style=\"text-align: center;\"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></p>\r\n<img class=\"size-full wp-image-164 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg\" alt=\"\" width=\"360\" height=\"633\" />\r\n<p style=\"text-align: center;\"><strong>Bước 2: Tại bản đồ thế giới chọn vào Vương quốc.</strong></p>\r\n<img class=\"size-full wp-image-165 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg\" alt=\"\" width=\"356\" height=\"632\" />\r\n<p style=\"text-align: center;\"><strong>Bước 3: Sau đó cùng các hoàng tử vượt ải nhé các bạn !!!!!</strong></p>\r\n<p style=\"text-align: center;\"><strong>CHÚ Ý: </strong>Khi vượt qua các ải của vương quốc đầu tiên thì  các vương quốc sau mới được mở.</p>\r\n<img class=\"size-full wp-image-166 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-1.png\" alt=\"\" width=\"360\" height=\"636\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vượt ải (Story)”', '', 'publish', 'open', 'open', '', 'huong-dan-vuot-ai-story', '', '', '2018-10-10 06:58:45', '2018-10-10 06:58:45', '', 0, 'http://yume100.vn/?p=163', 0, 'post', '', 0),
(164, 3, '2018-10-10 06:56:59', '2018-10-10 06:56:59', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-7', '', '', '2018-10-10 06:56:59', '2018-10-10 06:56:59', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 3, '2018-10-10 06:57:30', '2018-10-10 06:57:30', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-8', '', '', '2018-10-10 06:57:30', '2018-10-10 06:57:30', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 3, '2018-10-10 06:57:59', '2018-10-10 06:57:59', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-4', '', '', '2018-10-10 06:57:59', '2018-10-10 06:57:59', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a3-1.png', 0, 'attachment', 'image/png', 0),
(167, 3, '2018-10-10 06:58:45', '2018-10-10 06:58:45', '<p style=\"text-align: center;\"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></p>\r\n<img class=\"size-full wp-image-164 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg\" alt=\"\" width=\"360\" height=\"633\" />\r\n<p style=\"text-align: center;\"><strong>Bước 2: Tại bản đồ thế giới chọn vào Vương quốc.</strong></p>\r\n<img class=\"size-full wp-image-165 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg\" alt=\"\" width=\"356\" height=\"632\" />\r\n<p style=\"text-align: center;\"><strong>Bước 3: Sau đó cùng các hoàng tử vượt ải nhé các bạn !!!!!</strong></p>\r\n<p style=\"text-align: center;\"><strong>CHÚ Ý: </strong>Khi vượt qua các ải của vương quốc đầu tiên thì  các vương quốc sau mới được mở.</p>\r\n<img class=\"size-full wp-image-166 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-1.png\" alt=\"\" width=\"360\" height=\"636\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vượt ải (Story)”', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-10-10 06:58:45', '2018-10-10 06:58:45', '', 163, 'http://yume100.vn/2018/10/10/163-revision-v1/', 0, 'revision', '', 0),
(168, 3, '2018-10-10 07:06:46', '2018-10-10 07:06:46', '<h3 style=\"text-align: center;\"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-169\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg\" alt=\"\" width=\"359\" height=\"635\" /></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>\r\n<img class=\"size-full wp-image-170 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg\" alt=\"\" width=\"356\" height=\"632\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.</h3>\r\n<h3 style=\"text-align: center;\"><img class=\"size-full wp-image-171 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-2.png\" alt=\"\" width=\"364\" height=\"633\" /></h3>\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'publish', 'open', 'open', '', 'huong-dan-vuon-mat-trang-2', '', '', '2018-10-10 07:08:11', '2018-10-10 07:08:11', '', 0, 'http://yume100.vn/?p=168', 0, 'post', '', 0),
(169, 3, '2018-10-10 07:04:50', '2018-10-10 07:04:50', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-8', '', '', '2018-10-10 07:04:50', '2018-10-10 07:04:50', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 3, '2018-10-10 07:05:18', '2018-10-10 07:05:18', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-9', '', '', '2018-10-10 07:05:18', '2018-10-10 07:05:18', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 3, '2018-10-10 07:05:49', '2018-10-10 07:05:49', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-5', '', '', '2018-10-10 07:05:49', '2018-10-10 07:05:49', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a3-2.png', 0, 'attachment', 'image/png', 0),
(172, 3, '2018-10-10 07:06:46', '2018-10-10 07:06:46', '<h3 style=\"text-align: center;\"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-169\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg\" alt=\"\" width=\"359\" height=\"635\" /></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>\r\n<img class=\"size-full wp-image-170 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg\" alt=\"\" width=\"356\" height=\"632\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.<img class=\"size-full wp-image-171 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-2.png\" alt=\"\" width=\"364\" height=\"633\" /></h3>\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-10-10 07:06:46', '2018-10-10 07:06:46', '', 168, 'http://yume100.vn/2018/10/10/168-revision-v1/', 0, 'revision', '', 0),
(173, 3, '2018-10-10 07:08:11', '2018-10-10 07:08:11', '<h3 style=\"text-align: center;\"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-169\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg\" alt=\"\" width=\"359\" height=\"635\" /></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>\r\n<img class=\"size-full wp-image-170 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg\" alt=\"\" width=\"356\" height=\"632\" />\r\n<h3 style=\"text-align: center;\"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.</h3>\r\n<h3 style=\"text-align: center;\"><img class=\"size-full wp-image-171 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a3-2.png\" alt=\"\" width=\"364\" height=\"633\" /></h3>\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-10-10 07:08:11', '2018-10-10 07:08:11', '', 168, 'http://yume100.vn/2018/10/10/168-revision-v1/', 0, 'revision', '', 0),
(174, 3, '2018-10-10 07:13:00', '2018-10-10 07:13:00', '<h3 style=\"text-align: center;\">Bước 1: Tại màn hình chính chọn nút “Truyện”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-175\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.png\" alt=\"\" width=\"359\" height=\"630\" /></p>\r\n\r\n<h3 style=\"text-align: center;\">Bước 2: Tích vào “Danh mục truyện”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-176\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-4.png\" alt=\"\" width=\"362\" height=\"632\" /></p>\r\n\r\n<h3 style=\"text-align: center;\">Bước 3: Tích vào “Danh mục truyện đã đọc”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone  wp-image-177\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3-1.png\" alt=\"\" width=\"361\" height=\"634\" /></p>\r\n\r\n<h4 style=\"text-align: center;\">Bước 4: Chọn hoàng tử mà bạn muốn đọc truyện lại. Ví dụ: Trong hình ảnh mình chọn Avi.</h4>\r\n<img class=\"alignnone size-full wp-image-178 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/4.png\" alt=\"\" width=\"361\" height=\"633\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn xem log truyện – Những truyện đã đọc', '', 'publish', 'open', 'open', '', 'huong-dan-xem-log-truyen-nhung-truyen-da-doc', '', '', '2018-10-10 07:13:00', '2018-10-10 07:13:00', '', 0, 'http://yume100.vn/?p=174', 0, 'post', '', 0),
(175, 3, '2018-10-10 07:10:36', '2018-10-10 07:10:36', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-9', '', '', '2018-10-10 07:10:36', '2018-10-10 07:10:36', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/a1-1.png', 0, 'attachment', 'image/png', 0),
(176, 3, '2018-10-10 07:11:12', '2018-10-10 07:11:12', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-10', '', '', '2018-10-10 07:11:12', '2018-10-10 07:11:12', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/a2-4.png', 0, 'attachment', 'image/png', 0),
(177, 3, '2018-10-10 07:11:35', '2018-10-10 07:11:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2018-10-10 07:11:35', '2018-10-10 07:11:35', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/3-1.png', 0, 'attachment', 'image/png', 0),
(178, 3, '2018-10-10 07:12:07', '2018-10-10 07:12:07', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-10-10 07:12:07', '2018-10-10 07:12:07', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/4.png', 0, 'attachment', 'image/png', 0),
(179, 3, '2018-10-10 07:13:00', '2018-10-10 07:13:00', '<h3 style=\"text-align: center;\">Bước 1: Tại màn hình chính chọn nút “Truyện”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-175\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.png\" alt=\"\" width=\"359\" height=\"630\" /></p>\r\n\r\n<h3 style=\"text-align: center;\">Bước 2: Tích vào “Danh mục truyện”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-176\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a2-4.png\" alt=\"\" width=\"362\" height=\"632\" /></p>\r\n\r\n<h3 style=\"text-align: center;\">Bước 3: Tích vào “Danh mục truyện đã đọc”</h3>\r\n<p style=\"text-align: center;\"><img class=\"alignnone  wp-image-177\" src=\"http://yume100.vn/wp-content/uploads/2018/10/3-1.png\" alt=\"\" width=\"361\" height=\"634\" /></p>\r\n\r\n<h4 style=\"text-align: center;\">Bước 4: Chọn hoàng tử mà bạn muốn đọc truyện lại. Ví dụ: Trong hình ảnh mình chọn Avi.</h4>\r\n<img class=\"alignnone size-full wp-image-178 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/4.png\" alt=\"\" width=\"361\" height=\"633\" />\r\n<h1 style=\"text-align: center;\">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn xem log truyện – Những truyện đã đọc', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2018-10-10 07:13:00', '2018-10-10 07:13:00', '', 174, 'http://yume100.vn/2018/10/10/174-revision-v1/', 0, 'revision', '', 0),
(180, 3, '2018-10-10 07:16:40', '2018-10-10 07:16:40', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>\r\n<ul>\r\n 	<li><b>Fanpage: </b><a href=\"https://www.facebook.com/vn.yume100/\"><b>https://www.facebook.com/vn.yume100/</b></a></li>\r\n 	<li><b>Group: <a href=\"https://www.facebook.com/groups/yume100vn/?ref=br_rs\">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>\r\n 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>\r\n 	<li><b>Email: </b><a href=\"mailto:support@fujigame.vn\"><b>support@fujigame.vn</b></a></li>\r\n</ul>\r\n&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'publish', 'open', 'open', '', 'huong-dan-ho-tro-hoi-dap', '', '', '2018-10-10 07:19:05', '2018-10-10 07:19:05', '', 0, 'http://yume100.vn/?p=180', 0, 'post', '', 0),
(181, 3, '2018-10-10 07:16:40', '2018-10-10 07:16:40', '<b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li><b>Fanpage:</b></li>\r\n</ul>\r\n&nbsp;\r\n\r\n<a href=\"https://www.facebook.com/vn.yume100/\"><b>https://www.facebook.com/vn.yume100/</b></a>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li><b>Group: <a href=\"https://www.facebook.com/groups/yume100vn/?ref=br_rs\">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>\r\n</ul>\r\n<ul>\r\n 	<li>Hotline:</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>0946.153.466</b>\r\n\r\n<b>Email: </b><a href=\"mailto:support@fujigame.vn\"><b>support@fujigame.vn</b></a>', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-10-10 07:16:40', '2018-10-10 07:16:40', '', 180, 'http://yume100.vn/2018/10/10/180-revision-v1/', 0, 'revision', '', 0),
(182, 3, '2018-10-10 07:18:56', '2018-10-10 07:18:56', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>\n<ul>\n 	<li><b>Fanpage: </b><a href=\"https://www.facebook.com/vn.yume100/\"><b>https://www.facebook.com/vn.yume100/</b></a></li>\n 	<li><b>Group: <a href=\"https://www.facebook.com/groups/yume100vn/?ref=br_rs\">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>\n 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>\n 	<li><b>Email: </b><a href=\"mailto:support@fujigame.vn\"><b>support@fujigame.vn</b></a></li>\n</ul>\n&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-autosave-v1', '', '', '2018-10-10 07:18:56', '2018-10-10 07:18:56', '', 180, 'http://yume100.vn/2018/10/10/180-autosave-v1/', 0, 'revision', '', 0),
(183, 3, '2018-10-10 07:19:05', '2018-10-10 07:19:05', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>\r\n<ul>\r\n 	<li><b>Fanpage: </b><a href=\"https://www.facebook.com/vn.yume100/\"><b>https://www.facebook.com/vn.yume100/</b></a></li>\r\n 	<li><b>Group: <a href=\"https://www.facebook.com/groups/yume100vn/?ref=br_rs\">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>\r\n 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>\r\n 	<li><b>Email: </b><a href=\"mailto:support@fujigame.vn\"><b>support@fujigame.vn</b></a></li>\r\n</ul>\r\n&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-10-10 07:19:05', '2018-10-10 07:19:05', '', 180, 'http://yume100.vn/2018/10/10/180-revision-v1/', 0, 'revision', '', 0),
(184, 3, '2018-10-10 07:22:21', '2018-10-10 07:22:21', '<span style=\"font-weight: 400;\">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>\r\n\r\n&nbsp;\r\n\r\n<b>Chú ý:</b> <span style=\"font-weight: 400;\">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>\r\n\r\n<span style=\"font-weight: 400;\">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>\r\n\r\n<span style=\"font-weight: 400;\">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>\r\n\r\n<span style=\"font-weight: 400;\">[Ảnh 2]</span>\r\n\r\n<span style=\"font-weight: 400;\">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>\r\n\r\n<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-10 07:22:21', '2018-10-10 07:22:21', '', 119, 'http://yume100.vn/2018/10/10/119-revision-v1/', 0, 'revision', '', 0),
(185, 3, '2018-10-10 07:38:08', '2018-10-10 07:38:08', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>\r\n\r\n<span style=\"font-weight: 400;\">      1. Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n<p style=\"text-align: center;\">Ảnh</p>\r\n\r\n<ol start=\"2\">\r\n 	<li><span style=\"font-weight: 400;\"> Cài đặt trên PC:</span></li>\r\n</ol>\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><span style=\"font-weight: 400;\"><b>Dream Kingdoom - Yume 100</b></span><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n<p style=\"text-align: center;\">ẢNH</p>\r\n<b>    3. ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Vào appstore tìm <b>Dream Kingdoom - Yume 100</b></span>\r\n\r\nBước 2: Án vào nút tải.', 'Hướng dẫn tải game', '', 'publish', 'open', 'open', '', 'huong-dan-tai-game', '', '', '2018-10-10 07:38:08', '2018-10-10 07:38:08', '', 0, 'http://yume100.vn/?p=185', 0, 'post', '', 0),
(186, 3, '2018-10-10 07:38:08', '2018-10-10 07:38:08', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>\r\n\r\n<span style=\"font-weight: 400;\">      1. Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n<p style=\"text-align: center;\">Ảnh</p>\r\n\r\n<ol start=\"2\">\r\n 	<li><span style=\"font-weight: 400;\"> Cài đặt trên PC:</span></li>\r\n</ol>\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><span style=\"font-weight: 400;\"><b>Dream Kingdoom - Yume 100</b></span><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n<p style=\"text-align: center;\">ẢNH</p>\r\n<b>    3. ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Vào appstore tìm <b>Dream Kingdoom - Yume 100</b></span>\r\n\r\nBước 2: Án vào nút tải.', 'Hướng dẫn tải game', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2018-10-10 07:38:08', '2018-10-10 07:38:08', '', 185, 'http://yume100.vn/2018/10/10/185-revision-v1/', 0, 'revision', '', 0),
(187, 3, '2018-10-12 03:59:46', '2018-10-12 03:59:46', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n\r\n<img class=\"size-full wp-image-175 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.png\" alt=\"\" width=\"359\" height=\"630\" />\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'trash', 'open', 'open', '', 'huong-dan-test__trashed', '', '', '2018-10-16 01:33:24', '2018-10-16 01:33:24', '', 0, 'http://yume100.vn/?p=187', 0, 'post', '', 0),
(188, 3, '2018-10-12 03:59:46', '2018-10-12 03:59:46', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n&nbsp;\r\n<ol start=\"2\">\r\n 	<li><span style=\"font-weight: 400;\"> Cài đặt trên PC:</span></li>\r\n</ol>\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 03:59:46', '2018-10-12 03:59:46', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(189, 3, '2018-10-12 04:00:53', '2018-10-12 04:00:53', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\n\n&nbsp;\n\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>\n\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\n<ul>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.\n</span><span style=\"font-weight: 400;\">Cài đặt trên PC:</span></li>\n</ul>\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\n\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\n\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\n\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\n\n&nbsp;\n\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\n\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\n\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\n\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\n\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\n\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\n\n<b>BQT</b>\n\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-autosave-v1', '', '', '2018-10-12 04:00:53', '2018-10-12 04:00:53', '', 187, 'http://yume100.vn/2018/10/12/187-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(190, 3, '2018-10-12 04:01:19', '2018-10-12 04:01:19', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:01:19', '2018-10-12 04:01:19', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(191, 3, '2018-10-12 04:02:33', '2018-10-12 04:02:33', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:02:33', '2018-10-12 04:02:33', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2018-10-12 04:25:39', '2018-10-12 04:25:39', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-175 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.png\" alt=\"\" width=\"359\" height=\"630\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:25:39', '2018-10-12 04:25:39', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2018-10-12 04:25:58', '2018-10-12 04:25:58', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:25:58', '2018-10-12 04:25:58', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2018-10-12 04:28:02', '2018-10-12 04:28:02', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:28:02', '2018-10-12 04:28:02', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-10-12 04:29:17', '2018-10-12 04:29:17', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:17', '2018-10-12 04:29:17', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2018-10-12 04:29:36', '2018-10-12 04:29:36', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:36', '2018-10-12 04:29:36', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2018-10-12 06:20:00', '2018-10-12 06:20:00', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\n\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\n\n&nbsp;\n\n&nbsp;\n<ul>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\n</ul>\n2. Cài đặt trên PC\n\n&nbsp;\n\n&nbsp;\n\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\n\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\n\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\n\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\n\n&nbsp;\n\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\n\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\n\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\n\n&nbsp;\n\n&nbsp;\n\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\n\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\n\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\n\n<b>BQT</b>\n\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-autosave-v1', '', '', '2018-10-12 06:20:00', '2018-10-12 06:20:00', '', 187, 'http://yume100.vn/2018/10/12/187-autosave-v1/', 0, 'revision', '', 0),
(199, 1, '2018-10-12 04:29:58', '2018-10-12 04:29:58', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\"&lt;br&gt;\"\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:58', '2018-10-12 04:29:58', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-10-12 04:30:18', '2018-10-12 04:30:18', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC&lt;br&gt;\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:30:18', '2018-10-12 04:30:18', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2018-10-12 04:30:30', '2018-10-12 04:30:30', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<img class=\"size-full wp-image-160 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg\" alt=\"\" width=\"365\" height=\"637\" />\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:30:30', '2018-10-12 04:30:30', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-10-12 04:46:37', '2018-10-12 04:46:37', 'a\r\n\r\na\r\n\r\na\r\n\r\na\r\n\r\na\r\n\r\naa\r\n\r\nasdsadsad\r\n\r\nas\r\n\r\ndsadsadsad\r\n\r\nasdadsad\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:46:37', '2018-10-12 04:46:37', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-10-12 04:47:12', '2018-10-12 04:47:12', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:47:12', '2018-10-12 04:47:12', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-10-12 06:07:44', '2018-10-12 06:07:44', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:07:44', '2018-10-12 06:07:44', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-10-12 06:20:05', '2018-10-12 06:20:05', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n&nbsp;\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:20:05', '2018-10-12 06:20:05', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(206, 1, '2018-10-12 06:20:55', '2018-10-12 06:20:55', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:20:55', '2018-10-12 06:20:55', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-10-12 06:23:01', '2018-10-12 06:23:01', '<b>Yume100</b><span style=\"font-weight: 400;\"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>\r\n\r\n<span style=\"font-weight: 400;\">1.Cài đặt cho Mobile:</span>\r\n\r\n<img class=\"size-full wp-image-175 aligncenter\" src=\"http://yume100.vn/wp-content/uploads/2018/10/a1-1.png\" alt=\"\" width=\"359\" height=\"630\" />\r\n<ul>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Bạn tải file APK tại đây : Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>\r\n 	<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>\r\n</ul>\r\n2. Cài đặt trên PC\r\n\r\n<span style=\"font-weight: 400;\">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Bạn tải file APK tại đây: Link </span><a href=\"https://play.google.com/store/apps/details?id=vn.fujigame.remonster\"><span style=\"font-weight: 400;\">Google Store</span></a><span style=\"font-weight: 400;\"> - Link tải trực tiếp APK.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau đó chọn \"Mở file APK\" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style=\"font-weight: 400;\"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style=\"font-weight: 400;\"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>\r\n\r\n<span style=\"font-weight: 400;\">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>\r\n\r\n<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>\r\n\r\n<span style=\"font-weight: 400;\">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản \"</span><b>Yume100</b><span style=\"font-weight: 400;\"> (thử nghiệm)\" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 2: Từ Appstore tải về TestFlight</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>\r\n\r\n<span style=\"font-weight: 400;\">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>\r\n\r\n<span style=\"font-weight: 400;\">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>\r\n\r\n<b>BQT</b>\r\n\r\n&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:23:01', '2018-10-12 06:23:01', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf32_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(10, 1, 0),
(12, 1, 0),
(14, 1, 0),
(16, 1, 0),
(25, 1, 0),
(30, 1, 0),
(32, 1, 0),
(34, 1, 0),
(36, 1, 0),
(38, 1, 0),
(45, 1, 0),
(47, 1, 0),
(55, 1, 0),
(76, 1, 0),
(78, 1, 0),
(81, 1, 0),
(83, 1, 0),
(91, 1, 0),
(95, 1, 0),
(103, 1, 0),
(108, 1, 0),
(114, 1, 0),
(119, 1, 0),
(121, 1, 0),
(128, 1, 0),
(134, 1, 0),
(140, 1, 0),
(146, 1, 0),
(150, 1, 0),
(155, 1, 0),
(159, 1, 0),
(163, 1, 0),
(168, 1, 0),
(174, 1, 0),
(180, 1, 0),
(185, 1, 0),
(187, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf32_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf32_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Le Xuan Dam'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '208'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1538018510'),
(20, 1, 'show_try_gutenberg_panel', '0'),
(22, 2, 'nickname', 'admin'),
(23, 2, 'first_name', 'admin'),
(24, 2, 'last_name', 'yume'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(34, 2, 'wp_user_level', '0'),
(35, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(38, 2, 'wp_user-settings', 'mfold=f'),
(39, 2, 'wp_user-settings-time', '1538381660'),
(41, 3, 'nickname', 'admin'),
(42, 3, 'first_name', ''),
(43, 3, 'last_name', ''),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(53, 3, 'wp_user_level', '10'),
(54, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(56, 3, 'wp_dashboard_quick_press_last_post_id', '127'),
(57, 3, 'session_tokens', 'a:4:{s:64:\"70ceb9cb2b0bd145c2170c4c58972b7006c48aa80d8441261fc3c51b6c82a157\";a:4:{s:10:\"expiration\";i:1539669879;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538460279;}s:64:\"78b282db18b590e0f8067c7262248aa10da7ae2b6f2cca41a16dfeb55fb7de17\";a:4:{s:10:\"expiration\";i:1539670652;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538461052;}s:64:\"9710165775da5b35e7c664f5bf545ad5b59592010b5454f862fb1a9b69791e1a\";a:4:{s:10:\"expiration\";i:1539912214;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538702614;}s:64:\"73152e17735cda1b1e84df981f59240eaaa788d2c637edf62fc71f21dc5d0cce\";a:4:{s:10:\"expiration\";i:1540189358;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538979758;}}'),
(58, 1, 'session_tokens', 'a:3:{s:64:\"e0e825790b05a5efb84bc0fc999ab251287354e7335b72a42c7030b209f744da\";a:4:{s:10:\"expiration\";i:1540527895;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539318295;}s:64:\"1e6f59dd04b4dbe337a2a6b368a451e23cf9c69f482be60d2510b89a997556dc\";a:4:{s:10:\"expiration\";i:1540880041;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539670441;}s:64:\"c37538e6e56d64f93c0f57d4cf523cd9606b02b4037c8ec9dbd0ed58507902cf\";a:4:{s:10:\"expiration\";i:1540349386;s:2:\"ip\";s:12:\"123.25.30.88\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540176586;}}'),
(59, 3, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(60, 3, 'wp_user-settings-time', '1539056881'),
(61, 1, 'wp_media_library_mode', 'list'),
(62, 1, 'closedpostboxes_post', 'a:0:{}'),
(63, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(64, 3, 'closedpostboxes_post', 'a:1:{i:0;s:23:\"acf-group_5bbc0ffd9e19b\";}'),
(65, 3, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(66, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(67, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf32_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf32_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Le Xuan Dam', '$P$BAafbIsla3XBcu8FvHhRnuLlStx4/f0', 'le-xuan-dam', 'dam.le@fujitechjsc.com', '', '2018-09-25 09:21:02', '', 0, 'Le Xuan Dam'),
(3, 'admin', '$P$Ba3vbqe1CkwiKmOzah/AGAcPSn2ifA0', 'admin', 'admin@gmail.com', '', '2018-10-01 08:15:36', '1538381736:$P$BAxbgol7p9gD/DZ2JJtj2EsQ9.cvcP1', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maintain`
--
ALTER TABLE `maintain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_author_email` (`comment_author_email`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `name` (`name`(191)),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maintain`
--
ALTER TABLE `maintain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `laravel`;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` smallint(6) NOT NULL,
  `birthday` date NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` smallint(6) NOT NULL DEFAULT '1',
  `facebook_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'internal_site', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"eccube3\",\"internal_site\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'internal_site', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"department\",\"detail_payment\",\"level_user\",\"migrations\",\"overtime_request\",\"payment_request\",\"status_user\",\"training_document\",\"users\",\"vacation_request\",\"vacation_type\"],\"table_structure[]\":[\"department\",\"detail_payment\",\"level_user\",\"migrations\",\"overtime_request\",\"payment_request\",\"status_user\",\"training_document\",\"users\",\"vacation_request\",\"vacation_type\"],\"table_data[]\":[\"department\",\"detail_payment\",\"level_user\",\"migrations\",\"overtime_request\",\"payment_request\",\"status_user\",\"training_document\",\"users\",\"vacation_request\",\"vacation_type\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@\",\"latex_structure_continued_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@\",\"latex_data_continued_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'calendar', 'users', '{\"CREATE_TIME\":\"2018-11-22 11:25:33\",\"col_order\":[0,1,2,3,4,5,6,7,8,10,9,11,12,13,14,15,16,17,18],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2018-11-22 04:26:53'),
('root', 'fujierp_pro_db', 'departments_users', '{\"CREATE_TIME\":\"2018-10-24 09:09:51\",\"col_order\":[5,0,1,2,3,4],\"col_visib\":[1,1,1,1,1,1]}', '2018-11-22 04:20:12'),
('root', 'internal_site', 'vacation_requests', '{\"sorted_col\":\"`current_in_charge_user_id`  ASC\"}', '2018-07-12 03:15:45'),
('root', 'test', 'company', '{\"CREATE_TIME\":\"2018-11-26 14:32:09\",\"col_order\":[0,1,2,3,4,10,5,11,6,12,7,8,9],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2018-11-26 08:11:31'),
('root', 'test', 'schedule', '{\"sorted_col\":\"`id`  DESC\"}', '2018-11-27 07:23:17'),
('root', 'test', 'users', '{\"CREATE_TIME\":\"2018-11-14 09:46:53\",\"col_order\":[0,1,2,3,5,4,6,7,8,9,10,11,12,13,14,15,16],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"sorted_col\":\"`users`.`id`  DESC\"}', '2018-11-19 08:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2018-11-21 02:17:31', '{\"lang\":\"vi\"}'),
('root', '2018-11-27 10:32:39', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":166}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Dumping data for table `pma__users`
--

INSERT INTO `pma__users` (`username`, `usergroup`) VALUES
('thuong', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

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
--
-- Database: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `test1`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dampow', 'dam.le@fujitechjsc.com', NULL, '$2y$10$8nYZImt6u3WTMcU7vFdtyeU3yn4DpEjUT0Qfis..H4KPs1/5QrCtK', 'ZYBkbdZdJCZgecc0hIqQhxbthyWbDN3bI8SWuUhX0ufhA1rL6386PWZdtZ5p', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
