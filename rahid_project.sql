-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 12:40 AM
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
-- Database: `rahid_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_histories`
--

CREATE TABLE `chat_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `query` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_histories`
--

INSERT INTO `chat_histories` (`id`, `userId`, `query`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'hi', 'test test test', '2023-12-05 01:44:32', '2023-12-05 01:44:32'),
(2, 1, 'hi', 'hello', '2023-12-05 01:44:38', '2023-12-05 01:44:38'),
(3, 1, 'hi', 'respndhj 4582', '2023-12-05 01:44:39', '2023-12-05 01:44:39'),
(4, 1, 'hi', 'respndhj 4582', '2023-12-05 01:44:40', '2023-12-05 01:44:40'),
(5, 1, 'hi', 'test test test', '2023-12-05 01:44:41', '2023-12-05 01:44:41'),
(6, 1, 'hi', 'hello', '2023-12-05 01:44:42', '2023-12-05 01:44:42'),
(7, 1, 'hi', 'd55745', '2023-12-05 01:44:43', '2023-12-05 01:44:43'),
(8, 2, 'hfgjhjhnnkj jhbbjk', 'test test test', '2023-12-05 01:45:43', '2023-12-05 01:45:43'),
(9, 2, 'hfgjhjhnnkj jhbbjk', 'respndhj 4582', '2023-12-05 01:45:49', '2023-12-05 01:45:49'),
(10, 2, 'hfgjhjhnnkj jhbbjk', 'hello', '2023-12-05 01:45:50', '2023-12-05 01:45:50'),
(11, 2, 'hfgjhjhnnkj jhbbjk', 'respndhj 4582', '2023-12-05 01:45:56', '2023-12-05 01:45:56'),
(12, 2, 'hfgjhjhnnkj jhbbjk', 'test test test', '2023-12-05 21:40:18', '2023-12-05 21:40:18'),
(13, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: I\'m not sure about the answer.', '2023-12-05 22:30:53', '2023-12-05 22:30:53'),
(14, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: Ask me anything else.', '2023-12-05 22:30:59', '2023-12-05 22:30:59'),
(15, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: Ask me anything else.', '2023-12-05 22:31:09', '2023-12-05 22:31:09'),
(16, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: Let me ponder on that.', '2023-12-05 22:31:14', '2023-12-05 22:31:14'),
(17, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM1: Hmm, I need more data to answer that.', '2023-12-05 22:32:58', '2023-12-05 22:32:58'),
(18, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: I\'m not sure about the answer.', '2023-12-05 22:33:03', '2023-12-05 22:33:03'),
(19, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM2: Let me ponder on that.', '2023-12-05 22:33:08', '2023-12-05 22:33:08'),
(20, 2, 'hfgjhjhnnkj jhbbjk', 'DummyLLM1: Hmm, I need more data to answer that.', '2023-12-05 22:33:14', '2023-12-05 22:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_12_03_202621_create_chats_table', 1),
(12, '2023_12_05_023556_create_chat_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahadi125', 'm5@gmail.com5', NULL, '$2y$12$lxq.1tYSuTuvqJEaAyZyRehF3n6MVFfXaQaKJdyVHEQG.g2DeUyva', NULL, '2023-12-05 01:42:26', '2023-12-05 01:42:26'),
(2, 'r', 'r@gmail.com', NULL, '$2y$12$1wZav.ed1lR3JObucZQ1uOl0dKQ66n7/usCSw/CaHZLLmLJ7YF6jy', NULL, '2023-12-05 01:42:37', '2023-12-05 01:42:37'),
(4, 'r1', 'r1@gmail.com', NULL, '$2y$12$./IsxkMPtjUMW4OFH1ZB..hBUq0jsct/ak/UammGklHHrKr8MI50e', NULL, '2023-12-05 01:42:48', '2023-12-05 01:42:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_histories`
--
ALTER TABLE `chat_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_histories`
--
ALTER TABLE `chat_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
