-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 04:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhelpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `barang_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `barang_name`, `kategori_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(11, 'CE505A', 1, 1, '2021-01-02 08:09:55', '2021-01-02 08:09:55'),
(12, 'CF79A', 1, 1, '2021-01-02 08:16:46', '2021-01-02 08:16:46'),
(13, 'CE36A', 1, 1, '2021-01-03 03:31:50', '2021-01-03 03:31:50'),
(16, 'Mouse Kabel', 1, 1, '2021-01-03 03:54:03', '2021-01-03 03:54:03'),
(17, 'Mouse Wireless', 5, 3, '2021-01-03 03:55:27', '2021-01-03 03:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `barang_stok`
--

CREATE TABLE `barang_stok` (
  `id` int(10) UNSIGNED NOT NULL,
  `barang_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang_stok`
--

INSERT INTO `barang_stok` (`id`, `barang_name`, `barang_category`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'CE505A', 'Toner', '5', '2021-03-05 02:02:52', '2022-12-16 04:21:02'),
(2, 'CF226A', 'Toner', '6', '2021-03-05 02:02:30', '2022-12-16 04:06:10'),
(3, 'CB436A', 'Toner', '3', '2021-03-05 01:58:11', '2022-11-07 01:51:34'),
(4, 'CE278A', 'Toner', '4', '2021-03-05 02:04:50', '2022-09-05 04:41:00'),
(5, 'CF279A', 'Toner', '3', '2021-03-05 02:04:51', '2022-12-16 04:20:26'),
(6, 'CF283A', 'Toner', '2', '2021-03-05 02:05:28', '2022-12-09 04:29:56'),
(7, 'CE285A', 'Toner', '8', '2021-03-05 02:06:06', '2022-12-16 04:22:14'),
(8, '507 Black', 'Toner', '0', '2021-03-05 02:06:54', '2022-11-24 01:22:13'),
(9, '507 Cyan', 'Toner', '1', '2021-03-05 02:07:25', '2022-11-29 06:42:41'),
(10, '507 Magenta', 'Toner', '1', '2021-03-05 02:07:44', '2022-11-08 01:09:54'),
(11, '507 Yellow', 'Toner', '1', '2021-03-05 02:08:20', '2022-11-25 06:09:40'),
(12, 'CE270A Black', 'Toner', '6', '2021-03-05 02:09:18', '2022-12-09 04:30:32'),
(13, 'CE271A Cyan', 'Toner', '5', '2021-03-05 02:09:18', '2022-11-25 06:09:21'),
(14, 'CE272A Yellow', 'Toner', '1', '2021-03-05 02:09:18', '2022-11-08 01:10:15'),
(15, 'CE273A Magenta', 'Toner', '1', '2021-03-05 02:09:18', '2022-11-16 03:12:36'),
(16, '664 Black', 'Tinta', '5', '2021-03-05 02:12:06', '2022-12-09 06:57:42'),
(17, '664 Cyan', 'Tinta', '9', '2021-03-05 02:12:06', '2022-12-02 06:06:16'),
(18, '664 Magenta', 'Tinta', '6', '2021-03-05 02:12:06', '2022-12-02 06:05:51'),
(19, '664 Yellow', 'Tinta', '4', '2021-03-05 02:12:06', '2022-12-09 06:58:15'),
(20, '003 Black', 'Tinta', '5', '2021-03-05 02:13:24', '2022-11-16 03:28:26'),
(21, '003 Cyan', 'Tinta', '5', '2021-03-05 02:13:24', '2022-11-09 01:45:56'),
(22, '003 Magenta', 'Tinta', '3', '2021-03-05 02:13:50', '2022-11-16 03:29:09'),
(23, '003 Yellow', 'Tinta', '4', '2021-03-05 02:13:50', '2022-05-09 17:13:31'),
(24, 'Kanban Lokal', 'Kertas', '101', '2021-03-05 02:14:26', '2022-12-16 03:51:29'),
(25, 'Kanban Export Oil Rest', 'Kertas', '139', '2021-03-05 02:15:13', '2022-12-07 04:48:32'),
(26, 'Roll Sato ADM', 'Kertas Roll', '18', '2021-03-05 02:15:34', '2022-12-16 04:07:20'),
(27, 'Ribbon Sato ADM', 'Ribbon', '51', '2021-03-05 02:16:38', '2022-12-16 04:07:48'),
(28, '143 Black', 'Cartridge', '-1', '2021-03-05 03:47:48', '2022-11-09 01:09:32'),
(29, '143 Cyan', 'Cartridge', '0', '2021-03-05 03:47:48', '2022-11-29 07:06:47'),
(30, '143 Magenta', 'Cartridge', '-3', '2021-03-05 03:47:48', '2022-11-29 07:06:04'),
(31, '143 Yellow', 'Cartridge', '0', '2021-03-05 03:47:48', '2022-11-09 01:19:23'),
(32, 'Mouse Logitech Kabel', 'Pheriperal', '2', '2021-03-17 07:26:29', '2022-12-16 01:18:41'),
(33, 'Mouse Logitech Wireless', 'Pheriperal', '0', '2021-03-17 07:27:07', '2022-11-25 06:02:45'),
(34, 'Keyboard Logitech Kabel', 'Pheriperal', '5', '2021-03-17 07:30:19', '2022-11-16 03:24:00'),
(35, 'Power Supply', 'Pheriperal', '6', '2021-03-17 07:30:50', '2022-05-10 17:51:07'),
(36, '001 Black', 'Tinta', '2', '2022-04-05 01:15:25', '2022-11-09 01:52:25'),
(37, '001 Cyan', 'Tinta', '2', '2022-04-05 01:15:46', '2022-06-29 00:28:52'),
(38, '001 Magenta', 'Tinta', '2', '2022-04-05 01:16:09', '2022-06-29 00:29:53'),
(39, '001 Yellow', 'Tinta', '2', '2022-04-05 01:16:23', '2022-06-29 00:30:22'),
(40, '008 Black', 'Tinta', '2', '2022-06-28 01:14:45', '2022-06-29 00:25:25'),
(41, '008 Cyan', 'Tinta', '2', '2022-06-28 01:14:45', '2022-06-29 00:26:17'),
(42, '008 Magenta', 'Tinta', '2', '2022-06-28 01:15:04', '2022-06-29 00:27:01'),
(43, '008 Cyan', 'Tinta', '2', '2022-06-28 01:15:17', '2022-06-29 00:27:31'),
(44, 'Label Hyundai', 'Label', '62', '2022-06-28 01:15:49', '2022-12-07 04:28:01'),
(45, 'Ribbon Wax Hyundai', 'Ribbon', '51', '2022-06-28 01:16:14', '2022-10-04 01:34:41'),
(46, 'Mouse PS2', 'Pheriperal', '2', '2022-09-05 04:44:12', '2022-09-09 00:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `cc_product`
--

CREATE TABLE `cc_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_product`
--

INSERT INTO `cc_product` (`id`, `name`, `type`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'CE505A', 'Toner', '1', '2021-11-19 03:44:45', '2021-11-19 03:44:47'),
(2, 'CE285A', 'Toner', '1', '2021-11-19 04:41:23', '2021-11-19 04:41:23'),
(3, 'CF26A', 'Toner', '1', '2021-11-19 05:46:11', '2021-11-19 05:46:11'),
(4, 'CB436A', 'Toner', '1', '2021-11-19 05:48:58', '2021-11-19 05:48:58'),
(5, 'CE278A', 'Toner', '1', '2021-11-19 05:53:54', '2021-11-19 05:53:54'),
(6, 'CF279A', 'Toner', '1', '2021-11-19 05:56:09', '2021-11-19 05:56:09'),
(7, 'CF283A', 'Toner', '1', '2021-11-19 05:59:57', '2021-11-19 05:59:57'),
(8, '507 Black', 'Toner', '1', '2021-11-19 06:15:38', '2021-11-19 06:15:38'),
(9, '507 Magenta', 'Toner', '1', '2021-11-19 06:16:06', '2021-11-19 06:16:06'),
(10, '507 Yellow', 'Toner', '1', '2021-11-19 06:16:39', '2021-11-19 06:16:39'),
(11, '507 Cyan', 'Toner', '1', '2021-11-19 06:17:14', '2021-11-19 06:17:14'),
(12, 'CE270A Black', 'Toner', '1', '2021-11-19 06:18:01', '2021-11-19 06:18:01'),
(13, 'CE271A Cyan', 'Toner', '1', '2021-11-19 06:18:24', '2021-11-19 06:18:24'),
(14, 'CE272A Yellow', 'Toner', '1', '2021-11-19 06:18:49', '2021-11-19 06:18:49'),
(15, 'CE273A Magenta', 'Toner', '1', '2021-11-19 06:19:08', '2021-11-19 06:19:08'),
(16, '664 Black', 'Ink', '1', '2021-11-19 06:20:25', '2021-11-19 06:20:25'),
(17, '664 Cyan', 'Ink', '1', '2021-11-19 06:20:40', '2021-11-19 06:20:40'),
(18, '664 Magenta', 'Ink', '1', '2021-11-19 06:20:56', '2021-11-19 06:20:56'),
(19, '664 Yellow', 'Ink', '1', '2021-11-19 06:21:13', '2021-11-19 06:21:13'),
(20, '003 Black', 'Ink', '1', '2021-11-19 06:21:53', '2021-11-19 06:21:53'),
(21, '003 Cyan', 'Ink', '1', '2021-11-19 06:22:07', '2021-11-19 06:22:07'),
(22, '003 Magenta', 'Ink', '1', '2021-11-19 06:22:26', '2021-11-19 06:22:26'),
(23, '003 Yellow', 'Ink', '1', '2021-11-19 06:22:42', '2021-11-19 06:22:42'),
(24, '143 Black', 'Catridge', '1', '2021-11-19 06:23:37', '2021-11-19 06:23:37'),
(25, '143 Cyan', 'Catridge', '1', '2021-11-19 06:23:49', '2021-11-19 06:23:49'),
(26, '143 Magenta', 'Catridge', '1', '2021-11-19 06:24:06', '2021-11-19 06:24:06'),
(27, '143 Yellow', 'Catridge', '1', '2021-11-19 06:24:20', '2021-11-19 06:24:20'),
(28, 'Kanban Lokal', 'Kanban', '10', '2021-11-19 06:26:02', '2021-11-19 06:26:02'),
(29, 'Kanban Oil Ressistance', 'Kanban', '11', '2021-11-19 06:31:51', '2021-11-19 06:31:51'),
(30, 'Kanban Label ADM', 'Kanban', '10', '2021-11-19 06:32:31', '2021-11-19 06:32:31'),
(31, 'Ribbon Wax ADM', 'Ribbon', '10', '2021-11-19 06:33:00', '2021-11-19 06:33:00'),
(32, 'Mouse Kabel', 'Pheriperal', '12', '2021-11-19 06:44:38', '2021-11-19 06:44:38'),
(33, 'Mouse Wireless', 'Pheriperal', '12', '2021-11-19 06:44:52', '2021-11-19 06:44:52'),
(34, 'Keyboard Kabel', 'Pheriperal', '12', '2021-11-19 06:45:08', '2021-11-19 06:45:08'),
(35, '001 Black', 'Ink', '1', '2022-04-05 01:13:16', '2022-04-05 01:13:17'),
(36, '001 Cyan', 'Ink', '1', '2022-04-05 01:13:44', '2022-04-05 01:13:45'),
(37, '001 Magenta', 'Ink', '1', '2022-04-05 01:14:00', '2022-04-05 01:14:02'),
(38, '001 Yellow', 'Ink', '1', '2022-04-05 01:14:22', '2022-04-05 01:14:24'),
(39, 'CE505A Black', 'Toner', '1', '2022-05-10 17:34:47', '2022-05-10 17:34:47'),
(40, 'CF226A Black', 'Toner', '1', '2022-05-10 17:35:32', '2022-05-10 17:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) NOT NULL DEFAULT 0,
  `dept_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nik`, `name`, `division_id`, `dept_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 5211, 'Fathur Rahmansyah', 1, 4, 4, '2021-07-30 04:23:26', '2021-07-30 04:23:29'),
(2, 5254, 'Hanifan Musliman', 1, 4, 4, '2021-07-30 04:24:00', '2021-07-30 04:24:02'),
(3, 5258, 'Aldi Abdu Malik', 1, 4, 4, '2021-09-21 02:10:53', '2021-09-21 02:10:54'),
(5, 1020, 'Zaenal Arifin', 1, 1, 1, NULL, NULL),
(6, 1011, 'Lisdyah Windayani', 1, 3, 3, NULL, NULL),
(7, 1017, 'Sunarti', 1, 3, 3, NULL, NULL),
(8, 1498, 'Joko prasetyo', 1, 3, 3, NULL, NULL),
(9, 1595, 'Hartana', 1, 2, 2, NULL, NULL),
(10, 1753, 'Yanti Marlina', 1, 3, 3, NULL, NULL),
(11, 1985, 'Suci Nur Ikhsani', 1, 3, 3, NULL, NULL),
(12, 2302, 'Safitri Puspitadewi', 1, 1, 1, NULL, NULL),
(13, 2746, 'Yati Suryati', 1, 3, 3, NULL, NULL),
(14, 3098, 'Ayu Maharani', 1, 3, 3, NULL, NULL),
(15, 1851, 'Agung Prasetyo', 1, 1, 1, NULL, NULL),
(16, 3042, 'Fajar Wijaya', 1, 3, 3, NULL, NULL),
(17, 3071, 'Wahyu S', 1, 3, 3, NULL, NULL),
(18, 3509, 'Galih Supriadi', 1, 4, 4, NULL, NULL),
(19, 3566, 'Nursaidah Haulasari', 1, 2, 2, NULL, NULL),
(20, 3589, 'Suci Nur W', 1, 1, 1, NULL, NULL),
(21, 1645, 'Wandi Sudrajat', 1, 2, 2, NULL, NULL),
(22, 1424, 'Susanto Dwi Kuncoro', 1, 2, 2, NULL, NULL),
(23, 3359, 'Hendrik', 1, 2, 2, NULL, NULL),
(24, 1133, 'Marudin', 1, 2, 2, NULL, NULL),
(25, 1662, 'Burhan Tamsir', 1, 1, 1, NULL, NULL),
(26, 4416, 'Yohana Briliant Cristiani', 1, 4, 4, NULL, NULL),
(27, 4453, 'Anna Kharisma', 1, 1, 1, NULL, NULL),
(28, 4459, 'Indah Pratiwi', 1, 2, 2, NULL, NULL),
(29, 4978, 'Selvi Yana', 1, 2, 2, NULL, NULL),
(30, 5156, 'Wildan Fathur Rohman', 1, 4, 4, NULL, NULL),
(31, 5155, 'Dewi Nur Aini', 1, 2, 2, NULL, NULL),
(32, 5172, 'Fitria Sari', 1, 4, 4, NULL, NULL),
(33, 5239, 'Riska Yulia Wijayanti', 1, 3, 3, NULL, NULL),
(34, 1807, 'Husni Bahri', 2, 5, 5, NULL, NULL),
(35, 2020, 'Inung Martanto', 2, 6, 6, NULL, NULL),
(36, 2993, 'Ati Febrianti', 2, 6, 6, NULL, NULL),
(37, 2853, 'Muhamad Soleh', 2, 6, 6, NULL, NULL),
(38, 1030, 'Dadang Kurnia', 2, 7, 7, NULL, NULL),
(39, 1031, 'Daroni', 2, 19, 8, NULL, NULL),
(40, 1032, 'Darmansyah', 2, 7, 7, NULL, NULL),
(41, 1033, 'Muryadi', 2, 19, 8, NULL, NULL),
(42, 1736, 'Adang Darmawan', 2, 5, 5, NULL, NULL),
(43, 2085, 'Ardi Mulyana', 2, 5, 5, NULL, NULL),
(44, 2087, 'Okky Wahono', 2, 7, 7, NULL, NULL),
(45, 2454, 'Sawab Wibowo', 2, 7, 7, NULL, NULL),
(46, 2861, 'Sugeng Riyadi', 2, 19, 8, NULL, NULL),
(47, 2951, 'Muhammad Niam', 2, 19, 8, NULL, NULL),
(48, 2696, 'Agus Nugraha', 2, 6, 6, NULL, NULL),
(49, 2771, 'Restu Sulistio Nugroho', 2, 5, 5, NULL, NULL),
(50, 3402, 'Aris Sugianto', 2, 5, 5, NULL, NULL),
(51, 3405, 'Anggara Wisnu Prakoso', 2, 5, 5, NULL, NULL),
(52, 3224, 'M Andi', 2, 5, 5, NULL, NULL),
(53, 3584, 'Bayu Asmara Hadi', 2, 5, 5, NULL, NULL),
(54, 3802, 'Wahyono', 2, 7, 7, NULL, NULL),
(55, 3403, 'Fiki Afyudan G', 2, 6, 6, NULL, NULL),
(56, 1471, 'Sumanto', 2, 6, 6, NULL, NULL),
(57, 2900, 'Nunuk Sugiyanti', 2, 6, 6, NULL, NULL),
(58, 1421, 'Puji Haryanto', 2, 6, 6, NULL, NULL),
(59, 3767, 'Andri Setiawan', 2, 5, 5, NULL, NULL),
(60, 4108, 'Dwi Prasetyo', 2, 19, 8, NULL, NULL),
(61, 4245, 'Rifal Aryaguna', 2, 6, 6, NULL, NULL),
(64, 5257, 'Mochamad Sadan', 2, 5, 5, NULL, NULL),
(65, 1670, 'Adiyanto Tamsir', 3, 9, 10, NULL, NULL),
(66, 1575, 'Tjut Dita Rachman', 3, 9, 11, NULL, NULL),
(67, 2303, 'Diana Puspita', 3, 9, 10, NULL, NULL),
(68, 1024, 'Eben Hazier', 3, 8, 9, NULL, NULL),
(69, 1472, 'Jaenal Rahmat', 3, 8, 9, NULL, NULL),
(70, 5161, 'Naomi Elisabeth B', 3, 9, 10, NULL, NULL),
(71, 5234, 'Shinta Septiawati', 3, 8, 9, NULL, NULL),
(72, 5238, 'Riyo Raharjo', 3, 9, 10, NULL, NULL),
(73, 5243, 'Gina Andriyani', 3, 8, 9, NULL, NULL),
(75, 4471, 'Muhamad Ilham Khaidir', 3, 9, 11, NULL, NULL),
(76, 1084, 'Mohamad Rokhani', 3, 8, 9, NULL, NULL),
(77, 1937, 'Lolla Viana', 7, 20, 29, NULL, NULL),
(78, 1190, 'Jusfen Karmindo', 7, 20, 29, NULL, NULL),
(79, 2426, 'Yudi Perkasa', 7, 20, 29, NULL, NULL),
(80, 2515, 'Lina Wahyuningsih', 7, 20, 29, NULL, NULL),
(81, 3310, 'Tony Hermawan Y.S', 7, 20, 29, NULL, NULL),
(82, 5228, 'Restu Prayuda', 7, 20, 29, NULL, NULL),
(83, 2370, 'Pariama Sinaga', 4, 10, 12, NULL, NULL),
(84, 1870, 'Evan E.R Siahaan', 4, 10, 13, NULL, NULL),
(85, 1147, 'Warsito', 4, 10, 13, NULL, NULL),
(86, 2913, 'Arief Rakhman', 4, 10, 13, NULL, NULL),
(87, 3608, 'Septi Riyani', 4, 10, 13, NULL, NULL),
(88, 3531, 'Rikan Wahyu Kusnanto', 4, 10, 13, NULL, NULL),
(89, 2970, 'Yakub T', 4, 10, 13, NULL, NULL),
(90, 1047, 'Muhamad Nur', 4, 10, 14, NULL, NULL),
(92, 2899, 'Pujianto', 4, 10, 13, NULL, NULL),
(93, 4080, 'Erwin Adrian Sutanto', 4, 11, 15, NULL, NULL),
(94, 5210, 'Yayad Hasbullah', 4, 11, 15, NULL, NULL),
(95, 5256, 'Muhammad Faizal Nuryusuf', 4, 11, 15, NULL, NULL),
(96, 1045, 'Faisal Haris', 4, 11, 16, NULL, NULL),
(97, 1050, 'Lisinsa', 4, 11, 16, NULL, NULL),
(99, 1411, 'Robik Ahmad Rifai', 4, 11, 17, NULL, NULL),
(100, 2403, 'Rusmono', 4, 11, 17, NULL, NULL),
(101, 3090, 'Teguh Sudaryatmo', 4, 11, 17, NULL, NULL),
(102, 1613, 'Yono Abdullah', 4, 12, 19, NULL, NULL),
(103, 1621, 'Iding Rustandi', 4, 12, 19, NULL, NULL),
(104, 2856, 'Madinah', 4, 12, 19, NULL, NULL),
(105, 3028, 'Tofik H', 4, 12, 19, NULL, NULL),
(106, 3567, 'Widayat', 4, 12, 19, NULL, NULL),
(107, 2365, 'Sulistiyono', 4, 12, 19, NULL, NULL),
(108, 1907, 'Herry Aryantho', 4, 12, 19, NULL, NULL),
(109, 1038, 'Sujatman', 4, 12, 18, NULL, NULL),
(110, 3026, 'Dany Hartoyo', 4, 12, 18, NULL, NULL),
(111, 1122, 'Tisna Mulyana', 4, 12, 18, NULL, NULL),
(112, 2532, 'Andiko Saputro', 4, 12, 18, NULL, NULL),
(113, 4970, 'Pujadianto', 4, 12, 18, NULL, NULL),
(114, 5233, 'Eko Hartoyo', 4, 12, 18, NULL, NULL),
(115, 3115, 'Nunu Nugraha', 4, 13, 22, NULL, NULL),
(116, 1410, 'Dwi Santosa', 4, 13, 23, NULL, NULL),
(117, 2756, 'Vincentius Alvin', 4, 13, 23, NULL, NULL),
(118, 1447, 'Ahmad Fauzan', 4, 13, 23, NULL, NULL),
(119, 1652, 'Yunie Priyo Sasongko', 4, 13, 23, NULL, NULL),
(120, 1037, 'Supadi', 4, 14, 24, NULL, NULL),
(121, 1436, 'Momi', 4, 14, 24, NULL, NULL),
(122, 2019, 'Jansen Sembiring', 4, 14, 24, NULL, NULL),
(123, 2440, 'Eko Yunianto', 4, 14, 24, NULL, NULL),
(124, 2538, 'Sutanto', 4, 14, 24, NULL, NULL),
(125, 2539, 'Triono', 4, 14, 24, NULL, NULL),
(126, 2860, 'Wuryanto', 4, 14, 24, NULL, NULL),
(127, 3520, 'Harsono', 4, 14, 24, NULL, NULL),
(128, 3513, 'Chandra Wiguna', 4, 14, 24, NULL, NULL),
(129, 3755, 'Singgih Purwanto', 4, 14, 24, NULL, NULL),
(130, 4237, 'Sukardi', 4, 14, 24, NULL, NULL),
(131, 1643, 'Subagyo', 4, 14, 24, NULL, NULL),
(132, 1389, 'Supandi', 4, 15, 25, NULL, NULL),
(133, 1642, 'Suasmoro', 4, 15, 25, NULL, NULL),
(134, 2685, 'Iis Suhendar', 4, 15, 25, NULL, NULL),
(135, 1016, 'Aris Masruri', 4, 15, 25, NULL, NULL),
(136, 4344, 'Fauzi Alfiansyah', 4, 16, 26, NULL, NULL),
(137, 2042, 'Teguh Prastowo L', 5, 17, 27, NULL, NULL),
(138, 2547, 'Mual Rikson Pasaribu', 5, 17, 27, NULL, NULL),
(139, 2723, 'Riyanti Budi Lestari', 5, 17, 27, NULL, NULL),
(140, 2347, 'Muhrodin', 5, 17, 27, NULL, NULL),
(141, 3607, 'Samuel Dwi Prasetyo', 5, 17, 27, NULL, NULL),
(142, 3864, 'Maryo ramdani', 5, 17, 27, NULL, NULL),
(143, 4673, 'Yudi Supriadi', 5, 17, 27, NULL, NULL),
(144, 5043, 'Silvia Wahyuni', 5, 17, 27, NULL, NULL),
(145, 5261, 'Ferdinanda Utami Putri', 5, 17, 27, NULL, NULL),
(146, 2306, 'Sriyanto', 6, 18, 28, NULL, NULL),
(147, 2543, 'Miauw, Erlina', 6, 18, 28, NULL, NULL),
(148, 3143, 'Erliyanti', 6, 18, 28, NULL, NULL),
(149, 3507, 'Yeyeh Supriatna', 6, 18, 28, NULL, NULL),
(150, 3508, 'Hermanto', 6, 18, 28, NULL, NULL),
(151, 3754, 'Okih Priyatno', 6, 18, 28, NULL, NULL),
(152, 4102, 'Mohamad Zulfikar Zaen Fikri', 6, 18, 28, NULL, NULL),
(153, 4247, 'Aan Syahrofik', 6, 18, 28, NULL, NULL),
(154, 4417, 'Ari Meiwanto', 6, 18, 28, NULL, NULL),
(155, 4509, 'Yan Tandi Raru', 6, 18, 28, NULL, NULL),
(156, 5100, 'Eko Prasetio', 6, 18, 28, NULL, NULL),
(159, 5247, 'Adika Akhmad Zufri', 4, 10, 14, NULL, NULL),
(160, 5294, 'Wildan Adji Nugroho', 1, 4, 4, NULL, NULL),
(161, 300372, 'Lala Sonia', 6, 18, 28, NULL, NULL),
(162, 5322, 'Wildan Adriansyah', 4, 10, 30, NULL, NULL),
(163, 5302, 'Taufiq Insan Khoiri', 4, 10, 13, NULL, NULL),
(164, 5441, 'Dandy Armeido F', 4, 10, 13, NULL, NULL),
(165, 5479, 'M Rizqi Nur Alif', 1, 4, 4, NULL, NULL),
(166, 4485, 'Bambang Rustamadji S.', 4, 13, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `epinjam`
--

CREATE TABLE `epinjam` (
  `id_epinjam` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `epinjam`
--

INSERT INTO `epinjam` (`id_epinjam`, `name`, `section`, `contact`, `item_name`, `amount`, `purpose`, `date`, `return_date`, `created_at`, `updated_at`) VALUES
(1, 'Fathur', 'IT', '231', 'Mic', 1, 'Untuk meeting', '2023-03-07 02:43:43', NULL, NULL, NULL),
(2, 'Indra', 'Purchasing', '190', 'Laptop', 1, 'Meeting', '2023-03-07 08:20:18', NULL, NULL, NULL),
(3, 'Asri', 'Marketing', '999', 'Usb HUb', 1, 'Untuk Meeting', '2023-03-08 00:03:53', NULL, NULL, NULL),
(4, 'Budi', 'INV', '888', 'Tali', 1, 'Untuk dinas luar', '2023-03-08 00:06:31', NULL, NULL, NULL),
(5, 'Fathur', 'IT', '231', 'Mic + usb hub', 1, 'untuk meeting', '2023-03-08 01:18:43', NULL, '2023-03-08 01:18:43', '2023-03-08 01:18:43'),
(6, 'Irfan', 'IT', '231', 'Flash disk', 1, 'untuk transfer data', '2023-03-08 01:22:04', NULL, '2023-03-08 01:22:04', '2023-03-08 01:22:04'),
(7, 'Wildan adji', 'Accounting', '231', 'printer', 1, 'untuk test', '2023-03-08 01:28:31', NULL, '2023-03-08 01:28:31', '2023-03-08 01:28:31'),
(8, 'Irga', 'Finance', '206', 'laptop', 1, 'meeting', '2023-03-08 01:32:32', '2023-03-08 03:08:39', '2023-03-08 01:32:32', '2023-03-08 01:32:32'),
(9, 'Anang', 'Schedule & Control', '260', 'Flashdisk', 1, 'Untuk kk', '2023-03-08 01:36:18', NULL, '2023-03-08 01:36:18', '2023-03-08 01:36:18'),
(10, 'Yohana', 'IT', '206', 'Laptop', 1, 'Meeting', '2023-03-08 02:02:14', NULL, '2023-03-08 02:02:14', '2023-03-08 02:02:14'),
(11, 'Tisu', 'Schedule & Control', '203', 'CD', 1, 'untuk burning', '2023-03-08 02:11:32', '2023-03-08 03:03:00', '2023-03-08 02:11:32', '2023-03-08 02:11:32'),
(12, 'Rey', 'Finance', '2222', 'botol', 1, 'untuk burning', '2023-03-08 02:12:36', '2023-03-08 02:52:38', '2023-03-08 02:12:36', '2023-03-08 02:12:36'),
(13, 'Wildan Adji', 'Cost Control', '254', 'ddd', 1, 'untuk meeting', '2023-03-08 02:14:25', '2023-03-08 02:50:03', '2023-03-08 02:14:25', '2023-03-08 02:14:25'),
(14, 'irga', 'Accounting', '206', 'yy', 1, 'untuk meeting', '2023-03-08 03:04:16', '2023-03-09 00:02:27', '2023-03-08 03:04:16', '2023-03-08 03:04:16'),
(15, 'Irfan', 'Cost Control', '999', 'yuyu', 1, 'untuk meeting', '2023-03-08 03:05:17', NULL, '2023-03-08 03:05:17', '2023-03-08 03:05:17'),
(16, 'Fathur', 'Cost Control', '878', '5t6', 1, 'untuk meeting', '2023-03-08 03:07:03', '2023-03-08 09:29:01', '2023-03-08 03:07:03', '2023-03-08 03:07:03'),
(17, 'Tur', 'Cost Control', '206', 'Mic', 1, 'meeting', '2023-03-08 08:34:42', '2023-03-08 09:18:45', '2023-03-08 08:34:42', '2023-03-08 08:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `eriwayat_kom`
--

CREATE TABLE `eriwayat_kom` (
  `id` int(11) NOT NULL,
  `id_kom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `solution` varchar(100) DEFAULT NULL,
  `rep_part` varchar(100) DEFAULT NULL,
  `technician` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eriwayat_kom`
--

INSERT INTO `eriwayat_kom` (`id`, `id_kom`, `date`, `issue`, `problem`, `solution`, `rep_part`, `technician`, `created_at`, `updated_at`) VALUES
(1, 'C.KP.201512.019', '2021-10-01', 'Bunyi', 'Heatsink Bunyi', 'Kasih WD45 Pada heatsink', '-', 'Fathur', NULL, NULL),
(2, '-', '2021-10-01', 'yeyeye', 'Gaada', 'Test', 'test', 'Fathur', NULL, NULL),
(3, 'C.KP.201512.019', '2021-10-01', 'Tidak Nyala', 'Ram kotor', 'Pembersihan RAM', '-', 'Hanif', NULL, NULL),
(4, 'C.KP.201512.019', '2021-10-26', 'Mati terus', 'Ram Kotor', NULL, NULL, 'Fathur', NULL, NULL),
(5, 'C.KP.201512.019', '2021-10-26', 'Mati lagi', 'Heatsink Kendor', NULL, 'Heatsink', 'Hanifan', NULL, NULL),
(6, 'C.KP.201512.019', '2021-10-26', 'Ngelag', 'Memori Penuh', 'Tambah RAM', 'RAM', 'Hanifan', NULL, NULL),
(7, '-', '2021-10-26', 'Mati lagi', 'Ram Kotor', 'Tambah RAM', 'RAM', 'Fathur', NULL, NULL),
(8, 'C.KP.201802.002', '2021-10-27', 'Mati terus', 'Ram Kotor', 'Permbersihan RAM', '-', 'Fathur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eriwayat_laptop`
--

CREATE TABLE `eriwayat_laptop` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_lapt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `issue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rep_part` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `technician` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eriwayat_laptop`
--

INSERT INTO `eriwayat_laptop` (`id`, `id_lapt`, `date`, `issue`, `problem`, `solution`, `rep_part`, `technician`, `created_at`, `updated_at`) VALUES
(1, 'C.NB.202103.002', '2021-11-02', 'Hang', 'Tidak stabil', 'Restart', '-', 'Fathur', '2021-11-02 01:25:28', '2021-11-02 01:25:29'),
(2, 'C.NB.202103.002', '2021-11-02', 'TMS Error', 'Crystal report belum di install', 'install crystal report', '-', 'Fathur', NULL, NULL),
(3, 'C.NB.202110.003', '2021-11-02', 'Belum ada mapping folder umum dan marketing', 'belum di mapping', 'mapping folder', '-', 'Fathur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eticket`
--

CREATE TABLE `eticket` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `to_time` time NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rep_part` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kode_fa` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_asset` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technician` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eticket`
--

INSERT INTO `eticket` (`id`, `ticket_no`, `date`, `time`, `to_time`, `id_user`, `issue`, `problem`, `problem_type`, `solution`, `rep_part`, `status`, `id_kode_fa`, `id_asset`, `technician`, `created_at`, `updated_at`) VALUES
(22, 'ET20220522', '2022-05-12', '07:23:16', '00:00:00', '1', '', 'Belum ada TMS', 'TMS', 'Install TMS', NULL, '1', 'C.KP.201512.019', 'komputer', 'Fathur Rahmansyah', '2022-05-11 17:00:00', '2022-07-20 03:23:01'),
(23, 'ET20220523', '2022-05-12', '07:24:25', '00:00:00', '10', 'Jaringan putus putus', 'Koneksi sering bermasalah', 'LAN', 'ganti kabel lan', 'kabel lan', '4', 'C.KP.201802.002', 'komputer', 'Fathur Rahmansyah', '2022-05-12 00:24:25', '2022-06-06 06:19:06'),
(24, 'ET20220524', '2022-05-13', '08:31:20', '00:00:00', '1', 'TBS tidak bisa print', 'TBS print error', 'LAN', 'crimping ulang', NULL, '4', 'C.NB.202110.003', 'laptop', 'Fathur Rahmansyah', '2022-05-13 01:31:20', '2022-06-16 08:39:46'),
(25, 'ET20220525', '2022-05-13', '08:40:26', '00:00:00', '10', '', NULL, 'Printer', 'Ambil kertas di printer', NULL, '4', 'C.PT.202111.002', 'printer', 'Fathur Rahmansyah', '2022-05-13 01:40:26', '2022-06-17 03:05:41'),
(26, 'ET20220626', '2022-06-13', '10:16:29', '00:00:00', '1', 'tidak bisa akses umum it', NULL, NULL, NULL, NULL, '1', NULL, NULL, 'Fathur Rahmansyah', '2022-06-13 03:16:29', '2022-06-13 03:16:29'),
(27, 'ET20220627', '2022-06-13', '10:18:33', '00:00:00', '1', 'Kertas di printer nyangkut nyangkut', 'Film di printer sudah mulai menipis', 'Printer', 'bawa ke service, tukar dengan printer backup', NULL, '4', 'C.PT.000000.026', 'printer', 'Fathur Rahmansyah', '2022-06-13 03:18:33', '2022-06-17 03:07:18'),
(28, 'ET20220628', '2022-06-15', '13:24:07', '00:00:00', '10', 'Email tidak masuk', NULL, 'LAN', 'swiitch mode outlook ke online', NULL, '4', NULL, NULL, 'Fathur Rahmansyah', '2022-06-15 06:24:07', '2022-06-15 06:31:07'),
(29, 'ET20220629', '2022-06-15', '13:27:01', '00:00:00', '10', 'Tidak bisa print', NULL, 'Printer', 'restart print spooler', NULL, '4', NULL, NULL, 'Fathur Rahmansyah', '2022-06-15 06:27:01', '2022-06-15 06:29:04'),
(30, 'ET20220630', '2022-06-15', '13:36:41', '00:00:00', '10', 'Printer tidak bisa nyala', NULL, 'Printer', 'kencangkan kabel printer', NULL, '4', NULL, NULL, 'Fathur Rahmansyah', '2022-06-15 06:36:41', '2022-06-15 06:37:22'),
(31, 'ET20220631', '2022-06-16', '07:18:05', '00:00:00', '10', 'Tinta Habis', 'Belum diisi tinta', 'Printer', 'Pengisian tinta', NULL, '4', NULL, NULL, 'Fathur Rahmansyah', '2022-06-16 00:18:05', '2022-06-16 00:25:36'),
(32, 'ET20220632', '2022-06-20', '15:32:32', '00:00:00', '10', 'power supply bunyi', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-06-20 08:32:32', '2022-06-20 08:32:32'),
(33, 'ET20220633', '2022-06-21', '15:28:35', '00:00:00', '10', 'telepon tidak bisa', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-06-21 08:28:35', '2022-06-21 08:28:35'),
(34, 'ET20220734', '2022-07-01', '13:50:31', '00:00:00', '14', 'PC E faktur lemot', 'Pada taks manager , penggunaan RAM penuh', 'RAM', 'Tambah RAM yang sebelumnya 8 GB dual channel menjadi 16 GB dual channel', 'RAM', '4', 'C.KP.201507.015', 'komputer', 'Fathur Rahmansyah', '2022-07-01 06:50:31', '2022-07-01 07:02:30'),
(35, 'ET20220735', '2022-07-27', '11:46:34', '12:46:34', '1', 'PC tidak mau nyala di pc ex Bu Nunu Engineering', 'Power supply bermasalah', 'Power Supply', 'Penggantian power supply', 'Power Supply', '4', 'C.KP.000000.071', 'komputer', 'Fathur Rahmansyah', '2022-07-27 04:46:34', '2022-07-27 04:48:48'),
(36, 'ET20220736', '2022-07-27', '13:21:56', '00:00:00', '1', 'Fan pada PC ex Chica Engineering tidak ada yang ny', 'Ada 1 Fan yang rusak', 'Fan', 'Penggantian Fan Casing', 'Fan', '4', 'C.KP.201603.008', 'komputer', 'Fathur Rahmansyah', '2022-07-27 06:21:56', '2022-07-27 06:24:28'),
(37, 'ET20220737', '2022-07-27', '15:22:34', '00:00:00', '8', 'power supply tidak ngangkat', 'mati power supply', 'Power Supply', 'mengganti power supply', NULL, '4', 'C.KP.201512.019', 'komputer', 'Hanifan Musliman', '2022-07-27 08:22:34', '2022-07-27 08:31:19'),
(38, 'ET20220938', '2022-09-20', '14:05:23', '00:00:00', '15', 'komputer mengalami kendala, lemot', 'junk file terlalu banyak,', 'RAM', 'tambah ram', 'RAM', '4', 'C.NB.202103.002', 'laptop', 'Fathur Rahmansyah', '2022-09-20 07:05:23', '2022-09-20 07:08:39'),
(39, 'ET20221039', '2022-10-14', '07:56:08', '00:00:00', '16', 'testing', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-10-14 00:56:08', '2022-10-14 00:56:08'),
(40, 'ET20221140', '2022-11-22', '07:42:23', '00:00:00', '16', 'testing', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-11-22 00:42:23', '2022-11-22 00:42:23'),
(41, 'ET20230341', '2023-03-09', '07:24:56', '00:00:00', '1', 'test 2023', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-09 00:24:56', '2023-03-09 00:24:56'),
(42, 'ET20230342', '2023-03-09', '07:24:56', '00:00:00', '1', 'test 2023', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-09 00:24:56', '2023-03-09 00:24:56'),
(43, 'ET20230343', '2023-03-09', '07:24:56', '00:00:00', '1', 'test 2023', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-03-09 00:24:56', '2023-03-09 00:24:56'),
(44, 'ET20230444', '2023-04-18', '09:52:25', '00:00:00', '1', 'Test bor', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 02:52:42', '2023-04-18 02:52:42'),
(45, 'ET20230445', '2023-04-18', '10:06:07', '00:00:00', '1', 'dddsa', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 03:06:14', '2023-04-18 03:06:14'),
(46, 'ET20230446', '2023-04-18', '10:52:11', '00:00:00', '1', 'sdadasd', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-18 03:52:24', '2023-04-18 03:52:24'),
(47, 'ET20230447', '2023-04-28', '07:40:33', '10:52:11', '1', 'Fow', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-04-28 00:40:42', '2023-04-28 00:40:42');

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
-- Table structure for table `itam_master_asset`
--

CREATE TABLE `itam_master_asset` (
  `id_master_asset` int(10) UNSIGNED NOT NULL,
  `location` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fa_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `no_ppb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_jenis` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_speed` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_size` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_slot` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_size` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_size` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_size` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vga_external` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_mac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wlan_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wlan_mac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_status_asset` int(11) DEFAULT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `written_date` date DEFAULT NULL,
  `posted_date` date DEFAULT NULL,
  `voided_date` date DEFAULT NULL,
  `printed_date` date DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `itam_master_asset`
--

INSERT INTO `itam_master_asset` (`id_master_asset`, `location`, `asset_code`, `fa_code`, `asset_merk`, `asset_type`, `serial_number`, `purchase_date`, `no_ppb`, `p_merk`, `p_jenis`, `p_type`, `p_speed`, `m_merk`, `m_type`, `r_size`, `r_type`, `r_slot`, `hd1_merk`, `hd1_type`, `hd1_size`, `hd2_merk`, `hd2_type`, `hd2_size`, `ssd_merk`, `ssd_type`, `ssd_size`, `vga_external`, `lan_name`, `lan_mac`, `wlan_name`, `wlan_mac`, `id_status_asset`, `data_status`, `written_date`, `posted_date`, `voided_date`, `printed_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(19, 'HO', 'KP', 'C.KP.201802.002', '-', '-', '-', '2023-02-06', '11215658', 'Intel', 'Core i3', '2120', '3.30', 'Asustek', 'H61M-K', '8', 'DDR 3', 'Single', 'Seagate', 'ST500DM002-1BD142', '500', '-', NULL, NULL, '-', NULL, NULL, '-', 'Realtek PCIe GBE Family Controller', '60-45-CB-70-64-9C', '-', '-', 2, 'ACTIVE', '2023-03-27', '2023-03-03', NULL, NULL, 'FATHUR RAHMANSYAH', 'Fathur Rahmansyah', '2021-09-19 20:26:24', '2023-03-02 05:53:39'),
(20, 'HO', 'KP', 'C.KP.201512.019', '', '', '', NULL, NULL, 'AMD', 'A10', '7870K', '3.90', 'Asustek', 'A88XM-A', '8', 'DDR 3', 'Single', 'Seagate', 'ST1000DM010-2EP102', '1000', 'Seagate', 'ST3500418AS', '500', NULL, NULL, NULL, '1024MB NVIDIA GeForce GT 220', 'Realtek PCIe GbE Family Controller', '30-5A-3A-7C-44-92', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2021-07-26 21:38:36', '2022-02-23 08:25:36'),
(21, 'HO', 'KP', 'C.KP.201502.004', '', '', '', NULL, NULL, 'intel', 'Core i5', '3330', '3.00', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', 'ST500DM002-1ER14C', '500', NULL, NULL, NULL, '', '', '', NULL, 'Realtek PCIe GBE Family Controller', 'FC-AA-14-81-F1-61', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2021-07-27 00:13:54', '2021-07-27 00:13:54'),
(32, 'HO', 'KP', 'C.KP.201702.003', '', '', '', NULL, NULL, 'intel', 'Core i3', '2120', '3.3', 'Asustek', 'H61M-K', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-5D-29', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 02:58:28', '2022-06-10 02:58:28'),
(33, 'HO', 'KP', 'C.KP.202012.004', '', '', '', NULL, NULL, 'intel', 'Core i3', '9100F', '3.6', 'Asrock', 'B365M-HDV', '8', 'DDR 4', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 730', NULL, 'A8-A1-59-17-6E-DE', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:02:29', '2022-06-10 03:02:29'),
(34, 'HO', 'KP', 'C.KP.201910.007', '', '', '', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, 'B4-2E-99-50-A6-E4', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:06:08', '2022-06-10 03:06:08'),
(35, 'HO', 'KP', 'C.KP.201306.005', '', '', '', NULL, NULL, 'intel', 'Core i7', '3730', '3.80', 'Gigabyte', 'GA-B75M-D3V', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94-DE-80-0A-BC-99', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:11:59', '2022-06-10 03:11:59'),
(36, 'HO', 'KP', 'C.KP.201507.016', '', '', '', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-E9-F7', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:16:27', '2022-06-10 03:16:27'),
(37, 'HO', 'KP', 'C.KP.201306.006', '', '', '', NULL, NULL, 'intel', 'Core i7', '3770', '3.80', 'Gigabyte', 'GA-B75M-D3V', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94-DE-80-0A-BD-55', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:18:43', '2022-06-10 03:18:43'),
(38, 'HO', 'KP', 'C.KP.201706.003', '', '', '', NULL, NULL, 'intel', 'Core i3', NULL, '3.70', 'Gigabyte', 'H110M-DS2-CF', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-8E-2D-B7', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:22:59', '2022-06-10 03:22:59'),
(39, 'HO', 'KP', 'C.KP.201706.002', '', '', '', NULL, NULL, 'intel', 'Core i3', NULL, '3.70', 'Gigabyte', 'H110M-DS2-CF', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-8E-2A-0C', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:30:40', '2022-06-10 03:30:40'),
(40, 'HO', 'KP', 'C.KP.201501.002', '', '', '', NULL, NULL, 'intel', 'Core i7', '3770', '3.40', 'Gigabyte', 'H61M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C7-D4', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:38:14', '2022-06-10 03:38:14'),
(41, 'HO', 'KP', 'C.KP.201606.018', '', '', '', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-FE-53-57', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 03:48:30', '2022-06-10 03:48:30'),
(42, 'HO', 'KP', 'C.KP.201302.001', '', '', '', NULL, NULL, 'intel', 'Core i3', '2100', '3.10', 'ECS', 'H61H2-M13', '4', 'DDR 3', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-45-26-7E', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 04:11:14', '2022-06-10 04:11:14'),
(43, 'HO', 'KP', 'C.KP.201711.001', '', '', '', NULL, NULL, 'intel', 'Core i7', '4790', '3.60', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, NULL, 'NVIDIA GeForce GT 630', NULL, 'E0-D5-5E-12-5D-44', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 05:55:08', '2022-06-10 05:55:08'),
(44, 'HO', 'KP', 'C.KP.202110.011', '', '', '', '2021-10-29', '21100281', 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, '04-42-1A-A9-37-26', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 06:17:10', '2022-06-10 06:17:10'),
(45, 'HO', 'KP', 'C.KP.201709.001', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-DC-66-39', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 06:43:47', '2022-06-10 06:43:47'),
(46, 'HO', 'KP', 'C.KP.202102.004', '', '', '', '2021-03-04', '21020609', 'intel', 'Core i3', '7100', '3.90', 'Gigabyte', 'H110M-DS2-CF', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, '18-C0-4D-92-F8-33', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 06:47:48', '2022-06-10 06:47:48'),
(47, 'HO', 'KP', 'C.KP.201706.019', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-D9-E0-AB', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 06:50:16', '2022-06-10 06:50:16'),
(48, 'HO', 'KP', 'C.KP.000000.012', '', '', '', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-B6-AC-DD', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 07:12:39', '2022-06-10 07:12:39'),
(49, 'HO', 'KP', 'C.KP.201412.006', '', '', '', NULL, NULL, 'intel', 'Dual Core', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-3E-6C-00', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 07:39:35', '2022-06-10 07:39:35'),
(50, 'HO', 'KP', 'C.KP.201912.008', '', '', '', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Dual', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-24-8C', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-10 08:10:40', '2022-08-18 03:37:03'),
(51, 'HO', 'KP', 'C.KP.201803.009', '', '', '', NULL, NULL, 'intel', 'Core i3', '4130', '3.40', 'Gigabyte', 'H81M-DS2', '2', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D0-AE-40', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 00:45:02', '2022-06-13 00:45:02'),
(52, 'HO', 'KP', 'C.KP.201805.013', '', '', '', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-96-D6-45', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 00:47:15', '2022-06-13 00:47:15'),
(53, 'HO', 'KP', 'C.KP.000000.027', '', '', '', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-S2C', '3', 'DDR 2', 'Dual', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-F8', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 00:50:14', '2022-06-13 00:50:14'),
(54, 'HO', 'KP', 'C.KP.201701.001', '', '', '', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-34-D6-89', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 00:57:23', '2022-06-13 00:57:23'),
(55, 'HO', 'KP', 'C.KP.201405.001', '', '', '', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '8', 'DDR 3', 'Single', 'Seagate', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74-D4-35-6D-BE-91', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 00:59:02', '2022-06-13 00:59:02'),
(56, 'HO', 'KP', 'C.KP.201501.001', '', '', '', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C9-6C', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:01:28', '2022-06-13 01:01:28'),
(57, 'HO', 'KP', 'C.KP.201804.010', '', '', '', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-5B-F2-F2', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:03:49', '2022-06-13 01:03:49'),
(58, 'HO', 'KP', 'C.KP.201305.003', '', '', '', NULL, NULL, 'intel', 'Pentium', 'G2010', '2.80', 'ECS', 'H61H2-MV', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74-27-EA-08-0C-CE', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:24:38', '2022-06-13 01:24:38'),
(59, 'HO', 'KP', 'C.KP.201507.017', '', '', '', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-04-A0-28', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:27:28', '2022-06-13 01:27:28'),
(60, 'HO', 'KP', 'C.KP.201901.001', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Asustek', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-4D-73-14', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:32:32', '2022-06-13 01:32:32'),
(61, 'HO', 'KP', 'C.KP.201711.003', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-12-5D-57', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-13 01:34:46', '2022-06-13 01:34:46'),
(62, 'HO', 'KP', 'C.KP.201607.019', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D7-DA-00', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:14:04', '2022-06-22 01:14:04'),
(63, 'HO', 'KP', 'C.KP.201501.003', '', '', '', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C8-CA', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:18:35', '2022-06-22 01:18:35'),
(64, 'HO', 'KP', 'C.KP.000000.015', '', '', '', NULL, NULL, 'intel', 'Pentium', 'E5500', '2.80', 'Gigabyte', 'G31M-ES2L', '4', 'DDR 2', 'Dual', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-6F-65-61-39-77', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:27:44', '2022-06-22 01:27:44'),
(65, 'HO', 'KP', 'C.KP.000000.016', '', '', '', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '0.5', 'DDR 2', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:31:09', '2022-06-22 01:31:09'),
(66, 'HO', 'KP', 'C.KP.000000.017', '', '', '', NULL, NULL, 'intel', 'Pentium', 'E5400', '2.70', 'Gigabyte', '945GCM-S2C', '2', 'DDR 2', 'Single', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\'00-1A-4D-F5-1C-23', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:35:19', '2022-06-22 01:35:19'),
(67, 'HO', 'KP', 'C.KP.000000.006', '', '', '', NULL, NULL, 'intel', 'Pentium', '631', NULL, 'Gigabyte', 'G41MT-S2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\'1C-6F-65-E7-02-4C', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:38:14', '2022-06-22 01:38:14'),
(68, 'HO', 'KP', 'C.KP.000000.005', '', '', '', NULL, NULL, 'intel', 'Dual Core', 'E7500', '2.93', 'Gigabyte', 'G41M-ES2L', '2', 'DDR 2', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-24-1D-EF-13-B6', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:42:30', '2022-06-22 01:42:30'),
(69, 'HO', 'KP', 'C.KP.201303.002', '', '', '', NULL, NULL, 'intel', 'Pentium', 'G2010', '2.80', 'ECS', 'H61H2-M17', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EC-A8-6B-8F-58-6F', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:46:22', '2022-06-22 01:46:22'),
(70, 'HO', 'KP', 'C.KP.000000.048', '', '', '', NULL, NULL, 'intel', 'Pentium', 'E5400', '2.7', 'Gigabyte', 'G31M-ES2C', '4', 'DDR 2', 'Dual', 'Seagate', NULL, '80', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-FA', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:49:19', '2022-06-22 01:49:19'),
(71, 'HO', 'KP', 'C.KP.201512.019', '', '', '', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce 9500 GT (1 GB)', NULL, '6C-F0-49-01-FD-C3', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:51:24', '2022-06-22 01:51:24'),
(72, 'HO', 'KP', 'C.KP.202204.004', '', '', '', NULL, NULL, 'intel', 'Core i5', '10400', '2.90', '\'Asustek', 'H510M-E', '16', 'DDR 4', 'Single', 'Seagate', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, '512', NULL, NULL, '50-EB-F6-2E-92-85', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:53:42', '2022-06-22 01:53:42'),
(73, 'HO', 'KP', 'C.KP.000000.003', '', '', '', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '5', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-CE-21-3D', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:54:55', '2022-06-22 01:54:55'),
(74, 'HO', 'KP', 'C.KP.201811.015', '', '', '', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', '\'Asustek', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-4D-6E-30', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:56:48', '2022-06-22 01:56:48'),
(75, 'HO', 'KP', 'C.KP.201507.015', '', '', '', NULL, NULL, 'intel', 'Core i3', '4130', '3.40', 'Gigabyte', 'H81M-DS2', '16', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-67-04-00', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 01:57:38', '2022-07-01 06:53:21'),
(76, 'HO', 'KP', 'C.KP.201603.005', '', '', '', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-17-61-61', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:00:05', '2022-06-22 02:00:05'),
(77, 'HO', 'KP', 'C.KP.000000.023', '', '', '', NULL, NULL, 'intel', 'Pentium', '524', NULL, 'Gigabyte', 'G41MT-S2PT', '2', 'DDR 3', 'Single', 'Seagate', NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-E4-86-51', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:06:28', '2022-06-22 02:06:28'),
(78, 'HO', 'KP', 'C.KP.201504.010', '', '', '', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-5C-AA-47', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:09:20', '2022-06-22 02:09:20'),
(79, 'HO', 'KP', 'C.KP.201909.006', '', '', '', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'ASUSTeK', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-1F-D2', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:13:00', '2022-06-22 02:13:00'),
(80, 'HO', 'KP', 'C.KP.000000.028', '', '', '', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '2', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EA-23', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:16:07', '2022-06-22 02:16:07'),
(81, 'HO', 'KP', 'C.KP.201609.021', '', '', '', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-06-2E-C4', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:18:08', '2022-06-22 02:18:08'),
(82, 'HO', 'KP', 'C.KP.201705.002', '', '', '', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-13-A8-8A', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:22:27', '2022-06-22 02:22:27'),
(83, 'HO', 'KP', 'C.KP.201701.002', '', '', '', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-34-DA-22', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-06-22 02:24:37', '2022-06-22 02:24:37'),
(184, 'HO', 'NB', 'C.KP.202210.009', '', '', '', '2022-10-13', '22100497', 'intel', 'Core i7', 'Core i7-10700', '2.90G', 'ASUSTeK', 'PRIME H510M-E', '16', 'DDR 4', 'Dual', NULL, NULL, NULL, NULL, NULL, NULL, 'Midasforce', 'sata', '512', '\'-', 'Network', '\'-', NULL, NULL, 2, 'ACTIVE', '2023-03-27', NULL, NULL, NULL, NULL, NULL, '2022-11-04 05:59:19', '2022-11-09 02:50:37'),
(222, 'HO', 'HS', 'C.HS.202302.001', 'KEYENCE', 'JK1231', 'SDADD', NULL, '20564855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'ACTIVE', '2023-02-24', NULL, NULL, NULL, 'Fathur Rahmansyah', NULL, '2023-02-24 04:10:45', '2023-02-24 04:10:45'),
(223, 'HO', 'KP', 'C.KP.202302.001', '', '', '', NULL, '', 'Intel', 'Core i9', '13700', '3.9', 'Gigabyte', 'H808', '8', 'DDR 3', 'Single', 'Seagate', 'WXKK', '900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Realtek', '78:55:01', NULL, NULL, 2, 'ACTIVE', '2023-02-24', '2023-04-06', NULL, NULL, 'Fathur Rahmansyah', NULL, '2023-02-24 04:13:10', '2023-02-24 04:13:10'),
(224, 'HO', 'TV', 'C.TV.202302.001', 'POLYTRHONDAKLX', 'KS-212', 'KKSAJSA', '2023-02-27', '20564855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', 6, 'ACTIVE', '2023-02-27', '2023-04-06', NULL, '2023-04-06', 'Fathur Rahmansyah', 'Fathur Rahmansyah', '2023-02-27 03:39:32', '2023-04-06 00:46:39'),
(225, 'HO', 'KP', 'C.KP.202303.001', '', '', '', NULL, '20564855', 'Intel', 'core i9', '12100', '3.0', 'Gigabyte', 'H118', '12', 'DDR 3', 'Single', 'Seagate', 'SATA', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Realtek', '33:10:55', NULL, '', 2, 'ACTIVE', '2023-03-08', '2023-04-05', NULL, '2023-04-06', 'Fathur Rahmansyah', NULL, '2023-03-08 01:49:46', '2023-03-08 01:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_assign`
--

CREATE TABLE `itam_master_asset_assign` (
  `id_assign_asset` int(11) NOT NULL,
  `fa_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `asset_location` varchar(50) NOT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') NOT NULL,
  `written_dates` date NOT NULL,
  `posted_dates` date DEFAULT NULL,
  `voided_dates` date DEFAULT NULL,
  `printed_dates` date DEFAULT NULL,
  `bpat_dates` date DEFAULT NULL,
  `qr_date` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_assign`
--

INSERT INTO `itam_master_asset_assign` (`id_assign_asset`, `fa_code`, `asset_code`, `nik`, `employee_name`, `section`, `asset_location`, `data_status`, `written_dates`, `posted_dates`, `voided_dates`, `printed_dates`, `bpat_dates`, `qr_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(24, 'C.TV.202302.001', 'TV', '1447', 'Ahmad Fauzan', 'Welding', 'Office', 'ACTIVE', '2023-04-10', NULL, NULL, NULL, NULL, NULL, 'Fathur Rahmansyah', 'Fathur Rahmansyah', '2023-04-10 00:59:06', '2023-04-10 00:59:06'),
(25, 'C.KP.202303.001', 'KP', '5243', 'Gina Andriyani', 'GA', 'Ruang GA', 'ACTIVE', '2023-04-11', NULL, NULL, NULL, '2023-04-11', '2023-04-13', 'Fathur Rahmansyah', 'Fathur Rahmansyah', '2023-04-11 02:45:48', '2023-04-11 02:45:48'),
(26, 'C.KP.202302.001', 'KP', NULL, '-', NULL, 'Line Assy', 'ACTIVE', '2023-04-14', NULL, NULL, NULL, NULL, NULL, 'Fathur Rahmansyah', NULL, '2023-04-14 00:51:35', '2023-04-14 00:51:35'),
(29, 'C.KP.202302.001', 'KP', NULL, '-', NULL, 'Line QA Incoming', 'ACTIVE', '2023-04-14', NULL, NULL, NULL, NULL, NULL, 'Fathur Rahmansyah', NULL, '2023-04-14 04:29:30', '2023-04-14 04:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_assign_log`
--

CREATE TABLE `itam_master_asset_assign_log` (
  `id_itam_assign_asset_log` int(11) NOT NULL,
  `fa_code` varchar(50) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) NOT NULL,
  `status_change` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `note` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_assign_log`
--

INSERT INTO `itam_master_asset_assign_log` (`id_itam_assign_asset_log`, `fa_code`, `employee`, `date`, `time`, `status_change`, `user`, `note`) VALUES
(1, 'C.TV.202302.001', 'Fathur Rahmansyah', '2023-03-28', '10:13:02', 'ADD', 'Fathur Rahmansyah', ''),
(2, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-03-28', '10:42:57', 'ADD', 'Fathur Rahmansyah', ''),
(3, 'C.TV.202302.001', 'Aan Syahrofik', '2023-03-28', '10:46:43', 'ADD', 'Fathur Rahmansyah', ''),
(4, 'C.KP.201802.002', 'Adang Darmawan', '2023-03-28', '11:01:01', 'ADD', 'Fathur Rahmansyah', ''),
(5, 'C.HS.202302.001', 'Aan Syahrofik', '2023-03-28', '11:10:58', 'ADD', 'Fathur Rahmansyah', ''),
(6, 'C.HS.202302.001', 'Aan Syahrofik', '2023-03-28', '11:26:28', 'ADD', 'Fathur Rahmansyah', ''),
(7, 'C.HS.202302.001', 'Adika Akhmad Zufri', '2023-03-28', '12:36:47', 'ADD', 'Fathur Rahmansyah', ''),
(8, 'C.TV.202302.001', 'Adang Darmawan', '2023-03-28', '12:38:49', 'ADD', 'Fathur Rahmansyah', ''),
(9, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-03-28', '12:40:37', 'ADD', 'Fathur Rahmansyah', ''),
(10, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-03-31', '14:13:27', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(11, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-03-31', '14:18:17', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(12, 'C.KP.202303.001', 'Ahmad Fauzan', '2023-03-31', '14:19:39', 'PRINT', 'Fathur Rahmansyah', ''),
(13, 'C.KP.202303.001', 'Ahmad Fauzan', '2023-03-31', '14:20:12', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(14, 'C.TV.202302.001', 'Andiko Saputro', '2023-04-05', '07:18:11', 'ADD', 'Fathur Rahmansyah', ''),
(15, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-05', '07:22:46', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(16, 'C.KP.202303.001', 'Ahmad Fauzan', '2023-04-05', '07:33:46', 'PRINT', 'Fathur Rahmansyah', ''),
(17, 'C.TV.202302.001', 'Adiyanto Tamsir', '2023-04-05', '07:36:46', 'ADD', 'Fathur Rahmansyah', ''),
(18, 'C.KP.202303.001', 'Ahmad Fauzan', '2023-04-05', '08:08:17', 'VOID', 'Fathur Rahmansyah', 'test'),
(19, 'C.KP.202303.001', 'Ahmad Fauzan', '2023-04-05', '08:10:11', 'VOID', 'Fathur Rahmansyah', 'test'),
(20, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-05', '08:53:07', 'UN-POSTED', 'Fathur Rahmansyah', 'ss'),
(21, 'C.TV.202302.001', 'Adiyanto Tamsir', '2023-04-05', '08:53:17', 'PRINT', 'Fathur Rahmansyah', ''),
(22, 'C.TV.202302.001', 'Adiyanto Tamsir', '2023-04-05', '08:53:22', 'UN-POSTED', 'Fathur Rahmansyah', 'ss'),
(23, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-05', '08:54:29', 'UN-POSTED', 'Fathur Rahmansyah', 'qq'),
(24, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:55:27', 'UN-POSTED', 'Fathur Rahmansyah', NULL),
(25, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-05', '09:34:12', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(26, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-05', '10:17:06', 'PRINT', 'Fathur Rahmansyah', ''),
(29, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '07:53:50', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(30, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:24:34', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(31, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:24:41', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(32, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:25:02', 'PRINT', 'Fathur Rahmansyah', ''),
(33, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:25:25', 'PRINT', 'Fathur Rahmansyah', ''),
(34, 'C.TV.202302.001', 'Adiyanto Tamsir', '2023-04-06', '08:26:12', 'PRINT', 'Fathur Rahmansyah', ''),
(35, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:30:07', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(36, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:30:36', 'PRINT QR', 'Fathur Rahmansyah', ''),
(37, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:33:07', 'PRINT QR', 'Fathur Rahmansyah', ''),
(38, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:33:54', 'PRINT QR', 'Fathur Rahmansyah', ''),
(39, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:34:51', 'UN-POSTED', 'Fathur Rahmansyah', NULL),
(40, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:35:01', 'POSTED', 'Fathur Rahmansyah', NULL),
(41, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:47:50', 'PRINT QR', 'Fathur Rahmansyah', ''),
(42, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:49:39', 'PRINT QR', 'Fathur Rahmansyah', ''),
(43, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:49:59', 'PRINT QR', 'Fathur Rahmansyah', ''),
(44, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:50:11', 'PRINT QR', 'Fathur Rahmansyah', ''),
(45, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:50:24', 'PRINT QR', 'Fathur Rahmansyah', ''),
(46, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:50:38', 'PRINT QR', 'Fathur Rahmansyah', ''),
(47, 'C.HS.202302.001', 'Aldi Abdu Malik', '2023-04-06', '08:51:41', 'PRINT QR', 'Fathur Rahmansyah', ''),
(48, 'C.KP.202302.001', '-', '2023-04-09', '12:19:43', 'ADD', 'Fathur Rahmansyah', ''),
(49, 'C.TV.202302.001', '-', '2023-04-09', '12:22:38', 'ADD', 'Fathur Rahmansyah', ''),
(50, 'C.TV.202302.001', '-', '2023-04-09', '12:24:24', 'ADD', 'Fathur Rahmansyah', ''),
(51, 'C.TV.202302.001', '-', '2023-04-09', '12:28:32', 'ADD', 'Fathur Rahmansyah', ''),
(52, 'C.KP.202303.001', '-', '2023-04-09', '12:31:44', 'ADD', 'Fathur Rahmansyah', ''),
(53, 'C.TV.202302.001', 'Ahmad Fauzan', '2023-04-10', '07:59:07', 'ADD', 'Fathur Rahmansyah', ''),
(54, 'C.KP.202303.001', 'Adang Darmawan', '2023-04-11', '09:45:48', 'ADD', 'Fathur Rahmansyah', ''),
(55, 'C.KP.202303.001', 'Adang Darmawan', '2023-04-11', '09:46:11', 'UN-POSTED', 'Fathur Rahmansyah', 'dd'),
(56, 'C.KP.202303.001', 'Adang Darmawan', '2023-04-11', '09:46:19', 'PRINT BPAT', 'Fathur Rahmansyah', ''),
(57, 'C.KP.202302.001', '-', '2023-04-14', '07:51:35', 'ADD', 'Fathur Rahmansyah', ''),
(58, 'C.TV.202302.001', 'Agus Nugraha', '2023-04-14', '09:06:51', 'ADD', 'Fathur Rahmansyah', ''),
(59, 'C.KP.202303.001', 'Adika Akhmad Zufri', '2023-04-14', '09:51:29', 'ADD', 'Fathur Rahmansyah', ''),
(60, 'C.KP.202302.001', '-', '2023-04-14', '11:29:30', 'ADD', 'Fathur Rahmansyah', ''),
(61, 'C.KP.202302.001', '-', '2023-04-14', '11:29:49', 'UN-POSTED', 'Fathur Rahmansyah', 'edit assign');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_codes`
--

CREATE TABLE `itam_master_asset_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_codes`
--

INSERT INTO `itam_master_asset_codes` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KP', 'Computer', '2023-01-24', '2023-01-24'),
(2, 'ML', 'Monitor', '2023-01-24', '2023-01-24'),
(3, 'PT', 'Printer', '2023-01-24', '2023-01-24'),
(4, 'SC', 'Scanner', '2023-01-24', '2023-01-24'),
(5, 'SV', 'Server', '2023-01-24', '2023-01-24'),
(6, 'NC', 'NComputing', '2023-01-24', '2023-01-24'),
(7, 'SW', 'Software Licence', '2023-01-24', '2023-01-24'),
(8, 'MP', 'Mini PC', '2023-01-24', '2023-01-24'),
(9, 'UP', 'UPS', '2023-01-24', '2023-01-24'),
(10, 'HS', 'Hand Scan', '2023-01-24', '2023-01-24'),
(11, 'TV', 'TV', '2023-01-24', '2023-01-24'),
(12, 'NB', 'Notebook / Laptop', '2023-02-16', '2023-02-16'),
(13, 'TB', 'Tablet', '2023-04-05', '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_location`
--

CREATE TABLE `itam_master_asset_location` (
  `id_asset_loc` int(11) NOT NULL,
  `asset_location` varchar(50) NOT NULL,
  `data_status` enum('ACTIVE','NOT ACTIVE') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_location`
--

INSERT INTO `itam_master_asset_location` (`id_asset_loc`, `asset_location`, `data_status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Line Assy', 'ACTIVE', '2023-04-14 02:15:04', 'Fathur Rahmansyah', NULL, ''),
(2, 'Line Press', 'ACTIVE', '2023-04-14 02:15:04', 'Fathur Rahmansyah', NULL, ''),
(3, 'Line Welding', 'ACTIVE', '2023-04-14 02:15:04', 'Fathur Rahmansyah', NULL, ''),
(4, 'Line Spot', 'ACTIVE', '2023-04-14 02:15:04', 'Fathur Rahmansyah', NULL, ''),
(5, 'Line QA', 'ACTIVE', '2023-04-14 03:45:31', 'Fathur Rahmansyah', NULL, ''),
(6, 'Ruangan IT', 'ACTIVE', '2023-04-14 03:45:31', 'Fathur Rahmansyah', NULL, ''),
(7, 'Ruang Cost Control', 'ACTIVE', '2023-04-14 03:56:45', 'Fathur Rahmansyah', NULL, ''),
(8, 'Ruang Office Lt2', 'ACTIVE', '2023-04-14 03:57:08', 'Fathur Rahmansyah', NULL, ''),
(9, 'Ruang Sekretaris', 'ACTIVE', '2023-04-14 03:57:39', 'Fathur Rahmansyah', NULL, ''),
(10, 'Ruang Invoice Collection', 'ACTIVE', '2023-04-14 03:57:59', 'Fathur Rahmansyah', NULL, ''),
(11, 'Ruang Tukar Faktur', 'ACTIVE', '2023-04-14 03:58:16', 'Fathur Rahmansyah', NULL, ''),
(12, 'Ruang GA', 'ACTIVE', '2023-04-14 03:58:27', 'Fathur Rahmansyah', NULL, ''),
(13, 'Ruang QA', 'ACTIVE', '2023-04-14 03:58:48', 'Fathur Rahmansyah', NULL, ''),
(14, 'Ruang HRD', 'ACTIVE', '2023-04-14 03:59:03', 'Fathur Rahmansyah', NULL, ''),
(15, 'Ruang Gudang Consumable', 'ACTIVE', '2023-04-14 03:59:16', 'Fathur Rahmansyah', NULL, ''),
(16, 'Ruang Accounting', 'ACTIVE', '2023-04-14 03:59:31', 'Fathur Rahmansyah', NULL, ''),
(17, 'Ruang CMM Engineering', 'ACTIVE', '2023-04-14 03:59:49', 'Fathur Rahmansyah', NULL, ''),
(18, 'Ruang Wirecut Engineering', 'ACTIVE', '2023-04-14 04:00:02', 'Fathur Rahmansyah', NULL, ''),
(19, 'Ruang Maintenance', 'ACTIVE', '2023-04-14 04:00:17', 'Fathur Rahmansyah', NULL, ''),
(20, 'Line PE', 'ACTIVE', '2023-04-14 04:00:34', 'Fathur Rahmansyah', NULL, ''),
(21, 'Line QA Incoming', 'ACTIVE', '2023-04-14 04:01:13', 'Fathur Rahmansyah', NULL, ''),
(22, 'Ruang Incoming', 'ACTIVE', '2023-04-14 04:01:26', 'Fathur Rahmansyah', NULL, ''),
(23, 'Ruang MRP', 'ACTIVE', '2023-04-14 04:01:38', 'Fathur Rahmansyah', NULL, ''),
(24, 'Ruang Delivery', 'ACTIVE', '2023-04-14 04:01:51', 'Fathur Rahmansyah', NULL, ''),
(25, 'Ruang Training', 'ACTIVE', '2023-04-14 04:02:17', 'Fathur Rahmansyah', NULL, ''),
(26, 'Gudang IT', 'ACTIVE', '2023-04-14 04:02:30', 'Fathur Rahmansyah', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_log`
--

CREATE TABLE `itam_master_asset_log` (
  `id_itam_master_log` int(11) NOT NULL,
  `fa_code` varchar(50) NOT NULL DEFAULT '',
  `date` date DEFAULT NULL,
  `time` varchar(50) NOT NULL DEFAULT '',
  `status_change` varchar(50) NOT NULL DEFAULT '',
  `user` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_log`
--

INSERT INTO `itam_master_asset_log` (`id_itam_master_log`, `fa_code`, `date`, `time`, `status_change`, `user`, `note`) VALUES
(4, 'C.HS.202302.001', '2023-02-24', '11:10:46', 'ADD', 'Fathur Rahmansyah', ''),
(5, 'C.KP.202302.001', '2023-02-24', '11:13:10', 'ADD', 'Fathur Rahmansyah', ''),
(6, 'C.TV.202302.001', '2023-02-27', '10:39:32', 'ADD', 'Fathur Rahmansyah', ''),
(7, 'C.TV.202302.001', '2023-02-27', '10:41:27', 'EDIT', 'Fathur Rahmansyah', ''),
(8, 'C.TV.202302.001', '2023-02-27', '13:03:28', 'EDIT', 'Fathur Rahmansyah', ''),
(9, 'C.TV.202302.001', '2023-02-27', '13:39:07', 'EDIT', 'Fathur Rahmansyah', ''),
(10, 'C.KP.201802.002', '2023-03-02', '12:53:06', 'EDIT', 'Fathur Rahmansyah', ''),
(11, 'C.KP.201802.002', '2023-03-02', '12:53:17', 'EDIT', 'Fathur Rahmansyah', ''),
(12, 'C.KP.201802.002', '2023-03-02', '12:53:39', 'EDIT', 'Fathur Rahmansyah', ''),
(13, 'C.KP.201802.002', '2023-03-03', '13:28:34', 'UN-POSTED', 'Fathur Rahmansyah', 'test'),
(14, 'C.KP.201802.002', '2023-03-03', '14:04:01', 'POST', 'Fathur Rahmansyah', NULL),
(15, 'C.KP.201802.002', '2023-03-03', '14:04:55', 'UN-POSTED', 'Fathur Rahmansyah', '2'),
(16, 'C.KP.201802.002', '2023-03-03', '14:05:01', 'POST', 'Fathur Rahmansyah', NULL),
(17, 'C.KP.201802.002', '2023-03-03', '14:06:00', 'UN-POSTED', 'Fathur Rahmansyah', '4'),
(18, 'C.KP.201802.002', '2023-03-03', '14:06:07', 'POST', 'Fathur Rahmansyah', ''),
(19, 'C.KP.201802.002', '2023-03-03', '14:33:34', 'UN-POSTED', 'Fathur Rahmansyah', '22'),
(20, 'C.KP.201802.002', '2023-03-03', '14:33:39', 'POST', 'Fathur Rahmansyah', ''),
(21, 'C.KP.202303.001', '2023-03-08', '08:49:46', 'ADD', 'Fathur Rahmansyah', ''),
(22, 'C.TV.202302.001', '2023-04-05', '10:53:09', 'POST', 'Fathur Rahmansyah', ''),
(23, 'C.TV.202302.001', '2023-04-05', '11:21:55', 'UN-POSTED', 'Fathur Rahmansyah', 'ss'),
(24, 'C.TV.202302.001', '2023-04-05', '12:51:42', 'VOID', 'Fathur Rahmansyah', 'eee'),
(25, 'C.TV.202302.001', '2023-04-06', '07:39:29', 'PRINT', 'Fathur Rahmansyah', ''),
(26, 'C.KP.202303.001', '2023-04-06', '07:40:01', 'PRINT', 'Fathur Rahmansyah', ''),
(27, 'C.KP.202303.001', '2023-04-06', '07:41:01', 'PRINT', 'Fathur Rahmansyah', ''),
(28, 'C.KP.202303.001', '2023-04-06', '07:41:30', 'PRINT', 'Fathur Rahmansyah', ''),
(29, 'C.TV.202302.001', '2023-04-06', '07:45:54', 'EDIT', 'Fathur Rahmansyah', ''),
(30, 'C.TV.202302.001', '2023-04-06', '07:46:39', 'EDIT', 'Fathur Rahmansyah', '');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_asset_sys`
--

CREATE TABLE `itam_master_asset_sys` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_asset_sys`
--

INSERT INTO `itam_master_asset_sys` (`id`, `label`, `content`) VALUES
(1, 'KP', 'C.KP.202303.001'),
(2, 'ML', 'C.ML.202302.000'),
(3, 'PT', 'C.PT.202302.000'),
(4, 'SC', 'C.SC.202302.000'),
(5, 'SV', 'C.SV.202302.000'),
(6, 'NC', 'C.NC.202302.000'),
(7, 'SW', 'C.SW.202302.000'),
(8, 'MP', 'C.MP.202302.000'),
(9, 'UP', 'C.UP.202302.000'),
(10, 'HS', 'C.HS.202302.000'),
(11, 'TV', 'C.TV.202302.001'),
(12, 'NB', 'C.NB.202302.000'),
(13, 'TB', 'C.TB.202303.000');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_location`
--

CREATE TABLE `itam_master_location` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name` varchar(15) NOT NULL,
  `region` varchar(15) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_location`
--

INSERT INTO `itam_master_location` (`id`, `code`, `name`, `region`, `created_at`, `updated_at`) VALUES
(1, 'HO', 'Head Office', 'Cikarang', '2023-01-24', '2023-01-24'),
(2, 'CP', 'Cirebon Plan', 'Cirebon', '2023-01-24', '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `itam_master_status`
--

CREATE TABLE `itam_master_status` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `status_name` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itam_master_status`
--

INSERT INTO `itam_master_status` (`id`, `code`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'READY STOCK', '2023-01-24', '2023-01-24'),
(2, 2, 'ASSIGNED TO USER', '2023-01-24', '2023-01-24'),
(3, 3, 'IDLE', '2023-01-24', '2023-01-24'),
(4, 4, 'ON MAINTENANCE', '2023-01-24', '2023-01-24'),
(5, 5, 'REPAIRED STOCK', '2023-01-24', '2023-01-24'),
(6, 6, 'BROKEN / RUSAK', '2023-01-24', '2023-04-17'),
(7, 7, 'DISPOSED / DIBUANG', '2023-01-24', '2023-04-17'),
(8, 0, 'NOT-READY STOCK', '2023-01-24', '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_name`, `created_at`, `updated_at`) VALUES
(1, 'Toner', '2021-01-03 05:17:36', '2021-01-03 05:17:38'),
(5, 'Tinta', '2021-01-03 01:26:30', '2021-01-03 01:26:30'),
(6, 'Kertas', '2021-03-04 21:04:38', '2021-03-04 21:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `komputer`
--

CREATE TABLE `komputer` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_beli` date DEFAULT NULL,
  `ppb_pembelian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_jenis` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_kecepatan` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_tipe` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_slot` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd1_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd2_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vga_external` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_mac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komputer`
--

INSERT INTO `komputer` (`id`, `kode_fa`, `tanggal_beli`, `ppb_pembelian`, `p_merk`, `p_jenis`, `p_tipe`, `p_kecepatan`, `m_merk`, `m_tipe`, `r_kapasitas`, `r_tipe`, `r_slot`, `hd1_merk`, `hd1_tipe`, `hd1_kapasitas`, `hd2_merk`, `hd2_tipe`, `hd2_kapasitas`, `ssd_merk`, `ssd_tipe`, `ssd_kapasitas`, `vga_external`, `lan_nama`, `lan_mac`, `created_at`, `updated_at`) VALUES
(19, 'C.KP.201802.002', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Asustek', 'H61M-K', '8', 'DDR 3', 'Single', 'Seagate', 'ST500DM002-1BD142', '500', NULL, NULL, NULL, '', '', '', NULL, 'Realtek PCIe GBE Family Controller', '60-45-CB-70-64-9C', '2021-09-19 20:26:24', '2021-09-19 20:26:24'),
(20, 'C.KP.201512.019', NULL, NULL, 'AMD', 'A10', '7870K', '3.90', 'Asustek', 'A88XM-A', '8', 'DDR 3', 'Single', 'Seagate', 'ST1000DM010-2EP102', '1000', 'Seagate', 'ST3500418AS', '500', NULL, NULL, NULL, '1024MB NVIDIA GeForce GT 220', 'Realtek PCIe GbE Family Controller', '30-5A-3A-7C-44-92', '2021-07-26 21:38:36', '2022-02-23 08:25:36'),
(21, 'C.KP.201502.004', NULL, NULL, 'intel', 'Core i5', '3330', '3.00', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', 'ST500DM002-1ER14C', '500', NULL, NULL, NULL, '', '', '', NULL, 'Realtek PCIe GBE Family Controller', 'FC-AA-14-81-F1-61', '2021-07-27 00:13:54', '2021-07-27 00:13:54'),
(32, 'C.KP.201702.003', NULL, NULL, 'intel', 'Core i3', '2120', '3.3', 'Asustek', 'H61M-K', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-5D-29', '2022-06-10 02:58:28', '2022-06-10 02:58:28'),
(33, 'C.KP.202012.004', NULL, NULL, 'intel', 'Core i3', '9100F', '3.6', 'Asrock', 'B365M-HDV', '8', 'DDR 4', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 730', NULL, 'A8-A1-59-17-6E-DE', '2022-06-10 03:02:29', '2022-06-10 03:02:29'),
(34, 'C.KP.201910.007', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, 'B4-2E-99-50-A6-E4', '2022-06-10 03:06:08', '2022-06-10 03:06:08'),
(35, 'C.KP.201306.005', NULL, NULL, 'intel', 'Core i7', '3730', '3.80', 'Gigabyte', 'GA-B75M-D3V', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94-DE-80-0A-BC-99', '2022-06-10 03:11:59', '2022-06-10 03:11:59'),
(36, 'C.KP.201507.016', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-E9-F7', '2022-06-10 03:16:27', '2022-06-10 03:16:27'),
(37, 'C.KP.201306.006', NULL, NULL, 'intel', 'Core i7', '3770', '3.80', 'Gigabyte', 'GA-B75M-D3V', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94-DE-80-0A-BD-55', '2022-06-10 03:18:43', '2022-06-10 03:18:43'),
(38, 'C.KP.201706.003', NULL, NULL, 'intel', 'Core i3', NULL, '3.70', 'Gigabyte', 'H110M-DS2-CF', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-8E-2D-B7', '2022-06-10 03:22:59', '2022-06-10 03:22:59'),
(39, 'C.KP.201706.002', NULL, NULL, 'intel', 'Core i3', NULL, '3.70', 'Gigabyte', 'H110M-DS2-CF', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-8E-2A-0C', '2022-06-10 03:30:40', '2022-06-10 03:30:40'),
(40, 'C.KP.201501.002', NULL, NULL, 'intel', 'Core i7', '3770', '3.40', 'Gigabyte', 'H61M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C7-D4', '2022-06-10 03:38:14', '2022-06-10 03:38:14'),
(41, 'C.KP.201606.018', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-FE-53-57', '2022-06-10 03:48:30', '2022-06-10 03:48:30'),
(42, 'C.KP.201302.001', NULL, NULL, 'intel', 'Core i3', '2100', '3.10', 'ECS', 'H61H2-M13', '4', 'DDR 3', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-45-26-7E', '2022-06-10 04:11:14', '2022-06-10 04:11:14'),
(43, 'C.KP.201711.001', NULL, NULL, 'intel', 'Core i7', '4790', '3.60', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, NULL, 'NVIDIA GeForce GT 630', NULL, 'E0-D5-5E-12-5D-44', '2022-06-10 05:55:08', '2022-06-10 05:55:08'),
(44, 'C.KP.202110.011', '2021-10-29', '21100281', 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, '04-42-1A-A9-37-26', '2022-06-10 06:17:10', '2022-06-10 06:17:10'),
(45, 'C.KP.201709.001', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-DC-66-39', '2022-06-10 06:43:47', '2022-06-10 06:43:47'),
(46, 'C.KP.202102.004', '2021-03-04', '21020609', 'intel', 'Core i3', '7100', '3.90', 'Gigabyte', 'H110M-DS2-CF', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', NULL, '256', NULL, NULL, '18-C0-4D-92-F8-33', '2022-06-10 06:47:48', '2022-06-10 06:47:48'),
(47, 'C.KP.201706.019', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-D9-E0-AB', '2022-06-10 06:50:16', '2022-06-10 06:50:16'),
(48, 'C.KP.000000.012', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-B6-AC-DD', '2022-06-10 07:12:39', '2022-06-10 07:12:39'),
(49, 'C.KP.201412.006', NULL, NULL, 'intel', 'Dual Core', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-3E-6C-00', '2022-06-10 07:39:35', '2022-06-10 07:39:35'),
(50, 'C.KP.201912.008', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Dual', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-24-8C', '2022-06-10 08:10:40', '2022-08-18 03:37:03'),
(51, 'C.KP.201803.009', NULL, NULL, 'intel', 'Core i3', '4130', '3.40', 'Gigabyte', 'H81M-DS2', '2', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D0-AE-40', '2022-06-13 00:45:02', '2022-06-13 00:45:02'),
(52, 'C.KP.201805.013', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-96-D6-45', '2022-06-13 00:47:15', '2022-06-13 00:47:15'),
(53, 'C.KP.000000.027', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-S2C', '3', 'DDR 2', 'Dual', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-F8', '2022-06-13 00:50:14', '2022-06-13 00:50:14'),
(54, 'C.KP.201701.001', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-34-D6-89', '2022-06-13 00:57:23', '2022-06-13 00:57:23'),
(55, 'C.KP.201405.001', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '8', 'DDR 3', 'Single', 'Seagate', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74-D4-35-6D-BE-91', '2022-06-13 00:59:02', '2022-06-13 00:59:02'),
(56, 'C.KP.201501.001', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C9-6C', '2022-06-13 01:01:28', '2022-06-13 01:01:28'),
(57, 'C.KP.201804.010', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-5B-F2-F2', '2022-06-13 01:03:49', '2022-06-13 01:03:49'),
(58, 'C.KP.201305.003', NULL, NULL, 'intel', 'Pentium', 'G2010', '2.80', 'ECS', 'H61H2-MV', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74-27-EA-08-0C-CE', '2022-06-13 01:24:38', '2022-06-13 01:24:38'),
(59, 'C.KP.201507.017', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-04-A0-28', '2022-06-13 01:27:28', '2022-06-13 01:27:28'),
(60, 'C.KP.201901.001', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Asustek', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-4D-73-14', '2022-06-13 01:32:32', '2022-06-13 01:32:32'),
(61, 'C.KP.201711.003', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-12-5D-57', '2022-06-13 01:34:46', '2022-06-13 01:34:46'),
(62, 'C.KP.201607.019', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D7-DA-00', '2022-06-22 01:14:04', '2022-06-22 01:14:04'),
(63, 'C.KP.201501.003', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-80-C8-CA', '2022-06-22 01:18:35', '2022-06-22 01:18:35'),
(64, 'C.KP.000000.015', NULL, NULL, 'intel', 'Pentium', 'E5500', '2.80', 'Gigabyte', 'G31M-ES2L', '4', 'DDR 2', 'Dual', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-6F-65-61-39-77', '2022-06-22 01:27:44', '2022-06-22 01:27:44'),
(65, 'C.KP.000000.016', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '0.5', 'DDR 2', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '2022-06-22 01:31:09', '2022-06-22 01:31:09'),
(66, 'C.KP.000000.017', NULL, NULL, 'intel', 'Pentium', 'E5400', '2.70', 'Gigabyte', '945GCM-S2C', '2', 'DDR 2', 'Single', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\'00-1A-4D-F5-1C-23', '2022-06-22 01:35:19', '2022-06-22 01:35:19'),
(67, 'C.KP.000000.006', NULL, NULL, 'intel', 'Pentium', '631', NULL, 'Gigabyte', 'G41MT-S2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\'1C-6F-65-E7-02-4C', '2022-06-22 01:38:14', '2022-06-22 01:38:14'),
(68, 'C.KP.000000.005', NULL, NULL, 'intel', 'Dual Core', 'E7500', '2.93', 'Gigabyte', 'G41M-ES2L', '2', 'DDR 2', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-24-1D-EF-13-B6', '2022-06-22 01:42:30', '2022-06-22 01:42:30'),
(69, 'C.KP.201303.002', NULL, NULL, 'intel', 'Pentium', 'G2010', '2.80', 'ECS', 'H61H2-M17', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EC-A8-6B-8F-58-6F', '2022-06-22 01:46:22', '2022-06-22 01:46:22'),
(70, 'C.KP.000000.048', NULL, NULL, 'intel', 'Pentium', 'E5400', '2.7', 'Gigabyte', 'G31M-ES2C', '4', 'DDR 2', 'Dual', 'Seagate', NULL, '80', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-FA', '2022-06-22 01:49:19', '2022-06-22 01:49:19'),
(71, 'C.KP.201512.019', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce 9500 GT (1 GB)', NULL, '6C-F0-49-01-FD-C3', '2022-06-22 01:51:24', '2022-06-22 01:51:24'),
(72, 'C.KP.202204.004', NULL, NULL, 'intel', 'Core i5', '10400', '2.90', '\'Asustek', 'H510M-E', '16', 'DDR 4', 'Single', 'Seagate', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, '512', NULL, NULL, '50-EB-F6-2E-92-85', '2022-06-22 01:53:42', '2022-06-22 01:53:42'),
(73, 'C.KP.000000.003', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '5', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-CE-21-3D', '2022-06-22 01:54:55', '2022-06-22 01:54:55'),
(74, 'C.KP.201811.015', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', '\'Asustek', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-4D-6E-30', '2022-06-22 01:56:48', '2022-06-22 01:56:48'),
(75, 'C.KP.201507.015', NULL, NULL, 'intel', 'Core i3', '4130', '3.40', 'Gigabyte', 'H81M-DS2', '16', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-67-04-00', '2022-06-22 01:57:38', '2022-07-01 06:53:21'),
(76, 'C.KP.201603.005', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-17-61-61', '2022-06-22 02:00:05', '2022-06-22 02:00:05'),
(77, 'C.KP.000000.023', NULL, NULL, 'intel', 'Pentium', '524', NULL, 'Gigabyte', 'G41MT-S2PT', '2', 'DDR 3', 'Single', 'Seagate', NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-E4-86-51', '2022-06-22 02:06:28', '2022-06-22 02:06:28'),
(78, 'C.KP.201504.010', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-DS2', '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-5C-AA-47', '2022-06-22 02:09:20', '2022-06-22 02:09:20'),
(79, 'C.KP.201909.006', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'ASUSTeK', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-1F-D2', '2022-06-22 02:13:00', '2022-06-22 02:13:00'),
(80, 'C.KP.000000.028', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '2', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EA-23', '2022-06-22 02:16:07', '2022-06-22 02:16:07'),
(81, 'C.KP.201609.021', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-06-2E-C4', '2022-06-22 02:18:08', '2022-06-22 02:18:08'),
(82, 'C.KP.201705.002', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-13-A8-8A', '2022-06-22 02:22:27', '2022-06-22 02:22:27'),
(83, 'C.KP.201701.002', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-34-DA-22', '2022-06-22 02:24:37', '2022-06-22 02:24:37'),
(84, 'C.KP.201705.012', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-D9-1B-84', '2022-06-22 02:26:49', '2022-06-22 02:26:49'),
(85, 'C.KP.000000.062', NULL, NULL, 'intel', 'Pentium', 'G630', '2.70', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90-2B-34-C1-70-41', '2022-06-22 02:28:32', '2022-06-22 02:28:32'),
(86, 'C.KP.201706.022', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-11-C5-B3', '2022-06-22 02:30:19', '2022-06-22 02:30:19'),
(87, 'C.KP.201706.023', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-11-C8-9A', '2022-06-22 02:37:14', '2022-06-22 02:37:14'),
(88, 'C.KP.000000.035', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '2022-06-22 02:38:29', '2022-06-22 02:38:29'),
(89, 'C.KP.000000.068', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '1', 'DDR 2', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-24-1D-3B-F5-CD', '2022-06-22 02:43:58', '2022-06-22 02:43:58'),
(90, 'C.KP.201703.002', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', 'Seagate', NULL, '250', NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-99-0A-81', '2022-06-22 02:49:10', '2022-06-22 02:49:10'),
(91, 'C.KP.201703.003', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-98-04-C6', '2022-06-22 02:52:00', '2022-06-22 02:52:00'),
(92, 'C.KP.201411.005', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-0E-ED-14', '2022-06-22 02:54:02', '2022-06-22 02:54:02'),
(93, 'C.KP.201512.018', NULL, NULL, 'intel', 'Core i3', '3240', '3.40', 'Gigabyte', 'H61M-S2PV', '8', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-41-AC-CA', '2022-06-22 02:56:58', '2022-06-22 02:56:58'),
(94, 'C.KP.000000.084', NULL, NULL, 'intel', 'Pentium', 'E5700', '3.00', 'Gigabyte', 'G41MT-S2PT', '4', 'DDR 4', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50-E5-49-A4-86-AA', '2022-06-22 03:00:56', '2022-06-22 03:00:56'),
(95, 'C.KP.202002.001', NULL, NULL, 'intel', 'Core i3', '8100', '3.60', 'Asustek', 'H310M-D R2', '12', 'DDR 4', 'Dual', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0C-9D-92-CB-FB-08', '2022-06-22 03:03:03', '2022-06-22 03:03:03'),
(96, 'C.KP.000000.010', NULL, NULL, 'intel', 'Pentium', 'E5300', '2.60', 'Gigabyte', 'G31M-ES2L', '3', 'DDR 2', 'Dual', 'Seagate', NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-6F-65-60-A4-E8', '2022-06-22 03:05:43', '2022-06-22 03:05:43'),
(97, 'C.KP.201803.005', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Asustek', 'H61M-K', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-52-62', '2022-06-22 03:09:48', '2022-06-22 03:09:48'),
(98, 'C.KP.201803.008', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', NULL, NULL, '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-52-5F', '2022-06-22 03:11:45', '2022-06-22 03:11:45'),
(99, 'C.KP.201802.004', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Asustek', 'H61M-K', '8', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-5F-59', '2022-06-22 03:14:06', '2022-06-22 03:14:06'),
(100, 'C.KP.201802.001', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Asustek', 'H61M-K', '4', 'DDR 3', 'Single', 'Hitachi', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-5F-A7', '2022-06-22 03:16:40', '2022-06-22 03:16:40'),
(101, 'C.KP.201802.012', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-96-D6-46', '2022-06-22 03:18:29', '2022-06-22 03:18:29'),
(102, 'C.KP.202201.002', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Vgen', NULL, '256', NULL, NULL, '50-EB-F6-7B-02-11', '2022-06-22 03:21:32', '2022-06-22 03:21:32'),
(103, 'C.KP.201906.002', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'B4-2E-99-2D-D9-A8', '2022-06-22 03:23:11', '2022-06-22 03:23:11'),
(104, 'C.KP.000000.058', NULL, NULL, 'intel', 'Pentium', 'E5700', '3.00', 'ECS', 'G41T-M6', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-68-D5', '2022-06-22 03:25:12', '2022-06-22 03:25:12'),
(105, '-', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-ES2L', '2', 'DDR 2', 'Single', 'Western Digital', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6C-F0-49-86-64-D1', '2022-06-22 03:27:50', '2022-06-22 03:27:50'),
(106, 'C.KP.201702.002', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-97-B1-7E', '2022-06-22 03:30:18', '2022-06-22 03:30:18'),
(107, 'C.KP.201702.003', NULL, NULL, 'intel', 'Core i5', '4460', '3.20', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-96-AA-CB', '2022-06-22 03:33:22', '2022-06-22 03:33:22'),
(108, 'C.KP.000000.046', NULL, NULL, 'intel', 'Pentium', 'E5700', '3.00', 'ECS', 'G41T-M6', '2', 'DDR 3', 'Single', 'Western Digital', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-67-66', '2022-06-22 03:37:04', '2022-06-22 03:37:04'),
(109, 'C.KP.201803.006', NULL, NULL, 'intel', 'Core i5', '2400', '3.10', 'Asustek', 'H61M-K', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-69-C8-4C', '2022-06-22 03:40:22', '2022-06-22 03:40:22'),
(110, 'C.KP.000000.072', NULL, NULL, 'intel', 'Pentium', 'E5700', '3.00', 'ECS', 'G41T-M6', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-6B-85', '2022-06-22 03:42:27', '2022-06-22 03:42:27'),
(111, 'C.KP.201504.009', NULL, NULL, 'intel', 'Pentium', 'G2030', '3.00', 'Gigabyte', 'H61M-DS2', '2', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-5C-AA-46', '2022-06-22 03:45:12', '2022-06-22 03:45:12'),
(112, 'C.KP.000000.052', NULL, NULL, 'intel', 'Core i3', '2100', '3.10', 'ECS', 'H61H2-M6', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '1024MB NVIDIA GeForce GT 440', NULL, '10-78-D2-36-D0-E1', '2022-06-22 03:47:35', '2022-06-22 03:47:35'),
(113, 'C.KP.000000.055', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-6F-65-EA-62-E0', '2022-06-22 03:54:02', '2022-06-22 03:54:02'),
(114, 'C.KP.000000.056', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '1', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C:6F:65:32:C6:6D', '2022-06-22 03:56:37', '2022-06-22 03:56:37'),
(115, 'C.KP.000000.057', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '1', 'DDR 3', '-pilih-', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '2022-06-22 04:07:35', '2022-06-22 04:07:35'),
(116, 'C.KP.000000.018', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D0-AF-17', '2022-06-22 04:10:13', '2022-06-22 04:10:13'),
(117, 'C.KP.201605.013', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D3-16-F4', '2022-06-22 04:13:27', '2022-06-22 04:13:27'),
(118, 'C.KP.201606.017', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-FE-D5-F6', '2022-06-22 04:18:55', '2022-06-22 04:18:55'),
(119, 'C.KP.202104.006', NULL, NULL, 'intel', 'Core i7', '7700', '3.60', 'MSI', 'H110M', '16', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Adata', NULL, '256', NULL, NULL, '2C-F0-5D-D3-13-45', '2022-06-22 04:24:01', '2022-06-22 04:24:01'),
(120, 'C.KP.202104.007', NULL, NULL, 'intel', 'Core i5', '7400', '3.00', 'MSI', 'H110M', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Adata', NULL, '256', NULL, NULL, '2C-F0-5D-D3-13-3E', '2022-06-22 04:26:04', '2022-06-22 04:26:04'),
(121, 'C.KP.201710.003', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-DC-62-B5', '2022-06-22 04:28:34', '2022-06-22 04:28:34'),
(122, 'C.KP.000000.002', NULL, NULL, 'intel', 'Pentium', 'E6600', '3.06', 'ECS', 'G41T-R3', '6', 'DDR 3', 'Dual', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-22-8E-35', '2022-06-22 04:30:52', '2022-06-22 04:30:52'),
(123, 'C.KP.202104.008', NULL, NULL, 'intel', 'Core i5', '7400', '3.00', 'MSI', 'H110M', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Adata', NULL, '256', NULL, NULL, '2C-F0-5D-D3-13-36', '2022-06-22 04:33:11', '2022-06-22 04:33:11'),
(124, 'C.KP.202104.009', NULL, NULL, 'intel', 'Core i5', '7400', '3.00', 'MSI', 'H110M', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Adata', NULL, '256', NULL, NULL, '2C-F0-5D-D3-13-53', '2022-06-22 04:35:30', '2022-06-22 04:35:30'),
(125, 'C.KP.202104.010', NULL, NULL, 'intel', 'Core i5', '7400', '3.00', 'MSI', 'H110M', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Adata', NULL, '256', NULL, NULL, '2C-F0-5D-D3-13-44', '2022-06-22 04:37:24', '2022-06-22 04:37:24'),
(126, 'C.KP.201503.006', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-5A-05-C3', '2022-06-22 04:38:54', '2022-06-22 04:38:54'),
(127, 'C.KP.201702.004', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-ES2L', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-FF', '2022-06-22 04:43:34', '2022-06-22 04:43:34'),
(128, 'C.KP.201702.001', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-98-56-B0', '2022-06-22 04:45:45', '2022-06-22 04:45:45'),
(129, 'C.KP.201803.009', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Gigabyte', 'H61M-K', '3', 'DDR 3', 'Dual', 'Western Digital', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-5E-6A', '2022-06-22 04:50:01', '2022-06-22 04:50:01'),
(130, 'C.KP.201803.007', NULL, NULL, 'intel', 'Core i3', '2120', '3.30', 'Gigabyte', 'H61M-K', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60-45-CB-70-52-74', '2022-06-22 05:41:00', '2022-06-22 05:41:00'),
(131, 'C.KP.000000.064', NULL, NULL, 'intel', 'Core i3', '4150', '3.50', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-AA-29-75', '2022-06-22 05:44:56', '2022-06-22 05:44:56'),
(132, 'C.KP.201605.012', NULL, NULL, '-pilih-', '-pilih-', NULL, NULL, 'ECS', 'H55-CM', '3', 'DDR 3', 'Dual', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-84-34-46', '2022-06-22 05:48:12', '2022-06-22 05:48:12'),
(133, 'C.KP.201702.002', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Western Digital', NULL, '500', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-96-AA-CD', '2022-06-22 05:52:32', '2022-06-22 05:52:32'),
(134, 'C.KP.201601.001', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-15-13-F7', '2022-06-22 05:55:55', '2022-06-22 05:55:55'),
(135, 'C.KP.202203.003', '2022-03-17', '22030226', 'intel', 'Core i3', '7100', '3.90', 'Asustek', 'H110M-K', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Vgen', 'V-GEN10SM21AR256HY', '256', NULL, NULL, '50-EB-F6-7C-E4-DE', '2022-06-22 05:59:28', '2022-07-28 02:03:49'),
(136, 'C.KP.201601.002', NULL, NULL, '-pilih-', 'Core i3', '3220', '3.30', 'Gigabyte', 'H61M-DS2', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-48-59-1D', '2022-06-22 06:01:43', '2022-06-22 06:01:43'),
(137, 'C.KP.201702.007', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-98-41-2D', '2022-06-22 06:03:56', '2022-06-22 06:03:56'),
(138, 'C.KP.000000.047', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-ES2C', '4', 'DDR 2', 'Dual', 'Seagate', NULL, '80', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, '6C-F0-49-64-D7-A8', '2022-06-22 06:07:12', '2022-06-22 06:07:12'),
(139, 'C.KP.000000.041', NULL, NULL, 'intel', 'Pentium', 'E5500', '1.80', 'Gigabyte', 'G31-S2C', '4', 'DDR 3', 'Dual', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-AF-F7-E4-89-02', '2022-06-22 06:10:05', '2022-06-22 06:10:05'),
(140, 'C.KP.000000.049', NULL, NULL, 'intel', 'Pentium', 'E2160', '0.333', 'Gigabyte', 'G31M-S2C', '1', 'DDR 2', 'Single', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-C8-96-F8', '2022-06-22 06:19:52', '2022-06-22 06:19:52'),
(141, 'C.KP.201805.011', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', NULL, '80', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-96-D2-96', '2022-06-22 06:23:06', '2022-06-22 06:23:06'),
(142, 'C.KP.000000.020', NULL, NULL, 'intel', 'Pentium', 'E5300', '2.60', 'Gigabyte', 'G41M-ES2L', '2', 'DDR 2', 'Single', 'Seagate', NULL, '150', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EA-1B', '2022-06-22 06:26:08', '2022-06-22 06:26:08'),
(143, 'C.KP.000000.061', NULL, NULL, 'intel', 'Pentium', 'E2160', '1.80', 'Gigabyte', 'G31M-S2C', '3', 'DDR 2', 'Dual', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, '1024MB NVIDIA GeForce 210', NULL, '00-1F-D0-C9-EB-45', '2022-06-22 06:29:27', '2022-06-22 06:29:27'),
(144, 'C.KP.202201.001', NULL, NULL, 'intel', 'Core i3', '4360', '3.70', 'Asustek', 'H81M-K', '8', 'DDR 3', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'Vgen', NULL, '256', NULL, NULL, 'F0-2F-74-AE-30-84', '2022-06-22 06:32:13', '2022-06-22 06:32:13'),
(145, 'C.KP.000000.063', NULL, NULL, 'intel', 'Pentium', 'E5500', '2.80', 'Gigabyte', 'G31M-ES2L', '2', 'DDR 2', 'Single', 'Seagate', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6C-F0-49-86-2A-C3', '2022-06-22 06:34:27', '2022-06-22 06:34:27'),
(146, 'C.KP.201703.001', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-71-6A-E4', '2022-06-22 06:37:43', '2022-06-22 06:37:43'),
(147, 'C.KP.201607.020', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Western Digital', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-6C-02', '2022-06-22 06:44:03', '2022-06-22 06:44:03'),
(148, 'C.KP.000000.075', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Western Digital', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-6B-85', '2022-06-22 06:45:40', '2022-06-22 06:45:40'),
(149, 'C.KP.201705.005', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-BF-F3-8B', '2022-06-22 06:47:08', '2022-06-22 06:47:54'),
(150, 'C.KP.201412.007', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-3E-6E-97', '2022-06-22 06:49:39', '2022-06-22 06:49:39'),
(151, 'C.KP.201907.004', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-20-4F', '2022-06-22 06:50:41', '2022-06-22 06:50:41'),
(152, 'C.KP.000000.041', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9C-D6-43-63-EC-FC', '2022-06-22 06:51:35', '2022-06-22 06:51:35'),
(153, 'C.KP.201306.004', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 630 (Gigabyte) 36 °C', NULL, '94-DE-80-2A-23-40', '2022-06-22 06:53:12', '2022-06-22 06:53:12'),
(154, 'C.KP.201605.015', NULL, NULL, 'intel', '-pilih-', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Western Digital', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA Quadro K620 (NVIDIA)', NULL, '00-1E-67-F7-66-7D', '2022-06-22 06:55:20', '2022-06-22 06:55:20'),
(155, 'C.KP.201601.004', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '1024MB NVIDIA GeForce 9500 GT (Club3D) 41 °C', NULL, '40-8D-5C-A1-4F-F9', '2022-06-22 06:56:25', '2022-06-22 06:56:25'),
(156, 'C.KP.201702.008', NULL, NULL, 'intel', 'Core i7', '4790', '3.6', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', 'ST1000DM010-2EP102', '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730 (ASUStek Computer Inc', NULL, '1C-1B-0D-BF-F3-A2', '2022-06-22 06:57:37', '2022-07-27 07:27:38'),
(157, 'C.KP.201704.001', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Western Digital', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-96-79-31', '2022-06-22 06:58:44', '2022-06-22 06:58:44'),
(158, 'C.KP.201907.005', NULL, NULL, 'intel', 'Core i3', '4360', '3.7', 'Asustek', 'H81M-K', '4', 'DDR 3', 'Single', 'Seagate', 'ST500DM009-2F110A', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-20-01', '2022-06-22 06:59:50', '2022-07-27 06:45:39'),
(159, 'C.KP.201603.007', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce 9500 GT (Microsoft Corporation - WD', NULL, '40-8D-5C-D0-AE-89', '2022-06-22 07:01:12', '2022-06-22 07:01:12'),
(160, 'C.KP.201603.008', NULL, NULL, 'intel', 'Core i7', '4790', '3.6', 'Gigabyte', 'H81M-DS2', '8', 'DDR 3', 'Single', 'Seagate', 'ST500DM0', '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 630 (Gigabyte)', NULL, '40-8D-5C-D0-B0-D2', '2022-06-22 07:02:32', '2022-07-27 06:20:08'),
(161, 'C.KP.201811.014', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '4', 'DDR 2', '-pilih-', 'Seagate', NULL, '1000', 'Seagate', NULL, '250', NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '2C-FD-A1-E3-4C-70', '2022-06-22 07:03:43', '2022-06-22 07:03:43'),
(162, 'C.KP.201811.014', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '4', 'DDR 2', '-pilih-', 'Seagate', NULL, '1000', 'Seagate', NULL, '250', NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '2C-FD-A1-E3-4C-70', '2022-06-22 07:03:46', '2022-06-22 07:03:46'),
(163, 'C.KP.201604.011', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '2022-06-22 07:04:51', '2022-06-22 07:04:51'),
(164, 'C.KP.000000.079', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 430 (Undefined) 34 °C Hard Drive', NULL, 'C8-60-00-9F-6C-72', '2022-06-22 07:06:15', '2022-06-22 07:06:15'),
(165, 'C.KP.201412.008', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730 (Gigabyte', NULL, 'FC-AA-14-3C-83-03', '2022-06-22 07:07:42', '2022-06-22 07:07:42'),
(166, 'C.KP.201605.014', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '6', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', 'Seagate', NULL, '500', NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 430', NULL, '40-8D-5C-D3-16-F6', '2022-06-22 07:08:43', '2022-06-22 07:08:43'),
(167, 'C.KP.000000.077', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '3', 'DDR 3', '-pilih-', 'Western Digital', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 'NVIDIA GeForce 6200 TurboCache™', NULL, '-', '2022-06-22 07:10:04', '2022-06-22 07:10:04'),
(168, 'C.KP.201706.001', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1C-1B-0D-8E-2A-09', '2022-06-22 07:11:24', '2022-06-22 07:11:24'),
(169, 'C.KP.000000.071', NULL, NULL, 'intel', 'Dual Core', 'E5700', '3.00', 'ECS', 'ECS G41T-M6', '4', 'DDR 3', 'Single', 'Western Digital', 'WD2500AAKX-603CA0', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-78-D2-39-6B-90', '2022-06-22 07:12:19', '2022-07-27 05:45:48'),
(170, 'C.KP.201502.005', NULL, NULL, 'intel', 'Core i5', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730 (Gigabyte', NULL, 'FC-AA-14-81-E9-96', '2022-06-22 07:13:54', '2022-06-22 07:13:54'),
(171, 'C.KP.201907.004', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-92-26-D0-20-01', '2022-06-22 07:14:52', '2022-06-22 07:14:52'),
(172, 'C.KP.201603.006', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 630 (Gigabyte)', NULL, '40-8D-5C-D0-AF-0B', '2022-06-22 07:17:09', '2022-06-22 07:17:09'),
(173, 'C.KP.000000.081', NULL, NULL, 'intel', 'Pentium', NULL, NULL, NULL, NULL, '2', 'DDR 2', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00-1F-D0-0B-CD-A4', '2022-06-22 07:17:58', '2022-06-22 07:17:58'),
(174, 'C.KP.201604.010', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '2022-06-22 07:19:36', '2022-06-22 07:19:36'),
(175, 'C.KP.201504.008', NULL, NULL, 'intel', '-pilih-', NULL, NULL, NULL, NULL, '3', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FC-AA-14-5D-B6-61', '2022-06-22 07:20:19', '2022-06-22 07:20:19'),
(176, 'C.KP.201605.016', NULL, NULL, 'intel', 'Core i3', NULL, NULL, NULL, NULL, '4', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40-8D-5C-D1-7D-20', '2022-06-22 07:21:18', '2022-06-22 07:21:18'),
(177, 'C.KP.201705.013', NULL, NULL, 'intel', 'Core i7', NULL, NULL, NULL, NULL, '8', 'DDR 3', '-pilih-', 'Seagate', NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, '2047MB NVIDIA GeForce GT 730', NULL, '1C-1B-0D-D9-1A-99', '2022-06-22 07:22:09', '2022-06-22 07:22:09'),
(178, 'C.KP.000000.082', NULL, NULL, 'intel', 'Dual Core', NULL, NULL, NULL, NULL, '2', 'DDR 3', '-pilih-', 'Seagate', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-69-AB-4E-82-B2', '2022-06-22 07:23:19', '2022-06-22 07:23:19'),
(179, 'C.KP.202207.005', '2022-07-11', '22061077', 'intel', 'Core i3', '7100', '3.9', 'Asustek', 'H110M-K', '8', 'DDR 4', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, 'VGEN', 'V-GEN03SM22AR256SDK', '256', NULL, 'Realtek PCIe GbE Family Controller', '58-11-22-49-63-3C', '2022-07-28 01:49:36', '2022-07-28 01:49:36'),
(180, 'C.KP.220000.001', NULL, NULL, 'intel', 'Core i3', '4160', '3.60', 'Gigabyte', 'H81M-DS2', '4', 'DDR 3', 'Single', 'Seagate', 'ST500DM009-2F110A', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E0-D5-5E-15-13-F7', '2022-07-28 02:55:08', '2022-07-28 02:55:08'),
(181, 'C.KP.202207.006', '2022-07-11', '22061077', 'AMD', 'Core i3', '7100', '3.90', 'Asustek', 'H110M-K', '8', 'DDR 4', 'Single', '-', '-', '-', '-', '-', '-', 'VGEN', '-', '256', '-', 'Realtek PCIe GbE Family Controller', '58-11-22-49-63-1C', '2022-08-12 05:55:58', '2022-08-12 05:55:58'),
(182, 'C.KP.202208.008', '2022-08-12', '22071873', 'intel', 'Core i3', '7100', '3.90', 'Asustek', 'H81M-K', '8', 'DDR 4', 'Single', '-', '-', '-', '-', '-', '-', 'VGEN', '-', '256', '-', 'Realtek PCIe GbE Family Controller', '58-11-22-49-55-AD', '2022-09-02 02:29:59', '2022-09-02 02:29:59'),
(184, 'C.KP.202210.009', '2022-10-13', '22100497', 'intel', 'Core i7', 'Core i7-10700', '2.90G', 'ASUSTeK', 'PRIME H510M-E', '16', 'DDR 4', 'Dual', NULL, NULL, NULL, NULL, NULL, NULL, 'Midasforce', 'sata', '512', '\'-', 'Network', '\'-', '2022-11-04 05:59:19', '2022-11-09 02:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_beli` date DEFAULT NULL,
  `ppb_pembelian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lp_merk` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lp_tipe` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_jenis` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_kecepatan` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_tipe` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_slot` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssd_tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssd_merk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssd_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vga_merk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vga_tipe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vga_kapasitas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wireless_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wireless_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bluetooth_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bluetooth_mac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `optical_drive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `kode_fa`, `tanggal_beli`, `ppb_pembelian`, `serial_number`, `lp_merk`, `lp_tipe`, `p_merk`, `p_jenis`, `p_tipe`, `p_kecepatan`, `r_kapasitas`, `r_tipe`, `r_slot`, `hd_merk`, `hd_tipe`, `hd_kapasitas`, `ssd_tipe`, `ssd_merk`, `ssd_kapasitas`, `vga_merk`, `vga_tipe`, `vga_kapasitas`, `eth_name`, `eth_mac`, `wireless_name`, `wireless_mac`, `bluetooth_name`, `bluetooth_mac`, `optical_drive`, `created_at`, `updated_at`) VALUES
(5, 'C.NB.202103.002', '2021-03-31', '21030664', 'PF2MM09V', 'Lenovo Idepad Slim 3', '14ADA05', 'AMD', 'Ryzen 3', '3250U', '2.60', '12', 'DDR 4', 'Dual', '', '', '', 'WDC PC SN530 SDBPMPZ-256G-1101', 'Western Digital', '256', 'AMD', 'Radeon', '1 GB', '-', '-', 'Qualcomm Atheros QCA61x4A Wireless Network Adapter', 'D8-F3-BC-8B-00-E7', 'Bluetooth Device', 'D8-F3-BC-8B-00-E8', '-', '2021-04-04 22:24:07', '2022-07-18 00:43:45'),
(6, 'C.NB.202110.003', '2021-10-25', '21100434', 'M7N0LP03104930B', 'Asus', 'Zenbook 13 UM325', 'AMD', 'Ryzen 7', '5700U', '1.9', '16', 'DDR 4', 'Single', 'Hitachi', 'HFM001TD3JX013N', '1000', '', '', '', NULL, NULL, NULL, NULL, '-', 'Intel(R) Dual Band Wireless-AC 8265', '38-FC-98-7C-D2-65', 'Bluetooth Device', '38-FC-98-7C-D2-69', NULL, '2021-11-01 17:21:14', '2021-11-01 17:21:14'),
(9, 'C.KP.201512.019', '2022-02-18', NULL, 'mxjptr', 'Asus', 'UM325', 'intel', 'Core i5', '5700U', NULL, '8', 'DDR 3', 'Single', NULL, NULL, NULL, 'ddd', 'VGEN', '512', NULL, NULL, NULL, NULL, '-', NULL, '38-FC-98-7C-D2-65', NULL, NULL, NULL, '2022-02-24 02:07:47', '2022-02-24 02:14:45'),
(10, 'C.NB.201909.008', NULL, NULL, NULL, 'Asus', 'Zenbook 13', 'intel', 'Core i5', NULL, '1.6', '8', 'DDR 4', 'Single', 'Unknown', 'SSDPEKNW512G8', '500', '-', '-', '-', 'Intel', 'UHD 620', '-', '-', '-', 'Intel(R) Wireless-AC 9560 160MHz', 'D0-AB-D5-17-FC-FF', '-', 'D0-AB-D5-17-FD-03', '-', '2022-07-08 02:33:43', '2022-07-08 02:33:43'),
(11, 'C.NB.201906.006', NULL, '-', '-', 'Lenovo', 'Ideapad 330-141KB', 'intel', 'Core i5', '8250U', '1.6', '8', 'DDR 4', 'Single', 'Toshiba', 'MQ04ABF100', '1000', '-', '-', '-', '-', '-', '-', 'Realtek PCIe GBE Family', 'E8-6A-64-61-67-94', 'Qualcomm Atheros QCA9377', 'F8-A2-D6-B6-69-89', '-', '-', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 02:42:20', '2022-07-08 02:42:20'),
(12, 'C.NB.201505.003', NULL, '-', '-', 'Lenovo', '-', '-pilih-', '-pilih-', '-', '-', '8', '-pili', 'Dual', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 02:47:20', '2022-07-08 02:47:20'),
(13, 'C.NB.000000.016', NULL, '-', '-', '-', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 02:50:02', '2022-07-08 02:50:02'),
(14, 'C.NB.201503.001', NULL, '-', '-', 'HP', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 02:51:49', '2022-07-08 02:51:49'),
(15, 'C.NB.202203.002', NULL, '-', '32JT9L3', 'Dell', 'Vostro 3510', 'intel', 'Core i5', '1135G7', '2.4', '8', 'DDR 4', 'Single', '-', '-', '-', 'NVME PM991a', 'Samsung', '512', 'Intel Graphics', 'Intel Iris XE', '-', 'Realtek PCIe GbE Family Controller', 'B4-45-06-98-94-6A', 'Intel(R) Wireless-AC 9462', '98-43-FA-3A-2C-1C', '-', '-', '-', '2022-07-08 02:57:13', '2022-07-18 00:49:26'),
(16, 'C.NB.201909.009', NULL, '-', '-', 'Fujitsu', '-', '-pilih-', '-pilih-', NULL, '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 02:59:31', '2022-07-08 02:59:31'),
(17, 'C.NB.201804.004', NULL, '-', '-', 'Dell', 'Inspiron 15 7000', 'intel', 'Core i7', '-', '2.8', '8', 'DDR 3', '-pilih-', 'Seagate', 'ST1000LX015-1U7172', '1000', '-', '-', '-', 'NVIDIA', 'GeForce GTX 1050 Ti', '4095', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 03:03:13', '2022-07-08 03:03:13'),
(18, 'C.NB.201903.002', NULL, '-', 'PF157QM7', 'Lenovo', 'Ideapad 330-141KB', 'intel', 'Core i5', '8250U', '1.6', '8', 'DDR 4', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', '-', '-', '-', 'Realtek PCIe GBE Family', 'E8-6A-64-06-D6-1A', 'Qualcomm Atheros QCA9377', '00-F4-8D-B9-CF-D9', 'Bluetooth Device', '00-F4-8D-B9-CF-DA', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 03:06:56', '2022-07-08 03:06:56'),
(19, 'C.NB.201804.005', NULL, '-', '-', 'Lenovo', 'Ideapad 320-14ISK', 'intel', 'Core i5', 'Skylake', '2', '4', 'DDR 3', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 03:10:07', '2022-07-08 03:10:07'),
(20, 'C.NB.000000.018', NULL, '-', '-', 'Acer', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 03:11:39', '2022-07-08 03:11:39'),
(21, 'C.NB.000000.027', NULL, NULL, NULL, 'Acer', 'Aspire 4750', 'intel', 'Core i3', '2330M', '2.2', '4', 'DDR 3', 'Dual', 'Western Digital', 'WD5000BPVT-22HXZT1', '500', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'HL-DT-ST DVDRAM GT32', '2022-07-08 03:24:42', '2022-07-08 03:24:42'),
(22, 'C.NB.000000.012', NULL, '-', '-', 'Acer', 'Aspire 4736', 'intel', 'Core 2 Duo', 'T6570', '2.1', '1', 'DDR 3', '-pilih-', 'Western Digital', 'WD2500BEVT-22A23T0', '250', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'HL-DT-ST DVDRAM GT30N', '2022-07-08 03:29:06', '2022-07-08 03:29:06'),
(23, 'C.NB.000000.013', NULL, '-', '-', 'Acer', 'Aspire 4740', 'intel', 'Core i5', '330M', '2.13', '3', 'DDR 3', '-pilih-', 'Western Digital', 'WD3200BEVT-22ZCT0', '320', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Optiarc DVD RW AD-7585H', '2022-07-08 03:31:47', '2022-07-08 03:31:47'),
(24, 'C.NB.201610.004', NULL, '-', '-', 'Lenovo', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 03:33:08', '2022-07-08 03:33:08'),
(25, 'C.NB.000000.015', NULL, '-', '-', 'HP', '-', 'intel', 'Dual Core', 'T2500', '2', '2', 'DDR 2', 'Single', 'Seagate', 'ST9120817AS', '120', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Optiarc DVD RW AD-7530B', '2022-07-08 03:36:16', '2022-07-08 03:36:16'),
(26, 'C.NB.000000.014', NULL, NULL, NULL, 'HP', '520', 'intel', 'Dual Core', 'T2500', '2', '2', 'DDR 2', '-pilih-', 'Hitachi', 'HTS542512K9A300', '120', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'Optiarc DVD RW AD-7530B', '2022-07-08 03:39:11', '2022-07-08 03:39:11'),
(27, 'C.NB.000000.022', NULL, NULL, NULL, 'HP', '431', 'intel', 'Core i5', '2410M', '2.3', '8', 'DDR 3', '-pilih-', 'Toshiba', 'MK6476GSX', '640', '-', '-', '-', 'AMD', 'ATI Radeon HD 6470M', '1024', '-', '-', '-', '-', '-', '-', 'hp DVD A DS8A5LH', '2022-07-08 03:41:41', '2022-07-08 03:41:41'),
(28, 'C.NB.201810.007', NULL, '-', 'PF160S86', 'Lenovo', 'Ideapad 330-14IKB', 'intel', 'Core i5', '8250U', '1.6', '8', 'DDR 3', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', 'AMD', 'Radeon 530', '2048', 'Realtek PCIe GBE Family Controller', '8C-16-45-F0-3A-B3', 'Qualcomm Atheros QCA9377 Wireless Network Adapter', '00-F4-8D-A7-95-7B', 'Bluetooth Device', '00-F4-8D-A7-95-7C', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 03:45:39', '2022-07-08 03:45:39'),
(29, 'C.NB.201403.001', NULL, NULL, NULL, 'Acer', 'Aspire E1-470', 'intel', 'Core i3', '3217U', '1.8', '2', 'DDR 3', '-pilih-', '-', '-', '500', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 03:48:13', '2022-07-08 03:48:13'),
(30, 'C.NB.202205.003', NULL, '-', 'MP22EPS9', 'Laptop', 'Lenovo Ideapad 5 14I', 'intel', 'Core i5', '1135G7', '2.4', '16', 'DDR 4', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 03:51:14', '2022-07-08 03:51:14'),
(31, 'C.NB.201909.007', NULL, '-', 'PF16JC6M', 'Lenovo', 'Lenovo	Ideapad 330-1', 'intel', 'Core i5', '8250U', '1.6', '8', 'DDR 4', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', '-', '-', '-', 'Realtek PCIe FE Family', '8C-16-45-E8-24-E0', 'Qualcomm Atheros QCA9377', '00-F4-8D-A9-03-4F', 'Bluetooth Device', '00-F4-8D-A9-03-50', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 03:54:10', '2022-07-08 03:54:10'),
(32, 'C.NB.201409.006', NULL, NULL, NULL, 'HP', 'Pavilion 14', 'intel', 'Core i5', '4200U', '1.6', '4', 'DDR 3', 'Single', 'Toshiba', 'MQ01ABD075', '600', '-', '-', '-', '-', '-', '-', 'Realtek PCIe FE Family Controller', 'A0-1D-48-D4-92-CE', 'Ralink RT3290 802.11bgn Wi-Fi Adapter', '48-5A-B6-90-1F-1D', '-', '-', 'hp CDDVDW SU-208FB', '2022-07-08 03:56:38', '2022-07-08 03:56:38'),
(33, 'C.NB.201803.002', NULL, NULL, NULL, 'Lenovo', 'Ideapad 320-14IKB', 'intel', 'Core i5', '7200U', '2.5', '4', 'DDR 3', '-pilih-', 'Seagate', 'ST1000LM035-1RK172', '1000', '-', '-', '-', 'NVIDA', 'GeForce 320MX', '2047', '-', '-', '-', '-', '-', '-', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 03:58:39', '2022-07-08 03:58:39'),
(35, 'C.NB.201907.004', NULL, '-', 'MP1GLJFC', 'Lenovo', 'Ideapad 130-141KB', 'intel', 'Core i3', '6006U', '2', '4', 'DDR 4', 'Single', 'Seagate', 'ST1000LM035-1RK172', '1000', '-', '-', '-', '-', '-', '-', 'Realtek PCIe FE Family', '9C-5A-44-0D-BB-41', 'Realtek 8821CE Wireless', 'B0-FC-36-EC-40-53', 'Bluetooth Device', 'B0-FC-36-EC-40-54', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 04:07:09', '2022-07-08 04:07:09'),
(36, 'C.NB.201907.005', NULL, '-', 'PF1GRAFM', 'Lenovo', 'Ideapad 330-14IKB', 'intel', 'Core i5', '8250U', '1.6', '8', 'DDR 4', 'Dual', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', 'Midasforce', '240', '-', '-', '-', 'Realtek PCIe GbE Family', 'E8-6A-64-40-D9-17', 'Qualcomm Atheros QCA9377', '00-F4-8D-EB-C1-33', 'Bluetooth Device', '00-F4-8D-EB-C1-34', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 04:11:15', '2022-07-18 00:27:58'),
(37, 'C.NB.201901.001', NULL, '-', 'PF1GE78V', 'Lenovo', 'Ideapad 330-14IKB', 'intel', 'Core i5', '8250U', '1.6', '4', 'DDR 4', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', '-', '-', '-', 'Realtek PCIe FE Family', 'E8-6A-64-47-79-5E', 'Qualcomm Atheros QCA9377', '00-F4-8D-EC-9D-43', 'Bluetooth Device', '00-F4-8D-EC-9D-44', 'PLDS DVD-RW DA8AESH', '2022-07-08 04:13:39', '2022-07-08 04:13:39'),
(38, 'C.NB.201404.002', NULL, '-', '-', 'Acer', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 04:22:59', '2022-07-08 04:22:59'),
(39, 'C.NB.000000.003', NULL, '-', '-', '-', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 04:24:59', '2022-07-08 04:24:59'),
(40, 'C.NB.201406.004', NULL, NULL, NULL, 'Asus', 'X450C Series', 'intel', 'Core i3', '3217U', '1.8', '2', 'DDR 3', '-pilih-', 'Hitachi', 'HTS545050A7E680', '500', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 04:27:30', '2022-07-08 04:27:30'),
(41, 'C.NB.201810.006', NULL, NULL, 'PF160B9Y', 'Lenovo', 'Ideapad 330-14IKB', 'intel', 'Core i5', 'Kaby Lake', '1.6', '8', 'DDR 3', 'Single', 'Western Digital', 'WD10SPZX-24Z10', '1000', '-', '-', '-', 'AMD', 'ATI Radeon 530', '2018', 'Realtek PCIe GBE Family Controller', '8C-16-45-F0-3F-0F', 'Qualcomm Atheros QCA9377 Wireless Network Adapter', '00-F4-8D-A6-59-27', 'Bluetooth Device', '00-F4-8D-A6-59-28', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 04:31:47', '2022-07-08 04:31:47'),
(42, 'C.NB.202110.003', NULL, '-', 'M7N0LP03104930B', 'Asus', 'Zenbook 13 UM325', 'AMD', 'Ryzen 7', '5700U', '1.8', '16', 'DDR 4', 'Single', '-', '-', '-', 'HFM001TD3JX013N', 'Hitachi', '1000', 'AMD', 'AMD Radeon Graphic', '1000', '-', '-', 'Intel(R) Dual Band Wireless-AC 8265', '38-FC-98-7C-D2-65', 'Bluetooth Device', '38-FC-98-7C-D2-69', '-', '2022-07-08 04:35:25', '2022-07-08 04:35:25'),
(43, 'C.NB.201601.001', NULL, NULL, '5CD4497KCL', 'HP', 'Pavilion 14', 'intel', 'Core i5', '5200U', '2.2', '4', 'DDR 3', 'Single', NULL, NULL, NULL, 'ZA1000CM10003', 'Seagate', '1000', '-', '-', '-', 'Realtek PCIe FE Family Controller', '38-63-BB-AA-A8-85', 'Broadcom BCM43142 802.11 bgn Wi-Fi Adapter', '38-B1-DB-F0-A8-A7', '-', '-', '-', '2022-07-08 04:38:43', '2022-07-08 04:38:43'),
(44, 'C.NB.201503.002', NULL, '-', 'NXMN6SN0024451E26F76', 'Acer', 'E5 - 471', 'intel', 'Core i3', NULL, '1.7', '6', 'DDR 3', 'Dual', 'Seagate', 'ST500LT012-1DG142', '500', '-', '-', '-', '-', '-', '-', 'Realtek PCIe GBE Family Controller', '2C-60-0C-0A-A3-43', 'Qualcomm Atheros AR956x', 'AC-B5-7D-37-87-80', 'Bluetooth Device', 'AC-B5-7D-37-DB-2C', '-', '2022-07-08 04:42:30', '2022-07-08 04:42:30'),
(45, 'C.NB.000000.025', NULL, '-', '-', 'Lenovo', '-', '-pilih-', '-pilih-', '-', '-', '-', '-pili', '-pilih-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2022-07-08 04:43:51', '2022-07-08 04:43:51'),
(46, 'C.NB.201803.003', NULL, '-', '-', 'Lenovo', 'Ideapad 320-14IKB', 'intel', 'Core i5', '7200U', '2.5', '4', 'DDR 3', '-pilih-', 'Western Digital', 'WD10SPZX-24Z10T0', '1000', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'HL-DT-ST DVDRAM GUE0N', '2022-07-08 04:46:09', '2022-07-08 04:46:09'),
(47, 'C.NB.202101.001', '2021-01-01', '21010477', 'G6S2P03', 'Dell', 'Vostro 3480', 'intel', 'Core i3', '8145U', '2.1', '8', 'DDR 4', 'Single', '-', '-', '-', '-', 'Lexar', '256', '-', '-', '-', 'Realtek PCIe GbE Family Controller', '98-E7-43-23-F5-67', 'Qualcomm QCA9377 802.11ac Wireless Adapter', '40-23-43-A7-91-A7', '-', '-', '-', '2022-07-18 01:49:21', '2022-07-18 01:49:21'),
(48, 'C.NB.201705.001', NULL, '-', 'PF0PAZA2', 'Lenovo', 'Idapad 310', 'intel', 'Core i5', '7200U', '2.5', '4', 'DDR 4', 'Single', 'Toshiba', 'MQ01ABD100', '1000', 'SATA', 'Midasforce', '256', 'NVIDIA', 'GeForce 920MX', '2 GB', 'Realtek PCIe GbE Family Controller', 'C8-5B-76-95-82-44', 'Intel(R) Dual Band Wireless-AC 3165', '98-54-1B-0F-AF-B4', 'Bluetooth Device', '98-54-1B-0F-AF-B8', '-', '2022-07-22 07:10:35', '2022-07-22 07:10:35'),
(49, 'C.NB.202209.004', '2022-10-03', '22091609', 'N1N0CV11Y95602A', 'Asus', 'A416E', 'intel', 'Core i7', '1165G7', '2.8', '8', 'DDR 4', 'Single', '-', '-', '-', 'NVME SSDPEKNU512GZ', 'Intel', '500', 'NVidia', 'Geforce MX330', '2047', '-', '-', 'Intel(R) Wireless-AC 9461', 'CC-15-31-66-18-95', 'Bluetooth Device', 'CC-15-31-66-18-99', '-', '2022-10-04 08:17:41', '2022-10-04 08:17:41');

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_12_04_023723_create_komputers_table', 1),
(28, '2020_12_21_011821_create_laptops_table', 2),
(31, '2021_01_01_072904_create_suppliers_table', 3),
(32, '2021_01_01_113236_create_barangs_table', 4),
(34, '2021_01_02_153952_create_stoks_table', 5),
(35, '2021_01_03_051446_create_kategoris_table', 6),
(36, '2021_01_03_132946_create_transaksis_table', 7),
(37, '2021_02_11_141515_create_stoks_table', 8),
(39, '2021_02_11_144931_create_stok_outs_table', 9),
(40, '2021_02_13_003132_create_barang_stoks_table', 10),
(41, '2021_03_02_021636_create_stok_outs_table', 11),
(42, '2021_03_04_042435_create_stok_ins_table', 12),
(43, '2021_03_09_041023_user', 13),
(44, '2021_03_31_032343_create_printers_table', 14),
(45, '2021_07_30_035656_create_employees_table', 15),
(46, '2021_08_02_023822_create_used_assets_table', 16),
(48, '2021_09_20_001637_create_div_table', 17),
(50, '2021_09_20_010545_create_dept_table', 18),
(51, '2021_09_20_012606_create_tb_section_table', 19),
(54, '2021_10_13_010956_create_ussed_asset_laptop_table', 20),
(56, '2021_11_02_011826_create_eriwayat_latop_table', 21),
(58, '2021_11_19_103225_create_cc_product_table', 22),
(59, '2022_02_23_113615_add_ssd_to_komputer_table', 23),
(60, '2022_02_24_085353_add_ssd_to_laptop_table', 24),
(61, '2022_04_27_032353_create-eticket-table', 25),
(62, '2022_05_12_091431_add_status_to_eticket_table', 26),
(63, '2022_06_13_095948_add_issue_to_eticket_table', 27),
(64, '2023_01_19_073918_laratrust_setup_tables', 28);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purc_date` date DEFAULT NULL,
  `purc_ppb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `printer_merk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printer_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`id`, `kode_fa`, `purc_date`, `purc_ppb`, `serial_number`, `printer_merk`, `printer_type`, `type`, `code`, `status`, `info`, `created_at`, `updated_at`) VALUES
(12, 'C.PT.201805.008', NULL, '-', 'VNC341757', 'HP', 'LASERJET PRO M102A', 'toner', 'CF217A', 'AI', 'DRUM (CF219A)', '2022-03-22 06:30:19', '2022-03-22 06:30:19'),
(13, 'C.PT.201805.008', NULL, '-', '-', 'Epson', 'EPSON L360', 'Ink', '664', 'AI', '-', '2022-03-22 06:34:06', '2022-03-22 06:34:06'),
(14, 'C.PT.202203.007', '2022-03-17', '22030234', 'XAGK028758', 'Epson', 'EPSON L3210', 'Ink', '003', 'AI', '-', '2022-03-22 06:35:44', '2022-03-22 06:35:44'),
(15, 'C.PT.000000.015', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:37:40', '2022-03-22 06:37:40'),
(16, 'C.PT.000000.016', NULL, '-', '-', 'HP', 'HP LASERJET M201N', 'toner', 'CF283A', 'AI', '-', '2022-03-22 06:39:27', '2022-03-22 06:39:27'),
(17, 'C.PT.202202.004', NULL, '-', '-', 'Epson', 'EPSON L15150', 'Ink', '008', 'AI', '-', '2022-03-22 06:40:55', '2022-03-22 06:40:55'),
(19, 'C.PT.000000.018', NULL, '-', '-', 'HP', 'HP LASERJET 1566', 'toner', 'CE278A', 'AI', '-', '2022-03-22 06:45:00', '2022-03-22 06:45:00'),
(20, 'C.PT.000000.019', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:47:16', '2022-03-22 06:47:16'),
(21, 'C.PT.000000.014', NULL, '-', '-', 'HP', 'HP LASERJET P1505', 'toner', 'CB436A', 'AI', '-', '2022-03-22 06:49:46', '2022-03-22 06:49:46'),
(22, 'C.PT.000000.009', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:52:28', '2022-03-22 06:52:28'),
(23, 'C.PT.000000.020', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 06:53:37', '2022-03-22 06:53:37'),
(24, 'C.PT.201901.001', NULL, '-', '-', 'HP', 'HP LASERJET M12W', 'toner', 'CF279A', 'AI', '-', '2022-03-22 06:55:12', '2022-03-22 06:55:12'),
(25, 'C.PT.000000.022', NULL, '-', '-', 'Epson', 'EPSON LQ-300', 'ribbon', '-', 'AI', '-', '2022-03-22 06:56:54', '2022-03-22 06:56:54'),
(26, 'C.PT.000000.023', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:00:55', '2022-03-22 07:00:55'),
(27, 'C.PT.000000.024', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:01:58', '2022-03-22 07:01:58'),
(28, 'C.PT.000000.025', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:05:49', '2022-03-22 07:05:49'),
(29, 'C.PT.000000.026', NULL, '-', '-', 'Epson', 'EPSON LQ-2190', 'ribbon', '-', 'AI', '-', '2022-03-22 07:07:23', '2022-03-22 07:07:23'),
(30, 'C.PT.201701.001', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:08:48', '2022-03-22 07:08:48'),
(31, 'C.PT.000000.053', NULL, '-', '-', 'Epson', 'EPSON  LX-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:11:28', '2022-03-22 07:11:28'),
(32, 'C.PT.201904.002', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:12:34', '2022-03-22 07:12:34'),
(33, 'C.PT.201905.004', NULL, '-', '-', 'Epson', 'EPSON L1350', 'Ink', '003', 'AI', '-', '2022-03-22 07:14:03', '2022-03-22 07:14:03'),
(34, 'C.PT.202201.001', NULL, '-', '-', 'Epson', 'EPSON L14150', 'Ink', '001', 'AI', '-', '2022-03-22 07:15:21', '2022-03-22 07:15:21'),
(35, 'C.PT.201702.002', NULL, '-', '-', 'Epson', 'EPSON L120', 'Ink', '664', 'AI', '-', '2022-03-22 07:16:44', '2022-03-22 07:16:44'),
(36, 'C.PT.000000.033', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:18:19', '2022-03-22 07:18:19'),
(37, 'C.PT.000000.031', NULL, '-', '-', 'Epson', 'EPSON L220', 'Ink', '664', 'AI', '-', '2022-03-22 07:19:28', '2022-03-22 07:19:28'),
(38, 'C.PT.000000.010', NULL, '-', '-', 'Epson', 'EPSON  LX-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:20:21', '2022-03-22 07:20:21'),
(39, 'C.PT.000000.004', NULL, '-', '-', 'HP', 'HP DEKSJET INK ADVANTAGE 2545', 'Ink', '678', 'AI', '-', '2022-03-22 07:22:51', '2022-03-22 07:22:51'),
(40, 'C.PT.201807.009', NULL, '-', '-', 'HP', 'HP LASERJET PRO M12W', 'toner', 'CF279A', 'AI', '-', '2022-03-22 07:24:34', '2022-03-22 07:24:34'),
(41, 'C.PT.000000.005', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', '-', '2022-03-22 07:26:14', '2022-03-22 07:26:14'),
(42, 'C.PT.201804.005', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'FG-IN', '2022-03-22 07:29:31', '2022-03-22 07:29:31'),
(43, 'C.PT.000000.043', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'ARIF', '2022-03-22 07:31:07', '2022-03-22 07:31:07'),
(44, 'C.PT.000000.045', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'INCOMING', '2022-03-22 07:32:06', '2022-03-22 07:32:06'),
(45, 'C.PT.201904.003', NULL, '-', '-', 'Epson', 'EPSON LQ-310', 'ribbon', '-', 'AI', 'FUJI', '2022-03-22 07:33:40', '2022-03-22 07:33:40'),
(46, 'C.PT.201805.007', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', 'YAKUP', '2022-03-22 07:34:51', '2022-03-22 07:34:51'),
(47, 'C.PT.201805.006', NULL, '-', '-', 'Epson', 'EPSON L360', 'Ink', '664', 'AI', '-', '2022-03-22 07:36:07', '2022-03-22 07:36:07'),
(48, 'C.PT.201803.003', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'PQE', '2022-03-22 07:37:21', '2022-03-22 07:37:21'),
(49, 'C.PT.000000.041', NULL, '-', '-', 'Epson', 'EPSON L220', 'Ink', '664', 'AI', '-', '2022-03-22 07:38:44', '2022-03-22 07:38:44'),
(50, 'C.PT.000000.019', NULL, '-', '-', 'HP', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 07:39:47', '2022-03-22 07:39:47'),
(51, 'C.PT.000000.040', NULL, '-', '-', 'Epson', 'EPSON LX-310', 'ribbon', '-', 'AI', '-', '2022-03-22 07:40:49', '2022-03-22 07:40:49'),
(52, 'C.PT.000000.044', NULL, '-', '-', 'Epson', 'EPSON LQ-300', 'ribbon', '-', 'AI', '-', '2022-03-22 07:42:44', '2022-03-22 07:42:44'),
(53, 'C.PT.000000.030', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 07:44:25', '2022-03-22 07:44:25'),
(54, 'C.PT.000000.013', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 07:45:31', '2022-03-22 07:45:31'),
(55, 'C.PT.202002.001', NULL, '-', '-', 'Epson', 'SATO CL 4 NX', 'ribbon', '-', 'AI', '-', '2022-03-22 07:47:32', '2022-03-22 07:47:32'),
(56, 'C.PT.000000.036', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 07:48:31', '2022-03-22 07:48:31'),
(58, 'C.PT.000000.039', NULL, '-', '-', 'HP', 'HP LASER 2055', 'toner', 'CE505A', 'AI', '-', '2022-03-22 07:53:56', '2022-03-22 07:53:56'),
(59, 'C.PT.000000.038', NULL, '-', '-', 'HP', 'HP LASER 2055DN', 'toner', 'CE505A', 'AI', '-', '2022-03-22 07:56:04', '2022-03-22 07:56:04'),
(61, 'C.PT.201904.004', NULL, '-', '-', 'Epson', 'HP LASER 402 N', 'toner', 'CF226A', 'AI', '-', '2022-03-22 08:01:01', '2022-03-22 08:01:01'),
(62, 'C.PT.201712.007', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'ASSY', '2022-03-22 08:02:11', '2022-03-22 08:02:11'),
(63, 'C.PT.202012.001', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'SPOT', '2022-03-22 08:03:36', '2022-03-22 08:03:36'),
(64, 'C.PT.201702.008', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 08:04:25', '2022-03-22 08:04:25'),
(65, 'C.PT.202101.001', NULL, '-', '-', 'Epson', 'EPSON L1300', 'Ink', '664', 'AI', '-', '2022-03-22 08:05:39', '2022-03-22 08:05:39'),
(66, 'C.PT.000000.007', NULL, '-', '-', 'Epson', 'HP LASERJET P1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 08:06:26', '2022-03-22 08:06:26'),
(67, 'C.PT.201711.005', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'QA LINE', '2022-03-22 08:07:22', '2022-03-22 08:07:22'),
(68, 'C.PT.201710.004', NULL, '-', '-', 'Epson', 'EPSON TM-T82', 'thermal', '-', 'AI', 'QA - FINAL INSPECTION', '2022-03-22 08:08:24', '2022-03-22 08:08:24'),
(69, 'C.PT.000000.011', NULL, '-', '-', 'Epson', 'EPSON WF 7511', 'Ink', '143', 'AI', '-', '2022-03-22 08:09:29', '2022-03-22 08:09:29'),
(70, 'C.PT.000000.002', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 08:11:12', '2022-03-22 08:11:12'),
(71, 'C.PT.000000.058', NULL, '-', '-', 'HP', 'HP LASER 1102', 'toner', 'CE285A', 'AI', '-', '2022-03-22 08:17:06', '2022-03-22 08:17:06'),
(72, 'C.PT.000000.001', NULL, '-', '-', 'Epson', 'EPSON L350', 'Ink', '664', 'AI', '-', '2022-03-22 08:17:50', '2022-03-22 08:17:50'),
(73, 'C.PT.202111.002', '2021-11-01', '21100601', 'XAGK043186', 'Epson', 'L3210', 'Ink', '003', 'AI', 'Inv collection', '2022-03-23 07:44:47', '2022-03-23 07:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stok_in`
--

CREATE TABLE `stok_in` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_id` int(10) UNSIGNED DEFAULT NULL,
  `no_ppb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `input_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stok_in`
--

INSERT INTO `stok_in` (`id`, `date`, `barang_name`, `jumlah`, `barang_id`, `no_ppb`, `created_at`, `updated_at`, `input_by`) VALUES
(5, '2021-03-05', NULL, '5', 1, 'Stok Opname', '2021-03-04 20:35:00', '2021-03-04 20:35:00', NULL),
(6, '2021-03-05', NULL, '1', 2, 'Stok Opname', '2021-03-04 20:35:33', '2021-03-04 20:35:33', NULL),
(7, '2021-03-05', NULL, '6', 7, 'Stok Opname', '2021-03-04 20:36:24', '2021-03-04 20:36:24', NULL),
(8, '2021-03-05', NULL, '2', 3, 'Stok Opname', '2021-03-04 20:37:12', '2021-03-04 20:37:12', NULL),
(9, '2021-03-05', NULL, '1', 6, 'Stok Opname', '2021-03-04 20:37:50', '2021-03-04 20:37:50', NULL),
(10, '2021-03-05', NULL, '1', 6, 'Stok Opname', '2021-03-04 20:38:14', '2021-03-04 20:38:14', NULL),
(11, '2021-03-05', NULL, '2', 5, 'Stok Opname', '2021-03-04 20:38:36', '2021-03-04 20:38:36', NULL),
(12, '2021-03-05', NULL, '1', 16, 'Stok Opname', '2021-03-04 20:40:33', '2021-03-04 20:40:33', NULL),
(13, '2021-03-05', NULL, '4', 17, 'Stok Opname', '2021-03-04 20:40:58', '2021-03-04 20:40:58', NULL),
(14, '2021-03-05', NULL, '4', 19, 'Stok Opname', '2021-03-04 20:41:26', '2021-03-04 20:41:26', NULL),
(15, '2021-03-05', NULL, '4', 18, 'Stok Opname', '2021-03-04 20:41:52', '2021-03-04 20:41:52', NULL),
(16, '2021-03-05', NULL, '1', 30, 'Stok Opname', '2021-03-04 20:50:12', '2021-03-04 20:50:12', NULL),
(17, '2021-03-05', NULL, '1', 31, 'Stok Opname', '2021-03-04 20:50:52', '2021-03-04 20:50:52', NULL),
(18, '2021-03-05', NULL, '1', 7, 'Stok Opname', '2021-03-04 22:54:47', '2021-03-04 22:54:47', NULL),
(19, '2021-03-05', NULL, '12', 26, 'Stok Opname', '2021-03-04 22:57:37', '2021-03-04 22:57:37', NULL),
(20, '2021-03-05', NULL, '21', 27, 'Stok Opname', '2021-03-04 22:59:34', '2021-03-04 22:59:34', NULL),
(21, '2021-03-05', NULL, '210', 24, 'Stok Opname', '2021-03-04 23:00:19', '2021-03-04 23:00:19', NULL),
(22, '2021-03-05', NULL, '105', 25, 'Stok Opname', '2021-03-04 23:00:36', '2021-03-04 23:00:36', NULL),
(23, '2021-03-05', NULL, '1', 14, 'Stok Opname', '2021-03-05 01:48:01', '2021-03-05 01:48:01', NULL),
(26, '2021-03-09', NULL, '2', 1, '21030224', '2021-03-08 20:11:12', '2021-03-08 20:11:12', NULL),
(27, '2021-03-09', NULL, '1', 6, '21030224', '2021-03-08 20:11:27', '2021-03-08 20:11:27', NULL),
(28, '2021-03-09', NULL, '1', 7, '21030224', '2021-03-08 20:12:36', '2021-03-08 20:12:36', NULL),
(29, '2021-03-09', NULL, '1', 4, '21030224', '2021-03-08 20:12:53', '2021-03-08 20:12:53', NULL),
(30, '2021-03-09', NULL, '2', 2, '21030224', '2021-03-08 20:13:06', '2021-03-08 20:13:06', NULL),
(31, '2021-03-17', NULL, '3', 1, '21030401', '2021-03-17 00:02:19', '2021-03-17 00:02:19', NULL),
(32, '2021-03-17', NULL, '6', 7, '21030401', '2021-03-17 00:02:37', '2021-03-17 00:02:37', NULL),
(33, '2021-03-17', NULL, '1', 3, '21030401', '2021-03-17 00:02:54', '2021-03-17 00:02:54', NULL),
(34, '2021-03-17', NULL, '2', 2, '21030401', '2021-03-17 00:03:20', '2021-03-17 00:03:20', NULL),
(35, '2021-03-17', NULL, '1', 9, '21030401', '2021-03-17 00:03:47', '2021-03-17 00:03:47', NULL),
(36, '2021-03-17', NULL, '1', 10, '21030401', '2021-03-17 00:04:00', '2021-03-17 00:04:00', NULL),
(37, '2021-03-17', NULL, '1', 13, '21030401', '2021-03-17 00:04:17', '2021-03-17 00:04:17', NULL),
(38, '2021-03-17', NULL, '10', 32, '21030222', '2021-03-17 00:34:49', '2021-03-17 00:34:49', NULL),
(39, '2021-03-17', NULL, '2', 33, '21030222', '2021-03-17 00:35:18', '2021-03-17 00:35:18', NULL),
(40, '2021-03-17', NULL, '5', 34, '21030222', '2021-03-17 00:35:31', '2021-03-17 00:35:31', NULL),
(41, '2021-03-17', NULL, '5', 35, '21030222', '2021-03-17 00:35:50', '2021-03-17 00:35:50', NULL),
(42, '2021-03-22', NULL, '3', 7, '21030579', '2021-03-23 18:37:11', '2021-03-23 18:37:11', NULL),
(43, '2021-03-22', NULL, '1', 3, '21030579', '2021-03-23 18:37:47', '2021-03-23 18:37:47', NULL),
(44, '2021-03-22', NULL, '1', 5, '21030579', '2021-03-23 18:39:10', '2021-03-23 18:39:10', NULL),
(45, '2021-03-22', NULL, '1', 12, '21030579', '2021-03-23 18:39:58', '2021-03-23 18:39:58', NULL),
(46, '2021-03-22', NULL, '1', 15, '21030579', '2021-03-23 18:40:49', '2021-03-23 18:40:49', NULL),
(47, '2021-03-22', NULL, '5', 16, '21030579', '2021-03-23 18:41:17', '2021-03-23 18:41:17', NULL),
(48, '2021-03-22', NULL, '1', 17, '21030579', '2021-03-23 18:41:48', '2021-03-23 18:41:48', NULL),
(49, '2021-03-22', NULL, '2', 18, '21030579', '2021-03-23 18:42:12', '2021-03-23 18:42:12', NULL),
(50, '2021-03-22', NULL, '4', 19, '21030579', '2021-03-23 18:42:30', '2021-03-23 18:42:30', NULL),
(51, '2021-03-23', NULL, '3', 2, '21030649', '2021-03-23 18:45:57', '2021-03-23 18:45:57', NULL),
(52, '2021-03-25', NULL, '1', 28, '21030649', '2021-03-24 21:16:37', '2021-03-24 21:16:37', NULL),
(53, '2021-03-25', NULL, '1', 31, '21030649', '2021-03-24 21:17:12', '2021-03-24 21:17:12', NULL),
(54, '2021-03-25', NULL, '1', 29, '21030649', '2021-03-24 21:17:50', '2021-03-24 21:17:50', NULL),
(55, '2021-03-25', NULL, '1', 8, '21030649', '2021-03-24 21:18:23', '2021-03-24 21:18:23', NULL),
(56, '2021-03-25', NULL, '1', 12, '21030649', '2021-03-24 21:19:47', '2021-03-24 21:19:47', NULL),
(57, '2021-03-29', NULL, '1', 7, '21030834', '2021-03-30 17:06:34', '2021-03-30 17:06:34', NULL),
(58, '2021-03-29', NULL, '1', 5, '21030834', '2021-03-30 17:06:57', '2021-03-30 17:06:57', NULL),
(59, '2021-03-29', NULL, '3', 2, '21030834', '2021-03-30 17:07:17', '2021-03-30 17:07:17', NULL),
(60, '2021-03-19', NULL, '200', 25, '21030324', '2021-04-05 20:33:23', '2021-04-05 20:33:23', NULL),
(61, '2021-03-26', NULL, '30', 26, '21030324', '2021-04-05 20:34:51', '2021-04-05 20:34:51', NULL),
(62, '2021-03-26', NULL, '40', 27, '21030324', '2021-04-05 20:35:19', '2021-04-05 20:35:19', NULL),
(63, '2021-04-06', NULL, '18', 26, 'Stok Opname /', '2021-04-05 20:41:41', '2021-04-05 20:41:41', NULL),
(64, '2021-04-16', NULL, '300', 24, '21030324', '2021-04-15 23:53:25', '2021-04-15 23:53:25', NULL),
(65, '2021-04-28', NULL, '3', 7, '21040665', '2021-04-27 20:59:43', '2021-04-27 20:59:43', NULL),
(66, '2021-04-28', NULL, '1', 3, '21040665', '2021-04-27 21:01:05', '2021-04-27 21:01:05', NULL),
(67, '2021-04-28', NULL, '1', 3, '21040665', '2021-04-27 21:01:05', '2021-04-27 21:01:05', NULL),
(68, '2021-04-28', NULL, '2', 5, '21040665', '2021-04-27 21:01:35', '2021-04-27 21:01:35', NULL),
(69, '2021-04-28', NULL, '2', 2, '21040665', '2021-04-27 21:02:04', '2021-04-27 21:02:04', NULL),
(70, '2021-04-28', NULL, '5', 16, '21040665', '2021-04-27 21:06:33', '2021-04-27 21:06:33', NULL),
(71, '2021-06-07', NULL, '359', 24, 'Stok Opname', '2021-06-06 19:13:08', '2021-06-06 19:13:08', NULL),
(72, '2021-06-07', NULL, '5', 1, 'Stok Opname', '2021-06-06 19:15:15', '2021-06-06 19:15:15', NULL),
(73, '2021-06-07', NULL, '7', 2, 'Stok Opname', '2021-06-06 19:15:57', '2021-06-06 19:15:57', NULL),
(74, '2021-06-07', NULL, '1', 4, 'Stok Opname', '2021-06-06 19:16:47', '2021-06-06 19:16:47', NULL),
(75, '2021-06-07', NULL, '2', 5, 'Stok Opname', '2021-06-06 19:17:16', '2021-06-06 19:17:16', NULL),
(76, '2021-06-07', NULL, '5', 6, 'Stok Opname', '2021-06-06 19:17:50', '2021-06-06 19:17:50', NULL),
(77, '2021-06-07', NULL, '12', 7, 'Stok Opname', '2021-06-06 19:18:28', '2021-06-06 19:18:28', NULL),
(78, '2021-06-07', NULL, '6', 20, 'Stok Opname', '2021-06-06 19:22:22', '2021-06-06 19:22:22', NULL),
(79, '2021-06-07', NULL, '3', 22, 'Stok Opname', '2021-06-06 19:25:47', '2021-06-06 19:25:47', NULL),
(80, '2021-06-07', NULL, '4', 23, 'Stok Opname', '2021-06-06 19:26:07', '2021-06-06 19:26:07', NULL),
(81, '2021-06-07', NULL, '1', 33, 'Stok Opname', '2021-06-06 19:31:28', '2021-06-06 19:31:28', NULL),
(82, '2021-06-07', NULL, '3', 1, '21060086', '2021-06-07 17:08:30', '2021-06-07 17:08:30', NULL),
(83, '2021-06-07', NULL, '1', 2, '21060086', '2021-06-07 17:08:48', '2021-06-07 17:08:48', NULL),
(84, '2021-06-07', NULL, '1', 7, '21060086', '2021-06-07 17:09:03', '2021-06-07 17:09:03', NULL),
(85, '2021-06-09', NULL, '1', 7, '21060153', '2021-06-09 17:09:09', '2021-06-09 17:09:09', NULL),
(86, '2021-06-09', NULL, '2', 5, '21060153', '2021-06-09 17:09:40', '2021-06-09 17:09:40', NULL),
(87, '2021-06-09', NULL, '2', 2, '21060153', '2021-06-09 17:10:04', '2021-06-09 17:10:04', NULL),
(88, '2021-06-09', NULL, '5', 16, '21060153', '2021-06-09 17:10:30', '2021-06-09 17:10:30', NULL),
(89, '2021-06-16', NULL, '2', 1, '20060292', '2021-06-20 17:05:51', '2021-06-20 17:05:51', NULL),
(90, '2021-06-16', NULL, '1', 6, '20060292', '2021-06-20 17:06:07', '2021-06-20 17:06:07', NULL),
(91, '2021-06-16', NULL, '2', 7, '20060292', '2021-06-20 17:06:26', '2021-06-20 17:06:26', NULL),
(92, '2021-06-16', NULL, '2', 2, '20060292', '2021-06-20 17:06:46', '2021-06-20 17:06:46', NULL),
(93, '2021-06-22', NULL, '2', 7, '21060488', '2021-06-24 23:03:28', '2021-06-24 23:03:28', NULL),
(94, '2021-06-22', NULL, '3', 2, '21060488', '2021-06-24 23:03:41', '2021-06-24 23:03:41', NULL),
(95, '2021-06-22', NULL, '5', 16, '21060488', '2021-06-24 23:03:59', '2021-06-24 23:03:59', NULL),
(96, '2021-06-29', NULL, '2', 1, '21060723', '2021-07-26 19:47:06', '2021-07-26 19:47:06', NULL),
(97, '2021-06-29', NULL, '1', 7, '21060723', '2021-07-26 20:06:39', '2021-07-26 20:06:39', NULL),
(98, '2021-06-29', NULL, '1', 3, '21060723', '2021-07-26 20:08:20', '2021-07-26 20:08:20', NULL),
(99, '2021-06-29', NULL, '3', 2, '21060723', '2021-07-26 20:08:53', '2021-07-26 20:08:53', NULL),
(100, '2021-07-19', NULL, '1', 1, '21070285', '2021-07-26 20:11:56', '2021-07-26 20:11:56', NULL),
(101, '2021-07-19', NULL, '3', 2, '21070285', '2021-07-26 20:14:23', '2021-07-26 20:14:23', NULL),
(102, '2021-07-19', NULL, '1', 8, '21070285', '2021-07-26 20:14:50', '2021-07-26 20:14:50', NULL),
(103, '2021-07-19', NULL, '1', 12, '21070285', '2021-07-26 20:15:24', '2021-07-26 20:15:24', NULL),
(104, '2021-07-19', NULL, '1', 15, '21070285', '2021-07-26 20:16:03', '2021-07-26 20:16:03', NULL),
(105, '2021-07-13', NULL, '2', 7, '21070222', '2021-07-26 20:19:03', '2021-07-26 20:19:03', NULL),
(106, '2021-07-13', NULL, '3', 2, '21070222', '2021-07-26 20:19:48', '2021-07-26 20:19:48', NULL),
(107, '2021-07-28', NULL, '1', 26, '202107-040', '2021-07-27 22:33:48', '2021-07-27 22:33:48', NULL),
(108, '2021-07-28', NULL, '2', 27, '202107-040', '2021-07-27 22:34:19', '2021-07-27 22:34:19', NULL),
(109, '2021-07-28', NULL, '10', 24, '202107-039', '2021-07-27 22:35:12', '2021-07-27 22:35:12', NULL),
(110, '2021-07-28', NULL, '1', 2, '202107-041', '2021-07-27 22:35:59', '2021-07-27 22:35:59', NULL),
(111, '2021-07-29', NULL, '3', 1, '21070625', '2021-07-28 20:41:53', '2021-07-28 20:41:53', NULL),
(112, '2021-07-29', NULL, '1', 7, '21070625', '2021-07-28 20:44:15', '2021-07-28 20:44:15', NULL),
(113, '2021-07-29', NULL, '2', 5, '21070625', '2021-07-28 20:44:53', '2021-07-28 20:44:53', NULL),
(114, '2021-07-29', NULL, '1', 2, '21070625', '2021-07-28 20:45:11', '2021-07-28 20:45:11', NULL),
(115, '2021-07-06', NULL, '2', 1, '21070059', '2021-07-29 17:38:28', '2021-07-29 17:38:28', NULL),
(116, '2021-07-06', NULL, '2', 7, '21070059', '2021-07-29 17:39:21', '2021-07-29 17:39:21', NULL),
(117, '2021-07-06', NULL, '2', 4, '21070059', '2021-07-29 18:00:06', '2021-07-29 18:00:06', NULL),
(118, '2021-07-06', NULL, '2', 5, '21070059', '2021-07-29 18:01:07', '2021-07-29 18:01:07', NULL),
(119, '2021-07-06', NULL, '3', 2, '21070059', '2021-07-29 18:01:33', '2021-07-29 18:01:33', NULL),
(120, '2021-07-30', NULL, '1', 28, '21070540', '2021-07-29 19:09:25', '2021-07-29 19:09:25', NULL),
(121, '2021-07-30', NULL, '1', 31, '21070540', '2021-07-29 19:09:53', '2021-07-29 19:09:53', NULL),
(122, '2021-07-30', NULL, '1', 29, '21070540', '2021-07-29 19:10:26', '2021-07-29 19:10:26', NULL),
(123, '2021-07-30', NULL, '1', 30, '21070540', '2021-07-29 19:11:31', '2021-07-29 19:11:31', NULL),
(124, '2021-07-30', NULL, '3', 7, '21070540', '2021-07-29 19:12:28', '2021-07-29 19:12:28', NULL),
(125, '2021-07-30', NULL, '5', 16, '21070540', '2021-07-29 19:14:24', '2021-07-29 19:14:24', NULL),
(126, '2021-07-30', NULL, '3', 19, '21070540', '2021-07-29 19:15:03', '2021-07-29 19:15:03', NULL),
(127, '2021-07-26', NULL, '3', 7, '21070540', '2021-07-29 19:34:42', '2021-07-29 19:34:42', NULL),
(128, '2021-07-26', NULL, '3', 2, '21070540', '2021-07-29 19:37:31', '2021-07-29 19:37:31', NULL),
(129, '2021-07-26', NULL, '3', 19, '21070540', '2021-07-29 19:40:22', '2021-07-29 19:40:22', NULL),
(130, '2021-07-26', NULL, '3', 16, '21070540', '2021-07-29 19:41:12', '2021-07-29 19:41:12', NULL),
(131, '2021-08-03', NULL, '2', 7, '21070764', '2021-08-02 21:21:50', '2021-08-02 21:21:50', NULL),
(132, '2021-08-03', NULL, '1', 2, '21070764', '2021-08-02 21:22:33', '2021-08-02 21:22:33', NULL),
(133, '2021-08-03', NULL, '1', 13, '21070764', '2021-08-02 21:23:23', '2021-08-02 21:23:23', NULL),
(134, '2021-03-08', NULL, '1', 14, '21070764', '2021-08-02 21:24:01', '2021-08-02 21:24:01', NULL),
(135, '2021-08-03', NULL, '1', 12, '21070764', '2021-08-03 20:11:11', '2021-08-03 20:11:11', NULL),
(136, '2021-08-12', NULL, '4', 1, '21080132', '2021-08-15 19:47:11', '2021-08-15 19:47:11', NULL),
(137, '2021-08-12', NULL, '1', 7, '21080132', '2021-08-15 19:47:57', '2021-08-15 19:47:57', NULL),
(138, '2021-08-12', NULL, '1', 7, '21080132', '2021-08-15 19:51:14', '2021-08-15 19:51:14', NULL),
(139, '2021-08-12', NULL, '1', 2, '21080132', '2021-08-15 19:51:38', '2021-08-15 19:51:38', NULL),
(140, '2021-08-03', NULL, '2', 7, '21070764', '2021-08-15 19:54:23', '2021-08-15 19:54:23', NULL),
(141, '2021-08-03', NULL, '1', 2, '21070764', '2021-08-15 19:54:55', '2021-08-15 19:54:55', NULL),
(142, '2021-08-03', NULL, '1', 13, '21070764', '2021-08-15 19:55:20', '2021-08-15 19:55:20', NULL),
(143, '2021-08-03', NULL, '1', 14, '21070764', '2021-08-15 19:56:08', '2021-08-15 19:56:08', NULL),
(144, '2021-08-19', NULL, '1', 7, '202108-022', '2021-08-23 01:22:19', '2021-08-23 01:22:19', NULL),
(145, '2021-08-26', NULL, '1', 10, '21080501', '2021-08-26 18:00:17', '2021-08-26 18:00:17', NULL),
(146, '2021-08-26', NULL, '1', 7, '21080501', '2021-08-26 18:00:46', '2021-08-26 18:00:46', NULL),
(147, '2021-08-26', NULL, '1', 2, '21080501', '2021-08-26 18:01:21', '2021-08-26 18:01:21', NULL),
(148, '2021-08-26', NULL, '1', 2, '21080501', '2021-08-26 18:04:11', '2021-08-26 18:04:11', NULL),
(149, '2021-08-26', NULL, '2', 18, '21080501', '2021-08-26 18:08:35', '2021-08-26 18:08:35', NULL),
(150, '2021-08-26', NULL, '2', 1, '21080501', '2021-08-26 18:08:57', '2021-08-26 18:08:57', NULL),
(151, '2021-08-24', NULL, '4', 2, '21080501', '2021-08-26 18:09:33', '2021-08-26 18:09:33', NULL),
(152, '2021-08-24', NULL, '1', 1, '21080501', '2021-08-26 18:10:07', '2021-08-26 18:10:07', NULL),
(153, '2021-08-24', NULL, '2', 7, '21080501', '2021-08-26 18:10:37', '2021-08-26 18:10:37', NULL),
(154, '2021-08-19', NULL, '1', 1, '21080255', '2021-08-26 18:19:46', '2021-08-26 18:19:46', NULL),
(155, '2021-08-19', NULL, '2', 2, '21080255', '2021-08-26 18:20:17', '2021-08-26 18:20:17', NULL),
(156, '2021-08-19', NULL, '1', 3, '21080255', '2021-08-26 18:20:40', '2021-08-26 18:20:40', NULL),
(157, '2021-08-19', NULL, '2', 7, '21080255', '2021-08-26 18:21:27', '2021-08-26 18:21:27', NULL),
(158, '2021-08-19', NULL, '2', 16, '21080255', '2021-08-26 18:27:23', '2021-08-26 18:27:23', NULL),
(159, '2021-08-19', NULL, '3', 16, '21080255', '2021-08-26 18:28:35', '2021-08-26 18:28:35', NULL),
(160, '2021-08-27', NULL, '1', 10, '21080501', '2021-08-29 22:31:34', '2021-08-29 22:31:34', NULL),
(161, '2021-08-27', NULL, '1', 7, '21080501', '2021-08-29 22:32:14', '2021-08-29 22:32:14', NULL),
(162, '2021-08-27', NULL, '1', 2, '21080501', '2021-08-29 22:32:36', '2021-08-29 22:32:36', NULL),
(163, '2021-08-27', NULL, '1', 2, '21080501', '2021-08-29 22:39:42', '2021-08-29 22:39:42', NULL),
(164, '2021-08-27', NULL, '2', 18, '21080501', '2021-08-29 22:40:16', '2021-08-29 22:40:16', NULL),
(165, '2021-08-27', NULL, '1', 28, '21080501', '2021-08-29 22:42:03', '2021-08-29 22:42:03', NULL),
(166, '2021-08-27', NULL, '2', 1, '21080501', '2021-08-29 22:42:20', '2021-08-29 22:42:20', NULL),
(167, '2021-08-30', NULL, '1', 1, '21080599', '2021-08-30 19:48:26', '2021-08-30 19:48:26', NULL),
(168, '2021-08-30', NULL, '3', 6, '21080599', '2021-08-30 19:48:53', '2021-08-30 19:48:53', NULL),
(169, '2021-08-30', NULL, '2', 5, '21080599', '2021-08-30 19:50:39', '2021-08-30 19:50:39', NULL),
(170, '2021-08-30', NULL, '1', 2, '21080599', '2021-08-30 19:51:01', '2021-08-30 19:51:01', NULL),
(171, '2021-08-31', NULL, '3', 24, '202108-033', '2021-08-30 20:13:06', '2021-08-30 20:13:06', NULL),
(172, '2021-09-03', NULL, '1', 2, '21090065', '2021-09-05 17:25:21', '2021-09-05 17:25:21', NULL),
(173, '2021-09-03', NULL, '1', 5, '21090065', '2021-09-05 17:25:35', '2021-09-05 17:25:35', NULL),
(174, '2021-09-03', NULL, '1', 5, '21090065', '2021-09-05 17:27:51', '2021-09-05 17:27:51', NULL),
(175, '2021-09-03', NULL, '1', 1, '21090065', '2021-09-05 17:48:13', '2021-09-05 17:48:13', NULL),
(176, '2021-09-03', NULL, '1', 7, '21090065', '2021-09-05 17:48:41', '2021-09-05 17:48:41', NULL),
(177, '2021-09-03', NULL, '1', 7, '202109-009', '2021-09-07 22:52:58', '2021-09-07 22:52:58', NULL),
(178, '2021-09-07', NULL, '1', 2, '21090122', '2021-09-08 22:22:41', '2021-09-08 22:22:41', NULL),
(179, '2021-09-07', NULL, '1', 2, '21090122', '2021-09-08 22:26:54', '2021-09-08 22:26:54', NULL),
(180, '2021-09-07', NULL, '1', 8, '21090122', '2021-09-08 22:27:54', '2021-09-08 22:27:54', NULL),
(181, '2021-09-07', NULL, '1', 11, '21090122', '2021-09-08 22:28:27', '2021-09-08 22:28:27', NULL),
(182, '2021-09-07', NULL, '1', 12, '21090122', '2021-09-08 22:29:11', '2021-09-08 22:29:11', NULL),
(183, '2021-09-07', NULL, '6', 16, '21090122', '2021-09-08 22:29:39', '2021-09-08 22:29:39', NULL),
(184, '2021-09-13', NULL, '1', 1, '21090242', '2021-09-12 20:26:54', '2021-09-12 20:26:54', NULL),
(185, '2021-09-13', NULL, '1', 7, '21090242', '2021-09-12 20:28:51', '2021-09-12 20:28:51', NULL),
(186, '2021-09-13', NULL, '3', 2, '21090242', '2021-09-12 20:29:13', '2021-09-12 20:29:13', NULL),
(187, '2021-09-17', NULL, '1', 4, 'Stok Opname', '2021-09-16 19:01:39', '2021-09-16 19:01:39', NULL),
(188, '2021-09-17', NULL, '1', 15, 'Stok Opname', '2021-09-16 19:19:13', '2021-09-16 19:19:13', NULL),
(189, '2021-09-17', NULL, '135', 24, 'Stok Opname', '2021-09-16 19:47:32', '2021-09-16 19:47:32', NULL),
(190, '2021-09-17', NULL, '26', 26, 'Stok Opname', '2021-09-16 19:56:13', '2021-09-16 19:56:13', NULL),
(191, '2021-09-17', NULL, '12', 27, 'Stok Opname', '2021-09-16 19:56:36', '2021-09-16 19:56:36', NULL),
(192, '2021-09-17', NULL, '2', 28, 'Stok Opname', '2021-09-16 19:57:12', '2021-09-16 19:57:12', NULL),
(193, '2021-09-17', NULL, '1', 29, 'Stok Opname', '2021-09-16 19:57:58', '2021-09-16 19:57:58', NULL),
(194, '2021-09-17', NULL, '1', 30, 'Stok Opname', '2021-09-16 19:58:31', '2021-09-16 19:58:31', NULL),
(195, '2021-09-17', NULL, '7', 32, 'Stok Opname', '2021-09-16 19:59:16', '2021-09-16 19:59:16', NULL),
(196, '2021-09-17', NULL, '1', 34, 'Stok Opname', '2021-09-16 19:59:35', '2021-09-16 19:59:35', NULL),
(197, '2021-09-17', NULL, '2', 1, '21090369', '2021-09-16 20:02:40', '2021-09-16 20:02:40', NULL),
(198, '2021-09-17', NULL, '3', 2, '21090369', '2021-09-16 20:03:47', '2021-09-16 20:03:47', NULL),
(199, '2021-09-17', NULL, '2', 7, '21090369', '2021-09-16 20:04:15', '2021-09-16 20:04:15', NULL),
(200, '2021-09-17', NULL, '5', 32, '21090243', '2021-09-16 20:08:03', '2021-09-16 20:08:03', NULL),
(201, '2021-09-17', NULL, '5', 34, '21090243', '2021-09-16 20:08:17', '2021-09-16 20:08:17', NULL),
(202, '2021-09-17', NULL, '2', 35, '21090243', '2021-09-16 20:08:30', '2021-09-16 20:08:30', NULL),
(203, '2021-09-21', NULL, '4', 7, '21090654', '2021-09-23 23:35:33', '2021-09-23 23:35:33', NULL),
(204, '2021-09-24', NULL, '1', 7, '21090654', '2021-09-24 01:15:51', '2021-09-24 01:15:51', NULL),
(205, '2021-09-24', NULL, '3', 2, '21090654', '2021-09-24 01:16:07', '2021-09-24 01:16:07', NULL),
(206, '2021-09-30', NULL, '1', 1, '21090869', '2021-09-30 17:22:39', '2021-09-30 17:22:39', NULL),
(207, '2021-09-30', NULL, '1', 7, '21090869', '2021-09-30 17:23:00', '2021-09-30 17:23:00', NULL),
(208, '2021-09-30', NULL, '1', 5, '21090869', '2021-09-30 17:23:22', '2021-09-30 17:23:22', NULL),
(209, '2021-09-30', NULL, '2', 2, '21090869', '2021-09-30 17:23:42', '2021-09-30 17:23:42', NULL),
(210, '2021-10-06', NULL, '2', 1, '21100097', '2021-10-07 00:47:59', '2021-10-07 00:47:59', NULL),
(211, '2021-10-06', NULL, '2', 6, '21100097', '2021-10-07 00:48:19', '2021-10-07 00:48:19', NULL),
(212, '2021-10-06', NULL, '3', 7, '21100097', '2021-10-07 00:48:41', '2021-10-07 00:48:41', NULL),
(213, '2021-10-06', NULL, '3', 2, '21100097', '2021-10-07 00:48:59', '2021-10-07 00:48:59', NULL),
(214, '2021-10-06', NULL, '7', 16, '21100097', '2021-10-07 00:49:52', '2021-10-07 00:49:52', NULL),
(215, '2021-10-06', NULL, '5', 17, '21100097', '2021-10-07 00:52:27', '2021-10-07 00:52:27', NULL),
(216, '2021-10-06', NULL, '4', 18, '21100097', '2021-10-07 00:56:00', '2021-10-07 00:56:00', NULL),
(217, '2021-10-06', NULL, '5', 19, '21100097', '2021-10-07 00:56:53', '2021-10-07 00:56:53', NULL),
(218, '2021-10-12', NULL, '300', 24, '21090662', '2021-10-12 17:13:28', '2021-10-12 17:13:28', NULL),
(219, '2021-10-18', NULL, '10', 32, '21100113', '2021-10-17 18:47:43', '2021-10-17 18:47:43', NULL),
(220, '2021-10-18', NULL, '10', 34, '21100113', '2021-10-17 18:48:05', '2021-10-17 18:48:05', NULL),
(221, '2021-10-18', NULL, '2', 33, '21100113', '2021-10-17 18:49:45', '2021-10-17 18:49:45', NULL),
(222, '2021-10-18', NULL, '1', 1, '21100354', '2021-10-17 19:59:14', '2021-10-17 19:59:14', NULL),
(223, '2021-10-18', NULL, '3', 2, '21100354', '2021-10-17 19:59:32', '2021-10-17 19:59:32', NULL),
(224, '2021-10-18', NULL, '3', 7, '21100354', '2021-10-17 19:59:48', '2021-10-17 19:59:48', NULL),
(225, '2021-10-19', NULL, '24', 26, '21100059', '2021-10-18 23:08:10', '2021-10-18 23:08:10', NULL),
(226, '2021-10-19', NULL, '20', 27, '21100059', '2021-10-18 23:08:28', '2021-10-18 23:08:28', NULL),
(227, '2021-10-26', NULL, '2', 1, '21100624', '2021-10-25 19:29:56', '2021-10-25 19:29:56', NULL),
(228, '2021-10-26', NULL, '3', 7, '21100624', '2021-10-25 19:30:17', '2021-10-25 19:30:17', NULL),
(229, '2021-10-26', NULL, '1', 5, '21100624', '2021-10-25 19:30:30', '2021-10-25 19:30:30', NULL),
(230, '2021-10-26', NULL, '2', 2, '21100624', '2021-10-25 19:30:45', '2021-10-25 19:30:45', NULL),
(231, '2021-10-29', NULL, '2', 7, '21100752', '2021-10-29 00:50:22', '2021-10-29 00:50:22', NULL),
(232, '2021-10-29', NULL, '1', 5, '21100752', '2021-10-29 00:50:40', '2021-10-29 00:50:40', NULL),
(233, '2021-10-29', NULL, '2', 2, '21100752', '2021-10-29 00:52:49', '2021-10-29 00:52:49', NULL),
(234, '2021-11-04', NULL, '3', 1, '21110116', '2021-11-03 21:32:07', '2021-11-03 21:32:07', NULL),
(235, '2021-11-04', NULL, '4', 7, '21110116', '2021-11-03 21:32:48', '2021-11-03 21:32:48', NULL),
(236, '2021-11-04', NULL, '6', 16, '21110116', '2021-11-03 21:33:38', '2021-11-03 21:33:38', NULL),
(237, '2021-11-09', NULL, '2', 7, '21110208', '2021-11-10 20:19:22', '2021-11-10 20:19:22', NULL),
(238, '2021-11-09', NULL, '2', 2, '21110208', '2021-11-10 20:22:03', '2021-11-10 20:22:03', NULL),
(239, '2021-11-17', NULL, '1', 1, '21110448', '2021-11-24 03:33:09', '2021-11-24 03:33:09', NULL),
(240, '2021-11-17', NULL, '1', 7, '21110448', '2021-11-24 03:35:16', '2021-11-24 03:35:16', 'Fathur Rahmansyah'),
(241, '2021-11-17', NULL, '2', 5, '21110448', '2021-11-24 03:36:02', '2021-11-24 03:36:02', 'Fathur Rahmansyah'),
(242, '2021-11-17', NULL, '3', 2, '21110448', '2021-11-24 03:36:22', '2021-11-24 03:36:22', 'Fathur Rahmansyah'),
(243, '2021-11-23', NULL, '1', 1, '21110666', '2021-11-24 03:37:21', '2021-11-24 03:37:21', 'Fathur Rahmansyah'),
(244, '2021-11-23', NULL, '2', 7, '21110666', '2021-11-24 03:37:46', '2021-11-24 03:37:46', 'Fathur Rahmansyah'),
(245, '2021-11-23', NULL, '1', 5, '21110666', '2021-11-24 03:38:37', '2021-11-24 03:38:37', 'Fathur Rahmansyah'),
(246, '2021-11-23', NULL, '2', 2, '21110666', '2021-11-24 03:38:56', '2021-11-24 03:38:56', 'Fathur Rahmansyah'),
(247, '2021-11-23', NULL, '1', 8, '21110666', '2021-11-24 03:39:28', '2021-11-24 03:39:28', 'Fathur Rahmansyah'),
(248, '2021-11-23', NULL, '1', 12, '21110666', '2021-11-24 03:39:40', '2021-11-24 03:39:40', 'Fathur Rahmansyah'),
(249, '2021-11-26', NULL, '1', 1, '21110873', '2021-11-26 07:46:28', '2021-11-26 07:46:28', NULL),
(250, '2021-11-26', NULL, '3', 7, '21110873', '2021-11-26 07:46:46', '2021-11-26 07:46:46', NULL),
(251, '2021-11-26', NULL, '1', 2, '21110873', '2021-11-26 07:47:01', '2021-11-26 07:47:01', NULL),
(252, '2021-11-29', NULL, '1', 1, '21110908', '2021-11-29 07:29:50', '2021-11-29 07:29:50', NULL),
(253, '2021-11-29', NULL, '2', 2, '21110908', '2021-11-29 07:30:04', '2021-11-29 07:30:04', NULL),
(254, '2021-11-29', NULL, '1', 14, '21110908', '2021-11-29 07:30:22', '2021-11-29 07:30:22', NULL),
(255, '2021-11-29', NULL, '1', 13, '21110908', '2021-11-29 07:30:41', '2021-11-29 07:30:41', NULL),
(256, '2021-12-02', NULL, '1', 1, '21120037', '2021-12-02 05:51:15', '2021-12-02 05:51:15', NULL),
(257, '2021-12-02', NULL, '2', 6, '21120037', '2021-12-02 05:51:33', '2021-12-02 05:51:33', NULL),
(258, '2021-12-02', NULL, '1', 7, '21120037', '2021-12-02 05:51:49', '2021-12-02 05:51:49', NULL),
(259, '2021-12-02', NULL, '1', 4, '21120037', '2021-12-02 05:52:02', '2021-12-02 05:52:02', NULL),
(260, '2021-12-02', NULL, '1', 5, '21120037', '2021-12-02 05:52:16', '2021-12-02 05:52:16', NULL),
(261, '2021-12-02', NULL, '1', 2, '21120037', '2021-12-02 05:52:27', '2021-12-02 05:52:27', NULL),
(262, '2021-12-09', NULL, '1', 1, '21120242', '2021-12-09 03:36:53', '2021-12-09 03:36:53', NULL),
(263, '2021-12-09', NULL, '2', 7, '21120242', '2021-12-09 03:37:09', '2021-12-09 03:37:09', NULL),
(264, '2021-12-09', NULL, '1', 5, '21120242', '2021-12-09 03:37:46', '2021-12-09 03:37:46', NULL),
(265, '2021-12-09', NULL, '2', 2, '21120242', '2021-12-09 03:37:59', '2021-12-09 03:37:59', NULL),
(266, '2021-12-12', NULL, '5', 1, '21120337', '2021-12-16 00:05:31', '2021-12-16 00:05:31', NULL),
(267, '2021-12-12', NULL, '2', 7, '21120337', '2021-12-16 00:05:46', '2021-12-16 00:05:46', NULL),
(268, '2021-12-12', NULL, '2', 3, '21120337', '2021-12-16 00:06:02', '2021-12-16 00:06:02', NULL),
(269, '2021-12-12', NULL, '1', 2, '21120337', '2021-12-16 00:06:16', '2021-12-16 00:06:16', NULL),
(270, '2021-12-16', NULL, '1', 1, '21120418', '2021-12-17 03:16:06', '2021-12-17 03:16:06', NULL),
(271, '2021-12-16', NULL, '2', 7, '21120418', '2021-12-17 03:17:09', '2021-12-17 03:17:09', NULL),
(272, '2021-12-16', NULL, '1', 2, '21120418', '2021-12-17 03:17:34', '2021-12-17 03:17:34', NULL),
(273, '2021-12-16', NULL, '9', 16, '21120418', '2021-12-17 03:18:16', '2021-12-17 03:18:16', NULL),
(274, '2021-12-16', NULL, '4', 14, '21120418', '2021-12-17 03:18:58', '2021-12-17 03:18:58', NULL),
(275, '2021-12-23', NULL, '1', 1, '21120733', '2022-01-14 00:39:54', '2022-01-14 00:39:54', NULL),
(276, '2021-12-23', NULL, '2', 7, '21120733', '2022-01-14 00:40:33', '2022-01-14 00:40:33', NULL),
(277, '2021-12-23', NULL, '1', 5, '21120733', '2022-01-14 00:41:04', '2022-01-14 00:41:04', NULL),
(278, '2021-12-23', NULL, '2', 2, '21120733', '2022-01-14 00:41:55', '2022-01-14 00:41:55', NULL),
(279, '2021-12-23', NULL, '1', 9, '21120733', '2022-01-14 00:43:57', '2022-01-14 00:43:57', NULL),
(280, '2021-12-23', NULL, '1', 10, '21120733', '2022-01-14 00:44:18', '2022-01-14 00:44:18', NULL),
(281, '2022-01-03', NULL, '2', 1, '22010001', '2022-01-14 00:45:24', '2022-01-14 00:45:24', NULL),
(282, '2022-01-03', NULL, '3', 7, '22010001', '2022-01-14 00:46:26', '2022-01-14 00:46:26', NULL),
(283, '2022-01-03', NULL, '1', 3, '22010001', '2022-01-14 00:46:46', '2022-01-14 00:46:46', NULL),
(284, '2022-01-03', NULL, '1', 2, '22010001', '2022-01-14 00:47:03', '2022-01-14 00:47:03', NULL),
(285, '2022-01-07', NULL, '3', 1, '22010172', '2022-01-14 00:48:48', '2022-01-14 00:48:48', NULL),
(286, '2022-01-07', NULL, '3', 7, '22010172', '2022-01-14 00:49:11', '2022-01-14 00:49:11', NULL),
(287, '2022-01-07', NULL, '1', 5, '22010172', '2022-01-14 00:49:31', '2022-01-14 00:49:31', NULL),
(288, '2022-01-07', NULL, '6', 16, '22010172', '2022-01-14 00:49:54', '2022-01-14 00:49:54', NULL),
(289, '2022-01-07', NULL, '4', 17, '22010172', '2022-01-14 00:50:15', '2022-01-14 00:50:15', NULL),
(290, '2022-01-07', NULL, '3', 18, '22010172', '2022-01-14 00:50:42', '2022-01-14 00:50:42', NULL),
(291, '2022-01-07', NULL, '5', 19, '22010172', '2022-01-14 00:51:03', '2022-01-14 00:51:03', NULL),
(292, '2022-01-13', NULL, '2', 1, '22010311', '2022-01-14 00:51:48', '2022-01-14 00:51:48', NULL),
(293, '2022-01-13', NULL, '1', 7, '22010311', '2022-01-14 00:52:03', '2022-01-14 00:52:03', NULL),
(294, '2022-01-13', NULL, '1', 5, '22010311', '2022-01-14 00:52:45', '2022-01-14 00:52:45', NULL),
(295, '2022-01-13', NULL, '2', 2, '22010311', '2022-01-14 00:53:03', '2022-01-14 00:53:03', NULL),
(296, '2022-01-19', NULL, '1', 1, '22010471', '2022-01-19 05:34:00', '2022-01-19 05:34:00', NULL),
(297, '2022-01-19', NULL, '1', 6, '22010471', '2022-01-19 05:34:31', '2022-01-19 05:34:31', NULL),
(298, '2022-01-19', NULL, '3', 7, '22010471', '2022-01-19 05:35:07', '2022-01-19 05:35:07', NULL),
(299, '2022-01-19', NULL, '1', 4, '22010471', '2022-01-19 05:35:30', '2022-01-19 05:35:30', NULL),
(300, '2022-01-19', NULL, '2', 2, '22010471', '2022-01-19 05:36:00', '2022-01-19 05:36:00', NULL),
(301, '2022-02-02', NULL, '2', 1, '22020010', '2022-02-04 07:53:33', '2022-02-04 07:53:33', NULL),
(302, '2022-02-02', NULL, '3', 7, '22020010', '2022-02-04 07:56:20', '2022-02-04 07:56:20', NULL),
(303, '2022-02-02', NULL, '1', 2, '22020010', '2022-02-04 07:56:36', '2022-02-04 07:56:36', NULL),
(304, '2022-02-07', NULL, '3', 1, '22020166', '2022-02-07 06:36:46', '2022-02-07 06:36:46', NULL),
(305, '2022-02-07', NULL, '2', 7, '22020166', '2022-02-07 06:37:14', '2022-02-07 06:37:14', NULL),
(306, '2022-02-07', NULL, '1', 5, '22020166', '2022-02-07 06:38:49', '2022-02-07 06:38:49', NULL),
(307, '2022-02-07', NULL, '2', 2, '22020166', '2022-02-07 06:43:30', '2022-02-07 06:43:30', NULL),
(308, '2022-01-28', NULL, '3', 1, '22010906', '2022-02-14 08:17:55', '2022-02-14 08:17:55', NULL),
(309, '2022-01-28', NULL, '2', 2, '22010906', '2022-02-14 08:18:13', '2022-02-14 08:18:13', NULL),
(310, '2022-01-28', NULL, '1', 12, '22010906', '2022-02-14 08:18:40', '2022-02-14 08:18:40', NULL),
(311, '2022-02-10', NULL, '1', 1, '22020274', '2022-02-14 08:19:23', '2022-02-14 08:19:23', NULL),
(312, '2022-02-10', NULL, '2', 6, '22020274', '2022-02-14 08:19:53', '2022-02-14 08:19:53', NULL),
(313, '2022-02-10', NULL, '1', 3, '22020274', '2022-02-14 08:20:10', '2022-02-14 08:20:10', NULL),
(314, '2022-02-10', NULL, '1', 2, '22020274', '2022-02-14 08:20:33', '2022-02-14 08:20:33', NULL),
(315, '2022-02-10', NULL, '1', 15, '22020274', '2022-02-14 08:20:47', '2022-02-14 08:20:47', NULL),
(316, '2022-02-14', NULL, '50', 25, '22010300', '2022-02-14 08:22:16', '2022-02-14 08:22:16', NULL),
(317, '2022-01-21', NULL, '1', 1, '22010614', '2022-02-14 08:26:15', '2022-02-14 08:26:15', NULL),
(318, '2022-01-21', NULL, '2', 7, '22010614', '2022-02-14 09:02:15', '2022-02-14 09:02:15', NULL),
(319, '2022-01-21', NULL, '1', 5, '22010614', '2022-02-14 09:02:31', '2022-02-14 09:02:31', NULL),
(320, '2022-01-21', NULL, '1', 8, '22010614', '2022-02-14 09:02:50', '2022-02-14 09:02:50', NULL),
(321, '2022-01-21', NULL, '1', 11, '22010614', '2022-02-14 09:03:11', '2022-02-14 09:03:11', NULL),
(322, '2022-01-21', NULL, '5', 20, '22010614', '2022-02-14 09:03:35', '2022-02-14 09:03:35', NULL),
(323, '2022-01-21', NULL, '3', 21, '22010614', '2022-02-14 09:03:55', '2022-02-14 09:03:55', NULL),
(324, '2022-01-21', NULL, '3', 22, '22010614', '2022-02-14 09:04:17', '2022-02-14 09:04:17', NULL),
(325, '2022-01-21', NULL, '3', 23, '22010614', '2022-02-14 09:04:34', '2022-02-14 09:04:34', NULL),
(326, '2022-02-14', NULL, '20', 26, '22010981', '2022-02-14 09:05:06', '2022-02-14 09:05:06', NULL),
(327, '2022-02-14', NULL, '36', 27, '22010981', '2022-02-14 09:05:26', '2022-02-14 09:05:26', NULL),
(328, '2022-02-15', NULL, '1', 1, '22020431', '2022-02-15 07:06:00', '2022-02-15 07:06:00', NULL),
(329, '2022-02-15', NULL, '3', 7, '22020431', '2022-02-15 07:06:15', '2022-02-15 07:06:15', NULL),
(330, '2022-02-15', NULL, '2', 2, '22020431', '2022-02-15 07:06:38', '2022-02-15 07:06:38', NULL),
(331, '2022-02-17', NULL, '1', 1, '22020472', '2022-02-17 04:14:29', '2022-02-17 04:14:29', NULL),
(332, '2022-02-17', NULL, '2', 7, '22020472', '2022-02-17 04:14:47', '2022-02-17 04:14:47', NULL),
(333, '2022-02-17', NULL, '2', 4, '22020472', '2022-02-17 04:15:05', '2022-02-17 04:15:05', NULL),
(334, '2022-02-17', NULL, '1', 5, '22020472', '2022-02-17 04:15:24', '2022-02-17 04:15:24', NULL),
(335, '2022-02-17', NULL, '1', 2, '22020472', '2022-02-17 04:15:39', '2022-02-17 04:15:39', NULL),
(336, '2022-02-18', NULL, '500', 24, '22020257', '2022-02-18 01:02:44', '2022-02-18 01:02:44', NULL),
(337, '2022-02-23', NULL, '2', 28, '22020472', '2022-02-24 00:02:28', '2022-02-24 00:02:28', NULL),
(338, '2022-02-23', NULL, '2', 30, '22020472', '2022-02-24 00:03:16', '2022-02-24 00:03:16', NULL),
(339, '2022-02-23', NULL, '1', 29, '22020472', '2022-02-24 00:04:11', '2022-02-24 00:04:11', NULL),
(340, '2022-02-24', NULL, '1', 1, '22020828', '2022-02-24 03:35:03', '2022-02-24 03:35:03', NULL),
(341, '2022-02-24', NULL, '1', 7, '22020828', '2022-02-24 03:35:20', '2022-02-24 03:35:20', NULL),
(342, '2022-02-24', NULL, '1', 5, '22020828', '2022-02-24 03:35:34', '2022-02-24 03:35:34', NULL),
(343, '2022-02-24', NULL, '2', 2, '22020828', '2022-02-24 03:35:52', '2022-02-24 03:35:52', NULL),
(344, '2022-03-02', NULL, '1', 1, '22030025', '2022-03-02 02:47:06', '2022-03-02 02:47:06', NULL),
(345, '2022-03-02', NULL, '2', 6, '22030025', '2022-03-02 02:47:45', '2022-03-02 02:47:45', NULL),
(346, '2022-03-02', NULL, '3', 7, '22030025', '2022-03-02 02:48:17', '2022-03-02 02:48:17', NULL),
(347, '2022-03-02', NULL, '1', 2, '22030025', '2022-03-02 02:48:34', '2022-03-02 02:48:34', NULL),
(348, '2022-03-01', NULL, '5', 35, '22020544', '2022-03-02 02:59:32', '2022-03-02 02:59:32', NULL),
(349, '2022-03-01', NULL, '5', 34, '22020544', '2022-03-02 02:59:55', '2022-03-02 02:59:55', NULL),
(350, '2022-03-01', NULL, '5', 32, '22020544', '2022-03-02 03:00:16', '2022-03-02 03:00:16', NULL),
(351, '2022-03-07', NULL, '1', 1, '22030129', '2022-03-10 00:03:22', '2022-03-10 00:03:22', NULL),
(352, '2022-03-07', NULL, '2', 7, '22030129', '2022-03-10 00:03:40', '2022-03-10 00:03:40', NULL),
(353, '2022-03-07', NULL, '1', 5, '22030129', '2022-03-10 00:04:02', '2022-03-10 00:04:02', NULL),
(354, '2022-03-07', NULL, '1', 2, '22030129', '2022-03-10 00:04:17', '2022-03-10 00:04:17', NULL),
(355, '2022-03-09', NULL, '2', 1, '22030208', '2022-03-10 00:05:02', '2022-03-10 00:05:02', NULL),
(356, '2022-03-09', NULL, '1', 7, '22030208', '2022-03-10 00:05:20', '2022-03-10 00:05:20', NULL),
(357, '2022-03-09', NULL, '2', 2, '22030208', '2022-03-10 00:05:37', '2022-03-10 00:05:37', NULL),
(358, '2022-03-14', NULL, '2', 1, '22030316', '2022-03-15 04:03:41', '2022-03-15 04:03:41', NULL),
(359, '2022-03-14', NULL, '2', 7, '22030316', '2022-03-15 04:03:58', '2022-03-15 04:03:58', NULL),
(360, '2022-03-14', NULL, '2', 3, '22030316', '2022-03-15 04:04:12', '2022-03-15 04:04:12', NULL),
(361, '2022-03-16', NULL, '2', 1, '22030416', '2022-03-16 03:43:13', '2022-03-16 03:43:13', NULL),
(362, '2022-03-16', NULL, '2', 7, '22030416', '2022-03-16 03:43:29', '2022-03-16 03:43:29', NULL),
(363, '2022-03-16', NULL, '1', 2, '22030416', '2022-03-16 03:43:44', '2022-03-16 03:43:44', NULL),
(364, '2022-03-16', NULL, '1', 12, '22030416', '2022-03-16 03:44:00', '2022-03-16 03:44:00', NULL),
(365, '2022-03-21', NULL, '1', 1, '22030611', '2022-03-21 04:34:24', '2022-03-21 04:34:24', NULL),
(366, '2022-03-21', NULL, '1', 7, '22030611', '2022-03-21 04:35:15', '2022-03-21 04:35:15', NULL),
(367, '2022-03-21', NULL, '1', 4, '22030611', '2022-03-21 04:37:00', '2022-03-21 04:37:00', NULL),
(368, '2022-03-21', NULL, '2', 2, '22030611', '2022-03-21 04:37:32', '2022-03-21 04:37:32', NULL),
(369, '2022-03-21', NULL, '1', 8, '22030611', '2022-03-21 04:38:20', '2022-03-21 04:38:20', NULL),
(370, '2022-03-21', NULL, '1', 13, '22030611', '2022-03-21 04:39:53', '2022-03-21 04:39:53', NULL),
(371, '2022-03-21', NULL, '1', 14, '22030611', '2022-03-21 04:41:08', '2022-03-21 04:41:08', NULL),
(372, '2022-03-24', NULL, '3', 1, '22030802', '2022-03-24 02:26:46', '2022-03-24 02:26:46', NULL),
(373, '2022-03-24', NULL, '2', 5, '22030802', '2022-03-24 02:27:08', '2022-03-24 02:27:08', NULL),
(374, '2022-03-24', NULL, '1', 2, '22030802', '2022-03-24 02:27:35', '2022-03-24 02:27:35', NULL),
(375, '2022-03-24', NULL, '10', 16, '22030802', '2022-03-24 02:28:30', '2022-03-24 02:28:30', NULL),
(376, '2022-03-21', NULL, '150', 25, '22020880', '2022-03-24 03:17:22', '2022-03-24 03:17:22', NULL),
(377, '2022-03-29', NULL, '3', 1, '22030927', '2022-03-30 02:00:22', '2022-03-30 02:00:22', NULL),
(378, '2022-03-29', NULL, '4', 7, '22030927', '2022-03-30 02:00:38', '2022-03-30 02:00:38', NULL),
(379, '2022-03-29', NULL, '2', 2, '22030927', '2022-03-30 02:00:58', '2022-03-30 02:00:58', NULL),
(380, '2022-04-04', NULL, '3', 7, '22040039', '2022-04-04 17:47:27', '2022-04-04 17:47:27', NULL),
(381, '2022-04-04', NULL, '1', 5, '22040039', '2022-04-04 17:47:56', '2022-04-04 17:47:56', NULL),
(382, '2022-04-04', NULL, '2', 2, '22040039', '2022-04-04 17:48:17', '2022-04-04 17:48:17', NULL),
(383, '2022-04-01', NULL, '36', 26, '22030799', '2022-04-04 18:07:27', '2022-04-04 18:07:27', NULL),
(384, '2022-04-01', NULL, '20', 27, '22030799', '2022-04-04 18:07:45', '2022-04-04 18:07:45', NULL),
(385, '2022-04-07', NULL, '3', 1, '22040168', '2022-04-06 20:14:15', '2022-04-06 20:14:15', NULL),
(386, '2022-04-07', NULL, '1', 7, '22040168', '2022-04-06 20:14:41', '2022-04-06 20:14:41', NULL),
(387, '2022-04-07', NULL, '1', 5, '22040168', '2022-04-06 20:14:57', '2022-04-06 20:14:57', NULL),
(388, '2022-04-07', NULL, '1', 2, '22040168', '2022-04-06 20:15:09', '2022-04-06 20:15:09', NULL),
(389, '2022-04-11', NULL, '1', 1, '22040254', '2022-04-14 05:44:25', '2022-04-14 05:44:25', NULL),
(390, '2022-04-11', NULL, '3', 7, '22040254', '2022-04-14 05:44:44', '2022-04-14 05:44:44', NULL),
(391, '2022-04-11', NULL, '1', 4, '22040254', '2022-04-14 05:45:01', '2022-04-14 05:45:01', NULL),
(392, '2022-04-11', NULL, '1', 5, '22040254', '2022-04-14 05:45:18', '2022-04-14 05:45:18', NULL),
(393, '2022-04-11', NULL, '1', 2, '22040254', '2022-04-14 05:45:37', '2022-04-14 05:45:37', NULL),
(394, '2022-04-13', NULL, '500', 24, '22030970', '2022-04-14 05:46:17', '2022-04-14 05:46:17', NULL),
(395, '2022-04-14', NULL, '1', 1, '22040402', '2022-04-18 02:09:49', '2022-04-18 02:09:49', NULL),
(396, '2022-04-14', NULL, '1', 7, '22040402', '2022-04-18 02:10:11', '2022-04-18 02:10:11', NULL),
(397, '2022-04-14', NULL, '3', 2, '22040402', '2022-04-18 02:10:40', '2022-04-18 02:10:40', NULL),
(398, '2022-04-14', NULL, '5', 19, '22040402', '2022-04-18 02:11:30', '2022-04-18 02:11:30', NULL),
(399, '2022-04-19', NULL, '150', 25, '22040256', '2022-04-18 20:51:18', '2022-04-18 20:51:18', NULL),
(400, '2022-04-20', NULL, '3', 7, '22040639', '2022-04-20 16:52:09', '2022-04-20 16:52:09', NULL),
(401, '2022-04-20', NULL, '1', 5, '22040639', '2022-04-20 16:52:24', '2022-04-20 16:52:24', NULL),
(402, '2022-04-20', NULL, '1', 2, '22040639', '2022-04-20 16:52:40', '2022-04-20 16:52:40', NULL),
(403, '2022-04-22', NULL, '1', 1, '22040774', '2022-04-24 16:50:26', '2022-04-24 16:50:26', NULL),
(404, '2022-04-22', NULL, '2', 7, '22040774', '2022-04-24 16:50:41', '2022-04-24 16:50:41', NULL),
(405, '2022-04-22', NULL, '2', 2, '22040774', '2022-04-24 16:50:57', '2022-04-24 16:50:57', NULL),
(406, '2022-04-27', NULL, '3', 1, '22040904', '2022-04-26 19:36:24', '2022-04-26 19:36:24', NULL),
(407, '2022-04-27', NULL, '2', 6, '22040904', '2022-04-26 19:36:43', '2022-04-26 19:36:43', NULL),
(408, '2022-04-27', NULL, '1', 7, '22040904', '2022-04-26 19:37:02', '2022-04-26 19:37:02', NULL),
(409, '2022-05-12', NULL, '3', 1, '22050119', '2022-05-12 07:48:43', '2022-05-12 07:48:43', NULL),
(410, '2022-05-12', NULL, '2', 7, '22050119', '2022-05-12 07:49:04', '2022-05-12 07:49:04', NULL),
(411, '2022-05-12', NULL, '1', 5, '22050119', '2022-05-12 07:49:20', '2022-05-12 07:49:20', NULL),
(412, '2022-05-12', NULL, '3', 2, '22050119', '2022-05-12 07:49:35', '2022-05-12 07:49:35', NULL),
(413, '2022-05-23', NULL, '4', 7, '22050302', '2022-05-24 07:38:12', '2022-05-24 07:38:12', NULL),
(414, '2022-05-23', NULL, '1', 3, '22050302', '2022-05-24 07:39:24', '2022-05-24 07:39:24', NULL),
(415, '2022-05-23', NULL, '1', 2, '22050302', '2022-05-24 07:39:58', '2022-05-24 07:39:58', NULL),
(416, '2022-05-25', NULL, '1', 1, '22050480', '2022-05-25 02:41:52', '2022-05-25 02:41:52', NULL),
(417, '2022-05-25', NULL, '1', 6, '22050480', '2022-05-25 02:42:07', '2022-05-25 02:42:07', NULL),
(418, '2022-05-25', NULL, '2', 7, '22050480', '2022-05-25 02:42:21', '2022-05-25 02:42:21', NULL),
(419, '2022-05-25', NULL, '1', 4, '22050480', '2022-05-25 02:42:57', '2022-05-25 02:42:57', NULL),
(420, '2022-05-25', NULL, '1', 5, '22050480', '2022-05-25 02:43:11', '2022-05-25 02:43:11', NULL),
(421, '2022-05-25', NULL, '1', 2, '22050480', '2022-05-25 02:43:26', '2022-05-25 02:43:26', NULL),
(422, '2022-05-19', NULL, '1', 1, '22050220', '2022-05-25 02:45:20', '2022-05-25 02:45:20', NULL),
(423, '2022-05-19', NULL, '1', 7, '22050220', '2022-05-25 02:45:30', '2022-05-25 02:45:30', NULL),
(424, '2022-05-19', NULL, '1', 2, '22050220', '2022-05-25 02:45:48', '2022-05-25 02:45:48', NULL),
(425, '2022-05-19', NULL, '1', 11, '22050220', '2022-05-25 02:46:03', '2022-05-25 02:46:03', NULL),
(426, '2022-05-19', NULL, '1', 10, '22050220', '2022-05-25 02:46:20', '2022-05-25 02:46:20', NULL),
(427, '2022-05-19', NULL, '10', 16, '22050220', '2022-05-25 02:46:37', '2022-05-25 02:46:37', NULL),
(428, '2022-05-19', NULL, '2', 17, '22050220', '2022-05-25 02:46:56', '2022-05-25 02:46:56', NULL),
(429, '2022-05-19', NULL, '3', 18, '22050220', '2022-05-25 02:47:12', '2022-05-25 02:47:12', NULL),
(430, '2022-06-30', NULL, '1', 1, '22050585', '2022-06-02 03:31:07', '2022-06-02 03:31:07', NULL),
(431, '2022-05-30', NULL, '1', 7, '22050585', '2022-06-02 03:31:22', '2022-06-02 03:31:22', NULL),
(432, '2022-05-30', NULL, '3', 2, '22050585', '2022-06-02 03:31:35', '2022-06-02 03:31:35', NULL),
(433, '2022-06-03', NULL, '2', 1, '22060031', '2022-06-06 00:38:39', '2022-06-06 00:38:39', NULL),
(434, '2022-06-03', NULL, '1', 7, '22060031', '2022-06-06 00:38:56', '2022-06-06 00:38:56', NULL),
(435, '2022-06-06', NULL, '2', 2, '22060031', '2022-06-06 00:39:08', '2022-06-06 00:39:08', NULL),
(436, '2022-06-09', NULL, '1', 1, '22060219', '2022-06-09 06:29:51', '2022-06-09 06:29:51', NULL),
(437, '2022-06-09', NULL, '1', 6, '22060219', '2022-06-09 06:30:13', '2022-06-09 06:30:13', NULL),
(438, '2022-06-09', NULL, '1', 7, '22060219', '2022-06-09 06:30:28', '2022-06-09 06:30:28', NULL),
(439, '2022-06-09', NULL, '1', 2, '22060219', '2022-06-09 06:30:45', '2022-06-09 06:30:45', NULL),
(440, '2022-06-09', NULL, '1', 8, '22060219', '2022-06-09 06:31:06', '2022-06-09 06:31:06', NULL),
(441, '2022-06-08', NULL, '1', 1, '22060137', '2022-06-15 00:12:32', '2022-06-15 00:12:32', NULL),
(442, '2022-06-08', NULL, '1', 7, '22060137', '2022-06-15 00:12:47', '2022-06-15 00:12:47', NULL),
(443, '2022-06-08', NULL, '1', 5, '22060137', '2022-06-15 00:13:03', '2022-06-15 00:13:03', NULL),
(444, '2022-06-08', NULL, '2', 2, '22060137', '2022-06-15 00:13:16', '2022-06-15 00:13:16', NULL),
(445, '2022-06-14', NULL, '2', 1, '22060318', '2022-06-15 00:13:45', '2022-06-15 00:13:45', NULL),
(446, '2022-06-14', NULL, '3', 7, '22060318', '2022-06-15 00:14:06', '2022-06-15 00:14:06', NULL),
(447, '2022-06-14', NULL, '2', 3, '22060318', '2022-06-15 00:14:23', '2022-06-15 00:14:23', NULL),
(448, '2022-06-14', NULL, '2', 2, '22060318', '2022-06-15 00:14:38', '2022-06-15 00:14:38', NULL),
(449, '2022-06-14', NULL, '3', 17, '22060318', '2022-06-15 00:14:57', '2022-06-15 00:14:57', NULL),
(450, '2022-06-14', NULL, '3', 18, '22060318', '2022-06-15 00:15:14', '2022-06-15 00:15:14', NULL),
(451, '2022-06-14', NULL, '5', 19, '22060318', '2022-06-15 00:15:29', '2022-06-15 00:15:29', NULL),
(452, '2022-06-16', NULL, '1', 1, '22060443', '2022-06-17 07:01:10', '2022-06-17 07:01:10', NULL),
(453, '2022-06-16', NULL, '4', 7, '22060443', '2022-06-17 07:01:30', '2022-06-17 07:01:30', NULL),
(454, '2022-06-16', NULL, '1', 2, '22060443', '2022-06-17 07:01:46', '2022-06-17 07:01:46', NULL),
(455, '2022-06-22', NULL, '1', 1, '22060925', '2022-06-23 00:32:46', '2022-06-23 00:32:46', NULL),
(456, '2022-06-22', NULL, '1', 7, '22060925', '2022-06-23 00:33:11', '2022-06-23 00:33:11', NULL),
(457, '2022-06-22', NULL, '2', 5, '22060925', '2022-06-23 00:33:29', '2022-06-23 00:33:29', NULL),
(458, '2022-06-22', NULL, '2', 2, '22060925', '2022-06-23 00:33:50', '2022-06-23 00:33:50', NULL),
(459, '2022-06-27', NULL, '2', 1, '22061158', '2022-06-28 00:38:08', '2022-06-28 00:38:08', NULL),
(460, '2022-06-27', NULL, '2', 7, '22061158', '2022-06-28 00:38:33', '2022-06-28 00:38:33', NULL),
(461, '2022-06-27', NULL, '1', 5, '22061158', '2022-06-28 00:38:55', '2022-06-28 00:38:55', NULL),
(462, '2022-06-27', NULL, '2', 2, '22061158', '2022-06-28 00:39:17', '2022-06-28 00:39:17', NULL),
(463, '2022-06-29', NULL, '30', 45, '22050629', '2022-06-29 05:52:57', '2022-06-29 05:52:57', NULL),
(464, '2022-07-05', NULL, '4', 1, '22070107', '2022-07-05 02:56:00', '2022-07-05 02:56:00', NULL),
(465, '2022-07-05', NULL, '5', 7, '22070101', '2022-07-05 02:56:33', '2022-07-05 02:56:33', NULL),
(466, '2022-07-05', NULL, '1', 5, '22070107', '2022-07-05 02:57:27', '2022-07-05 02:57:27', NULL),
(467, '2022-07-05', NULL, '1', 3, '22070107', '2022-07-05 02:57:54', '2022-07-05 02:57:54', NULL),
(468, '2022-07-05', NULL, '2', 2, '22070107', '2022-07-05 02:58:14', '2022-07-05 02:58:14', NULL),
(469, '2022-07-06', NULL, '41', 1, '22070176', '2022-07-07 00:20:50', '2022-07-07 00:20:50', NULL),
(470, '2022-07-06', NULL, '1', 7, '22070176', '2022-07-07 00:21:36', '2022-07-07 00:21:36', NULL),
(471, '2022-07-06', NULL, '1', 2, '22070176', '2022-07-07 00:22:18', '2022-07-07 00:22:18', NULL),
(472, '2022-07-06', NULL, '1', 12, '22070176', '2022-07-07 00:22:46', '2022-07-07 00:22:46', NULL),
(473, '2022-07-06', NULL, '1', 15, '22070176', '2022-07-07 00:23:11', '2022-07-07 00:23:11', NULL),
(474, '2022-07-06', NULL, '7', 16, '22070176', '2022-07-07 00:24:30', '2022-07-07 00:24:30', NULL),
(475, '2022-07-06', NULL, '1', 12, '22070176', '2022-07-07 07:01:10', '2022-07-07 07:01:10', NULL),
(476, '2022-07-12', NULL, '1', 7, '22070877', '2022-07-12 07:44:10', '2022-07-12 07:44:10', NULL),
(477, '2022-07-12', NULL, '1', 5, '22070877', '2022-07-12 07:44:35', '2022-07-12 07:44:35', NULL),
(478, '2022-07-12', NULL, '3', 2, '22070877', '2022-07-12 07:44:58', '2022-07-12 07:44:58', NULL),
(479, '2022-07-20', NULL, '30', 27, '22060278', '2022-07-20 01:06:14', '2022-07-20 01:06:14', NULL),
(480, '2022-07-20', NULL, '2', 1, '22071601', '2022-07-20 02:30:17', '2022-07-20 02:30:17', NULL),
(481, '2022-07-20', NULL, '1', 7, '22071601', '2022-07-20 02:31:47', '2022-07-20 02:31:47', NULL),
(482, '2022-07-20', NULL, '1', 5, '22071601', '2022-07-20 02:32:29', '2022-07-20 02:32:29', NULL),
(483, '2022-07-20', NULL, '3', 2, '22071601', '2022-07-20 02:32:57', '2022-07-20 02:32:57', NULL),
(484, '2022-07-22', NULL, '500', 24, '22070091', '2022-07-22 06:59:57', '2022-07-22 06:59:57', NULL),
(485, '2022-07-22', NULL, '25', 26, '22070978', '2022-07-22 07:00:59', '2022-07-22 07:00:59', NULL),
(486, '2022-07-25', NULL, '1', 1, '22071829', '2022-07-25 06:50:23', '2022-07-25 06:50:23', NULL),
(487, '2022-07-25', NULL, '2', 6, '22071829', '2022-07-25 06:50:58', '2022-07-25 06:50:58', NULL),
(488, '2022-07-25', NULL, '1', 5, '22071829', '2022-07-25 06:51:44', '2022-07-25 06:51:44', NULL),
(489, '2022-07-25', NULL, '2', 2, '22071829', '2022-07-25 06:52:13', '2022-07-25 06:52:13', NULL),
(490, '2022-07-25', NULL, '3', 33, '22070956', '2022-07-25 07:11:59', '2022-07-25 07:11:59', NULL),
(491, '2022-07-29', NULL, '2', 7, '22072160', '2022-07-29 03:41:14', '2022-07-29 03:41:14', NULL),
(492, '2022-07-29', NULL, '2', 2, '22072160', '2022-07-29 03:41:47', '2022-07-29 03:41:47', NULL),
(493, '2022-08-01', NULL, '10', 32, '22071865', '2022-08-01 04:15:16', '2022-08-01 04:15:16', NULL),
(494, '2022-08-02', NULL, '3', 1, '22080068', '2022-08-02 04:11:41', '2022-08-02 04:11:41', NULL),
(495, '2022-08-02', NULL, '1', 5, '22080068', '2022-08-02 04:12:40', '2022-08-02 04:12:40', NULL),
(496, '2022-08-02', NULL, '3', 2, '22080068', '2022-08-02 04:13:06', '2022-08-02 04:13:06', NULL),
(497, '2022-08-08', NULL, '1', 1, '22080475', '2022-08-08 03:27:25', '2022-08-08 03:27:25', NULL),
(498, '2022-08-08', NULL, '4', 7, '22080475', '2022-08-08 03:27:41', '2022-08-08 03:27:41', NULL),
(499, '2022-08-08', NULL, '2', 2, '22080475', '2022-08-08 03:27:57', '2022-08-08 03:27:57', NULL),
(500, '2022-08-08', NULL, '1', 14, '22080475', '2022-08-08 03:28:17', '2022-08-08 03:28:17', NULL),
(501, '2022-08-15', NULL, '1', 1, '22080844', '2022-08-15 04:01:41', '2022-08-15 04:01:41', NULL),
(502, '2022-08-15', NULL, '1', 7, '22080844', '2022-08-15 04:01:55', '2022-08-15 04:01:55', NULL),
(503, '2022-08-15', NULL, '2', 5, '22080844', '2022-08-15 04:02:07', '2022-08-15 04:02:07', NULL),
(504, '2022-08-15', NULL, '2', 2, '22080844', '2022-08-15 04:02:20', '2022-08-15 04:02:20', NULL),
(505, '2022-08-24', NULL, '1', 5, '22081360', '2022-08-24 02:55:39', '2022-08-24 02:55:39', NULL),
(506, '2022-08-24', NULL, '2', 2, '22081360', '2022-08-24 02:55:55', '2022-08-24 02:55:55', NULL),
(507, '2022-08-24', NULL, '1', 8, '22081360', '2022-08-24 02:56:12', '2022-08-24 02:56:12', NULL),
(508, '2022-08-22', NULL, '3', 1, '22081146', '2022-08-25 00:39:54', '2022-08-25 00:39:54', NULL),
(509, '2022-08-22', NULL, '1', 7, '22081146', '2022-08-25 00:40:10', '2022-08-25 00:40:10', NULL),
(510, '2022-08-22', NULL, '3', 2, '22081146', '2022-08-25 00:40:28', '2022-08-25 00:40:28', NULL),
(511, '2022-08-22', NULL, '8', 16, '22081146', '2022-08-25 00:40:48', '2022-08-25 00:40:48', NULL),
(512, '2022-08-22', NULL, '4', 19, '22081146', '2022-08-25 00:41:07', '2022-08-25 00:41:07', NULL),
(513, '2022-08-30', NULL, '2', 16, '22081146', '2022-08-30 08:09:24', '2022-08-30 08:09:24', NULL),
(514, '2022-08-30', NULL, '1', 19, '22081146', '2022-08-30 08:09:36', '2022-08-30 08:09:36', NULL),
(515, '2022-08-30', NULL, '4', 1, '22081670', '2022-08-30 08:10:18', '2022-08-30 08:10:18', NULL),
(516, '2022-08-30', NULL, '3', 7, '22081670', '2022-08-30 08:10:41', '2022-08-30 08:10:41', NULL);
INSERT INTO `stok_in` (`id`, `date`, `barang_name`, `jumlah`, `barang_id`, `no_ppb`, `created_at`, `updated_at`, `input_by`) VALUES
(517, '2022-08-30', NULL, '1', 5, '22081670', '2022-08-30 08:10:56', '2022-08-30 08:10:56', NULL),
(518, '2022-08-30', NULL, '1', 2, '22081670', '2022-08-30 08:11:10', '2022-08-30 08:11:10', NULL),
(519, '2022-09-05', NULL, '2', 1, '22090091', '2022-09-05 04:40:04', '2022-09-05 04:40:04', NULL),
(520, '2022-09-05', NULL, '2', 6, '22090091', '2022-09-05 04:40:19', '2022-09-05 04:40:19', NULL),
(521, '2022-09-05', NULL, '1', 7, '22090091', '2022-09-05 04:40:44', '2022-09-05 04:40:44', NULL),
(522, '2022-09-05', NULL, '1', 4, '22090091', '2022-09-05 04:41:00', '2022-09-05 04:41:00', NULL),
(523, '2022-09-05', NULL, '3', 2, '22090091', '2022-09-05 04:41:14', '2022-09-05 04:41:14', NULL),
(524, '2022-09-05', NULL, '5', 32, '22081474', '2022-09-05 04:50:08', '2022-09-05 04:50:08', NULL),
(526, '2022-09-05', NULL, '5', 34, '22081474', '2022-09-05 05:33:14', '2022-09-05 05:33:14', NULL),
(527, '2022-09-05', NULL, '3', 46, '22081474', '2022-09-05 05:36:32', '2022-09-05 05:36:32', NULL),
(528, '2022-09-05', NULL, '500', 24, '22081232', '2022-09-05 08:02:09', '2022-09-05 08:02:09', NULL),
(529, '2022-09-05', NULL, '500', 24, '22081232', '2022-09-05 08:02:09', '2022-09-05 08:02:09', NULL),
(530, '2022-09-05', NULL, '10', 44, '22081232', '2022-09-05 08:03:33', '2022-09-05 08:03:33', NULL),
(531, '2022-09-05', NULL, '45', 27, '22081232', '2022-09-05 08:04:08', '2022-09-05 08:04:08', NULL),
(532, '2022-09-08', NULL, '32', 44, '22081232', '2022-09-08 01:53:08', '2022-09-08 01:53:08', NULL),
(533, '2022-09-09', NULL, '1', 1, '22090255', '2022-09-08 07:48:14', '2022-09-08 07:48:14', NULL),
(534, '2022-09-09', NULL, '3', 7, '22090255', '2022-09-08 07:48:58', '2022-09-08 07:48:58', NULL),
(535, '2022-09-09', NULL, '1', 3, '22090255', '2022-09-08 07:49:17', '2022-09-08 07:49:17', NULL),
(537, '2022-09-09', NULL, '2', 5, '22090255', '2022-09-08 07:50:39', '2022-09-08 07:50:39', NULL),
(538, '2022-09-09', NULL, '1', 2, '22090255', '2022-09-08 07:51:10', '2022-09-08 07:51:10', NULL),
(539, '2022-09-14', NULL, '1', 7, '22090491', '2022-09-14 06:24:40', '2022-09-14 06:24:40', NULL),
(540, '2022-09-14', NULL, '1', 5, '22090491', '2022-09-14 06:25:09', '2022-09-14 06:25:09', NULL),
(541, '2022-09-14', NULL, '3', 2, '22090491', '2022-09-14 06:25:40', '2022-09-14 06:25:40', NULL),
(542, '2022-09-14', NULL, '5', 16, '22090491', '2022-09-14 06:26:46', '2022-09-14 06:26:46', NULL),
(543, '2022-09-14', NULL, '5', 17, '22090491', '2022-09-14 06:27:04', '2022-09-14 06:27:04', NULL),
(544, '2022-09-14', NULL, '4', 18, '22090491', '2022-09-14 06:27:20', '2022-09-14 06:27:20', NULL),
(545, '2022-09-14', NULL, '5', 19, '22090491', '2022-09-14 06:27:36', '2022-09-14 06:27:36', NULL),
(546, '2022-09-20', NULL, '1', 7, '22090954', '2022-09-20 07:20:21', '2022-09-20 07:20:21', NULL),
(547, '2022-09-20', NULL, '5', 1, '22090954', '2022-09-20 07:21:00', '2022-09-20 07:21:00', NULL),
(548, '2022-09-20', NULL, '3', 2, '22090954', '2022-09-20 07:21:24', '2022-09-20 07:21:24', NULL),
(550, '2022-09-29', NULL, '4', 2, '22091444', '2022-09-03 04:31:02', '2022-09-03 04:31:02', NULL),
(551, '2022-09-29', NULL, '2', 7, '22091444', '2022-09-03 04:31:33', '2022-09-03 04:31:33', NULL),
(552, '2022-09-29', NULL, '1', 5, '22091444', '2022-09-03 04:33:28', '2022-09-03 04:33:28', NULL),
(553, '2022-09-29', NULL, '1', 8, '22091444', '2022-09-03 04:34:10', '2022-09-03 04:34:10', NULL),
(554, '2022-09-29', NULL, '3', 1, '22091444', '2022-09-03 04:34:32', '2022-09-03 04:34:32', NULL),
(555, '2022-09-29', NULL, '5', 16, '22091444', '2022-09-03 04:35:00', '2022-09-03 04:35:00', NULL),
(556, '2022-09-29', NULL, '5', 17, '22091444', '2022-09-03 04:35:23', '2022-09-03 04:35:23', NULL),
(557, '2022-10-03', NULL, '1', 12, '22100033', '2022-10-03 04:44:50', '2022-10-03 04:44:50', NULL),
(558, '2022-10-03', NULL, '1', 13, '22100033', '2022-10-03 04:45:19', '2022-10-03 04:45:19', NULL),
(559, '2022-10-04', NULL, '1', 10, 'Stok Opname', '2022-10-04 01:19:50', '2022-10-04 01:19:50', NULL),
(560, '2022-10-04', NULL, '1', 28, 'Stok Opname', '2022-10-04 01:22:04', '2022-10-04 01:22:04', NULL),
(561, '2022-10-04', NULL, '8', 26, 'Stok Opname', '2022-10-04 01:30:02', '2022-10-04 01:30:02', NULL),
(562, '2022-10-05', NULL, '2', 5, '22100033', '2022-10-06 03:33:28', '2022-10-06 03:33:28', NULL),
(563, '2022-10-05', NULL, '6', 1, '22100033', '2022-10-06 03:34:00', '2022-10-06 03:34:00', NULL),
(564, '2022-10-05', NULL, '3', 2, '22100033', '2022-10-06 03:34:27', '2022-10-06 03:34:27', NULL),
(565, '2022-10-05', NULL, '2', 6, '22100033', '2022-10-06 03:34:53', '2022-10-06 03:34:53', NULL),
(566, '2022-10-05', NULL, '4', 7, '22100033', '2022-10-06 03:35:17', '2022-10-06 03:35:17', NULL),
(567, '2022-10-07', NULL, '2', 33, '22091326', '2022-10-10 00:28:04', '2022-10-10 00:28:04', NULL),
(568, '2022-10-13', NULL, '4', 2, '22100438', '2022-10-13 03:01:45', '2022-10-13 03:01:45', NULL),
(569, '2022-10-13', NULL, '5', 7, '22100438', '2022-10-13 03:03:12', '2022-10-13 03:03:12', NULL),
(570, '2022-10-13', NULL, '1', 3, '22100438', '2022-10-13 03:03:53', '2022-10-13 03:03:53', NULL),
(571, '2022-10-13', NULL, '1', 1, '22100438', '2022-10-13 03:04:16', '2022-10-13 03:04:16', NULL),
(572, '2022-10-13', NULL, '1', 10, '22100438', '2022-10-13 03:04:59', '2022-10-13 03:04:59', NULL),
(573, '2022-10-19', NULL, '2', 5, '22100772', '2022-10-20 09:24:57', '2022-10-20 09:24:57', NULL),
(574, '2022-10-19', NULL, '6', 1, '22100772', '2022-10-20 09:25:18', '2022-10-20 09:25:18', NULL),
(575, '2022-10-19', NULL, '3', 2, '22100772', '2022-10-20 09:25:41', '2022-10-20 09:25:41', NULL),
(576, '2022-10-19', NULL, '2', 6, '22100772', '2022-10-20 09:26:07', '2022-10-20 09:26:07', NULL),
(577, '2022-10-19', NULL, '4', 7, '22100772', '2022-10-20 09:26:27', '2022-10-20 09:26:27', NULL),
(578, '2022-10-19', NULL, '1', 12, '22100772', '2022-10-20 09:27:13', '2022-10-20 09:27:13', NULL),
(579, '2022-10-19', NULL, '1', 13, '22100772', '2022-10-20 09:27:31', '2022-10-20 09:27:31', NULL),
(580, '2022-10-21', NULL, '2', 5, '22100033', '2022-10-21 07:42:41', '2022-10-21 07:42:41', NULL),
(581, '2022-10-21', NULL, '6', 1, '22100033', '2022-10-21 07:43:14', '2022-10-21 07:43:14', NULL),
(582, '2022-10-21', NULL, '3', 2, '22100033', '2022-10-21 07:43:48', '2022-10-21 07:43:48', NULL),
(583, '2022-10-21', NULL, '2', 6, '22100033', '2022-10-21 07:44:16', '2022-10-21 07:44:16', NULL),
(584, '2022-10-21', NULL, '4', 7, '22100033', '2022-10-21 07:44:49', '2022-10-21 07:44:49', NULL),
(585, '2022-10-21', NULL, '1', 12, '22100033', '2022-10-21 07:45:43', '2022-10-21 07:45:43', NULL),
(586, '2022-10-21', NULL, '1', 13, '22100033', '2022-10-21 07:46:07', '2022-10-21 07:46:07', NULL),
(587, '2022-10-21', NULL, '1', 31, '22100033', '2022-10-21 07:46:35', '2022-10-21 07:46:35', NULL),
(588, '2022-10-21', NULL, '5', 19, '22100772', '2022-10-21 08:30:28', '2022-10-21 08:30:28', NULL),
(589, '2022-10-21', NULL, '3', 36, '22100772', '2022-10-21 08:31:20', '2022-10-21 08:31:20', NULL),
(590, '2022-10-17', NULL, '500', 24, '22091593', '2022-10-28 02:23:37', '2022-10-28 02:23:37', NULL),
(592, '2022-10-17', NULL, '20', 26, '22091593', '2022-10-28 02:29:10', '2022-10-28 02:29:10', NULL),
(593, '2022-10-17', NULL, '36', 27, '22091593', '2022-10-28 02:29:35', '2022-10-28 02:29:35', NULL),
(594, '2022-10-28', NULL, '5', 7, '22101435', '2022-10-28 05:58:59', '2022-10-28 05:58:59', NULL),
(595, '2022-10-17', NULL, '2', 26, '22091593', '2022-10-28 06:02:18', '2022-10-28 06:02:18', NULL),
(596, '2022-10-28', NULL, '5', 2, '22101435', '2022-10-28 06:03:32', '2022-10-28 06:03:32', NULL),
(597, '2022-10-28', NULL, '3', 1, '22101435', '2022-10-28 06:03:55', '2022-10-28 06:03:55', NULL),
(598, '2022-10-28', NULL, '1', 10, '22101435', '2022-10-28 06:04:22', '2022-10-28 06:04:22', NULL),
(599, '2022-10-28', NULL, '1', 3, '22101435', '2022-10-28 06:04:39', '2022-10-28 06:04:39', NULL),
(600, '2022-10-28', NULL, '3', 1, '22100772', '2022-10-28 06:05:39', '2022-10-28 06:05:39', NULL),
(601, '2022-10-28', NULL, '5', 7, '22100772', '2022-10-28 06:06:00', '2022-10-28 06:06:00', NULL),
(602, '2022-10-28', NULL, '2', 5, '22100772', '2022-10-28 06:06:22', '2022-10-28 06:06:22', NULL),
(603, '2022-10-28', NULL, '1', 2, '22100772', '2022-10-28 06:06:55', '2022-10-28 06:06:55', NULL),
(604, '2022-10-28', NULL, '1', 12, '22100772', '2022-10-28 06:07:12', '2022-10-28 06:07:12', NULL),
(605, '2022-10-28', NULL, '5', 18, '22100772', '2022-10-28 06:08:23', '2022-10-28 06:08:23', NULL),
(606, '2022-10-28', NULL, '5', 17, '22100772', '2022-10-28 06:08:44', '2022-10-28 06:08:44', NULL),
(607, '2022-10-28', NULL, '1', 31, '22100772', '2022-10-28 06:09:07', '2022-10-28 06:09:07', NULL),
(608, '2022-10-28', NULL, '5', 19, '22100772', '2022-10-28 06:09:31', '2022-10-28 06:09:31', NULL),
(609, '2022-10-28', NULL, '3', 36, '22100772', '2022-10-28 06:09:51', '2022-10-28 06:09:51', NULL),
(610, '2022-11-07', NULL, '2', 5, '22110249', '2022-11-08 01:00:33', '2022-11-08 01:00:33', NULL),
(611, '2022-11-07', NULL, '4', 1, '22110249', '2022-11-08 01:00:57', '2022-11-08 01:00:57', NULL),
(612, '2022-11-07', NULL, '3', 7, '22110249', '2022-11-08 01:01:20', '2022-11-08 01:01:20', NULL),
(613, '2022-11-07', NULL, '3', 2, '22110249', '2022-11-08 01:07:55', '2022-11-08 01:07:55', NULL),
(614, '2022-11-07', NULL, '1', 10, '22110249', '2022-11-08 01:09:54', '2022-11-08 01:09:54', NULL),
(615, '2022-11-07', NULL, '1', 14, '22110249', '2022-11-08 01:10:15', '2022-11-08 01:10:15', NULL),
(616, '2022-11-09', NULL, '1', 19, 'Stok Opname', '2022-11-09 01:44:25', '2022-11-09 01:44:25', NULL),
(617, '2022-11-09', NULL, '2', 21, 'Stok Opname', '2022-11-09 01:45:56', '2022-11-09 01:45:56', NULL),
(618, '2022-11-09', NULL, '7', 32, 'Stok Opname', '2022-11-09 02:09:00', '2022-11-09 02:09:00', NULL),
(619, '2022-11-09', NULL, '6', 34, 'Stok Opname', '2022-11-09 02:10:17', '2022-11-09 02:10:17', NULL),
(620, '2022-11-16', NULL, '2', 1, '22110841', '2022-11-16 03:11:17', '2022-11-16 03:11:17', NULL),
(621, '2022-11-16', NULL, '4', 2, '22110841', '2022-11-16 03:11:31', '2022-11-16 03:11:31', NULL),
(622, '2022-11-16', NULL, '2', 7, '22110841', '2022-11-16 03:11:53', '2022-11-16 03:11:53', NULL),
(623, '2022-11-16', NULL, '1', 5, '22110841', '2022-11-16 03:12:13', '2022-11-16 03:12:13', NULL),
(624, '2022-11-16', NULL, '1', 15, '22110841', '2022-11-16 03:12:36', '2022-11-16 03:12:36', NULL),
(625, '2022-11-16', NULL, '5', 16, '22110841', '2022-11-16 03:12:59', '2022-11-16 03:12:59', NULL),
(626, '2022-11-16', NULL, '5', 20, '22110841', '2022-11-16 03:13:18', '2022-11-16 03:13:18', NULL),
(627, '2022-11-17', NULL, '1', 13, '22110956', '2022-11-23 04:34:28', '2022-11-23 04:34:28', NULL),
(628, '2022-11-17', NULL, '1', 11, '22110956', '2022-11-23 04:34:56', '2022-11-23 04:34:56', NULL),
(629, '2022-11-23', NULL, '34', 26, '22110547', '2022-11-23 06:44:13', '2022-11-23 06:44:13', NULL),
(630, '2022-11-23', NULL, '28', 27, '22110547', '2022-11-23 06:44:41', '2022-11-23 06:44:41', NULL),
(631, '2022-11-25', NULL, '1', 7, '22111530', '2022-11-25 06:04:29', '2022-11-25 06:04:29', NULL),
(632, '2022-11-25', NULL, '4', 1, '22111530', '2022-11-25 06:05:36', '2022-11-25 06:05:36', NULL),
(633, '2022-11-25', NULL, '3', 2, '22111530', '2022-11-25 06:05:53', '2022-11-25 06:05:53', NULL),
(634, '2022-11-25', NULL, '2', 5, '22111530', '2022-11-25 06:06:35', '2022-11-25 06:06:35', NULL),
(635, '2022-11-25', NULL, '2', 6, '22111530', '2022-11-25 06:07:23', '2022-11-25 06:07:23', NULL),
(636, '2022-11-25', NULL, '1', 13, '22110956', '2022-11-25 06:09:21', '2022-11-25 06:09:21', NULL),
(637, '2022-11-25', NULL, '1', 11, '22110956', '2022-11-25 06:09:40', '2022-11-25 06:09:40', NULL),
(638, '2022-11-28', NULL, '6', 1, '22111705', '2022-11-28 07:01:56', '2022-11-28 07:01:56', NULL),
(639, '2022-11-29', NULL, '1', 12, '22111705', '2022-11-29 06:42:24', '2022-11-29 06:42:24', NULL),
(640, '2022-11-29', NULL, '1', 9, '22111705', '2022-11-29 06:42:41', '2022-11-29 06:42:41', NULL),
(641, '2022-11-29', NULL, '2', 2, '22111705', '2022-11-29 06:43:02', '2022-11-29 06:43:02', NULL),
(642, '2022-12-05', NULL, '5', 1, '22120197', '2022-12-07 01:16:34', '2022-12-07 01:16:34', NULL),
(643, '2022-12-05', NULL, '4', 7, '22120197', '2022-12-07 01:17:03', '2022-12-07 01:17:03', NULL),
(644, '2022-12-05', NULL, '1', 5, '22120197', '2022-12-07 01:17:23', '2022-12-07 01:17:23', NULL),
(645, '2022-12-05', NULL, '3', 2, '22120197', '2022-12-07 01:17:44', '2022-12-07 01:17:44', NULL),
(646, '2022-12-09', NULL, '3', 2, '22120500', '2022-12-09 04:29:18', '2022-12-09 04:29:18', NULL),
(647, '2022-12-09', NULL, '4', 1, '22120500', '2022-12-09 04:29:35', '2022-12-09 04:29:35', NULL),
(648, '2022-12-09', NULL, '2', 6, '22120500', '2022-12-09 04:29:56', '2022-12-09 04:29:56', NULL),
(649, '2022-12-09', NULL, '2', 7, '22120500', '2022-12-09 04:30:14', '2022-12-09 04:30:14', NULL),
(650, '2022-12-09', NULL, '1', 12, '22120500', '2022-12-09 04:30:32', '2022-12-09 04:30:32', NULL),
(651, '2022-12-15', NULL, '6', 1, '22120948', '2022-12-16 00:37:13', '2022-12-16 00:37:13', NULL),
(652, '2022-12-15', NULL, '4', 2, '22120948', '2022-12-16 00:37:35', '2022-12-16 00:37:35', NULL),
(653, '2022-12-15', NULL, '6', 7, '22120948', '2022-12-16 00:37:59', '2022-12-16 00:37:59', NULL),
(654, '2022-12-15', NULL, '2', 5, '22120948', '2022-12-16 00:38:18', '2022-12-16 00:38:18', NULL),
(655, '2022-12-12', NULL, '15', 24, '202212-027', '2022-12-16 01:04:25', '2022-12-16 01:04:25', NULL),
(656, '2023-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, '2023-01-10', 'Ribbon Sato ADM', '1', NULL, '123', '2023-01-10 03:44:17', '2023-01-10 03:44:17', NULL),
(658, '2023-01-10', 'Power Supply', '3', NULL, '123', '2023-01-10 03:44:17', '2023-01-10 03:44:17', NULL),
(659, '2023-01-10', 'Kanban Lokal', '2', NULL, '1231', '2023-01-10 03:49:07', '2023-01-10 03:49:07', NULL),
(660, '2023-01-10', 'Ribbon Wax Hyundai', '1', NULL, '1231', '2023-01-10 03:49:07', '2023-01-10 03:49:07', NULL),
(661, '2023-01-10', 'Kanban Lokal', '2', NULL, '1231', '2023-01-10 03:49:42', '2023-01-10 03:49:42', 'Fathur Rahmansyah'),
(662, '2023-01-10', 'Ribbon Wax Hyundai', '1', NULL, '1231', '2023-01-10 03:49:42', '2023-01-10 03:49:42', 'Fathur Rahmansyah'),
(663, '2023-01-10', 'Ribbon Wax Hyundai', '1', NULL, '1231', '2023-01-10 03:52:38', '2023-01-10 03:52:38', 'Fathur Rahmansyah'),
(664, '2023-01-10', 'Ribbon Sato ADM', '1', NULL, '121', '2023-01-10 03:57:42', '2023-01-10 03:57:42', 'Fathur Rahmansyah'),
(665, '2023-01-10', 'Kanban Lokal', '11', NULL, '11', '2023-01-10 04:05:58', '2023-01-10 04:05:58', 'Fathur Rahmansyah'),
(666, '2023-01-10', 'CE505A', '1', NULL, '12122', '2023-01-10 04:37:20', '2023-01-10 04:37:20', 'Fathur Rahmansyah'),
(667, '2023-01-10', 'CE505A', '1', NULL, '444', '2023-01-10 04:40:47', '2023-01-10 04:40:47', 'Fathur Rahmansyah'),
(668, '2023-01-10', 'Kanban Lokal', '12', NULL, '123', '2023-01-10 06:33:16', '2023-01-10 06:33:16', 'Fathur Rahmansyah'),
(669, '2023-01-10', 'Roll Sato ADM', '3', NULL, '123', '2023-01-10 06:33:16', '2023-01-10 06:33:16', 'Fathur Rahmansyah'),
(670, '2023-01-12', 'CE505A', '1', NULL, '121', '2023-01-12 07:59:06', '2023-01-12 07:59:06', 'Fathur Rahmansyah'),
(671, '2023-01-12', 'CE505A', '1', NULL, '12', '2023-01-12 07:59:49', '2023-01-12 07:59:49', 'Fathur Rahmansyah'),
(672, '2023-01-12', 'CF226A', '1', NULL, '12', '2023-01-12 07:59:49', '2023-01-12 07:59:49', 'Fathur Rahmansyah');

--
-- Triggers `stok_in`
--
DELIMITER $$
CREATE TRIGGER `plus_barang_stok` AFTER INSERT ON `stok_in` FOR EACH ROW BEGIN

   UPDATE barang_stok SET stok = stok + NEW.jumlah

   WHERE barang_name = NEW.barang_name;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stok_out`
--

CREATE TABLE `stok_out` (
  `id` int(10) UNSIGNED NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_perm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `input_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stok_out`
--

INSERT INTO `stok_out` (`id`, `jumlah`, `barang_name`, `barang_id`, `name`, `section`, `no_perm`, `date`, `created_at`, `updated_at`, `input_by`) VALUES
(8, '1', NULL, 7, 'Silvi', 'Marketing', '202103-009', '2021-03-05', '2021-03-04 22:55:39', '2021-03-04 22:55:39', NULL),
(9, '3', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202103-010', '2021-03-05', '2021-03-04 23:47:00', '2021-03-04 23:47:00', NULL),
(10, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202103-010', '2021-03-05', '2021-03-04 23:47:35', '2021-03-04 23:47:35', NULL),
(11, '10', NULL, 24, 'Adit', 'Inventory Management', '202103-011', '2021-03-05', '2021-03-05 00:16:09', '2021-03-05 00:16:09', NULL),
(12, '2', NULL, 1, 'Agus', 'PPC & Delvcon', '202103-012', '2021-03-05', '2021-03-05 00:49:17', '2021-03-05 00:49:17', NULL),
(13, '10', NULL, 25, 'Alfian', 'QA', '202103-013', '2021-03-08', '2021-03-07 17:03:30', '2021-03-07 17:03:30', NULL),
(14, '10', NULL, 24, 'Alfian', 'QA', '202103-014', '2021-03-08', '2021-03-07 21:48:57', '2021-03-07 21:48:57', NULL),
(15, '10', NULL, 24, 'Amirudin', 'Production', '202103-015', '2021-03-08', '2021-03-07 21:50:24', '2021-03-07 21:50:24', NULL),
(16, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202103-016', '2021-03-08', '2021-03-07 22:37:42', '2021-03-07 22:37:42', NULL),
(17, '1', NULL, 7, 'Silvi', 'Marketing', '202103-017', '2021-03-09', '2021-03-16 23:48:13', '2021-03-16 23:48:13', NULL),
(18, '2', NULL, 2, 'Dayat', 'PPC & Delvcon', '202103-018', '2021-03-10', '2021-03-16 23:49:05', '2021-03-16 23:49:05', NULL),
(19, '10', NULL, 24, 'Adit', 'Inventory Management', '202103-019', '2021-03-10', '2021-03-16 23:49:54', '2021-03-16 23:49:54', NULL),
(20, '1', NULL, 7, 'Hartana', 'Accounting & Fin', '202103-020', '2021-03-10', '2021-03-16 23:50:43', '2021-03-16 23:50:43', NULL),
(21, '3', NULL, 1, 'Taufik', 'PPC & Delvcon', '202103-021', '2021-03-15', '2021-03-16 23:52:10', '2021-03-16 23:52:10', NULL),
(22, '1', NULL, 7, 'Lisdyah', 'Accounting & Fin', '202103-022', '2021-03-15', '2021-03-16 23:52:54', '2021-03-16 23:52:54', NULL),
(23, '15', NULL, 24, 'Ade S', 'QA', '202103-023', '2021-03-16', '2021-03-16 23:53:38', '2021-03-16 23:53:38', NULL),
(24, '10', NULL, 24, 'Adit', 'Inventory Management', '202103-024', '2021-03-16', '2021-03-16 23:54:20', '2021-03-16 23:54:20', NULL),
(25, '1', NULL, 7, 'Ade S', 'QA', '202103-025', '2021-03-16', '2021-03-16 23:55:05', '2021-03-16 23:55:05', NULL),
(26, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202103-026', '2021-03-10', '2021-03-16 23:55:57', '2021-03-16 23:55:57', NULL),
(27, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202103-026', '2021-03-10', '2021-03-16 23:56:22', '2021-03-16 23:56:22', NULL),
(28, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202103-027', '2021-03-16', '2021-03-16 23:57:04', '2021-03-16 23:57:04', NULL),
(29, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202103-028', '2021-03-16', '2021-03-16 23:57:48', '2021-03-16 23:57:48', NULL),
(30, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202103-028', '2021-03-16', '2021-03-16 23:58:31', '2021-03-16 23:58:31', NULL),
(31, '1', NULL, 3, 'Dewì', 'Accounting & Fin', '202103-029', '2021-03-17', '2021-03-16 23:59:55', '2021-03-16 23:59:55', NULL),
(32, '1', NULL, 7, 'Gina', 'GA', '202103-030', '2021-03-17', '2021-03-17 00:00:34', '2021-03-17 00:00:34', NULL),
(33, '5', NULL, 24, 'Nimun', 'Production', '202103-031', '2021-03-17', '2021-03-17 00:01:40', '2021-03-17 00:01:40', NULL),
(35, '2', NULL, 2, 'Dayat', 'PPC & Delvcon', '202103-032', '2021-03-17', '2021-03-17 00:06:02', '2021-03-17 00:06:02', NULL),
(36, '1', NULL, 16, 'Chandra', 'QA', '202103-033', '2021-03-18', '2021-03-23 18:12:57', '2021-03-23 18:12:57', NULL),
(37, '1', NULL, 19, 'Chandra', 'QA', '202103-033', '2021-03-18', '2021-03-23 18:13:41', '2021-03-23 18:13:41', NULL),
(38, '1', NULL, 18, 'Chandra', 'QA', '202103-033', '2021-03-18', '2021-03-23 18:14:46', '2021-03-23 18:14:46', NULL),
(39, '1', NULL, 20, 'Adang', 'Engineering', '202103-034', '2021-03-18', '2021-03-23 18:16:28', '2021-03-23 18:16:28', NULL),
(40, '1', NULL, 23, 'Adang', 'Engineering', '202103-034', '2021-03-18', '2021-03-23 18:17:32', '2021-03-23 18:17:32', NULL),
(41, '1', NULL, 32, 'Wildan Adji', 'IT', '202103-035', '2021-03-18', '2021-03-23 18:19:28', '2021-03-23 18:19:28', NULL),
(42, '1', NULL, 7, 'Ade S', 'QA', '202103-036', '2021-03-18', '2021-03-23 18:20:50', '2021-03-23 18:20:50', NULL),
(43, '20', NULL, 24, 'Rikan', 'Inventory Management', '202103-037', '2021-03-18', '2021-03-23 18:22:21', '2021-03-23 18:22:21', NULL),
(44, '1', NULL, 5, 'Naomi', 'Purchasing', '202103-038', '2021-03-18', '2021-03-23 18:24:29', '2021-03-23 18:24:29', NULL),
(45, '1', NULL, 7, 'Silvia', 'Marketing', '202103-039', '2021-03-19', '2021-03-23 18:25:55', '2021-03-23 18:25:55', NULL),
(46, '10', NULL, 24, 'Aditya', 'Inventory Management', '202103-040', '2021-03-19', '2021-03-23 18:28:08', '2021-03-23 18:28:08', NULL),
(47, '1', NULL, 32, 'Windan', 'IT', '202103-041', '2021-03-19', '2021-03-23 18:29:54', '2021-03-23 18:29:54', NULL),
(48, '1', NULL, 33, 'Bagyo', 'Accounting & Fin', '202103-042', '2021-03-19', '2021-03-23 18:32:04', '2021-03-23 18:32:04', NULL),
(49, '1', NULL, 13, 'Fathur', 'IT', '202103-043', '2021-03-23', '2021-03-23 18:34:34', '2021-03-23 18:34:34', NULL),
(50, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202103-044', '2021-03-23', '2021-03-23 18:45:03', '2021-03-23 18:45:03', NULL),
(51, '2', NULL, 16, 'Tony', 'HRD', '202103-045', '2021-03-24', '2021-03-23 18:47:37', '2021-03-23 18:47:37', NULL),
(52, '10', NULL, 24, 'Sarmilih', 'Production', '202103-046', '2021-03-24', '2021-03-23 19:03:39', '2021-03-23 19:03:39', NULL),
(53, '10', NULL, 24, 'Amirudin', 'Production', '202103-047', '2021-03-24', '2021-03-23 19:04:19', '2021-03-23 19:04:19', NULL),
(54, '1', NULL, 7, 'Amanda', 'Accounting & Fin', '202103-048', '2021-03-24', '2021-03-23 21:32:19', '2021-03-23 21:32:19', NULL),
(55, '10', NULL, 24, 'Agus', 'Inventory Management', '202103-049', '2021-03-24', '2021-03-23 21:33:36', '2021-03-23 21:33:36', NULL),
(56, '10', NULL, 24, 'Sudarman', 'QA', '202103-050', '2021-03-24', '2021-03-23 22:54:34', '2021-03-23 22:54:34', NULL),
(57, '10', NULL, 25, 'Puzianto', 'QA', '202103-051', '2021-03-24', '2021-03-23 23:41:23', '2021-03-23 23:41:23', NULL),
(58, '2', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202103-052', '2021-03-25', '2021-03-24 23:32:56', '2021-03-24 23:32:56', NULL),
(59, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202103-053', '2021-03-26', '2021-03-26 01:13:31', '2021-03-26 01:13:31', NULL),
(60, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202103-054', '2021-03-26', '2021-03-26 01:45:00', '2021-03-26 01:45:00', NULL),
(61, '10', NULL, 24, 'Yadi M', 'Inventory Management', '202103-055', '2021-03-29', '2021-03-28 18:24:19', '2021-03-28 18:24:19', NULL),
(62, '1', NULL, 33, 'M Rohani', 'GA', '202103-056', '2021-03-29', '2021-03-29 00:41:08', '2021-03-29 00:41:08', NULL),
(63, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202103-057', '2021-03-29', '2021-03-29 01:20:29', '2021-03-29 01:20:29', NULL),
(64, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202103-057', '2021-03-29', '2021-03-29 01:21:08', '2021-03-29 01:21:08', NULL),
(65, '1', NULL, 7, 'Silvi', 'Marketing', '202103-058', '2021-03-30', '2021-03-29 23:55:00', '2021-03-29 23:55:00', NULL),
(66, '1', NULL, 3, 'Selvi', 'Accounting & Fin', '202103-059', '2021-03-30', '2021-03-30 01:44:26', '2021-03-30 01:44:26', NULL),
(67, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202103-060', '2021-03-30', '2021-03-30 17:11:34', '2021-03-30 17:11:34', NULL),
(68, '10', NULL, 24, 'Ade S', 'QA', '202103-061', '2021-03-31', '2021-03-30 17:57:45', '2021-03-30 17:57:45', NULL),
(69, '20', NULL, 26, 'Rikan', 'Inventory Management', '202103-062', '2021-03-31', '2021-03-31 00:27:48', '2021-03-31 00:27:48', NULL),
(70, '10', NULL, 24, 'Aditya', 'Inventory Management', '202103-063', '2021-03-31', '2021-03-31 01:08:31', '2021-03-31 01:08:31', NULL),
(71, '3', NULL, 1, 'A roup', 'PPC & Delvcon', '202104-064', '2021-04-05', '2021-04-04 19:14:23', '2021-04-04 19:14:23', NULL),
(72, '1', NULL, 16, 'Chandra', 'QA', '202104-065', '2021-04-05', '2021-04-05 18:55:15', '2021-04-05 18:55:15', NULL),
(73, '10', NULL, 25, 'Puzianto', 'QA', '202104-066', '2021-04-05', '2021-04-05 18:57:00', '2021-04-05 18:57:00', NULL),
(74, '10', NULL, 24, 'Amirudin', 'Production', '202104-067', '2021-04-05', '2021-04-05 18:59:21', '2021-04-05 18:59:21', NULL),
(75, '3', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202104-068', '2021-04-06', '2021-04-05 19:00:58', '2021-04-05 19:00:58', NULL),
(76, '4', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202104-068', '2021-04-06', '2021-04-05 19:01:36', '2021-04-05 19:01:36', NULL),
(77, '1', NULL, 7, 'Silvi', 'Marketing', '202104-069', '2021-04-06', '2021-04-05 19:02:39', '2021-04-05 19:02:39', NULL),
(78, '2', NULL, 27, 'Fathur', 'IT', 'Stock Opname', '2021-04-06', '2021-04-05 20:42:24', '2021-04-05 20:42:24', NULL),
(79, '23', NULL, 24, 'Fathur', 'IT', 'Stock Opname', '2021-04-06', '2021-04-05 20:44:32', '2021-04-05 20:44:32', NULL),
(80, '12', NULL, 25, 'Fathur', 'IT', 'Stock Opname', '2021-04-06', '2021-04-05 20:46:18', '2021-04-05 20:46:18', NULL),
(81, '1', NULL, 32, 'Bp Erlan', 'HRD', '202104-070', '2021-04-06', '2021-04-05 21:05:57', '2021-04-05 21:05:57', NULL),
(82, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202104-071', '2021-04-06', '2021-04-05 21:22:42', '2021-04-05 21:22:42', NULL),
(83, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202104-072', '2021-04-06', '2021-04-06 20:34:54', '2021-04-06 20:34:54', NULL),
(84, '5', NULL, 24, 'Aditya', 'Inventory Management', '202104-073', '2021-04-06', '2021-04-06 20:36:36', '2021-04-06 20:36:36', NULL),
(85, '1', NULL, 7, 'Amanda', 'Accounting & Fin', '202104-074', '2021-04-07', '2021-04-06 20:37:54', '2021-04-06 20:37:54', NULL),
(86, '2', NULL, 24, 'Aditya', 'Inventory Management', '202104-075', '2021-04-07', '2021-04-07 00:46:59', '2021-04-07 00:46:59', NULL),
(87, '1', NULL, 7, 'Como', 'Accounting & Fin', '202104-076', '2021-04-07', '2021-04-07 00:50:59', '2021-04-07 00:50:59', NULL),
(88, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202104-077', '2021-04-07', '2021-04-07 00:52:16', '2021-04-07 00:52:16', NULL),
(89, '1', NULL, 32, 'Ari', 'Purchasing', '202104-078', '2021-04-08', '2021-04-07 20:18:12', '2021-04-07 20:18:12', NULL),
(90, '10', NULL, 25, 'Aditya', 'Inventory Management', '202104-079', '2021-04-09', '2021-04-09 00:08:56', '2021-04-09 00:08:56', NULL),
(91, '1', NULL, 7, 'Maryo', 'Marketing', '202104-080', '2021-04-09', '2021-04-09 01:11:36', '2021-04-09 01:11:36', NULL),
(92, '1', NULL, 5, 'Naomi', 'Purchasing', '202104-081', '2021-04-09', '2021-04-11 17:08:51', '2021-04-11 17:08:51', NULL),
(93, '5', NULL, 25, 'Nimun', 'Production', '202104-082', '2021-04-12', '2021-04-11 19:45:47', '2021-04-11 19:45:47', NULL),
(94, '1', NULL, 16, 'Dany', 'PPC & Delvcon', '202104-083', '2021-04-12', '2021-04-11 23:22:30', '2021-04-11 23:22:30', NULL),
(95, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202104-084', '2021-04-12', '2021-04-11 23:36:39', '2021-04-11 23:36:39', NULL),
(96, '3', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202104-084', '2021-04-12', '2021-04-11 23:37:03', '2021-04-11 23:37:03', NULL),
(97, '5', NULL, 25, 'Sukardi', 'Production', '202104-085', '2021-04-13', '2021-04-12 23:59:38', '2021-04-12 23:59:38', NULL),
(98, '5', NULL, 25, 'Adi S', 'Inventory Management', '202104-086', '2021-04-13', '2021-04-13 01:24:24', '2021-04-13 01:24:24', NULL),
(99, '1', NULL, 32, 'Asmoro', 'QHSE', '202104-087', '2021-04-14', '2021-04-13 20:52:19', '2021-04-13 20:52:19', NULL),
(100, '5', NULL, 25, 'Aditya', 'Inventory Management', '202104-088', '2021-04-14', '2021-04-13 23:13:38', '2021-04-13 23:13:38', NULL),
(101, '10', NULL, 25, 'Alfian', 'QA', '202104-089', '2021-04-14', '2021-04-14 17:07:54', '2021-04-14 17:07:54', NULL),
(102, '5', NULL, 25, 'Nimun', 'Production', '202104-090', '2021-04-15', '2021-04-14 23:41:54', '2021-04-14 23:41:54', NULL),
(103, NULL, NULL, 25, NULL, 'Accounting & Fin', NULL, '2021-04-15', '2021-04-14 23:42:05', '2021-04-14 23:42:05', NULL),
(104, '5', NULL, 25, 'Ade S', 'QA', '202104-091', '2021-04-15', '2021-04-14 23:56:08', '2021-04-14 23:56:08', NULL),
(105, '5', NULL, 25, 'Aditya', 'Inventory Management', '202104-092', '2021-04-15', '2021-04-15 01:19:35', '2021-04-15 01:19:35', NULL),
(106, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202104-093', '2021-04-16', '2021-04-15 22:56:10', '2021-04-15 22:56:10', NULL),
(107, '20', NULL, 24, 'Rikan', 'Inventory Management', '202104-094', '2021-04-16', '2021-04-16 00:45:32', '2021-04-16 00:45:32', NULL),
(108, '3', NULL, 1, 'A roup', 'PPC & Delvcon', '202104-095', '2021-04-16', '2021-04-18 17:26:17', '2021-04-18 17:26:17', NULL),
(109, '10', NULL, 25, 'Aditya', 'Inventory Management', '202104-096', '2021-04-19', '2021-04-18 18:18:46', '2021-04-18 18:18:46', NULL),
(110, '1', NULL, 7, 'Amanda', 'Accounting & Fin', '202104-097', '2021-04-19', '2021-04-18 23:16:36', '2021-04-18 23:16:36', NULL),
(111, '12', NULL, 24, 'Firmansyah', 'QA', '202104-098', '2021-04-20', '2021-04-19 21:52:08', '2021-04-19 21:52:08', NULL),
(112, '1', NULL, 7, 'Silvia', 'Marketing', '202104-099', '2021-04-20', '2021-04-19 21:52:54', '2021-04-19 21:52:54', NULL),
(113, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202104-100', '2021-04-20', '2021-04-19 21:53:28', '2021-04-19 21:53:28', NULL),
(114, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202104-101', '2021-04-21', '2021-04-20 18:00:22', '2021-04-20 18:00:22', NULL),
(115, '2', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202104-101', '2021-04-21', '2021-04-20 18:01:18', '2021-04-20 18:01:18', NULL),
(116, '10', NULL, 24, 'Aditya', 'Inventory Management', '202104-102', '2021-04-21', '2021-04-21 00:00:15', '2021-04-21 00:00:15', NULL),
(117, '10', NULL, 24, 'Amirudin', 'Production', '202104-103', '2021-04-21', '2021-04-21 00:01:22', '2021-04-21 00:01:22', NULL),
(118, '1', NULL, 7, 'Firmansyah', 'QA', '202104-104', '2021-04-22', '2021-04-21 21:14:28', '2021-04-21 21:14:28', NULL),
(119, '10', NULL, 24, 'Sarmilih', 'Production', '202104-105', '2021-04-22', '2021-04-21 21:18:21', '2021-04-21 21:18:21', NULL),
(120, '10', NULL, 25, 'Pujianto', 'QA', '202104-106', '2021-04-22', '2021-04-21 21:18:53', '2021-04-21 21:18:53', NULL),
(121, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202104-107', '2021-04-23', '2021-04-22 20:00:35', '2021-04-22 20:00:35', NULL),
(122, '1', NULL, 3, 'Selvi', 'Accounting & Fin', '202104-108', '2021-04-23', '2021-04-22 20:03:02', '2021-04-22 20:03:02', NULL),
(123, '1', NULL, 7, 'Manyo', 'Marketing', '202104-109', '2021-04-23', '2021-04-22 23:43:59', '2021-04-22 23:43:59', NULL),
(124, '10', NULL, 24, 'Aditya', 'Inventory Management', '202104-110', '2021-04-23', '2021-04-22 23:44:38', '2021-04-22 23:44:38', NULL),
(125, '1', NULL, 5, 'Ilham', 'PPC & Delvcon', '202104-111', '2021-04-26', '2021-04-27 00:03:24', '2021-04-27 00:03:24', NULL),
(126, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202104-112', '2021-04-26', '2021-04-27 00:04:13', '2021-04-27 00:04:13', NULL),
(127, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202104-113', '2021-04-27', '2021-04-27 00:05:10', '2021-04-27 00:05:10', NULL),
(128, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202104-113', '2021-04-27', '2021-04-27 00:05:53', '2021-04-27 00:05:53', NULL),
(129, '1', NULL, 7, 'Maryo', 'Marketing', '202104-114', '2021-04-27', '2021-04-27 00:06:35', '2021-04-27 00:06:35', NULL),
(130, '1', NULL, 16, 'Maryo', 'Marketing', '202104-114', '2021-04-27', '2021-04-27 00:08:17', '2021-04-27 00:08:17', NULL),
(131, '1', NULL, 19, 'Maryo', 'Marketing', '202104-114', '2021-04-27', '2021-04-27 00:08:46', '2021-04-27 00:08:46', NULL),
(132, '10', NULL, 24, 'Aditya', 'Inventory Management', '202104-115', '2021-04-27', '2021-04-27 00:09:37', '2021-04-27 00:09:37', NULL),
(133, '10', NULL, 24, 'Maryono', 'QA', '202104-116', '2021-04-28', '2021-04-27 18:20:29', '2021-04-27 18:20:29', NULL),
(134, '2', NULL, 16, 'Alfian', 'QA', '202104-117', '2021-04-28', '2021-04-27 22:54:31', '2021-04-27 22:54:31', NULL),
(135, '1', NULL, 19, 'Alfian', 'QA', '202104-117', '2021-04-28', '2021-04-27 22:55:02', '2021-04-27 22:55:02', NULL),
(136, '10', NULL, 24, 'Nimun', 'Production', '202104-118', '2021-04-28', '2021-04-27 23:36:35', '2021-04-27 23:36:35', NULL),
(137, '10', NULL, 24, 'Alfian', 'QA', '202104-119', '2021-04-29', '2021-04-29 20:11:17', '2021-04-29 20:11:17', NULL),
(138, '10', NULL, 25, 'Alfian', 'QA', '202104-119', '2021-04-29', '2021-04-29 20:11:53', '2021-04-29 20:11:53', NULL),
(139, '1', NULL, 32, 'Jaenal', 'GA', '202104-121', '2021-04-29', '2021-04-30 00:38:44', '2021-04-30 00:38:44', NULL),
(140, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202104-122', '2021-04-30', '2021-04-30 00:39:48', '2021-04-30 00:39:48', NULL),
(141, '20', NULL, 24, 'Rikan', 'Inventory Management', '202104-123', '2021-04-30', '2021-04-30 00:41:59', '2021-04-30 00:41:59', NULL),
(142, '1', NULL, 16, 'Adika', 'Inventory Management', '202105-124', '2021-05-03', '2021-05-02 19:57:32', '2021-05-02 19:57:32', NULL),
(143, '1', NULL, 19, 'Adika', 'Inventory Management', '202105-124', '2021-05-03', '2021-05-02 19:57:52', '2021-05-02 19:57:52', NULL),
(144, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202105-126', '2021-05-03', '2021-05-02 22:47:12', '2021-05-02 22:47:12', NULL),
(145, '3', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202105-126', '2021-05-03', '2021-05-02 22:48:46', '2021-05-02 22:48:46', NULL),
(146, '4', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202105-126', '2021-05-03', '2021-05-02 22:49:12', '2021-05-02 22:49:12', NULL),
(147, '1', NULL, 23, 'M andi', 'Engineering', '202104-127', '2021-05-03', '2021-05-03 20:11:20', '2021-05-03 20:11:20', NULL),
(148, '1', NULL, 22, 'M andi', 'Engineering', '202104-127', '2021-05-03', '2021-05-03 20:11:55', '2021-05-03 20:11:55', NULL),
(149, '1', NULL, 21, 'M andi', 'Engineering', '202104-127', '2021-05-03', '2021-05-03 20:12:43', '2021-05-03 20:12:43', NULL),
(150, '3', NULL, 1, 'A roup', 'PPC & Delvcon', '202104-128', '2021-05-03', '2021-05-03 20:13:47', '2021-05-03 20:13:47', NULL),
(151, '1', NULL, 7, 'Ayu', 'Accounting & Fin', '202104-129', '2021-05-04', '2021-05-03 20:17:57', '2021-05-03 20:17:57', NULL),
(152, '1', NULL, 7, 'Fathur', 'IT', '202105-130', '2021-05-04', '2021-05-04 20:12:36', '2021-05-04 20:12:36', NULL),
(153, '1', NULL, 33, 'Zaenal Arifin', 'Accounting & Fin', '202105-131', '2021-05-05', '2021-05-04 20:17:52', '2021-05-04 20:17:52', NULL),
(154, '10', NULL, 24, 'Aditya', 'Inventory Management', '202105-132', '2021-05-05', '2021-05-04 20:20:33', '2021-05-04 20:20:33', NULL),
(155, '1', NULL, 7, 'Silvia', 'Marketing', '202105-133', '2021-05-05', '2021-05-04 23:02:12', '2021-05-04 23:02:12', NULL),
(156, '2', NULL, 6, 'An', 'Accounting & Fin', '202105-134', '2021-05-06', '2021-05-06 18:51:23', '2021-05-06 18:51:23', NULL),
(157, '1', NULL, 32, 'Andika', 'PPC & Delvcon', '202105-135', '2021-05-18', '2021-05-19 23:57:24', '2021-05-19 23:57:24', NULL),
(158, '10', NULL, 24, 'Aditya', 'Inventory Management', '202105-136', '2021-05-19', '2021-05-19 23:58:14', '2021-05-19 23:58:14', NULL),
(159, '10', NULL, 24, 'Firmansyah', 'QA', '202105-137', '2021-05-19', '2021-05-19 23:59:00', '2021-05-19 23:59:00', NULL),
(160, '1', NULL, 16, 'Rianti', 'Marketing', '202105-138', '2021-05-19', '2021-05-20 00:21:38', '2021-05-20 00:21:38', NULL),
(161, '1', NULL, 17, 'Rianti', 'Marketing', '202105-138', '2021-05-19', '2021-05-20 00:22:18', '2021-05-20 00:22:18', NULL),
(162, '1', NULL, 18, 'Rianti', 'Marketing', '202105-138', '2021-05-19', '2021-05-20 00:22:37', '2021-05-20 00:22:37', NULL),
(163, '1', NULL, 19, 'Rianti', 'Marketing', '202105-138', '2021-05-19', '2021-05-20 00:22:58', '2021-05-20 00:22:58', NULL),
(164, '1', NULL, 5, 'Ilham', 'PPC & Delvcon', '202105-139', '2021-05-20', '2021-05-20 00:23:44', '2021-05-20 00:23:44', NULL),
(165, '1', NULL, 32, 'Andri', 'Engineering', '202105-140', '2021-05-20', '2021-05-20 00:24:39', '2021-05-20 00:24:39', NULL),
(166, '10', NULL, 25, 'Puji', 'QA', '202105-141', '2021-05-20', '2021-05-20 00:26:24', '2021-05-20 00:26:24', NULL),
(167, '1', NULL, 16, 'Widayat', 'PPC & Delvcon', '202105-142', '2021-05-20', '2021-05-20 00:27:01', '2021-05-20 00:27:01', NULL),
(168, '12', NULL, 25, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:13:53', '2021-06-06 19:13:53', NULL),
(169, '1', NULL, 8, 'Fathur', 'PPC & Delvcon', 'Stok Opname', '2021-06-07', '2021-06-06 19:18:56', '2021-06-06 19:18:56', NULL),
(170, '1', NULL, 10, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:19:16', '2021-06-06 19:19:16', NULL),
(171, '2', NULL, 12, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:19:42', '2021-06-06 19:19:42', NULL),
(172, '1', NULL, 15, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:20:18', '2021-06-06 19:20:18', NULL),
(173, '1', NULL, 19, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:21:27', '2021-06-06 19:21:27', NULL),
(175, '3', NULL, 26, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:30:37', '2021-06-06 19:30:37', NULL),
(176, '12', NULL, 27, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:31:02', '2021-06-06 19:31:02', NULL),
(177, '4', NULL, 32, 'Fathur', 'IT', 'Stok Opname', '2021-06-07', '2021-06-06 19:36:33', '2021-06-06 19:36:33', NULL),
(178, '10', NULL, 24, 'Aditya', 'Inventory Management', '202106-001', '2021-06-07', '2021-06-07 17:10:05', '2021-06-07 17:10:05', NULL),
(179, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202106-002', '2021-06-07', '2021-06-07 17:10:46', '2021-06-07 17:10:46', NULL),
(180, '1', NULL, 7, 'Silvi', 'Marketing', '202106-004', '2021-06-08', '2021-06-09 17:13:33', '2021-06-09 17:13:33', NULL),
(181, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202106-005', '2021-06-08', '2021-06-09 17:14:51', '2021-06-09 17:14:51', NULL),
(182, '10', NULL, 24, 'Adit', 'Inventory Management', '202106-007', '2021-06-09', '2021-06-09 17:16:03', '2021-06-09 17:16:03', NULL),
(183, '1', NULL, 5, 'Ilham', 'Purchasing', '202106-008', '2021-06-09', '2021-06-09 17:16:54', '2021-06-09 17:16:54', NULL),
(184, '2', NULL, 26, 'Sukardi', 'PPC & Delvcon', '202106-009', '2021-06-09', '2021-06-09 17:17:45', '2021-06-09 17:17:45', NULL),
(185, '3', NULL, 27, 'Sukardi', 'PPC & Delvcon', '202106-009', '2021-06-09', '2021-06-09 17:18:35', '2021-06-09 17:18:35', NULL),
(186, '10', NULL, 24, 'Iklash', 'QA', '202106-010', '2021-06-09', '2021-06-09 17:19:30', '2021-06-09 17:19:30', NULL),
(187, '1', NULL, 16, 'Agus Pranoto', 'Engineering', '202106-011', '2021-06-06', '2021-06-10 20:25:46', '2021-06-10 20:25:46', NULL),
(188, '1', NULL, 28, 'Iis S', 'QHSE', '202106-012', '2021-06-10', '2021-06-10 20:26:34', '2021-06-10 20:26:34', NULL),
(189, '1', NULL, 30, 'Iis S', 'QHSE', '202106-012', '2021-06-10', '2021-06-10 20:27:05', '2021-06-10 20:27:05', NULL),
(190, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202106-013', '2021-06-10', '2021-06-10 20:27:43', '2021-06-10 20:27:43', NULL),
(191, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202106-014', '2021-06-10', '2021-06-10 20:28:30', '2021-06-10 20:28:30', NULL),
(192, '1', NULL, 7, 'Anna', 'Accounting & Fin', '202106-014', '2021-06-10', '2021-06-10 20:28:53', '2021-06-10 20:28:53', NULL),
(193, '17', NULL, 24, 'Rikan', 'Inventory Management', '202106-015', '2021-06-11', '2021-06-14 18:53:47', '2021-06-14 18:53:47', NULL),
(194, '1', NULL, 16, 'Rikan', 'Inventory Management', '202106-015', '2021-06-11', '2021-06-14 18:54:21', '2021-06-14 18:54:21', NULL),
(195, '10', NULL, 24, 'Sarmilih', 'Production', '202106-016', '2021-06-14', '2021-06-14 18:55:09', '2021-06-14 18:55:09', NULL),
(196, '10', NULL, 24, 'Adit', 'Inventory Management', '202106-017', '2021-06-14', '2021-06-14 18:55:59', '2021-06-14 18:55:59', NULL),
(197, '2', NULL, 1, 'Taufik', 'PPC & Delvcon', '202106-018', '2021-06-14', '2021-06-14 18:56:48', '2021-06-14 18:56:48', NULL),
(198, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202106-019', '2021-06-15', '2021-06-20 17:03:42', '2021-06-20 17:03:42', NULL),
(199, '1', NULL, 7, 'Dewi', 'Accounting & Fin', '202106-020', '2021-06-16', '2021-06-20 17:04:33', '2021-06-20 17:04:33', NULL),
(200, '10', NULL, 24, 'Amirudin', 'Production', '202106-021', '2021-06-16', '2021-06-20 17:07:52', '2021-06-20 17:07:52', NULL),
(201, '2', NULL, 26, 'Rifal', 'PPC & Delvcon', '202106-022', '2021-06-17', '2021-06-20 17:09:05', '2021-06-20 17:09:05', NULL),
(202, '3', NULL, 27, 'Rifal', 'PPC & Delvcon', '202106-022', '2021-06-17', '2021-06-20 17:09:31', '2021-06-20 17:09:31', NULL),
(203, '1', NULL, 7, 'Riska', 'Accounting & Fin', '202106-023', '2021-06-17', '2021-06-20 17:10:11', '2021-06-20 17:10:11', NULL),
(204, '1', NULL, 28, 'Adang', 'Engineering', '202106-024', '2021-06-17', '2021-06-20 17:11:15', '2021-06-20 17:11:15', NULL),
(205, '10', NULL, 24, 'QA', 'QA', '202106-025', '2021-06-17', '2021-06-20 17:11:59', '2021-06-20 17:11:59', NULL),
(206, '10', NULL, 24, 'Aditya', 'Inventory Management', '202106-026', '2021-06-17', '2021-06-20 17:12:41', '2021-06-20 17:12:41', NULL),
(207, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202106-027', '2021-06-16', '2021-06-20 17:13:40', '2021-06-20 17:13:40', NULL),
(208, '1', NULL, 7, 'Maryo', 'Marketing', '202106-028', '2021-06-17', '2021-06-20 17:14:27', '2021-06-20 17:14:27', NULL),
(209, '1', NULL, 32, 'Sujatman', 'PPC & Delvcon', '202106-029', '2021-06-18', '2021-06-20 17:15:18', '2021-06-20 17:15:18', NULL),
(210, '2', NULL, 16, 'Chandra', 'QA', '202106-030', '2021-06-21', '2021-06-24 22:59:34', '2021-06-24 22:59:34', NULL),
(211, '1', NULL, 2, 'Hadi P', 'PPC & Delvcon', '202106-031', '2021-06-21', '2021-06-24 23:01:05', '2021-06-24 23:01:05', NULL),
(212, '10', NULL, 24, 'Aditya', 'Inventory Management', '202106-032', '2021-06-22', '2021-06-24 23:02:03', '2021-06-24 23:02:03', NULL),
(213, '1', NULL, 16, 'Sutanto', 'QA', '202106-033', '2021-06-23', '2021-06-24 23:05:28', '2021-06-24 23:05:28', NULL),
(214, '1', NULL, 19, 'Sutanto', 'QA', '202106-033', '2021-06-23', '2021-06-24 23:06:01', '2021-06-24 23:06:01', NULL),
(215, '1', NULL, 3, 'Nursaidah', 'Accounting & Fin', '202106-034', '2021-06-23', '2021-06-24 23:06:42', '2021-06-24 23:06:42', NULL),
(216, '15', NULL, 24, 'Nimun', 'Production', '202106-035', '2021-06-23', '2021-06-24 23:07:37', '2021-06-24 23:07:37', NULL),
(217, '1', NULL, 7, 'Silvia', 'Marketing', '202106-037', '2021-06-23', '2021-06-24 23:08:23', '2021-06-24 23:08:23', NULL),
(218, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202106-038', '2021-06-24', '2021-06-24 23:09:26', '2021-06-24 23:09:26', NULL),
(219, '10', NULL, 24, 'Alfian', 'QA', '202106-039', '2021-06-24', '2021-06-24 23:10:25', '2021-06-24 23:10:25', NULL),
(220, '10', NULL, 25, 'Alfian', 'QA', '202106-039', '2021-06-24', '2021-06-24 23:10:51', '2021-06-24 23:10:51', NULL),
(221, '10', NULL, 24, 'Aditya', 'Inventory Management', '202106-040', '2021-06-24', '2021-06-24 23:11:47', '2021-06-24 23:11:47', NULL),
(222, '2', NULL, 26, 'Maryo', 'Marketing', '202106-041', '2021-06-24', '2021-06-24 23:12:52', '2021-06-24 23:12:52', NULL),
(223, '3', NULL, 27, 'Maryo', 'Marketing', '202106-041', '2021-06-24', '2021-06-24 23:13:17', '2021-06-24 23:13:17', NULL),
(225, '1', NULL, 7, 'Silvia', 'Marketing', '202106-042', '2021-06-04', '2021-07-26 20:35:00', '2021-07-26 20:35:00', NULL),
(226, '1', NULL, 32, 'Silvia', 'Marketing', '202106-043', '2021-06-30', '2021-07-26 20:36:47', '2021-07-26 20:36:47', NULL),
(227, '2', NULL, 1, 'Andiko', 'PPC & Delvcon', '202106-045', '2021-06-28', '2021-07-26 20:42:00', '2021-07-26 20:42:00', NULL),
(228, '2', NULL, 24, 'Maryo', 'Marketing', '202106-046', '2021-06-30', '2021-07-26 22:53:13', '2021-07-26 22:53:13', NULL),
(229, '3', NULL, 27, 'Maryo', 'Marketing', '202106-046', '2021-06-30', '2021-07-26 23:29:13', '2021-07-26 23:29:13', NULL),
(230, '1', NULL, 32, 'Riyo', 'Purchasing', '202106049', '2021-06-30', '2021-07-26 23:30:43', '2021-07-26 23:30:43', NULL),
(231, '1', NULL, 34, 'Riyo', 'Purchasing', '1', '2021-06-30', '2021-07-26 23:31:16', '2021-07-26 23:31:16', NULL),
(232, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202106-048', '2021-06-30', '2021-07-26 23:32:08', '2021-07-26 23:32:08', NULL),
(233, '1', NULL, 29, 'Iis', 'QHSE', '202107-001', '2021-07-05', '2021-07-26 23:34:53', '2021-07-26 23:34:53', NULL),
(234, '1', NULL, 31, 'Iis', 'QA', '202107-001', '2021-07-05', '2021-07-26 23:35:40', '2021-07-26 23:35:40', NULL),
(235, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202107-002', '2021-07-06', '2021-07-26 23:37:44', '2021-07-26 23:37:44', NULL),
(236, '2', NULL, 4, 'Anna', 'Accounting & Fin', '202107-002', '2021-07-06', '2021-07-26 23:38:52', '2021-07-26 23:38:52', NULL),
(237, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-003', '2021-07-06', '2021-07-26 23:40:06', '2021-07-26 23:40:06', NULL),
(238, '10', NULL, 24, 'alvian', 'QA', '202107-004', '2021-07-06', '2021-07-26 23:42:10', '2021-07-26 23:42:10', NULL),
(239, '10', NULL, 25, 'alvian', 'QA', '202107-004', '2021-07-06', '2021-07-26 23:42:48', '2021-07-26 23:42:48', NULL),
(240, '20', NULL, 25, 'Rikan', 'Inventory Management', '202107-005', '2021-07-07', '2021-07-26 23:44:03', '2021-07-26 23:44:03', NULL),
(241, '1', NULL, 16, 'Rikan', 'Inventory Management', '202107-005', '2021-07-07', '2021-07-26 23:44:53', '2021-07-26 23:44:53', NULL),
(242, '10', NULL, 24, 'Aditia', 'Inventory Management', '202107-006', '2021-07-07', '2021-07-26 23:48:55', '2021-07-26 23:48:55', NULL),
(243, '1', NULL, 7, 'Riska', 'Accounting & Fin', '202107-006', '2021-07-07', '2021-07-26 23:50:32', '2021-07-26 23:50:32', NULL),
(244, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-007', '2021-07-08', '2021-07-26 23:51:39', '2021-07-26 23:51:39', NULL),
(245, '10', NULL, 24, 'Taufik', 'PPC & Delvcon', '202107-008', '2021-07-08', '2021-07-26 23:55:10', '2021-07-26 23:55:10', NULL),
(246, '1', NULL, 7, 'Nanda', 'Marketing', '202107-009', '2021-07-09', '2021-07-26 23:56:22', '2021-07-26 23:56:22', NULL),
(247, '10', NULL, 24, 'Aditia', 'Inventory Management', '202107-010', '2021-07-11', '2021-07-26 23:57:52', '2021-07-26 23:57:52', NULL),
(248, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-011', '2021-07-12', '2021-07-26 23:59:15', '2021-07-26 23:59:15', NULL),
(249, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-012', '2021-07-13', '2021-07-27 00:00:15', '2021-07-27 00:00:15', NULL),
(250, '10', NULL, 24, 'amirudin', 'Production', '202107-013', '2021-07-13', '2021-07-27 00:02:46', '2021-07-27 00:02:46', NULL),
(251, '2', NULL, 1, 'Abdul', 'PPC & Delvcon', '202107-014', '2021-07-14', '2021-07-27 00:04:32', '2021-07-27 00:04:32', NULL),
(252, '1', NULL, 26, 'Rifal', 'Engineering', '202107-015', '2021-07-14', '2021-07-27 00:06:29', '2021-07-27 00:06:29', NULL),
(253, '3', NULL, 27, 'Rifal', 'Engineering', '202107-015', '2021-07-04', '2021-07-27 00:07:40', '2021-07-27 00:07:40', NULL),
(254, '10', NULL, 25, 'Pujianto', 'QA', '202107-016', '2021-07-15', '2021-07-27 00:09:06', '2021-07-27 00:09:06', NULL),
(255, '10', NULL, 24, 'Pujianto', 'QA', '202107-016', '2021-07-15', '2021-07-27 00:10:05', '2021-07-27 00:10:05', NULL),
(256, '10', NULL, 24, 'Aditia', 'Inventory Management', '202107-017', '2021-07-15', '2021-07-27 00:11:38', '2021-07-27 00:11:38', NULL),
(257, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202107-018', '2021-07-15', '2021-07-27 00:12:43', '2021-07-27 00:12:43', NULL),
(258, '1', NULL, 5, 'Yati', 'Accounting & Fin', '202107-020', '2021-07-15', '2021-07-27 00:26:22', '2021-07-27 00:26:22', NULL),
(259, '1', NULL, 16, 'Pudja', 'PPC & Delvcon', '202107-021', '2021-07-15', '2021-07-27 00:27:07', '2021-07-27 00:27:07', NULL),
(260, '1', NULL, 16, 'Dany', 'PPC & Delvcon', '202107-022', '2021-07-19', '2021-07-27 00:28:24', '2021-07-27 00:28:24', NULL),
(261, '10', NULL, 24, 'Ikhlas', 'QA', '202107-023', '2021-07-19', '2021-07-27 00:32:09', '2021-07-27 00:32:09', NULL),
(262, '1', NULL, 7, 'Silvia', 'Marketing', '202107-024', '2021-07-19', '2021-07-27 00:33:06', '2021-07-27 00:33:06', NULL),
(263, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-025', '2021-07-19', '2021-07-27 00:35:27', '2021-07-27 00:35:27', NULL),
(264, '10', NULL, 24, 'Aditya', 'PPC & Delvcon', '202107-026', '2021-07-21', '2021-07-27 00:36:12', '2021-07-27 00:36:12', NULL),
(265, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202107-027', '2021-07-21', '2021-07-27 00:37:16', '2021-07-27 00:37:16', NULL),
(266, '1', NULL, 34, 'Ayu', 'Accounting & Fin', '202107-028', '2021-07-21', '2021-07-27 00:40:47', '2021-07-27 00:40:47', NULL),
(267, '1', NULL, 16, 'Yudi', 'HRD', '202107-030', '2021-07-22', '2021-07-27 00:42:16', '2021-07-27 00:42:16', NULL),
(268, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-031', '2021-07-20', '2021-07-27 00:43:16', '2021-07-27 00:43:16', NULL),
(269, '1', NULL, 7, 'Maryono', 'QA', '202107-032', '2021-07-23', '2021-07-27 00:44:12', '2021-07-27 00:44:12', NULL),
(270, '1', NULL, 7, 'Nanda', 'Marketing', '202107-033', '2021-07-23', '2021-07-27 00:45:00', '2021-07-27 00:45:00', NULL),
(271, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-034', '2021-07-26', '2021-07-27 00:45:47', '2021-07-27 00:45:47', NULL),
(272, '10', NULL, 24, 'amirudin', 'Production', '202107-035', '2021-07-26', '2021-07-27 00:47:33', '2021-07-27 00:47:33', NULL),
(273, '1', NULL, 7, 'Yanti', 'Accounting & Fin', '202107-036', '2021-07-27', '2021-07-27 00:48:59', '2021-07-27 00:48:59', NULL),
(274, '2', NULL, 1, 'Abdul', 'PPC & Delvcon', '202107-036', '2021-07-27', '2021-07-27 00:54:16', '2021-07-27 00:54:16', NULL),
(275, '1', NULL, 7, 'Shinta', 'GA', '202107-037', '2021-07-27', '2021-07-27 00:55:25', '2021-07-27 00:55:25', NULL),
(276, '1', NULL, 1, 'Abdul', 'PPC & Delvcon', '202107-036', '2021-07-27', '2021-07-28 20:14:13', '2021-07-28 20:14:13', NULL),
(277, '10', NULL, 24, 'Narya', 'Inventory Management', '202107-043', '2021-07-29', '2021-07-29 17:31:45', '2021-07-29 17:31:45', NULL),
(278, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202107-044', '2021-07-30', '2021-07-29 18:03:25', '2021-07-29 18:03:25', NULL),
(279, '1', NULL, 7, 'Silvia', 'Marketing', '202107-45', '2021-07-30', '2021-07-29 23:45:53', '2021-07-29 23:45:53', NULL),
(280, '3', NULL, 24, 'Mulisin', 'Production', '202107-046', '2021-08-02', '2021-08-01 23:56:07', '2021-08-01 23:56:07', NULL),
(281, '15', NULL, 24, 'Rivan w.k', 'Inventory Management', '202107-047', '2021-08-02', '2021-08-01 23:57:19', '2021-08-01 23:57:19', NULL),
(282, '1', NULL, 16, 'Rivan w.k', 'Inventory Management', '202107-047', '2021-08-02', '2021-08-02 00:00:01', '2021-08-02 00:00:01', NULL),
(283, '1', NULL, 7, 'Joko', 'Accounting & Fin', '202107-048', '2021-08-03', '2021-08-02 18:16:13', '2021-08-02 18:16:13', NULL),
(284, '1', NULL, 16, 'Silvia', 'Marketing', '202107-049', '2021-08-03', '2021-08-02 20:31:50', '2021-08-02 20:31:50', NULL),
(285, '15', NULL, 24, 'Nimun', 'Production', '202108-001', '2021-08-04', '2021-08-03 20:13:53', '2021-08-03 20:13:53', NULL),
(286, '1', NULL, 16, 'Lina', 'HRD', '202108-002', '2021-08-04', '2021-08-03 20:15:24', '2021-08-03 20:15:24', NULL),
(287, '1', NULL, 27, 'Restu', 'PPC & Delvcon', '202108-003', '2021-08-04', '2021-08-09 20:18:40', '2021-08-09 20:18:40', NULL),
(288, '1', NULL, 7, 'Yati', 'Accounting & Fin', '202108-004', '2021-08-04', '2021-08-09 20:19:26', '2021-08-09 20:19:26', NULL),
(289, '1', NULL, 7, 'Nanda', 'Marketing', '202108-006', '2021-08-06', '2021-08-09 20:20:24', '2021-08-09 20:20:24', NULL),
(290, '1', NULL, 1, 'Endro', 'PPC & Delvcon', '202108-007', '2021-08-06', '2021-08-09 20:21:09', '2021-08-09 20:21:09', NULL),
(291, '10', NULL, 24, 'Edy', 'Production', '202108-008', '2021-08-09', '2021-08-09 20:22:01', '2021-08-09 20:22:01', NULL),
(292, '10', NULL, 24, 'Narya', 'Inventory Management', '202108-009', '2021-08-09', '2021-08-09 20:22:44', '2021-08-09 20:22:44', NULL),
(293, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-010', '2021-08-09', '2021-08-09 20:23:21', '2021-08-09 20:23:21', NULL),
(294, '2', NULL, 26, 'Widayat', 'PPC & Delvcon', '202108-002', '2021-08-03', '2021-08-16 00:27:08', '2021-08-16 00:27:08', NULL),
(295, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202108-003', '2021-08-16', '2021-08-16 00:34:52', '2021-08-16 00:34:52', NULL),
(296, '15', NULL, 24, 'Hafis', 'Inventory Management', '202108-004', '2021-08-16', '2021-08-16 00:35:44', '2021-08-16 00:35:44', NULL),
(297, '1', NULL, 3, 'Selvi yana', 'Accounting & Fin', '202108-005', '2021-08-13', '2021-08-16 00:37:27', '2021-08-16 00:37:27', NULL),
(298, '1', NULL, 16, 'Chandra', 'QA', '202108-006', '2021-08-12', '2021-08-16 00:39:16', '2021-08-16 00:39:16', NULL),
(299, '10', NULL, 24, 'Firmansyah', 'QA', '202108-007', '2021-08-13', '2021-08-16 00:42:24', '2021-08-16 00:42:24', NULL),
(300, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-008', '2021-08-13', '2021-08-16 00:45:05', '2021-08-16 00:45:05', NULL),
(301, '1', NULL, 7, 'Dewi', 'Production', '202108-009', '2021-08-13', '2021-08-16 00:47:31', '2021-08-16 00:47:31', NULL),
(302, '1', NULL, 7, 'Joko p', 'Accounting & Fin', '202108-010', '2021-08-12', '2021-08-16 00:48:26', '2021-08-16 00:48:26', NULL),
(303, '1', NULL, 1, 'Rifal', 'PPC & Delvcon', '202108-011', '2021-08-10', '2021-08-16 00:49:24', '2021-08-16 00:49:24', NULL),
(304, '10', NULL, 24, 'Adit', 'Inventory Management', '202107-049', '2021-08-03', '2021-08-16 01:11:34', '2021-08-16 01:11:34', NULL),
(305, '1', NULL, 16, 'Silvia', 'Marketing', '202107-049', '2021-08-09', '2021-08-16 01:14:07', '2021-08-16 01:14:07', NULL),
(306, '1', NULL, 7, 'Joko p', 'Accounting & Fin', '202107-048', '2021-08-03', '2021-08-16 01:15:46', '2021-08-16 01:15:46', NULL),
(307, '3', NULL, 26, 'Mulisin', 'Production', '202107-046', '2021-08-02', '2021-08-16 01:17:09', '2021-08-16 01:17:09', NULL),
(308, '1', NULL, 7, 'Nanda', 'Marketing', '202108-022', '2021-08-19', '2021-08-23 01:23:02', '2021-08-23 01:23:02', NULL),
(309, '10', NULL, 24, 'Rikan', 'Inventory Management', '202108-021', '2021-08-20', '2021-08-23 01:24:08', '2021-08-23 01:24:08', NULL),
(310, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-020', '2021-08-23', '2021-08-23 01:25:06', '2021-08-23 01:25:06', NULL),
(311, '15', NULL, 24, 'Narya', 'Inventory Management', '202108-019', '2021-08-23', '2021-08-23 01:26:57', '2021-08-23 01:26:57', NULL),
(312, '1', NULL, 32, 'Adang', 'Engineering', '202108-018', '2021-08-20', '2021-08-23 01:28:36', '2021-08-23 01:28:36', NULL),
(313, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202108-017', '2021-08-20', '2021-08-23 01:30:04', '2021-08-23 01:30:04', NULL),
(314, '1', NULL, 7, 'Dewi', 'Production', '202108-016', '2021-08-23', '2021-08-23 01:33:18', '2021-08-23 01:33:18', NULL),
(315, '1', NULL, 16, 'Adika', 'Production', '202108-015', '2021-08-23', '2021-08-23 01:34:59', '2021-08-23 01:34:59', NULL),
(316, '1', NULL, 17, 'Adika', 'Production', '202108-015', '2021-08-23', '2021-08-23 01:35:57', '2021-08-23 01:35:57', NULL),
(317, '10', NULL, 24, 'Ade', 'QA', '202108-014', '2021-08-19', '2021-08-23 01:36:44', '2021-08-23 01:36:44', NULL),
(318, '10', NULL, 25, 'Ade s', 'QA', '202108-014', '2021-08-19', '2021-08-23 01:39:29', '2021-08-23 01:39:29', NULL),
(319, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-013', '2021-08-19', '2021-08-23 01:40:38', '2021-08-23 01:40:38', NULL),
(320, '1', NULL, 16, 'Maryo', 'Marketing', '202108-012', '2021-08-19', '2021-08-23 01:47:52', '2021-08-23 01:47:52', NULL),
(321, '1', NULL, 13, 'Maryo', 'Marketing', '202108-012', '2021-08-19', '2021-08-23 01:49:00', '2021-08-23 01:49:00', NULL),
(322, '1', NULL, 15, 'Maryo', 'Marketing', '202108-012', '2021-08-19', '2021-08-23 01:50:54', '2021-08-23 01:50:54', NULL),
(323, '1', NULL, 11, 'Maryo', 'Marketing', '202108-012', '2021-08-19', '2021-08-23 01:51:33', '2021-08-23 01:51:33', NULL),
(324, '1', NULL, 1, 'Endro', 'PPC & Delvcon', '202108-029', '2021-08-20', '2021-08-25 17:38:07', '2021-08-25 17:38:07', NULL),
(325, '10', NULL, 24, 'Sudirman', 'QA', '202108-028', '2021-08-25', '2021-08-25 17:51:34', '2021-08-25 17:51:34', NULL),
(326, '1', NULL, 28, 'iis', 'QHSE', '202108-027', '2021-08-24', '2021-08-25 18:13:45', '2021-08-25 18:13:45', NULL),
(327, '1', NULL, 34, 'Achmad Fauzan', 'Production', '202108-026', '2021-08-24', '2021-08-25 18:15:14', '2021-08-25 18:15:14', NULL),
(328, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-024', '2021-08-24', '2021-08-25 22:40:17', '2021-08-25 22:40:17', NULL),
(329, '1', NULL, 32, 'Amin', 'Production', '202108-030', '2021-08-24', '2021-08-25 22:44:59', '2021-08-25 22:44:59', NULL),
(330, '1', NULL, 16, 'Firmansyah', 'QA', '202108-031', '2021-08-26', '2021-08-26 00:30:02', '2021-08-26 00:30:02', NULL),
(331, '1', NULL, 5, 'Ilham', 'Purchasing', '202108-031', '2021-08-26', '2021-08-26 00:30:49', '2021-08-26 00:30:49', NULL),
(332, '1', NULL, 7, 'Nanda', 'Marketing', '202108-032', '2021-08-26', '2021-08-26 00:32:29', '2021-08-26 00:32:29', NULL),
(333, '1', NULL, 7, 'Amin', 'Production', '202108-025', '2021-08-25', '2021-08-26 00:37:43', '2021-08-26 00:37:43', NULL),
(334, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-023', '2021-08-25', '2021-08-26 00:41:50', '2021-08-26 00:41:50', NULL),
(335, '1', NULL, 26, 'Rifal', 'PPC & Delvcon', '202108-033', '2021-08-27', '2021-08-26 20:25:11', '2021-08-26 20:25:11', NULL),
(336, '1', NULL, 26, 'Rifal', 'PPC & Delvcon', '202108-033', '2021-08-27', '2021-08-30 20:01:04', '2021-08-30 20:01:04', NULL),
(337, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202108-035', '2021-08-31', '2021-08-30 20:52:49', '2021-08-30 20:52:49', NULL),
(338, '1', NULL, 32, 'Andri', 'Engineering', '202109-004', '2021-09-01', '2021-09-01 19:16:09', '2021-09-01 19:16:09', NULL),
(339, '1', NULL, 7, 'Ayu', 'Accounting & Fin', '202109-003', '2021-09-02', '2021-09-01 19:40:58', '2021-09-01 19:40:58', NULL),
(340, '10', NULL, 24, 'Ade s', 'QA', '202109-002', '2021-09-01', '2021-09-01 19:42:48', '2021-09-01 19:42:48', NULL),
(341, '12', NULL, 24, 'Nimu', 'Production', '202109-001', '2021-09-01', '2021-09-01 19:48:10', '2021-09-01 19:48:10', NULL),
(342, '1', NULL, 2, 'Hadi', 'Production', '202109-005', '2021-09-03', '2021-09-05 17:52:30', '2021-09-05 17:52:30', NULL),
(343, '15', NULL, 24, 'Rikan', 'Production', '202109-006', '2021-09-03', '2021-09-05 17:53:28', '2021-09-05 17:53:28', NULL),
(344, '1', NULL, 7, 'Rianti', 'Accounting & Fin', '202109-007', '2021-09-03', '2021-09-05 17:55:19', '2021-09-05 17:55:19', NULL),
(345, '10', NULL, 25, 'Alfi', 'QA', '202109-008', '2021-09-03', '2021-09-05 17:56:00', '2021-09-05 17:56:00', NULL),
(346, '1', NULL, 32, 'Agung P', 'Accounting & Fin', '202109-010', '2021-09-06', '2021-09-07 23:00:54', '2021-09-07 23:00:54', NULL),
(347, '1', NULL, 1, 'Maryo', 'Marketing', '202109-011', '2021-09-02', '2021-09-07 23:02:34', '2021-09-07 23:02:34', NULL),
(348, '1', NULL, 26, '1', 'Marketing', '202109-012', '2021-09-06', '2021-09-07 23:03:51', '2021-09-07 23:03:51', NULL),
(349, '2', NULL, 27, 'Maryo', 'Marketing', '202109-012', '2021-09-06', '2021-09-07 23:07:24', '2021-09-07 23:07:24', NULL),
(350, '10', NULL, 24, 'Narya', 'Inventory Management', '202109-013', '2021-09-03', '2021-09-07 23:08:24', '2021-09-07 23:08:24', NULL),
(351, '15', NULL, 26, 'Edy', 'Production', '202109-014', '2021-09-06', '2021-09-07 23:09:31', '2021-09-07 23:09:31', NULL),
(352, '1', NULL, 7, 'Silvia w', 'Marketing', '202109-020', '2021-09-07', '2021-09-07 23:10:38', '2021-09-07 23:10:38', NULL),
(353, '1', NULL, 16, 'Harsono', 'QA', '202109-019', '2021-09-07', '2021-09-07 23:13:54', '2021-09-07 23:13:54', NULL),
(354, '1', NULL, 32, 'Amin', 'Production', '202109-018', '2021-09-07', '2021-09-07 23:23:49', '2021-09-07 23:23:49', NULL),
(355, '10', NULL, 24, 'Firmansyah', 'QA', '202109-017', '2021-09-07', '2021-09-07 23:26:14', '2021-09-07 23:26:14', NULL),
(356, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202109-016', '2021-09-08', '2021-09-07 23:28:57', '2021-09-07 23:28:57', NULL),
(357, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202109-015', '2021-09-07', '2021-09-07 23:30:24', '2021-09-07 23:30:24', NULL),
(358, '1', NULL, 1, 'Maryo', 'Marketing', '202109-020', '2021-09-08', '2021-09-08 17:54:49', '2021-09-08 17:54:49', NULL),
(359, '2', NULL, 26, 'Maryo', 'Marketing', '202109-020', '2021-09-08', '2021-09-08 18:19:59', '2021-09-08 18:19:59', NULL),
(360, '3', NULL, 27, 'Maryo', 'Marketing', '202109-020', '2021-09-08', '2021-09-08 18:20:37', '2021-09-08 18:20:37', NULL),
(361, '10', NULL, 25, 'Puji', 'QA', '202109-022', '2021-09-08', '2021-09-08 18:24:44', '2021-09-08 18:24:44', NULL),
(362, '6', NULL, 24, 'Yadi', 'Inventory Management', '202109-023', '2021-09-08', '2021-09-08 18:26:04', '2021-09-08 18:26:04', NULL),
(363, '1', NULL, 7, 'Joko p', 'Accounting & Fin', '202109-024', '2021-09-09', '2021-09-08 22:36:04', '2021-09-08 22:36:04', NULL),
(364, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202109-025', '2021-09-09', '2021-09-08 22:38:53', '2021-09-08 22:38:53', NULL),
(365, '10', NULL, 24, 'Amirudin', 'Production', '202109-026', '2021-09-09', '2021-09-08 22:41:34', '2021-09-08 22:41:34', NULL),
(366, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202109-027', '2021-09-10', '2021-09-12 18:12:34', '2021-09-12 18:12:34', NULL),
(367, '1', NULL, 7, 'Yanti', 'Accounting & Fin', '202109-028', '2021-09-13', '2021-09-12 18:13:51', '2021-09-12 18:13:51', NULL),
(368, '1', NULL, 34, 'Septi Riyani', 'Inventory Management', '202109-029', '2021-09-13', '2021-09-12 18:14:44', '2021-09-12 18:14:44', NULL),
(369, '15', NULL, 24, 'Narya', 'Inventory Management', '202109-030', '2021-09-10', '2021-09-12 18:15:35', '2021-09-12 18:15:35', NULL),
(370, '8', NULL, 1, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:00:39', '2021-09-16 19:00:39', NULL),
(371, '14', NULL, 2, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:01:02', '2021-09-16 19:01:02', NULL),
(372, '6', NULL, 5, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:02:09', '2021-09-16 19:02:09', NULL),
(373, '2', NULL, 6, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:02:40', '2021-09-16 19:02:40', NULL),
(374, '9', NULL, 7, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:03:19', '2021-09-16 19:03:19', NULL),
(375, '1', NULL, 8, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:04:36', '2021-09-16 19:04:36', NULL),
(376, '1', NULL, 9, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:06:53', '2021-09-16 19:06:53', NULL),
(377, '2', NULL, 10, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:09:26', '2021-09-16 19:09:26', NULL),
(378, '2', NULL, 12, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:17:57', '2021-09-16 19:17:57', NULL),
(379, '1', NULL, 13, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:18:24', '2021-09-16 19:18:24', NULL),
(380, '3', NULL, 14, 'Fathur', 'Accounting & Fin', 'Stok Opname', '2021-09-17', '2021-09-16 19:18:53', '2021-09-16 19:18:53', NULL),
(381, '5', NULL, 16, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:19:45', '2021-09-16 19:19:45', NULL),
(382, '1', NULL, 17, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:20:09', '2021-09-16 19:20:09', NULL),
(384, '1', NULL, 17, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:22:21', '2021-09-16 19:22:21', NULL),
(385, '5', NULL, 18, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:22:48', '2021-09-16 19:22:48', NULL),
(386, '4', NULL, 19, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:23:17', '2021-09-16 19:23:17', NULL),
(387, '2', NULL, 20, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 19:25:01', '2021-09-16 19:25:01', NULL),
(389, '3', NULL, 35, 'Fathur', 'IT', 'Stok Opname', '2021-09-17', '2021-09-16 20:00:10', '2021-09-16 20:00:10', NULL),
(390, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202109-031', '2021-09-17', '2021-09-16 20:05:00', '2021-09-16 20:05:00', NULL),
(391, '1', NULL, 7, 'Nanda', 'Marketing', '202109-032', '2021-09-23', '2021-09-23 23:46:08', '2021-09-23 23:46:08', NULL),
(392, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202109-034', '2021-09-22', '2021-09-24 01:17:49', '2021-09-24 01:17:49', NULL),
(393, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202109-035', '2021-09-22', '2021-09-24 01:19:55', '2021-09-24 01:19:55', NULL),
(394, '2', NULL, 26, 'Maryo', 'Marketing', '202109-036', '2021-09-21', '2021-09-24 01:22:26', '2021-09-24 01:22:26', NULL),
(395, '1', NULL, 16, 'Ikhlas', 'QA', '202109-037', '2021-09-22', '2021-09-24 01:23:53', '2021-09-24 01:23:53', NULL),
(396, '1', NULL, 33, 'Dwi', 'Production', '202109-038', '2021-09-22', '2021-09-24 01:24:51', '2021-09-24 01:24:51', NULL),
(397, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202109-039', '2021-09-23', '2021-09-24 01:27:58', '2021-09-24 01:27:58', NULL),
(398, '15', NULL, 24, 'Narya', 'Inventory Management', '202109-040', '2021-09-21', '2021-09-24 01:29:57', '2021-09-24 01:29:57', NULL),
(399, '1', NULL, 16, 'Nugraha', 'Accounting & Fin', '202109-041', '2021-09-20', '2021-09-28 23:09:41', '2021-09-28 23:09:41', NULL),
(400, '1', NULL, 32, 'Dewi', 'Production', '202109-042', '2021-09-20', '2021-09-28 23:11:16', '2021-09-28 23:11:16', NULL),
(401, '1', NULL, 7, 'Jaenal', 'GA', '202109-043', '2021-09-17', '2021-09-28 23:12:00', '2021-09-28 23:12:00', NULL),
(402, '10', NULL, 24, 'Firmansyah', 'QA', '202109-044', '2021-09-20', '2021-09-28 23:15:08', '2021-09-28 23:15:08', NULL),
(403, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202109-045', '2021-09-17', '2021-09-28 23:24:57', '2021-09-28 23:24:57', NULL),
(404, '10', NULL, 25, 'Pujianto', 'Production', '202109-046', '2021-09-20', '2021-09-28 23:25:55', '2021-09-28 23:25:55', NULL),
(405, '10', NULL, 24, 'Firmansyah', 'QA', '202109-047', '2021-09-24', '2021-09-28 23:26:50', '2021-09-28 23:26:50', NULL),
(406, '2', NULL, 26, 'Maryo', 'Marketing', '202109-048', '2021-09-24', '2021-09-28 23:31:22', '2021-09-28 23:31:22', NULL),
(407, '2', NULL, 27, 'Maryo', 'Marketing', '202109-048', '2021-09-24', '2021-09-28 23:32:34', '2021-09-28 23:32:34', NULL),
(408, '1', NULL, 1, 'Maryo', 'Marketing', '202109-048', '2021-09-24', '2021-09-28 23:33:16', '2021-09-28 23:33:16', NULL),
(409, '10', NULL, 24, 'Amirudin', 'Production', '202109-049', '2021-09-24', '2021-09-28 23:35:06', '2021-09-28 23:35:06', NULL),
(410, '15', NULL, 24, 'Aditya', 'Production', '202109-050', '2021-09-27', '2021-09-28 23:41:05', '2021-09-28 23:41:05', NULL),
(411, '1', NULL, 34, 'Yati', 'Accounting & Fin', '202109-051', '2021-09-29', '2021-09-28 23:42:03', '2021-09-28 23:42:03', NULL),
(412, '1', NULL, 32, 'Agus', 'Engineering', '202109-052', '2021-09-29', '2021-09-28 23:42:47', '2021-09-28 23:42:47', NULL),
(413, '1', NULL, 34, 'Zaenal', 'Accounting & Fin', '202109-060', '2021-09-30', '2021-09-30 01:18:24', '2021-09-30 01:18:24', NULL);
INSERT INTO `stok_out` (`id`, `jumlah`, `barang_name`, `barang_id`, `name`, `section`, `no_perm`, `date`, `created_at`, `updated_at`, `input_by`) VALUES
(414, '15', NULL, 24, 'Aditia', 'Production', '202109-059', '2021-09-30', '2021-09-30 01:21:37', '2021-09-30 01:21:37', NULL),
(415, '10', NULL, 24, 'Alfi', 'QA', '202109-058', '2021-09-30', '2021-09-30 01:28:44', '2021-09-30 01:28:44', NULL),
(416, '10', NULL, 25, 'Alfi', 'QA', '202109-058', '2021-09-30', '2021-09-30 01:29:18', '2021-09-30 01:29:18', NULL),
(417, '10', NULL, 24, 'Nimin', 'Production', '202109-057', '2021-09-29', '2021-09-30 01:30:56', '2021-09-30 01:30:56', NULL),
(418, '10', NULL, 24, 'Ade s', 'QA', '202109-056', '2021-09-29', '2021-09-30 17:25:11', '2021-09-30 17:25:11', NULL),
(419, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202109-054', '2021-10-29', '2021-09-30 17:27:05', '2021-09-30 17:27:05', NULL),
(420, '1', NULL, 34, 'Yati', 'Accounting & Fin', '202109-051', '2021-09-29', '2021-09-30 17:28:06', '2021-09-30 17:28:06', NULL),
(421, '1', NULL, 32, 'Agus N', 'Engineering', '202109-052', '2021-09-29', '2021-09-30 17:29:07', '2021-09-30 17:29:07', NULL),
(422, '1', NULL, 7, 'Nanda', 'Marketing', '202109-053', '2021-10-29', '2021-09-30 17:30:40', '2021-09-30 17:30:40', NULL),
(423, '1', NULL, 34, 'Fathur', 'IT', '202109-054', '2021-09-30', '2021-09-30 17:32:17', '2021-09-30 17:32:17', NULL),
(424, '1', NULL, 12, 'Fathur', 'IT', '202109-054', '2021-10-30', '2021-09-30 17:34:53', '2021-09-30 17:34:53', NULL),
(425, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202109-058', '2021-10-01', '2021-10-03 17:26:22', '2021-10-03 17:26:22', NULL),
(426, '1', NULL, 19, 'Yunie', 'Production', '202109-057', '2021-10-01', '2021-10-03 17:27:12', '2021-10-03 17:27:12', NULL),
(427, '5', NULL, 24, 'Sukardi', 'Production', '202109-056', '2021-10-01', '2021-10-03 17:28:02', '2021-10-03 17:28:02', NULL),
(428, '20', NULL, 24, 'Rikan', 'Inventory Management', '202109-055', '2021-10-01', '2021-10-03 17:28:45', '2021-10-03 17:28:45', NULL),
(429, '1', NULL, 7, 'Agung P', 'Accounting & Fin', '202109-061', '2021-10-04', '2021-10-03 20:47:18', '2021-10-03 20:47:18', NULL),
(430, '1', NULL, 7, 'Silvia', 'Marketing', '202109-059', '2021-10-04', '2021-10-03 20:48:25', '2021-10-03 20:48:25', NULL),
(431, '1', NULL, 16, 'Silvia', 'Marketing', '202109-059', '2021-10-04', '2021-10-03 20:49:06', '2021-10-03 20:49:06', NULL),
(432, '1', NULL, 19, 'Silvia', 'Marketing', '202109-059', '2021-10-04', '2021-10-03 20:50:29', '2021-10-03 20:50:29', NULL),
(433, '1', NULL, 22, 'Silvia', 'Marketing', '202109-059', '2021-10-04', '2021-10-03 21:11:40', '2021-10-03 21:11:40', NULL),
(434, '1', NULL, 21, 'Silvia', 'Marketing', '202109-059', '2021-10-04', '2021-10-03 21:13:00', '2021-10-03 21:13:00', NULL),
(435, '1', NULL, 28, 'iis', 'QHSE', '202109-062', '2021-10-04', '2021-10-03 21:13:54', '2021-10-03 21:13:54', NULL),
(436, '1', NULL, 18, 'iis', 'QHSE', '202109-062', '2021-10-04', '2021-10-03 21:15:09', '2021-10-03 21:15:09', NULL),
(437, '1', NULL, 7, 'Riska', 'Accounting & Fin', '202109-063', '2021-10-04', '2021-10-04 00:40:34', '2021-10-04 00:40:34', NULL),
(438, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202110-001', '2021-10-05', '2021-10-06 00:43:06', '2021-10-06 00:43:06', NULL),
(439, '1', NULL, 32, 'Eko H', 'PPC & Delvcon', '202110-002', '2021-10-05', '2021-10-06 00:57:26', '2021-10-06 00:57:26', NULL),
(440, '10', NULL, 24, 'Amirudin', 'Production', '202110-003', '2021-10-05', '2021-10-06 00:59:09', '2021-10-06 00:59:09', NULL),
(441, '1', NULL, 32, 'Ilham', 'Purchasing', '202110-004', '2021-10-06', '2021-10-06 01:01:12', '2021-10-06 01:01:12', NULL),
(442, '1', NULL, 5, 'Riah', 'Purchasing', '202110-005', '2021-10-06', '2021-10-06 01:24:00', '2021-10-06 01:24:00', NULL),
(443, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-006', '2021-10-06', '2021-10-06 01:26:48', '2021-10-06 01:26:48', NULL),
(444, '1', NULL, 34, 'Selvi yana', 'Accounting & Fin', '202110-007', '2021-10-06', '2021-10-06 01:36:39', '2021-10-06 01:36:39', NULL),
(445, '1', NULL, 16, 'Fauzab', 'Production', '202110-008', '2021-10-07', '2021-10-07 21:00:35', '2021-10-07 21:00:35', NULL),
(446, '1', NULL, 16, 'Adika', 'Inventory Management', '202110-009', '2021-10-07', '2021-10-07 21:02:09', '2021-10-07 21:02:09', NULL),
(447, '1', NULL, 7, 'Nanda', 'Marketing', '202110-010', '2021-10-08', '2021-10-07 21:23:53', '2021-10-07 21:23:53', NULL),
(448, '10', NULL, 24, 'Narya', 'Inventory Management', '202110-011', '2021-10-08', '2021-10-07 21:24:40', '2021-10-07 21:24:40', NULL),
(449, '10', NULL, 25, 'Puji', 'QA', '202110-013', '2021-10-08', '2021-10-10 17:39:33', '2021-10-10 17:39:33', NULL),
(450, '2', NULL, 26, 'Maryo', 'Marketing', '202110-012', '2021-10-08', '2021-10-10 17:40:53', '2021-10-10 17:40:53', NULL),
(451, '2', NULL, 27, '2', 'Marketing', '202110-012', '2021-10-08', '2021-10-10 17:42:25', '2021-10-10 17:42:25', NULL),
(452, '20', NULL, 24, 'Fathur', 'IT', 'Stock Opname', '2021-10-13', '2021-10-12 17:11:53', '2021-10-12 17:11:53', NULL),
(453, '1', NULL, 7, 'Selvi', 'Accounting & Fin', '202110-026', '2021-10-11', '2021-10-14 23:08:09', '2021-10-14 23:08:09', NULL),
(454, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-025', '2021-10-14', '2021-10-14 23:09:03', '2021-10-14 23:09:03', NULL),
(455, '10', NULL, 24, 'Eko p', 'Production', '202110-024', '2021-10-13', '2021-10-14 23:10:10', '2021-10-14 23:10:10', NULL),
(456, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-023', '2021-10-11', '2021-10-14 23:11:00', '2021-10-14 23:11:00', NULL),
(457, '1', NULL, 7, 'Selvi', 'Accounting & Fin', '202110-022', '2021-10-12', '2021-10-14 23:12:32', '2021-10-14 23:12:32', NULL),
(458, '1', NULL, 27, 'Indro', 'PPC & Delvcon', '202110-021', '2021-10-12', '2021-10-14 23:14:15', '2021-10-14 23:14:15', NULL),
(459, '10', NULL, 24, 'Aji', 'Inventory Management', '202110-020', '2021-10-13', '2021-10-14 23:17:21', '2021-10-14 23:17:21', NULL),
(460, '1', NULL, 32, 'Zainal Ahmad', 'Engineering', '202110-019', '2021-10-13', '2021-10-14 23:20:01', '2021-10-14 23:20:01', NULL),
(461, '1', NULL, 34, 'Zainal ahmad', 'Engineering', '202110-019', '2021-10-13', '2021-10-14 23:21:48', '2021-10-14 23:21:48', NULL),
(462, '1', NULL, 15, 'Hanif', 'IT', '202110-018', '2021-10-12', '2021-10-14 23:36:24', '2021-10-14 23:36:24', NULL),
(463, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-017', '2021-10-12', '2021-10-14 23:52:39', '2021-10-14 23:52:39', NULL),
(464, '1', NULL, 7, 'Nanda', 'Marketing', '202110-016', '2021-10-12', '2021-10-14 23:53:32', '2021-10-14 23:53:32', NULL),
(465, '1', NULL, 7, 'Ikhlas', 'Production', '202110-015', '2021-10-15', '2021-10-14 23:56:44', '2021-10-14 23:56:44', NULL),
(466, '20', NULL, 24, 'Yadi', 'PPC & Delvcon', '202110-014', '2021-10-15', '2021-10-14 23:57:54', '2021-10-14 23:57:54', NULL),
(467, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-027', '2021-10-15', '2021-10-15 00:05:36', '2021-10-15 00:05:36', NULL),
(468, '1', NULL, 1, 'Hadi', 'PPC & Delvcon', '202110-027', '2021-10-15', '2021-10-15 00:06:01', '2021-10-15 00:06:01', NULL),
(469, '15', NULL, 24, 'Rikan', 'Inventory Management', '202110-028', '2021-10-18', '2021-10-17 18:55:07', '2021-10-17 18:55:07', NULL),
(470, '1', NULL, 7, 'Yati', 'Accounting & Fin', '202110-029', '2021-10-18', '2021-10-17 20:00:33', '2021-10-17 20:00:33', NULL),
(471, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202110-032', '2021-10-19', '2021-10-21 01:17:11', '2021-10-21 01:17:11', NULL),
(472, '1', NULL, 7, 'Indah', 'Accounting & Fin', '202110-033', '2021-10-19', '2021-10-21 17:20:47', '2021-10-21 17:20:47', NULL),
(473, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202110-038', '2021-10-21', '2021-10-21 17:52:17', '2021-10-21 17:52:17', NULL),
(474, '10', NULL, 24, 'Amirudin', 'Production', '202110-039', '2021-10-19', '2021-10-21 17:53:52', '2021-10-21 17:53:52', NULL),
(475, '10', NULL, 25, 'Pujianto', 'QA', '202110-040', '2021-10-15', '2021-10-21 17:56:16', '2021-10-21 17:56:16', NULL),
(476, '10', NULL, 26, 'Edy', 'Production', '202110-037', '2021-10-21', '2021-10-21 17:57:21', '2021-10-21 17:57:21', NULL),
(477, '10', NULL, 24, 'Firmansyah', 'QA', '202110-036', '2021-10-18', '2021-10-21 17:58:06', '2021-10-21 17:58:06', NULL),
(478, '1', NULL, 33, 'Fathur', 'IT', '202110-035', '2021-10-19', '2021-10-21 17:59:16', '2021-10-21 17:59:16', NULL),
(479, '3', NULL, 26, 'Maryo', 'Marketing', '202110-034', '2021-10-21', '2021-10-21 18:00:23', '2021-10-21 18:00:23', NULL),
(480, '5', NULL, 27, 'Maryo', 'Marketing', '202110-034', '2021-10-21', '2021-10-21 18:01:05', '2021-10-21 18:01:05', NULL),
(481, '1', NULL, 16, 'Rusmono', 'Production', '202110-031', '2021-10-19', '2021-10-21 18:06:42', '2021-10-21 18:06:42', NULL),
(482, '1', NULL, 16, 'Chandra', 'QA', '202110-030', '2021-10-19', '2021-10-21 18:08:57', '2021-10-21 18:08:57', NULL),
(483, '1', NULL, 19, 'Chandra', 'QA', '202110-030', '2021-10-19', '2021-10-21 18:10:15', '2021-10-21 18:10:15', NULL),
(484, '1', NULL, 7, 'Afifah', 'Accounting & Fin', '202110-041', '2021-10-21', '2021-10-25 18:01:53', '2021-10-25 18:01:53', NULL),
(485, '1', NULL, 16, 'Lisdyah', 'Accounting & Fin', '202110-042', '2021-10-21', '2021-10-25 18:08:10', '2021-10-25 18:08:10', NULL),
(486, '10', NULL, 24, 'Firmansyah', 'QA', '20211-044', '2021-10-22', '2021-10-25 18:09:14', '2021-10-25 18:09:14', NULL),
(487, '1', NULL, 32, 'Muhorodin', 'Marketing', '20211-048', '2021-10-25', '2021-10-25 18:17:31', '2021-10-25 18:17:31', NULL),
(488, '10', NULL, 24, 'Narya', 'Inventory Management', '20211-047', '2021-10-22', '2021-10-25 18:26:43', '2021-10-25 18:26:43', NULL),
(489, '10', NULL, 24, 'Narya', 'Inventory Management', '20211-047', '2021-10-22', '2021-10-25 19:01:40', '2021-10-25 19:01:40', NULL),
(490, '1', NULL, 7, 'Nanda', 'Marketing', '20211-046', '2021-10-25', '2021-10-25 19:05:09', '2021-10-25 19:05:09', NULL),
(491, '2', NULL, 2, 'Hadi', 'PPC & Delvcon', '20211-045', '2021-10-25', '2021-10-25 19:06:10', '2021-10-25 19:06:10', NULL),
(492, '10', NULL, 24, 'Yadi', 'Production', '20211-043', '2021-10-25', '2021-10-25 19:13:15', '2021-10-25 19:13:15', NULL),
(493, '1', NULL, 5, 'Ilham', 'Purchasing', '202110-052', '2021-10-26', '2021-10-26 20:24:37', '2021-10-26 20:24:37', NULL),
(494, '1', NULL, 35, 'Amin', 'Production', '202110-051', '2021-10-26', '2021-10-26 20:27:54', '2021-10-26 20:27:54', NULL),
(495, '1', NULL, 7, 'Nanda', 'Marketing', '202110-050', '2021-10-26', '2021-10-26 20:31:14', '2021-10-26 20:31:14', NULL),
(496, '1', NULL, 29, 'iis', 'QHSE', '202110-049', '2021-10-27', '2021-10-26 20:32:29', '2021-10-26 20:32:29', NULL),
(497, '1', NULL, 11, 'iis', 'QHSE', '202110-049', '2021-10-27', '2021-10-26 20:33:50', '2021-10-26 20:33:50', NULL),
(498, '2', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202110-055', '2021-10-29', '2021-10-29 01:01:03', '2021-10-29 01:01:03', NULL),
(499, '1', NULL, 7, 'Nanda', 'Marketing', '202110-054', '2021-10-28', '2021-10-29 01:02:18', '2021-10-29 01:02:18', NULL),
(500, '15', NULL, 24, 'Rikan', 'Inventory Management', '202110-053', '2021-10-29', '2021-10-29 01:05:06', '2021-10-29 01:05:06', NULL),
(501, '2', NULL, 32, 'Rikan', 'Inventory Management', '202110-053', '2021-10-29', '2021-10-29 01:05:45', '2021-10-29 01:05:45', NULL),
(502, '10', NULL, 24, 'Ikhlas', 'QA', '202110-056', '2021-10-29', '2021-10-29 01:10:04', '2021-10-29 01:10:04', NULL),
(503, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202111-001', '2021-11-01', '2021-10-31 18:16:34', '2021-10-31 18:16:34', NULL),
(504, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202111-001', '2021-11-01', '2021-10-31 18:17:48', '2021-10-31 18:17:48', NULL),
(505, '15', NULL, 24, 'Nimin', 'Production', '202110-057', '2021-10-27', '2021-10-31 18:26:03', '2021-10-31 18:26:03', NULL),
(506, '5', NULL, 25, 'rubadi', 'QA', '202110-058', '2021-10-27', '2021-10-31 18:29:50', '2021-10-31 18:29:50', NULL),
(507, '1', NULL, 32, 'darmanyah', 'Production', '202111-002', '2021-11-02', '2021-11-01 20:01:49', '2021-11-01 20:01:49', NULL),
(508, '15', NULL, 24, 'narya', 'Production', '202111-003', '2021-11-02', '2021-11-01 20:06:20', '2021-11-01 20:06:20', NULL),
(509, '1', NULL, 7, 'riska y.w', 'Accounting & Fin', '202111-004', '2021-11-02', '2021-11-01 20:15:47', '2021-11-01 20:15:47', NULL),
(510, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202111-005', '2021-11-04', '2021-11-03 20:59:59', '2021-11-03 20:59:59', NULL),
(511, '1', NULL, 7, 'Nanda', 'Marketing', '202111-006', '2021-11-04', '2021-11-03 21:01:15', '2021-11-03 21:01:15', NULL),
(512, '1', NULL, 1, 'Rifal', 'PPC & Delvcon', '202111-007', '2021-11-03', '2021-11-03 21:16:18', '2021-11-03 21:16:18', NULL),
(513, '1', NULL, 26, 'Rifal', 'PPC & Delvcon', '202111-007', '2021-11-03', '2021-11-03 21:17:24', '2021-11-03 21:17:24', NULL),
(514, '2', NULL, 27, 'Rifal', 'PPC & Delvcon', '202111-007', '2021-11-03', '2021-11-03 21:17:51', '2021-11-03 21:17:51', NULL),
(515, '2', NULL, 1, 'Abdul roup', 'PPC & Delvcon', '202111-008', '2021-11-03', '2021-11-03 21:19:41', '2021-11-03 21:19:41', NULL),
(516, '1', NULL, 16, 'Firmansyah', 'QA', '202111-009', '2021-11-02', '2021-11-03 21:21:25', '2021-11-03 21:21:25', NULL),
(517, '10', NULL, 24, 'Firmansyah', 'QA', '202111-009', '2021-11-02', '2021-11-03 21:24:14', '2021-11-03 21:24:14', NULL),
(518, '10', NULL, 24, 'yadim', 'Production', '202111-010', '2021-11-08', '2021-11-08 18:46:00', '2021-11-08 18:46:00', NULL),
(519, '1', NULL, 7, 'jaenal', 'GA', '202111-015', '2021-11-05', '2021-11-08 18:52:46', '2021-11-08 18:52:46', NULL),
(520, '1', NULL, 7, 'nanda', 'Marketing', '202111-011', '2021-11-08', '2021-11-08 18:56:25', '2021-11-08 18:56:25', NULL),
(521, '1', NULL, 16, 'andi', 'Engineering', '202111-012', '2021-11-08', '2021-11-08 19:04:33', '2021-11-08 19:04:33', NULL),
(522, '10', NULL, 25, 'purhanto', 'GA', '202111-013', '2021-11-05', '2021-11-08 19:07:57', '2021-11-08 19:07:57', NULL),
(523, '2', NULL, 27, 'MARYO', 'PPC & Delvcon', '202111-016', '2021-11-05', '2021-11-08 19:12:03', '2021-11-08 19:12:03', NULL),
(524, '2', NULL, 26, 'MARYO', 'PPC & Delvcon', '202111-016', '2021-11-05', '2021-11-08 19:13:28', '2021-11-08 19:13:28', NULL),
(525, '10', NULL, 24, 'NIMUN', 'Production', '202111-014', '2021-11-08', '2021-11-08 19:17:18', '2021-11-08 19:17:18', NULL),
(526, '10', NULL, 24, 'NARYA', 'Inventory Management', '202111-017', '2021-11-04', '2021-11-08 19:19:17', '2021-11-08 19:19:17', NULL),
(527, '10', NULL, 24, 'IKLAS,R', 'GA', '202111-018', '2021-11-10', '2021-11-09 21:23:31', '2021-11-09 21:23:31', NULL),
(528, '1', NULL, 2, 'HADI', 'PPC & Delvcon', '202111-019', '2021-11-10', '2021-11-09 21:24:59', '2021-11-09 21:24:59', NULL),
(529, '1', NULL, 17, 'RESAN', 'HRD', '202111-021', '2021-11-10', '2021-11-09 21:29:18', '2021-11-09 21:29:18', NULL),
(530, '1', NULL, 19, 'RESAN', 'HRD', '202111-021', '2021-11-10', '2021-11-09 21:30:34', '2021-11-09 21:30:34', NULL),
(531, '1', NULL, 17, 'NINA', 'HRD', '202111-022', '2021-11-10', '2021-11-09 21:33:03', '2021-11-09 21:33:03', NULL),
(532, '1', NULL, 19, 'NINA', 'HRD', '202111-022', '2021-11-10', '2021-11-09 21:34:14', '2021-11-09 21:34:14', NULL),
(533, '2', NULL, 27, 'MARYO', 'PPC & Delvcon', '202111-023', '2021-11-10', '2021-11-09 23:58:27', '2021-11-09 23:58:27', NULL),
(534, '2', NULL, 26, 'MARYO', 'PPC & Delvcon', '202111-023', '2021-11-10', '2021-11-10 00:00:51', '2021-11-10 00:00:51', NULL),
(535, '2', NULL, 16, 'YUNIE.P.S', 'Production', '202111-024', '2021-11-10', '2021-11-10 01:07:28', '2021-11-10 01:07:28', NULL),
(536, '10', NULL, 24, 'FG ADIT', 'Inventory Management', '202111-25', '2021-11-12', '2021-11-14 21:05:57', '2021-11-14 21:05:57', NULL),
(537, '1', NULL, 2, 'HIDAYAT', 'PPC & Delvcon', '202111-26', '2021-11-12', '2021-11-14 21:15:11', '2021-11-14 21:15:11', NULL),
(538, '1', NULL, 5, 'NAOMI', 'Purchasing', '202111-28', '2021-11-12', '2021-11-14 22:42:26', '2021-11-14 22:42:26', NULL),
(539, '10', NULL, 24, 'Rikan', 'Inventory Management', '202111-027', '2021-11-12', '2021-11-14 22:46:18', '2021-11-14 22:46:18', NULL),
(540, '5', NULL, 24, 'Firmansyah', 'QA', '202111-030', '2021-11-17', '2021-11-16 23:25:07', '2021-11-16 23:25:07', NULL),
(541, '1', NULL, 16, 'Sukardi', 'QA', '202111-029', '2021-11-17', '2021-11-16 23:26:01', '2021-11-16 23:26:01', NULL),
(542, '5', NULL, 24, 'Narya', 'Inventory Management', '202111-028', '2021-11-17', '2021-11-16 23:27:06', '2021-11-16 23:27:06', NULL),
(543, '1', NULL, 7, 'nanda', 'Marketing', '202111-029', '2021-11-16', '2021-11-17 17:52:36', '2021-11-17 17:52:36', NULL),
(544, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202111-030', '2021-11-16', '2021-11-17 17:55:40', '2021-11-17 17:55:40', NULL),
(545, '1', NULL, 7, 'dewi', 'PPC & Delvcon', '202111-032', '2021-11-18', '2021-11-18 01:11:50', '2021-11-18 01:11:50', NULL),
(546, NULL, NULL, 2, 'Daya', 'Accounting & Fin', '202111-031', '2021-11-18', '2021-11-18 01:13:25', '2021-11-18 01:13:25', NULL),
(547, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202111-031', '2021-11-18', '2021-11-18 01:17:04', '2021-11-18 01:17:04', NULL),
(548, '10', NULL, 24, 'Amirudin', 'Production', '202111-033', '2021-11-16', '2021-11-18 18:09:29', '2021-11-18 18:09:29', NULL),
(549, '3', NULL, 27, 'MARYO', 'PPC & Delvcon', '202111-034', '2021-11-15', '2021-11-18 18:10:58', '2021-11-18 18:10:58', NULL),
(550, '2', NULL, 26, 'MARYO', 'PPC & Delvcon', '202111-034', '2021-11-15', '2021-11-18 18:12:31', '2021-11-18 18:12:31', NULL),
(551, '5', NULL, 25, 'Puji', 'QA', '202111-35', '2021-11-17', '2021-11-18 19:59:11', '2021-11-18 19:59:11', NULL),
(552, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202111-038', '2021-11-18', '2021-11-19 06:47:20', '2021-11-19 06:47:20', NULL),
(553, '5', NULL, 26, 'Edi.p.', 'Production', '202111-036', '2021-11-17', '2021-11-24 01:55:32', '2021-11-24 01:55:32', NULL),
(554, NULL, NULL, 24, 'Narya', 'Accounting & Fin', '202111-037', '2021-11-18', '2021-11-24 01:58:16', '2021-11-24 01:58:16', NULL),
(555, '5', NULL, 24, 'Narya', 'Inventory Management', '202111-037', '2021-11-18', '2021-11-24 01:59:56', '2021-11-24 01:59:56', NULL),
(556, '5', NULL, 24, 'Fimanyah', 'QA', '202111-039', '2021-11-19', '2021-11-24 02:02:48', '2021-11-24 02:02:48', NULL),
(557, '2', NULL, 26, 'MARYO', 'PPC & Delvcon', '202111-040', '2021-11-19', '2021-11-24 02:09:46', '2021-11-24 02:09:46', NULL),
(558, '3', NULL, 27, 'MARYO', 'PPC & Delvcon', '202111-040', '2021-11-19', '2021-11-24 02:11:04', '2021-11-24 02:11:04', NULL),
(559, '5', NULL, 24, 'NIMUN', 'Production', '202111-041', '2021-11-22', '2021-11-24 02:17:12', '2021-11-24 02:17:12', NULL),
(560, '5', NULL, 24, 'Syahrul', 'Inventory Management', '202111-042', '2021-11-22', '2021-11-24 02:18:46', '2021-11-24 02:18:46', NULL),
(561, '5', NULL, 24, 'IKLAS', 'QA', '202111-043', '2021-11-22', '2021-11-24 02:22:04', '2021-11-24 02:22:04', NULL),
(562, '1', NULL, 2, 'HADI', 'PPC & Delvcon', '202111-044', '2021-11-22', '2021-11-24 02:23:28', '2021-11-24 02:23:28', NULL),
(563, '5', NULL, 24, 'alfian', 'QA', '202111-045', '2021-11-22', '2021-11-24 02:26:54', '2021-11-24 02:26:54', NULL),
(564, '5', NULL, 25, 'alfian', 'QA', '202111-045', '2021-11-22', '2021-11-24 02:28:33', '2021-11-24 02:28:33', NULL),
(565, '1', NULL, 16, 'Nislina', 'PPC & Delvcon', '202111-046', '2021-11-22', '2021-11-24 02:31:06', '2021-11-24 02:31:06', NULL),
(566, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202111-047', '2021-11-22', '2021-11-24 02:41:55', '2021-11-24 02:41:55', NULL),
(567, '1', NULL, 32, 'DADANG', 'Engineering', '202111-048', '2021-11-22', '2021-11-24 02:43:59', '2021-11-24 02:43:59', NULL),
(568, '10', NULL, 24, 'YAKUB', 'Inventory Management', '202111-049', '2021-11-23', '2021-11-24 03:00:32', '2021-11-24 03:00:32', NULL),
(569, '1', NULL, 7, 'Nanda', 'Marketing', '202111-050', '2021-11-23', '2021-11-24 03:02:02', '2021-11-24 03:02:02', NULL),
(570, '15', NULL, 26, 'NIMUN', 'Production', '202111-52', '2021-11-24', '2021-11-24 03:13:02', '2021-11-24 03:13:02', NULL),
(571, '2', NULL, 27, 'MARYO', 'PPC & Delvcon', '202111-053', '2021-11-24', '2021-11-25 00:14:00', '2021-11-25 00:14:00', 'Dimas (PKL)'),
(572, '2', NULL, 26, 'MARYO', 'PPC & Delvcon', '202111-053', '2021-11-24', '2021-11-25 00:15:05', '2021-11-25 00:15:05', 'Dimas (PKL)'),
(573, '1', NULL, 1, 'MARYO', 'PPC & Delvcon', '202111-053', '2021-11-24', '2021-11-25 00:17:27', '2021-11-25 00:17:27', 'Dimas (PKL)'),
(574, '1', NULL, 2, 'Niarina', 'PPC & Delvcon', '202111-054', '2021-11-25', '2021-11-26 00:32:12', '2021-11-26 00:32:12', 'Dimas (PKL)'),
(575, '1', NULL, 7, 'NuNuK', 'Marketing', '202111-055', '2021-11-25', '2021-11-26 00:39:10', '2021-11-26 00:39:10', 'Dimas (PKL)'),
(576, '1', NULL, 7, 'Joko prasetyo', 'Accounting & Fin', '202111-056', '2021-11-26', '2021-11-26 09:10:08', '2021-11-26 09:10:08', 'Fathur Rahmansyah'),
(577, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202111-057', '2021-11-26', '2021-11-26 09:10:53', '2021-11-26 09:10:53', 'Fathur Rahmansyah'),
(578, '15', NULL, 24, 'Rikan', 'Inventory Management', '202111-058', '2021-11-26', '2021-11-26 09:11:29', '2021-11-26 09:11:29', 'Fathur Rahmansyah'),
(579, '11', NULL, 24, 'Syahrul', 'Inventory Management', '202111-059', '2021-11-26', '2021-11-26 09:13:57', '2021-11-26 09:13:57', 'Fathur Rahmansyah'),
(580, '2', NULL, 1, 'Abdul roup', 'PPC & Delvcon', '202111-060', '2021-11-29', '2021-11-30 00:33:12', '2021-11-30 00:33:12', 'Dimas (PKL)'),
(581, '1', NULL, 14, 'FAHTUR', 'IT', '202111-061', '2021-11-29', '2021-11-30 00:50:10', '2021-11-30 00:50:10', 'Dimas (PKL)'),
(582, '1', NULL, 13, 'FAHTUR', 'IT', '202111-061', '2021-11-29', '2021-11-30 00:52:52', '2021-11-30 00:52:52', 'Dimas (PKL)'),
(583, '10', NULL, 24, 'firman', 'QA', '202111-062', '2021-11-29', '2021-11-30 01:05:07', '2021-11-30 01:05:07', 'Dimas (PKL)'),
(584, '10', NULL, 24, 'NARYA', 'QA', '202111-064', '2021-11-29', '2021-11-30 01:09:50', '2021-11-30 01:09:50', 'Dimas (PKL)'),
(585, '10', NULL, 26, 'Edi.p.', 'Production', '202111-063', '2021-11-29', '2021-11-30 02:39:50', '2021-11-30 02:39:50', 'Dimas (PKL)'),
(586, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202111-064', '2021-11-30', '2021-12-02 00:41:02', '2021-12-02 00:41:02', 'Dimas (PKL)'),
(587, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '212111-064', '2021-11-30', '2021-12-02 00:42:12', '2021-12-02 00:42:12', 'Dimas (PKL)'),
(588, '10', NULL, 25, 'Purwanto', 'QA', '202111-065', '2021-11-30', '2021-12-02 00:44:47', '2021-12-02 00:44:47', 'Dimas (PKL)'),
(589, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', NULL, '2021-11-30', '2021-12-02 00:46:28', '2021-12-02 00:46:28', 'Dimas (PKL)'),
(590, '2', NULL, 27, 'Maryo', 'PPC & Delvcon', '202111-067', '2021-11-30', '2021-12-02 00:47:41', '2021-12-02 00:47:41', 'Dimas (PKL)'),
(591, '1', NULL, 16, 'Chandra', 'QA', '202111-066', '2021-11-30', '2021-12-02 00:50:35', '2021-12-02 00:50:35', 'Dimas (PKL)'),
(592, '10', NULL, 24, 'Amirudin', 'Production', '202112-070', '2021-12-01', '2021-12-02 00:58:55', '2021-12-02 00:58:55', 'Dimas (PKL)'),
(593, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202112-071', '2021-12-01', '2021-12-02 01:01:05', '2021-12-02 01:01:05', 'Dimas (PKL)'),
(594, '1', NULL, 7, 'Giriyanto', 'QA', '202112-069', '2021-12-01', '2021-12-02 01:04:09', '2021-12-02 01:04:09', 'Dimas (PKL)'),
(595, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202112-068', '2021-12-01', '2021-12-02 01:42:36', '2021-12-02 01:42:36', 'Dimas (PKL)'),
(596, '1', NULL, 4, 'Anna', 'Accounting & Fin', '202112-068', '2021-12-01', '2021-12-02 01:44:10', '2021-12-02 01:44:10', 'Dimas (PKL)'),
(597, '1', NULL, 34, 'Dany', 'PPC & Delvcon', '202112-001', '2021-12-02', '2021-12-03 01:02:30', '2021-12-03 01:02:30', 'Hanifan Musliman'),
(598, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-002', '2021-12-02', '2021-12-03 01:03:06', '2021-12-03 01:03:06', 'Hanifan Musliman'),
(599, '15', NULL, 24, 'Nimun', 'Production', '202112-004', '2021-12-06', '2021-12-07 01:12:46', '2021-12-07 01:12:46', 'Hanifan Musliman'),
(600, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-005', '2021-12-06', '2021-12-07 01:15:35', '2021-12-07 01:15:35', 'Hanifan Musliman'),
(601, '1', NULL, 5, 'Ilham', 'Purchasing', '202112-006', '2021-12-06', '2021-12-07 01:24:14', '2021-12-07 01:24:14', 'Hanifan Musliman'),
(602, '10', NULL, 24, 'Ikhlas', 'QHSE', '202112-008', '2021-12-06', '2021-12-07 01:36:19', '2021-12-07 01:36:19', 'Hanifan Musliman'),
(603, '1', NULL, 7, 'Nanda', 'Marketing', '202112-003', '2021-12-03', '2021-12-07 01:39:27', '2021-12-07 01:39:27', 'Hanifan Musliman'),
(604, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202112-009', '2021-12-07', '2021-12-08 00:29:15', '2021-12-08 00:29:15', 'Fathur Rahmansyah'),
(605, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202112-009', '2021-12-07', '2021-12-08 00:29:43', '2021-12-08 00:29:43', 'Fathur Rahmansyah'),
(606, '1', NULL, 7, 'Joko', 'Accounting & Fin', '202112-010', '2021-12-07', '2021-12-08 00:30:23', '2021-12-08 00:30:23', 'Fathur Rahmansyah'),
(607, '5', NULL, 24, 'Sukardi', 'Production', '202112-011', '2021-12-07', '2021-12-08 00:31:05', '2021-12-08 00:31:05', 'Fathur Rahmansyah'),
(608, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202112-012', '2021-12-08', '2021-12-09 01:33:36', '2021-12-09 01:33:36', 'Fathur Rahmansyah'),
(609, '15', NULL, 24, 'Rikan', 'Inventory Management', '202112-013', '2021-12-08', '2021-12-09 01:34:18', '2021-12-09 01:34:18', 'Fathur Rahmansyah'),
(610, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202112-014', '2021-12-08', '2021-12-09 01:35:09', '2021-12-09 01:35:09', 'Fathur Rahmansyah'),
(611, '1', NULL, 2, 'Nisrina (PKL)', 'PPC & Delvcon', '202112-015', '2021-12-09', '2021-12-09 01:36:05', '2021-12-09 01:36:05', 'Fathur Rahmansyah'),
(612, '1', NULL, 16, 'NUNU.N', 'Production', '202112-016', '2021-12-09', '2021-12-10 00:27:17', '2021-12-10 00:27:17', 'Dimas (PKL)'),
(613, '1', NULL, 19, 'NUNU.N', 'Production', '202112-016', '2021-12-09', '2021-12-10 00:29:32', '2021-12-10 00:29:32', 'Dimas (PKL)'),
(614, '2', NULL, 1, 'AGUS.', 'PPC & Delvcon', '202112-017', '2021-12-09', '2021-12-10 00:30:53', '2021-12-10 00:30:53', 'Dimas (PKL)'),
(615, '1', NULL, 7, 'Nanda', 'Marketing', '202112-018', '2021-12-10', '2021-12-13 00:24:19', '2021-12-13 00:24:19', 'Dimas (PKL)'),
(616, '10', NULL, 24, 'SYHHRUL', 'Inventory Management', '202112-019', '2021-12-10', '2021-12-13 00:28:57', '2021-12-13 00:28:57', 'Dimas (PKL)'),
(617, '20', NULL, 25, 'purkadi', 'QA', '202112-020', '2021-12-10', '2021-12-13 00:32:02', '2021-12-13 00:32:02', 'Dimas (PKL)'),
(618, '10', NULL, 24, 'purkadi', 'QA', '202112-020', '2021-12-10', '2021-12-13 00:34:56', '2021-12-13 00:34:56', 'Dimas (PKL)'),
(619, '3', NULL, 1, 'Abdul Roup', 'PPC & Delvcon', '202112-21', '2021-12-13', '2021-12-15 00:31:55', '2021-12-15 00:31:55', 'Dimas (PKL)'),
(620, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202112-22', '2021-12-13', '2021-12-15 00:35:31', '2021-12-15 00:35:31', 'Dimas (PKL)'),
(621, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202112-23', '2021-12-13', '2021-12-15 00:37:32', '2021-12-15 00:37:32', 'Dimas (PKL)'),
(622, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202112-24', '2021-12-13', '2021-12-15 00:39:01', '2021-12-15 00:39:01', 'Dimas (PKL)'),
(623, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202112-24', '2021-12-13', '2021-12-15 00:41:04', '2021-12-15 00:41:04', 'Dimas (PKL)'),
(624, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-25', '2021-12-14', '2021-12-15 00:43:04', '2021-12-15 00:43:04', 'Dimas (PKL)'),
(625, '1', NULL, 7, 'Nunuk', 'Marketing', '202112-26', '2021-12-14', '2021-12-15 00:45:12', '2021-12-15 00:45:12', 'Dimas (PKL)'),
(626, '1', NULL, 7, 'Jenal.R', 'GA', '202112-27', '2021-12-14', '2021-12-15 00:46:59', '2021-12-15 00:46:59', 'Dimas (PKL)'),
(627, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202112-28', '2021-12-14', '2021-12-15 00:49:31', '2021-12-15 00:49:31', 'Dimas (PKL)'),
(628, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202112-029', '2021-12-15', '2021-12-16 00:07:19', '2021-12-16 00:07:19', 'Fathur Rahmansyah'),
(629, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202112-030', '2021-12-15', '2021-12-16 00:08:11', '2021-12-16 00:08:11', 'Fathur Rahmansyah'),
(630, '1', NULL, 34, 'Sumaryono', 'QA', '202112-031', '2021-12-15', '2021-12-16 00:08:49', '2021-12-16 00:08:49', 'Fathur Rahmansyah'),
(631, NULL, NULL, 24, 'Edy', 'Accounting & Fin', '202112-036', '2021-12-16', '2021-12-17 02:53:42', '2021-12-17 02:53:42', 'Hanifan Musliman'),
(632, '10', NULL, 24, 'Amirudin', 'Production', '202112-035', '2021-12-16', '2021-12-17 02:56:05', '2021-12-17 02:56:05', 'Hanifan Musliman'),
(633, '11', NULL, 25, 'Puji', 'QA', '202112-034', '2021-12-16', '2021-12-17 02:56:54', '2021-12-17 02:56:54', 'Hanifan Musliman'),
(634, '1', NULL, 7, 'Nanda', 'Marketing', '202112-033', '2021-12-16', '2021-12-17 02:57:56', '2021-12-17 02:57:56', 'Hanifan Musliman'),
(635, '1', NULL, 28, 'iis', 'QHSE', '202112-032', '2021-12-17', '2021-12-17 02:58:33', '2021-12-17 02:58:33', 'Hanifan Musliman'),
(636, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-037', '2021-12-16', '2021-12-17 02:59:21', '2021-12-17 02:59:21', 'Hanifan Musliman'),
(637, '1', NULL, 16, 'Narya', 'Inventory Management', '202112-038', '2021-12-16', '2021-12-17 03:00:17', '2021-12-17 03:00:17', 'Hanifan Musliman'),
(638, '1', NULL, 16, 'Andiko', 'PPC & Delvcon', '202112-040', '2021-12-17', '2021-12-17 07:09:40', '2021-12-17 07:09:40', 'Hanifan Musliman'),
(639, '20', NULL, 24, 'Heri Akbar', 'Inventory Management', '202112-039', '2021-12-17', '2021-12-17 07:10:28', '2021-12-17 07:10:28', 'Hanifan Musliman'),
(640, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-041', '2021-12-20', '2021-12-21 02:52:51', '2021-12-21 02:52:51', 'Dimas (PKL)'),
(641, '10', NULL, 24, 'Alfian', 'QA', '202112-042', '2021-12-20', '2021-12-21 02:56:10', '2021-12-21 02:56:10', 'Dimas (PKL)'),
(642, '10', NULL, 25, 'Alfian', 'QA', '202112-042', '2021-12-20', '2021-12-21 02:57:43', '2021-12-21 02:57:43', 'Dimas (PKL)'),
(643, '1', NULL, 34, 'Riyanti', 'Marketing', '202112-043', '2021-12-20', '2021-12-21 03:02:34', '2021-12-21 03:02:34', 'Dimas (PKL)'),
(644, '10', NULL, 24, 'SYAHRUL', 'Inventory Management', '202112-044', '2021-12-21', '2021-12-21 03:04:25', '2021-12-21 03:04:25', 'Dimas (PKL)'),
(645, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-045', '2021-12-21', '2021-12-22 01:50:33', '2021-12-22 01:50:33', 'Dimas (PKL)'),
(646, '1', NULL, 5, 'lLham', 'PPC & Delvcon', '202112-046', '2021-12-21', '2021-12-22 02:15:34', '2021-12-22 02:15:34', 'Dimas (PKL)'),
(647, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202112-047', '2021-12-21', '2021-12-22 02:20:58', '2021-12-22 02:20:58', 'Dimas (PKL)'),
(648, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202112-047', '2021-12-21', '2021-12-22 02:22:00', '2021-12-22 02:22:00', 'Dimas (PKL)'),
(649, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202112-048', '2021-12-21', '2021-12-22 02:28:31', '2021-12-22 02:28:31', 'Dimas (PKL)'),
(650, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202112-049', '2021-12-22', '2021-12-22 03:18:39', '2021-12-22 03:18:39', 'Dimas (PKL)'),
(651, '15', NULL, 24, 'Rikan', 'Inventory Management', '202112-050', '2021-12-22', '2021-12-24 01:00:45', '2021-12-24 01:00:45', 'Dimas (PKL)'),
(652, '15', NULL, 26, 'Nimun', 'Production', '202112-051', '2021-12-22', '2021-12-24 01:17:13', '2021-12-24 01:17:13', 'Dimas (PKL)'),
(653, '15', NULL, 26, 'Nimun', 'Production', '202112-051', '2021-12-22', '2021-12-24 01:17:14', '2021-12-24 01:17:14', 'Dimas (PKL)'),
(654, '10', NULL, 24, 'SYAHRUL', 'Inventory Management', '202112-052', '2021-12-22', '2021-12-24 01:19:00', '2021-12-24 01:19:00', 'Dimas (PKL)'),
(655, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202112-053', '2021-12-23', '2021-12-24 01:20:33', '2021-12-24 01:20:33', 'Dimas (PKL)'),
(656, '15', NULL, 25, 'Rubadi', 'QA', '202112-054', '2021-12-23', '2021-12-24 01:23:24', '2021-12-24 01:23:24', 'Dimas (PKL)'),
(657, '15', NULL, 25, 'Rubadi', 'QA', '202112-054', '2021-12-23', '2021-12-24 01:25:19', '2021-12-24 01:25:19', 'Dimas (PKL)'),
(658, '1', NULL, 1, 'AGUS', 'PPC & Delvcon', '202112-055', '2021-12-23', '2021-12-24 01:28:03', '2021-12-24 01:28:03', 'Dimas (PKL)'),
(659, '1', NULL, 32, 'Suci', 'Accounting & Fin', '202112-056', '2021-12-24', '2021-12-24 02:08:03', '2021-12-24 02:08:03', 'Dimas (PKL)'),
(660, NULL, NULL, 7, NULL, 'Accounting & Fin', '202112-057', '2021-12-24', '2021-12-28 00:36:53', '2021-12-28 00:36:53', 'Dimas (PKL)'),
(661, NULL, NULL, 7, NULL, 'Accounting & Fin', '202112-057', '2021-12-24', '2021-12-28 00:36:53', '2021-12-28 00:36:53', 'Dimas (PKL)'),
(662, '1', NULL, 7, 'Nanda', 'Marketing', '202112-057', '2021-12-24', '2021-12-28 00:38:05', '2021-12-28 00:38:05', 'Dimas (PKL)'),
(663, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202112-058', '2021-12-24', '2021-12-28 00:39:16', '2021-12-28 00:39:16', 'Dimas (PKL)'),
(664, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '20211-058', '2021-12-24', '2021-12-28 00:40:18', '2021-12-28 00:40:18', 'Dimas (PKL)'),
(665, '10', NULL, 24, 'Syahrul.n', 'Inventory Management', '202112-059', '2021-12-24', '2021-12-28 00:42:24', '2021-12-28 00:42:24', 'Dimas (PKL)'),
(666, '10', NULL, 24, 'Firmansyah', 'QA', '202112-060', '2021-12-27', '2021-12-28 00:44:10', '2021-12-28 00:44:10', 'Dimas (PKL)'),
(667, '10', NULL, 25, 'Pujianto', 'QA', '202112-062', '2021-12-27', '2021-12-28 00:50:03', '2021-12-28 00:50:03', 'Dimas (PKL)'),
(668, '1', NULL, 32, 'N.nugrraha', 'Production', '202112-063', '2021-12-27', '2021-12-28 00:56:18', '2021-12-28 00:56:18', 'Dimas (PKL)'),
(669, '1', NULL, 7, 'Giriyanto', 'QA', '202112-061', '2021-12-27', '2021-12-28 02:16:41', '2021-12-28 02:16:41', 'Dimas (PKL)'),
(670, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202112-064', '2021-12-29', '2021-12-30 01:07:12', '2021-12-30 01:07:12', 'Dimas (PKL)'),
(671, '2', NULL, 27, 'Maryo', 'PPC & Delvcon', '202112-064', '2021-12-29', '2021-12-30 01:08:13', '2021-12-30 01:08:13', 'Dimas (PKL)'),
(672, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202112-065', '2021-12-29', '2021-12-30 01:09:29', '2021-12-30 01:09:29', 'Dimas (PKL)'),
(673, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202112-066', '2021-12-28', '2021-12-30 01:17:17', '2021-12-30 01:17:17', 'Dimas (PKL)'),
(674, '10', NULL, 25, 'PUJI', 'QA', '202112-067', '2021-12-30', '2022-01-05 02:47:53', '2022-01-05 02:47:53', 'Dimas (PKL)'),
(675, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202112-068', '2021-12-30', '2022-01-05 02:49:20', '2022-01-05 02:49:20', 'Dimas (PKL)'),
(676, '1', NULL, 16, 'SUTANTO', 'QA', '202112-070', '2021-12-30', '2022-01-05 02:57:18', '2022-01-05 02:57:18', 'Dimas (PKL)'),
(677, '1', NULL, 19, 'SUTANTO', 'QA', '202112-070', '2021-12-30', '2022-01-05 02:58:32', '2022-01-05 02:58:32', 'Dimas (PKL)'),
(678, '1', NULL, 17, 'SUTANTO', 'QA', '202112-070', '2021-12-30', '2022-01-05 02:59:42', '2022-01-05 02:59:42', 'Dimas (PKL)'),
(679, '1', NULL, 7, 'NANDA', 'Marketing', '202112-071', '2021-12-30', '2022-01-05 03:01:56', '2022-01-05 03:01:56', 'Dimas (PKL)'),
(680, '2', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-001', '2022-01-05', '2022-01-05 03:13:54', '2022-01-05 03:13:54', 'Dimas (PKL)'),
(681, '15', NULL, 26, 'Nimun', 'Production', '202201-002', '2022-01-04', '2022-01-05 04:16:58', '2022-01-05 04:16:58', 'Dimas (PKL)'),
(682, '10', NULL, 24, 'IKLAS.R', 'QA', NULL, '2022-01-05', '2022-01-05 04:18:25', '2022-01-05 04:18:25', 'Dimas (PKL)'),
(683, '1', NULL, 16, 'CANDRA', 'QA', '202112-064', '2021-12-30', '2022-01-05 04:20:47', '2022-01-05 04:20:47', 'Dimas (PKL)'),
(684, '1', NULL, 18, 'Chandra', 'QA', '202112-069', '2021-12-30', '2022-01-05 04:27:47', '2022-01-05 04:27:47', 'Dimas (PKL)'),
(685, '1', NULL, 19, 'Chandra', 'QA', '202112-069', '2021-12-30', '2022-01-05 04:36:08', '2022-01-05 04:36:08', 'Dimas (PKL)'),
(686, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202201-004', '2022-01-04', '2022-01-05 05:39:37', '2022-01-05 05:39:37', 'Dimas (PKL)'),
(687, '1', NULL, 16, 'YUNI', 'Production', '202201-003', '2022-01-03', '2022-01-05 05:45:17', '2022-01-05 05:45:17', 'Dimas (PKL)'),
(688, '1', NULL, 19, 'YUNI', 'Production', '202201-003', '2022-01-04', '2022-01-05 05:49:10', '2022-01-05 05:49:10', 'Dimas (PKL)'),
(689, '1', NULL, 16, 'Adika', 'Inventory Management', '202201-014', '2022-01-07', '2022-01-07 06:33:20', '2022-01-07 06:33:20', 'Hanifan Musliman'),
(690, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202201-013', '2022-01-05', '2022-01-07 06:34:33', '2022-01-07 06:34:33', 'Hanifan Musliman'),
(691, '1', NULL, 20, 'Wahyono', 'Engineering', '202201-012', '2022-01-07', '2022-01-07 06:35:42', '2022-01-07 06:35:42', 'Hanifan Musliman'),
(692, '1', NULL, 7, 'Dewi', 'Accounting & Fin', '202201-011', '2022-01-07', '2022-01-07 07:13:47', '2022-01-07 07:13:47', 'Hanifan Musliman'),
(693, '1', NULL, 7, 'Nisrina', 'PPC & Delvcon', '202201-010', '2022-01-06', '2022-01-07 07:15:40', '2022-01-07 07:15:40', 'Hanifan Musliman'),
(694, '1', NULL, 5, 'Naomi', 'Purchasing', '202201-009', '2022-01-05', '2022-01-07 07:16:37', '2022-01-07 07:16:37', 'Hanifan Musliman'),
(695, '1', NULL, 16, 'Yudi P', 'HRD', '202201-007', '2022-01-06', '2022-01-07 07:17:40', '2022-01-07 07:17:40', 'Hanifan Musliman'),
(696, '1', NULL, 17, 'Yudi P', 'HRD', '202201-007', '2022-01-06', '2022-01-07 07:18:22', '2022-01-07 07:18:22', 'Hanifan Musliman'),
(697, '1', NULL, 18, 'Yudi P', 'HRD', '202201-007', '2022-01-06', '2022-01-07 07:19:27', '2022-01-07 07:19:27', 'Hanifan Musliman'),
(698, '1', NULL, 19, 'Yudi P', 'HRD', '202201-007', '2022-01-06', '2022-01-07 07:22:19', '2022-01-07 07:22:19', 'Hanifan Musliman'),
(699, '15', NULL, 25, 'rubadi', 'QA', '202201-006', '2022-01-05', '2022-01-07 07:24:13', '2022-01-07 07:24:13', 'Hanifan Musliman'),
(700, '1', NULL, 7, 'Yati', 'Accounting & Fin', '202201-005', '2022-01-06', '2022-01-07 07:25:14', '2022-01-07 07:25:14', 'Hanifan Musliman'),
(701, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-015', '2022-01-07', '2022-01-07 07:26:34', '2022-01-07 07:26:34', 'Hanifan Musliman'),
(702, '10', NULL, 24, 'heri', 'Inventory Management', '202201-016', '2022-01-10', '2022-01-12 02:26:45', '2022-01-12 02:26:45', 'Dimas (PKL)'),
(703, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-017', '2022-01-07', '2022-01-12 02:27:46', '2022-01-12 02:27:46', 'Dimas (PKL)'),
(704, '2', NULL, 27, 'Maryo', 'PPC & Delvcon', '202201-017', '2022-01-07', '2022-01-12 02:28:20', '2022-01-12 02:28:20', 'Dimas (PKL)'),
(705, '10', NULL, 25, 'puji', 'QA', '202201-018', '2022-01-10', '2022-01-12 02:29:14', '2022-01-12 02:29:14', 'Dimas (PKL)'),
(706, '10', NULL, 24, 'QALIN', 'QA', '202201-019', '2022-01-10', '2022-01-12 02:41:14', '2022-01-12 02:41:14', 'Dimas (PKL)'),
(707, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202201-020', '2022-01-12', '2022-01-12 02:42:21', '2022-01-12 02:42:21', 'Dimas (PKL)'),
(708, '1', NULL, 7, 'NANDA', 'Marketing', '202201-023', '2022-01-10', '2022-01-12 02:43:42', '2022-01-12 02:43:42', 'Dimas (PKL)'),
(709, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202201-022', '2022-01-11', '2022-01-12 02:44:26', '2022-01-12 02:44:26', 'Dimas (PKL)'),
(710, '1', NULL, 1, 'Nisrina (PKL)', 'PPC & Delvcon', '202201-021', '2022-01-11', '2022-01-12 02:45:44', '2022-01-12 02:45:44', 'Dimas (PKL)'),
(711, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202201-029', '2022-01-12', '2022-01-14 01:33:50', '2022-01-14 01:33:50', 'Dimas (PKL)'),
(712, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202201-029', '2022-01-12', '2022-01-14 01:33:50', '2022-01-14 01:33:50', 'Dimas (PKL)'),
(713, '1', NULL, 32, 'Anna', 'Accounting & Fin', '202201-025', '2022-01-13', '2022-01-14 01:39:02', '2022-01-14 01:39:02', 'Dimas (PKL)'),
(714, '1', NULL, 4, 'Anna', 'Accounting & Fin', '202201-025', '2022-01-13', '2022-01-14 01:41:33', '2022-01-14 01:41:33', 'Dimas (PKL)'),
(715, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202201-025', '2022-01-13', '2022-01-14 01:47:24', '2022-01-14 01:47:24', 'Dimas (PKL)'),
(716, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202201-025', '2022-01-13', '2022-01-14 01:47:25', '2022-01-14 01:47:25', 'Dimas (PKL)'),
(717, '10', NULL, 26, 'EDY.R', 'Production', '202201-024', '2022-01-13', '2022-01-14 01:49:15', '2022-01-14 01:49:15', 'Dimas (PKL)'),
(718, '10', NULL, 26, 'EDY.R', 'Production', '202201-024', '2022-01-13', '2022-01-14 01:49:15', '2022-01-14 01:49:15', 'Dimas (PKL)'),
(719, '15', NULL, 24, 'Fuji', 'Inventory Management', '202201-026', '2022-01-13', '2022-01-14 01:53:17', '2022-01-14 01:53:17', 'Dimas (PKL)'),
(720, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-027', '2022-01-12', '2022-01-14 01:56:15', '2022-01-14 01:56:15', 'Dimas (PKL)'),
(721, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-027', '2022-01-12', '2022-01-14 01:56:16', '2022-01-14 01:56:16', 'Dimas (PKL)'),
(722, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202101-027', '2022-01-12', '2022-01-14 01:57:35', '2022-01-14 01:57:35', 'Dimas (PKL)'),
(723, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202101-027', '2022-01-12', '2022-01-14 01:57:35', '2022-01-14 01:57:35', 'Dimas (PKL)'),
(724, '1', NULL, 32, 'Adika', 'Inventory Management', '202201-028', '2022-01-12', '2022-01-14 01:59:10', '2022-01-14 01:59:10', 'Dimas (PKL)'),
(725, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-030', '2022-01-12', '2022-01-14 02:01:00', '2022-01-14 02:01:00', 'Dimas (PKL)'),
(726, '10', NULL, 24, 'Hari akbar', 'Inventory Management', '202201-035', '2022-01-14', '2022-01-17 00:49:32', '2022-01-17 00:49:32', 'Hanifan Musliman'),
(727, '10', NULL, 24, 'Giriyanto', 'QA', '202201-034', '2022-01-13', '2022-01-17 00:50:23', '2022-01-17 00:50:23', 'Hanifan Musliman'),
(728, '15', NULL, 24, 'Amirudin', 'Production', '202201-033', '2022-01-14', '2022-01-17 00:52:09', '2022-01-17 00:52:09', 'Hanifan Musliman'),
(729, '4', NULL, 25, 'Puji', 'QA', '202201-032', '2022-01-14', '2022-01-17 00:53:12', '2022-01-17 00:53:12', 'Hanifan Musliman'),
(730, '5', NULL, 24, 'Puji', 'QA', '202201-032', '2022-01-14', '2022-01-17 00:53:49', '2022-01-17 00:53:49', 'Hanifan Musliman'),
(731, '1', NULL, 7, 'Nanda', 'Marketing', '202201-031', '2022-01-14', '2022-01-17 00:54:30', '2022-01-17 00:54:30', 'Hanifan Musliman'),
(732, '10', NULL, 24, 'IKLAS.R', 'QA', '202201-036', '2022-01-19', '2022-01-19 05:52:25', '2022-01-19 05:52:25', 'Dimas (PKL)'),
(733, '10', NULL, 24, 'SYAHRUL.N', 'Inventory Management', '202201-037', '2022-01-18', '2022-01-19 05:54:40', '2022-01-19 05:54:40', 'Dimas (PKL)'),
(734, '10', NULL, 24, 'SYAHRUL.N', 'Inventory Management', '202201-037', '2022-01-18', '2022-01-19 05:54:41', '2022-01-19 05:54:41', 'Dimas (PKL)'),
(735, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-038', '2022-01-18', '2022-01-19 05:56:48', '2022-01-19 05:56:48', 'Dimas (PKL)'),
(736, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-044', '2022-01-17', '2022-01-19 05:59:26', '2022-01-19 05:59:26', 'Dimas (PKL)'),
(737, '1', NULL, 7, 'Indah.', 'Accounting & Fin', '202201-043', '2022-01-17', '2022-01-19 06:05:17', '2022-01-19 06:05:17', 'Dimas (PKL)'),
(738, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202201-039', '2022-01-18', '2022-01-19 06:06:40', '2022-01-19 06:06:40', 'Dimas (PKL)'),
(739, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202201-039', '2022-01-18', '2022-01-19 06:06:40', '2022-01-19 06:06:40', 'Dimas (PKL)'),
(740, '1', NULL, 16, 'Sukardi', 'QA', '202201-040', '2022-01-18', '2022-01-19 06:08:27', '2022-01-19 06:08:27', 'Dimas (PKL)'),
(741, '1', NULL, 7, 'Agung.p', 'QA', '202201-041', '2022-01-19', '2022-01-19 06:10:31', '2022-01-19 06:10:31', 'Dimas (PKL)'),
(742, '1', NULL, 7, 'Agung.p', 'QA', '202201-041', '2022-01-19', '2022-01-19 06:10:31', '2022-01-19 06:10:31', 'Dimas (PKL)'),
(743, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-042', '2022-01-17', '2022-01-19 06:11:59', '2022-01-19 06:11:59', 'Dimas (PKL)'),
(744, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-042', '2022-01-17', '2022-01-19 06:11:59', '2022-01-19 06:11:59', 'Dimas (PKL)'),
(745, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202201-042', '2022-01-17', '2022-01-19 06:13:36', '2022-01-19 06:13:36', 'Dimas (PKL)'),
(746, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202201-042', '2022-01-17', '2022-01-19 06:13:36', '2022-01-19 06:13:36', 'Dimas (PKL)'),
(747, '1', NULL, 7, 'Nanda', 'Marketing', '202201-046', '2022-01-20', '2022-01-20 07:28:50', '2022-01-20 07:28:50', 'Dimas (PKL)'),
(748, '1', NULL, 5, 'Noomi', 'Purchasing', '202201-045', '2022-01-19', '2022-01-20 07:42:26', '2022-01-20 07:42:26', 'Dimas (PKL)'),
(749, '1', NULL, 7, 'martini (pkl)', 'Accounting & Fin', '202201-047', '2022-01-20', '2022-01-20 08:32:07', '2022-01-20 08:32:07', 'Dimas (PKL)'),
(750, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-049', '2022-01-20', '2022-01-20 08:35:33', '2022-01-20 08:35:33', 'Dimas (PKL)'),
(751, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-049', '2022-01-20', '2022-01-20 08:35:33', '2022-01-20 08:35:33', 'Dimas (PKL)'),
(752, '15', NULL, 24, 'Rubadi', 'QA', '202201-048', '2022-01-20', '2022-01-20 08:37:44', '2022-01-20 08:37:44', 'Dimas (PKL)'),
(753, '15', NULL, 24, 'Rubadi', 'QA', '202201-048', '2022-01-20', '2022-01-20 08:37:44', '2022-01-20 08:37:44', 'Dimas (PKL)'),
(754, '10', NULL, 24, 'SYAHRUL.N', 'Inventory Management', '202201-065', '2022-01-21', '2022-01-24 08:16:58', '2022-01-24 08:16:58', 'Dimas (PKL)'),
(755, '10', NULL, 24, 'SYAHRUL.N', 'Inventory Management', '202201-065', '2022-01-21', '2022-01-24 08:16:58', '2022-01-24 08:16:58', 'Dimas (PKL)'),
(756, '15', NULL, 24, 'Amirudin', 'Production', '202201-066', '2022-01-24', '2022-01-24 08:19:11', '2022-01-24 08:19:11', 'Dimas (PKL)'),
(757, '15', NULL, 24, 'Amirudin', 'Production', '202201-066', '2022-01-24', '2022-01-24 08:19:11', '2022-01-24 08:19:11', 'Dimas (PKL)'),
(758, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202101-067', '2022-01-21', '2022-01-24 08:20:56', '2022-01-24 08:20:56', 'Dimas (PKL)'),
(759, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-068', '2022-01-21', '2022-01-24 08:22:24', '2022-01-24 08:22:24', 'Dimas (PKL)'),
(760, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-068', '2022-01-21', '2022-01-24 08:22:25', '2022-01-24 08:22:25', 'Dimas (PKL)'),
(761, '2', NULL, 27, 'Maryo', 'PPC & Delvcon', '202201-068', '2022-01-21', '2022-01-24 08:23:32', '2022-01-24 08:23:32', 'Dimas (PKL)'),
(762, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-069', '2022-01-24', '2022-01-26 00:40:26', '2022-01-26 00:40:26', 'Dimas (PKL)'),
(763, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202202-071', '2022-01-24', '2022-01-26 00:42:34', '2022-01-26 00:42:34', 'Dimas (PKL)'),
(764, '10', NULL, 24, 'Firmansyah', 'QA', '202201-070', '2022-01-24', '2022-01-26 00:43:39', '2022-01-26 00:43:39', 'Dimas (PKL)'),
(765, '1', NULL, 30, 'liss', 'QHSE', '202201-072', '2022-01-25', '2022-01-26 00:49:33', '2022-01-26 00:49:33', 'Dimas (PKL)'),
(766, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-073', '2022-01-25', '2022-01-26 00:50:58', '2022-01-26 00:50:58', 'Dimas (PKL)'),
(767, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202201-074', '2022-01-24', '2022-01-26 01:30:35', '2022-01-26 01:30:35', 'Dimas (PKL)'),
(768, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-075', '2022-01-26', '2022-01-27 04:10:37', '2022-01-27 04:10:37', 'Dimas (PKL)'),
(769, '1', NULL, 16, 'N.nugrraha', 'Production', '202201-077', '2022-01-27', '2022-01-27 04:14:31', '2022-01-27 04:14:31', 'Dimas (PKL)'),
(770, '1', NULL, 17, 'N.nugrraha', 'Production', '202201-077', '2022-01-27', '2022-01-27 04:15:47', '2022-01-27 04:15:47', 'Dimas (PKL)'),
(771, '1', NULL, 18, 'N.nugrraha', 'Production', '202201-077', '2022-01-27', '2022-01-27 04:19:27', '2022-01-27 04:19:27', 'Dimas (PKL)'),
(772, '1', NULL, 19, 'N.nugrraha', 'Production', '202201-077', '2022-01-27', '2022-01-27 04:31:26', '2022-01-27 04:31:26', 'Dimas (PKL)'),
(773, '2', NULL, 11, 'Rian', 'Purchasing', '202201-076', '2022-01-26', '2022-01-27 04:39:37', '2022-01-27 04:39:37', 'Dimas (PKL)'),
(774, '1', NULL, 7, 'Giry', 'QA', '202201-077', '2022-01-31', '2022-02-03 03:45:22', '2022-02-03 03:45:22', 'Hanifan Musliman'),
(775, '1', NULL, 29, 'iis', 'QHSE', '202201-078', '2022-01-28', '2022-02-03 03:50:28', '2022-02-03 03:50:28', 'Hanifan Musliman'),
(776, '1', NULL, 16, 'roup', 'PPC & Delvcon', '202201-079', '2022-01-27', '2022-02-03 03:53:35', '2022-02-03 03:53:35', 'Hanifan Musliman'),
(777, '1', NULL, 19, 'roup', 'PPC & Delvcon', '202201-079', '2022-01-27', '2022-02-03 03:54:32', '2022-02-03 03:54:32', 'Hanifan Musliman'),
(778, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-080', '2022-01-28', '2022-02-03 03:57:40', '2022-02-03 03:57:40', 'Hanifan Musliman'),
(779, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202201-081', '2022-01-28', '2022-02-03 03:59:30', '2022-02-03 03:59:30', 'Hanifan Musliman'),
(780, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202201-081', '2022-01-28', '2022-02-03 04:00:21', '2022-02-03 04:00:21', 'Hanifan Musliman'),
(781, '10', NULL, 24, 'Firmansyah', 'QA', '202201-082', '2022-01-28', '2022-02-03 04:01:30', '2022-02-03 04:01:30', 'Hanifan Musliman'),
(782, '10', NULL, 24, 'Heri akbar', 'Inventory Management', '202201-083', '2022-01-27', '2022-02-03 04:11:03', '2022-02-03 04:11:03', 'Hanifan Musliman'),
(783, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202201-084', '2022-01-31', '2022-02-03 04:12:20', '2022-02-03 04:12:20', 'Hanifan Musliman'),
(784, '1', NULL, 33, 'asnioro', 'QHSE', '202201-085', '2022-01-27', '2022-02-03 04:14:18', '2022-02-03 04:14:18', 'Hanifan Musliman'),
(785, '1', NULL, 7, 'afifah', 'Accounting & Fin', '202201-001', '2022-02-02', '2022-02-03 04:22:30', '2022-02-03 04:22:30', 'Hanifan Musliman'),
(786, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202201-002', '2022-02-02', '2022-02-03 04:23:34', '2022-02-03 04:23:34', 'Hanifan Musliman'),
(787, '20', NULL, 24, 'Nimun', 'Production', '202202-003', '2022-02-03', '2022-02-03 04:26:33', '2022-02-03 04:26:33', 'Hanifan Musliman'),
(788, '1', NULL, 7, 'Nanda', 'Marketing', '202202-004', '2022-02-02', '2022-02-03 04:27:53', '2022-02-03 04:27:53', 'Hanifan Musliman'),
(789, '20', NULL, 25, 'Rikan', 'Inventory Management', '202202-005', '2022-02-02', '2022-02-03 04:29:35', '2022-02-03 04:29:35', 'Hanifan Musliman'),
(790, '1', NULL, 34, 'Nimun', 'Purchasing', '202202-006', '2022-02-02', '2022-02-03 04:31:44', '2022-02-03 04:31:44', 'Hanifan Musliman'),
(791, '15', NULL, 24, 'IKLAS.R', 'QA', '202202-007', '2022-02-02', '2022-02-03 04:32:51', '2022-02-03 04:32:51', 'Hanifan Musliman'),
(792, '10', NULL, 24, 'SYAHRUL', 'Inventory Management', '202202-008', '2022-02-02', '2022-02-03 04:34:57', '2022-02-03 04:34:57', 'Hanifan Musliman'),
(793, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202202-009', '2022-02-07', '2022-02-07 06:05:46', '2022-02-07 06:05:46', 'Hanifan Musliman');
INSERT INTO `stok_out` (`id`, `jumlah`, `barang_name`, `barang_id`, `name`, `section`, `no_perm`, `date`, `created_at`, `updated_at`, `input_by`) VALUES
(794, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202202-009', '2022-02-07', '2022-02-07 06:08:27', '2022-02-07 06:08:27', 'Hanifan Musliman'),
(795, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202202-010', '2022-02-04', '2022-02-07 06:10:35', '2022-02-07 06:10:35', 'Hanifan Musliman'),
(796, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202202-010', '2022-02-04', '2022-02-07 06:11:25', '2022-02-07 06:11:25', 'Hanifan Musliman'),
(797, '10', NULL, 24, 'Firmansyah', 'QA', '202202-011', '2022-02-06', '2022-02-07 06:12:49', '2022-02-07 06:12:49', 'Hanifan Musliman'),
(798, '1', NULL, 34, 'lina', 'HRD', '202202-012', '2022-02-07', '2022-02-07 06:17:11', '2022-02-07 06:17:11', 'Hanifan Musliman'),
(799, '1', NULL, 32, 'lina', 'HRD', '202202-012', '2022-02-07', '2022-02-07 06:18:39', '2022-02-07 06:18:39', 'Hanifan Musliman'),
(800, '1', NULL, 32, 'erlina', 'Purchasing', '202202-013', '2022-02-03', '2022-02-07 06:24:54', '2022-02-07 06:24:54', 'Hanifan Musliman'),
(801, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202202-014', '2022-02-03', '2022-02-07 06:26:50', '2022-02-07 06:26:50', 'Hanifan Musliman'),
(802, '1', NULL, 1, 'Nisrina', 'PPC & Delvcon', '202202-015', '2022-02-04', '2022-02-07 06:28:08', '2022-02-07 06:28:08', 'Hanifan Musliman'),
(803, '1', NULL, 5, 'ilham', 'Purchasing', '202202-016', '2022-02-04', '2022-02-07 06:30:10', '2022-02-07 06:30:10', 'Hanifan Musliman'),
(804, '10', NULL, 24, 'aditya', 'Inventory Management', '202202-017', '2022-02-04', '2022-02-07 06:32:44', '2022-02-07 06:32:44', 'Hanifan Musliman'),
(805, '1', NULL, 5, 'naomi', 'Purchasing', '202202-018', '2022-02-04', '2022-02-07 06:34:26', '2022-02-07 06:34:26', 'Hanifan Musliman'),
(806, '1', NULL, 2, 'Nisrina', 'PPC & Delvcon', '202202-019', '2022-02-04', '2022-02-07 06:35:28', '2022-02-07 06:35:28', 'Hanifan Musliman'),
(807, '1', NULL, 16, 'agung b.s', 'Engineering', '202202-020', '2022-02-07', '2022-02-07 06:38:44', '2022-02-07 06:38:44', 'Hanifan Musliman'),
(808, '1', NULL, 19, 'agung b.s', 'Engineering', '202202-020', '2022-02-07', '2022-02-07 06:39:48', '2022-02-07 06:39:48', 'Hanifan Musliman'),
(809, '1', NULL, 17, 'agung b.s', 'Engineering', '202202-020', '2022-02-07', '2022-02-07 06:40:55', '2022-02-07 06:40:55', 'Hanifan Musliman'),
(810, '1', NULL, 18, 'agung b.s', 'Engineering', '202202-020', '2022-02-07', '2022-02-07 06:41:51', '2022-02-07 06:41:51', 'Hanifan Musliman'),
(811, '1', NULL, 2, 'widayat', 'PPC & Delvcon', '202202-021', '2022-02-11', '2022-02-11 06:37:48', '2022-02-11 06:37:48', 'Hanifan Musliman'),
(812, '1', NULL, 7, 'nanda', 'Marketing', '202202-022', '2022-02-11', '2022-02-11 06:38:57', '2022-02-11 06:38:57', 'Hanifan Musliman'),
(813, '1', NULL, 1, 'roup', 'PPC & Delvcon', '202202-023', '2022-02-11', '2022-02-11 06:40:06', '2022-02-11 06:40:06', 'Hanifan Musliman'),
(814, '1', NULL, 3, 'indah', 'Accounting & Fin', '202202-024', '2022-02-08', '2022-02-11 06:41:58', '2022-02-11 06:41:58', 'Hanifan Musliman'),
(815, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-025', '2022-02-08', '2022-02-11 06:43:22', '2022-02-11 06:43:22', 'Hanifan Musliman'),
(816, '1', NULL, 2, 'nisrina', 'PPC & Delvcon', '202202-026', '2022-02-08', '2022-02-11 06:44:24', '2022-02-11 06:44:24', 'Hanifan Musliman'),
(817, '1', NULL, 34, 'dwi prasetyo', 'Engineering', '202202-027', '2022-02-09', '2022-02-11 06:45:40', '2022-02-11 06:45:40', 'Hanifan Musliman'),
(818, NULL, NULL, 6, 'anna', 'Accounting & Fin', '202202-028', '2022-02-09', '2022-02-11 06:47:09', '2022-02-11 06:47:09', 'Hanifan Musliman'),
(819, '10', NULL, 24, 'ade.s', 'QA', '202202-029', '2022-02-09', '2022-02-11 06:50:13', '2022-02-11 06:50:13', 'Hanifan Musliman'),
(820, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202202-030', '2022-02-09', '2022-02-11 06:51:53', '2022-02-11 06:51:53', 'Hanifan Musliman'),
(821, '2', NULL, 26, 'maryo', 'Marketing', '202202-031', '2022-02-10', '2022-02-11 06:53:33', '2022-02-11 06:53:33', 'Hanifan Musliman'),
(822, '3', NULL, 27, 'maryo', 'Marketing', '202202-031', '2022-02-10', '2022-02-11 06:54:27', '2022-02-11 06:54:27', 'Hanifan Musliman'),
(823, '1', NULL, 7, 'agung', 'Accounting & Fin', '202202-032', '2022-02-08', '2022-02-11 06:59:41', '2022-02-11 06:59:41', 'Hanifan Musliman'),
(824, '1', NULL, 33, 'dwi s', 'Production', '202202-033', '2022-02-08', '2022-02-11 07:01:27', '2022-02-11 07:01:27', 'Hanifan Musliman'),
(825, '10', NULL, 24, 'Firmansyah', 'QA', '202202-08', '2022-02-11', '2022-02-15 05:38:25', '2022-02-15 05:38:25', 'Fathur Rahmansyah'),
(826, '10', NULL, 24, 'Sarmilih', 'Production', '202202-09', '2022-02-11', '2022-02-15 05:40:04', '2022-02-15 05:40:04', 'Fathur Rahmansyah'),
(827, '1', NULL, 2, 'Nisrina (PKL)', 'PPC & Delvcon', '202202-10', '2022-02-14', '2022-02-15 05:41:36', '2022-02-15 05:41:36', 'Fathur Rahmansyah'),
(828, '10', NULL, 24, 'Rubadi', 'QA', '202202-11', '2022-02-14', '2022-02-15 05:42:22', '2022-02-15 05:42:22', 'Fathur Rahmansyah'),
(829, '15', NULL, 25, 'Rubadi', 'QA', '202202-11', '2022-02-14', '2022-02-15 05:42:52', '2022-02-15 05:42:52', 'Fathur Rahmansyah'),
(830, '10', NULL, 24, 'Aditya', 'Inventory Management', '202202-12', '2022-02-14', '2022-02-15 05:43:31', '2022-02-15 05:43:31', 'Fathur Rahmansyah'),
(831, '1', NULL, 7, 'M Ghufron', 'QA', '202202-14', '2022-02-15', '2022-02-15 05:44:08', '2022-02-15 05:44:08', 'Fathur Rahmansyah'),
(832, '1', NULL, 7, 'Jaenal', 'GA', '202202-15', '2022-02-15', '2022-02-16 06:21:10', '2022-02-16 06:21:10', 'Fathur Rahmansyah'),
(833, '2', NULL, 4, 'Anna', 'Accounting & Fin', '202202-16', '2022-02-15', '2022-02-16 06:21:43', '2022-02-16 06:21:43', 'Fathur Rahmansyah'),
(834, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202202-17', '2022-02-15', '2022-02-16 06:22:52', '2022-02-16 06:22:52', 'Fathur Rahmansyah'),
(835, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202202-17', '2022-02-15', '2022-02-16 06:23:15', '2022-02-16 06:23:15', 'Fathur Rahmansyah'),
(836, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202202-18', '2022-02-16', '2022-02-16 06:23:45', '2022-02-16 06:23:45', 'Fathur Rahmansyah'),
(837, '1', NULL, 2, 'Nisrina (PKL)', 'PPC & Delvcon', '202202-19', '2022-02-16', '2022-02-16 06:24:19', '2022-02-16 06:24:19', 'Fathur Rahmansyah'),
(838, '1', NULL, 7, 'Silvia', 'Marketing', '202202-20', '2022-02-16', '2022-02-16 06:24:56', '2022-02-16 06:24:56', 'Fathur Rahmansyah'),
(839, '1', NULL, 34, 'Harsono', 'QA', '202202-21', '2022-02-16', '2022-02-16 06:25:32', '2022-02-16 06:25:32', 'Fathur Rahmansyah'),
(840, '11', NULL, 24, 'Aditya', 'PPC & Delvcon', '202202-22', '2022-02-16', '2022-02-16 06:26:18', '2022-02-16 06:26:18', 'Fathur Rahmansyah'),
(841, '15', NULL, 24, 'Nimun', 'Production', '202202-23', '2022-02-16', '2022-02-16 06:26:50', '2022-02-16 06:26:50', 'Fathur Rahmansyah'),
(842, '10', NULL, 24, 'Ikhlas', 'QA', '202202-24', '2022-02-16', '2022-02-17 00:08:54', '2022-02-17 00:08:54', 'Fathur Rahmansyah'),
(843, '1', NULL, 1, 'Nisrina (PKL)', 'PPC & Delvcon', '202202-25', '2022-02-16', '2022-02-17 00:09:28', '2022-02-17 00:09:28', 'Fathur Rahmansyah'),
(844, '10', NULL, 24, 'Rikan', 'Inventory Management', '202202-26', '2022-02-17', '2022-02-18 00:09:37', '2022-02-18 00:09:37', 'Fathur Rahmansyah'),
(845, '10', NULL, 24, 'adit', 'Inventory Management', '202202-27', '2022-02-18', '2022-02-21 00:39:40', '2022-02-21 00:39:40', 'Fariz (PKL)'),
(846, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-28', '2022-02-18', '2022-02-21 00:41:39', '2022-02-21 00:41:39', 'Fariz (PKL)'),
(847, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-29', '2022-02-18', '2022-02-21 00:42:52', '2022-02-21 00:42:52', 'Fariz (PKL)'),
(848, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-29', '2022-02-18', '2022-02-21 00:43:55', '2022-02-21 00:43:55', 'Fariz (PKL)'),
(849, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202202-29', '2022-02-18', '2022-02-21 00:44:40', '2022-02-21 00:44:40', 'Fariz (PKL)'),
(850, '1', NULL, 5, 'ilham', 'Purchasing', '202202-30', '2022-02-21', '2022-02-22 00:32:31', '2022-02-22 00:32:31', 'Fariz (PKL)'),
(851, '10', NULL, 24, 'firman', 'QA', '202202-31', '2022-02-21', '2022-02-22 00:33:52', '2022-02-22 00:33:52', 'Fariz (PKL)'),
(852, '1', NULL, 33, 'jansen', 'QA', '202202-32', '2022-02-22', '2022-02-23 00:22:17', '2022-02-23 00:22:17', 'Fariz (PKL)'),
(853, '1', NULL, 7, 'nanda', 'Marketing', '202202-33', '2022-02-22', '2022-02-23 00:23:06', '2022-02-23 00:23:06', 'Fariz (PKL)'),
(854, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-34', '2022-02-22', '2022-02-23 00:24:50', '2022-02-23 00:24:50', 'Fariz (PKL)'),
(855, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-35', '2022-02-23', '2022-02-24 00:24:28', '2022-02-24 00:24:28', 'Fariz (PKL)'),
(856, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-36', '2022-02-23', '2022-02-24 00:25:35', '2022-02-24 00:25:35', 'Fariz (PKL)'),
(857, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-36', '2022-02-23', '2022-02-24 00:25:58', '2022-02-24 00:25:58', 'Fariz (PKL)'),
(858, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-37', '2022-02-23', '2022-02-24 00:26:46', '2022-02-24 00:26:46', 'Fariz (PKL)'),
(859, '10', NULL, 24, 'adit', 'Inventory Management', '202202-38', '2022-02-23', '2022-02-24 00:28:14', '2022-02-24 00:28:14', 'Fariz (PKL)'),
(860, '10', NULL, 24, 'puji', 'QA', '202202-39', '2022-02-24', '2022-02-25 00:24:12', '2022-02-25 00:24:12', 'Fariz (PKL)'),
(861, '10', NULL, 25, 'puji', 'QA', '202202-39', '2022-02-24', '2022-02-25 00:24:44', '2022-02-25 00:24:44', 'Fariz (PKL)'),
(862, '10', NULL, 24, 'amirudin', 'Production', '202202-40', '2022-02-24', '2022-02-25 00:26:40', '2022-02-25 00:26:40', 'Fariz (PKL)'),
(863, '2', NULL, 6, 'anna', 'Accounting & Fin', '202202-41', '2022-02-25', '2022-03-01 00:21:39', '2022-03-01 00:21:39', 'Fariz (PKL)'),
(864, '10', NULL, 24, 'firmansyah', 'QA', '202202-42', '2022-02-25', '2022-03-01 00:23:28', '2022-03-01 00:23:28', 'Fariz (PKL)'),
(865, '1', NULL, 7, 'martini', 'Accounting & Fin', '202202-43', '2022-02-25', '2022-03-01 00:25:22', '2022-03-01 00:25:22', 'Fariz (PKL)'),
(866, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-44', '2022-02-25', '2022-03-01 00:26:23', '2022-03-01 00:26:23', 'Fariz (PKL)'),
(867, '1', NULL, 16, 'yunie.p.s', 'Production', '202202-45', '2022-02-25', '2022-03-01 00:28:39', '2022-03-01 00:28:39', 'Fariz (PKL)'),
(868, '1', NULL, 34, 'aldi', 'IT', '202202-46', '2022-02-25', '2022-03-01 00:29:51', '2022-03-01 00:29:51', 'Fariz (PKL)'),
(869, '1', NULL, 7, 'nanda', 'Marketing', '202202-47', '2022-03-01', '2022-03-02 00:24:16', '2022-03-02 00:24:16', 'Fariz (PKL)'),
(870, '1', NULL, 16, 'andika Tril', 'Production', '202202-48', '2022-03-01', '2022-03-02 00:27:15', '2022-03-02 00:27:15', 'Fariz (PKL)'),
(871, '1', NULL, 7, 'nanda', 'Marketing', '202202-49', '2022-03-01', '2022-03-02 00:28:58', '2022-03-02 00:28:58', 'Fariz (PKL)'),
(872, '10', NULL, 24, 'yadi.m.', 'Production', '202202-50', '2022-03-01', '2022-03-02 00:30:46', '2022-03-02 00:30:46', 'Fariz (PKL)'),
(873, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-51', '2022-02-26', '2022-03-02 00:31:48', '2022-03-02 00:31:48', 'Fariz (PKL)'),
(874, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-51', '2022-02-26', '2022-03-02 00:32:28', '2022-03-02 00:32:28', 'Fariz (PKL)'),
(875, '1', NULL, 5, 'm.ilham', 'Purchasing', '202202-52', '2022-03-02', '2022-03-04 00:31:11', '2022-03-04 00:31:11', 'Fariz (PKL)'),
(876, '1', NULL, 7, 'afifah', 'Accounting & Fin', '202202-53', '2022-03-02', '2022-03-04 00:32:26', '2022-03-04 00:32:26', 'Fariz (PKL)'),
(877, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202202-54', '2022-03-02', '2022-03-04 00:33:26', '2022-03-04 00:33:26', 'Fariz (PKL)'),
(878, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-55', '2022-03-04', '2022-03-07 00:38:42', '2022-03-07 00:38:42', 'Fariz (PKL)'),
(879, '1', NULL, 32, 'yudi', 'Marketing', '202202-55', '2022-03-04', '2022-03-07 00:42:00', '2022-03-07 00:42:00', 'Fariz (PKL)'),
(880, '14', NULL, 26, 'nimun', 'Production', '202202-56', '2022-03-04', '2022-03-07 00:43:40', '2022-03-07 00:43:40', 'Fariz (PKL)'),
(881, '1', NULL, 7, 'QA line', 'QA', '202202-57', '2022-03-04', '2022-03-07 00:45:10', '2022-03-07 00:45:10', 'Fariz (PKL)'),
(882, '10', NULL, 24, 'QA line', 'QA', '202202-57', '2022-03-04', '2022-03-07 00:45:59', '2022-03-07 00:45:59', 'Fariz (PKL)'),
(883, '10', NULL, 25, 'QA line', 'QA', '202202-57', '2022-03-04', '2022-03-07 00:46:27', '2022-03-07 00:46:27', 'Fariz (PKL)'),
(884, '10', NULL, 24, 'Rohman', 'Production', '202202-58', '2022-03-08', '2022-03-08 01:09:39', '2022-03-08 01:09:39', 'Fariz (PKL)'),
(885, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-59', '2022-03-07', '2022-03-08 01:10:25', '2022-03-08 01:10:25', 'Fariz (PKL)'),
(886, '10', NULL, 24, 'firmansyah', 'QA', '202202-60', '2022-03-07', '2022-03-08 01:11:15', '2022-03-08 01:11:15', 'Fariz (PKL)'),
(887, '1', NULL, 7, 'silvi', 'Marketing', '202202-61', '2022-03-07', '2022-03-08 01:12:12', '2022-03-08 01:12:12', 'Fariz (PKL)'),
(888, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-62', '2022-03-07', '2022-03-08 01:14:03', '2022-03-08 01:14:03', 'Fariz (PKL)'),
(889, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-63', '2022-03-08', '2022-03-09 00:18:40', '2022-03-09 00:18:40', 'Fariz (PKL)'),
(890, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-63', '2022-03-08', '2022-03-09 00:19:05', '2022-03-09 00:19:05', 'Fariz (PKL)'),
(891, '10', NULL, 24, 'heri akbar', 'Production', '202202-64', '2022-03-08', '2022-03-09 00:21:25', '2022-03-09 00:21:25', 'Fariz (PKL)'),
(892, '2', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-65', '2022-03-08', '2022-03-09 00:22:27', '2022-03-09 00:22:27', 'Fariz (PKL)'),
(893, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-66', '2022-03-08', '2022-03-09 00:23:25', '2022-03-09 00:23:25', 'Fariz (PKL)'),
(894, '1', NULL, 16, 'QA lab', 'QA', '202202-67', '2022-03-08', '2022-03-09 00:25:30', '2022-03-09 00:25:30', 'Fariz (PKL)'),
(895, '1', NULL, 7, 'nanda', 'Marketing', '202202-68', '2022-03-10', '2022-03-11 00:22:23', '2022-03-11 00:22:23', 'Fariz (PKL)'),
(896, '2', NULL, 1, 'A. roup', 'PPC & Delvcon', '202202-69', '2022-03-10', '2022-03-11 00:23:22', '2022-03-11 00:23:22', 'Fariz (PKL)'),
(897, '10', NULL, 24, 'firmansyah', 'QA', '202202-70', '2022-03-09', '2022-03-11 00:24:20', '2022-03-11 00:24:20', 'Fariz (PKL)'),
(898, '1', NULL, 16, 'nugraha', 'Production', '202202-71', '2022-03-10', '2022-03-11 00:25:33', '2022-03-11 00:25:33', 'Fariz (PKL)'),
(899, '1', NULL, 3, 'dewi', 'Accounting & Fin', '202202-72', '2022-03-10', '2022-03-11 00:26:33', '2022-03-11 00:26:33', 'Fariz (PKL)'),
(900, '10', NULL, 24, 'amirudin', 'Production', '202202-73', '2022-03-10', '2022-03-11 00:28:17', '2022-03-11 00:28:17', 'Fariz (PKL)'),
(901, '10', NULL, 24, 'heri akbar', 'Production', '202202-74', '2022-03-10', '2022-03-14 00:24:42', '2022-03-14 00:24:42', 'Fariz (PKL)'),
(902, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-75', '2022-03-11', '2022-03-14 00:25:37', '2022-03-14 00:25:37', 'Fariz (PKL)'),
(903, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-75', '2022-03-11', '2022-03-14 00:26:30', '2022-03-14 00:26:30', 'Fariz (PKL)'),
(904, '1', NULL, 32, 'rusmono', 'Engineering', '202202-76', '2022-03-11', '2022-03-14 00:28:43', '2022-03-14 00:28:43', 'Fariz (PKL)'),
(905, '1', NULL, 7, 'martini', 'Accounting & Fin', '202202-77', '2022-03-14', '2022-03-14 00:31:19', '2022-03-14 00:31:19', 'Fariz (PKL)'),
(906, '1', NULL, 20, 'adang', 'Engineering', '202202-78', '2022-03-15', '2022-03-15 02:36:43', '2022-03-15 02:36:43', 'Fariz (PKL)'),
(907, '20', NULL, 24, 'rikan', 'Inventory Management', '202202-79', '2022-03-14', '2022-03-15 02:38:09', '2022-03-15 02:38:09', 'Fariz (PKL)'),
(908, '1', NULL, 32, 'ronaldo', 'Accounting & Fin', '202202-80', '2022-03-14', '2022-03-15 02:39:29', '2022-03-15 02:39:29', 'Fariz (PKL)'),
(909, '10', NULL, 24, 'ikhlas.r', 'QA', '202202-81', '2022-03-14', '2022-03-15 02:41:03', '2022-03-15 02:41:03', 'Fariz (PKL)'),
(910, '1', NULL, 3, 'selvi', 'Accounting & Fin', '202202-82', '2022-03-14', '2022-03-15 02:42:23', '2022-03-15 02:42:23', 'Fariz (PKL)'),
(911, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-83', '2022-03-14', '2022-03-15 02:43:11', '2022-03-15 02:43:11', 'Fariz (PKL)'),
(912, '1', NULL, 1, 'nursaidah', 'Accounting & Fin', '202202-84', '2022-03-15', '2022-03-15 02:45:04', '2022-03-15 02:45:04', 'Fariz (PKL)'),
(913, '1', NULL, 3, 'nursaidah', 'Accounting & Fin', '202202-84', '2022-03-15', '2022-03-15 02:45:42', '2022-03-15 02:45:42', 'Fariz (PKL)'),
(914, '10', NULL, 24, 'syahrul', 'Inventory Management', '202202-85', '2022-03-15', '2022-03-15 02:47:17', '2022-03-15 02:47:17', 'Fariz (PKL)'),
(915, '1', NULL, 12, 'fathur', 'IT', '202202-86', '2022-03-16', '2022-03-17 00:41:57', '2022-03-17 00:41:57', 'Fariz (PKL)'),
(916, '10', NULL, 26, 'nimun', 'Production', '202202-87', '2022-03-10', '2022-03-17 00:44:52', '2022-03-17 00:44:52', 'Fariz (PKL)'),
(917, '10', NULL, 24, 'ikhlas', 'QA', '202202-88', '2022-03-16', '2022-03-17 00:45:55', '2022-03-17 00:45:55', 'Fariz (PKL)'),
(918, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-89', '2022-03-16', '2022-03-17 00:47:16', '2022-03-17 00:47:16', 'Fariz (PKL)'),
(919, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-90', '2022-03-15', '2022-03-17 00:47:59', '2022-03-17 00:47:59', 'Fariz (PKL)'),
(920, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-91', '2022-03-11', '2022-03-18 00:17:01', '2022-03-18 00:17:01', 'Fariz (PKL)'),
(921, '1', NULL, 5, 'ilham', 'Purchasing', '202202-92', '2022-03-17', '2022-03-18 00:19:00', '2022-03-18 00:19:00', 'Fariz (PKL)'),
(922, '10', NULL, 24, 'syahrul', 'Inventory Management', '202202-93', '2022-03-17', '2022-03-18 00:19:57', '2022-03-18 00:19:57', 'Fariz (PKL)'),
(923, '1', NULL, 34, 'nanda', 'Marketing', '202202-94', '2022-03-18', '2022-03-18 00:21:14', '2022-03-18 00:21:14', 'Fariz (PKL)'),
(924, '1', NULL, 7, 'silvia', 'Marketing', '202202-95', '2022-03-18', '2022-03-18 00:22:10', '2022-03-18 00:22:10', 'Fariz (PKL)'),
(925, '3', NULL, 24, 'hanif', 'IT', '202202-96', '2022-03-19', '2022-03-21 00:22:46', '2022-03-21 00:22:46', 'Fariz (PKL)'),
(926, '2', NULL, 27, 'hanif', 'IT', '202202-96', '2022-03-19', '2022-03-21 00:23:17', '2022-03-21 00:23:17', 'Fariz (PKL)'),
(927, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-97', '2022-03-21', '2022-03-21 00:24:22', '2022-03-21 00:24:22', 'Fariz (PKL)'),
(928, '1', NULL, 34, 'wahyu', 'Accounting & Fin', '202202-98', '2022-03-18', '2022-03-21 00:25:40', '2022-03-21 00:25:40', 'Fariz (PKL)'),
(929, '15', NULL, 24, 'purbadi', 'QA', '202202-99', '2022-03-18', '2022-03-21 00:27:01', '2022-03-21 00:27:01', 'Fariz (PKL)'),
(930, '10', NULL, 25, 'purbadi', 'QA', '202202-99', '2022-03-18', '2022-03-21 00:27:41', '2022-03-21 00:27:41', 'Fariz (PKL)'),
(931, '1', NULL, 16, 'shinta', 'GA', '202202-100', '2022-03-21', '2022-03-22 00:19:47', '2022-03-22 00:19:47', 'Fariz (PKL)'),
(932, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-101', '2022-03-21', '2022-03-22 00:20:41', '2022-03-22 00:20:41', 'Fariz (PKL)'),
(933, '1', NULL, 1, 'a.roup', 'PPC & Delvcon', '202202-102', '2022-03-21', '2022-03-22 00:21:37', '2022-03-22 00:21:37', 'Fariz (PKL)'),
(934, '1', NULL, 5, 'yanti', 'Accounting & Fin', '202202-103', '2022-03-23', '2022-03-23 00:29:18', '2022-03-23 00:29:18', 'Fariz (PKL)'),
(935, '10', NULL, 24, 'amirudin', 'Production', '202202-104', '2022-03-22', '2022-03-23 00:31:19', '2022-03-23 00:31:19', 'Fariz (PKL)'),
(936, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-105', '2022-03-22', '2022-03-23 00:32:15', '2022-03-23 00:32:15', 'Fariz (PKL)'),
(937, '1', NULL, 8, 'fathur', 'IT', '202202-106', '2022-03-22', '2022-03-23 00:33:09', '2022-03-23 00:33:09', 'Fariz (PKL)'),
(938, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-107', '2022-03-23', '2022-03-24 00:23:01', '2022-03-24 00:23:01', 'Fariz (PKL)'),
(939, '10', NULL, 24, 'firmansyah', 'QA', '202202-108', '2022-03-23', '2022-03-24 00:24:12', '2022-03-24 00:24:12', 'Fariz (PKL)'),
(940, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-109', '2022-03-23', '2022-03-24 00:25:46', '2022-03-24 00:25:46', 'Fariz (PKL)'),
(941, '1', NULL, 16, 'yunie', 'Production', '202202-110', '2022-03-23', '2022-03-24 00:26:39', '2022-03-24 00:26:39', 'Fariz (PKL)'),
(942, '1', NULL, 17, 'yunie', 'Production', '202202-110', '2022-03-23', '2022-03-24 00:27:37', '2022-03-24 00:27:37', 'Fariz (PKL)'),
(943, '1', NULL, 18, 'yunie', 'Production', '202202-110', '2022-03-23', '2022-03-24 00:28:10', '2022-03-24 00:28:10', 'Fariz (PKL)'),
(944, '1', NULL, 26, 'hanum', 'PPC & Delvcon', '202202-111', '2022-03-24', '2022-03-25 00:17:38', '2022-03-25 00:17:38', 'Fariz (PKL)'),
(945, '1', NULL, 7, 'nanda', 'Marketing', '202202-112', '2022-03-24', '2022-03-25 00:18:38', '2022-03-25 00:18:38', 'Fariz (PKL)'),
(946, '1', NULL, 19, 'fathur', 'IT', '202202-113', '2022-03-24', '2022-03-25 00:19:41', '2022-03-25 00:19:41', 'Fariz (PKL)'),
(947, '1', NULL, 32, 'warsito', 'Inventory Management', '202202-114', '2022-03-24', '2022-03-25 00:20:43', '2022-03-25 00:20:43', 'Fariz (PKL)'),
(948, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-115', '2022-03-24', '2022-03-25 00:21:29', '2022-03-25 00:21:29', 'Fariz (PKL)'),
(949, '1', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-116', '2022-03-25', '2022-03-28 00:24:44', '2022-03-28 00:24:44', 'Fariz (PKL)'),
(950, '1', NULL, 16, 'andika', 'Purchasing', '202202-117', '2022-03-25', '2022-03-28 00:26:55', '2022-03-28 00:26:55', 'Fariz (PKL)'),
(951, '1', NULL, 7, 'selvi', 'Accounting & Fin', '202202-118', '2022-03-25', '2022-03-28 00:28:56', '2022-03-28 00:28:56', 'Fariz (PKL)'),
(952, '1', NULL, 7, 'nanda', 'Marketing', '202202-119', '2022-03-25', '2022-03-28 00:30:00', '2022-03-28 00:30:00', 'Fariz (PKL)'),
(953, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-120', '2022-03-25', '2022-03-28 00:31:36', '2022-03-28 00:31:36', 'Fariz (PKL)'),
(954, '1', NULL, 28, 'iis s.', 'QHSE', '202202-121', '2022-03-25', '2022-03-28 00:32:42', '2022-03-28 00:32:42', 'Fariz (PKL)'),
(955, '1', NULL, 31, 'iis s.', 'QHSE', '202202-121', '2022-03-25', '2022-03-28 00:33:09', '2022-03-28 00:33:09', 'Fariz (PKL)'),
(956, '10', NULL, 24, 'aditya', 'Inventory Management', '202202-122', '2022-03-28', '2022-03-29 00:22:05', '2022-03-29 00:22:05', 'Fariz (PKL)'),
(957, '1', NULL, 14, 'hanif', 'IT', '202202-123', '2022-03-28', '2022-03-29 00:23:05', '2022-03-29 00:23:05', 'Fariz (PKL)'),
(958, '15', NULL, 24, 'wahyu', 'QA', '202202-124', '2022-03-28', '2022-03-29 00:24:01', '2022-03-29 00:24:01', 'Fariz (PKL)'),
(959, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-125', '2022-03-28', '2022-03-29 00:24:48', '2022-03-29 00:24:48', 'Fariz (PKL)'),
(960, '10', NULL, 24, 'ikhlas.r', 'QA', '202202-126', '2022-03-29', '2022-03-30 00:26:40', '2022-03-30 00:26:40', 'Fariz (PKL)'),
(961, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-127', '2022-03-29', '2022-03-30 00:27:35', '2022-03-30 00:27:35', 'Fariz (PKL)'),
(962, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-128', '2022-03-29', '2022-03-30 00:28:24', '2022-03-30 00:28:24', 'Fariz (PKL)'),
(963, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-128', '2022-03-29', '2022-03-30 00:28:52', '2022-03-30 00:28:52', 'Fariz (PKL)'),
(964, '15', NULL, 24, 'nimun', 'Production', '202202-129', '2022-03-29', '2022-03-30 00:29:58', '2022-03-30 00:29:58', 'Fariz (PKL)'),
(965, '2', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-130', '2022-03-29', '2022-03-30 00:30:34', '2022-03-30 00:30:34', 'Fariz (PKL)'),
(966, '8', NULL, 24, 'sukardi', 'Production', '202202-131', '2022-03-29', '2022-03-30 00:31:55', '2022-03-30 00:31:55', 'Fariz (PKL)'),
(967, '10', NULL, 24, 'syahrul', 'Inventory Management', '202202-132', '2022-03-30', '2022-03-31 00:23:24', '2022-03-31 00:23:24', 'Fariz (PKL)'),
(968, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-133', '2022-03-30', '2022-03-31 00:24:03', '2022-03-31 00:24:03', 'Fariz (PKL)'),
(969, '1', NULL, 5, 'ilham', 'PPC & Delvcon', '202202-134', '2022-03-30', '2022-03-31 00:27:10', '2022-03-31 00:27:10', 'Fariz (PKL)'),
(970, '1', NULL, 7, 'nanda', 'Marketing', '202202-135', '2022-03-31', '2022-04-01 00:20:32', '2022-04-01 00:20:32', 'Fariz (PKL)'),
(971, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-136', '2022-03-31', '2022-04-01 00:21:26', '2022-04-01 00:21:26', 'Fariz (PKL)'),
(972, '1', NULL, 7, 'selvi yana', 'Accounting & Fin', '202202-137', '2022-04-01', '2022-04-04 00:26:40', '2022-04-04 00:26:40', 'Fariz (PKL)'),
(973, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-138', '2022-04-01', '2022-04-04 00:27:20', '2022-04-04 00:27:20', 'Fariz (PKL)'),
(974, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-138', '2022-04-01', '2022-04-04 00:27:48', '2022-04-04 00:27:48', 'Fariz (PKL)'),
(975, '1', NULL, 7, 'riska', 'Accounting & Fin', '202202-139', '2022-04-02', '2022-04-04 00:28:45', '2022-04-04 00:28:45', 'Fariz (PKL)'),
(976, '1', NULL, 16, 'n.nugraha', 'Production', '202202-140', '2022-04-04', '2022-04-04 00:43:16', '2022-04-04 00:43:16', 'Fariz (PKL)'),
(977, '1', NULL, 19, 'n.nugraha', 'Production', '202202-140', '2022-04-04', '2022-04-04 00:43:44', '2022-04-04 00:43:44', 'Fariz (PKL)'),
(978, '1', NULL, 35, 'hendrik', 'Production', '202202-141', '2022-04-04', '2022-04-04 17:42:06', '2022-04-04 17:42:06', 'Fariz (PKL)'),
(979, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202202-142', '2022-04-04', '2022-04-04 17:43:06', '2022-04-04 17:43:06', 'Fariz (PKL)'),
(980, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-143', '2022-04-03', '2022-04-04 17:44:00', '2022-04-04 17:44:00', 'Fariz (PKL)'),
(981, '10', NULL, 24, 'firmansyah', 'QA', '202202-144', '2022-04-04', '2022-04-04 17:45:30', '2022-04-04 17:45:30', 'Fariz (PKL)'),
(982, '1', NULL, 36, 'yudi.p', 'HRD', '202202-145', '2022-04-04', '2022-04-04 18:17:24', '2022-04-04 18:17:24', 'Fariz (PKL)'),
(983, '1', NULL, 7, 'nanda', 'Marketing', '202202-146', '2022-04-05', '2022-04-05 17:20:17', '2022-04-05 17:20:17', 'Fariz (PKL)'),
(984, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-147', '2022-04-05', '2022-04-05 17:21:01', '2022-04-05 17:21:01', 'Fariz (PKL)'),
(985, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202202-148', '2022-04-06', '2022-04-06 17:19:38', '2022-04-06 17:19:38', 'Fariz (PKL)'),
(986, '10', NULL, 24, 'firmansyah', 'QA', '202202-149', '2022-04-06', '2022-04-06 17:20:28', '2022-04-06 17:20:28', 'Fariz (PKL)'),
(987, '1', NULL, 5, 'naomi', 'Purchasing', '202202-150', '2022-04-06', '2022-04-06 17:21:29', '2022-04-06 17:21:29', 'Fariz (PKL)'),
(988, '1', NULL, 32, 'rikson', 'Marketing', '202202-151', '2022-04-06', '2022-04-06 17:22:32', '2022-04-06 17:22:32', 'Fariz (PKL)'),
(989, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-152', '2022-04-04', '2022-04-06 17:24:58', '2022-04-06 17:24:58', 'Fariz (PKL)'),
(990, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202202-153', '2022-04-07', '2022-04-07 17:21:09', '2022-04-07 17:21:09', 'Fariz (PKL)'),
(991, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202202-153', '2022-04-07', '2022-04-07 17:21:30', '2022-04-07 17:21:30', 'Fariz (PKL)'),
(992, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202202-154', '2022-04-07', '2022-04-07 17:22:28', '2022-04-07 17:22:28', 'Fariz (PKL)'),
(993, '15', NULL, 24, 'amirudin', 'Production', '202202-155', '2022-04-07', '2022-04-07 17:23:32', '2022-04-07 17:23:32', 'Fariz (PKL)'),
(994, '10', NULL, 24, 'puji', 'QA', '202202-155', '2022-04-08', '2022-04-10 17:23:24', '2022-04-10 17:23:24', 'Fariz (PKL)'),
(995, '10', NULL, 25, 'puji', 'QA', '202202-155', '2022-04-08', '2022-04-10 17:23:48', '2022-04-10 17:23:48', 'Fariz (PKL)'),
(996, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202202-156', '2022-04-08', '2022-04-10 17:24:25', '2022-04-10 17:24:25', 'Fariz (PKL)'),
(997, '1', NULL, 4, 'anna', 'Accounting & Fin', '202202-157', '2022-04-08', '2022-04-10 17:25:17', '2022-04-10 17:25:17', 'Fariz (PKL)'),
(998, '1', NULL, 6, 'anna', 'Accounting & Fin', '202202-157', '2022-04-08', '2022-04-10 17:25:41', '2022-04-10 17:25:41', 'Fariz (PKL)'),
(999, '1', NULL, 7, 'yati', 'Accounting & Fin', '202202-158', '2022-04-08', '2022-04-10 17:27:13', '2022-04-10 17:27:13', 'Fariz (PKL)'),
(1000, '1', NULL, 7, 'firmansyah', 'QA', '202202-159', '2022-04-08', '2022-04-10 17:29:05', '2022-04-10 17:29:05', 'Fariz (PKL)'),
(1001, '10', NULL, 24, 'firmansyah', 'QA', '202202-159', '2022-04-08', '2022-04-10 17:29:32', '2022-04-10 17:29:32', 'Fariz (PKL)'),
(1002, '1', NULL, 7, 'nanda', 'Marketing', '202204-001', '2022-04-08', '2022-04-10 17:30:24', '2022-04-10 17:30:24', 'Fariz (PKL)'),
(1003, '10', NULL, 24, 'syahrul', 'Inventory Management', '202204-002', '2022-04-12', '2022-04-11 17:25:34', '2022-04-11 17:25:34', 'Fariz (PKL)'),
(1004, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-003', '2022-04-11', '2022-04-11 17:26:11', '2022-04-11 17:26:11', 'Fariz (PKL)'),
(1005, '1', NULL, 5, 'yanti', 'Accounting & Fin', '202204-004', '2022-04-11', '2022-04-11 17:27:02', '2022-04-11 17:27:02', 'Fariz (PKL)'),
(1006, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202204-005', '2022-04-12', '2022-04-12 17:34:29', '2022-04-12 17:34:29', 'Fariz (PKL)'),
(1007, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202204-005', '2022-04-12', '2022-04-12 17:35:19', '2022-04-12 17:35:19', 'Fariz (PKL)'),
(1008, '2', NULL, 27, 'maryo', 'PPC & Delvcon', '202204-005', '2022-04-12', '2022-04-12 17:35:50', '2022-04-12 17:35:50', 'Fariz (PKL)'),
(1009, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-006', '2022-04-12', '2022-04-12 17:36:40', '2022-04-12 17:36:40', 'Fariz (PKL)'),
(1010, '10', NULL, 24, 'rikon', 'Inventory Management', '202204-007', '2022-04-12', '2022-04-12 17:37:44', '2022-04-12 17:37:44', 'Fariz (PKL)'),
(1011, '1', NULL, 32, 'rikon', 'Inventory Management', '202204-007', '2022-04-12', '2022-04-12 17:38:22', '2022-04-12 17:38:22', 'Fariz (PKL)'),
(1012, '1', NULL, 32, 'aditya', 'Inventory Management', '202204-008', '2022-04-12', '2022-04-12 17:39:38', '2022-04-12 17:39:38', 'Fariz (PKL)'),
(1013, '10', NULL, 24, 'syahrul', 'Inventory Management', '202204-009', '2022-04-13', '2022-04-14 00:29:54', '2022-04-14 00:29:54', 'Fariz (PKL)'),
(1014, '1', NULL, 7, 'nanda', 'Marketing', '202204-010', '2022-04-13', '2022-04-14 00:30:39', '2022-04-14 00:30:39', 'Fariz (PKL)'),
(1015, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-011', '2022-04-14', '2022-04-18 00:29:31', '2022-04-18 00:29:31', 'Fariz (PKL)'),
(1016, '20', NULL, 25, 'purbadi', 'QA', '202204-012', '2022-04-14', '2022-04-18 00:30:53', '2022-04-18 00:30:53', 'Fariz (PKL)'),
(1017, '10', NULL, 24, 'purbadi', 'QA', '202204-012', '2022-04-14', '2022-04-18 00:31:28', '2022-04-18 00:31:28', 'Fariz (PKL)'),
(1018, '1', NULL, 16, 'alviian', 'QA', '202204-013', '2022-04-14', '2022-04-18 00:32:40', '2022-04-18 00:32:40', 'Fariz (PKL)'),
(1019, '1', NULL, 19, 'alviian', 'QA', '202204-013', '2022-04-14', '2022-04-18 00:33:19', '2022-04-18 00:33:19', 'Fariz (PKL)'),
(1020, '2', NULL, 26, 'maryo', 'PPC & Delvcon', '202204-014', '2022-04-17', '2022-04-19 00:22:40', '2022-04-19 00:22:40', 'Fariz (PKL)'),
(1021, '3', NULL, 27, 'maryo', 'PPC & Delvcon', '202204-014', '2022-04-17', '2022-04-19 00:23:03', '2022-04-19 00:23:03', 'Fariz (PKL)'),
(1022, '1', NULL, 7, 'selvi', 'Accounting & Fin', '202204-015', '2022-04-18', '2022-04-19 00:26:44', '2022-04-19 00:26:44', 'Fariz (PKL)'),
(1023, '12', NULL, 24, 'amirudin', 'Production', '202204-016', '2022-04-18', '2022-04-19 00:29:09', '2022-04-19 00:29:09', 'Fariz (PKL)'),
(1024, '1', NULL, 7, 'riska', 'Accounting & Fin', '202204-017', '2022-04-18', '2022-04-18 17:31:44', '2022-04-18 17:31:44', 'Fariz (PKL)'),
(1025, '10', NULL, 24, 'firmansyah', 'QA', '202204-018', '2022-04-18', '2022-04-18 17:32:34', '2022-04-18 17:32:34', 'Fariz (PKL)'),
(1026, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202204-019', '2022-04-18', '2022-04-18 17:33:50', '2022-04-18 17:33:50', 'Fariz (PKL)'),
(1027, '2', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-020', '2022-04-18', '2022-04-18 17:36:09', '2022-04-18 17:36:09', 'Fariz (PKL)'),
(1028, '10', NULL, 24, 'rahman.s', 'Engineering', '202204-021', '2022-04-18', '2022-04-18 17:37:10', '2022-04-18 17:37:10', 'Fariz (PKL)'),
(1029, '1', NULL, 7, 'nanda', 'Marketing', '202204-022', '2022-04-19', '2022-04-19 17:21:34', '2022-04-19 17:21:34', 'Fariz (PKL)'),
(1030, '1', NULL, 5, 'ilham', 'Purchasing', '202204-023', '2022-04-19', '2022-04-19 17:22:20', '2022-04-19 17:22:20', 'Fariz (PKL)'),
(1031, '1', NULL, 1, 'maryo', 'PPC & Delvcon', '202204-024', '2022-04-21', '2022-04-20 17:19:44', '2022-04-20 17:19:44', 'Fariz (PKL)'),
(1032, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202204-025', '2022-04-20', '2022-04-20 17:20:34', '2022-04-20 17:20:34', 'Fariz (PKL)'),
(1033, '10', NULL, 24, 'firmansyah', 'QA', '202204-026', '2022-04-21', '2022-04-21 17:22:57', '2022-04-21 17:22:57', 'Fariz (PKL)'),
(1034, '1', NULL, 7, 'andika', 'Inventory Management', '202204-026', '2022-04-21', '2022-04-21 17:24:31', '2022-04-21 17:24:31', 'Fariz (PKL)'),
(1035, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-028', '2022-04-21', '2022-04-21 17:26:05', '2022-04-21 17:26:05', 'Fariz (PKL)'),
(1036, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202204-028', '2022-04-21', '2022-04-21 17:26:44', '2022-04-21 17:26:44', 'Fariz (PKL)'),
(1037, '10', NULL, 24, 'kusmaji', 'Inventory Management', '202204-029', '2022-04-21', '2022-04-21 17:28:23', '2022-04-21 17:28:23', 'Fariz (PKL)'),
(1038, '1', NULL, 7, 'fathur', 'IT', '202204-030', '2022-04-23', '2022-04-24 17:21:53', '2022-04-24 17:21:53', 'Fariz (PKL)'),
(1039, '15', NULL, 24, 'ghufran', 'QA', '202204-031', '2022-04-22', '2022-04-24 17:24:33', '2022-04-24 17:24:33', 'Fariz (PKL)'),
(1040, '2', NULL, 1, 'abdul roup', 'PPC & Delvcon', '202204-032', '2022-04-22', '2022-04-24 17:25:33', '2022-04-24 17:25:33', 'Fariz (PKL)'),
(1041, '10', NULL, 24, 'heri akbar', 'Inventory Management', '202204-033', '2022-04-22', '2022-04-24 17:26:34', '2022-04-24 17:26:34', 'Fariz (PKL)'),
(1042, '1', NULL, 7, 'munuk', 'Marketing', '202204-034', '2022-04-22', '2022-04-24 17:27:40', '2022-04-24 17:27:40', 'Fariz (PKL)'),
(1043, '10', NULL, 24, 'nimun', 'Purchasing', '202204-035', '2022-04-27', '2022-04-26 19:24:36', '2022-04-26 19:24:36', 'Fariz (PKL)'),
(1044, NULL, NULL, 1, NULL, 'Accounting & Fin', '202204-036', '2022-04-26', '2022-04-26 19:25:25', '2022-04-26 19:25:25', 'Fariz (PKL)'),
(1045, '1', NULL, 1, 'hanum', 'PPC & Delvcon', '202204-036', '2022-04-26', '2022-04-26 19:26:29', '2022-04-26 19:26:29', 'Fariz (PKL)'),
(1046, '1', NULL, 2, 'hanum', 'PPC & Delvcon', '202204-037', '2022-04-26', '2022-04-26 19:27:14', '2022-04-26 19:27:14', 'Fariz (PKL)'),
(1047, '1', NULL, 1, 'endro p.w', 'Engineering', '202204-038', '2022-04-20', '2022-04-26 19:28:56', '2022-04-26 19:28:56', 'Fariz (PKL)'),
(1048, '10', NULL, 24, 'syahrul', 'Inventory Management', '202204-039', '2022-04-27', '2022-04-26 19:29:42', '2022-04-26 19:29:42', 'Fariz (PKL)'),
(1049, '2', NULL, 6, 'anna', 'Accounting & Fin', '202204-040', '2022-04-26', '2022-04-26 19:31:23', '2022-04-26 19:31:23', 'Fariz (PKL)'),
(1050, '1', NULL, 7, 'Nanda', 'Marketing', '202204-041', '2022-04-28', '2022-05-09 17:08:53', '2022-05-09 17:08:53', 'Fathur Rahmansyah'),
(1051, '1', NULL, 20, 'Adang', 'Engineering', '202205-001', '2022-05-09', '2022-05-09 17:12:04', '2022-05-09 17:12:04', 'Fathur Rahmansyah'),
(1052, '1', NULL, 21, 'Adang', 'Engineering', '202205-001', '2022-05-09', '2022-05-09 17:12:32', '2022-05-09 17:12:32', 'Fathur Rahmansyah'),
(1053, '1', NULL, 22, 'Adang', 'Engineering', '202205-001', '2022-05-09', '2022-05-09 17:12:50', '2022-05-09 17:12:50', 'Fathur Rahmansyah'),
(1054, '1', NULL, 23, 'Adang', 'Engineering', '202205-001', '2022-05-09', '2022-05-09 17:13:31', '2022-05-09 17:13:31', 'Fathur Rahmansyah'),
(1055, '1', NULL, 16, 'Rikson', 'Marketing', '202205-002', '2022-05-09', '2022-05-09 17:14:12', '2022-05-09 17:14:12', 'Fathur Rahmansyah'),
(1056, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202205-003', '2022-05-09', '2022-05-09 17:15:06', '2022-05-09 17:15:06', 'Fathur Rahmansyah'),
(1057, '10', NULL, 24, 'Ikhlas', 'QA', '202205-005', '2022-05-09', '2022-05-09 17:15:46', '2022-05-09 17:15:46', 'Fathur Rahmansyah'),
(1058, '1', NULL, 32, 'Nimun', 'Production', '202205-006', '2022-05-10', '2022-05-10 17:40:00', '2022-05-10 17:40:00', 'Hanifan Musliman'),
(1059, '1', NULL, 2, 'Hanum', 'Production', '202205-008', '2022-05-10', '2022-05-10 17:41:10', '2022-05-10 17:41:10', 'Hanifan Musliman'),
(1060, '1', NULL, 35, 'Henry', 'Production', '202205-009', '2022-05-11', '2022-05-10 17:51:07', '2022-05-10 17:51:07', 'Hanifan Musliman'),
(1061, '1', NULL, 16, 'A Fauzan', 'Production', '202205-010', '2022-05-11', '2022-05-10 20:33:10', '2022-05-10 20:33:10', 'Hanifan Musliman'),
(1062, '1', NULL, 19, 'A Fauzan', 'Production', '202205-011', '2022-05-11', '2022-05-10 20:33:42', '2022-05-10 20:33:42', 'Hanifan Musliman'),
(1063, '1', NULL, 17, 'A Fauzan', 'Production', '202205-010', '2022-05-11', '2022-05-10 20:34:29', '2022-05-10 20:34:29', 'Hanifan Musliman'),
(1064, '1', NULL, 18, 'A Fauzan', 'Production', '202205-012', '2022-05-11', '2022-05-10 20:34:59', '2022-05-10 20:34:59', 'Hanifan Musliman'),
(1065, '1', NULL, 32, 'Chandra', 'QA', '202205-013', '2022-05-11', '2022-05-11 00:32:56', '2022-05-11 00:32:56', 'Hanifan Musliman'),
(1066, '1', NULL, 16, 'Chandra', 'QA', '202205-014', '2022-05-11', '2022-05-11 00:33:57', '2022-05-11 00:33:57', 'Hanifan Musliman'),
(1067, '1', NULL, 15, 'Chandra', 'QA', '202205-014', '2022-05-11', '2022-05-11 00:35:06', '2022-05-11 00:35:06', 'Hanifan Musliman'),
(1068, '1', NULL, 17, 'Chandra', 'QA', '202205-013', '2022-05-11', '2022-05-11 00:35:38', '2022-05-11 00:35:38', 'Hanifan Musliman'),
(1069, '10', NULL, 24, 'Kertas kanban lokal', 'Inventory Management', '202205-014', '2022-05-11', '2022-05-12 00:33:08', '2022-05-12 00:33:08', 'Hanifan Musliman'),
(1070, '1', NULL, 5, 'Ilham', 'Production', '202205-015', '2022-05-12', '2022-05-12 05:40:37', '2022-05-12 05:40:37', 'Hanifan Musliman'),
(1071, '1', NULL, 7, 'Silvia', 'Marketing', '202205-016', '2022-05-12', '2022-05-12 05:43:51', '2022-05-12 05:43:51', 'Hanifan Musliman'),
(1072, '1', NULL, 2, 'Hanum', 'PPC & Delvcon', '202205-017', '2022-05-12', '2022-05-12 05:46:01', '2022-05-12 05:46:01', 'Hanifan Musliman'),
(1073, '1', NULL, 1, 'Hanum', 'PPC & Delvcon', '202205-017', '2022-05-12', '2022-05-12 05:46:53', '2022-05-12 05:46:53', 'Hanifan Musliman'),
(1074, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202205-018', '2022-05-12', '2022-05-12 06:23:14', '2022-05-12 06:23:14', 'Hanifan Musliman'),
(1075, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202205-018', '2022-05-12', '2022-05-12 06:23:51', '2022-05-12 06:23:51', 'Hanifan Musliman'),
(1076, '10', NULL, 24, 'Agus', 'QA', '202205-019', '2022-05-12', '2022-05-12 06:40:20', '2022-05-12 06:40:20', 'Hanifan Musliman'),
(1077, '10', NULL, 25, 'Agus', 'QA', '202205-019', '2022-05-12', '2022-05-12 06:41:08', '2022-05-12 06:41:08', 'Hanifan Musliman'),
(1078, '1', NULL, 2, 'Hanum', 'PPC & Delvcon', '202205-020', '2022-05-12', '2022-05-12 07:02:40', '2022-05-12 07:02:40', 'Hanifan Musliman'),
(1079, '1', NULL, 1, 'Hanum', 'PPC & Delvcon', '202205-020', '2022-05-12', '2022-05-12 07:03:31', '2022-05-12 07:03:31', 'Hanifan Musliman'),
(1080, '1', NULL, 16, 'Yunie', 'Production', '202205-021', '2022-05-17', '2022-05-17 02:24:14', '2022-05-17 02:24:14', 'Hanifan Musliman'),
(1081, '10', NULL, 24, 'Nimun', 'Production', NULL, '2022-05-13', '2022-05-17 02:26:44', '2022-05-17 02:26:44', 'Hanifan Musliman'),
(1082, '10', NULL, 24, 'Firmansyah', 'QA', '202205-023', '2022-05-17', '2022-05-17 03:52:59', '2022-05-17 03:52:59', 'Hanifan Musliman'),
(1083, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202205-024', '2022-05-17', '2022-05-17 05:44:36', '2022-05-17 05:44:36', 'Hanifan Musliman'),
(1084, '1', NULL, 16, 'Husni', 'Production', '202205-024', '2022-05-17', '2022-05-18 00:51:47', '2022-05-18 00:51:47', 'Hanifan Musliman'),
(1085, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202205-025', '2022-05-18', '2022-05-18 05:39:50', '2022-05-18 05:39:50', 'Hanifan Musliman'),
(1086, '10', NULL, 25, 'Ghufron', 'QA', '202205-026', '2022-05-18', '2022-05-18 05:40:43', '2022-05-18 05:40:43', 'Hanifan Musliman'),
(1087, '10', NULL, 24, 'Ghufron', 'QA', '202205-026', '2022-05-18', '2022-05-18 05:41:49', '2022-05-18 05:41:49', 'Hanifan Musliman'),
(1088, '1', NULL, 2, 'CF226A Black', 'PPC & Delvcon', '202205-027', '2022-05-18', '2022-05-18 05:44:01', '2022-05-18 05:44:01', 'Hanifan Musliman'),
(1089, '15', NULL, 24, 'Kusmary', 'Production', '202205-028', '2022-05-18', '2022-05-18 06:54:24', '2022-05-18 06:54:24', 'Hanifan Musliman'),
(1090, '1', NULL, 17, 'Adika', 'Inventory Management', '202205-030', '2022-05-20', '2022-05-23 01:32:56', '2022-05-23 01:32:56', 'Hanifan Musliman'),
(1091, '1', NULL, 16, 'Adika', 'Inventory Management', '202205-030', '2022-05-20', '2022-05-23 01:34:08', '2022-05-23 01:34:08', 'Hanifan Musliman'),
(1092, '1', NULL, 18, 'Adika', 'Inventory Management', '202205-030', '2022-05-20', '2022-05-23 01:34:45', '2022-05-23 01:34:45', 'Hanifan Musliman'),
(1093, '1', NULL, 19, 'Adika', 'Inventory Management', '202205-030', '2022-05-20', '2022-05-23 01:35:02', '2022-05-23 01:35:02', 'Hanifan Musliman'),
(1094, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202205-029', '2022-05-23', '2022-05-23 02:48:05', '2022-05-23 02:48:05', 'Hanifan Musliman'),
(1095, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202205-039', '2022-05-20', '2022-05-23 02:48:47', '2022-05-23 02:48:47', 'Hanifan Musliman'),
(1096, '1', NULL, 4, 'Yanti', 'Accounting & Fin', '202205-038', '2022-05-20', '2022-05-23 05:40:38', '2022-05-23 05:40:38', 'Hanifan Musliman'),
(1097, '1', NULL, 34, 'Andiko', 'PPC & Delvcon', '202205-037', '2022-05-20', '2022-05-23 05:42:23', '2022-05-23 05:42:23', 'Hanifan Musliman'),
(1098, '1', NULL, 4, 'Yanti', 'Accounting & Fin', '202205-038', '2022-05-20', '2022-05-24 04:01:48', '2022-05-24 04:01:48', 'Hanifan Musliman'),
(1099, '1', NULL, 17, 'Husni', 'Production', '202205-036', '2022-05-19', '2022-05-24 04:03:09', '2022-05-24 04:03:09', 'Hanifan Musliman'),
(1100, '1', NULL, 19, 'Husni', 'Production', '202205-036', '2022-05-19', '2022-05-24 04:03:40', '2022-05-24 04:03:40', 'Hanifan Musliman'),
(1101, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202205-035', '2022-05-20', '2022-05-24 04:05:00', '2022-05-24 04:05:00', 'Hanifan Musliman'),
(1102, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202205-035', '2022-05-19', '2022-05-24 04:05:35', '2022-05-24 04:05:35', 'Hanifan Musliman'),
(1103, '1', NULL, 7, 'Nanda', 'Marketing', '202205-034', '2022-05-19', '2022-05-24 04:06:15', '2022-05-24 04:06:15', 'Hanifan Musliman'),
(1104, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202205-033', '2022-05-19', '2022-05-24 04:06:52', '2022-05-24 04:06:52', 'Hanifan Musliman'),
(1105, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202205-031', '2022-05-23', '2022-05-24 04:09:03', '2022-05-24 04:09:03', 'Hanifan Musliman'),
(1106, '1', NULL, 16, 'Adika', 'Inventory Management', '202205-040', '2022-05-19', '2022-05-24 04:09:43', '2022-05-24 04:09:43', 'Hanifan Musliman'),
(1107, '1', NULL, 18, 'Adika', 'Inventory Management', '202205-040', '2022-05-19', '2022-05-24 04:10:49', '2022-05-24 04:10:49', 'Hanifan Musliman'),
(1108, '1', NULL, 19, 'Adika', 'Inventory Management', '202205-040', '2022-05-19', '2022-05-24 04:11:37', '2022-05-24 04:11:37', 'Hanifan Musliman'),
(1109, '1', NULL, 17, 'Adika', 'Inventory Management', '202205-040', '2022-05-19', '2022-05-24 04:12:20', '2022-05-24 04:12:20', 'Hanifan Musliman'),
(1110, '12', NULL, 24, 'Ghufron', 'QA', '202205-042', '2022-05-23', '2022-05-24 04:13:28', '2022-05-24 04:13:28', 'Hanifan Musliman'),
(1111, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202205-047', '2022-05-23', '2022-05-24 04:14:19', '2022-05-24 04:14:19', 'Hanifan Musliman'),
(1112, '15', NULL, 24, 'Agus', 'QA', '202205-046', '2022-05-23', '2022-05-24 04:15:32', '2022-05-24 04:15:32', 'Hanifan Musliman'),
(1113, '5', NULL, 25, 'Agus', 'QA', '202205-046', '2022-05-23', '2022-05-24 04:16:09', '2022-05-24 04:16:09', 'Hanifan Musliman'),
(1114, '1', NULL, 7, 'Ghufron', 'QA', '202205-044', '2022-05-24', '2022-05-24 04:17:24', '2022-05-24 04:17:24', 'Hanifan Musliman'),
(1115, '1', NULL, 7, 'Ghufron', 'QA', '202205-044', '2022-05-24', '2022-05-24 04:20:14', '2022-05-24 04:20:14', 'Hanifan Musliman'),
(1116, '10', NULL, 24, 'Nimun', 'Production', '202205-043', '2022-05-24', '2022-05-24 04:21:51', '2022-05-24 04:21:51', 'Hanifan Musliman'),
(1117, '10', NULL, 24, 'Sukardi', 'Production', '202205-045', '2022-05-24', '2022-05-24 04:22:36', '2022-05-24 04:22:36', 'Hanifan Musliman'),
(1118, '1', NULL, 13, 'Hanif', 'IT', '202205-041', '2022-05-23', '2022-05-24 04:23:10', '2022-05-24 04:23:10', 'Hanifan Musliman'),
(1119, '1', NULL, 4, 'Anna', 'Accounting & Fin', '202205-048', '2022-05-23', '2022-05-24 04:23:47', '2022-05-24 04:23:47', 'Hanifan Musliman'),
(1120, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202205-048', '2022-05-23', '2022-05-24 04:24:17', '2022-05-24 04:24:17', 'Hanifan Musliman'),
(1121, '1', NULL, 34, 'Fuji', 'Inventory Management', '202205-049', '2022-05-24', '2022-05-25 01:35:19', '2022-05-25 01:35:19', 'Hanifan Musliman'),
(1122, '1', NULL, 7, 'Nanda', 'Marketing', '202205-050', '2022-05-24', '2022-05-25 01:38:54', '2022-05-25 01:38:54', 'Hanifan Musliman'),
(1123, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202205-051', '2022-05-24', '2022-05-25 01:39:36', '2022-05-25 01:39:36', 'Hanifan Musliman'),
(1124, '1', NULL, 7, 'Yati', 'Accounting & Fin', '202205-053', '2022-05-25', '2022-05-25 07:22:42', '2022-05-25 07:22:42', 'Hanifan Musliman'),
(1125, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202205-052', '2022-05-25', '2022-05-25 07:23:21', '2022-05-25 07:23:21', 'Hanifan Musliman'),
(1126, '1', NULL, 1, 'Agus', 'PPC & Delvcon', '202205-053', '2022-05-25', '2022-05-27 01:19:33', '2022-05-27 01:19:33', 'Hanifan Musliman'),
(1127, '1', NULL, 34, 'Restu P', 'HRD', '202205-054', '2022-05-27', '2022-05-30 04:42:26', '2022-05-30 04:42:26', 'Hanifan Musliman'),
(1128, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202205-055', '2022-05-27', '2022-05-30 04:42:59', '2022-05-30 04:42:59', 'Hanifan Musliman'),
(1129, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202205-056', '2022-05-27', '2022-05-30 04:43:40', '2022-05-30 04:43:40', 'Hanifan Musliman'),
(1130, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202205-058', '2022-05-30', '2022-05-30 04:44:40', '2022-05-30 04:44:40', 'Hanifan Musliman'),
(1131, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202205-059', '2022-05-30', '2022-05-30 04:45:19', '2022-05-30 04:45:19', 'Hanifan Musliman'),
(1132, '10', NULL, 24, 'Amirudin', 'Production', '202206-001', '2022-06-02', '2022-06-03 00:37:58', '2022-06-03 00:37:58', 'Fathur Rahmansyah'),
(1133, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-002', '2022-06-02', '2022-06-03 00:38:45', '2022-06-03 00:38:45', 'Fathur Rahmansyah'),
(1134, '10', NULL, 24, 'Heri', 'Inventory Management', '202206-003', '2022-06-02', '2022-06-03 00:39:48', '2022-06-03 00:39:48', 'Fathur Rahmansyah'),
(1135, '1', NULL, 7, 'Nanda', 'Marketing', '202206-004', '2022-06-03', '2022-06-03 00:40:44', '2022-06-03 00:40:44', 'Fathur Rahmansyah'),
(1136, '10', NULL, 24, 'Hari', 'Inventory Management', '202205-060', '2022-05-30', '2022-06-03 02:52:16', '2022-06-03 02:52:16', 'Fathur Rahmansyah'),
(1137, '1', NULL, 32, 'Sadan', 'Engineering', '202205-061', '2022-05-30', '2022-06-03 02:52:51', '2022-06-03 02:52:51', 'Fathur Rahmansyah'),
(1138, '10', NULL, 24, 'Ghufron', 'Production', '202205-063', '2022-05-31', '2022-06-03 02:53:41', '2022-06-03 02:53:41', 'Fathur Rahmansyah'),
(1139, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202205-064', '2022-05-31', '2022-06-03 02:54:52', '2022-06-03 02:54:52', 'Fathur Rahmansyah'),
(1140, '1', NULL, 7, 'Sunar', 'Accounting & Fin', '202206-005', '2022-06-03', '2022-06-03 02:56:11', '2022-06-03 02:56:11', 'Fathur Rahmansyah'),
(1141, '1', NULL, 16, 'Yunie', 'Production', '202206-006', '2022-06-02', '2022-06-03 02:56:49', '2022-06-03 02:56:49', 'Fathur Rahmansyah'),
(1142, '1', NULL, 26, 'Endro', 'PPC & Delvcon', '202206-007', '2022-06-02', '2022-06-06 00:34:28', '2022-06-06 00:34:28', 'Fathur Rahmansyah'),
(1143, '10', NULL, 24, 'Pujianto', 'QA', '202206-008', '2022-06-06', '2022-06-06 00:37:12', '2022-06-06 00:37:12', 'Fathur Rahmansyah'),
(1144, '1', NULL, 5, 'Ilham', 'Purchasing', '202206-009', '2022-06-06', '2022-06-06 00:54:15', '2022-06-06 00:54:15', 'Hanifan Musliman'),
(1145, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-010', '2022-06-06', '2022-06-06 08:02:27', '2022-06-06 08:02:27', 'Hanifan Musliman'),
(1146, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202206-011', '2022-06-06', '2022-06-06 08:05:34', '2022-06-06 08:05:34', 'Hanifan Musliman'),
(1147, '1', NULL, 26, 'Endro', 'PPC & Delvcon', '202206-012', '2022-06-06', '2022-06-06 08:06:40', '2022-06-06 08:06:40', 'Hanifan Musliman'),
(1148, '1', NULL, 1, 'Endro', 'PPC & Delvcon', '202206-012', '2022-06-06', '2022-06-06 08:07:12', '2022-06-06 08:07:12', 'Hanifan Musliman'),
(1149, '15', NULL, 24, 'Nimun', 'Production', '202206-013', '2022-06-07', '2022-06-07 06:15:34', '2022-06-07 06:15:34', 'Hanifan Musliman'),
(1150, '10', NULL, 24, 'Ikhlas', 'QA', '202206-014', '2022-06-07', '2022-06-07 06:16:16', '2022-06-07 06:16:16', 'Hanifan Musliman'),
(1151, '1', NULL, 16, 'Harsono', 'QA', '202206-015', '2022-06-07', '2022-06-07 06:16:59', '2022-06-07 06:16:59', 'Hanifan Musliman'),
(1152, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-016', '2022-06-07', '2022-06-07 06:17:40', '2022-06-07 06:17:40', 'Hanifan Musliman'),
(1153, '15', NULL, 24, 'Rikan', 'Inventory Management', '202206-016', '2022-06-07', '2022-06-08 00:58:35', '2022-06-08 00:58:35', 'Hanifan Musliman'),
(1154, '2', NULL, 26, 'Endro', 'PPC & Delvcon', '202206-017', '2022-06-08', '2022-06-08 02:23:21', '2022-06-08 02:23:21', 'Hanifan Musliman'),
(1155, '1', NULL, 16, 'Fathur', 'IT', '202206-018', '2022-06-08', '2022-06-08 02:24:01', '2022-06-08 02:24:01', 'Hanifan Musliman'),
(1156, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202206-019', '2022-06-08', '2022-06-08 06:20:28', '2022-06-08 06:20:28', 'Hanifan Musliman'),
(1157, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-020', '2022-06-08', '2022-06-08 06:21:21', '2022-06-08 06:21:21', 'Hanifan Musliman');
INSERT INTO `stok_out` (`id`, `jumlah`, `barang_name`, `barang_id`, `name`, `section`, `no_perm`, `date`, `created_at`, `updated_at`, `input_by`) VALUES
(1158, '1', NULL, 1, 'Agus', 'PPC & Delvcon', '202206-021', '2022-06-09', '2022-06-09 01:57:40', '2022-06-09 01:57:40', 'Hanifan Musliman'),
(1159, '1', NULL, 19, 'Yunie', 'Production', '202206-022', '2022-06-09', '2022-06-09 01:58:31', '2022-06-09 01:58:31', 'Hanifan Musliman'),
(1160, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202206-023', '2022-06-09', '2022-06-09 01:59:09', '2022-06-09 01:59:09', 'Hanifan Musliman'),
(1161, '1', NULL, 7, 'Nanda', 'Marketing', '202206-024', '2022-06-09', '2022-06-09 01:59:37', '2022-06-09 01:59:37', 'Hanifan Musliman'),
(1162, '1', NULL, 36, 'Tony', 'HRD', '202206-025', '2022-06-09', '2022-06-09 06:04:20', '2022-06-09 06:04:20', 'Hanifan Musliman'),
(1163, '10', NULL, 24, 'Khairul amir', 'QA', '202206-026', '2022-06-09', '2022-06-09 06:05:17', '2022-06-09 06:05:17', 'Hanifan Musliman'),
(1164, '10', NULL, 25, 'Khairul amir', 'QA', '202206-026', '2022-06-09', '2022-06-09 06:06:02', '2022-06-09 06:06:02', 'Hanifan Musliman'),
(1165, '1', NULL, 16, 'Rusmono', 'Production', '202206-027', '2022-06-09', '2022-06-09 07:33:30', '2022-06-09 07:33:30', 'Hanifan Musliman'),
(1166, '1', NULL, 19, 'Rusmono', 'Production', '202206-027', '2022-06-09', '2022-06-09 07:34:01', '2022-06-09 07:34:01', 'Hanifan Musliman'),
(1167, '1', NULL, 18, 'Rusmono', 'Production', '202206-027', '2022-06-09', '2022-06-09 07:34:45', '2022-06-09 07:34:45', 'Hanifan Musliman'),
(1168, '1', NULL, 17, 'Rusmono', 'Production', '202206-027', '2022-06-09', '2022-06-09 07:35:31', '2022-06-09 07:35:31', 'Hanifan Musliman'),
(1169, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202206-028', '2022-06-10', '2022-06-10 07:35:22', '2022-06-10 07:35:22', 'Hanifan Musliman'),
(1170, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202206-029', '2022-06-10', '2022-06-10 07:36:03', '2022-06-10 07:36:03', 'Hanifan Musliman'),
(1171, '1', NULL, 7, 'Nanda', 'Marketing', '202206-030', '2022-06-10', '2022-06-10 07:36:38', '2022-06-10 07:36:38', 'Hanifan Musliman'),
(1172, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202206-031', '2022-06-10', '2022-06-13 00:36:55', '2022-06-13 00:36:55', 'Hanifan Musliman'),
(1173, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202206-031', '2022-06-10', '2022-06-13 00:37:30', '2022-06-13 00:37:30', 'Hanifan Musliman'),
(1174, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202206-031', '2022-06-10', '2022-06-13 00:38:06', '2022-06-13 00:38:06', 'Hanifan Musliman'),
(1175, '10', NULL, 24, 'Sarmilih', 'Production', '202206-032', '2022-06-13', '2022-06-13 00:39:24', '2022-06-13 00:39:24', 'Hanifan Musliman'),
(1176, '1', NULL, 3, 'Indah', 'Accounting & Fin', '202206-033', '2022-06-13', '2022-06-13 02:48:16', '2022-06-13 02:48:16', 'Hanifan Musliman'),
(1177, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-034', '2022-06-13', '2022-06-13 02:49:44', '2022-06-13 02:49:44', 'Hanifan Musliman'),
(1178, '1', NULL, 8, 'Hanif', 'IT', '202206-035', '2022-06-13', '2022-06-13 02:50:39', '2022-06-13 02:50:39', 'Hanifan Musliman'),
(1179, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202206-036', '2022-06-13', '2022-06-14 00:22:29', '2022-06-14 00:22:29', 'Hanifan Musliman'),
(1180, '1', NULL, 18, 'Yunie', 'Production', '202206-037', '2022-06-13', '2022-06-14 00:23:47', '2022-06-14 00:23:47', 'Hanifan Musliman'),
(1181, '1', NULL, 16, 'Yunie', 'Production', '202206-037', '2022-06-13', '2022-06-14 00:24:42', '2022-06-14 00:24:42', 'Hanifan Musliman'),
(1182, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-038', '2022-06-14', '2022-06-15 03:27:09', '2022-06-15 03:27:09', 'Hanifan Musliman'),
(1183, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202206-039', '2022-06-14', '2022-06-15 03:28:16', '2022-06-15 03:28:16', 'Hanifan Musliman'),
(1184, '1', NULL, 7, 'Ghufron', 'QA', '202206-040', '2022-06-14', '2022-06-15 03:29:05', '2022-06-15 03:29:05', 'Hanifan Musliman'),
(1185, '10', NULL, 24, 'Ghufron', 'QA', '202206-040', '2022-06-14', '2022-06-15 03:30:08', '2022-06-15 03:30:08', 'Hanifan Musliman'),
(1186, '1', NULL, 7, 'Nanda', 'Marketing', '202206-041', '2022-06-15', '2022-06-16 00:50:43', '2022-06-16 00:50:43', 'Hanifan Musliman'),
(1187, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202206-042', '2022-06-15', '2022-06-16 00:52:49', '2022-06-16 00:52:49', 'Hanifan Musliman'),
(1188, '1', NULL, 7, 'Lisdyah', 'Accounting & Fin', '202206-043', '2022-06-16', '2022-06-17 07:02:45', '2022-06-17 07:02:45', 'Fathur Rahmansyah'),
(1189, '10', NULL, 24, 'Heri', 'Inventory Management', '202206-044', '2022-06-16', '2022-06-17 07:03:33', '2022-06-17 07:03:33', 'Fathur Rahmansyah'),
(1190, '10', NULL, 24, 'Amirudin', 'Production', '202206-045', '2022-06-16', '2022-06-17 07:04:30', '2022-06-17 07:04:30', 'Fathur Rahmansyah'),
(1191, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202206-046', '2022-06-16', '2022-06-17 07:05:15', '2022-06-17 07:05:15', 'Fathur Rahmansyah'),
(1192, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202206-046', '2022-06-16', '2022-06-17 07:05:37', '2022-06-17 07:05:37', 'Fathur Rahmansyah'),
(1193, '10', NULL, 24, 'Firmansyah', 'QA', '202206-047', '2022-06-17', '2022-06-17 07:06:14', '2022-06-17 07:06:14', 'Fathur Rahmansyah'),
(1194, '1', NULL, 7, 'Burhan', 'Accounting & Fin', '202206-048', '2022-06-17', '2022-06-17 07:06:58', '2022-06-17 07:06:58', 'Fathur Rahmansyah'),
(1195, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202206-049', '2022-06-20', '2022-06-21 00:42:28', '2022-06-21 00:42:28', 'Mahesa (PKL)'),
(1196, '1', NULL, 5, 'Ilham', 'Purchasing', '202206-050', '2022-06-20', '2022-06-21 00:43:34', '2022-06-21 00:43:34', 'Mahesa (PKL)'),
(1197, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-051', '2022-06-20', '2022-06-21 00:44:48', '2022-06-21 00:44:48', 'Mahesa (PKL)'),
(1198, NULL, NULL, 2, NULL, 'Accounting & Fin', '202206-052', '2022-06-21', '2022-06-22 00:18:54', '2022-06-22 00:18:54', 'Mahesa (PKL)'),
(1199, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-052', '2022-06-21', '2022-06-22 00:19:30', '2022-06-22 00:19:30', 'Mahesa (PKL)'),
(1200, '10', NULL, 24, 'Ikhlas', 'QA', '202206-053', '2022-06-21', '2022-06-22 00:24:09', '2022-06-22 00:24:09', 'Mahesa (PKL)'),
(1201, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202206-054', '2022-06-21', '2022-06-22 00:26:05', '2022-06-22 00:26:05', 'Mahesa (PKL)'),
(1202, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202206-054', '2022-06-21', '2022-06-22 00:27:21', '2022-06-22 00:27:21', 'Mahesa (PKL)'),
(1203, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202206-054', '2022-06-21', '2022-06-22 00:27:59', '2022-06-22 00:27:59', 'Mahesa (PKL)'),
(1204, '1', NULL, 32, 'Jaenal', 'GA', '202206-055', '2022-06-21', '2022-06-22 00:29:09', '2022-06-22 00:29:09', 'Mahesa (PKL)'),
(1205, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202206-056', '2022-06-22', '2022-06-23 00:17:40', '2022-06-23 00:17:40', 'Mahesa (PKL)'),
(1206, '10', NULL, 24, 'Syahrul.N', 'Inventory Management', '202206-057', '2022-06-22', '2022-06-23 00:20:23', '2022-06-23 00:20:23', 'Mahesa (PKL)'),
(1207, '10', NULL, 24, 'Nimun', 'Production', '202206-058', '2022-06-22', '2022-06-23 00:29:51', '2022-06-23 00:29:51', 'Mahesa (PKL)'),
(1208, '1', NULL, 7, 'Ela', 'Accounting & Fin', '202206-059', '2022-06-23', '2022-06-24 00:30:58', '2022-06-24 00:30:58', 'Mahesa (PKL)'),
(1209, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202206-060', '2022-06-23', '2022-06-24 00:32:12', '2022-06-24 00:32:12', 'Mahesa (PKL)'),
(1210, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-061', '2022-06-23', '2022-06-24 00:33:20', '2022-06-24 00:33:20', 'Mahesa (PKL)'),
(1211, '1', NULL, 34, 'Bayu', 'Engineering', '202206-062', '2022-06-24', '2022-06-27 00:23:57', '2022-06-27 00:23:57', 'Mahesa (PKL)'),
(1212, '15', NULL, 24, 'Rikan', 'Inventory Management', '202206-063', '2022-06-24', '2022-06-27 00:25:20', '2022-06-27 00:25:20', 'Mahesa (PKL)'),
(1213, '1', NULL, 7, 'Nanda', 'Marketing', '202206-064', '2022-06-24', '2022-06-27 00:26:29', '2022-06-27 00:26:29', 'Mahesa (PKL)'),
(1214, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202206-065', '2022-06-24', '2022-06-27 00:27:53', '2022-06-27 00:27:53', 'Mahesa (PKL)'),
(1215, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202206-065', '2022-06-24', '2022-06-27 00:28:28', '2022-06-27 00:28:28', 'Mahesa (PKL)'),
(1216, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202206-066', '2022-06-24', '2022-06-27 00:29:19', '2022-06-27 00:29:19', 'Mahesa (PKL)'),
(1217, '1', NULL, 7, 'Nanda', 'Marketing', '202206-067', '2022-06-27', '2022-06-28 00:34:17', '2022-06-28 00:34:17', 'Mahesa (PKL)'),
(1218, '1', NULL, 2, 'Hadi P', 'PPC & Delvcon', '202206-068', '2022-06-27', '2022-06-28 00:35:54', '2022-06-28 00:35:54', 'Mahesa (PKL)'),
(1219, '10', NULL, 24, 'Gufron', 'GA', '202206-069', '2022-06-27', '2022-06-28 00:37:26', '2022-06-28 00:37:26', 'Mahesa (PKL)'),
(1220, '1', NULL, 32, 'Fitria Sari', 'IT', '202206-070', '2022-06-29', '2022-06-29 00:22:57', '2022-06-29 00:22:57', 'Mahesa (PKL)'),
(1221, '1', NULL, 40, 'Zaenal', 'Accounting & Fin', '202206-070', '2022-06-28', '2022-06-29 00:24:31', '2022-06-29 00:24:31', 'Mahesa (PKL)'),
(1222, '1', NULL, 40, 'Zaenal', 'Accounting & Fin', '202206-071', '2022-06-28', '2022-06-29 00:25:25', '2022-06-29 00:25:25', 'Mahesa (PKL)'),
(1223, '1', NULL, 41, 'Zaenal', 'Accounting & Fin', '202206-071', '2022-06-28', '2022-06-29 00:26:17', '2022-06-29 00:26:17', 'Mahesa (PKL)'),
(1224, '1', NULL, 42, 'Zaenal', 'Accounting & Fin', '202206-071', '2022-06-28', '2022-06-29 00:27:01', '2022-06-29 00:27:01', 'Mahesa (PKL)'),
(1225, '1', NULL, 43, 'Zaenal', 'Accounting & Fin', '202206-071', '2022-06-28', '2022-06-29 00:27:31', '2022-06-29 00:27:31', 'Mahesa (PKL)'),
(1226, '1', NULL, 36, 'Zaenal', 'Accounting & Fin', '202206-072', '2022-06-28', '2022-06-29 00:28:19', '2022-06-29 00:28:19', 'Mahesa (PKL)'),
(1227, '1', NULL, 37, 'Lina', 'HRD', '202206-072', '2022-06-28', '2022-06-29 00:28:52', '2022-06-29 00:28:52', 'Mahesa (PKL)'),
(1228, '1', NULL, 36, 'Lina', 'HRD', '202206-072', '2022-06-28', '2022-06-29 00:29:20', '2022-06-29 00:29:20', 'Mahesa (PKL)'),
(1229, '1', NULL, 38, 'Lina', 'HRD', '202206-072', '2022-06-28', '2022-06-29 00:29:53', '2022-06-29 00:29:53', 'Mahesa (PKL)'),
(1230, '1', NULL, 39, 'Lina', 'HRD', '202206-072', '2022-06-28', '2022-06-29 00:30:22', '2022-06-29 00:30:22', 'Mahesa (PKL)'),
(1231, '1', NULL, 7, 'Anisa', 'Accounting & Fin', '202206-073', '2022-06-28', '2022-06-29 00:32:01', '2022-06-29 00:32:01', 'Mahesa (PKL)'),
(1232, '10', NULL, 24, 'Heri.A', 'Inventory Management', '202206-074', '2022-06-28', '2022-06-29 00:34:00', '2022-06-29 00:34:00', 'Mahesa (PKL)'),
(1233, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202206-075', '2022-06-28', '2022-06-29 00:34:41', '2022-06-29 00:34:41', 'Mahesa (PKL)'),
(1234, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202206-075', '2022-06-28', '2022-06-29 00:35:50', '2022-06-29 00:35:50', 'Mahesa (PKL)'),
(1235, '10', NULL, 24, 'Ghufron', 'QA', '202206-076', '2022-06-28', '2022-06-29 00:36:50', '2022-06-29 00:36:50', 'Mahesa (PKL)'),
(1237, '10', NULL, 24, 'Amirudin', 'Production', '202206-077', '2022-06-29', '2022-06-29 03:24:28', '2022-06-29 03:24:28', 'Fathur Rahmansyah'),
(1238, '2', NULL, 44, 'Amirudin', 'Production', '202206-078', '2022-06-29', '2022-06-30 00:24:34', '2022-06-30 00:24:34', 'Mahesa (PKL)'),
(1239, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-080', '2022-06-29', '2022-06-30 00:25:19', '2022-06-30 00:25:19', 'Mahesa (PKL)'),
(1240, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202206-079', '2022-06-29', '2022-06-30 00:26:13', '2022-06-30 00:26:13', 'Mahesa (PKL)'),
(1241, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202206-080', '2022-06-30', '2022-07-01 00:23:36', '2022-07-01 00:23:36', 'Mahesa (PKL)'),
(1242, '10', NULL, 24, 'Heri A.', 'Inventory Management', '202206-081', '2022-06-30', '2022-07-01 00:24:37', '2022-07-01 00:24:37', 'Mahesa (PKL)'),
(1243, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202207-001', '2022-07-01', '2022-07-04 00:44:51', '2022-07-04 00:44:51', 'Mahesa (PKL)'),
(1244, '1', NULL, 5, 'Ilham', 'Purchasing', '202207-002', '2022-07-01', '2022-07-04 00:46:41', '2022-07-04 00:46:41', 'Mahesa (PKL)'),
(1245, '1', NULL, 32, 'Jaenal', 'GA', '202207-003', '2022-07-01', '2022-07-04 00:47:40', '2022-07-04 00:47:40', 'Mahesa (PKL)'),
(1246, '2', NULL, 7, 'Yati', 'Accounting & Fin', '202207-004', '2022-07-01', '2022-07-04 00:48:26', '2022-07-04 00:48:26', 'Mahesa (PKL)'),
(1247, '1', NULL, 7, 'Nanda', 'Marketing', '202207-005', '2022-07-04', '2022-07-05 00:22:36', '2022-07-05 00:22:36', 'Mahesa (PKL)'),
(1248, '15', NULL, 24, 'Nimun', 'Production', '202207-006', '2022-07-04', '2022-07-05 00:23:54', '2022-07-05 00:23:54', 'Mahesa (PKL)'),
(1249, '10', NULL, 24, 'Syahrul.N', 'Inventory Management', '202207-007', '2022-07-04', '2022-07-05 00:24:55', '2022-07-05 00:24:55', 'Mahesa (PKL)'),
(1250, '10', NULL, 24, 'Ikhlas', 'QA', '202207-008', '2022-07-04', '2022-07-05 00:28:50', '2022-07-05 00:28:50', 'Mahesa (PKL)'),
(1251, '15', NULL, 24, 'Fajar', 'QA', '202207-009', '2022-07-04', '2022-07-05 00:29:56', '2022-07-05 00:29:56', 'Mahesa (PKL)'),
(1252, '10', NULL, 25, 'Fajar', 'QA', '202207-009', '2022-07-04', '2022-07-05 00:30:33', '2022-07-05 00:30:33', 'Mahesa (PKL)'),
(1253, '1', NULL, 3, 'Dewi', 'Accounting & Fin', '202207-010', '2022-07-05', '2022-07-05 00:31:20', '2022-07-05 00:31:20', 'Mahesa (PKL)'),
(1254, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202207-011', '2022-07-05', '2022-07-06 00:21:16', '2022-07-06 00:21:16', 'Mahesa (PKL)'),
(1255, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202207-011', '2022-07-05', '2022-07-06 00:21:53', '2022-07-06 00:21:53', 'Mahesa (PKL)'),
(1256, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202207-011', '2022-07-05', '2022-07-06 00:22:30', '2022-07-06 00:22:30', 'Mahesa (PKL)'),
(1257, '1', NULL, 7, 'Nanda', 'Marketing', '202207-012', '2022-07-05', '2022-07-06 00:23:18', '2022-07-06 00:23:18', 'Mahesa (PKL)'),
(1258, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-013', '2022-07-05', '2022-07-06 00:24:23', '2022-07-06 00:24:23', 'Mahesa (PKL)'),
(1259, '3', NULL, 1, 'Taofik', 'PPC & Delvcon', '202207-014', '2022-07-05', '2022-07-06 00:26:04', '2022-07-06 00:26:04', 'Mahesa (PKL)'),
(1260, '10', NULL, 24, 'Syahrul', 'Inventory Management', '202207-015', '2022-07-06', '2022-07-07 00:19:39', '2022-07-07 00:19:39', 'Mahesa (PKL)'),
(1261, '1', NULL, 9, 'Hanif', 'IT', '202207-016', '2022-07-06', '2022-07-07 00:26:01', '2022-07-07 00:26:01', 'Mahesa (PKL)'),
(1262, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-017', '2022-07-07', '2022-07-08 00:17:24', '2022-07-08 00:17:24', 'Mahesa (PKL)'),
(1263, '1', NULL, 16, 'Yuni', 'Production', '202207-018', '2022-07-07', '2022-07-08 00:19:06', '2022-07-08 00:19:06', 'Mahesa (PKL)'),
(1264, '1', NULL, 17, 'Yuni', 'Production', '202207-018', '2022-07-07', '2022-07-08 00:19:50', '2022-07-08 00:19:50', 'Mahesa (PKL)'),
(1265, '10', NULL, 24, 'Ghupron', 'QA', '202207-019', '2022-07-08', '2022-07-11 00:19:20', '2022-07-11 00:19:20', 'Mahesa (PKL)'),
(1266, '1', NULL, 16, 'Ghupron', 'QA', '202207-019', '2022-07-08', '2022-07-11 00:19:50', '2022-07-11 00:19:50', 'Mahesa (PKL)'),
(1267, '10', NULL, 24, 'Syahrul.N', 'Inventory Management', '202207-020', '2022-07-08', '2022-07-11 00:20:43', '2022-07-11 00:20:43', 'Mahesa (PKL)'),
(1268, '1', NULL, 34, 'Widyawati', 'Purchasing', '202207-021', '2022-07-08', '2022-07-11 00:21:39', '2022-07-11 00:21:39', 'Mahesa (PKL)'),
(1269, '2', NULL, 26, 'Endru', 'PPC & Delvcon', '202207-022', '2022-07-11', '2022-07-12 00:26:16', '2022-07-12 00:26:16', 'Mahesa (PKL)'),
(1270, '1', NULL, 5, 'Vina', 'Purchasing', '202207-023', '2022-07-11', '2022-07-12 00:27:12', '2022-07-12 00:27:12', 'Mahesa (PKL)'),
(1271, '1', NULL, 11, 'Hanif', 'IT', '202207-024', '2022-07-11', '2022-07-12 00:27:58', '2022-07-12 00:27:58', 'Mahesa (PKL)'),
(1272, '1', NULL, 11, 'Hanif', 'IT', '202207-024', '2022-07-11', '2022-07-12 00:28:36', '2022-07-12 00:28:36', 'Mahesa (PKL)'),
(1273, '10', NULL, 24, 'Amirudin', 'Production', '202207-025', '2022-07-11', '2022-07-12 00:29:34', '2022-07-12 00:29:34', 'Mahesa (PKL)'),
(1274, '1', NULL, 7, 'Nanda', 'Marketing', '202207-026', '2022-07-11', '2022-07-12 00:30:18', '2022-07-12 00:30:18', 'Mahesa (PKL)'),
(1275, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202207-027', '2022-07-11', '2022-07-12 00:31:09', '2022-07-12 00:31:09', 'Mahesa (PKL)'),
(1276, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202207-028', '2022-07-11', '2022-07-12 00:32:05', '2022-07-12 00:32:05', 'Mahesa (PKL)'),
(1277, '1', NULL, 16, 'Gina', 'GA', '202207-029', '2022-07-11', '2022-07-12 00:33:14', '2022-07-12 00:33:14', 'Mahesa (PKL)'),
(1278, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-030', '2022-07-12', '2022-07-13 00:44:15', '2022-07-13 00:44:15', 'Mahesa (PKL)'),
(1279, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202207-031', '2022-07-14', '2022-07-14 00:27:51', '2022-07-14 00:27:51', 'Mahesa (PKL)'),
(1280, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202207-032', '2022-07-13', '2022-07-14 00:28:51', '2022-07-14 00:28:51', 'Mahesa (PKL)'),
(1281, '10', NULL, 24, 'Firmansyah', 'QA', '202207-033', '2022-07-13', '2022-07-14 00:30:13', '2022-07-14 00:30:13', 'Mahesa (PKL)'),
(1282, '1', NULL, 30, 'Iis', 'QHSE', '202207-034', '2022-07-14', '2022-07-15 00:17:46', '2022-07-15 00:17:46', 'Mahesa (PKL)'),
(1283, '1', NULL, 32, 'Sumanto', 'Engineering', '202207-035', '2022-07-14', '2022-07-15 00:18:34', '2022-07-15 00:18:34', 'Mahesa (PKL)'),
(1284, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202207-036', '2022-07-14', '2022-07-15 00:19:47', '2022-07-15 00:19:47', 'Mahesa (PKL)'),
(1285, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202207-037', '2022-07-14', '2022-07-15 00:20:43', '2022-07-15 00:20:43', 'Mahesa (PKL)'),
(1286, '5', NULL, 27, 'Maryo', 'PPC & Delvcon', '202207-037', '2022-07-14', '2022-07-15 00:21:19', '2022-07-15 00:21:19', 'Mahesa (PKL)'),
(1287, '2', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202207-038', '2022-07-15', '2022-07-18 00:16:45', '2022-07-18 00:16:45', 'Mahesa (PKL)'),
(1288, '10', NULL, 24, 'Arif R.', 'Inventory Management', '202207-039', '2022-07-18', '2022-07-18 00:22:28', '2022-07-18 00:22:28', 'Mahesa (PKL)'),
(1289, '10', NULL, 24, 'Ghufron', 'QA', '202207-040', '2022-07-18', '2022-07-18 00:31:07', '2022-07-18 00:31:07', 'Mahesa (PKL)'),
(1290, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202207-041', '2022-07-18', '2022-07-19 00:20:18', '2022-07-19 00:20:18', 'Mahesa (PKL)'),
(1291, '1', NULL, 32, 'Dita', 'Purchasing', '202207-042', '2022-07-18', '2022-07-19 00:21:13', '2022-07-19 00:21:13', 'Mahesa (PKL)'),
(1292, '1', NULL, 29, 'Iis S.', 'QHSE', '202207-043', '2022-07-18', '2022-07-19 00:22:44', '2022-07-19 00:22:44', 'Mahesa (PKL)'),
(1293, '1', NULL, 7, 'Nanda', 'Marketing', '202207-044', '2022-07-18', '2022-07-19 00:23:22', '2022-07-19 00:23:22', 'Mahesa (PKL)'),
(1294, '10', NULL, 24, 'Nimun', 'Production', '202207-045', '2022-07-18', '2022-07-19 00:24:52', '2022-07-19 00:24:52', 'Mahesa (PKL)'),
(1295, '10', NULL, 24, 'Arif R.', 'Inventory Management', '202207-046', '2022-07-19', '2022-07-20 00:16:00', '2022-07-20 00:16:00', 'Mahesa (PKL)'),
(1296, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-047', '2022-07-19', '2022-07-20 00:16:59', '2022-07-20 00:16:59', 'Mahesa (PKL)'),
(1297, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202207-048', '2022-07-19', '2022-07-20 00:17:47', '2022-07-20 00:17:47', 'Mahesa (PKL)'),
(1298, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202207-048', '2022-07-19', '2022-07-20 00:18:36', '2022-07-20 00:18:36', 'Mahesa (PKL)'),
(1299, '5', NULL, 24, 'Muhlisin', 'Production', '202207-049', '2022-07-20', '2022-07-21 00:34:31', '2022-07-21 00:34:31', 'Mahesa (PKL)'),
(1300, '1', NULL, 28, 'Iis S.', 'QHSE', '202207-050', '2022-07-20', '2022-07-21 00:37:14', '2022-07-21 00:37:14', 'Mahesa (PKL)'),
(1301, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202207-051', '2022-07-20', '2022-07-21 00:39:45', '2022-07-21 00:39:45', 'Mahesa (PKL)'),
(1302, '1', NULL, 7, 'Ria', 'Accounting & Fin', '202207-052', '2022-07-21', '2022-07-21 00:40:52', '2022-07-21 00:40:52', 'Mahesa (PKL)'),
(1303, '1', NULL, 5, 'Ilham', 'Purchasing', '202207-053', '2022-07-21', '2022-07-22 00:27:23', '2022-07-22 00:27:23', 'Mahesa (PKL)'),
(1304, '5', NULL, 24, 'Ghufron', 'QA', '202207-054', '2022-07-21', '2022-07-22 00:29:32', '2022-07-22 00:29:32', 'Mahesa (PKL)'),
(1305, '10', NULL, 25, 'Ghufron', 'QA', '202207-054', '2022-07-21', '2022-07-22 00:34:41', '2022-07-22 00:34:41', 'Mahesa (PKL)'),
(1306, '5', NULL, 24, 'Taufiq', 'Inventory Management', '202207-055', '2022-07-21', '2022-07-22 00:36:16', '2022-07-22 00:36:16', 'Mahesa (PKL)'),
(1307, '1', NULL, 34, 'Yanti', 'Accounting & Fin', '202207-056', '2022-07-22', '2022-07-22 00:37:03', '2022-07-22 00:37:03', 'Mahesa (PKL)'),
(1308, '10', NULL, 24, 'Nimun', 'Production', '202207-057', '2022-07-22', '2022-07-25 00:18:25', '2022-07-25 00:18:25', 'Mahesa (PKL)'),
(1309, '1', NULL, 7, 'Nanda', 'Marketing', '202207-058', '2022-07-22', '2022-07-25 00:19:45', '2022-07-25 00:19:45', 'Mahesa (PKL)'),
(1310, '1', NULL, 16, 'Septi R.', 'Inventory Management', '202207-059', '2022-07-22', '2022-07-25 00:21:15', '2022-07-25 00:21:15', 'Mahesa (PKL)'),
(1311, '5', NULL, 24, 'Arif R.', 'Inventory Management', '202207-060', '2022-07-22', '2022-07-25 00:22:18', '2022-07-25 00:22:18', 'Mahesa (PKL)'),
(1312, '1', NULL, 1, 'Juprianto', 'PPC & Delvcon', '202207-061', '2022-07-22', '2022-07-25 00:23:29', '2022-07-25 00:23:29', 'Mahesa (PKL)'),
(1313, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202207-062', '2022-07-22', '2022-07-25 00:25:19', '2022-07-25 00:25:19', 'Mahesa (PKL)'),
(1314, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202207-062', '2022-07-22', '2022-07-25 00:26:16', '2022-07-25 00:26:16', 'Mahesa (PKL)'),
(1315, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202207-062', '2022-07-22', '2022-07-25 00:26:58', '2022-07-25 00:26:58', 'Mahesa (PKL)'),
(1316, '1', NULL, 7, 'Nanda', 'Marketing', '202207-063', '2022-07-25', '2022-07-26 00:20:19', '2022-07-26 00:20:19', 'Mahesa (PKL)'),
(1317, '1', NULL, 32, 'Dadang K.', 'Engineering', '202207-064', '2022-07-25', '2022-07-26 00:21:31', '2022-07-26 00:21:31', 'Mahesa (PKL)'),
(1318, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202207-065', '2022-07-25', '2022-07-26 00:23:13', '2022-07-26 00:23:13', 'Mahesa (PKL)'),
(1319, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202207-066', '2022-07-25', '2022-07-26 00:24:29', '2022-07-26 00:24:29', 'Mahesa (PKL)'),
(1320, '10', NULL, 24, 'Ghufron', 'QA', '202207-067', '2022-07-25', '2022-07-26 00:25:43', '2022-07-26 00:25:43', 'Mahesa (PKL)'),
(1321, '10', NULL, 24, 'Amirudin', 'Production', '202207-068', '2022-07-27', '2022-07-27 00:21:55', '2022-07-27 00:21:55', 'Mahesa (PKL)'),
(1322, '1', NULL, 16, 'Fauzan', 'Production', '202207-069', '2022-07-27', '2022-07-28 00:21:07', '2022-07-28 00:21:07', 'Mahesa (PKL)'),
(1323, '10', NULL, 24, 'Ghufron', 'QA', '202207-070', '2022-07-27', '2022-07-28 00:22:13', '2022-07-28 00:22:13', 'Mahesa (PKL)'),
(1324, '1', NULL, 33, 'Fiki A.', 'Engineering', '202207-071', '2022-07-27', '2022-07-28 00:34:02', '2022-07-28 00:34:02', 'Mahesa (PKL)'),
(1325, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-072', '2022-07-27', '2022-07-28 00:36:07', '2022-07-28 00:36:07', 'Mahesa (PKL)'),
(1326, '10', NULL, 24, 'Fanji', 'Inventory Management', '202207-073', '2022-07-27', '2022-07-28 00:37:51', '2022-07-28 00:37:51', 'Mahesa (PKL)'),
(1327, '10', NULL, 25, 'Pujianto', 'QA', '202207-074', '2022-07-27', '2022-07-28 00:38:47', '2022-07-28 00:38:47', 'Mahesa (PKL)'),
(1328, '2', NULL, 16, 'Sukardi', 'QA', '202207-075', '2022-07-27', '2022-07-28 00:40:39', '2022-07-28 00:40:39', 'Mahesa (PKL)'),
(1329, '2', NULL, 44, 'Amirudin', 'Production', '202207-076', '2022-07-27', '2022-07-28 00:44:31', '2022-07-28 00:44:31', 'Mahesa (PKL)'),
(1330, '1', NULL, 32, 'Lala Sonia', 'Purchasing', '202207-077', '2022-07-27', '2022-07-28 00:45:56', '2022-07-28 00:45:56', 'Mahesa (PKL)'),
(1331, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202207-078', '2022-07-28', '2022-07-29 00:24:52', '2022-07-29 00:24:52', 'Mahesa (PKL)'),
(1332, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202207-079', '2022-07-31', '2022-08-01 00:18:08', '2022-08-01 00:18:08', 'Mahesa (PKL)'),
(1333, '10', NULL, 24, 'Heri', 'Inventory Management', '202207-080', '2022-07-31', '2022-08-01 00:20:54', '2022-08-01 00:20:54', 'Mahesa (PKL)'),
(1334, '2', NULL, 1, 'Buyung', 'PPC & Delvcon', '202207-081', '2022-07-31', '2022-08-01 00:21:45', '2022-08-01 00:21:45', 'Mahesa (PKL)'),
(1335, '1', NULL, 5, 'Widiyawati', 'Purchasing', '202208-001', '2022-08-01', '2022-08-02 00:21:16', '2022-08-02 00:21:16', 'Mahesa (PKL)'),
(1336, '2', NULL, 1, 'Juprianto', 'PPC & Delvcon', '202208-002', '2022-08-01', '2022-08-02 00:22:49', '2022-08-02 00:22:49', 'Mahesa (PKL)'),
(1337, '10', NULL, 24, 'Yakub', 'Inventory Management', '202208-003', '2022-08-01', '2022-08-02 00:24:07', '2022-08-02 00:24:07', 'Mahesa (PKL)'),
(1338, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202208-004', '2022-08-01', '2022-08-02 00:25:02', '2022-08-02 00:25:02', 'Mahesa (PKL)'),
(1339, '10', NULL, 24, 'Heri', 'Production', '202208-005', '2022-08-02', '2022-08-03 00:16:56', '2022-08-03 00:16:56', 'Mahesa (PKL)'),
(1340, '1', NULL, 7, 'Nanda', 'Marketing', '202208-006', '2022-08-02', '2022-08-03 00:18:12', '2022-08-03 00:18:12', 'Mahesa (PKL)'),
(1341, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-007', '2022-08-02', '2022-08-03 00:19:09', '2022-08-03 00:19:09', 'Mahesa (PKL)'),
(1342, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-007', '2022-08-02', '2022-08-03 00:20:28', '2022-08-03 00:20:28', 'Mahesa (PKL)'),
(1343, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-008', '2022-08-02', '2022-08-03 00:22:55', '2022-08-03 00:22:55', 'Mahesa (PKL)'),
(1344, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202208-009', '2022-08-03', '2022-08-04 02:55:06', '2022-08-04 02:55:06', 'Mahesa (PKL)'),
(1345, '1', NULL, 7, 'Kuriyah', 'Accounting & Fin', '202208-010', '2022-08-03', '2022-08-04 02:57:48', '2022-08-04 02:57:48', 'Mahesa (PKL)'),
(1346, '1', NULL, 7, 'Annisa', 'Accounting & Fin', '202208-011', '2022-08-03', '2022-08-04 02:59:27', '2022-08-04 02:59:27', 'Mahesa (PKL)'),
(1347, '10', NULL, 24, 'Nimun', 'Production', '202208-012', '2022-08-03', '2022-08-04 03:00:31', '2022-08-04 03:00:31', 'Mahesa (PKL)'),
(1348, '10', NULL, 25, 'Wahyu', 'QA', '202208-013', '2022-08-04', '2022-08-05 00:19:04', '2022-08-05 00:19:04', 'Mahesa (PKL)'),
(1349, '10', NULL, 24, 'Heri', 'Production', '202208-014', '2022-08-04', '2022-08-05 00:20:18', '2022-08-05 00:20:18', 'Mahesa (PKL)'),
(1350, '1', NULL, 19, 'Yunie', 'Production', '202208-015', '2022-08-04', '2022-08-05 00:21:55', '2022-08-05 00:21:55', 'Mahesa (PKL)'),
(1351, '1', NULL, 32, 'Nedi', 'Inventory Management', '202208-016', '2022-08-04', '2022-08-05 00:22:45', '2022-08-05 00:22:45', 'Mahesa (PKL)'),
(1352, '1', NULL, 32, 'Nimun', 'Production', '202208-017', '2022-08-04', '2022-08-05 00:23:55', '2022-08-05 00:23:55', 'Mahesa (PKL)'),
(1353, '2', NULL, 44, 'Nimun', 'Production', '202208-018', '2022-08-04', '2022-08-05 00:24:47', '2022-08-05 00:24:47', 'Mahesa (PKL)'),
(1354, '10', NULL, 24, 'Ghufron', 'QA', '202208-019', '2022-08-04', '2022-08-05 00:26:06', '2022-08-05 00:26:06', 'Mahesa (PKL)'),
(1355, '1', NULL, 16, 'Ghufron', 'QA', '202208-019', '2022-08-04', '2022-08-05 00:26:57', '2022-08-05 00:26:57', 'Mahesa (PKL)'),
(1356, '1', NULL, 2, 'Hadi', 'PPC & Delvcon', '202208-020', '2022-08-04', '2022-08-05 00:27:51', '2022-08-05 00:27:51', 'Mahesa (PKL)'),
(1357, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-021', '2022-08-05', '2022-08-08 01:21:12', '2022-08-08 01:21:12', 'Mahesa (PKL)'),
(1358, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-021', '2022-08-05', '2022-08-08 01:21:48', '2022-08-08 01:21:48', 'Mahesa (PKL)'),
(1359, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-022', '2022-08-05', '2022-08-08 01:22:42', '2022-08-08 01:22:42', 'Mahesa (PKL)'),
(1360, '1', NULL, 16, 'Yudi', 'Marketing', '202208-023', '2022-08-05', '2022-08-08 01:23:32', '2022-08-08 01:23:32', 'Mahesa (PKL)'),
(1361, '1', NULL, 19, 'Yudi', 'Marketing', '202208-023', '2022-08-05', '2022-08-08 01:24:18', '2022-08-08 01:24:18', 'Mahesa (PKL)'),
(1362, NULL, NULL, 7, 'Nanda\\', 'Accounting & Fin', '202208-024', '2022-08-05', '2022-08-08 01:24:51', '2022-08-08 01:24:51', 'Mahesa (PKL)'),
(1363, '1', NULL, 7, 'Nanda', 'Marketing', '202208-024', '2022-08-05', '2022-08-08 01:25:44', '2022-08-08 01:25:44', 'Mahesa (PKL)'),
(1364, '1', NULL, 32, 'Tri Wibowo', 'Engineering', '202208-025', '2022-08-08', '2022-08-09 00:30:04', '2022-08-09 00:30:04', 'Mahesa (PKL)'),
(1365, '15', NULL, 24, 'Ghufron', 'QA', '202208-026', '2022-08-08', '2022-08-09 00:32:03', '2022-08-09 00:32:03', 'Mahesa (PKL)'),
(1366, '10', NULL, 24, 'Amundri', 'Production', '202208-027', '2022-08-08', '2022-08-09 00:33:07', '2022-08-09 00:33:07', 'Mahesa (PKL)'),
(1367, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-028', '2022-08-08', '2022-08-09 00:34:06', '2022-08-09 00:34:06', 'Mahesa (PKL)'),
(1368, '1', NULL, 12, 'Hanif', 'IT', '202208-029', '2022-08-08', '2022-08-09 00:34:46', '2022-08-09 00:34:46', 'Mahesa (PKL)'),
(1369, '10', NULL, 24, 'Rohman', 'Production', '202208-030', '2022-08-10', '2022-08-10 00:54:46', '2022-08-10 00:54:46', 'Mahesa (PKL)'),
(1370, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-031', '2022-08-10', '2022-08-11 00:16:18', '2022-08-11 00:16:18', 'Mahesa (PKL)'),
(1371, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202208-032', '2022-08-10', '2022-08-11 00:17:35', '2022-08-11 00:17:35', 'Mahesa (PKL)'),
(1372, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-032', '2022-08-10', '2022-08-11 00:20:18', '2022-08-11 00:20:18', 'Mahesa (PKL)'),
(1373, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-032', '2022-08-10', '2022-08-11 00:21:23', '2022-08-11 00:21:23', 'Mahesa (PKL)'),
(1374, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-032', '2022-08-10', '2022-08-11 00:21:24', '2022-08-11 00:21:24', 'Mahesa (PKL)'),
(1375, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-033', '2022-08-10', '2022-08-11 00:22:12', '2022-08-11 00:22:12', 'Mahesa (PKL)'),
(1376, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-034', '2022-08-11', '2022-08-12 00:42:29', '2022-08-12 00:42:29', 'Mahesa (PKL)'),
(1377, '1', NULL, 7, 'Nanda', 'Marketing', '202208-035', '2022-08-11', '2022-08-12 00:43:20', '2022-08-12 00:43:20', 'Mahesa (PKL)'),
(1378, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202208-036', '2022-08-11', '2022-08-12 00:44:16', '2022-08-12 00:44:16', 'Mahesa (PKL)'),
(1379, '10', NULL, 24, 'Putri', 'Inventory Management', '202208-037', '2022-08-11', '2022-08-12 00:45:16', '2022-08-12 00:45:16', 'Mahesa (PKL)'),
(1380, '10', NULL, 25, 'Purnanto', 'QA', '202208-038', '2022-08-12', '2022-08-15 00:52:29', '2022-08-15 00:52:29', 'Mahesa (PKL)'),
(1381, '1', NULL, 5, 'Widyawati', 'Purchasing', '202208-039', '2022-08-12', '2022-08-15 00:53:38', '2022-08-15 00:53:38', 'Mahesa (PKL)'),
(1382, '1', NULL, 34, 'Yano', 'PPC & Delvcon', '202208-040', '2022-12-08', '2022-08-15 00:54:42', '2022-08-15 00:54:42', 'Mahesa (PKL)'),
(1383, '1', NULL, 32, 'Yano', 'PPC & Delvcon', '202208-040', '2022-08-12', '2022-08-15 00:55:58', '2022-08-15 00:55:58', 'Mahesa (PKL)'),
(1384, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-041', '2022-08-12', '2022-08-15 00:57:35', '2022-08-15 00:57:35', 'Mahesa (PKL)'),
(1385, '15', NULL, 24, 'Ghufron', 'QA', '202208-042', '2022-08-15', '2022-08-15 00:58:29', '2022-08-15 00:58:29', 'Mahesa (PKL)'),
(1386, '10', NULL, 25, 'Ghufron', 'QA', '202208-042', '2022-08-15', '2022-08-15 00:58:55', '2022-08-15 00:58:55', 'Mahesa (PKL)'),
(1387, '10', NULL, 24, 'Fanji', 'Production', '202208-043', '2022-08-15', '2022-08-16 00:28:10', '2022-08-16 00:28:10', 'Mahesa (PKL)'),
(1388, '1', NULL, 16, 'Rusmono', 'Production', '202208-044', '2022-08-15', '2022-08-16 00:29:51', '2022-08-16 00:29:51', 'Mahesa (PKL)'),
(1389, '1', NULL, 16, 'Rusmono', 'Production', '202208-044', '2022-08-15', '2022-08-16 00:29:51', '2022-08-16 00:29:51', 'Mahesa (PKL)'),
(1390, '1', NULL, 7, 'Nanda', 'Marketing', '202208-045', '2022-08-15', '2022-08-16 00:30:34', '2022-08-16 00:30:34', 'Mahesa (PKL)'),
(1391, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-046', '2022-08-15', '2022-08-16 00:34:13', '2022-08-16 00:34:13', 'Mahesa (PKL)'),
(1392, '1', NULL, 32, 'Yunie', 'Production', '202208-047', '2022-08-15', '2022-08-16 00:35:58', '2022-08-16 00:35:58', 'Mahesa (PKL)'),
(1393, '15', NULL, 24, 'Nimun', 'Production', '202208-048', '2022-08-15', '2022-08-16 00:36:53', '2022-08-16 00:36:53', 'Mahesa (PKL)'),
(1394, '2', NULL, 44, 'Nimun', 'Production', '202208-049', '2022-08-15', '2022-08-16 00:38:05', '2022-08-16 00:38:05', 'Mahesa (PKL)'),
(1395, '1', NULL, 16, 'Rikson', 'Marketing', '202208-050', '2022-08-16', '2022-08-18 00:20:58', '2022-08-18 00:20:58', 'Mahesa (PKL)'),
(1396, '1', NULL, 32, 'Irfan', 'IT', '202208-051', '2022-08-18', '2022-08-18 00:22:02', '2022-08-18 00:22:02', 'Mahesa (PKL)'),
(1397, '1', NULL, 34, 'Irfan', 'IT', '202208-051', '2022-08-18', '2022-08-18 00:22:42', '2022-08-18 00:22:42', 'Mahesa (PKL)'),
(1398, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202208-052', '2022-08-18', '2022-08-19 00:24:58', '2022-08-19 00:24:58', 'Mahesa (PKL)'),
(1399, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-052', '2022-08-18', '2022-08-19 00:25:37', '2022-08-19 00:25:37', 'Mahesa (PKL)'),
(1400, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-052', '2022-08-18', '2022-08-19 00:26:28', '2022-08-19 00:26:28', 'Mahesa (PKL)'),
(1401, '10', NULL, 24, 'Fanji', 'Production', '202208-053', '2022-08-18', '2022-08-19 00:27:08', '2022-08-19 00:27:08', 'Mahesa (PKL)'),
(1402, '2', NULL, 1, 'Roup', 'Production', '202208-054', '2022-08-18', '2022-08-19 00:28:25', '2022-08-19 00:28:25', 'Mahesa (PKL)'),
(1403, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-055', '2022-08-18', '2022-08-19 00:29:07', '2022-08-19 00:29:07', 'Mahesa (PKL)'),
(1404, '1', NULL, 32, 'Bagyo', 'QA', '202208-056', '2022-08-18', '2022-08-19 00:29:51', '2022-08-19 00:29:51', 'Mahesa (PKL)'),
(1405, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202208-057', '2022-08-19', '2022-08-22 00:27:44', '2022-08-22 00:27:44', 'Mahesa (PKL)'),
(1406, '1', NULL, 16, 'Andre', 'PPC & Delvcon', '202208-058', '2022-08-19', '2022-08-22 00:28:18', '2022-08-22 00:28:18', 'Mahesa (PKL)'),
(1407, '1', NULL, 18, 'Andre', 'PPC & Delvcon', '202208-058', '2022-08-19', '2022-08-22 00:29:13', '2022-08-22 00:29:13', 'Mahesa (PKL)'),
(1408, '10', NULL, 24, 'Amirudin', 'Production', '202208-059', '2022-08-22', '2022-08-23 00:27:06', '2022-08-23 00:27:06', 'Mahesa (PKL)'),
(1409, '1', NULL, 17, 'Alfian', 'QA', '202208-060', '2022-08-22', '2022-08-23 00:28:25', '2022-08-23 00:28:25', 'Mahesa (PKL)'),
(1410, '1', NULL, 18, 'Alfian', 'QA', '202208-060', '2022-08-22', '2022-08-23 00:28:57', '2022-08-23 00:28:57', 'Mahesa (PKL)'),
(1411, '1', NULL, 19, 'Alfian', 'QA', '202208-060', '2022-08-22', '2022-08-23 00:29:25', '2022-08-23 00:29:25', 'Mahesa (PKL)'),
(1412, '1', NULL, 18, 'Fauzan', 'Production', '202208-061', '2022-08-22', '2022-08-23 00:31:30', '2022-08-23 00:31:30', 'Mahesa (PKL)'),
(1413, '1', NULL, 16, 'Fauzan', 'Production', '202208-061', '2022-08-22', '2022-08-23 00:32:32', '2022-08-23 00:32:32', 'Mahesa (PKL)'),
(1414, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-062', '2022-08-22', '2022-08-23 00:33:06', '2022-08-23 00:33:06', 'Mahesa (PKL)'),
(1415, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-063', '2022-08-23', '2022-08-24 00:23:41', '2022-08-24 00:23:41', 'Mahesa (PKL)'),
(1416, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-064', '2022-08-23', '2022-08-24 00:24:18', '2022-08-24 00:24:18', 'Mahesa (PKL)'),
(1417, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-065', '2022-08-23', '2022-08-24 00:24:55', '2022-08-24 00:24:55', 'Mahesa (PKL)'),
(1418, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-065', '2022-08-23', '2022-08-24 00:25:38', '2022-08-24 00:25:38', 'Mahesa (PKL)'),
(1419, '1', NULL, 36, 'Lina', 'HRD', '202208-066', '2022-08-23', '2022-08-24 00:30:57', '2022-08-24 00:30:57', 'Mahesa (PKL)'),
(1420, '1', NULL, 5, 'Sony', 'IT', '202208-067', '2022-08-24', '2022-08-25 00:35:44', '2022-08-25 00:35:44', 'Mahesa (PKL)'),
(1421, '15', NULL, 24, 'Ghufron', 'QA', '202208-068', '2022-08-24', '2022-08-25 00:37:06', '2022-08-25 00:37:06', 'Mahesa (PKL)'),
(1422, '10', NULL, 25, 'Ghufron', 'QA', '202208-068', '2022-08-24', '2022-08-25 00:37:40', '2022-08-25 00:37:40', 'Mahesa (PKL)'),
(1423, '10', NULL, 24, 'Putri', 'Inventory Management', '202208-069', '2022-08-24', '2022-08-25 00:38:36', '2022-08-25 00:38:36', 'Mahesa (PKL)'),
(1424, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202208-070', '2022-08-24', '2022-08-25 00:39:19', '2022-08-25 00:39:19', 'Mahesa (PKL)'),
(1425, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202208-071', '2022-08-25', '2022-08-26 00:23:51', '2022-08-26 00:23:51', 'Mahesa (PKL)'),
(1426, '1', NULL, 7, 'Silvi', 'Marketing', '202208-072', '2022-08-25', '2022-08-26 00:25:00', '2022-08-26 00:25:00', 'Mahesa (PKL)'),
(1427, '1', NULL, 32, 'Inung', 'Engineering', '202208-073', '2022-08-26', '2022-08-29 00:30:22', '2022-08-29 00:30:22', 'Mahesa (PKL)'),
(1428, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202208-074', '2022-08-26', '2022-08-29 00:31:25', '2022-08-29 00:31:25', 'Mahesa (PKL)'),
(1429, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202208-074', '2022-08-26', '2022-08-29 00:32:06', '2022-08-29 00:32:06', 'Mahesa (PKL)'),
(1430, '10', NULL, 24, 'Amirudin', 'Production', '202208-075', '2022-08-26', '2022-08-29 00:33:29', '2022-08-29 00:33:29', 'Mahesa (PKL)'),
(1431, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202208-076', '2022-08-26', '2022-08-29 00:34:37', '2022-08-29 00:34:37', 'Mahesa (PKL)'),
(1432, '1', NULL, 17, 'Adika', 'Inventory Management', '202208-077', '2022-08-26', '2022-08-29 00:35:37', '2022-08-29 00:35:37', 'Mahesa (PKL)'),
(1433, '1', NULL, 16, 'Adika', 'Inventory Management', '202208-077', '2022-08-26', '2022-08-29 00:36:11', '2022-08-29 00:36:11', 'Mahesa (PKL)'),
(1434, '1', NULL, 7, 'Nanda', 'Marketing', '202208-078', '2022-08-29', '2022-08-30 00:25:14', '2022-08-30 00:25:14', 'Mahesa (PKL)'),
(1435, '1', NULL, 5, 'Ilham', 'Purchasing', '202208-079', '2022-08-29', '2022-08-30 00:26:41', '2022-08-30 00:26:41', 'Mahesa (PKL)'),
(1436, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '2022058-080', '2022-08-29', '2022-08-30 00:27:23', '2022-08-30 00:27:23', 'Mahesa (PKL)'),
(1437, '1', NULL, 7, 'Selvi Yana', 'Accounting & Fin', '202208-081', '2022-08-29', '2022-08-30 00:29:10', '2022-08-30 00:29:10', 'Mahesa (PKL)'),
(1438, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202208-082', '2022-08-30', '2022-08-31 00:29:44', '2022-08-31 00:29:44', 'Mahesa (PKL)'),
(1439, NULL, NULL, 16, NULL, 'Accounting & Fin', '202208-083', '2022-08-30', '2022-08-31 00:30:18', '2022-08-31 00:30:18', 'Mahesa (PKL)'),
(1440, '1', NULL, 16, 'Yunie', 'Production', '202208-083', '2022-08-30', '2022-08-31 00:31:06', '2022-08-31 00:31:06', 'Mahesa (PKL)'),
(1441, '1', NULL, 20, 'Adang', 'Engineering', '202208-084', '2022-08-30', '2022-08-31 00:32:17', '2022-08-31 00:32:17', 'Mahesa (PKL)'),
(1442, '1', NULL, 15, 'Fathur', 'IT', '202208-085', '2022-08-30', '2022-08-31 00:33:07', '2022-08-31 00:33:07', 'Mahesa (PKL)'),
(1443, '10', NULL, 24, 'Adit', 'Inventory Management', '202208-086', '2022-08-30', '2022-08-31 00:34:20', '2022-08-31 00:34:20', 'Mahesa (PKL)'),
(1444, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202208-087', '2022-08-31', '2022-09-01 00:22:02', '2022-09-01 00:22:02', 'Mahesa (PKL)'),
(1445, '10', NULL, 24, 'Sukardi', 'Production', '202208-088', '2022-08-31', '2022-09-01 00:22:44', '2022-09-01 00:22:44', 'Mahesa (PKL)'),
(1446, '1', NULL, 4, 'Anna', 'Accounting & Fin', '202208-089', '2022-08-31', '2022-09-01 00:23:50', '2022-09-01 00:23:50', 'Mahesa (PKL)'),
(1447, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202208-089', '2022-08-31', '2022-09-01 00:24:29', '2022-09-01 00:24:29', 'Mahesa (PKL)'),
(1448, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202209-001', '2022-09-01', '2022-09-02 00:26:41', '2022-09-02 00:26:41', 'Mahesa (PKL)'),
(1449, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202209-001', '2022-09-01', '2022-09-02 00:28:24', '2022-09-02 00:28:24', 'Mahesa (PKL)'),
(1450, '15', NULL, 24, 'Fanji', 'Production', '202209-002', '2022-09-01', '2022-09-02 00:35:33', '2022-09-02 00:35:33', 'Mahesa (PKL)'),
(1451, '10', NULL, 24, 'Ghufron', 'QA', '202209-003', '2022-09-01', '2022-09-02 00:36:24', '2022-09-02 00:36:24', 'Mahesa (PKL)'),
(1452, '10', NULL, 25, 'Ghufron', 'QA', '202209-003', '2022-09-01', '2022-09-02 00:36:53', '2022-09-02 00:36:53', 'Mahesa (PKL)'),
(1453, '1', NULL, 7, 'Kuriyah', 'Accounting & Fin', '202208-004', '2022-09-02', '2022-09-02 00:38:13', '2022-09-02 00:38:13', 'Mahesa (PKL)'),
(1454, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:40', '2022-09-05 00:23:40', 'Mahesa (PKL)'),
(1455, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:41', '2022-09-05 00:23:41', 'Mahesa (PKL)'),
(1456, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:41', '2022-09-05 00:23:41', 'Mahesa (PKL)'),
(1457, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:41', '2022-09-05 00:23:41', 'Mahesa (PKL)'),
(1458, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:42', '2022-09-05 00:23:42', 'Mahesa (PKL)'),
(1459, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:42', '2022-09-05 00:23:42', 'Mahesa (PKL)'),
(1460, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:42', '2022-09-05 00:23:42', 'Mahesa (PKL)'),
(1461, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:43', '2022-09-05 00:23:43', 'Mahesa (PKL)'),
(1462, '10', NULL, 24, 'Nimun', 'Production', '202209-005', '2022-09-02', '2022-09-05 00:23:43', '2022-09-05 00:23:43', 'Mahesa (PKL)'),
(1463, '1', NULL, 33, 'Drajat', 'QA', '202209-006', '2022-09-02', '2022-09-05 00:24:46', '2022-09-05 00:24:46', 'Mahesa (PKL)'),
(1464, '10', NULL, 24, 'Putri', 'Inventory Management', '202209-007', '2022-09-05', '2022-09-06 00:19:45', '2022-09-06 00:19:45', 'Mahesa (PKL)'),
(1465, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202209-008', '2022-09-05', '2022-09-06 00:20:49', '2022-09-06 00:20:49', 'Mahesa (PKL)'),
(1466, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202209-009', '2022-09-05', '2022-09-06 00:22:16', '2022-09-06 00:22:16', 'Mahesa (PKL)'),
(1467, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202209-010', '2022-09-05', '2022-09-06 00:23:07', '2022-09-06 00:23:07', 'Mahesa (PKL)'),
(1468, '1', NULL, 5, 'Sony', 'IT', '202209-011', '2022-09-05', '2022-09-06 00:24:08', '2022-09-06 00:24:08', 'Mahesa (PKL)'),
(1469, '2', NULL, 1, 'Aroup', 'PPC & Delvcon', '202209-012', '2022-09-05', '2022-09-06 00:24:45', '2022-09-06 00:24:45', 'Mahesa (PKL)'),
(1470, '1', NULL, 3, 'Annisa', 'Accounting & Fin', '202209-013', '2022-09-06', '2022-09-06 23:59:42', '2022-09-06 23:59:42', 'Mahesa (PKL)'),
(1471, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202209-014', '2022-09-06', '2022-09-07 00:00:16', '2022-09-07 00:00:16', 'Mahesa (PKL)'),
(1472, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202209-014', '2022-09-06', '2022-09-07 00:00:40', '2022-09-07 00:00:40', 'Mahesa (PKL)'),
(1473, '1', NULL, 7, 'Riska', 'Accounting & Fin', '202209-015', '2022-09-06', '2022-09-07 00:01:20', '2022-09-07 00:01:20', 'Mahesa (PKL)'),
(1474, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202209-016', '2022-09-06', '2022-09-07 00:01:56', '2022-09-07 00:01:56', 'Mahesa (PKL)'),
(1475, '1', NULL, 7, 'Yati', 'Accounting & Fin', '202209-017', '2022-09-07', '2022-09-08 00:33:54', '2022-09-08 00:33:54', 'Mahesa (PKL)'),
(1476, '10', NULL, 24, 'Amirudin', 'Production', '202209-018', '2022-09-07', '2022-09-08 00:37:11', '2022-09-08 00:37:11', 'Mahesa (PKL)'),
(1477, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202209-019', '2022-09-07', '2022-09-08 00:37:54', '2022-09-08 00:37:54', 'Mahesa (PKL)'),
(1478, '1', NULL, 7, 'Nanda', 'Marketing', '202209-020', '2022-09-07', '2022-09-08 00:38:39', '2022-09-08 00:38:39', 'Mahesa (PKL)'),
(1479, '3', NULL, 44, 'Nimun', 'Production', '202209-021', '2022-09-07', '2022-09-08 00:58:39', '2022-09-08 00:58:39', 'Mahesa (PKL)'),
(1480, '1', NULL, 7, 'Yakub', 'Inventory Management', '202209-022', '2022-09-08', '2022-09-09 00:08:13', '2022-09-09 00:08:13', 'Mahesa (PKL)'),
(1481, '1', NULL, 33, 'Sujatman', 'PPC & Delvcon', '202209-023', '2022-09-08', '2022-09-09 00:12:09', '2022-09-09 00:12:09', 'Mahesa (PKL)'),
(1482, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '20229-024', '2022-09-08', '2022-09-09 00:13:21', '2022-09-09 00:13:21', 'Mahesa (PKL)'),
(1483, '1', NULL, 46, 'Ludi. A', 'Production', '202209-025', '2022-09-09', '2022-09-09 00:14:49', '2022-09-09 00:14:49', 'Mahesa (PKL)'),
(1484, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202209-026', '2022-09-12', '2022-09-12 04:17:50', '2022-09-12 04:17:50', 'Mahesa (PKL)'),
(1485, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202209-026', '2022-09-12', '2022-09-12 04:18:27', '2022-09-12 04:18:27', 'Mahesa (PKL)'),
(1486, '1', NULL, 5, 'Dita', 'Purchasing', '202209-027', '2022-09-12', '2022-09-12 04:19:07', '2022-09-12 04:19:07', 'Mahesa (PKL)'),
(1487, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202209-028', '2022-09-12', '2022-09-12 04:19:53', '2022-09-12 04:19:53', 'Mahesa (PKL)'),
(1488, '15', NULL, 24, 'Firmansyah', 'QA', '202209-029', '2022-09-12', '2022-09-12 04:20:45', '2022-09-12 04:20:45', 'Mahesa (PKL)'),
(1489, '15', NULL, 24, 'Fanji', 'Production', '202209-030', '2022-09-12', '2022-09-12 04:22:15', '2022-09-12 04:22:15', 'Mahesa (PKL)'),
(1490, '1', NULL, 19, 'Septi', 'Inventory Management', '202209-031', '2022-09-12', '2022-09-12 04:25:56', '2022-09-12 04:25:56', 'Mahesa (PKL)'),
(1491, '1', NULL, 34, 'alif', 'IT', '202209-032', '2022-09-12', '2022-09-12 06:21:06', '2022-09-12 06:21:06', 'Mahesa (PKL)'),
(1492, '1', NULL, 19, 'Fauzan', 'Production', '202209-033', '2022-09-13', '2022-09-13 06:53:13', '2022-09-13 06:53:13', 'Mahesa (PKL)'),
(1493, '1', NULL, 17, 'Fauzan', 'Production', '202209-034', '2022-09-13', '2022-09-13 06:53:51', '2022-09-13 06:53:51', 'Mahesa (PKL)'),
(1494, '15', NULL, 24, 'Ghufron', 'QA', '202209-035', '2022-09-13', '2022-09-13 07:51:52', '2022-09-13 07:51:52', 'Mahesa (PKL)'),
(1495, '10', NULL, 25, 'Ghufron', 'GA', '202209-035', '2022-09-13', '2022-09-13 07:52:54', '2022-09-13 07:52:54', 'Mahesa (PKL)'),
(1496, '2', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202209-036', '2022-09-13', '2022-09-13 07:58:48', '2022-09-13 07:58:48', 'Mahesa (PKL)'),
(1497, '15', NULL, 24, 'Nimun', 'Production', '202209-037', '2022-09-13', '2022-09-13 08:00:41', '2022-09-13 08:00:41', 'Mahesa (PKL)'),
(1498, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202209-038', '2022-09-14', '2022-09-16 01:25:42', '2022-09-16 01:25:42', 'Mahesa (PKL)'),
(1499, '1', NULL, 19, 'Taufiq', 'Production', '202209-039', '2022-09-14', '2022-09-16 01:27:14', '2022-09-16 01:27:14', 'Mahesa (PKL)'),
(1500, '1', NULL, 16, 'Taufiq', 'Production', '202209-039', '2022-09-14', '2022-09-16 01:27:47', '2022-09-16 01:27:47', 'Mahesa (PKL)'),
(1501, '1', NULL, 16, 'Ghufron', 'QA', '202209-040', '2022-09-15', '2022-09-16 01:29:51', '2022-09-16 01:29:51', 'Mahesa (PKL)'),
(1502, '1', NULL, 19, 'Ghufron', 'QA', '202209-040', '2022-09-15', '2022-09-16 01:30:41', '2022-09-16 01:30:41', 'Mahesa (PKL)'),
(1503, '15', NULL, 24, 'Fanji', 'Production', '202209-041', '2022-09-15', '2022-09-16 01:31:17', '2022-09-16 01:31:17', 'Mahesa (PKL)'),
(1504, '1', NULL, 32, 'Dayat', 'PPC & Delvcon', '202209-042', '2022-09-14', '2022-09-16 01:32:31', '2022-09-16 01:32:31', 'Mahesa (PKL)'),
(1505, '1', NULL, 16, 'Jaenal', 'GA', '202209-043', '2022-09-16', '2022-09-16 01:33:18', '2022-09-16 01:33:18', 'Mahesa (PKL)'),
(1506, '1', NULL, 17, 'Jaenal', 'GA', '202209-043', '2022-09-16', '2022-09-16 01:33:52', '2022-09-16 01:33:52', 'Mahesa (PKL)'),
(1507, '1', NULL, 18, 'Jaenal', 'GA', '202209-043', '2022-09-16', '2022-09-16 01:34:42', '2022-09-16 01:34:42', 'Mahesa (PKL)'),
(1508, '1', NULL, 19, 'Jaenal', 'GA', '202209-043', '2022-09-16', '2022-09-16 01:35:05', '2022-09-16 01:35:05', 'Mahesa (PKL)'),
(1509, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202209-044', '2022-09-16', '2022-09-19 00:22:54', '2022-09-19 00:22:54', 'Mahesa (PKL)'),
(1510, '10', NULL, 24, 'Heri Akbar', 'Production', '202209-045', '2022-09-19', '2022-09-20 00:33:44', '2022-09-20 00:33:44', 'Mahesa (PKL)'),
(1511, '10', NULL, 24, 'Rohman S', 'Production', '202209-046', '2022-09-19', '2022-09-20 00:35:25', '2022-09-20 00:35:25', 'Mahesa (PKL)'),
(1512, '10', NULL, 24, 'Amiruddin', 'Production', '202209-047', '2022-09-19', '2022-09-20 00:38:02', '2022-09-20 00:38:02', 'Mahesa (PKL)'),
(1513, '15', NULL, 24, 'Ghufron', 'QA', '202209-048', '2022-09-21', '2022-09-21 01:39:42', '2022-09-21 01:39:42', 'M Rizqi Nur Alif'),
(1514, '10', NULL, 25, 'Ghufron', 'QA', '202209-048', '2022-09-21', '2022-09-21 01:40:46', '2022-09-21 01:40:46', 'M Rizqi Nur Alif'),
(1515, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202209-049', '2022-09-20', '2022-09-21 01:41:54', '2022-09-21 01:41:54', 'M Rizqi Nur Alif'),
(1516, '2', NULL, 24, 'Rifal', 'PPC & Delvcon', '202209-050', '2022-09-20', '2022-09-21 01:43:13', '2022-09-21 01:43:13', 'M Rizqi Nur Alif'),
(1517, '3', NULL, 1, 'Ahmad Roup', 'PPC & Delvcon', '202209-051', '2022-09-20', '2022-09-21 01:48:09', '2022-09-21 01:48:09', 'M Rizqi Nur Alif'),
(1518, '2', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202209-052', '2022-09-21', '2022-09-23 00:59:35', '2022-09-23 00:59:35', 'M Rizqi Nur Alif'),
(1519, '1', NULL, 32, 'Abdul Majid', 'Production', '202209-053', '2022-09-21', '2022-09-23 01:00:24', '2022-09-23 01:00:24', 'M Rizqi Nur Alif'),
(1520, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202209-054', '2022-09-22', '2022-09-23 01:01:58', '2022-09-23 01:01:58', 'M Rizqi Nur Alif'),
(1521, '1', NULL, 7, 'Nanda', 'Marketing', '202209-055', '2022-09-22', '2022-09-23 01:03:08', '2022-09-23 01:03:08', 'M Rizqi Nur Alif'),
(1522, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202209-056', '2022-09-22', '2022-09-23 01:04:02', '2022-09-23 01:04:02', 'M Rizqi Nur Alif'),
(1523, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202209-057', '2022-09-26', '2022-09-26 03:01:29', '2022-09-26 03:01:29', 'M Rizqi Nur Alif');
INSERT INTO `stok_out` (`id`, `jumlah`, `barang_name`, `barang_id`, `name`, `section`, `no_perm`, `date`, `created_at`, `updated_at`, `input_by`) VALUES
(1524, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202209-057', '2022-09-26', '2022-09-26 03:01:52', '2022-09-26 03:01:52', 'M Rizqi Nur Alif'),
(1525, '10', NULL, 24, 'Amirudin', 'Production', '202209-058', '2022-09-26', '2022-09-26 03:03:22', '2022-09-26 03:03:22', 'M Rizqi Nur Alif'),
(1526, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202209-059', '2022-09-26', '2022-09-26 03:04:24', '2022-09-26 03:04:24', 'M Rizqi Nur Alif'),
(1527, '1', NULL, 32, 'Felisia Putri(PKL)', 'Accounting & Fin', '202209-060', '2022-09-26', '2022-09-26 03:06:49', '2022-09-26 03:06:49', 'M Rizqi Nur Alif'),
(1528, '1', NULL, 2, 'Hidayat', 'PPC & Delvcon', '202209-061', '2022-09-27', '2022-09-29 01:32:40', '2022-09-29 01:32:40', 'M Rizqi Nur Alif'),
(1529, '15', NULL, 24, 'Ghufron', 'QA', '202209-062', '2022-09-27', '2022-09-29 01:33:51', '2022-09-29 01:33:51', 'M Rizqi Nur Alif'),
(1530, '15', NULL, 24, 'Fanji', 'Production', '202209-063', '2022-09-27', '2022-09-29 01:35:04', '2022-09-29 01:35:04', 'M Rizqi Nur Alif'),
(1531, '1', NULL, 10, 'INUNG', 'Engineering', '202209-064', '2022-09-27', '2022-09-29 01:36:11', '2022-09-29 01:36:11', 'M Rizqi Nur Alif'),
(1532, '2', NULL, 16, 'INUNG', 'Engineering', '202209-064', '2022-09-27', '2022-09-29 01:36:58', '2022-09-29 01:36:58', 'M Rizqi Nur Alif'),
(1533, '1', NULL, 17, 'INUNG', 'Engineering', '202209-064', '2022-09-27', '2022-09-29 01:37:22', '2022-09-29 01:37:22', 'M Rizqi Nur Alif'),
(1534, '1', NULL, 19, 'INUNG', 'Engineering', '202209-064', '2022-09-27', '2022-09-29 01:37:57', '2022-09-29 01:37:57', 'M Rizqi Nur Alif'),
(1535, '1', NULL, 18, 'Ghufron', 'QA', '202209-065', '2022-09-27', '2022-09-29 01:38:54', '2022-09-29 01:38:54', 'M Rizqi Nur Alif'),
(1536, '1', NULL, 17, 'Ghufron', 'QA', '202209-065', '2022-09-27', '2022-09-29 01:39:28', '2022-09-29 01:39:28', 'M Rizqi Nur Alif'),
(1537, '1', NULL, 16, 'Ghufron', 'QA', '202209-065', '2022-09-27', '2022-09-29 01:39:51', '2022-09-29 01:39:51', 'M Rizqi Nur Alif'),
(1538, '15', NULL, 24, 'Wahyu', 'QA', '202209-066', '2022-09-27', '2022-09-29 01:42:03', '2022-09-29 01:42:03', 'M Rizqi Nur Alif'),
(1539, '10', NULL, 25, 'Wahyu', 'QA', '202209-066', '2022-09-27', '2022-09-29 01:42:32', '2022-09-29 01:42:32', 'M Rizqi Nur Alif'),
(1540, '1', NULL, 7, 'Silvi', 'Marketing', '202209-067', '2022-09-27', '2022-09-29 01:45:26', '2022-09-29 01:45:26', 'M Rizqi Nur Alif'),
(1541, '1', NULL, 5, 'Ilham', 'Purchasing', '202209-068', '2022-09-27', '2022-09-29 01:46:28', '2022-09-29 01:46:28', 'M Rizqi Nur Alif'),
(1542, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202209-069', '2022-09-27', '2022-09-29 01:47:46', '2022-09-29 01:47:46', 'M Rizqi Nur Alif'),
(1543, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202209-069', '2022-09-27', '2022-09-29 01:48:09', '2022-09-29 01:48:09', 'M Rizqi Nur Alif'),
(1544, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202209-070', '2022-09-27', '2022-09-29 01:49:16', '2022-09-29 01:49:16', 'M Rizqi Nur Alif'),
(1545, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202209-071', '2022-09-28', '2022-09-29 01:50:01', '2022-09-29 01:50:01', 'M Rizqi Nur Alif'),
(1546, '1', NULL, 1, 'Roup', 'PPC & Delvcon', '202209-072', '2022-09-28', '2022-09-29 01:51:14', '2022-09-29 01:51:14', 'M Rizqi Nur Alif'),
(1547, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202209-073', '2022-09-28', '2022-09-29 01:51:46', '2022-09-29 01:51:46', 'M Rizqi Nur Alif'),
(1548, '2', NULL, 44, 'Eko .P', 'Production', '202209-074', '2022-09-28', '2022-09-29 01:52:55', '2022-09-29 01:52:55', 'M Rizqi Nur Alif'),
(1549, '2', NULL, 45, 'Eko .P', 'Production', '202209-074', '2022-09-28', '2022-09-29 01:53:25', '2022-09-29 01:53:25', 'M Rizqi Nur Alif'),
(1550, '10', NULL, 24, 'Eko .P', 'Production', '202209-074', '2022-09-28', '2022-09-29 01:53:49', '2022-09-29 01:53:49', 'M Rizqi Nur Alif'),
(1551, '1', NULL, 34, 'Adhi', 'Production', '202209-075', '2022-09-28', '2022-09-29 01:55:15', '2022-09-29 01:55:15', 'M Rizqi Nur Alif'),
(1552, '1', NULL, 1, 'Pujianto', 'PPC & Delvcon', '202209-076', '2022-09-29', '2022-10-03 06:44:44', '2022-10-03 06:44:44', 'M Rizqi Nur Alif'),
(1553, '1', NULL, 32, 'Marudin', 'Production', '202209-077', '2022-09-30', '2022-10-03 06:46:11', '2022-10-03 06:46:11', 'M Rizqi Nur Alif'),
(1554, '1', NULL, 34, 'Marudin', 'Production', '202209-077', '2022-09-30', '2022-10-03 06:49:29', '2022-10-03 06:49:29', 'M Rizqi Nur Alif'),
(1555, '15', NULL, 24, 'Fanji', 'Production', '202209-078', '2022-09-30', '2022-10-03 07:05:19', '2022-10-03 07:05:19', 'M Rizqi Nur Alif'),
(1556, '15', NULL, 24, 'Rikan', 'Inventory Management', '202209-079', '2022-09-30', '2022-10-03 07:06:23', '2022-10-03 07:06:23', 'M Rizqi Nur Alif'),
(1557, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202209-080', '2022-09-30', '2022-10-03 07:08:23', '2022-10-03 07:08:23', 'M Rizqi Nur Alif'),
(1558, '1', NULL, 31, 'Iis S', 'QHSE', '202210-001', '2022-10-03', '2022-10-03 07:11:09', '2022-10-03 07:11:09', 'M Rizqi Nur Alif'),
(1559, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-002', '2022-10-03', '2022-10-03 07:11:49', '2022-10-03 07:11:49', 'M Rizqi Nur Alif'),
(1560, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-003', '2022-10-03', '2022-10-03 07:12:48', '2022-10-03 07:12:48', 'M Rizqi Nur Alif'),
(1561, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-003', '2022-10-03', '2022-10-03 07:13:16', '2022-10-03 07:13:16', 'M Rizqi Nur Alif'),
(1562, '10', NULL, 24, 'Amiruddin', 'Production', '202210-004', '2022-10-03', '2022-10-03 07:14:20', '2022-10-03 07:14:20', 'M Rizqi Nur Alif'),
(1563, '2', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202210-005', '2022-10-03', '2022-10-03 07:45:28', '2022-10-03 07:45:28', 'M Rizqi Nur Alif'),
(1564, '1', NULL, 1, 'Alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 00:52:11', '2022-10-04 00:52:11', 'M Rizqi Nur Alif'),
(1565, '2', NULL, 2, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 00:53:20', '2022-10-04 00:53:20', 'M Rizqi Nur Alif'),
(1566, '1', NULL, 8, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:19:06', '2022-10-04 01:19:06', 'M Rizqi Nur Alif'),
(1567, '1', NULL, 16, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:23:22', '2022-10-04 01:23:22', 'M Rizqi Nur Alif'),
(1568, '1', NULL, 21, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:24:53', '2022-10-04 01:24:53', 'M Rizqi Nur Alif'),
(1569, '420‬', NULL, 24, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:28:36', '2022-10-04 01:28:36', 'M Rizqi Nur Alif'),
(1570, '420', NULL, 24, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:28:45', '2022-10-04 01:28:45', 'M Rizqi Nur Alif'),
(1571, '11', NULL, 44, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:31:22', '2022-10-04 01:31:22', 'M Rizqi Nur Alif'),
(1572, '1', NULL, 45, 'alif', 'IT', 'Stok Opname', '2022-10-04', '2022-10-04 01:34:41', '2022-10-04 01:34:41', 'M Rizqi Nur Alif'),
(1573, '1', NULL, 7, 'Nanda', 'Marketing', '202210-006', '2022-10-04', '2022-10-04 01:38:39', '2022-10-04 01:38:39', 'M Rizqi Nur Alif'),
(1574, '1', NULL, 7, 'Kuriyah', 'Accounting & Fin', '202210-007', '2022-10-04', '2022-10-04 01:40:03', '2022-10-04 01:40:03', 'M Rizqi Nur Alif'),
(1575, '1', NULL, 7, 'Felisia Putri(PKL)', 'Accounting & Fin', '202210-008', '2022-10-04', '2022-10-05 00:37:50', '2022-10-05 00:37:50', 'M Rizqi Nur Alif'),
(1576, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202210-009', '2022-10-05', '2022-10-05 00:38:58', '2022-10-05 00:38:58', 'M Rizqi Nur Alif'),
(1577, '1', NULL, 7, 'Agung', 'Accounting & Fin', '202210-010', '2022-10-05', '2022-10-05 02:00:45', '2022-10-05 02:00:45', 'M Rizqi Nur Alif'),
(1578, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202210-011', '2022-10-05', '2022-10-05 02:04:35', '2022-10-05 02:04:35', 'M Rizqi Nur Alif'),
(1579, '1', NULL, 32, 'Joko Prasetyo', 'Accounting & Fin', '202210-012', '2022-10-05', '2022-10-05 02:06:16', '2022-10-05 02:06:16', 'M Rizqi Nur Alif'),
(1580, '1', NULL, 7, 'dewi', 'Accounting & Fin', '202210-013', '2022-10-05', '2022-10-06 00:21:08', '2022-10-06 00:21:08', 'M Rizqi Nur Alif'),
(1581, '1', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202210-014', '2022-10-05', '2022-10-06 01:22:17', '2022-10-06 01:22:17', 'M Rizqi Nur Alif'),
(1582, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-014', '2022-10-05', '2022-10-06 01:23:17', '2022-10-06 01:23:17', 'M Rizqi Nur Alif'),
(1583, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202210-016', '2022-10-05', '2022-10-06 01:24:45', '2022-10-06 01:24:45', 'M Rizqi Nur Alif'),
(1584, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-017', '2022-10-05', '2022-10-06 01:25:52', '2022-10-06 01:25:52', 'M Rizqi Nur Alif'),
(1585, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-017', '2022-10-05', '2022-10-06 01:26:35', '2022-10-06 01:26:35', 'M Rizqi Nur Alif'),
(1586, '1', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202210-018', '2022-10-05', '2022-10-06 01:27:29', '2022-10-06 01:27:29', 'M Rizqi Nur Alif'),
(1587, '10', NULL, 24, 'Heri Akbar', 'Accounting & Fin', '202210-019', '2022-10-05', '2022-10-06 01:28:39', '2022-10-06 01:28:39', 'M Rizqi Nur Alif'),
(1588, '1', NULL, 5, 'Ryo', 'Purchasing', '202210-020', '2022-10-05', '2022-10-06 01:29:41', '2022-10-06 01:29:41', 'M Rizqi Nur Alif'),
(1589, '1', NULL, 14, 'Hanif', 'IT', '202209-081', '2022-09-21', '2022-10-07 01:16:37', '2022-10-07 01:16:37', 'M Rizqi Nur Alif'),
(1590, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202210-021', '2022-10-07', '2022-10-10 00:24:42', '2022-10-10 00:24:42', 'M Rizqi Nur Alif'),
(1591, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-022', '2022-10-07', '2022-10-10 00:25:37', '2022-10-10 00:25:37', 'M Rizqi Nur Alif'),
(1592, '15', NULL, 24, 'Ghufron', 'QA', '202210-023', '2022-10-07', '2022-10-10 00:26:29', '2022-10-10 00:26:29', 'M Rizqi Nur Alif'),
(1593, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-024', '2022-10-11', '2022-10-12 00:39:10', '2022-10-12 00:39:10', 'M Rizqi Nur Alif'),
(1594, '1', NULL, 7, 'Maulidia', 'Accounting & Fin', '202210-025', '2022-10-11', '2022-10-12 00:40:09', '2022-10-12 00:40:09', 'M Rizqi Nur Alif'),
(1595, '1', NULL, 7, 'Nanda', 'Marketing', '202210-026', '2022-10-10', '2022-10-12 00:41:11', '2022-10-12 00:41:11', 'M Rizqi Nur Alif'),
(1596, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-027', '2022-10-10', '2022-10-12 00:41:57', '2022-10-12 00:41:57', 'M Rizqi Nur Alif'),
(1597, '3', NULL, 27, 'Maryo', 'Accounting & Fin', '202210-027', '2022-10-10', '2022-10-12 00:42:16', '2022-10-12 00:42:16', 'M Rizqi Nur Alif'),
(1598, '15', NULL, 24, 'Nimun', 'Production', '202210-028', '2022-10-10', '2022-10-12 00:43:04', '2022-10-12 00:43:04', 'M Rizqi Nur Alif'),
(1599, '15', NULL, 24, 'Panji', 'Inventory Management', '202210-029', '2022-10-10', '2022-10-12 00:43:54', '2022-10-12 00:43:54', 'M Rizqi Nur Alif'),
(1600, '1', NULL, 1, 'Jupri', 'PPC & Delvcon', '202210-030', '2022-10-12', '2022-10-12 02:38:35', '2022-10-12 02:38:35', 'M Rizqi Nur Alif'),
(1601, '1', NULL, 34, 'Iis S', 'QHSE', '202210-031', '2022-10-13', '2022-10-13 01:50:26', '2022-10-13 01:50:26', 'M Rizqi Nur Alif'),
(1602, '5', NULL, 44, 'Nimun', 'Production', '202210-032', '2022-10-13', '2022-10-13 01:51:44', '2022-10-13 01:51:44', 'M Rizqi Nur Alif'),
(1603, '10', NULL, 24, 'Ghufron', 'QA', '202210-033', '2022-10-13', '2022-10-13 01:56:33', '2022-10-13 01:56:33', 'M Rizqi Nur Alif'),
(1604, '10', NULL, 25, 'Ghufron', 'QA', '202210-033', '2022-10-13', '2022-10-13 01:57:05', '2022-10-13 01:57:05', 'M Rizqi Nur Alif'),
(1605, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-034', '2022-10-13', '2022-10-14 00:19:34', '2022-10-14 00:19:34', 'M Rizqi Nur Alif'),
(1606, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-034', '2022-10-13', '2022-10-14 00:19:54', '2022-10-14 00:19:54', 'M Rizqi Nur Alif'),
(1607, '1', NULL, 7, 'Kuriyah', 'Accounting & Fin', '202210-035', '2022-10-13', '2022-10-14 00:21:10', '2022-10-14 00:21:10', 'M Rizqi Nur Alif'),
(1608, '3', NULL, 7, 'Felisia Putri(PKL)', 'Accounting & Fin', '202210-036', '2022-10-13', '2022-10-14 00:22:42', '2022-10-14 00:22:42', 'M Rizqi Nur Alif'),
(1609, '15', NULL, 24, 'Fanji', 'Accounting & Fin', '202210-037', '2022-10-14', '2022-10-19 00:38:13', '2022-10-19 00:38:13', 'M Rizqi Nur Alif'),
(1610, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-038', '2022-10-14', '2022-10-19 00:38:56', '2022-10-19 00:38:56', 'M Rizqi Nur Alif'),
(1611, '1', NULL, 7, 'Nanda', 'Marketing', '202210-039', '2022-10-14', '2022-10-19 00:39:39', '2022-10-19 00:39:39', 'M Rizqi Nur Alif'),
(1612, '10', NULL, 24, 'Rohman S', 'Production', '202210-040', '2022-10-17', '2022-10-19 00:40:49', '2022-10-19 00:40:49', 'M Rizqi Nur Alif'),
(1613, '15', NULL, 24, 'Amiruddin', 'Production', '202210-041', '2022-10-17', '2022-10-19 00:41:44', '2022-10-19 00:41:44', 'M Rizqi Nur Alif'),
(1614, '1', NULL, 16, 'Harsono', 'QA', '202210-042', '2022-10-17', '2022-10-19 00:42:46', '2022-10-19 00:42:46', 'M Rizqi Nur Alif'),
(1615, '1', NULL, 17, 'Harsono', 'QA', '202210-042', '2022-10-17', '2022-10-19 00:43:10', '2022-10-19 00:43:10', 'M Rizqi Nur Alif'),
(1616, '1', NULL, 18, 'Harsono', 'QA', '202210-042', '2022-10-17', '2022-10-19 00:43:29', '2022-10-19 00:43:29', 'M Rizqi Nur Alif'),
(1617, '1', NULL, 19, 'Harsono', 'QA', '202210-042', '2022-10-17', '2022-10-19 00:43:49', '2022-10-19 00:43:49', 'M Rizqi Nur Alif'),
(1618, '1', NULL, 16, 'Harsono', 'QA', '202210-042', '2022-10-17', '2022-10-19 00:45:31', '2022-10-19 00:45:31', 'M Rizqi Nur Alif'),
(1619, '1', NULL, 16, 'Adika', 'Inventory Management', '202210-043', '2022-10-17', '2022-10-19 00:46:45', '2022-10-19 00:46:45', 'M Rizqi Nur Alif'),
(1620, '1', NULL, 17, 'Adika', 'Inventory Management', '202210-043', '2022-10-17', '2022-10-19 00:47:16', '2022-10-19 00:47:16', 'M Rizqi Nur Alif'),
(1621, '1', NULL, 18, 'Adika', 'Inventory Management', '202210-043', '2022-10-17', '2022-10-19 00:47:43', '2022-10-19 00:47:43', 'M Rizqi Nur Alif'),
(1622, '1', NULL, 19, 'Adika', 'Inventory Management', '202210-043', '2022-10-17', '2022-10-19 00:48:16', '2022-10-19 00:48:16', 'M Rizqi Nur Alif'),
(1623, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202210-044', '2022-10-18', '2022-10-19 00:50:14', '2022-10-19 00:50:14', 'M Rizqi Nur Alif'),
(1624, '2', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202210-045', '2022-10-18', '2022-10-19 00:51:04', '2022-10-19 00:51:04', 'M Rizqi Nur Alif'),
(1625, '1', NULL, 5, 'Ilham', 'Purchasing', '202210-046', '2022-10-18', '2022-10-19 00:52:23', '2022-10-19 00:52:23', 'M Rizqi Nur Alif'),
(1626, '1', NULL, 5, 'Sony', 'IT', '202210-047', '2022-10-18', '2022-10-19 00:53:55', '2022-10-19 00:53:55', 'M Rizqi Nur Alif'),
(1627, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202210-048', '2022-10-18', '2022-10-19 00:54:52', '2022-10-19 00:54:52', 'M Rizqi Nur Alif'),
(1628, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-049', '2022-10-18', '2022-10-19 00:56:31', '2022-10-19 00:56:31', 'M Rizqi Nur Alif'),
(1629, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-049', '2022-10-18', '2022-10-19 00:56:54', '2022-10-19 00:56:54', 'M Rizqi Nur Alif'),
(1630, '15', NULL, 24, 'Ghufron', 'QA', '202210-050', '2022-10-18', '2022-10-19 00:57:36', '2022-10-19 00:57:36', 'M Rizqi Nur Alif'),
(1631, '1', NULL, 20, 'Riska', 'Accounting & Fin', '202210-051', '2022-10-19', '2022-10-24 00:44:02', '2022-10-24 00:44:02', 'M Rizqi Nur Alif'),
(1632, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202210-052', '2022-10-19', '2022-10-24 00:45:41', '2022-10-24 00:45:41', 'M Rizqi Nur Alif'),
(1633, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202210-053', '2022-10-20', '2022-10-24 00:46:34', '2022-10-24 00:46:34', 'M Rizqi Nur Alif'),
(1634, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-054', '2022-10-20', '2022-10-24 00:47:26', '2022-10-24 00:47:26', 'M Rizqi Nur Alif'),
(1635, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-055', '2022-10-21', '2022-10-24 00:48:24', '2022-10-24 00:48:24', 'M Rizqi Nur Alif'),
(1636, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-055', '2022-10-21', '2022-10-24 00:48:45', '2022-10-24 00:48:45', 'M Rizqi Nur Alif'),
(1637, '5', NULL, 24, 'Amiruddin', 'Production', '202210-056', '2022-10-21', '2022-10-24 00:49:46', '2022-10-24 00:49:46', 'M Rizqi Nur Alif'),
(1638, '1', NULL, 7, 'Maryo', 'PPC & Delvcon', '202210-057', '2022-10-21', '2022-10-24 00:51:46', '2022-10-24 00:51:46', 'M Rizqi Nur Alif'),
(1639, '15', NULL, 24, 'Panji', 'Inventory Management', '202210-058', '2022-10-21', '2022-10-24 01:01:46', '2022-10-24 01:01:46', 'M Rizqi Nur Alif'),
(1640, '1', NULL, 7, 'Nursaidah', 'Accounting & Fin', '202210-059', '2022-10-23', '2022-10-24 01:02:49', '2022-10-24 01:02:49', 'M Rizqi Nur Alif'),
(1641, '1', NULL, 36, 'Yudi P', 'HRD', '202210-060', '2022-10-24', '2022-10-24 01:03:46', '2022-10-24 01:03:46', 'M Rizqi Nur Alif'),
(1642, '1', NULL, 16, 'Riyanti Sekretaris', 'Accounting & Fin', '202210-061', '2022-10-24', '2022-10-24 01:06:12', '2022-10-24 01:06:12', 'M Rizqi Nur Alif'),
(1643, '15', NULL, 24, 'Fanji', 'PPC & Delvcon', '202210-062', '2022-10-24', '2022-10-28 06:12:03', '2022-10-28 06:12:03', 'M Rizqi Nur Alif'),
(1644, '1', NULL, 6, 'Anna', 'Accounting & Fin', '202210-063', '2022-10-24', '2022-10-28 06:13:27', '2022-10-28 06:13:27', 'M Rizqi Nur Alif'),
(1646, '15', NULL, 24, 'Nimun', 'Production', '202210-064', '2022-10-24', '2022-10-28 06:15:37', '2022-10-28 06:15:37', 'M Rizqi Nur Alif'),
(1647, '1', NULL, 16, 'Taufik', 'Inventory Management', '202210-065', '2022-10-24', '2022-10-28 06:16:39', '2022-10-28 06:16:39', 'M Rizqi Nur Alif'),
(1648, '15', NULL, 24, 'Ghufron', 'QA', '202210-066', '2022-10-24', '2022-10-28 06:17:11', '2022-10-28 06:17:11', 'M Rizqi Nur Alif'),
(1651, '15', NULL, 24, 'Fanji', 'PPC & Delvcon', '202210-067', '2022-10-27', '2022-10-28 06:23:25', '2022-10-28 06:23:25', 'M Rizqi Nur Alif'),
(1652, '1', NULL, 10, 'lala', 'Purchasing', '202210-068', '2022-10-25', '2022-10-28 07:13:19', '2022-10-28 07:13:19', 'M Rizqi Nur Alif'),
(1653, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-069', '2022-10-25', '2022-10-28 08:47:57', '2022-10-28 08:47:57', 'M Rizqi Nur Alif'),
(1654, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-069', '2022-10-25', '2022-10-28 08:48:57', '2022-10-28 08:48:57', 'M Rizqi Nur Alif'),
(1655, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-070', '2022-10-25', '2022-10-28 08:53:17', '2022-10-28 08:53:17', 'M Rizqi Nur Alif'),
(1656, '1', NULL, 18, 'Riyanti Sekretaris', 'Accounting & Fin', '202210-071', '2022-10-25', '2022-10-31 00:55:55', '2022-10-31 00:55:55', 'M Rizqi Nur Alif'),
(1657, '1', NULL, 19, 'Riyanti Sekretaris', 'Accounting & Fin', '202210-071', '2022-10-25', '2022-10-31 00:56:16', '2022-10-31 00:56:16', 'M Rizqi Nur Alif'),
(1658, '1', NULL, 17, 'Riyanti Sekretaris', 'Accounting & Fin', '202210-071', '2022-10-25', '2022-10-31 00:56:35', '2022-10-31 00:56:35', 'M Rizqi Nur Alif'),
(1659, '1', NULL, 3, 'Nursaidah', 'Accounting & Fin', '202210-072', '2022-10-25', '2022-10-31 04:25:16', '2022-10-31 04:25:16', 'M Rizqi Nur Alif'),
(1660, '1', NULL, 1, 'Jupri', 'PPC & Delvcon', '202210-073', '2022-10-26', '2022-10-31 04:25:53', '2022-10-31 04:25:53', 'M Rizqi Nur Alif'),
(1661, '1', NULL, 16, 'Ghufron', 'QA', '202210-074', '2022-10-26', '2022-10-31 04:26:55', '2022-10-31 04:26:55', 'M Rizqi Nur Alif'),
(1662, '10', NULL, 24, 'Ghufron', 'Accounting & Fin', '202210-074', '2022-10-26', '2022-10-31 04:28:15', '2022-10-31 04:28:15', 'M Rizqi Nur Alif'),
(1663, '1', NULL, 7, 'Nanda', 'Marketing', '202210-075', '2022-10-26', '2022-10-31 04:29:06', '2022-10-31 04:29:06', 'M Rizqi Nur Alif'),
(1664, '1', NULL, 34, 'Fathur', 'IT', '202210-075', '2022-10-26', '2022-10-31 04:29:47', '2022-10-31 04:29:47', 'M Rizqi Nur Alif'),
(1665, '1', NULL, 32, 'Husni', 'Engineering', '202210-076', '2022-10-28', '2022-10-31 04:31:53', '2022-10-31 04:31:53', 'M Rizqi Nur Alif'),
(1666, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202210-077', '2022-10-28', '2022-10-31 04:33:12', '2022-10-31 04:33:12', 'M Rizqi Nur Alif'),
(1667, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202210-078', '2022-10-28', '2022-10-31 04:34:01', '2022-10-31 04:34:01', 'M Rizqi Nur Alif'),
(1668, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202210-078', '2022-10-28', '2022-10-31 04:34:21', '2022-10-31 04:34:21', 'M Rizqi Nur Alif'),
(1669, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202210-078', '2022-10-28', '2022-10-31 04:34:46', '2022-10-31 04:34:46', 'M Rizqi Nur Alif'),
(1670, '1', NULL, 7, 'Yakub', 'Inventory Management', '202210-079', '2022-10-31', '2022-10-31 04:35:32', '2022-10-31 04:35:32', 'M Rizqi Nur Alif'),
(1671, '15', NULL, 24, 'Firmansyah', 'QA', '202210-080', '2022-10-31', '2022-11-04 01:22:55', '2022-11-04 01:22:55', 'M Rizqi Nur Alif'),
(1672, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202210-081', '2022-10-31', '2022-11-04 01:24:53', '2022-11-04 01:24:53', 'M Rizqi Nur Alif'),
(1673, '1', NULL, 5, 'Ilham', 'Purchasing', '202211-001', '2022-11-01', '2022-11-04 01:25:56', '2022-11-04 01:25:56', 'M Rizqi Nur Alif'),
(1674, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202211-002', '2022-11-02', '2022-11-04 01:26:38', '2022-11-04 01:26:38', 'M Rizqi Nur Alif'),
(1675, '1', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202211-003', '2022-11-01', '2022-11-04 01:27:34', '2022-11-04 01:27:34', 'M Rizqi Nur Alif'),
(1676, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202211-003', '2022-11-01', '2022-11-04 01:28:18', '2022-11-04 01:28:18', 'M Rizqi Nur Alif'),
(1677, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-004', '2022-11-01', '2022-11-04 01:28:59', '2022-11-04 01:28:59', 'M Rizqi Nur Alif'),
(1678, '1', NULL, 7, 'Nanda', 'Accounting & Fin', '202211-005', '2022-11-02', '2022-11-04 01:29:47', '2022-11-04 01:29:47', 'M Rizqi Nur Alif'),
(1679, '10', NULL, 24, 'Andi W', 'Production', '202211-006', '2022-11-02', '2022-11-04 01:30:51', '2022-11-04 01:30:51', 'M Rizqi Nur Alif'),
(1680, '1', NULL, 7, 'Yanti', 'Inventory Management', '202211-007', '2022-11-02', '2022-11-04 01:33:21', '2022-11-04 01:33:21', 'M Rizqi Nur Alif'),
(1681, '1', NULL, 32, 'Agung', 'Accounting & Fin', '202211-008', '2022-11-02', '2022-11-04 01:34:22', '2022-11-04 01:34:22', 'M Rizqi Nur Alif'),
(1682, NULL, NULL, 2, 'Wi', 'Accounting & Fin', '202211-009', '2022-11-03', '2022-11-04 01:35:14', '2022-11-04 01:35:14', 'M Rizqi Nur Alif'),
(1683, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-009', '2022-11-03', '2022-11-04 01:36:03', '2022-11-04 01:36:03', 'M Rizqi Nur Alif'),
(1684, '15', NULL, 24, 'Ghufron', 'QA', '202211-010', '2022-11-03', '2022-11-04 01:36:45', '2022-11-04 01:36:45', 'M Rizqi Nur Alif'),
(1685, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '202211-011', '2022-11-03', '2022-11-04 01:37:44', '2022-11-04 01:37:44', 'M Rizqi Nur Alif'),
(1686, '10', NULL, 24, 'Sarmilih', 'Production', '202211-012', '2022-11-03', '2022-11-04 01:39:52', '2022-11-04 01:39:52', 'M Rizqi Nur Alif'),
(1687, '1', NULL, 7, 'Nanda', 'Marketing', '202211-013', '2022-11-04', '2022-11-04 01:40:58', '2022-11-04 01:40:58', 'M Rizqi Nur Alif'),
(1688, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202211-013', '2022-11-04', '2022-11-07 00:53:27', '2022-11-07 00:53:27', 'M Rizqi Nur Alif'),
(1689, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-013', '2022-11-04', '2022-11-07 00:54:33', '2022-11-07 00:54:33', 'M Rizqi Nur Alif'),
(1690, '10', NULL, 7, 'Alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:13:03', '2022-11-07 01:13:03', 'M Rizqi Nur Alif'),
(1691, '3', NULL, 6, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:50:56', '2022-11-07 01:50:56', 'M Rizqi Nur Alif'),
(1692, '1', NULL, 3, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:51:34', '2022-11-07 01:51:34', 'M Rizqi Nur Alif'),
(1693, '5', NULL, 5, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:52:19', '2022-11-07 01:52:19', 'M Rizqi Nur Alif'),
(1694, '13', NULL, 1, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:52:58', '2022-11-07 01:52:58', 'M Rizqi Nur Alif'),
(1695, '6', NULL, 2, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:53:24', '2022-11-07 01:53:24', 'M Rizqi Nur Alif'),
(1696, '1', NULL, 10, 'alif', 'IT', 'Stok Opname', '2022-11-07', '2022-11-07 01:56:16', '2022-11-07 01:56:16', 'M Rizqi Nur Alif'),
(1697, '15', NULL, 24, 'Fandi', 'Production', '202211-014', '2022-11-07', '2022-11-09 01:05:27', '2022-11-09 01:05:27', 'M Rizqi Nur Alif'),
(1698, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202211-015', '2022-11-07', '2022-11-09 01:06:30', '2022-11-09 01:06:30', 'M Rizqi Nur Alif'),
(1699, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202211-016', '2022-11-07', '2022-11-09 01:07:24', '2022-11-09 01:07:24', 'M Rizqi Nur Alif'),
(1700, '15', NULL, 24, 'Nimun', 'Production', '202211-017', '2022-11-08', '2022-11-09 01:08:18', '2022-11-09 01:08:18', 'M Rizqi Nur Alif'),
(1701, '1', NULL, 28, 'Iis S', 'QHSE', '202211-018', '2022-11-08', '2022-11-09 01:09:32', '2022-11-09 01:09:32', 'M Rizqi Nur Alif'),
(1702, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202211-019', '2022-11-08', '2022-11-09 01:10:35', '2022-11-09 01:10:35', 'M Rizqi Nur Alif'),
(1703, '1', NULL, 31, 'alif', 'IT', 'Stok Opname', '2022-11-09', '2022-11-09 01:19:23', '2022-11-09 01:19:23', 'M Rizqi Nur Alif'),
(1704, '6', NULL, 19, 'alif', 'IT', 'Stok Opname', '2022-11-09', '2022-11-09 01:43:03', '2022-11-09 01:43:03', 'M Rizqi Nur Alif'),
(1705, '3', NULL, 36, 'alif', 'IT', 'Stok Opname', '2022-11-09', '2022-11-09 01:52:25', '2022-11-09 01:52:25', 'M Rizqi Nur Alif'),
(1706, '1', NULL, 33, 'alif', 'IT', 'Stok Opname', '2022-11-09', '2022-11-09 02:08:25', '2022-11-09 02:08:25', 'M Rizqi Nur Alif'),
(1707, '2', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-020', '2022-11-09', '2022-11-10 02:37:17', '2022-11-10 02:37:17', 'M Rizqi Nur Alif'),
(1708, '20', NULL, 24, 'Jufitri', 'QA', '202211-021', '2022-11-09', '2022-11-10 02:38:56', '2022-11-10 02:38:56', 'M Rizqi Nur Alif'),
(1709, '10', NULL, 25, 'Jufitri', 'QA', '202211-022', '2022-11-09', '2022-11-10 02:39:24', '2022-11-10 02:39:24', 'M Rizqi Nur Alif'),
(1710, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202211-023', '2022-11-09', '2022-11-10 02:40:07', '2022-11-10 02:40:07', 'M Rizqi Nur Alif'),
(1711, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-023', '2022-11-09', '2022-11-10 02:40:37', '2022-11-10 02:40:37', 'M Rizqi Nur Alif'),
(1712, '1', NULL, 7, 'Nanda', 'Marketing', '202211-023', '2022-11-10', '2022-11-14 07:39:28', '2022-11-14 07:39:28', 'M Rizqi Nur Alif'),
(1713, '1', NULL, 5, 'Ilham', 'Purchasing', '202211-024', '2022-11-11', '2022-11-14 07:40:46', '2022-11-14 07:40:46', 'M Rizqi Nur Alif'),
(1714, '15', NULL, 24, 'Fanji', 'Production', '202211-026', '2022-11-11', '2022-11-14 07:42:00', '2022-11-14 07:42:00', 'M Rizqi Nur Alif'),
(1715, '1', NULL, 32, 'alif', 'IT', '202211-025', '2022-11-11', '2022-11-14 07:44:31', '2022-11-14 07:44:31', 'M Rizqi Nur Alif'),
(1716, '1', NULL, 34, 'Nursaidah', 'Accounting & Fin', '202211-027', '2022-11-11', '2022-11-14 07:45:14', '2022-11-14 07:45:14', 'M Rizqi Nur Alif'),
(1717, '2', NULL, 26, 'Maryo', 'Accounting & Fin', '202211-028', '2022-11-11', '2022-11-14 07:45:53', '2022-11-14 07:45:53', 'M Rizqi Nur Alif'),
(1718, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-028', '2022-11-11', '2022-11-14 07:46:41', '2022-11-14 07:46:41', 'M Rizqi Nur Alif'),
(1719, '15', NULL, 24, 'Amiruddin', 'Production', '202211-029', '2022-11-11', '2022-11-14 07:48:12', '2022-11-14 07:48:12', 'M Rizqi Nur Alif'),
(1720, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-030', '2022-11-14', '2022-11-14 07:49:25', '2022-11-14 07:49:25', 'M Rizqi Nur Alif'),
(1721, '1', NULL, 32, 'Dani', 'PPC & Delvcon', '202211-031', '2022-11-14', '2022-11-14 07:50:34', '2022-11-14 07:50:34', 'M Rizqi Nur Alif'),
(1722, '10', NULL, 24, 'Heri Akbar', 'Inventory Management', '02211-032', '2022-11-14', '2022-11-16 03:20:59', '2022-11-16 03:20:59', 'M Rizqi Nur Alif'),
(1723, '15', NULL, 24, 'Ghufron', 'QA', '02211-033', '2022-11-15', '2022-11-16 03:22:17', '2022-11-16 03:22:17', 'M Rizqi Nur Alif'),
(1724, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '02211-034', '2022-11-15', '2022-11-16 03:23:05', '2022-11-16 03:23:05', 'M Rizqi Nur Alif'),
(1725, '1', NULL, 34, 'Yakub', 'Inventory Management', '02211-035', '2022-11-15', '2022-11-16 03:24:00', '2022-11-16 03:24:00', 'M Rizqi Nur Alif'),
(1726, '1', NULL, 44, 'Amiruddin', 'Production', '02211-036', '2022-11-16', '2022-11-16 03:24:56', '2022-11-16 03:24:56', 'M Rizqi Nur Alif'),
(1727, '2', NULL, 32, 'Bayu', 'Engineering', '02211-037', '2022-11-16', '2022-11-16 03:26:46', '2022-11-16 03:26:46', 'M Rizqi Nur Alif'),
(1728, '1', NULL, 20, 'Adang', 'Engineering', '02211-038', '2022-11-16', '2022-11-16 03:28:26', '2022-11-16 03:28:26', 'M Rizqi Nur Alif'),
(1729, '1', NULL, 22, 'Adang', 'Engineering', '02211-038', '2022-11-16', '2022-11-16 03:29:09', '2022-11-16 03:29:09', 'M Rizqi Nur Alif'),
(1730, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202211-039', '2022-11-16', '2022-11-21 00:54:27', '2022-11-21 00:54:27', 'M Rizqi Nur Alif'),
(1731, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-039', '2022-11-16', '2022-11-21 00:55:05', '2022-11-21 00:55:05', 'M Rizqi Nur Alif'),
(1732, '1', NULL, 16, 'Ghufron', 'QA', '202211-040', '2022-11-17', '2022-11-21 00:56:01', '2022-11-21 00:56:01', 'M Rizqi Nur Alif'),
(1733, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-041', '2022-11-17', '2022-11-21 00:56:59', '2022-11-21 00:56:59', 'M Rizqi Nur Alif'),
(1734, '1', NULL, 7, 'Nanda', 'Marketing', '202211-042', '2022-11-18', '2022-11-21 00:58:13', '2022-11-21 00:58:13', 'M Rizqi Nur Alif'),
(1735, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202211-043', '2022-11-18', '2022-11-21 00:59:19', '2022-11-21 00:59:19', 'M Rizqi Nur Alif'),
(1736, '10', NULL, 24, 'Putri PKL', 'Inventory Management', '202211-044', '2022-11-18', '2022-11-21 01:00:37', '2022-11-21 01:00:37', 'M Rizqi Nur Alif'),
(1737, '2', NULL, 44, 'Amiruddin', 'Production', '202211-045', '2022-11-18', '2022-11-21 01:02:32', '2022-11-21 01:02:32', 'M Rizqi Nur Alif'),
(1738, '10', NULL, 24, 'Anung Saputra', 'Inventory Management', '202211-046', '2022-11-18', '2022-11-21 01:03:36', '2022-11-21 01:03:36', 'M Rizqi Nur Alif'),
(1739, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-047', '2022-11-21', '2022-11-22 00:24:03', '2022-11-22 00:24:03', 'M Rizqi Nur Alif'),
(1740, '15', NULL, 24, 'Ghufron', 'QA', '202211-048', '2022-11-21', '2022-11-22 00:25:01', '2022-11-22 00:25:01', 'M Rizqi Nur Alif'),
(1741, '1', NULL, 7, 'Alif (untuk printer backup HRD)', 'IT', '202211-049', '2022-11-21', '2022-11-22 00:26:31', '2022-11-22 00:26:31', 'M Rizqi Nur Alif'),
(1742, '1', NULL, 7, 'Nanda', 'Marketing', '202211-050', '2022-11-21', '2022-11-22 00:27:56', '2022-11-22 00:27:56', 'M Rizqi Nur Alif'),
(1743, '1', NULL, 11, 'Lala', 'Purchasing', '202211-051', '2022-11-21', '2022-11-22 00:28:51', '2022-11-22 00:28:51', 'M Rizqi Nur Alif'),
(1744, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202211-052', '2022-11-23', '2022-11-24 01:20:15', '2022-11-24 01:20:15', 'M Rizqi Nur Alif'),
(1745, '1', NULL, 8, 'Lala', 'Purchasing', '202211-053', '2022-11-23', '2022-11-24 01:22:13', '2022-11-24 01:22:13', 'M Rizqi Nur Alif'),
(1746, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202211-054', '2022-11-23', '2022-11-24 01:23:13', '2022-11-24 01:23:13', 'M Rizqi Nur Alif'),
(1747, '1', NULL, 1, 'Maryo', 'PPC & Delvcon', '202211-055', '2022-11-23', '2022-11-24 02:50:16', '2022-11-24 02:50:16', 'M Rizqi Nur Alif'),
(1748, '3', NULL, 26, 'Maryo', 'PPC & Delvcon', '202211-055', '2022-11-23', '2022-11-24 02:50:57', '2022-11-24 02:50:57', 'M Rizqi Nur Alif'),
(1749, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202211-055', '2022-11-23', '2022-11-24 02:51:16', '2022-11-24 02:51:16', 'M Rizqi Nur Alif'),
(1750, '10', NULL, 24, 'Nimun', 'Production', '202211-056', '2022-11-22', '2022-11-24 02:52:09', '2022-11-24 02:52:09', 'M Rizqi Nur Alif'),
(1751, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-057', '2022-11-22', '2022-11-24 02:52:56', '2022-11-24 02:52:56', 'M Rizqi Nur Alif'),
(1752, '1', NULL, 5, 'Ilham', 'Purchasing', '202211-058', '2022-11-22', '2022-11-24 02:53:46', '2022-11-24 02:53:46', 'M Rizqi Nur Alif'),
(1753, '15', NULL, 24, 'Fanji', 'Production', '202211-059', '2022-11-24', '2022-11-24 02:54:50', '2022-11-24 02:54:50', 'M Rizqi Nur Alif'),
(1754, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202211-060', '2022-11-24', '2022-11-24 03:33:39', '2022-11-24 03:33:39', 'M Rizqi Nur Alif'),
(1755, '1', NULL, 1, 'Juprianto', 'PPC & Delvcon', '202211-061', '2022-11-24', '2022-11-24 03:35:02', '2022-11-24 03:35:02', 'M Rizqi Nur Alif'),
(1756, '15', NULL, 24, 'Ghufron', 'QA', '202211-062', '2022-11-24', '2022-11-25 04:33:16', '2022-11-25 04:33:16', 'M Rizqi Nur Alif'),
(1757, '2', NULL, 1, 'Juprianto', 'PPC & Delvcon', '202211-063', '2022-11-24', '2022-11-25 04:34:32', '2022-11-25 04:34:32', 'M Rizqi Nur Alif'),
(1758, '1', NULL, 2, 'Juprianto', 'PPC & Delvcon', '202211-063', '2022-11-24', '2022-11-25 04:34:51', '2022-11-25 04:34:51', 'M Rizqi Nur Alif'),
(1759, '10', NULL, 24, 'Rohman S', 'Production', '202211-064', '2022-11-24', '2022-11-25 05:54:18', '2022-11-25 05:54:18', 'M Rizqi Nur Alif'),
(1760, '1', NULL, 33, 'Muhrodin', 'Marketing', '202211-065', '2022-11-25', '2022-11-25 06:02:44', '2022-11-25 06:02:44', 'M Rizqi Nur Alif'),
(1761, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202211-066', '2022-11-25', '2022-11-29 06:59:54', '2022-11-29 06:59:54', 'M Rizqi Nur Alif'),
(1762, '3', NULL, 1, 'Maryo', 'PPC & Delvcon', '202211-066', '2022-11-28', '2022-11-29 07:00:46', '2022-11-29 07:00:46', 'M Rizqi Nur Alif'),
(1763, '1', NULL, 7, 'Silvi', 'Marketing', '202211-067', '2022-11-28', '2022-11-29 07:01:45', '2022-11-29 07:01:45', 'M Rizqi Nur Alif'),
(1764, '1', NULL, 1, 'Nanda', 'Accounting & Fin', '202211-068', '2022-11-28', '2022-11-29 07:02:40', '2022-11-29 07:02:40', 'M Rizqi Nur Alif'),
(1765, '15', NULL, 24, 'Amiruddin', 'Production', '202211-069', '2022-11-29', '2022-11-29 07:04:21', '2022-11-29 07:04:21', 'M Rizqi Nur Alif'),
(1766, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202211-070', '2022-11-29', '2022-11-29 07:05:09', '2022-11-29 07:05:09', 'M Rizqi Nur Alif'),
(1767, '1', NULL, 30, 'Iis S', 'QHSE', '202211-071', '2022-11-29', '2022-11-29 07:06:04', '2022-11-29 07:06:04', 'M Rizqi Nur Alif'),
(1768, '1', NULL, 29, 'Iis S', 'QHSE', '202211-071', '2022-11-29', '2022-11-29 07:06:47', '2022-11-29 07:06:47', 'M Rizqi Nur Alif'),
(1769, '15', NULL, 24, 'Ghufron', 'QA', '202211-072', '2022-11-29', '2022-11-29 07:07:56', '2022-11-29 07:07:56', 'M Rizqi Nur Alif'),
(1770, '1', NULL, 16, 'Taufik', 'Inventory Management', '202211-073', '2022-11-29', '2022-12-02 06:05:23', '2022-12-02 06:05:23', 'M Rizqi Nur Alif'),
(1771, '1', NULL, 18, 'Taufik', 'Inventory Management', '202211-073', '2022-11-29', '2022-12-02 06:05:51', '2022-12-02 06:05:51', 'M Rizqi Nur Alif'),
(1772, '1', NULL, 17, 'Taufik', 'Inventory Management', '202211-073', '2022-11-29', '2022-12-02 06:06:16', '2022-12-02 06:06:16', 'M Rizqi Nur Alif'),
(1773, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202212-001', '2022-12-01', '2022-12-05 00:34:15', '2022-12-05 00:34:15', 'M Rizqi Nur Alif'),
(1774, '1', NULL, 5, 'Widiyawati', 'Purchasing', '202212-002', '2022-12-01', '2022-12-05 00:35:21', '2022-12-05 00:35:21', 'M Rizqi Nur Alif'),
(1775, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202212-003', '2022-12-01', '2022-12-05 00:36:21', '2022-12-05 00:36:21', 'M Rizqi Nur Alif'),
(1776, '15', NULL, 24, 'M.Sholeh', 'Inventory Management', '202212-004', '2022-12-01', '2022-12-05 00:37:29', '2022-12-05 00:37:29', 'M Rizqi Nur Alif'),
(1777, '1', NULL, 1, 'Taufik', 'PPC & Delvcon', '202212-005', '2022-12-02', '2022-12-05 00:38:25', '2022-12-05 00:38:25', 'M Rizqi Nur Alif'),
(1778, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202212-006', '2022-12-02', '2022-12-05 00:39:14', '2022-12-05 00:39:14', 'M Rizqi Nur Alif'),
(1780, '1', NULL, 7, 'Nanda', 'Accounting & Fin', '202212-008', '2022-12-02', '2022-12-05 00:44:29', '2022-12-05 00:44:29', 'M Rizqi Nur Alif'),
(1781, '1', NULL, 7, 'Nanda', 'Accounting & Fin', '202212-007', '2022-12-02', '2022-12-05 00:56:11', '2022-12-05 00:56:11', 'M Rizqi Nur Alif'),
(1782, '10', NULL, 24, 'Pujianto', 'QA', '202212-009', '2022-12-02', '2022-12-05 00:59:01', '2022-12-05 00:59:01', 'M Rizqi Nur Alif'),
(1783, '10', NULL, 25, 'Pujianto', 'QA', '202212-009', '2022-12-02', '2022-12-05 00:59:27', '2022-12-05 00:59:27', 'M Rizqi Nur Alif'),
(1784, '2', NULL, 2, 'Hadi', 'PPC & Delvcon', '202212-010', '2022-12-05', '2022-12-07 02:47:47', '2022-12-07 02:47:47', 'M Rizqi Nur Alif'),
(1785, '15', NULL, 24, 'Nimun', 'Production', '202212-011', '2022-12-06', '2022-12-07 04:23:15', '2022-12-07 04:23:15', 'M Rizqi Nur Alif'),
(1786, '2', NULL, 44, 'Nimun', 'Production', '202212-011', '2022-12-06', '2022-12-07 04:28:01', '2022-12-07 04:28:01', 'M Rizqi Nur Alif'),
(1787, NULL, NULL, 24, 'Fanj', 'Accounting & Fin', '202212-011', '2022-12-06', '2022-12-07 04:29:09', '2022-12-07 04:29:09', 'M Rizqi Nur Alif'),
(1788, '15', NULL, 24, 'Fanji', 'Production', '202212-012', '2022-12-06', '2022-12-07 04:33:53', '2022-12-07 04:33:53', 'M Rizqi Nur Alif'),
(1789, '1', NULL, 2, 'Dayat', 'PPC & Delvcon', '202212-013', '2022-12-06', '2022-12-07 04:35:44', '2022-12-07 04:35:44', 'M Rizqi Nur Alif'),
(1790, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202212-013', '2022-12-06', '2022-12-07 04:36:44', '2022-12-07 04:36:44', 'M Rizqi Nur Alif'),
(1791, '10', NULL, 24, 'Sukardi', 'Production', '202212-014', '2022-12-07', '2022-12-07 04:42:14', '2022-12-07 04:42:14', 'M Rizqi Nur Alif'),
(1792, '1', NULL, 7, 'Yakub', 'Inventory Management', '202212-015', '2022-12-07', '2022-12-07 04:43:30', '2022-12-07 04:43:30', 'M Rizqi Nur Alif'),
(1793, '2', NULL, 6, 'Anna', 'Accounting & Fin', '202212-016', '2022-12-07', '2022-12-07 04:44:31', '2022-12-07 04:44:31', 'M Rizqi Nur Alif'),
(1794, '10', NULL, 25, 'Alfian', 'QA', '202212-017', '2022-12-07', '2022-12-07 04:48:32', '2022-12-07 04:48:32', 'M Rizqi Nur Alif'),
(1795, '10', NULL, 24, 'Alfian', 'QA', '202212-017', '2022-12-07', '2022-12-07 04:48:55', '2022-12-07 04:48:55', 'M Rizqi Nur Alif'),
(1796, '1', NULL, 16, 'Heri', 'PPC & Delvcon', '202212-018', '2022-12-09', '2022-12-09 04:33:21', '2022-12-09 04:33:21', 'M Rizqi Nur Alif'),
(1797, '1', NULL, 19, 'Heri', 'PPC & Delvcon', '202212-018', '2022-12-09', '2022-12-09 04:33:48', '2022-12-09 04:33:48', 'M Rizqi Nur Alif'),
(1798, '2', NULL, 2, 'Dayat', 'PPC & Delvcon', '202212-019', '2022-12-09', '2022-12-09 06:55:38', '2022-12-09 06:55:38', 'M Rizqi Nur Alif'),
(1799, '20', NULL, 24, 'Ghufron', 'QA', '202212-020', '2022-12-08', '2022-12-09 06:56:54', '2022-12-09 06:56:54', 'M Rizqi Nur Alif'),
(1800, '1', NULL, 16, 'Ghufron', 'QA', '202212-020', '2022-12-08', '2022-12-09 06:57:42', '2022-12-09 06:57:42', 'M Rizqi Nur Alif'),
(1801, '1', NULL, 19, 'Ghufron', 'QA', '202212-020', '2022-12-08', '2022-12-09 06:58:15', '2022-12-09 06:58:15', 'M Rizqi Nur Alif'),
(1802, '10', NULL, 24, 'Yakub', 'Inventory Management', '202212-021', '2022-12-07', '2022-12-09 06:59:09', '2022-12-09 06:59:09', 'M Rizqi Nur Alif'),
(1803, '1', NULL, 24, 'Hanif', 'IT', '202212-022', '2022-12-09', '2022-12-09 07:00:58', '2022-12-09 07:00:58', 'M Rizqi Nur Alif'),
(1804, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202212-023', '2022-12-09', '2022-12-16 00:53:12', '2022-12-16 00:53:12', 'M Rizqi Nur Alif'),
(1805, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202212-023', '2022-12-09', '2022-12-16 00:53:37', '2022-12-16 00:53:37', 'M Rizqi Nur Alif'),
(1806, '1', NULL, 7, 'Silvi', 'Marketing', '202212-024', '2022-12-09', '2022-12-16 00:54:48', '2022-12-16 00:54:48', 'M Rizqi Nur Alif'),
(1807, '2', NULL, 1, 'Roup', 'PPC & Delvcon', '202212-025', '2022-12-09', '2022-12-16 00:55:37', '2022-12-16 00:55:37', 'M Rizqi Nur Alif'),
(1808, '2', NULL, 2, 'Hadi', 'PPC & Delvcon', '202212-026', '2022-12-12', '2022-12-16 01:00:27', '2022-12-16 01:00:27', 'M Rizqi Nur Alif'),
(1809, '15', NULL, 24, 'M.Sholeh', 'Inventory Management', '202212-027', '2022-12-12', '2022-12-16 01:07:31', '2022-12-16 01:07:31', 'M Rizqi Nur Alif'),
(1810, '1', NULL, 7, 'Restu', 'HRD', '202212-028', '2022-12-12', '2022-12-16 01:08:24', '2022-12-16 01:08:24', 'M Rizqi Nur Alif'),
(1811, '1', NULL, 5, 'Widiyawati', 'Purchasing', '202212-029', '2022-12-12', '2022-12-16 01:09:33', '2022-12-16 01:09:33', 'M Rizqi Nur Alif'),
(1812, '2', NULL, 1, 'Maryo', 'PPC & Delvcon', '202212-030', '2022-12-13', '2022-12-16 01:10:29', '2022-12-16 01:10:29', 'M Rizqi Nur Alif'),
(1813, '1', NULL, 7, 'Felisia Putri(PKL)', 'Accounting & Fin', '202212-031', '2022-12-13', '2022-12-16 01:13:15', '2022-12-16 01:13:15', 'M Rizqi Nur Alif'),
(1814, '1', NULL, 32, 'Adang', 'Engineering', '202212-032', '2022-12-13', '2022-12-16 01:18:41', '2022-12-16 01:18:41', 'M Rizqi Nur Alif'),
(1815, '15', NULL, 24, 'Putri PKL', 'Inventory Management', '202212-033', '2022-12-13', '2022-12-16 03:51:29', '2022-12-16 03:51:29', 'M Rizqi Nur Alif'),
(1816, '1', NULL, 2, 'Widayat', 'PPC & Delvcon', '202212-034', '2022-12-14', '2022-12-16 04:06:10', '2022-12-16 04:06:10', 'M Rizqi Nur Alif'),
(1817, '2', NULL, 26, 'Maryo', 'PPC & Delvcon', '202212-035', '2022-12-14', '2022-12-16 04:07:20', '2022-12-16 04:07:20', 'M Rizqi Nur Alif'),
(1818, '3', NULL, 27, 'Maryo', 'PPC & Delvcon', '202212-035', '2022-12-14', '2022-12-16 04:07:48', '2022-12-16 04:07:48', 'M Rizqi Nur Alif'),
(1819, '2', NULL, 7, 'Agung', 'Accounting & Fin', '202212-036', '2022-12-14', '2022-12-16 04:08:37', '2022-12-16 04:08:37', 'M Rizqi Nur Alif'),
(1820, '1', NULL, 5, 'Yanti', 'Accounting & Fin', '202212-037', '2022-12-14', '2022-12-16 04:20:26', '2022-12-16 04:20:26', 'M Rizqi Nur Alif'),
(1821, '1', NULL, 1, 'A.Roup', 'PPC & Delvcon', '202212-038', '2022-12-15', '2022-12-16 04:21:02', '2022-12-16 04:21:02', 'M Rizqi Nur Alif'),
(1822, '1', NULL, 7, 'Silvi', 'Marketing', '202212-039', '2022-12-15', '2022-12-16 04:22:14', '2022-12-16 04:22:14', 'M Rizqi Nur Alif'),
(1827, '1', 'Kanban Lokal', NULL, 'Tur', 'Accounting', '202301-040', '2023-01-13', '2023-01-13 03:08:44', '2023-01-13 03:08:44', 'Fathur Rahmansyah'),
(1828, '1', 'CE505A', NULL, 'test', 'IT', '202301-041', '2023-01-13', '2023-01-13 03:27:13', '2023-01-13 03:27:13', 'Fathur Rahmansyah'),
(1829, '1', 'Kanban Lokal', NULL, 'Fathur Rahmansyah', 'IT', '202303-001', '2023-03-01', '2023-03-01 06:10:39', '2023-03-01 06:10:39', 'Fathur Rahmansyah'),
(1830, '1', 'Roll Sato ADM', NULL, 'Fathur Rahmansyah', 'IT', '202303-001', '2023-03-01', '2023-03-01 06:14:41', '2023-03-01 06:14:41', 'Fathur Rahmansyah'),
(1831, '1', '143 Yellow', NULL, 'Fathur Rahmansyah', 'IT', '202303-001', '2023-03-01', '2023-03-01 06:16:54', '2023-03-01 06:16:54', 'Fathur Rahmansyah'),
(1832, '1', 'Roll Sato ADM', NULL, 'Fathur Rahmansyah', 'IT', '202303-001', '2023-03-01', '2023-03-01 06:17:54', '2023-03-01 06:17:54', 'Fathur Rahmansyah'),
(1833, '1', 'CE505A', NULL, 'Fathur Rahmansyah', 'IT', '202303-001', '2023-03-01', '2023-03-01 06:21:56', '2023-03-01 06:21:56', 'Fathur Rahmansyah'),
(1834, '1', '143 Magenta', NULL, 'Fathur Rahmansyah', 'IT', '202303-002', '2023-03-01', '2023-03-01 06:39:46', '2023-03-01 06:39:46', 'Fathur Rahmansyah'),
(1835, '1', '143 Magenta', NULL, 'Fathur Rahmansyah', 'IT', '202303-003', '2023-03-01', '2023-03-01 06:40:26', '2023-03-01 06:40:26', 'Fathur Rahmansyah'),
(1836, '1', 'Kanban Lokal', NULL, 'Fathur Rahmansyah', 'IT', '202303-004', '2023-03-01', '2023-03-01 06:42:04', '2023-03-01 06:42:04', 'Fathur Rahmansyah'),
(1837, '15', 'Kanban Lokal', NULL, 'Mahesa (PKL)', 'IT', '202303-005', '2023-03-01', '2023-03-01 06:50:38', '2023-03-01 06:50:38', 'Mahesa (PKL)'),
(1838, '1', '143 Magenta', NULL, 'Fathur Rahmansyah', 'IT', '202303-006', '2023-03-01', '2023-03-01 07:00:42', '2023-03-01 07:00:42', 'Fathur Rahmansyah'),
(1839, '1', 'Kanban Lokal', NULL, 'Fathur Rahmansyah', 'IT', '202303-007', '2023-03-01', '2023-03-01 07:05:25', '2023-03-01 07:05:25', 'Fathur Rahmansyah'),
(1840, '1', 'Kanban Lokal', NULL, 'Fathur Rahmansyah', 'IT', '202303-008', '2023-03-01', '2023-03-01 07:07:04', '2023-03-01 07:07:04', 'Fathur Rahmansyah'),
(1841, '1', 'Roll Sato ADM', NULL, 'Mahesa (PKL)', 'IT', '202303-009', '2023-03-01', '2023-03-01 07:17:03', '2023-03-01 07:17:03', 'Mahesa (PKL)'),
(1842, '1', 'Kanban Lokal', NULL, 'Mahesa (PKL)', 'IT', '202303-010', '2023-03-01', '2023-03-01 07:17:28', '2023-03-01 07:17:28', 'Mahesa (PKL)'),
(1843, '1', 'Roll Sato ADM', NULL, 'Fathur Rahmansyah', 'IT', '202303-011', '2023-03-01', '2023-03-01 07:21:17', '2023-03-01 07:21:17', 'Fathur Rahmansyah'),
(1844, '1', 'Kanban Lokal', NULL, 'Mahesa (PKL)', 'IT', '202303-012', '2023-03-01', '2023-03-01 07:48:51', '2023-03-01 07:48:51', 'Mahesa (PKL)'),
(1845, '1', 'Roll Sato ADM', NULL, 'Test', 'Finance', '202303-013', '2023-03-01', '2023-03-01 08:01:45', '2023-03-01 08:01:45', 'Mahesa (PKL)'),
(1846, '1', 'Roll Sato ADM', NULL, 'Uat', 'Cost Control', '202303-014', '2023-03-01', '2023-03-01 08:03:26', '2023-03-01 08:03:26', 'Mahesa (PKL)'),
(1847, '1', 'Roll Sato ADM', NULL, 'Yyy', 'Accounting', '202303-015', '2023-03-01', '2023-03-01 08:04:02', '2023-03-01 08:04:02', 'Mahesa (PKL)'),
(1848, '1', 'Roll Sato ADM', NULL, 'Yuyu', 'Cost Control', '202303-016', '2023-03-01', '2023-03-01 08:08:35', '2023-03-01 08:08:35', 'Mahesa (PKL)'),
(1849, '1', 'CE505A', NULL, 'Fathur', 'PPC', '202303-017', '2023-03-02', '2023-03-02 00:30:43', '2023-03-02 00:30:43', 'Mahesa (PKL)'),
(1850, '1', 'Label Hyundai', NULL, 'Udin', 'Cost Control', '202303-018', '2023-03-02', '2023-03-02 00:31:59', '2023-03-02 00:31:59', 'Mahesa (PKL)'),
(1851, '1', 'Roll Sato ADM', NULL, 'Jon lbf', 'Finance', '202303-019', '2023-03-02', '2023-03-02 00:36:38', '2023-03-02 00:36:38', 'Mahesa (PKL)'),
(1852, '1', 'Roll Sato ADM', NULL, 'Surya', 'Automation', '202303-020', '2023-03-02', '2023-03-02 00:41:13', '2023-03-02 00:41:13', 'Mahesa (PKL)'),
(1853, '1', 'Label Hyundai', NULL, 'Yes', 'Finance', '202303-021', '2023-03-02', '2023-03-02 00:42:20', '2023-03-02 00:42:20', 'Mahesa (PKL)'),
(1854, '1', 'Roll Sato ADM', NULL, 'Bahar', 'Accounting', '202303-022', '2023-03-02', '2023-03-02 00:51:25', '2023-03-02 00:51:25', 'Mahesa (PKL)'),
(1855, '5', 'Roll Sato ADM', NULL, 'Akif', 'Finance', '202303-023', '2023-03-02', '2023-03-02 02:28:09', '2023-03-02 02:28:09', 'Mahesa (PKL)'),
(1856, '1', 'Kanban Lokal', NULL, 'ttttt', 'Cost Control', '202303-024', '2023-03-08', '2023-03-08 03:45:33', '2023-03-08 03:45:33', 'Mahesa (PKL)'),
(1857, '1', 'Kanban Lokal', NULL, 'test', 'IT', '202303-025', '2023-03-08', '2023-03-08 08:06:39', '2023-03-08 08:06:39', 'Fathur Rahmansyah'),
(1858, '1', '143 Black', NULL, 'cuy', 'Design & Casting', '202303-026', '2023-03-08', '2023-03-08 08:07:34', '2023-03-08 08:07:34', 'Fathur Rahmansyah'),
(1859, '2', 'Kanban Export Oil Rest', NULL, 'cuy', 'Design & Casting', '202303-026', '2023-03-08', '2023-03-08 08:07:34', '2023-03-08 08:07:34', 'Fathur Rahmansyah'),
(1860, '1', 'CE505A', NULL, 'Irfan', 'IT', '202303-027', '2023-03-08', '2023-03-08 08:14:22', '2023-03-08 08:14:22', 'Fathur Rahmansyah'),
(1861, '1', 'CE505A', NULL, 'Import Entry', 'Cost Control', '202303-028', '2023-03-08', '2023-03-08 08:18:06', '2023-03-08 08:18:06', 'Fathur Rahmansyah'),
(1862, '1', 'Label Hyundai', NULL, 'Yohana', 'Design & Casting', '202303-029', '2023-03-08', '2023-03-08 09:26:46', '2023-03-08 09:26:46', 'Fathur Rahmansyah');

--
-- Triggers `stok_out`
--
DELIMITER $$
CREATE TRIGGER `minus_barang_stok` AFTER INSERT ON `stok_out` FOR EACH ROW BEGIN

   UPDATE barang_stok SET stok = stok - NEW.jumlah

   WHERE barang_name = NEW.barang_name;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `supp_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supp_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supp_phone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supp_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supp_name`, `supp_address`, `supp_phone`, `supp_email`, `created_at`, `updated_at`) VALUES
(1, 'CV Perkasa Solusi Mandiri', 'Taman Lembah Hijau', '081256647899', 'gunadi@psm.com', NULL, NULL),
(3, 'Era Komp', 'Jakarta Pusat', '088856984422', 'era.komp@gmail.com', '2021-01-01 06:40:31', '2021-01-01 06:40:31'),
(10, 'Sato Label', 'Cibitung', NULL, NULL, '2021-11-19 06:25:37', '2021-11-19 06:25:37'),
(11, 'Berkah Prima Perkasa', NULL, NULL, NULL, '2021-11-19 06:43:49', '2021-11-19 06:43:50'),
(12, 'Tokopedia', NULL, NULL, NULL, '2021-11-19 06:43:49', '2021-11-19 06:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dept`
--

CREATE TABLE `tb_dept` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_dept`
--

INSERT INTO `tb_dept` (`id`, `division_id`, `dept`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accounting', '2021-09-20 01:10:07', '2021-09-20 01:10:09'),
(2, 1, 'Cost Control', '2021-09-20 01:10:22', '2021-09-20 01:10:24'),
(3, 1, 'Finance', '2021-09-20 01:10:33', '2021-09-20 01:10:36'),
(4, 1, 'IT', '2021-09-20 01:10:43', '2021-09-20 01:10:44'),
(5, 2, 'Design, Casting', '2021-09-20 01:11:04', '2021-09-20 01:11:06'),
(6, 2, 'Schedule Control', '2021-09-20 01:11:25', '2021-09-20 01:11:27'),
(7, 2, 'Tooling Mfg, Mtn Eng', '2021-09-20 01:11:49', '2021-09-20 01:11:50'),
(8, 3, 'GA', '2021-09-20 01:33:09', '2021-09-20 01:33:11'),
(9, 3, 'Raw Material , Consumable', '2021-09-20 01:33:37', '2021-09-20 01:33:38'),
(10, 4, 'Inventory Management', '2021-09-20 01:34:15', '2021-09-20 01:34:17'),
(11, 4, 'Maintenance, Automation', '2021-09-20 01:34:28', '2021-09-20 01:34:29'),
(12, 4, 'PPC , Delivery Control', '2021-09-20 01:34:54', '2021-09-20 01:34:55'),
(13, 4, 'Production', '2021-09-20 01:35:07', '2021-09-20 01:35:08'),
(14, 4, 'QA', '2021-09-20 01:35:23', '2021-09-20 01:35:23'),
(15, 4, 'QHSE', '2021-09-20 01:35:33', '2021-09-20 01:35:34'),
(16, 4, 'SCM', '2021-09-20 01:35:48', '2021-09-20 01:35:50'),
(17, 5, 'Marketing', '2021-09-20 01:36:10', '2021-09-20 01:36:12'),
(18, 6, 'Purchasing', '2021-09-20 01:36:30', '2021-09-20 01:36:31'),
(19, 2, 'Try Out', '2021-09-20 02:35:29', '2021-09-20 02:35:30'),
(20, 7, 'HRD', '2021-09-23 05:30:42', '2021-09-23 05:30:43'),
(21, 7, '-', NULL, NULL),
(22, 5, '-', '2021-09-23 09:17:29', '2021-09-23 09:17:31'),
(23, 6, '-', '2021-09-23 09:21:55', '2021-09-23 09:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_div`
--

CREATE TABLE `tb_div` (
  `id` int(10) UNSIGNED NOT NULL,
  `divisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_div`
--

INSERT INTO `tb_div` (`id`, `divisi`, `created_at`, `updated_at`) VALUES
(1, 'Accounting & FInance', '2021-09-20 00:22:22', '2021-09-20 00:22:23'),
(2, 'Engineering', '2021-09-20 00:22:25', '2021-09-20 00:22:27'),
(3, 'GA & Raw Material Purchase\r\n', '2021-09-20 00:22:39', '2021-09-20 00:22:39'),
(4, 'Manufacturing', '2021-09-20 00:23:12', '2021-09-20 00:23:14'),
(5, 'Marketing', '2021-09-20 00:23:28', '2021-09-20 00:23:29'),
(6, 'Procurement', '2021-09-20 00:23:42', '2021-09-20 00:23:43'),
(7, 'HRD', '2021-09-23 05:30:23', '2021-09-23 05:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_section`
--

CREATE TABLE `tb_section` (
  `id` int(10) UNSIGNED NOT NULL,
  `dept_id` int(11) NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_section`
--

INSERT INTO `tb_section` (`id`, `dept_id`, `section`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accounting', '2021-09-20 01:28:57', '2021-09-20 01:28:59'),
(2, 2, 'Cost Control', '2021-09-20 01:29:16', '2021-09-20 01:29:17'),
(3, 3, 'Finance', '2021-09-20 01:29:27', '2021-09-20 01:29:29'),
(4, 4, 'IT', '2021-09-20 01:29:35', '2021-09-20 01:29:37'),
(5, 5, 'Design & Casting', '2021-09-20 01:38:16', '2021-09-20 01:38:17'),
(6, 6, 'Schedule & Control', '2021-09-20 01:38:37', '2021-09-20 01:38:38'),
(7, 7, 'Tooling Mfg & Mtn Eng', '2021-09-20 01:39:12', '2021-09-20 01:39:14'),
(8, 19, 'Try Out', '2021-09-20 01:39:33', '2021-09-20 01:39:34'),
(9, 8, 'GA', '2021-09-20 02:37:43', '2021-09-20 02:37:45'),
(10, 9, 'Raw Material', '2021-09-20 02:38:28', '2021-09-20 02:38:30'),
(11, 9, 'Consumable', '2021-09-20 02:38:47', '2021-09-20 02:38:48'),
(12, 10, 'Finish Good', '2021-09-20 02:39:30', '2021-09-20 02:39:31'),
(13, 10, 'MRP', '2021-09-20 02:39:45', '2021-09-20 02:39:46'),
(14, 10, 'WIP', '2021-09-20 02:40:04', '2021-09-20 02:40:05'),
(15, 11, 'Automation', '2021-09-20 02:40:26', '2021-09-20 02:40:27'),
(16, 11, 'Maintenance', '2021-09-20 02:40:46', '2021-09-20 02:40:47'),
(17, 11, 'Tooling Maintenance', '2021-09-20 02:41:05', '2021-09-20 02:41:06'),
(18, 12, 'PPC', '2021-09-20 02:41:43', '2021-09-20 02:41:44'),
(19, 12, 'Delivery Control', '2021-09-20 02:41:58', '2021-09-20 02:41:58'),
(20, 13, 'Assy', '2021-09-20 02:42:25', '2021-09-20 02:42:26'),
(21, 13, 'Spot', '2021-09-20 02:42:41', '2021-09-20 02:42:43'),
(22, 13, 'Stamping', '2021-09-20 02:42:55', '2021-09-20 02:42:56'),
(23, 13, 'Welding', '2021-09-20 02:43:21', '2021-09-20 02:43:22'),
(24, 14, 'QA', '2021-09-20 02:43:50', '2021-09-20 02:43:50'),
(25, 15, 'QHSE', '2021-09-20 02:44:06', '2021-09-20 02:44:07'),
(26, 16, 'SCM', '2021-09-20 02:44:30', '2021-09-20 02:44:31'),
(27, 17, 'Marketing', '2021-09-20 02:44:51', '2021-09-20 02:44:52'),
(28, 18, 'Purchasing', '2021-09-20 02:45:02', '2021-09-20 02:45:03'),
(29, 20, 'HRD', '2021-09-23 05:31:12', '2021-09-23 05:31:14'),
(30, 10, 'Consumable (Gudang)', '2022-06-13 00:52:57', '2022-06-13 00:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `used_asset`
--

CREATE TABLE `used_asset` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa_id` int(11) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `used_asset`
--

INSERT INTO `used_asset` (`id`, `kode_fa_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 20, 1, '2021-08-02 03:09:58', '2021-08-02 03:10:05'),
(2, 22, 0, '2021-09-20 06:16:38', '2021-09-20 06:16:39'),
(3, 21, 2, '2021-09-20 09:01:23', '2021-09-20 09:01:24'),
(4, 22, 3, NULL, NULL),
(5, 0, 3, NULL, NULL),
(6, 19, 3, NULL, NULL),
(7, 32, 30, NULL, NULL),
(8, 33, 32, NULL, NULL),
(9, 34, 160, NULL, NULL),
(10, 35, 12, NULL, NULL),
(11, 36, 27, NULL, NULL),
(12, 37, 15, NULL, NULL),
(13, 38, 10, NULL, NULL),
(14, 39, 13, NULL, NULL),
(15, 40, 139, NULL, NULL),
(16, 41, 144, NULL, NULL),
(18, 43, 138, NULL, NULL),
(19, 44, 152, NULL, NULL),
(20, 45, 154, NULL, NULL),
(21, 46, 148, NULL, NULL),
(22, 47, 149, NULL, NULL),
(23, 48, 161, NULL, NULL),
(24, 49, 156, NULL, NULL),
(25, 51, 151, NULL, NULL),
(26, 52, 147, NULL, NULL),
(27, 53, 162, NULL, NULL),
(28, 54, 67, NULL, NULL),
(29, 55, 72, NULL, NULL),
(30, 56, 66, NULL, NULL),
(31, 58, 7, NULL, NULL),
(32, 59, 11, NULL, NULL),
(33, 60, 8, NULL, NULL),
(34, 61, 14, NULL, NULL),
(37, 79, 33, NULL, NULL),
(38, 80, 16, NULL, NULL),
(39, 81, 19, NULL, NULL),
(40, 82, 9, NULL, NULL),
(41, 84, 31, NULL, NULL),
(42, 86, 28, NULL, NULL),
(43, 88, 22, NULL, NULL),
(44, 89, 23, NULL, NULL),
(45, 90, 79, NULL, NULL),
(46, 93, 80, NULL, NULL),
(47, 91, 81, NULL, NULL),
(48, 99, 115, NULL, NULL),
(50, 100, 119, NULL, NULL),
(51, 101, 118, NULL, NULL),
(52, 133, 128, NULL, NULL),
(53, 32, 127, NULL, NULL),
(54, 108, 126, NULL, NULL),
(55, 109, 130, NULL, NULL),
(56, 110, 123, NULL, NULL),
(57, 111, 121, NULL, NULL),
(58, 112, 136, NULL, NULL),
(59, 116, 133, NULL, NULL),
(60, 117, 134, NULL, NULL),
(61, 118, 132, NULL, NULL),
(62, 119, 114, NULL, NULL),
(63, 120, 142, NULL, NULL),
(64, 123, 113, NULL, NULL),
(65, 124, 112, NULL, NULL),
(66, 125, 111, NULL, NULL),
(67, 127, 108, NULL, NULL),
(68, 128, 104, NULL, NULL),
(69, 51, 12, NULL, NULL),
(70, 131, 106, NULL, NULL),
(71, 132, 102, NULL, NULL),
(72, 106, 130, NULL, NULL),
(73, 134, 87, NULL, NULL),
(74, 136, 86, NULL, NULL),
(75, 138, 24, NULL, NULL),
(76, 139, 89, NULL, NULL),
(77, 140, 85, NULL, NULL),
(78, 141, 159, NULL, NULL),
(79, 146, 101, NULL, NULL),
(80, 147, 100, NULL, NULL),
(81, 153, 53, NULL, NULL),
(82, 154, 49, NULL, NULL),
(83, 155, 50, NULL, NULL),
(84, 156, 34, NULL, NULL),
(85, 157, 59, NULL, NULL),
(86, 158, 51, NULL, NULL),
(87, 159, 64, NULL, NULL),
(88, 161, 43, NULL, NULL),
(89, 164, 42, NULL, NULL),
(90, 163, 52, NULL, NULL),
(91, 165, 35, NULL, NULL),
(92, 166, 61, NULL, NULL),
(93, 167, 37, NULL, NULL),
(94, 169, 57, NULL, NULL),
(95, 170, 56, NULL, NULL),
(97, 172, 63, NULL, NULL),
(98, 174, 40, NULL, NULL),
(99, 175, 44, NULL, NULL),
(100, 176, 45, NULL, NULL),
(102, 177, 54, NULL, NULL),
(103, 75, 5, NULL, NULL),
(104, 158, 48, NULL, NULL),
(105, 179, 163, NULL, NULL),
(106, 135, 164, NULL, NULL),
(107, 180, 84, NULL, NULL),
(108, 69, 102, NULL, NULL),
(109, 181, 82, NULL, NULL),
(110, 50, 153, NULL, NULL),
(111, 182, 145, NULL, NULL),
(112, 184, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `used_asset_laptop`
--

CREATE TABLE `used_asset_laptop` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_fa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `used_asset_laptop`
--

INSERT INTO `used_asset_laptop` (`id`, `kode_fa_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, '5', '109', '2021-10-13 01:15:24', '2021-10-13 01:15:24'),
(2, '6', '141', NULL, NULL),
(3, '36', '122', NULL, NULL),
(4, '15', '12', NULL, NULL),
(5, '43', '143', NULL, NULL),
(6, '47', '83', NULL, NULL),
(7, '48', '139', NULL, NULL),
(8, '49', '166', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `name`, `section`, `nik`, `nik_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Fathur Rahmansyah', 'IT', '5211', NULL, '$2y$10$mFd/MmGV8nElaHO7wGEMI.K79Pxoyhk9qcnN9LhGZ/me8iZNz/7Gi', 'zp2rc1VdI5GKABw7wF8b2vU4vy17Exz0Ecj0h8Fc5SwVhUuLNWszeQeXCutH', '2021-03-08 21:20:24', '2021-03-08 21:20:24'),
(8, 'admin', 'Hanifan Musliman', 'IT', '5254', NULL, '$2y$10$6bdnOdo.fIjGjxlSoU6ZqeoIurkaPNXmSLZyJ5HOe51X6DlCTlpTe', 'sbsqJIKAtK1ukQSRvcfFrGJOts94oeLrRBCUuwYE5GZxgnf2F7TmnM7lAgsM', '2021-11-24 03:48:26', '2021-11-24 03:48:26'),
(10, 'user', 'Pickup Cons IT', 'IT', '1111', NULL, '$2y$10$CUtNOr17iklSSR4GvRdH9u2R5c3G6.DrsIfGHS.IZaoTWmwmt1MsK', 'ffQLSfQYoTnrpImp6olwpw7iFjoMjf0q5dZAWxC0J9hINw3u47tyOyh8T3wO', '2022-02-21 00:24:21', '2022-02-21 00:24:21'),
(14, 'user', 'Zaenal Arifin', 'Accounting', '1020', NULL, '$2y$10$fOZByHFWEEJkuRvH8e.k1u0piA/6LKL.fiGW2xMahvazV9AYIBQdm', '2mR3o1Y5K4EJfGT0iVx8xnYnsO03LlgBQMaccgslfWuP6hgATGtaj7qGvLvk', '2022-07-24 23:58:03', '2022-07-24 23:58:03'),
(15, 'user', 'Fiki Afyudan G', 'Schedule & Control', '3403', NULL, '$2y$10$7Kb40e/evwZmpVoy7hl0su5xxenMCYt/IlKO6sYucpnjtmjX5dRM6', 'coP5EXdnETUvsg966xwClmamLyIGOiorLKPwpc43L9X3hVFohtPadwYDX9NC', '2022-09-20 07:03:12', '2022-09-20 07:03:12'),
(16, 'admin', 'M Rizqi Nur Alif', 'IT', '5479', NULL, '$2y$10$6Yg6qjXD31gBMaXsK2Lk7eU0HOMv36/GtuStQVw47Reclt4eFh2UG', 'YWnoCkA39uqGqxH4aeqANDRxKsEkG2q0GiVbleYJ7Gk0nDYJj4OuTeyeFOrq', '2022-09-20 07:19:11', '2022-09-20 07:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE `users_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_stok`
--
ALTER TABLE `barang_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `cc_product`
--
ALTER TABLE `cc_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epinjam`
--
ALTER TABLE `epinjam`
  ADD PRIMARY KEY (`id_epinjam`);

--
-- Indexes for table `eriwayat_kom`
--
ALTER TABLE `eriwayat_kom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eriwayat_laptop`
--
ALTER TABLE `eriwayat_laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eticket`
--
ALTER TABLE `eticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itam_master_asset`
--
ALTER TABLE `itam_master_asset`
  ADD PRIMARY KEY (`id_master_asset`) USING BTREE;

--
-- Indexes for table `itam_master_asset_assign`
--
ALTER TABLE `itam_master_asset_assign`
  ADD PRIMARY KEY (`id_assign_asset`) USING BTREE;

--
-- Indexes for table `itam_master_asset_assign_log`
--
ALTER TABLE `itam_master_asset_assign_log`
  ADD PRIMARY KEY (`id_itam_assign_asset_log`);

--
-- Indexes for table `itam_master_asset_codes`
--
ALTER TABLE `itam_master_asset_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itam_master_asset_location`
--
ALTER TABLE `itam_master_asset_location`
  ADD PRIMARY KEY (`id_asset_loc`);

--
-- Indexes for table `itam_master_asset_log`
--
ALTER TABLE `itam_master_asset_log`
  ADD PRIMARY KEY (`id_itam_master_log`);

--
-- Indexes for table `itam_master_asset_sys`
--
ALTER TABLE `itam_master_asset_sys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itam_master_location`
--
ALTER TABLE `itam_master_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itam_master_status`
--
ALTER TABLE `itam_master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komputer`
--
ALTER TABLE `komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `stok_in`
--
ALTER TABLE `stok_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_in_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `stok_out`
--
ALTER TABLE `stok_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_out_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dept`
--
ALTER TABLE `tb_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_div`
--
ALTER TABLE `tb_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_section`
--
ALTER TABLE `tb_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_asset`
--
ALTER TABLE `used_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_asset_laptop`
--
ALTER TABLE `used_asset_laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_nik_unique` (`nik`);

--
-- Indexes for table `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `barang_stok`
--
ALTER TABLE `barang_stok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cc_product`
--
ALTER TABLE `cc_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `epinjam`
--
ALTER TABLE `epinjam`
  MODIFY `id_epinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `eriwayat_kom`
--
ALTER TABLE `eriwayat_kom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eriwayat_laptop`
--
ALTER TABLE `eriwayat_laptop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eticket`
--
ALTER TABLE `eticket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itam_master_asset`
--
ALTER TABLE `itam_master_asset`
  MODIFY `id_master_asset` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `itam_master_asset_assign`
--
ALTER TABLE `itam_master_asset_assign`
  MODIFY `id_assign_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `itam_master_asset_assign_log`
--
ALTER TABLE `itam_master_asset_assign_log`
  MODIFY `id_itam_assign_asset_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `itam_master_asset_codes`
--
ALTER TABLE `itam_master_asset_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `itam_master_asset_location`
--
ALTER TABLE `itam_master_asset_location`
  MODIFY `id_asset_loc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `itam_master_asset_log`
--
ALTER TABLE `itam_master_asset_log`
  MODIFY `id_itam_master_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `itam_master_asset_sys`
--
ALTER TABLE `itam_master_asset_sys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `itam_master_location`
--
ALTER TABLE `itam_master_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itam_master_status`
--
ALTER TABLE `itam_master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `komputer`
--
ALTER TABLE `komputer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printer`
--
ALTER TABLE `printer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_in`
--
ALTER TABLE `stok_in`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `stok_out`
--
ALTER TABLE `stok_out`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1863;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_dept`
--
ALTER TABLE `tb_dept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_div`
--
ALTER TABLE `tb_div`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_section`
--
ALTER TABLE `tb_section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `used_asset`
--
ALTER TABLE `used_asset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `used_asset_laptop`
--
ALTER TABLE `used_asset_laptop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_old`
--
ALTER TABLE `users_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_stok`
--
ALTER TABLE `barang_stok`
  ADD CONSTRAINT `barang_stok_ibfk_1` FOREIGN KEY (`id`) REFERENCES `barang_stok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok_in`
--
ALTER TABLE `stok_in`
  ADD CONSTRAINT `stok_in_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang_stok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok_out`
--
ALTER TABLE `stok_out`
  ADD CONSTRAINT `stok_out_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang_stok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
