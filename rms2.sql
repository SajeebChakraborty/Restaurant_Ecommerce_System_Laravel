-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vd_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `image1`, `image2`, `image3`, `youtube_link`, `vd_image`, `created_at`, `updated_at`) VALUES
(1, 'We Leave A Delicious Memory For You', 'Midway Cafe is one of the best restaurant HTML templates with Bootstrap v4.5.2 CSS framework. You can download and feel free to use this website template layout for your restaurant business. You are allowed to use this template for commercial purposes. You are NOT allowed to redistribute the template ZIP file on any template donwnload website. Please contact us for more information.', 'about-thumb-01.jpg', 'about-thumb-02.jpg', 'about-thumb-03.jpg', 'https://www.youtube.com/embed/eMF9tfxigGw', 'about-video-bg.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'slide-01.jpg', NULL, NULL),
(2, 'slide-02.jpg', NULL, NULL),
(3, 'slide-03.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` decimal(6,0) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `quantity` decimal(6,0) NOT NULL,
  `subtotal` decimal(6,2) NOT NULL,
  `product_order` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `name`, `price`, `quantity`, `subtotal`, `product_order`, `coupon_id`, `shipping_address`, `pay_method`, `invoice_no`, `delivery_time`, `purchase_date`, `created_at`, `updated_at`) VALUES
(8, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(9, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(10, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'delivery', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', '5fi3xq0a', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(11, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'x9hdnqzf', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL),
(12, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'yes', NULL, NULL, 'Online Payment', 'of9h0n4e', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL),
(14, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'yes', NULL, NULL, 'Online Payment', 'p5tk1wv6', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL),
(16, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(17, '3', '3', 'Blueberry Cake', '650.00', '2', '1300.00', 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(18, '3', '2', 'Klassy Pancake', '450.00', '7', '3150.00', 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(19, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(20, '3', '3', 'Blueberry Cake', '650.00', '3', '1950.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(21, '3', '4', 'Klassy Cup Cake', '80.00', '4', '320.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(22, '3', '7', 'Orange Juice', '90.00', '3', '270.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(23, '3', '8', 'Dollma Pire', '190.00', '2', '380.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(24, '3', '5', 'Fresh Chicken Salad', '320.00', '2', '640.00', 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(25, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'yes', NULL, NULL, 'Online Payment', 'nogi0754', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(26, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'cancel', NULL, NULL, 'Online Payment', 'jxab5khm', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(27, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'm7ib0dw6', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(28, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'yes', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'q0d6h42w', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(29, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'delivery', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '483pkznj', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(30, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'delivery', NULL, NULL, 'Online Payment', '58fsclp4', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(31, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'cancel', NULL, NULL, 'Online Payment', 'mqnd8t0b', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(32, '3', '3', 'Blueberry Cake', '650.00', '1', '650.00', 'approve', NULL, NULL, 'Online Payment', 'kxosm7rh', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL),
(33, '5', '1', 'Chocolate Cake', '220.00', '5', '1100.00', 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '3', '1', 'Chocolate Cake', '220.00', '9', '1980.00', 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '4h1a2fij', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(38, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(39, '3', '2', 'Klassy Pancake', '450.00', '2', '900.00', 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(40, '3', '2', 'Klassy Pancake', '450.00', '1', '450.00', 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '4enzdl9h', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(41, '3', '2', 'Klassy Pancake', '450.00', '2', '900.00', 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(42, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(43, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'l7pfcejb', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(45, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'b9kic20v', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(46, '3', '2', 'Klassy Pancake', '450.00', '1', '450.00', 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(47, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL),
(48, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'delivery', 'ED25', NULL, 'Online Payment', 'cimkhv5t', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(49, '3', '4', 'Klassy Cup Cake', '80.00', '2', '160.00', 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'efmyq64p', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(51, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL),
(52, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL),
(53, '3', '1', 'Chocolate Cake', '220.00', '2', '440.00', 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(54, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(55, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(56, '3', '1', 'Chocolate Cake', '220.00', '2', '440.00', 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL),
(57, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL),
(59, '11', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'yes', 'ED25', NULL, 'Online Payment', 'emw2jfl4', '3 hours', '2022-07-30', NULL, NULL),
(60, '11', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'yes', NULL, 'Bangladesh', 'Online Payment', 'q09vef8k', '3 hours', '2022-07-30', NULL, NULL),
(61, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL),
(62, '3', '1', 'Chocolate Cake', '220.00', '1', '220.00', 'yes', 'ED60', NULL, 'Online Payment', 'xi5ptgl7', '3 hours', '2022-08-27', NULL, NULL),
(63, '3', '11', 'Pastry Cake', '120.00', '4', '480.00', 'delivery', 'ED60', 'Bogura', 'Cash On Delivery', 'x3w8ibaq', 'August 27, 2022, 16:50:00pm', '2022-08-27', NULL, NULL),
(64, '3', '4', 'Klassy Cup Cake', '80.00', '1', '80.00', 'approve', 'ED26', NULL, 'Online Payment', 'horwqpen', 'September 23, 2022, 13:50:00pm', '2022-09-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Shipping Charge', '30', NULL, NULL),
(5, 'VAT', '20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chefs`
--

INSERT INTO `chefs` (`id`, `name`, `job_title`, `image`, `facebook_link`, `twitter_link`, `instragram_link`, `created_at`, `updated_at`) VALUES
(1, 'Randy Walker', 'Pastry Chef', 'chefs-01.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
(2, 'David Martin', 'Cookie Chef', 'chefs-02.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
(3, 'Peter Perkson', 'Pancake Chef', 'chefs-03.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `details`, `code`, `percentage`, `validate`, `created_at`, `updated_at`) VALUES
(1, 'Eid Offer', 'For Eid 20% Discount', 'ED25', '20', '2022-08-30', NULL, NULL),
(7, 'Eid offer 2', '25% offer', 'ED26', '25', '2022-09-31', NULL, NULL),
(9, 'Tresna offer', 'NSDFKJNAJFNAKJF', 'ED60', '60', '2022-08-31', NULL, NULL);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_09_04_214714_create_sessions_table', 1),
(15, '2022_03_30_074545_create_carts_table', 1),
(16, '2022_03_31_094116_create_products_table', 1),
(17, '2022_07_19_161104_create_chefs_table', 2),
(18, '2022_07_19_161656_create_reservations_table', 3),
(19, '2022_07_19_182521_create_about_us_table', 4),
(20, '2022_07_19_182815_create_banners_table', 4),
(21, '2022_07_21_053941_create_rate_table', 5),
(23, '2022_07_24_050449_create_coupon_table', 6),
(24, '2022_07_24_092615_create_charge_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(7, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6253289de6e6d', 'BDT'),
(8, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625328ad4732b', 'BDT'),
(9, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625328c0cba55', 'BDT'),
(10, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6255998383b32', 'BDT'),
(11, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625599c606193', 'BDT'),
(12, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559a9a8d868', 'BDT'),
(13, 'ro', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559b3b190e4', 'BDT'),
(14, 'user', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559cdf6055b', 'BDT'),
(15, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559e9d33954', 'BDT'),
(16, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559eb3a5b05', 'BDT'),
(17, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559edae9f87', 'BDT'),
(18, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559eebb8dde', 'BDT'),
(19, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559f400624a', 'BDT'),
(20, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559f7bca420', 'BDT'),
(21, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559ffc6f87f', 'BDT'),
(22, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255a06aba94b', 'BDT'),
(23, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255a1ae03f38', 'BDT'),
(24, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255b9d750314', 'BDT'),
(25, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255beb9aec5c', 'BDT'),
(27, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fb4d5f4cf', 'BDT'),
(28, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fb934d02a', 'BDT'),
(29, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fc95a4e54', 'BDT'),
(30, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fd4d6c17d', 'BDT'),
(31, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fe0c33d6c', 'BDT'),
(32, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fe5bcf899', 'BDT'),
(33, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fe86ef143', 'BDT'),
(34, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258ff5709cad', 'BDT'),
(35, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258ff5a8067e', 'BDT'),
(36, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6259004a44c40', 'BDT'),
(37, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d5af2789bfd', 'BDT'),
(38, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5af8373a42', 'BDT'),
(39, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5af8948b53', 'BDT'),
(40, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d5d78cb5187', 'BDT'),
(41, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5e2ec5fc13', 'BDT'),
(42, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d9242c05d04', 'BDT'),
(43, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d9255abc6d3', 'BDT'),
(44, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d925939e6a4', 'BDT'),
(45, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d925e07f16a', 'BDT'),
(46, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d9271085531', 'BDT'),
(47, NULL, 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fb7e1224b', 'BDT'),
(48, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fb90c42af', 'BDT'),
(49, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fbb3cf1ba', 'BDT'),
(50, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fc21c9444', 'BDT'),
(51, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fcaf11ec7', 'BDT'),
(52, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d900bc83905', 'BDT'),
(53, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d900d7e12d7', 'BDT'),
(54, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, NULL, 'Pending', '62d90176ec6fd', 'BDT'),
(55, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '62d903ddd075e', 'BDT'),
(56, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '62d904e841ae8', 'BDT'),
(57, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'd2heczba', 'BDT'),
(58, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'ank14e8y', 'BDT'),
(59, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'of9h0n4e', 'BDT'),
(60, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'p5tk1wv6', 'BDT'),
(61, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Failed', 'ovsw12c7', 'BDT'),
(62, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'etmb2jxz', 'BDT'),
(63, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', '4qvm3iap', 'BDT'),
(64, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', 'tviy8nza', 'BDT'),
(65, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', 'kp79v4ta', 'BDT'),
(66, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'nogi0754', 'BDT'),
(67, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'jxab5khm', 'BDT'),
(68, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'yabew1j5', 'BDT'),
(69, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '58fsclp4', 'BDT'),
(70, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'mqnd8t0b', 'BDT'),
(71, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'kxosm7rh', 'BDT'),
(72, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 1120, NULL, 'Pending', '26qmh09l', 'BDT'),
(73, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 896, NULL, 'Pending', 'pdyeo6b5', 'BDT'),
(74, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 576, NULL, 'Pending', '3amy2pik', 'BDT'),
(75, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'cimkhv5t', 'BDT'),
(76, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'ryf2gnve', 'BDT'),
(77, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', '5wroid91', 'BDT'),
(78, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'o8zad49h', 'BDT'),
(79, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'on19ra8l', 'BDT'),
(80, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', '6k2qtrsm', 'BDT'),
(81, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'emw2jfl4', 'BDT'),
(82, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'h3rfl512', 'BDT'),
(83, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'pam5ogri', 'BDT'),
(84, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'k8nbhm4a', 'BDT'),
(85, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'p8oy5rkj', 'BDT'),
(86, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'e2v3sdnq', 'BDT'),
(87, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'jynb2s4d', 'BDT'),
(88, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'o5cdw8g9', 'BDT'),
(89, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'vfn287cd', 'BDT'),
(90, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'sorc9nal', 'BDT'),
(91, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'bcfsd9az', 'BDT'),
(92, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'hvymj6o8', 'BDT'),
(93, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'jcr6h42n', 'BDT'),
(94, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'k0owpr8e', 'BDT'),
(95, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'agwvbkjz', 'BDT'),
(96, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '8f5grzo7', 'BDT'),
(97, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'le9at0bm', 'BDT'),
(98, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'fnr49g21', 'BDT'),
(99, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'o7p93kc5', 'BDT'),
(100, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '1otyr8mh', 'BDT'),
(101, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'nrdqe108', 'BDT'),
(102, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'af7gc0zk', 'BDT'),
(103, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'he0xwryb', 'BDT'),
(104, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'hkp2bvni', 'BDT'),
(105, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '8s1amteq', 'BDT'),
(106, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'i6fyr5ob', 'BDT'),
(107, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'pjrd79vn', 'BDT'),
(108, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'xarfbg06', 'BDT'),
(109, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '3y9k2qc7', 'BDT'),
(110, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'sm1xl9i6', 'BDT'),
(111, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '3jsavhdb', 'BDT'),
(112, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'q3hwfgrs', 'BDT'),
(113, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '98pl5v3r', 'BDT'),
(114, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'e6ox5zct', 'BDT'),
(115, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'bzq13n0m', 'BDT'),
(116, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'q09vef8k', 'BDT'),
(117, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'rw0l9yfg', 'BDT'),
(118, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', '2ig9ob3c', 'BDT'),
(119, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'ie2mws1b', 'BDT'),
(120, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'pqgc532i', 'BDT'),
(121, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'jrtc8q1o', 'BDT'),
(122, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'joz1g237', 'BDT'),
(123, 'robin', 'robincb.symphony@gmail.com', '01824072334', 148, NULL, 'Pending', 'xi5ptgl7', 'BDT'),
(124, 'robin', 'robincb.symphony@gmail.com', '01824072334', 110, NULL, 'Pending', 'horwqpen', 'BDT');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` int(11) NOT NULL,
  `available` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `catagory`, `session`, `available`, `created_at`, `updated_at`) VALUES
(1, 'Chocolate Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', 'menu-item-01.jpg', '220', 'regular', 0, 'Stock', NULL, NULL),
(2, 'Klassy Pancake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', 'menu-item-02.jpg', '450', 'regular', 0, 'Stock', NULL, NULL),
(3, 'Blueberry Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', 'menu-item-04.jpg', '650', 'regular', 0, 'Out Of Stock', NULL, NULL),
(4, 'Klassy Cup Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '733624453.jpg', '80', 'regular', 0, 'Stock', NULL, NULL),
(5, 'Fresh Chicken Salad', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-01.png', '320', 'special', 0, 'Out Of Stock', NULL, NULL),
(6, 'Eggs Omelette', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-04.png', '25', 'special', 0, 'Out Of Stock', NULL, NULL),
(7, 'Orange Juice', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-02.png', '90', 'special', 1, 'Out Of Stock', NULL, NULL),
(8, 'Dollma Pire', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-05.png', '190', 'special', 2, 'Out Of Stock', NULL, NULL),
(11, 'Pastry Cake', 'kub muja', '1825744018.JPG', '120', 'regular', 0, 'Stock', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `product_id`, `star_value`, `created_at`, `updated_at`) VALUES
(11, '3', '2', '3', NULL, NULL),
(15, '5', '2', '2', NULL, NULL),
(16, '3', '6', '5', NULL, NULL),
(17, '3', '4', '3', NULL, NULL),
(18, '3', '5', '3', NULL, NULL),
(19, '3', '1', '4', NULL, NULL),
(20, '3', '3', '3', NULL, NULL),
(21, '3', '11', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_guest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `no_guest`, `date`, `time`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'rgrghrhre', NULL, NULL),
(2, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'gegeg', NULL, NULL),
(3, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '28.07.2022', 'Lunch', 'dsvfdvb', NULL, NULL),
(4, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(5, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(6, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(7, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(8, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(9, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
(10, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
(11, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
(12, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
(13, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
(14, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
(15, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
(16, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
(17, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
(18, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(19, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(20, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(21, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(22, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(23, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(24, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(25, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(26, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(27, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(28, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(29, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(30, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(31, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(32, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(33, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
(34, 'Tresna Rani', 'tresna312@gmail.com', '01737336101', '12', '28.08.2022', 'Lunch', 'poribash zeno cool thaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('7G1rXVX0oorWxt48fdAF4WMaN97yxEcDUV8MHtcY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1NOS0taeFBQVXpObWlINVp3N01Vc1R4a3JwY1lwMUJST2lDSUE4SSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1662399583),
('GXyK8hlrwC5b9J6gdxeKBXjl0NsyyZXaGGCJm4IR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pOMWhiNHNBa3ViQTNrRFlUcXpiU3pZS0JZWlU4eEZkOUpoa1g3ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1664097515),
('m4uCOcwBmmLcNto3Zk4a95HDe2kd9MRClNRtwQl4', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicmJHb2R4UDk0V3VCY3VmMjFmTDNzNWFLTEs5Um1nNnRDNUpyUmZCTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yYXRlL3NjcmlwdC5qcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRNM21zRDdUZUFXcjZ0L1pmODQ5cU91Qk9XWWR2NUlpaXZiRG9uamN3WmkuQlY4WkJac05NYSI7czo1OiJ0b3RhbCI7ZDoxMTA7czoxMDoicHJvZHVjdF9pZCI7aToyO30=', 1663916059);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `salary`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'robin', 'robincb.symphony@gmail.com', '01824072334', NULL, '0', NULL, '$2y$10$M3msD7TeAWr6t/Zf849qOuBOWYdv5IiivbDonjcwZi.BV8ZBZsNMa', NULL, NULL, '0dAZOIaT06cAyULOuzKBXC61XSUyOMMGXy801LDMdot5VpeYzfwPU5o2lUcC', NULL, NULL, NULL, '2022-07-24 06:56:10'),
(11, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', '90000', '1', NULL, '$2y$10$hYD4ja7c3sjoHZr2uRVgVu4HS0na31TV0Nz.gHQAD8ve0P6ej82k.', NULL, NULL, NULL, NULL, '1250259143.jpg', NULL, NULL),
(14, 'Sudarshan Chakraborty', 'sudarshan.symphony@gmail.com', '01770277098', '35000', '3', NULL, '$2y$10$xcWkHp3nGbvbj42NzRAupO.whJElFYcAxqfgIT31EmVMgRH5aeYf.', NULL, NULL, NULL, NULL, '2023444275.jpg', NULL, NULL),
(18, 'Jakes', 'sajeebchakraborty.cse2000@gmail.com', '01325040309', '14000', '2', NULL, '$2y$10$9KlMk34Fq7EEdlU8/FifROxrBQMc/8Hfqozhc3rKtWyEx.PlgRAXS', NULL, NULL, NULL, NULL, '1266291463.jpg', NULL, NULL),
(19, 'Tresna Rani', 'tresna312@gmail.com', '1737336069', '250000', '1', NULL, '$2y$10$pkC3xdN8rcrUVPhaH5klyOWwpYLEGZnu4WLKFKInGK3sBb6NcE1Fi', NULL, NULL, NULL, NULL, '900546987.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
