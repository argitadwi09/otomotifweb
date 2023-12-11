-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_22_023112_create_posts_table', 1),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(7, '2023_11_03_071704_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(26, 'QX5GzRGG4GJOT6cm6yueJRFg8OnH5tCjyKHiBBgW.jpg', 'FERRARI BIRU', '<p>&nbsp;Belum ada detail harga untuk mobil berwarna Blu Capri ini. 812 Competizione A dijual mulai dari &euro;578.000 (sekitar Rp9,7 miliar) di Eropa. Bisa jadi, harga untuk 812 Competizione A dengan warna Blu Capri ini lebih tinggi lagi.</p>', '2023-11-16 07:55:50', '2023-11-16 07:56:31'),
(27, 'av8518yKMAb7cbby79cznGtatjY6l45A9rB1YNzI.jpg', 'FERRARI HIJAU', '<p>Berapa harga mobil ferrari Laferrari?</p>\r\n\r\n<p>Mulai memasuki harga yang fantastis, Ferrari LaFerrari dibanderol dengan harga&nbsp;<strong>Rp22,7 miliar</strong>.</p>', '2023-11-16 07:57:37', '2023-11-16 07:57:37'),
(28, 'TvXNGpVITbllATvBEC63Tm6SJSr4wuCVk8ZRv2Y2.jpg', 'FERRARI MERAH', '<p>Warna merah digunakan untuk mobil yang dikomersilkan sebenarnya&nbsp;<strong>karena Ferrari memakai cat sisa dari mobil balapnya</strong>. Selain itu, pada tahun awal balapan,</p>', '2023-11-16 20:51:00', '2023-11-16 20:51:00'),
(29, 'UcWEATpxIjDr3kv36EiAggAiaZucwqRZvqfdEDPX.jpg', 'MOBIL FERRARI SILVER', '<p>InI Adalah Sebuah Mobil Ferrari yang berwarna silver</p>', '2023-11-21 03:11:16', '2023-11-21 03:12:07'),
(34, 'zop95vLkWU59DvZcfACWZ27LuqVZxqizZj5iYJ7e.jpg', 'Ferrari F8 Tributo', '<p>&nbsp;Mobil sport ini memiliki tipe bodi coupe yang elegan. Ditenagai oleh mesin berkapasitas 3,9 liter, Ferrari F8 Tributo mampu menghasilkan tenaga sebesar 720 PS, menjadikannya mobil sport dengan performa yang luar biasa.</p>', '2023-11-23 23:41:37', '2023-11-24 05:58:47'),
(35, 'L8eldPvGPohRFLhB394vNFUpLVwFrQpSiLepvfez.jpg', 'Ferrari 488 Spider', '<p>Supercar Ferrari 488 Spider resmi dipasarkan di Indonesia per 21 September 2016. Memulai debut di Frankfurt International Motor Show September 2015 mobil ini membenamkan mesin V8 dengan sport open-top.<br />\r\n<br />\r\n&nbsp;</p>', '2023-11-24 05:55:53', '2023-11-24 05:55:53'),
(36, 'PAaGOVitOZOvqoM0RTlNcDVlIY3p4I7RABicL53k.jpg', 'Mobil Convertible', '<p>Mobil ini diperkenalkan kepada publik untuk pertama kalinya pada 29 September 2016 di ajang Paris Motor Show, namun sebenarnya telah resmi untuk bisa dipesan pada Juli 2016.&nbsp;<br />\r\n&nbsp;</p>', '2023-11-24 06:09:03', '2023-11-24 06:09:03'),
(37, 'PbwtVTXlEmeHKRwuZlbNDfDBDWN4llLObdueFAAG.jpg', 'Bugatti La Voiture Noire', '<p>Bagi Anda yang penasaran dengan harganya, La Voiture Noire diketahui dibanderol &pound; 11 juta (sekitar Rp 222 miliar). Seluruh bodi berwarna hitam berlapis serat karbon buatan tangan, tanpa ada lekuk body dramatis khas hypercar.&nbsp;</p>', '2023-11-24 06:14:51', '2023-11-24 06:14:51'),
(38, 'vD4GogKYn3GJFiC4wAmB6qAGQuMk9TNMQIPB5gDt.jpg', 'Pagani Zonda HP Barchetta', '<p>Pagani Zonda HP Barchetta memiliki performa mesin yang mumpuni dengan mesin Mercedes-AMG V12 berkapasitas 7.3 L dengan transmisi enam percepatan sehingga menghasilkan daya maksimum sebesar 760 hp.</p>', '2023-11-24 06:16:02', '2023-11-24 06:16:02'),
(39, 'y51G275io8CKuIH4MzIWQigF7cwgxwtIgGimaSty.jpg', 'Lamborghini Veneno Roadster', '<p>Lamborghini Veneno Roadster hanya ada Sembilan di dunia sehingga menjadi incaran para kolektor. Untuk spesifikasi, mobil ini dilengkapi dengan mesin V12 dengan kapasitas 6.5L</p>', '2023-11-24 06:18:30', '2023-11-24 06:18:30'),
(40, 'EX4m3QFNJxzuduHW3zGROlXXK1ptCdM9EZ9EoTeo.jpg', 'Bugatti Divo', '<p>. Mobil ini menggunakan mesin seri Bugatti W16 dengan kapasitas 8.0L dan empat turbo yang menghasilkan tenaga 1.479 hp dan dapat berakselerasi dari 0 hingga 100 km/jam dalam waktu 2,4 detik.</p>', '2023-11-24 06:21:29', '2023-11-24 06:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5auwuNVMib3IQ93rIWeAwLLDeAl1NuuuOBC60MYg', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiT2lscEdmTHR1ZFZFbEs5OUF0M25KeTRuYkRFY2drZ0N3cWpuaUJ6WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJHpySnVkYTljLi9CMUZNcWdYajFSbi5kaVBhcnl6MWU0aklVU2lxRWZYLkNSeDRuOGNnMW0yIjtzOjE5OiJ0d29fZmFjdG9yX2VtcHR5X2F0IjtpOjE2OTg5OTY2MTY7fQ==', 1698996616);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Renata', 'Renta12@gamil.com', NULL, '$2y$10$UkpiaC1CID9tCyOtUh5J6u1RpbrmK4dggyghE76Qv1y2igVDcZbSm', NULL, NULL, NULL, NULL, '2023-10-26 23:55:45', '2023-10-26 23:55:45'),
(2, 'argita', 'ananda.lest585@gmail.com', NULL, '$2y$12$zrJuda9c./B1FMqgXj1Rn.diParyz1e4jIUSiqEfX.CRx4n8cg1m2', NULL, NULL, NULL, NULL, '2023-11-03 00:29:13', '2023-11-03 00:29:13'),
(3, 'ARGITA DWI', 'gita@gmail.com', NULL, '$2y$10$iQtVqWgJiEpe9/Aky.hIZeAv9fsTEXVBOHTpeHaulwooavh8ZxbOK', NULL, NULL, NULL, NULL, '2023-11-07 07:10:37', '2023-11-07 07:10:37'),
(8, 'ARGITA DWI', 'ouyij@gmail.com', NULL, '$2y$10$vESXyUhFUyxnXR1VuekJa.ShOiSKV17DZBywfmA80TAmukjNB2Ble', NULL, NULL, NULL, NULL, '2023-11-07 07:26:46', '2023-11-07 07:26:46'),
(9, 'Argita', 'argitad76@gmail.com', NULL, '$2y$10$U1K60I7t3TJIYLJEE2gwIOG7kXdbW1m75zE5tB563Uewe3uG6FGda', NULL, NULL, NULL, NULL, '2023-11-16 18:58:47', '2023-11-16 18:58:47'),
(14, 'YULIANA', 'argitad8@gmail.com', NULL, '$2y$10$EMQWZjpqiVHxkpiLtt/YIedWQB3.tq6GJ4t1UA4FovTVX3nanVZpG', NULL, NULL, NULL, NULL, '2023-11-16 19:32:11', '2023-11-16 19:32:11');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
