-- phpMyAdmin SQL Dump
-- version 4.9.7deb1bionic1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2020 at 07:30 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cknin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `role_id`, `name`, `gender`, `phone`) VALUES
(1, 3, 1, '3', 'Male', '0170000000'),
(2, 5, 1, '5', 'Male', '01843870242');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hospital', 'hospital', '2020-11-21 19:57:16', '2020-11-21 19:57:16', NULL),
(2, 'Pharmacy', 'pharmacy', '2020-11-21 19:57:16', '2020-11-21 19:57:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `role_id`, `name`, `gender`, `speciality`, `phone`) VALUES
(1, 1, 2, '1', 'Male', 'medicine', '01754689260'),
(2, 6, 2, '6', 'Male', 'medicine', '01475666');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_pharmacies`
--

CREATE TABLE `hospitals_pharmacies` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hospitals_pharmacies`
--

INSERT INTO `hospitals_pharmacies` (`id`, `category_id`, `name`, `description`, `address`, `latitude`, `longitude`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Armed force Medical College', 'This is a military medical college.', 'Armed Forces Medical College, Dhaka, Bangladesh', '23.8183247', '90.4076656', 1, '2020-11-22 06:48:40', '2020-11-22 06:48:40', NULL),
(2, 1, 'Ibn Sina Diagnostic and Imaging Center', 'This is Ibn Sina Diagnostic and Imaging Center', 'Ibn Sina Diagnostic and Imaging Center (Dhanmondi 9A), Dhaka, Bangladesh', '23.745376', '90.37228189999999', 1, '2020-12-05 06:27:43', '2020-12-05 06:27:43', NULL),
(3, 2, 'Tamanna Pharmacy', 'Tamanna pharmacy leading good customer feedback.', 'Tamanna Pharmacy, Bashundhara Road, Dhaka, Bangladesh', '23.8119142', '90.43067800000001', 1, '2020-11-22 02:52:03', '2020-11-22 02:52:03', NULL),
(4, 1, 'Kurmitola General Hospital', 'Description', 'Near Zia Colony MP Check Post, Opposite Radisson Blu, Cantonment, Dhaka 1206', '23.818429025925393', '90.40765614701024', 1, '2020-12-10 16:43:25', '2020-12-10 16:43:25', NULL),
(5, 1, 'Dhaka Medical College', 'description', 'Secretariat Rd, Dhaka 1000', '23.7414133990945', '90.39854007802928', 1, '2020-12-11 11:28:54', NULL, '2020-12-11 11:28:54'),
(6, 2, 'Lazz Pharma', 'It\'s a popular pharmacy in Uttara.', 'Opposite Bangladesh Medical, 39 Sonargaon Janapath, Dhaka 1230', '23.879877528524414', '90.39632708190538', 1, '2020-12-12 18:50:58', '2020-12-12 18:50:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `location_title` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coords_lat` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coords_lng` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressline1` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressline2` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_28_224508_create_locations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `user_id`, `role_id`, `name`, `age`, `gender`, `religion`, `marital_status`, `phone`, `address`) VALUES
(5, 4, 3, 'Iftehar Alam', 25, 'Male', 'islam', 'married', '46434565', 'Bashundhara'),
(6, 7, 3, 'User', 25, 'Male', 'islam', 'married', '234567', 'banani');

-- --------------------------------------------------------

--
-- Table structure for table `patient_requests`
--

CREATE TABLE `patient_requests` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `type` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient_requests`
--

INSERT INTO `patient_requests` (`id`, `patient_id`, `type`, `name`, `address`, `description`, `reason`, `created_at`, `updated_at`) VALUES
(4, 5, 'hospital', 'Armed force Medical College', 'Armed Forces Medical College, Dhaka, Bangladesh', 'This is a military medical college.', 'reason', '2020-12-07 05:24:16', '2020-12-07 05:24:16'),
(11, 5, 'pharmacy', 'Tamanna pharmacy', 'bashundhara,Dhaka,Bangladesh', 'Tamanna pharmacy', 'pharmacy reason', '2020-12-09 22:21:47', '2020-12-09 22:21:47'),
(12, 4, 'Hospital', 'Armed force Medical College', 'Armed Forces Medical College, Dhaka, Bangladesh', 'This is a military medical college.', 'here\'s the reason', '2020-12-10 10:26:53', '2020-12-10 10:26:53'),
(13, 4, 'Pharmacy', 'Tamanna Pharmacy', 'Tamanna Pharmacy, Bashundhara Road, Dhaka, Bangladesh', 'Tamanna pharmacy leading good customer feedback.', 'Medicine request', '2020-12-10 10:35:51', '2020-12-10 10:35:51'),
(14, 5, 'Pharmacy', 'Lazz Pharma', 'Opposite Bangladesh Medical, 39 Sonargaon Janapath, Dhaka 1230', 'It\'s a popular pharmacy in Uttara.', 'i need Napa tablet.,', '2020-12-12 13:21:05', '2020-12-12 13:21:05'),
(15, 5, 'Pharmacy', 'Lazz Pharma', 'Opposite Bangladesh Medical, 39 Sonargaon Janapath, Dhaka 1230', 'It\'s a popular pharmacy in Uttara.', 'medicine name', '2020-12-12 13:21:37', '2020-12-12 13:21:37'),
(16, 5, 'Pharmacy', 'Lazz Pharma', 'Opposite Bangladesh Medical, 39 Sonargaon Janapath, Dhaka 1230', 'It\'s a popular pharmacy in Uttara.', 'medicine name 2', '2020-12-12 13:22:36', '2020-12-12 13:22:36'),
(17, 5, 'Hospital', 'Dhaka Medical College', 'Secretariat Rd, Dhaka 1000', 'description', 'I need urgent appointment of dr. xyz', '2020-12-12 13:24:24', '2020-12-12 13:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2020-12-09 19:27:13', '2020-12-09 19:27:13'),
(2, 'doctor', 'Doctor', '2020-12-09 19:27:13', '2020-12-09 19:27:13'),
(3, 'patient', 'Patient', '2020-12-09 19:27:13', '2020-12-09 19:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `sample_collection`
--

CREATE TABLE `sample_collection` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `sample_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sample_collection`
--

INSERT INTO `sample_collection` (`id`, `patient_id`, `sample_info`, `created_at`, `updated_at`) VALUES
(6, 5, 'Please collect corona sample from my address.', NULL, NULL),
(10, 4, 'i need some medicine related to corona.', NULL, NULL),
(11, 6, 'Please collect my sample.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int DEFAULT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `address_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Najmul Haque', 'najmulhoq95@gmail.com', NULL, NULL, '$2y$10$rHHf6l559g0.S5vqQQXDye3t.S7WYx1AyMbmI8buBrYuAU57gZTju', NULL, '2020-11-20 16:16:19', '2020-11-20 16:16:19'),
(3, 1, 'Admin', 'admin@admin.com', NULL, NULL, '$2y$10$ETVV1ytAKlIqgmkHiSvjE.L9KgnZ58zXlizFtZy2cyRp.Gleb3bM6', NULL, '2020-12-09 14:14:09', '2020-12-09 14:14:09'),
(4, 3, 'Iftehar Alam', 'iftehar@gmail.com', NULL, NULL, '$2y$10$0PmfHMPd66ZZRiQafqrX/uK9PebFOOXxSRgpyv3mECTAxoibjM09C', NULL, '2020-12-10 10:06:46', '2020-12-10 10:06:46'),
(5, 1, 'Hasibur Fahim', 'fahim@gmail.com', NULL, NULL, '$2y$10$KT2QwYVVm69zEGmcWeaCU.UNzLtfBRRZI/dHdGPrpZs6Wp8uuFrOu', NULL, '2020-12-10 10:32:12', '2020-12-10 10:32:12'),
(6, 2, 'doctor', 'doctor@gmail.test', NULL, NULL, '$2y$10$Wo6LVr/p1aZURymh1HiQJu2SH.iO34LfZJ2w/9WjATfLxEg4YpWCq', NULL, '2020-12-10 11:16:59', '2020-12-10 11:16:59'),
(7, 3, 'User', 'user@gmail.test', NULL, NULL, '$2y$10$J62WteEEKmAWkyOsTPjT2OGBvo7LJ4kSelGYwkbWnbNiZxvWu.13y', NULL, '2020-12-12 12:33:39', '2020-12-12 12:33:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_pharmacies`
--
ALTER TABLE `hospitals_pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_requests`
--
ALTER TABLE `patient_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample_collection`
--
ALTER TABLE `sample_collection`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals_pharmacies`
--
ALTER TABLE `hospitals_pharmacies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_requests`
--
ALTER TABLE `patient_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sample_collection`
--
ALTER TABLE `sample_collection`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
