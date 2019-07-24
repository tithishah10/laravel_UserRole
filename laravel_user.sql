-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 02:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_19_082617_create_my_users_table', 1),
(4, '2019_07_19_083458_create_roles_table', 1),
(5, '2019_07_19_110603_create_user_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_users`
--

CREATE TABLE `my_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', '2019-07-19 06:21:31', '2019-07-19 06:21:31'),
(2, 'SEO', '2019-07-19 06:21:52', '2019-07-19 06:21:52'),
(3, 'QA', '2019-07-19 06:21:57', '2019-07-19 06:21:57'),
(4, 'HR', '2019-07-19 06:22:06', '2019-07-19 06:22:06'),
(5, 'Tester', '2019-07-19 06:22:11', '2019-07-19 06:22:11'),
(6, 'User', '2019-07-20 04:41:35', '2019-07-20 04:41:35'),
(7, 'Admin', '2019-07-20 04:48:35', '2019-07-20 04:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(36, 'Freny', 'Mehta', 'freny@gmail.com', NULL, '123456', NULL, '2019-07-20 07:32:45', '2019-07-22 06:32:19'),
(37, 'Frenklin', 'Mehta', 'Frenklin@gmail.com', NULL, '123456', NULL, '2019-07-20 07:34:13', '2019-07-20 07:34:13'),
(41, 'Priya', 'Shah', 'priya@gmail.com', NULL, '123456', NULL, '2019-07-22 06:07:06', '2019-07-22 06:07:06'),
(42, 'Het', 'Mehta', 'het@gmail.com', NULL, '123456', NULL, '2019-07-22 06:07:35', '2019-07-22 06:07:35'),
(43, 'Shain', 'Parekar', 'shain@gmail.com', NULL, '123456', NULL, '2019-07-22 06:08:39', '2019-07-22 06:31:57'),
(44, 'Mrinesh', 'Parekar', 'mrinesh@gmail.com', NULL, '123456', NULL, '2019-07-22 06:09:05', '2019-07-22 06:09:05'),
(45, 'Khushboo', 'Shah', 'khushboo@gmail.com', NULL, '123456', NULL, '2019-07-22 06:09:24', '2019-07-22 06:09:24'),
(46, 'Jatin', 'Patel', 'jatin@gmail.com', NULL, '123456', NULL, '2019-07-22 06:09:43', '2019-07-22 06:09:43'),
(47, 'Mesha', 'Vyas', 'mesha@gmail.com', NULL, '123456', NULL, '2019-07-22 06:10:00', '2019-07-22 06:10:00'),
(48, 'Shreya', 'Patel', 'shreya@gmail.com', NULL, '123456', NULL, '2019-07-22 06:19:24', '2019-07-22 06:19:24'),
(49, 'Shubham', 'Patel', 'shubham@gmail.com', NULL, '123456', NULL, '2019-07-22 06:19:37', '2019-07-22 06:19:37'),
(50, 'Priyesh', 'Mehta', 'priyesh@gmail.com', NULL, '123456', NULL, '2019-07-22 06:19:54', '2019-07-22 06:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `uid`, `role_id`, `created_at`, `updated_at`) VALUES
(15, 36, 1, '2019-07-20 07:32:45', '2019-07-22 06:32:19'),
(16, 37, 2, '2019-07-20 07:34:13', '2019-07-20 07:34:13'),
(17, 38, 3, '2019-07-22 05:58:53', '2019-07-22 05:58:53'),
(18, 39, 1, '2019-07-22 06:06:11', '2019-07-22 06:06:11'),
(19, 40, 1, '2019-07-22 06:06:54', '2019-07-22 06:06:54'),
(20, 41, 1, '2019-07-22 06:07:06', '2019-07-22 06:07:06'),
(21, 42, 4, '2019-07-22 06:07:36', '2019-07-22 06:07:36'),
(22, 43, 2, '2019-07-22 06:08:39', '2019-07-22 06:31:57'),
(23, 44, 1, '2019-07-22 06:09:05', '2019-07-22 06:09:05'),
(24, 45, 1, '2019-07-22 06:09:24', '2019-07-22 06:09:24'),
(25, 46, 5, '2019-07-22 06:09:43', '2019-07-22 06:09:43'),
(26, 47, 1, '2019-07-22 06:10:00', '2019-07-22 06:31:11'),
(27, 48, 1, '2019-07-22 06:19:24', '2019-07-22 06:19:24'),
(28, 49, 1, '2019-07-22 06:19:37', '2019-07-22 06:19:37'),
(29, 50, 5, '2019-07-22 06:19:54', '2019-07-22 06:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_users`
--
ALTER TABLE `my_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `my_users`
--
ALTER TABLE `my_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
