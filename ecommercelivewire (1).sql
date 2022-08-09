-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 11:22 AM
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
-- Database: `ecommercelivewire`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 'hfyjghulkl', 1, 2, '2022-08-09 07:15:57', '2022-08-09 07:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_01_25_153606_create_sessions_table', 1),
(5, '2021_07_03_1006_create_users_table', 1),
(6, '2021_11_14_161805_create_rate_limits_table', 1),
(7, '2021_11_15_103143_create_rate_limit_details_table', 1),
(8, '2022_02_10_074856_create_report_errors_table', 1),
(9, '2022_08_08_172608_create_posts_table', 1),
(10, '2022_08_09_080611_create_comments_table', 2),
(11, '2022_08_09_084147_create_user_posts_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, '2222222222444', '2222222222222444', '2022-08-08 16:07:47', '2022-08-09 06:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `rate_limits`
--

CREATE TABLE `rate_limits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `traffic_landing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate_limits`
--

INSERT INTO `rate_limits` (`id`, `user_id`, `traffic_landing`, `domain`, `prev_link`, `ip`, `agent_name`, `browser`, `device`, `operating_system`, `code`, `country_code`, `country_name`, `note`, `created_at`, `updated_at`) VALUES
(1, NULL, 'http://127.0.0.1:8000/en/login', '', 'http://127.0.0.1:8000/en/admin/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Chrome', 'Computer', 'Windows 10', NULL, '404', 'غير محدد', NULL, '2022-08-08 15:54:51', '2022-08-08 15:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `rate_limit_details`
--

CREATE TABLE `rate_limit_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate_limit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate_limit_details`
--

INSERT INTO `rate_limit_details` (`id`, `user_id`, `rate_limit_id`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-08 15:55:01', '2022-08-08 15:55:01'),
(2, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:55:02', '2022-08-08 15:55:02'),
(3, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:55:41', '2022-08-08 15:55:41'),
(4, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:56:04', '2022-08-08 15:56:04'),
(5, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:56:44', '2022-08-08 15:56:44'),
(6, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:57:09', '2022-08-08 15:57:09'),
(7, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:58:52', '2022-08-08 15:58:52'),
(8, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:59:21', '2022-08-08 15:59:21'),
(9, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 15:59:55', '2022-08-08 15:59:55'),
(10, 1, 1, 'http://127.0.0.1:8000/en/admin/posts', '2022-08-08 16:00:04', '2022-08-08 16:00:04'),
(11, 1, 1, 'http://127.0.0.1:8000/en/admin/posts', '2022-08-08 16:00:24', '2022-08-08 16:00:24'),
(12, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 16:02:15', '2022-08-08 16:02:15'),
(13, 1, 1, 'http://127.0.0.1:8000/en/login', '2022-08-08 16:02:18', '2022-08-08 16:02:18'),
(14, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 16:02:18', '2022-08-08 16:02:18'),
(15, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-08 16:03:24', '2022-08-08 16:03:24'),
(16, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-08 16:03:30', '2022-08-08 16:03:30'),
(17, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-08 16:03:31', '2022-08-08 16:03:31'),
(18, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-08 16:03:38', '2022-08-08 16:03:38'),
(19, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-08 16:03:40', '2022-08-08 16:03:40'),
(20, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-08 16:04:52', '2022-08-08 16:04:52'),
(21, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:04:57', '2022-08-08 16:04:57'),
(22, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:04:58', '2022-08-08 16:04:58'),
(23, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:02', '2022-08-08 16:05:02'),
(24, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:03', '2022-08-08 16:05:03'),
(25, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:04', '2022-08-08 16:05:04'),
(26, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:05', '2022-08-08 16:05:05'),
(27, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:09', '2022-08-08 16:05:09'),
(28, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:10', '2022-08-08 16:05:10'),
(29, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:12', '2022-08-08 16:05:12'),
(30, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:12', '2022-08-08 16:05:12'),
(31, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:14', '2022-08-08 16:05:14'),
(32, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:05:17', '2022-08-08 16:05:17'),
(33, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-08 16:05:29', '2022-08-08 16:05:29'),
(34, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-08 16:07:01', '2022-08-08 16:07:01'),
(35, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:05', '2022-08-08 16:07:05'),
(36, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:05', '2022-08-08 16:07:05'),
(37, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:07', '2022-08-08 16:07:07'),
(38, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:07', '2022-08-08 16:07:07'),
(39, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-08 16:07:33', '2022-08-08 16:07:33'),
(40, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:38', '2022-08-08 16:07:38'),
(41, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:40', '2022-08-08 16:07:40'),
(42, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:41', '2022-08-08 16:07:41'),
(43, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:47', '2022-08-08 16:07:47'),
(44, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:48', '2022-08-08 16:07:48'),
(45, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:50', '2022-08-08 16:07:50'),
(46, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:50', '2022-08-08 16:07:50'),
(47, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-08 16:07:52', '2022-08-08 16:07:52'),
(48, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 06:04:30', '2022-08-09 06:04:30'),
(49, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 06:04:41', '2022-08-09 06:04:41'),
(50, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:04:42', '2022-08-09 06:04:42'),
(51, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:48', '2022-08-09 06:04:48'),
(52, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:48', '2022-08-09 06:04:48'),
(53, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:53', '2022-08-09 06:04:53'),
(54, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:54', '2022-08-09 06:04:54'),
(55, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:56', '2022-08-09 06:04:56'),
(56, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:57', '2022-08-09 06:04:57'),
(57, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:04:59', '2022-08-09 06:04:59'),
(58, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:31:12', '2022-08-09 06:31:12'),
(59, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:31:18', '2022-08-09 06:31:18'),
(60, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:31:19', '2022-08-09 06:31:19'),
(61, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:31:49', '2022-08-09 06:31:49'),
(62, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:31:52', '2022-08-09 06:31:52'),
(63, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:31:52', '2022-08-09 06:31:52'),
(64, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:31:59', '2022-08-09 06:31:59'),
(65, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:32:00', '2022-08-09 06:32:00'),
(66, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:32:05', '2022-08-09 06:32:05'),
(67, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:32:05', '2022-08-09 06:32:05'),
(68, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:32:15', '2022-08-09 06:32:15'),
(69, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 06:32:19', '2022-08-09 06:32:19'),
(70, 1, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 06:32:34', '2022-08-09 06:32:34'),
(71, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:32:37', '2022-08-09 06:32:37'),
(72, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:32:39', '2022-08-09 06:32:39'),
(73, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:35:20', '2022-08-09 06:35:20'),
(74, 1, 1, 'http://127.0.0.1:8000/admin/comments', '2022-08-09 06:35:22', '2022-08-09 06:35:22'),
(75, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:35:22', '2022-08-09 06:35:22'),
(76, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:25', '2022-08-09 06:35:25'),
(77, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:25', '2022-08-09 06:35:25'),
(78, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:30', '2022-08-09 06:35:30'),
(79, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:31', '2022-08-09 06:35:31'),
(80, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:33', '2022-08-09 06:35:33'),
(81, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:34', '2022-08-09 06:35:34'),
(82, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:41', '2022-08-09 06:35:41'),
(83, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:41', '2022-08-09 06:35:41'),
(84, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:43', '2022-08-09 06:35:43'),
(85, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:44', '2022-08-09 06:35:44'),
(86, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:46', '2022-08-09 06:35:46'),
(87, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:47', '2022-08-09 06:35:47'),
(88, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:48', '2022-08-09 06:35:48'),
(89, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:35:50', '2022-08-09 06:35:50'),
(90, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:36:34', '2022-08-09 06:36:34'),
(91, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:36:57', '2022-08-09 06:36:57'),
(92, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:00', '2022-08-09 06:37:00'),
(93, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:37:10', '2022-08-09 06:37:10'),
(94, 1, 1, 'http://127.0.0.1:8000/admin/comments', '2022-08-09 06:37:12', '2022-08-09 06:37:12'),
(95, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 06:37:13', '2022-08-09 06:37:13'),
(96, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:20', '2022-08-09 06:37:20'),
(97, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:23', '2022-08-09 06:37:23'),
(98, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:25', '2022-08-09 06:37:25'),
(99, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:26', '2022-08-09 06:37:26'),
(100, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:31', '2022-08-09 06:37:31'),
(101, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:32', '2022-08-09 06:37:32'),
(102, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:33', '2022-08-09 06:37:33'),
(103, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:34', '2022-08-09 06:37:34'),
(104, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:37', '2022-08-09 06:37:37'),
(105, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:38', '2022-08-09 06:37:38'),
(106, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:40', '2022-08-09 06:37:40'),
(107, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:40', '2022-08-09 06:37:40'),
(108, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 06:37:42', '2022-08-09 06:37:42'),
(109, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 06:38:10', '2022-08-09 06:38:10'),
(110, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:38:10', '2022-08-09 06:38:10'),
(111, 1, 1, 'http://127.0.0.1:8000/admin/users', '2022-08-09 06:38:13', '2022-08-09 06:38:13'),
(112, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-09 06:38:14', '2022-08-09 06:38:14'),
(113, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:17', '2022-08-09 06:38:17'),
(114, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:17', '2022-08-09 06:38:17'),
(115, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:21', '2022-08-09 06:38:21'),
(116, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:21', '2022-08-09 06:38:21'),
(117, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:30', '2022-08-09 06:38:30'),
(118, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:31', '2022-08-09 06:38:31'),
(119, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 06:38:33', '2022-08-09 06:38:33'),
(120, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 06:38:43', '2022-08-09 06:38:43'),
(121, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:38:44', '2022-08-09 06:38:44'),
(122, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 06:45:08', '2022-08-09 06:45:08'),
(123, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:45:09', '2022-08-09 06:45:09'),
(124, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 06:53:27', '2022-08-09 06:53:27'),
(125, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 06:53:27', '2022-08-09 06:53:27'),
(126, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:01:56', '2022-08-09 07:01:56'),
(127, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:02:00', '2022-08-09 07:02:00'),
(128, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:02:27', '2022-08-09 07:02:27'),
(129, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:02:29', '2022-08-09 07:02:29'),
(130, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:02:31', '2022-08-09 07:02:31'),
(131, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:02:34', '2022-08-09 07:02:34'),
(132, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:02:48', '2022-08-09 07:02:48'),
(133, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:03:44', '2022-08-09 07:03:44'),
(134, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:03:57', '2022-08-09 07:03:57'),
(135, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:04:06', '2022-08-09 07:04:06'),
(136, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:04:13', '2022-08-09 07:04:13'),
(137, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:04:25', '2022-08-09 07:04:25'),
(138, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:04:28', '2022-08-09 07:04:28'),
(139, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:04:48', '2022-08-09 07:04:48'),
(140, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:04:55', '2022-08-09 07:04:55'),
(141, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:04:58', '2022-08-09 07:04:58'),
(142, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:05:41', '2022-08-09 07:05:41'),
(143, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:05:47', '2022-08-09 07:05:47'),
(144, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:05:50', '2022-08-09 07:05:50'),
(145, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:05:52', '2022-08-09 07:05:52'),
(146, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:05:54', '2022-08-09 07:05:54'),
(147, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:05:56', '2022-08-09 07:05:56'),
(148, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:06:15', '2022-08-09 07:06:15'),
(149, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:06:17', '2022-08-09 07:06:17'),
(150, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:06:36', '2022-08-09 07:06:36'),
(151, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:06:39', '2022-08-09 07:06:39'),
(152, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:06:57', '2022-08-09 07:06:57'),
(153, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:07:04', '2022-08-09 07:07:04'),
(154, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:07:19', '2022-08-09 07:07:19'),
(155, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:07:43', '2022-08-09 07:07:43'),
(156, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:07:50', '2022-08-09 07:07:50'),
(157, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:07:54', '2022-08-09 07:07:54'),
(158, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:08:03', '2022-08-09 07:08:03'),
(159, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:08:32', '2022-08-09 07:08:32'),
(160, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:08:39', '2022-08-09 07:08:39'),
(161, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:09:19', '2022-08-09 07:09:19'),
(162, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:09:26', '2022-08-09 07:09:26'),
(163, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:09:27', '2022-08-09 07:09:27'),
(164, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:09:38', '2022-08-09 07:09:38'),
(165, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 07:10:02', '2022-08-09 07:10:02'),
(166, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 07:11:18', '2022-08-09 07:11:18'),
(167, NULL, 1, 'http://127.0.0.1:8000/en/login', '2022-08-09 07:11:40', '2022-08-09 07:11:40'),
(168, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:11:41', '2022-08-09 07:11:41'),
(169, 1, 1, 'http://127.0.0.1:8000/admin/users', '2022-08-09 07:11:46', '2022-08-09 07:11:46'),
(170, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-09 07:11:46', '2022-08-09 07:11:46'),
(171, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:11:58', '2022-08-09 07:11:58'),
(172, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:11:58', '2022-08-09 07:11:58'),
(173, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:05', '2022-08-09 07:12:05'),
(174, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:07', '2022-08-09 07:12:07'),
(175, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:07', '2022-08-09 07:12:07'),
(176, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:11', '2022-08-09 07:12:11'),
(177, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:17', '2022-08-09 07:12:17'),
(178, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:22', '2022-08-09 07:12:22'),
(179, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:28', '2022-08-09 07:12:28'),
(180, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:37', '2022-08-09 07:12:37'),
(181, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:38', '2022-08-09 07:12:38'),
(182, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:56', '2022-08-09 07:12:56'),
(183, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:12:57', '2022-08-09 07:12:57'),
(184, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:13:03', '2022-08-09 07:13:03'),
(185, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:13:03', '2022-08-09 07:13:03'),
(186, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-09 07:13:07', '2022-08-09 07:13:07'),
(187, 1, 1, 'http://127.0.0.1:8000/livewire/message/users.index', '2022-08-09 07:13:11', '2022-08-09 07:13:11'),
(188, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 07:13:26', '2022-08-09 07:13:26'),
(189, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:13:26', '2022-08-09 07:13:26'),
(190, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:33', '2022-08-09 07:13:33'),
(191, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:34', '2022-08-09 07:13:34'),
(192, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:41', '2022-08-09 07:13:41'),
(193, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:42', '2022-08-09 07:13:42'),
(194, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:44', '2022-08-09 07:13:44'),
(195, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:44', '2022-08-09 07:13:44'),
(196, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:52', '2022-08-09 07:13:52'),
(197, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:52', '2022-08-09 07:13:52'),
(198, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:54', '2022-08-09 07:13:54'),
(199, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:55', '2022-08-09 07:13:55'),
(200, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:13:57', '2022-08-09 07:13:57'),
(201, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:14:00', '2022-08-09 07:14:00'),
(202, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:14:34', '2022-08-09 07:14:34'),
(203, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:14:38', '2022-08-09 07:14:38'),
(204, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:14:54', '2022-08-09 07:14:54'),
(205, 1, 1, 'http://127.0.0.1:8000/livewire/message/post.index', '2022-08-09 07:14:57', '2022-08-09 07:14:57'),
(206, 1, 1, 'http://127.0.0.1:8000/admin/comments', '2022-08-09 07:15:15', '2022-08-09 07:15:15'),
(207, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 07:15:15', '2022-08-09 07:15:15'),
(208, 1, 1, 'http://127.0.0.1:8000/admin/post', '2022-08-09 07:15:18', '2022-08-09 07:15:18'),
(209, 1, 1, 'http://127.0.0.1:8000/en/admin/post', '2022-08-09 07:15:18', '2022-08-09 07:15:18'),
(210, 1, 1, 'http://127.0.0.1:8000/admin/comments', '2022-08-09 07:15:35', '2022-08-09 07:15:35'),
(211, 1, 1, 'http://127.0.0.1:8000/en/admin/comments', '2022-08-09 07:15:35', '2022-08-09 07:15:35'),
(212, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:15:44', '2022-08-09 07:15:44'),
(213, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:15:45', '2022-08-09 07:15:45'),
(214, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:15:57', '2022-08-09 07:15:57'),
(215, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:15:58', '2022-08-09 07:15:58'),
(216, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:00', '2022-08-09 07:16:00'),
(217, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:01', '2022-08-09 07:16:01'),
(218, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:05', '2022-08-09 07:16:05'),
(219, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:06', '2022-08-09 07:16:06'),
(220, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:08', '2022-08-09 07:16:08'),
(221, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:09', '2022-08-09 07:16:09'),
(222, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:11', '2022-08-09 07:16:11'),
(223, 1, 1, 'http://127.0.0.1:8000/livewire/message/comments.index', '2022-08-09 07:16:15', '2022-08-09 07:16:15'),
(224, 1, 1, 'http://127.0.0.1:8000/admin/users', '2022-08-09 07:16:22', '2022-08-09 07:16:22'),
(225, 1, 1, 'http://127.0.0.1:8000/admin/users', '2022-08-09 07:16:23', '2022-08-09 07:16:23'),
(226, 1, 1, 'http://127.0.0.1:8000/en/admin/users', '2022-08-09 07:16:23', '2022-08-09 07:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `report_errors`
--

CREATE TABLE `report_errors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_errors`
--

INSERT INTO `report_errors` (`id`, `user_id`, `title`, `code`, `url`, `ip`, `user_agent`, `request`, `description`, `note`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Target class [Database\\Seeders\\UserSeeder] does not exist.', '500', 'http://127.0.0.1:8000', '127.0.0.1', 'Symfony', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php Line : 877{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:53:47', '2022-08-08 15:53:47'),
(2, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.roles\' doesn\'t exist (SQL: select * from `roles`)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:55:03', '2022-08-08 15:55:03'),
(3, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.roles\' doesn\'t exist (SQL: select * from `roles`)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:55:41', '2022-08-08 15:55:41'),
(4, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.roles\' doesn\'t exist (SQL: select * from `roles`)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:56:05', '2022-08-08 15:56:05'),
(5, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.notifications\' doesn\'t exist (SQL: select * from `notifications` where `notifications`.`notifiable_type` = App\\Models\\User and `notifications`.`notifiable_id` = 1 and `notifications`.`notifiable_id` is not null order by `created_at` desc, `created_at` desc limit 50)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:56:46', '2022-08-08 15:56:46'),
(6, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.notifications\' doesn\'t exist (SQL: select * from `notifications` where `notifications`.`notifiable_type` = App\\Models\\User and `notifications`.`notifiable_id` = 1 and `notifications`.`notifiable_id` is not null order by `created_at` desc, `created_at` desc limit 50)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:57:09', '2022-08-08 15:57:09'),
(7, 1, 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ecommercelivewire.notifications\' doesn\'t exist (SQL: select * from `notifications` where `notifications`.`notifiable_type` = App\\Models\\User and `notifications`.`notifiable_id` = 1 and `notifications`.`notifiable_id` is not null order by `created_at` desc, `created_at` desc limit 50)', '500', 'http://127.0.0.1:8000/en/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 15:58:52', '2022-08-08 15:58:52'),
(8, 1, 'View [livewire.posts.index] not found.', '500', 'http://127.0.0.1:8000/en/admin/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php Line : 137{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 16:00:05', '2022-08-08 16:00:05'),
(9, 1, 'View [dashboard.post.index] not found.', '500', 'http://127.0.0.1:8000/en/admin/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php Line : 137{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 16:00:24', '2022-08-08 16:00:24'),
(10, NULL, 'View [layouts.app] not found.', '500', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '[]', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php Line : 137{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 16:00:52', '2022-08-08 16:00:52'),
(11, 1, 'Class \"App\\Http\\Livewire\\Post\\User\" not found', '500', 'http://127.0.0.1:8000/en/admin/post', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '{\"fingerprint\":{\"id\":\"AucnKCtzOaBJajlV95JV\",\"name\":\"post.index\",\"locale\":\"en\",\"path\":\"en\\/admin\\/post\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"a5d8b7cb\",\"data\":{\"AddModelOpened\":false,\"EditModelOpened\":false,\"ShowModelOpened\":false,\"dates\":null,\"active\":null,\"name\":\"1111111111133\",\"status\":null,\"data\":{\"post\":{\"current_page\":1,\"data\":[{\"id\":1,\"name\":\"1111111111133\",\"description\":\"111111111133\",\"created_at\":\"2022-08-08T18:05:02.000000Z\",\"updated_at\":\"2022-08-08T18:05:09.000000Z\"}],\"first_page_url\":\"http:\\/\\/127.0.0.1:8000\\/livewire\\/message\\/post.index?page=1\",\"from\":1,\"next_page_url\":null,\"path\":\"http:\\/\\/127.0.0.1:8000\\/livewire\\/message\\/post.index\",\"per_page\":7,\"prev_page_url\":null,\"to\":1},\"total\":1},\"post\":{\"id\":1,\"name\":\"1111111111133\",\"description\":\"111111111133\",\"created_at\":\"2022-08-08T18:05:02.000000Z\",\"updated_at\":\"2022-08-08T18:05:09.000000Z\"},\"description\":\"111111111133\",\"created_at\":\"2022-08-08\",\"u_id\":1,\"page\":1,\"paginators\":{\"page\":1}},\"dataMeta\":[],\"checksum\":\"60c7c083d5fa0ace1f3c0913e1c388ba051b7c2a2b056b135720deb2b569890a\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"0ed9\",\"method\":\"destroy\",\"params\":[1]}}]}', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\app\\Http\\Livewire\\Post\\Index.php Line : 188{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-08 16:05:17', '2022-08-08 16:05:17'),
(12, 1, 'Unable to call component method. Public method [getComment] not found on component: [comments.index]', '500', 'http://127.0.0.1:8000/en/admin/comments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '{\"fingerprint\":{\"id\":\"b9rMGiZkzdmZROTR5x6H\",\"name\":\"comments.index\",\"locale\":\"en\",\"path\":\"en\\/admin\\/comments\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"de805ff6\",\"data\":{\"AddModelOpened\":false,\"EditModelOpened\":true,\"ShowModelOpened\":false,\"dates\":null,\"comments\":null,\"comment\":null,\"post_id\":\"2\",\"data\":{\"comments\":{\"current_page\":1,\"data\":[{\"id\":1,\"comment\":\"111111111111\",\"user_id\":1,\"post_id\":2,\"created_at\":\"2022-08-09T08:32:00.000000Z\",\"updated_at\":\"2022-08-09T08:32:00.000000Z\"}],\"first_page_url\":\"http:\\/\\/127.0.0.1:8000\\/livewire\\/message\\/comments.index?page=1\",\"from\":1,\"next_page_url\":null,\"path\":\"http:\\/\\/127.0.0.1:8000\\/livewire\\/message\\/comments.index\",\"per_page\":7,\"prev_page_url\":null,\"to\":1},\"posts\":[{\"id\":2,\"name\":\"2222222222444\",\"description\":\"2222222222222444\",\"created_at\":\"2022-08-08T18:07:47.000000Z\",\"updated_at\":\"2022-08-09T08:04:53.000000Z\"}],\"total\":1},\"u_id\":null,\"page\":1,\"paginators\":{\"page\":1},\"created_at\":null},\"dataMeta\":[],\"checksum\":\"79422fddd1f87974229764db937cc36ef052e6b1a2539b908688dfeaf3bc9766\"},\"updates\":[{\"type\":\"fireEvent\",\"payload\":{\"id\":\"6w9l\",\"event\":\"getComment\",\"params\":[{\"id\":1,\"comment\":\"111111111111\",\"user_id\":1,\"post_id\":2,\"created_at\":\"2022-08-09T08:32:00.000000Z\",\"updated_at\":\"2022-08-09T08:32:00.000000Z\"}]}}]}', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\livewire\\livewire\\src\\ComponentConcerns\\HandlesActions.php Line : 144{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-09 06:32:06', '2022-08-09 06:32:06'),
(13, 1, 'SQLSTATE[23000]: Integrity constraint violation: 1451 Cannot delete or update a parent row: a foreign key constraint fails (`ecommercelivewire`.`comments`, CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)) (SQL: delete from `posts` where `id` = 2)', '500', 'http://127.0.0.1:8000/en/admin/post', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '{\"fingerprint\":{\"id\":\"Qp9fL4S9JCAk6BHUgl5e\",\"name\":\"post.index\",\"locale\":\"en\",\"path\":\"en\\/admin\\/post\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"ff8e3004\",\"data\":{\"AddModelOpened\":false,\"EditModelOpened\":false,\"ShowModelOpened\":false,\"dates\":null,\"name\":null,\"data\":{\"post\":{\"current_page\":1,\"data\":[{\"id\":2,\"name\":\"2222222222444\",\"description\":\"2222222222222444\",\"created_at\":\"2022-08-08T18:07:47.000000Z\",\"updated_at\":\"2022-08-09T08:04:53.000000Z\"}],\"first_page_url\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/post?page=1\",\"from\":1,\"next_page_url\":null,\"path\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/post\",\"per_page\":7,\"prev_page_url\":null,\"to\":1},\"total\":1},\"post\":null,\"description\":null,\"created_at\":null,\"u_id\":null,\"page\":1,\"paginators\":{\"page\":1}},\"dataMeta\":[],\"checksum\":\"959892d94731eb03fc13dafbce45ea92459ead0684c9b7d1d45e4396d3c0199f\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"mqpg\",\"method\":\"destroy\",\"params\":[2]}}]}', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php Line : 759{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-09 06:32:19', '2022-08-09 06:32:19'),
(14, 1, 'Property [$created_at] not found on component: [comments.index]', '500', 'http://127.0.0.1:8000/en/admin/comments', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '{\"fingerprint\":{\"id\":\"0OLAgOMHY33etO4thCto\",\"name\":\"comments.index\",\"locale\":\"en\",\"path\":\"en\\/admin\\/comments\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"bf3b5e57\",\"data\":{\"AddModelOpened\":false,\"EditModelOpened\":false,\"ShowModelOpened\":false,\"dates\":null,\"comments\":null,\"comment\":null,\"post_id\":null,\"data\":{\"comments\":{\"current_page\":1,\"data\":[{\"id\":2,\"comment\":\"wwwwwwww111111111\",\"user_id\":1,\"post_id\":2,\"created_at\":\"2022-08-09T08:35:30.000000Z\",\"updated_at\":\"2022-08-09T08:35:41.000000Z\"},{\"id\":1,\"comment\":\"111111111111\",\"user_id\":1,\"post_id\":2,\"created_at\":\"2022-08-09T08:32:00.000000Z\",\"updated_at\":\"2022-08-09T08:32:00.000000Z\"}],\"first_page_url\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/comments?page=1\",\"from\":1,\"next_page_url\":null,\"path\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/comments\",\"per_page\":7,\"prev_page_url\":null,\"to\":2},\"posts\":[{\"id\":2,\"name\":\"2222222222444\",\"description\":\"2222222222222444\",\"created_at\":\"2022-08-08T18:07:47.000000Z\",\"updated_at\":\"2022-08-09T08:04:53.000000Z\"}],\"total\":2},\"u_id\":null,\"page\":1,\"paginators\":{\"page\":1}},\"dataMeta\":[],\"checksum\":\"2e64d7b69d308cf2160b0c220bcb975731567c5875efed98d4c47f247c4dbfba\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"odvqj\",\"method\":\"toggleEditModal\",\"params\":[2]}}]}', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\livewire\\livewire\\src\\Component.php Line : 301{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-09 06:37:00', '2022-08-09 06:37:00'),
(15, 1, 'Call to undefined method App\\Models\\User::favorites()', '500', 'http://127.0.0.1:8000/en/admin/post', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '{\"fingerprint\":{\"id\":\"z0fPNwnydnotrQZ9jS0I\",\"name\":\"post.index\",\"locale\":\"en\",\"path\":\"en\\/admin\\/post\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"52862c6f\",\"data\":{\"AddModelOpened\":false,\"EditModelOpened\":false,\"ShowModelOpened\":false,\"dates\":null,\"name\":null,\"data\":{\"post\":{\"current_page\":1,\"data\":[{\"id\":2,\"name\":\"2222222222444\",\"description\":\"2222222222222444\",\"created_at\":\"2022-08-08T18:07:47.000000Z\",\"updated_at\":\"2022-08-09T08:04:53.000000Z\"}],\"first_page_url\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/post?page=1\",\"from\":1,\"next_page_url\":null,\"path\":\"http:\\/\\/127.0.0.1:8000\\/en\\/admin\\/post\",\"per_page\":7,\"prev_page_url\":null,\"to\":1},\"total\":1},\"post\":null,\"description\":null,\"created_at\":null,\"u_id\":null,\"page\":1,\"paginators\":{\"page\":1}},\"dataMeta\":[],\"checksum\":\"03232a546e4de86e769b4b18abe849cf6442302dedcdaf466dab172e76fb3100\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"2p46\",\"method\":\"ToggleLike\",\"params\":[2]}}]}', 'Error : E:\\xampp\\htdocs\\ecommerce\\ecommercelaravelandlivewire\\task\\ghailalathman\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php Line : 71{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', NULL, '2022-08-09 07:02:00', '2022-08-09 07:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('80zl2m7ml5Tt2XesXC5c5pf0HXk6dPRQu9jDvKET', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWU1HYWNwYXVRSDQ5Sm5nWkJQTWFWNjhJcHVKWjhHdnBpc0tITDg5byI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW4vYWRtaW4vdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6ImxvY2FsZSI7czoyOiJlbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NjAwMzIyODI7fX0=', 1660036583),
('E4M43KxzUn8yyLO44BBtR9hu1YmlohIGweoe5qT1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMDJLdzFuYkw5RzVQWGRWYkJ5WjJqa21LU2NEM2h4NjRRaWpsTzVUMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1660032269),
('zJRbPA3x5u4Vk4QHOqJCbdFHKWPg7f5ZcBEo1ROa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMTBINUdCSWpBajc3cjc5SVNGNkhpWkJZRjNvT25leFJXMHB4Ukp4SiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW4vYWRtaW4vcG9zdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjE6e2k6MDtzOjIxOiJsYXJhdmVsX2ZsYXNoX21lc3NhZ2UiO31zOjM6Im5ldyI7YTowOnt9fXM6NjoibG9jYWxlIjtzOjI6ImVuIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY2MDAzNjMwMTt9fQ==', 1660036440);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `bio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `name`, `last_name`, `address`, `phone`, `image`, `store_name`, `store_link`, `firebase_token`, `type`, `bio`, `status`, `email`, `email_verified_at`, `last_activity`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', NULL, 'AdMIN', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', NULL, 0, 'admin@admin.com', '2022-08-08 03:54:34', NULL, '$2y$10$TLBNaoahOzmKhALZGxHM1uS533kDA/U0noW7s6t3eHsZL4mkFkAim', NULL, '2022-08-08 15:54:35', '2022-08-08 15:54:35'),
(3, 'asmaa', NULL, 'karagjj', 'Quis omnis vel obcae', '8787678687686', NULL, NULL, NULL, NULL, 'USER', NULL, 1, 'quci@mailinator.com', NULL, NULL, NULL, NULL, '2022-08-09 07:12:56', '2022-08-09 07:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `rate_limits`
--
ALTER TABLE `rate_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_limits_user_id_foreign` (`user_id`),
  ADD KEY `rate_limits_ip_index` (`ip`),
  ADD KEY `rate_limits_agent_name_index` (`agent_name`),
  ADD KEY `rate_limits_browser_index` (`browser`),
  ADD KEY `rate_limits_device_index` (`device`),
  ADD KEY `rate_limits_operating_system_index` (`operating_system`),
  ADD KEY `rate_limits_created_at_index` (`created_at`);

--
-- Indexes for table `rate_limit_details`
--
ALTER TABLE `rate_limit_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_limit_details_user_id_foreign` (`user_id`),
  ADD KEY `rate_limit_details_rate_limit_id_foreign` (`rate_limit_id`),
  ADD KEY `rate_limit_details_url_index` (`url`);

--
-- Indexes for table `report_errors`
--
ALTER TABLE `report_errors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_errors_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_last_activity_index` (`last_activity`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_posts_user_id_foreign` (`user_id`),
  ADD KEY `user_posts_post_id_foreign` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rate_limits`
--
ALTER TABLE `rate_limits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rate_limit_details`
--
ALTER TABLE `rate_limit_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `report_errors`
--
ALTER TABLE `report_errors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rate_limits`
--
ALTER TABLE `rate_limits`
  ADD CONSTRAINT `rate_limits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rate_limit_details`
--
ALTER TABLE `rate_limit_details`
  ADD CONSTRAINT `rate_limit_details_rate_limit_id_foreign` FOREIGN KEY (`rate_limit_id`) REFERENCES `rate_limits` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rate_limit_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report_errors`
--
ALTER TABLE `report_errors`
  ADD CONSTRAINT `report_errors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD CONSTRAINT `user_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `user_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
