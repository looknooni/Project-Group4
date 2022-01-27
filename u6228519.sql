-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 06:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6228519`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `engname`, `created_at`, `updated_at`) VALUES
(1, 'คอมพิวเตอร์เซ็ต', 'Computer Set', '2021-12-04 15:47:05', '2021-12-04 15:47:05'),
(2, 'ซีพียู', 'CPU', '2021-12-04 15:49:08', '2021-12-04 15:49:08'),
(3, 'การ์ดจอ', 'Graphic Card', '2021-12-04 15:49:30', '2021-12-04 15:49:30'),
(4, 'แรม', 'Ram', '2021-12-04 15:49:41', '2021-12-04 15:49:41'),
(5, 'ฮาร์ดดิสก์', 'Harddisk', '2021-12-04 15:50:31', '2021-12-04 15:50:31'),
(6, 'เอสเอสดี', 'SSD', '2021-12-04 15:50:45', '2021-12-04 15:50:45'),
(7, 'เมนบอร์ด', 'Mainboard', '2021-12-04 15:51:21', '2021-12-04 15:51:21'),
(8, 'ฮีตซิงค์', 'Heat Sink', '2021-12-04 15:51:43', '2021-12-04 15:51:43'),
(9, 'จอคอม', 'Monitor', '2021-12-04 15:52:02', '2021-12-04 15:52:02'),
(10, 'พาวเวอร์ซัพพลาย', 'Power Supply', '2021-12-04 15:52:20', '2021-12-04 15:52:20'),
(11, 'แป้นพิมพ์', 'Keyboard', '2021-12-04 15:52:40', '2021-12-04 15:58:05'),
(12, 'เมาส์', 'Mouse', '2021-12-04 15:53:18', '2021-12-04 15:53:18'),
(13, 'กล้องวงจรปิด', 'CCTV', '2021-12-04 15:53:37', '2021-12-04 15:53:37'),
(14, 'หูฟัง', 'Headset/Headphone', '2021-12-04 16:10:59', '2021-12-04 16:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `content_id` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `engname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `web_logo` varchar(255) NOT NULL,
  `head_logo` varchar(255) NOT NULL,
  `authen_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`content_id`, `name`, `engname`, `email`, `phone`, `address`, `web_logo`, `head_logo`, `authen_logo`) VALUES
(1, 'บริษัทคอมพิวเตอร์ฮาร์ดแวร์เฮาส์', 'Computer Hardware House', 'chhcompany@gmail.com', '02-222-2222', '111111111111111111', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2021_11_25_094918_add_admin_feild', 3),
(6, '2021_11_27_204911_create_products_table', 4),
(7, '2021_11_27_205345_create_categories_table', 4),
(8, '2021_12_02_133756_create_services_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `category_id`, `name`, `details`, `price`, `special_price`, `image`, `created_at`, `updated_at`) VALUES
(1, 10, 'NUBWO NPS-030 550 WATT (550W)', 'รับประกัน 1 ปี', '490', '', 'wdIRh89GDQ.jpg', '2021-12-04 15:54:36', '2021-12-04 15:54:36'),
(2, 9, 'Samsung S27B550V 27\" (VGA,60Hz)', 'รับประกัน 1 เดือน สินค้ามือสอง', '3000', '', 'NOPIC.jpg', '2021-12-04 15:55:19', '2021-12-04 15:55:19'),
(3, 11, 'Signo KB-712 Illuminated', 'รับประกัน 1 เดือน , สวิตช์: Rubberdome , สี: RGB , เอฟเฟคสี: 3 โหมด', '490', '', 'Ukb85ATHVp.jpg', '2021-12-04 15:58:49', '2021-12-04 15:58:49'),
(4, 3, 'ASUS GTX 1060 6GB GDRR5 OC', 'รับประกัน 1 เดือน , DirectX12 & OpenGL 4.5 Support', '11000', '', 'jWssyIkN0j.jpg', '2021-12-04 15:59:55', '2021-12-04 15:59:55'),
(5, 2, 'AMD Athlon 3000G 3.5Ghz', 'รับประกัน 2 ปี , 2C/4T , AM4', '1800', '', 'NOPIC.jpg', '2021-12-04 16:01:19', '2021-12-04 16:01:19'),
(6, 2, 'Intel i3-9100F Gen 9 3.6Ghz 6MB', 'รับประกัน 1 ปี LGA1151', '1900', '', 'W8JjXiAJul.jpg', '2021-12-04 16:02:00', '2021-12-04 16:02:00'),
(7, 2, 'Intel i5-9400F Gen 9 2.9Ghz 9MB', 'รับประกัน 1 ปี , สินค้ามือสอง , LGA1151', '3500', '', 'MVHLRY5rEy.jpg', '2021-12-04 16:02:43', '2021-12-04 16:02:43'),
(8, 7, 'Gigabyte H310M DS2 2.0', 'รับประกัน 1 ปี , รองรับ: Intel Gen 8 , LGA1151 , 2DIMMs , 2Pcle 2.0 x1 , 4*SATA3', '1390', '', 'irUNMxjnjG.jpg', '2021-12-04 16:03:39', '2021-12-04 16:03:53'),
(9, 12, 'Scorpton M425GP 3200DPI', 'รับประกัน 3 เดือน สี: Rainbow , Interface: USB 2.0', '450', '', 'Y5QVqQrA2n.jpg', '2021-12-04 16:04:45', '2021-12-04 16:04:45'),
(10, 6, 'WD Green SN350 480GB 8GB/s (NVMe,M.2)', 'รับประกัน 3 เดือน PCle Gen3 , อ่าน: 2,400 MB/s , เขียน: 1,650 MB/s', '1999', '', 'JepxvDOrZo.jpg', '2021-12-04 16:05:53', '2021-12-04 16:05:53'),
(11, 6, 'WD Green SATA SSD 240GB', 'รับประกัน 3 เดือน , อ่าน: 545MB/s , เขียน: N/A', '1200', '', 'MHwRaSltdU.jpg', '2021-12-04 16:06:32', '2021-12-04 16:06:32'),
(12, 13, 'HIKVISION Q1 Network Lens 2.8 MM', 'รับประกัน 1 ปี', '1800', '', 'ILYcrzguVS.jpg', '2021-12-04 16:06:52', '2021-12-04 16:07:02'),
(13, 8, 'Tusnami Super Storm TSS-8000 95W', 'รับประกัน 1 ปี', '550', '', 'dVy9O0frpm.jpg', '2021-12-04 16:07:30', '2021-12-04 16:07:30'),
(14, 4, 'Corsiar DDR4 8GB 2666MHz', 'รับประกัน 1 ปี', '2100', '', 'HZHhhgbzAG.jpg', '2021-12-04 16:08:33', '2021-12-04 16:08:33'),
(15, 6, 'HIKVISION C100 SATA 240GB 6GB/s', 'รับประกัน 1 ปี', '1390', '', 'bbdT1Fq2pt.jpg', '2021-12-04 16:08:56', '2021-12-04 16:08:56'),
(16, 6, 'GALAX SATA 240GB 6GB', 'รับประกัน 1 ปี', '1390', '', '6hjmkNQR4K.jpg', '2021-12-04 16:09:27', '2021-12-04 16:09:27'),
(17, 6, 'BIOSTAR S160 SATA 256GB 6GB', 'รับประกัน 1 ปี', '1390', '', 'u36KgUlRGU.jpg', '2021-12-04 16:10:05', '2021-12-04 16:10:05'),
(18, 14, 'JBL หูฟังไร้สาย TUNE 220TWS', 'รับประกัน 1 ปี , ใช้ได้นานสูงสุด 19 ชั่วโมง', '550', '', 'ncXd0p9exG.jpg', '2021-12-04 16:12:09', '2021-12-04 16:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `promotes`
--

CREATE TABLE `promotes` (
  `promote_id` bigint(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotes`
--

INSERT INTO `promotes` (`promote_id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'flash sale', 'RPvQS8FMub.jpg', '2021-12-07 04:27:36', '2021-12-09 07:25:02', NULL),
(2, 'headset', '2wOAjOUPpa.jpg', '2021-12-07 04:27:47', '2021-12-07 04:55:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `email_verified_at`, `address`, `phone`, `password`, `Admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'CHH', 'Company', 'admin@gmail.com', NULL, NULL, NULL, '$2y$10$FZ5BXhOnLT6cC/QELPrxxOx0k7YYTQ8s2T2cog6.Z2e03XT.y4OSi', 0, NULL, '2022-01-27 05:55:42', '2022-01-27 05:55:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `promotes`
--
ALTER TABLE `promotes`
  ADD PRIMARY KEY (`promote_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `content_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `promotes`
--
ALTER TABLE `promotes`
  MODIFY `promote_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
