-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 10:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(7, '0001_01_01_000000_create_users_table', 1),
(10, '2024_12_30_054921_create_orders_table', 2),
(15, '0001_01_01_000001_create_cache_table', 3),
(16, '0001_01_01_000002_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `phuongthucthanhtoan` varchar(255) NOT NULL DEFAULT 'cash',
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `quantity`, `total_price`, `phuongthucthanhtoan`, `status`, `created_at`, `updated_at`) VALUES
(17, 3, 4, 1, 200.00, '', 'pending', '2024-12-25 15:59:47', '2024-12-25 15:59:47'),
(18, 3, 1, 1, 100.00, '', 'pending', '2024-12-27 23:56:12', '2024-12-27 23:56:12'),
(19, 3, 6, 15, 4500.00, '', 'pending', '2024-12-27 23:56:54', '2024-12-27 23:56:54'),
(20, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 00:21:22', '2024-12-28 00:21:22'),
(21, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 00:21:41', '2024-12-28 00:21:41'),
(22, 3, 3, 199, 29850.00, '', 'pending', '2024-12-28 00:22:21', '2024-12-28 00:22:21'),
(23, 3, 3, 19966, 2994900.00, '', 'pending', '2024-12-28 00:23:16', '2024-12-28 00:23:16'),
(24, 3, 4, 11, 2200.00, '', 'pending', '2024-12-28 00:26:07', '2024-12-28 00:26:07'),
(25, 3, 3, 1, 150.00, '', 'pending', '2024-12-28 00:39:04', '2024-12-28 00:39:04'),
(26, 3, 5, 1, 250.00, '', 'pending', '2024-12-28 00:40:07', '2024-12-28 00:40:07'),
(27, 3, 4, 1, 200.00, '', 'pending', '2024-12-28 00:40:36', '2024-12-28 00:40:36'),
(28, 3, 7, 1, 51120.00, '', 'pending', '2024-12-28 16:30:55', '2024-12-28 16:30:55'),
(29, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 16:34:05', '2024-12-28 16:34:05'),
(30, 3, 4, 1, 200.00, '', 'pending', '2024-12-28 17:55:47', '2024-12-28 17:55:47'),
(31, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 17:56:15', '2024-12-28 17:56:15'),
(32, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 17:56:27', '2024-12-28 17:56:27'),
(33, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 17:56:48', '2024-12-28 17:56:48'),
(34, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 17:56:53', '2024-12-28 17:56:53'),
(35, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:57:07', '2024-12-28 17:57:07'),
(36, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:57:45', '2024-12-28 17:57:45'),
(37, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:58:21', '2024-12-28 17:58:21'),
(38, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:58:32', '2024-12-28 17:58:32'),
(39, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:59:13', '2024-12-28 17:59:13'),
(40, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:59:17', '2024-12-28 17:59:17'),
(41, 3, 1, 1, 100.00, '', 'pending', '2024-12-28 17:59:55', '2024-12-28 17:59:55'),
(42, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 18:01:01', '2024-12-28 18:01:01'),
(43, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 18:01:57', '2024-12-28 18:01:57'),
(44, 3, 2, 1, 100.00, '', 'pending', '2024-12-28 18:02:00', '2024-12-28 18:02:00'),
(45, 3, 3, 1, 150.00, '', 'pending', '2024-12-28 18:02:03', '2024-12-28 18:02:03'),
(46, 22, 1, 1, 100.00, 'cash', 'pending', '2024-12-30 02:07:12', '2024-12-30 02:07:12');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Description for product 1', 100.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:28:39', '2024-12-25 23:41:10'),
(2, 'Product 1', 'Description for product 1', 100.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:29:09', '2024-12-25 23:41:10'),
(3, 'Product 2', 'Description for product 2', 150.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:29:09', '2024-12-25 23:41:10'),
(4, 'Product 3', 'Description for product 3', 200.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:29:09', '2024-12-25 23:41:10'),
(5, 'Product 4', 'Description for product 4', 250.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:29:09', '2024-12-25 23:41:10'),
(6, 'Product 5', 'Description for product 5', 300.00, 'https://i.ebayimg.com/images/g/q~8AAOSwCi5lE1Iw/s-l1600.webp', '2024-12-24 01:29:09', '2024-12-25 23:41:10'),
(7, 'sss', 'ss', 51120.00, 'https://th.bing.com/th/id/OIP.p0JWNnWpjZXy_w-lVlYDMgHaHa?rs=1&pid=ImgDetMain', '2024-12-25 16:41:12', '2024-12-28 23:10:24'),
(8, 'ss', 'sss', 222222.00, 'products/WtOOrVd2rN8jPCJd4EA7JjnFxvcUJU0rObQDvphG.png', '2024-12-25 16:57:57', '2024-12-25 16:57:57'),
(9, 'Màn hình hp 22 inch', 'Màn hình siêu nét', 5900000.00, 'https://cdn.sforum.vn/sforum/wp-content/uploads/2022/08/0306_man_hinh_pc_gaming.jpg', '2024-12-28 01:02:55', '2024-12-28 08:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4mVozbZpPT7pGBz1hwldAPVicfs8KNBk1SNvMTry', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmlEMDN3SjdOVmphTU9tS1ptQThKZGN3Z2pNZE5TMzZtNEFRNVh2dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy9XdE9PclZkMnJOOGpQQ0pkNEVBN0pqbkZ4dmNVSlUwck9iUUR2cGhHLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIyO30=', 1735549918),
('PECQGBAKQodmEoKs8nvXfaYipCkFI99fUn6ipqkM', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRkVQa0c5RzRPUDFINUhEZFduWDRUYlRmN3NYZjdUcTFCZ0ZJdURZeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy9XdE9PclZkMnJOOGpQQ0pkNEVBN0pqbkZ4dmNVSlUwck9iUUR2cGhHLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIxO30=', 1735539598);

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
(1, 'ngoctam', 'danhngoctamtv678@gmail.com', NULL, '$2y$12$qI7wwj.FwUrH5UaNxQ5F5.IjGp8dYKgeBCBTiqSfc2YUArF0dkQQi', NULL, '2024-12-29 20:14:37', '2024-12-29 20:14:37'),
(3, 'ngoctam111', 'danhngoctamtv2222678@gmail.com', NULL, '$2y$12$fI0D5EqEAklcuSXKusLhwe7r0J2zf9XT.jDm9IqM2pwQtF/Ae8EFK', NULL, '2024-12-29 22:06:04', '2024-12-29 22:06:04'),
(4, 'admin', 'admin@admin.com', NULL, '$2y$12$ugUeSWQm9iivkj0j/QObs.lNRjLoj6cYeJFesy.5Ox5/cemuDLNoC', NULL, '2024-12-29 22:19:23', '2024-12-29 22:19:23'),
(12, 'sacoksancn', 'sacoksancn@sacoksancn.com', NULL, '$2y$12$Vc12oWDEEmodkcS.auUYLui4hwZ6Y2MmPEBlTF8g2uYMvU/uOEJBC', NULL, '2024-12-29 22:27:48', '2024-12-29 22:27:48'),
(13, 'lllll', 'lllll@lllll.com', NULL, '$2y$12$1lhhPi7PXbnzvuMq7SoPFOP3fFJK7LojBgQyl2WPT7FevvmLv9SUK', NULL, '2024-12-29 22:29:08', '2024-12-29 22:29:08'),
(14, 'pppp', 'pppp@pppp.com', NULL, '$2y$12$RlbAtHIQHxSy3PtKYEA9cOlyObaShs0Y41BXhZtKzgPdm/8CqehM.', NULL, '2024-12-29 22:30:54', '2024-12-29 22:30:54'),
(15, 'fffff', 'fffff@fffff.com', NULL, '$2y$12$Dvzi7nTl4sBAj5yCpkl.Met5FGX8kgBoEQTE9tVylMiuPLNXgBSH.', NULL, '2024-12-29 22:31:26', '2024-12-29 22:31:26'),
(16, 'jbsbsan', 'jbsbsan@jbsbsan.com', NULL, '$2y$12$YZeVAeIGd335IiZ2mrSGmuQf2OLkFoZENZnnTiHXCEd1rrtbKKzm6', NULL, '2024-12-29 22:32:16', '2024-12-29 22:32:16'),
(17, 'mmmm', 'mmmm@mmmm.com', NULL, '$2y$12$CRWdZcnKpCM7UOouV8ndWefbNIKttGqSxl.qCF1FkzA1WQsMyoXdW', NULL, '2024-12-29 22:33:04', '2024-12-29 22:33:04'),
(18, 'asfasfasfas@', 'asfasfasfas@gmail.com', NULL, '$2y$12$X6Zpcplw.qoxsu14CM8VI.tvFYSsBqkVj3sXFv9FFRSWZyyVyw9/S', NULL, '2024-12-29 22:34:09', '2024-12-29 22:34:09'),
(20, 'aaaaaa', 'aaaaaaasaaa@gmail.com', NULL, '$2y$12$MmZBp4adRIocMPMzGz15jeE1aSuFw1/UCDVd85AIeNRfOSCbK3Dcq', NULL, '2024-12-29 22:37:15', '2024-12-29 22:37:15'),
(21, 'danhngoctamtv678@gmail.com', 'danhngoctamtv6789@gmail.com', NULL, '$2y$12$B90CGHDembgPC2u8Hr5.l.YAAqa3ny2p5IP2iyYnW/dIjqhCIe2w2', NULL, '2024-12-29 22:38:19', '2024-12-29 22:38:19'),
(22, 'ngoctam', 'ngoctam@gmail.com', NULL, '$2y$12$7JNyVBvpvaAqPkrNUvb79.0iUhvfJi.ScW/2KlzbUriah2asGDV4a', NULL, '2024-12-30 01:59:06', '2024-12-30 01:59:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
