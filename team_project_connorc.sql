-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 05:15 PM
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
-- Database: `team_project_connorc`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_15_005541_create_products_table', 1),
(6, '2023_12_04_212834_add_is_admin_column_to_users_table', 1),
(7, '2024_01_02_225811_add_image_to_products_table', 1),
(8, '2024_01_03_040727_add_category_to_products_table', 1),
(9, '2024_01_03_055927_add_creator_to_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_name` varchar(250) NOT NULL,
  `price` bigint(20) UNSIGNED DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `unit` varchar(5) NOT NULL DEFAULT 'units'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `product_name`, `price`, `image`, `creator`, `unit`) VALUES
(107, '2024-04-17 13:38:50', '2024-04-17 13:38:50', 'Mars Bar', 89, 0x313731333336343733305f4d6172734261722e6a706567, 1, 'Units'),
(108, '2024-04-17 13:42:39', '2024-04-17 13:42:39', 'Snickers Bar', 79, 0x313731333336343935395f536e69636b6572732e6a706567, 1, 'Units'),
(109, '2024-04-18 13:11:09', '2024-04-18 13:11:09', 'Squares Bar', 90, 0x313731333434393436395f537175617265734261722e6a706567, 1, 'Units'),
(119, '2024-05-07 12:37:41', '2024-05-07 12:37:42', 'New York Bagels', 100, 0x313731353038393036325f66726f6e745f656e2e32342e3430302e6a7067, 1, 'Units'),
(120, '2024-05-07 12:39:27', '2024-05-07 12:39:28', 'Stone baked pitta bread', 80, 0x313731353038393136385f66726f6e745f656e2e352e3430302e6a7067, 1, 'Units'),
(128, '2024-05-07 14:44:52', '2024-05-07 14:44:52', 'Wholegrain Flour', 15, 0x313731353039363639325f466c6f75722e6a706567, 1, 'Grams'),
(131, '2024-05-08 11:31:48', '2024-05-08 11:31:48', 'Granulated Sugar', 20, 0x313731353137313530385f53756761722e6a706567, 1, 'Grams'),
(132, '2024-05-08 11:33:54', '2024-05-08 11:33:54', 'Icing Sugar', 25, 0x313731353137313633345f4963696e6753756761722e6a7067, 1, 'Grams'),
(133, '2024-05-08 11:35:23', '2024-05-08 11:35:23', 'Croissant', 80, 0x313731353137313732335f43726f697373616e74732e6a706567, 1, 'Units'),
(134, '2024-05-08 11:36:56', '2024-05-08 11:36:56', 'Salted Butter', 120, 0x313731353137313831365f4275747465722e6a706567, 1, 'Grams'),
(139, '2024-05-09 13:18:51', '2024-05-09 13:18:51', 'Chocolate Cake', 100, 0x313731353236343333315f43686f636f6c61746543616b652e6a706567, 1, 'Units'),
(141, '2024-05-09 13:20:16', '2024-05-09 13:20:17', '500ml Lucozade Sprt Zro �2.49', 0, 0x313731353236343431375f66726f6e745f656e2e332e3430302e6a7067, 1, 'Units');

-- --------------------------------------------------------

--
-- Table structure for table `product_nutrition`
--

CREATE TABLE `product_nutrition` (
  `product_nutritionID` int(11) NOT NULL,
  `productID` bigint(20) NOT NULL,
  `calories` int(5) NOT NULL,
  `protein` int(5) NOT NULL,
  `carbs` int(5) NOT NULL,
  `fat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_nutrition`
--

INSERT INTO `product_nutrition` (`product_nutritionID`, `productID`, `calories`, `protein`, `carbs`, `fat`) VALUES
(101, 107, 200, 2, 25, 3),
(102, 108, 212, 6, 42, 12),
(103, 109, 100, 10, 9, 8),
(109, 119, 261, 8, 44, 1),
(110, 120, 232, 5, 44, 2),
(113, 127, 235, 4, 38, 14),
(114, 128, 200, 4, 50, 1),
(115, 129, 133, 134, 52, 1),
(116, 130, 0, 0, 0, 0),
(117, 131, 400, 1, 2, 1),
(118, 132, 400, 1, 97, 1),
(119, 133, 260, 4, 29, 12),
(120, 134, 500, 12, 10, 75),
(121, 135, 1, 0, 0, 0),
(122, 136, 1, 0, 0, 0),
(123, 137, 1, 0, 0, 0),
(124, 138, 400, 3, 80, 15),
(125, 139, 1325, 0, 0, 0),
(126, 140, 8099, 12, 12, 1),
(127, 141, 1, 0, 0, 0);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'bob', 'bob@example.com', NULL, '$2y$10$QUAoejsbgMX2r4lRuNlEFeTF/gt62btLB.LFenbpdixHnZbW3Ggly', 'W3k2JnKmmCCNCRZuateaj1wfuFKLVtOVNqTqZisRIpZFvqyIs2ef7kgURWZ8', '2024-01-03 07:51:50', '2024-01-03 07:51:50', 1),
(2, 'alice', 'alice@example.com', NULL, '$2y$10$jMNfqM2KaQa60vHPhp06aOT0cpOFhJuRUYm3m0ekV.aydHrsqP72W', NULL, '2024-01-03 07:51:50', '2024-01-03 07:51:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_product`
--

CREATE TABLE `user_product` (
  `user_productID` int(32) NOT NULL,
  `userID` int(32) NOT NULL,
  `productID` int(32) NOT NULL,
  `best_before` date DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`user_productID`, `userID`, `productID`, `best_before`, `stock`) VALUES
(103, 1, 109, '2024-05-01', 12),
(104, 1, 109, '2024-04-28', 102),
(105, 1, 108, '2024-08-23', 7),
(108, 1, 107, '2024-08-09', 1),
(109, 1, 107, '2024-07-13', 2),
(110, 1, 107, '2024-10-17', 5),
(111, 1, 108, '2024-05-30', 50),
(116, 1, 119, '2024-05-14', 4),
(117, 1, 120, '2024-05-23', 12),
(118, 1, 120, '2024-05-13', 4),
(121, 1, 128, '2024-05-14', 1000),
(125, 1, 130, '2024-05-17', 120),
(126, 1, 131, '2024-12-20', 1000),
(127, 1, 131, '2024-08-30', 640),
(128, 1, 132, '2024-09-12', 1500),
(129, 1, 133, '2024-05-19', 12),
(130, 1, 134, '2024-05-24', 500),
(131, 1, 135, '2024-05-16', 1),
(132, 1, 136, '2024-05-18', 12),
(134, 1, 137, '2024-06-06', 12),
(135, 1, 138, '2024-05-17', 2),
(136, 1, 140, '2024-05-18', 12),
(138, 1, 141, '2024-05-03', 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_creator_foreign` (`creator`);

--
-- Indexes for table `product_nutrition`
--
ALTER TABLE `product_nutrition`
  ADD PRIMARY KEY (`product_nutritionID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_product`
--
ALTER TABLE `user_product`
  ADD PRIMARY KEY (`user_productID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `productID` (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `product_nutrition`
--
ALTER TABLE `product_nutrition`
  MODIFY `product_nutritionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_product`
--
ALTER TABLE `user_product`
  MODIFY `user_productID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_creator_foreign` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
