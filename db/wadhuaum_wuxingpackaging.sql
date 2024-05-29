-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2024 at 01:00 PM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wadhuaum_wuxingpackaging`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `idstatus`, `added`, `updated`) VALUES
(1, 'Products', 6, '2024-05-16 14:56:59', '2024-05-16 15:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `alttext` varchar(255) DEFAULT NULL,
  `idproduct` int(11) DEFAULT NULL,
  `idsubcategory` int(11) DEFAULT NULL,
  `isfeatured` tinyint(4) NOT NULL DEFAULT 0,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `alttext`, `idproduct`, `idsubcategory`, `isfeatured`, `idstatus`, `added`, `updated`) VALUES
(1, 'img/plain-shopping-bags-1.webp', 'Plain Shopping Bag', 1, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(2, 'img/plain-shopping-bags-2.webp', 'Plain Shopping Bag', 2, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(3, 'img/plain-shopping-bags-3.webp', 'Plain Shopping Bag', 3, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(4, 'img/plain-shopping-bags-4.webp', 'Plain Shopping Bag', 4, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(5, 'img/plain-shopping-bags-5.webp', 'Plain Shopping Bag', 5, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(6, 'img/plain-shopping-bags-6.webp', 'Plain Shopping Bag', 6, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(7, 'img/plain-shopping-bags-7.webp', 'Plain Shopping Bag', 7, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(8, 'img/plain-shopping-bags-8.webp', 'Plain Shopping Bag', 8, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(9, 'img/plain-shopping-bags-9.webp', 'Plain Shopping Bag', 9, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(10, 'img/plain-shopping-bags-10.webp', 'Plain Shopping Bag', 10, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(11, 'img/plain-shopping-bags-11.webp', 'Plain Shopping Bag', 11, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(12, 'img/plain-shopping-bags-12.webp', 'Plain Shopping Bag', 12, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(13, 'img/plain-shopping-bags-13.webp', 'Plain Shopping Bag', 13, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(14, 'img/plain-shopping-bags-14.webp', 'Plain Shopping Bag', 14, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(15, 'img/plain-shopping-bags-15.webp', 'Plain Shopping Bag', 15, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(16, 'img/plain-shopping-bags-16.webp', 'Plain Shopping Bag', 16, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(17, 'img/plain-shopping-bags-17.webp', 'Plain Shopping Bag', 17, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(18, 'img/plain-shopping-bags-18.webp', 'Plain Shopping Bag', 18, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(19, 'img/plain-shopping-bags-19.webp', 'Plain Shopping Bag', 19, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(20, 'img/plain-shopping-bags-20.webp', 'Plain Shopping Bag', 20, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(21, 'img/plain-shopping-bags-21.webp', 'Plain Shopping Bag', 21, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(22, 'img/plain-shopping-bags-22.webp', 'Plain Shopping Bag', 22, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(23, 'img/plain-shopping-bags-23.webp', 'Plain Shopping Bag', 23, NULL, 1, 6, '2024-05-20 18:41:44', '2024-05-23 17:23:19'),
(24, 'img/Baby-Kids-Hangers-1.jpg', 'Baby Kids Hangers', 24, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(25, 'img/Baby-Kids-Hangers-2.jpg', 'Baby Kids Hangers', 25, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(26, 'img/Baby-Kids-Hangers-3.jpg', 'Baby Kids Hangers', 26, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(27, 'img/Baby-Kids-Hangers-4.jpg', 'Baby Kids Hangers', 27, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(28, 'img/Baby-Kids-Hangers-5.jpg', 'Baby Kids Hangers', 28, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(29, 'img/Baby-Kids-Hangers-6.jpg', 'Baby Kids Hangers', 29, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(30, 'img/Baby-Kids-Hangers-7.jpg', 'Baby Kids Hangers', 30, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(31, 'img/Baby-Kids-Hangers-8.jpg', 'Baby Kids Hangers', 31, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(32, 'img/Baby-Kids-Hangers-9.jpg', 'Baby Kids Hangers', 32, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(33, 'img/Baby-Kids-Hangers-10.jpg', 'Baby Kids Hangers', 33, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(34, 'img/Baby-Kids-Hangers-11.jpg', 'Baby Kids Hangers', 34, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(35, 'img/Baby-Kids-Hangers-12.jpg', 'Baby Kids Hangers', 35, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(36, 'img/Baby-Kids-Hangers-13.jpg', 'Baby Kids Hangers', 36, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(37, 'img/Baby-Kids-Hangers-14.jpg', 'Baby Kids Hangers', 37, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(38, 'img/Baby-Kids-Hangers-15.jpg', 'Baby Kids Hangers', 38, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(39, 'img/Baby-Kids-Hangers-16.jpg', 'Baby Kids Hangers', 39, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(40, 'img/Baby-Kids-Hangers-17.jpg', 'Baby Kids Hangers', 40, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(41, 'img/Baby-Kids-Hangers-18.jpg', 'Baby Kids Hangers', 41, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(42, 'img/Baby-Kids-Hangers-19.jpg', 'Baby Kids Hangers', 42, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(43, 'img/Baby-Kids-Hangers-20.jpg', 'Baby Kids Hangers', 43, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(44, 'img/Baby-Kids-Hangers-21.jpg', 'Baby Kids Hangers', 44, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(45, 'img/Baby-Kids-Hangers-22.jpg', 'Baby Kids Hangers', 45, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(46, 'img/Baby-Kids-Hangers-23.jpg', 'Baby Kids Hangers', 46, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(47, 'img/Baby-Kids-Hangers-24.jpg', 'Baby Kids Hangers', 47, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(48, 'img/Baby-Kids-Hangers-25.jpg', 'Baby Kids Hangers', 48, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(49, 'img/Baby-Kids-Hangers-26.jpg', 'Baby Kids Hangers', 49, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(50, 'img/Baby-Kids-Hangers-27.jpg', 'Baby Kids Hangers', 50, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(51, 'img/Baby-Kids-Hangers-28.jpg', 'Baby Kids Hangers', 51, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(52, 'img/Baby-Kids-Hangers-29.jpg', 'Baby Kids Hangers', 52, NULL, 0, 6, '2024-05-22 16:47:32', '2024-05-23 17:24:50'),
(53, 'img/Baby-Kids-Hangers-30.jpg', 'Baby Kids Hangers', 53, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(54, 'img/Baby-Kids-Hangers-31.jpg', 'Baby Kids Hangers', 54, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(55, 'img/Baby-Kids-Hangers-32.jpg', 'Baby Kids Hangers', 55, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(56, 'img/Baby-Kids-Hangers-33.jpg', 'Baby Kids Hangers', 56, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(57, 'img/Baby-Kids-Hangers-34.jpg', 'Baby Kids Hangers', 57, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(58, 'img/Baby-Kids-Hangers-35.jpg', 'Baby Kids Hangers', 58, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(59, 'img/Baby-Kids-Hangers-36.jpg', 'Baby Kids Hangers', 59, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(60, 'img/Baby-Kids-Hangers-37.jpg', 'Baby Kids Hangers', 60, NULL, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:24:50'),
(61, 'img/Hanger-Garment-Cover.jpg', 'Baby Kids Hangers', NULL, 2, 0, 6, '2024-05-22 16:47:33', '2024-05-23 17:27:15'),
(62, 'img/cardbord-box-1.jpg', 'Cardbord Box', 61, NULL, 0, 6, '2024-05-23 09:34:36', '2024-05-23 17:26:29'),
(63, 'img/cardbord-box-2.jpg', 'Cardbord Box', 62, NULL, 0, 6, '2024-05-23 09:35:10', '2024-05-23 17:26:29'),
(64, 'img/cardbord-box-3.jpg', 'Cardbord Box', 63, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(65, 'img/cardbord-box-4.jpg', 'Cardbord Box', 64, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(66, 'img/cardbord-box-5.jpg', 'Cardbord Box', 65, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(67, 'img/cardbord-box-6.jpg', 'Cardbord Box', 66, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(68, 'img/cardbord-box-7.jpg', 'Cardbord Box', 67, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(69, 'img/cardbord-box-8.jpg', 'Cardbord Box', 68, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(70, 'img/cardbord-box-9.jpg', 'Cardbord Box', 69, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(71, 'img/cardbord-box-10.jpg', 'Cardbord Box', 70, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(72, 'img/cardbord-box-11.jpg', 'Cardbord Box', 71, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(73, 'img/cardbord-box-12.jpg', 'Cardbord Box', 72, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(74, 'img/cardbord-box-13.jpg', 'Cardbord Box', 73, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(75, 'img/cardbord-box-14.jpg', 'Cardbord Box', 74, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(76, 'img/cardbord-box-15.jpg', 'Cardbord Box', 75, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(77, 'img/cardbord-box-16.jpg', 'Cardbord Box', 76, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(78, 'img/cardbord-box-17.jpg', 'Cardbord Box', 77, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(79, 'img/cardbord-box-18.jpg', 'Cardbord Box', 78, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(80, 'img/cardbord-box-19.jpg', 'Cardbord Box', 79, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(81, 'img/cardbord-box-20.jpg', 'Cardbord Box', 80, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(82, 'img/cardbord-box-21.jpg', 'Cardbord Box', 81, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(83, 'img/cardbord-box-22.jpg', 'Cardbord Box', 82, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(84, 'img/cardbord-box-23.jpg', 'Cardbord Box', 83, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(85, 'img/cardbord-box-24.jpg', 'Cardbord Box', 84, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(86, 'img/cardbord-box-25.jpg', 'Cardbord Box', 85, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(87, 'img/cardbord-box-26.jpg', 'Cardbord Box', 86, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(88, 'img/cardbord-box-27.jpg', 'Cardbord Box', 87, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(89, 'img/cardbord-box-28.jpg', 'Cardbord Box', 88, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(90, 'img/cardbord-box-29.jpg', 'Cardbord Box', 89, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(91, 'img/cardbord-box-30.jpg', 'Cardbord Box', 90, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(92, 'img/cardbord-box-31.jpg', 'Cardbord Box', 91, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(93, 'img/cardbord-box-32.jpg', 'Cardbord Box', 92, NULL, 0, 6, '2024-05-23 17:09:05', '2024-05-23 17:26:29'),
(113, 'img/Fabric-Carry-Bag-1.webp', 'Fabric-Carry-Bags', 110, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:26:49'),
(114, 'img/Fabric-Carry-Bag-2.webp', 'Fabric-Carry-Bags', 111, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:26'),
(115, 'img/Fabric-Carry-Bag-3.webp', 'Fabric-Carry-Bags', 112, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:32'),
(116, 'img/Fabric-Carry-Bag-4.webp', 'Fabric-Carry-Bags', 113, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:39'),
(117, 'img/Fabric-Carry-Bag-5.webp', 'Fabric-Carry-Bags', 114, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:45'),
(118, 'img/Fabric-Carry-Bag-6.webp', 'Fabric-Carry-Bags', 115, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:52'),
(119, 'img/Fabric-Carry-Bag-7.webp', 'Fabric-Carry-Bags', 116, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:27:59'),
(120, 'img/Fabric-Carry-Bag-8.webp', 'Fabric-Carry-Bags', 117, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:28:06'),
(121, 'img/Fabric-Carry-Bag-9.webp', 'Fabric-Carry-Bags', 118, NULL, 0, 6, '2024-05-25 08:21:34', '2024-05-25 08:28:13'),
(122, 'img/Kraft-Paper-Bag-1.jpg', 'Kraft-Paper-Bag', 119, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:09:28'),
(123, 'img/Kraft-Paper-Bag-2.jpg', 'Kraft-Paper-Bag', 120, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:09:33'),
(124, 'img/Kraft-Paper-Bag-3.jpg', 'Kraft-Paper-Bag', 121, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:11:30'),
(125, 'img/Kraft-Paper-Bag-4.jpg', 'Kraft-Paper-Bag', 122, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:09:42'),
(126, 'img/Kraft-Paper-Bag-5.jpg', 'Kraft-Paper-Bag', 123, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:09:59'),
(127, 'img/Kraft-Paper-Bag-6.jpg', 'Kraft-Paper-Bag', 124, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:10:05'),
(128, 'img/Kraft-Paper-Bag-7.jpg', 'Kraft-Paper-Bag', 125, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:10:12'),
(129, 'img/Kraft-Paper-Bag-8.jpg', 'Kraft-Paper-Bag', 126, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:10:19'),
(130, 'img/Kraft-Paper-Bag-9.jpg', 'Kraft-Paper-Bag', 127, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:10:26'),
(131, 'img/Kraft-Paper-Bag-10.jpg', 'Kraft-Paper-Bag', 128, NULL, 0, 6, '2024-05-25 09:04:27', '2024-05-25 09:10:33'),
(132, 'img/Kraft-Paper-Bag-11.jpg', 'Kraft-Paper-Bag', 129, NULL, 0, 6, '2024-05-25 09:04:28', '2024-05-25 09:10:40'),
(133, 'img/Kraft-Paper-Bag-12.jpg', 'Kraft-Paper-Bag', 130, NULL, 0, 6, '2024-05-25 09:04:28', '2024-05-25 09:10:46'),
(134, 'img/Kraft-Paper-Bag-13.jpg', 'Kraft-Paper-Bag', 131, NULL, 0, 6, '2024-05-25 09:04:28', '2024-05-25 09:10:53'),
(135, 'img/Plastic-and-PVC-Bag-1.webp', 'Plastic PVC Bag', 132, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(136, 'img/Plastic-and-PVC-Bag-2.webp', 'Plastic PVC Bag', 133, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(137, 'img/Plastic-and-PVC-Bag-3.webp', 'Plastic PVC Bag', 134, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(138, 'img/Plastic-and-PVC-Bag-4.webp', 'Plastic PVC Bag', 135, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(139, 'img/Plastic-and-PVC-Bag-5.webp', 'Plastic PVC Bag', 136, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(140, 'img/Plastic-and-PVC-Bag-6.webp', 'Plastic PVC Bag', 137, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(141, 'img/Plastic-and-PVC-Bag-7.webp', 'Plastic PVC Bag', 138, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(142, 'img/Plastic-and-PVC-Bag-8.webp', 'Plastic PVC Bag', 139, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(143, 'img/Plastic-and-PVC-Bag-9.webp', 'Plastic PVC Bag', 140, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(144, 'img/Plastic-and-PVC-Bag-10.webp', 'Plastic PVC Bag', 141, NULL, 0, 6, '2024-05-25 09:36:09', NULL),
(145, 'img/Tote-Bag-1.webp', 'Tote Bag', 142, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(146, 'img/Tote-Bag-2.webp', 'Tote Bag', 143, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(147, 'img/Tote-Bag-3.webp', 'Tote Bag', 144, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(148, 'img/Tote-Bag-4.webp', 'Tote Bag', 145, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(149, 'img/Tote-Bag-5.webp', 'Tote Bag', 146, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(150, 'img/Tote-Bag-6.webp', 'Tote Bag', 147, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(151, 'img/Tote-Bag-7.webp', 'Tote Bag', 148, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(152, 'img/Tote-Bag-8.webp', 'Tote Bag', 149, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(153, 'img/Tote-Bag-9.webp', 'Tote Bag', 150, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(154, 'img/Tote-Bag-10.webp', 'Tote Bag', 151, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(155, 'img/Tote-Bag-11.webp', 'Tote Bag', 152, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(156, 'img/Tote-Bag-12.webp', 'Tote Bag', 153, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(157, 'img/Tote-Bag-13.webp', 'Tote Bag', 154, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(158, 'img/Tote-Bag-14.webp', 'Tote Bag', 155, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(159, 'img/Tote-Bag-15.webp', 'Tote Bag', 156, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(160, 'img/Tote-Bag-16.webp', 'Tote Bag', 157, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(161, 'img/Tote-Bag-17.webp', 'Tote Bag', 158, NULL, 0, 6, '2024-05-25 09:41:32', NULL),
(162, 'img/Gift-Bag-min.jpg', 'Gift Bags', NULL, 3, 0, 6, '2024-05-22 16:47:33', NULL),
(163, 'img/Gift-Box-min.jpg', 'Gift Box', NULL, 4, 0, 6, '2024-05-22 16:47:33', NULL),
(164, 'img/glass-jar-container-bottle-1.webp', 'Glass Jar  Container Bottle', 159, NULL, 0, 6, '2024-05-25 13:11:15', NULL),
(165, 'img/glass-jar-container-bottle-2.webp', 'Glass Jar  Container Bottle', 160, NULL, 0, 6, '2024-05-25 13:11:15', NULL),
(166, 'img/glass-jar-container-bottle-3.webp', 'Glass Jar  Container Bottle', 161, NULL, 0, 6, '2024-05-25 13:11:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `idsubcategory` int(11) DEFAULT NULL,
  `idcategory` int(11) DEFAULT NULL,
  `saleprice` int(11) NOT NULL,
  `discountedprice` float DEFAULT NULL,
  `istrending` tinyint(4) NOT NULL DEFAULT 0,
  `isfeatured` tinyint(4) NOT NULL DEFAULT 0,
  `lastsale` datetime DEFAULT NULL,
  `addedby` int(11) NOT NULL DEFAULT 1,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `idsubcategory`, `idcategory`, `saleprice`, `discountedprice`, `istrending`, `isfeatured`, `lastsale`, `addedby`, `idstatus`, `added`, `updated`) VALUES
(1, 'Gift Paper Bag', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li>Available 4 color : White / Black / Pink / Kraft</li>\n<li><span class=\"a-list-item\">【Material】:<br>\nWhite / Black / Pink Made of 250 gram thickness white art paper , up to carry 5 kg items.<br>\nKraft Color Made of eco-friendly kraft paper, can be recycled, reused and composted, No peculiar smell, good for storage</span></li>\n<li><span class=\"a-list-item\">【Special Design】:<br>\nThe boxes have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span></li>\n<li><span class=\"a-list-item\">【Durable Handles】:<br>\nDifferent from common bags, the bag handle is perforated and made of cord, more durable than paper handles</span></li>\n<li><span class=\"a-list-item\">【Quantity】:<br>\nIncluding 10pcs / 50 pcs and 100 pcs 3 options. For Retail and wholesale</span></li>\n<li><span class=\"a-list-item\">【Wide Usage】:<br>\nGood for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts and candies in Christmas and Halloween</span></li>\n</ul>', 17, 3, 35, 31.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-22 10:48:10'),
(2, 'Window Transparent Gift Bag Flower Packaging Bag / Rose Bouquet Gift Bag / Souvenir Window Handbag', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Material】: Made of white art paper 250 gram thickness paper with laminations,<br>\nKraft Color made of nature brown kraft paper , 250 gram thickness<br>\ncan be recycled, reused and composted, No peculiar smell, good for storage</span></span></li>\n<li><span class=\"a-list-item\">【Special Design】: The bags have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span><span class=\"a-list-item\"><br>\n</span></li>\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Quantity】: Including 10pcs paper bags</span></span></li>\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Size】: Height 36cm * Length 12.5cm * Base 8.5cm</span></span></li>\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Color Option 】: White / Black / Gold / Kraft</span></span></li>\n<li><span class=\"a-list-item\">【Wide Usage】: Good for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts ,flowers and candies in Christmas and Halloween</span></li>\n</ul>', 17, 3, 30, 27.75, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-22 10:46:39'),
(3, 'Wuxing Packaging Christmas Gift Bags Durable with Handles,Reusable Holiday Gift Bags', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">MULTIPLE STYLES: Our Christmas bag available multiple Christmas elements, which makes our gift bags wonderfully festive Christmas decorations.&nbsp;</span></li>\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">SUFFICIENT CAPACITY: All of these Christmas gift bags listed with size options, making our gift bags practical enough for various Christmas gifts such as scented candles, perfume, books, scarves, plush toys, and so on. Get your gifts elaborately arranged in these Christmas bags for gifts, thereby enjoying a wonderful Christmas!</span></li>\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">EXQUISITE CHRISTMAS WRAPPING PAPER: These reusable gift bags with diverse patterns and bright colors will create a festive Christmas atmosphere!</span></li>\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">PREMIUM MATERIAL: These paper gift bags are made of high-quality white art paper with great strength for long-term use. The premium material enables you to store more gifts while protecting the bag from easily breaking when subjected to daily wear and tear.</span></li>\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">WIDE APPLICATION: Our bags have a wide range of applications. They are not only perfect bags for Christmas gifts and birthday gifts but also delicate decorations for Christmas parties, costume parties, and so on. Also, they can be easily stacked for the next use after Christmas. These reusable Christmas bags do bring an unforgettable time.</span></li>\n</ul>', 17, 3, 22, 21, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-22 10:52:37'),
(4, 'Kraft Plain Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother\'s Day, Baby Shower Bridal Shower Wedding Gift', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li><span class=\"a-list-item\">Reasonable Size:<br>\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping Bag Is Strong And Durable</li>\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As Gift Wrap Bag, Shopping Bag, Party Favor Bags.<br>\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\n</ul>', 17, 3, 30, 26.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-22 11:01:12'),
(5, 'White Plain Gift Bags Shopping Bag Party Favor Bags with Black Grossgrain Ribbon Handle for Birthday Mother\'s Day, Baby Shower Bridal Shower Wedding Gift', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li><span class=\"a-list-item\">Reasonable Size:<br>\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping <strong>Bag</strong> Is Strong And Durable</li>\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As <strong>Gift Wrap Bag,</strong> Shopping Bag, Party Favor Bags.<br>\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\n</ul>', 17, 3, 30, 26.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-22 11:02:21'),
(6, 'Black Plain Gift Bags Shopping Bag Party Favor Bags with Black Grossgrain Ribbon Handle for Birthday Mother\'s Day, Baby Shower Bridal Shower Wedding Gift', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li><span class=\"a-list-item\">Reasonable Size:<br>\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping Bag Is Strong And Durable</li>\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As Gift Wrap Bag, Shopping Bag, Party Favor Bags.<br>\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\n</ul>', 17, 3, 30, 26.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-22 11:08:42'),
(7, 'Gift Paper Bag with Window and Gold Border used to store gifts and candies in Christmas and Halloween', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li>Available 4 color : White With Gold Border &amp; Pink With Gold Border</li>\n<li><span class=\"a-list-item\">【Material】:White / Black / Pink/Grey&nbsp; With Gold Border Made of 250 gram thickness white art paper , up to carry 5 kg items.</span></li>\n<li><span class=\"a-list-item\">&nbsp; Different Color Made of eco-friendly kraft paper With Window, can be recycled, reused and composted, No peculiar smell, good for storage</span></li>\n<li><span class=\"a-list-item\">【Special Design】:The boxes have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span></li>\n<li><span class=\"a-list-item\">【Durable Handles】:Different from common bags, the bag handle is perforated and made of cord, more durable than paper handles</span></li>\n<li><span class=\"a-list-item\">【Quantity】:Including 10pcs&nbsp; and 100 pcs 2 options. For Retail and wholesale</span></li>\n<li><span class=\"a-list-item\">【Wide Usage】:Good for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts and candies in Christmas and Halloween</span></li>\n</ul>', 17, 3, 60, 52.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-22 11:12:02'),
(8, 'White With Black Border Shopping Paper Bags', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n<li><span class=\"a-list-item\">Material : 230 GSM White Art Paper, Matte Lamination</span></li>\n<li><span class=\"a-list-item\">10 pcs Packed&nbsp;</span></li>\n<li><span class=\"a-list-item\"> Size :H16*L12*D5.7cm Vertical</span></li>\n<li><span class=\"a-list-item\">Size : H18*22*10cm Horizontal</span></li>\n<li><span class=\"a-list-item\">Size : H22*L16*D8cm Vertical</span></li>\n<li>Size : H28*L20*D10cm Horizontal</li>\n<li>Size : H32*L25*D13cm Vertical</li>\n<li>Size : H26*L35*D13cm Horizontal</li>\n<li>Size : H40*L30*D10cm Vertical</li>\n<li>Size : H32*L42*D13cm Horizontal</li>\n<li><span class=\"a-list-item\">Black Ribbon Handle</span></li>\n<li><span class=\"a-list-item\">Can Carry Up To 5 KG Items.</span></li>\n</ul>', 17, 3, 12, 10, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-22 13:55:35'),
(9, 'Non-Woven Fabric Carry Bags with Zipper', '<ul class=\"tabs wc-tabs\" role=\"tablist\">\n				                    <li class=\"description_tab active\" id=\"tab-title-description\" role=\"tab\" aria-controls=\"tab-description\">\n                        <a href=\"#tab-description\">Description</a>\n                    </li>\n				                    <li class=\"additional_information_tab\" id=\"tab-title-additional_information\" role=\"tab\" aria-controls=\"tab-additional_information\">\n                        <a href=\"#tab-additional_information\">Specification</a>\n                    </li>\n				                    <li class=\"reviews_tab\" id=\"tab-title-reviews\" role=\"tab\" aria-controls=\"tab-reviews\">\n                        <a href=\"#tab-reviews\">Reviews (0)</a>\n                    </li>\n				            <li id=\"tl-wc-tab\" class=\"tl-wc-tab\"></li></ul>', 17, 3, 60, 52.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-22 13:58:09'),
(10, 'Wine Gift Bags Using For Eco-Friendly Bottle Wine Bag with Twisted Handles for Christmas, Wedding Party', 'This is sample description', 17, 3, 30, 27.5, 1, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-22 14:01:47'),
(11, 'Gift Paper Bag with Window and Gold Border Item CodeH35*24.5*15CM (4 color available )', 'This is sample description', 17, 3, 47, 44, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 08:20:06'),
(12, 'Horizontal Tpye Kraft Paper Bags, Hard Paper with Ribbon Handle. ( 3 Sizes Available )', 'This is sample description', 17, 3, 17, 14.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 08:18:50'),
(13, 'Vertical Shape Kraft Paper Bags, Hard Paper with Ribbon Handle. ( 5 Sizes Available )', 'This is sample description', 17, 3, 12, 9.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 08:16:20'),
(14, 'Non-woven vest bag spot supermarket shopping bag Eco Friendly wholesale hand bag packing bag environmental protection bag ', 'This is sample description', 17, 3, 40, 38.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 08:13:33'),
(15, 'White Plain Gift Bags Shopping Bag Party Favor Bags with Black Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift.(4 Sizes Available)', 'This is sample description', 17, 3, 28, 26.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 08:11:51'),
(16, 'Square Base Tpye Kraft Paper Bags, Hard Paper with Ribbon Handle. ( 6 Sizes )', 'This is sample description', 17, 3, 23, 21, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 08:06:47'),
(17, 'Window Transparent Gift Bag H28*12*12cm Flower Packaging Bag / Rose Bouquet Gift Bag / Souvenir Window Handbag （ 2 color : white/Pink )', 'This is sample description', 17, 3, 30, 27.75, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 08:05:30'),
(18, 'White Color Texture Gift Bags Shopping Bag Party Favor Bags with Cotton Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift.', 'This is sample description', 17, 3, 30, 27.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 08:03:40'),
(19, 'White Color Square Texture Gift Bags Shopping Bag Party Favor Bags with Cotton Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift.', 'This is sample description', 17, 3, 30, 27.75, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 08:02:18'),
(20, 'Black Plain Gift Bags Shopping Bag Party Favor Bags ( Available 3 Sizes ) with Cotton Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift.', 'This is sample description', 17, 3, 20, 17.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:56:21'),
(21, 'Kraft Hard Paper Bags, Ropes Handle ,Gift Bags, Brown Kraft Paper Bag Bride, Birthday Gift Bag for Celebrations, Bags for Party.', 'This is sample description', 17, 3, 12, 10.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:54:32'),
(22, 'Christmas Bags with Handles,Reusable Small Gift Bags Xmas Paper Bags, Party Favors Holiday Gift Bags', 'This is sample description', 17, 3, 17, 15.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:53:06'),
(24, 'Pink Pants Baby Hangers ', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li>Available 4 color : White / Black / Pink / Kraft</li>\r\n<li><span class=\"a-list-item\">【Material】:<br>\r\nWhite / Black / Pink Made of 250 gram thickness white art paper , up to carry 5 kg items.<br>\r\nKraft Color Made of eco-friendly kraft paper, can be recycled, reused and composted, No peculiar smell, good for storage</span></li>\r\n<li><span class=\"a-list-item\">【Special Design】:<br>\r\nThe boxes have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span></li>\r\n<li><span class=\"a-list-item\">【Durable Handles】:<br>\r\nDifferent from common bags, the bag handle is perforated and made of cord, more durable than paper handles</span></li>\r\n<li><span class=\"a-list-item\">【Quantity】:<br>\r\nIncluding 10pcs / 50 pcs and 100 pcs 3 options. For Retail and wholesale</span></li>\r\n<li><span class=\"a-list-item\">【Wide Usage】:<br>\r\nGood for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts and candies in Christmas and Halloween</span></li>\r\n</ul>', 10, 2, 75, 73.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:42:33'),
(25, 'House Day Kids Hangers White Plastic', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Material】: Made of white art paper 250 gram thickness paper with laminations,<br>\r\nKraft Color made of nature brown kraft paper , 250 gram thickness<br>\r\ncan be recycled, reused and composted, No peculiar smell, good for storage</span></span></li>\r\n<li><span class=\"a-list-item\">【Special Design】: The bags have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span><span class=\"a-list-item\"><br>\r\n</span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Quantity】: Including 10pcs paper bags</span></span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Size】: Height 36cm * Length 12.5cm * Base 8.5cm</span></span></li>\r\n<li><span class=\"a-list-item\"><span class=\"a-list-item\">【Color Option 】: White / Black / Gold / Kraft</span></span></li>\r\n<li><span class=\"a-list-item\">【Wide Usage】: Good for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts ,flowers and candies in Christmas and Halloween</span></li>\r\n</ul>', 10, 2, 55, 52, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:41:19'),
(26, 'Plastic Baby Clothes Hangers White', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">MULTIPLE STYLES: Our Christmas bag available multiple Christmas elements, which makes our gift bags wonderfully festive Christmas decorations.&nbsp;</span></li>\r\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">SUFFICIENT CAPACITY: All of these Christmas gift bags listed with size options, making our gift bags practical enough for various Christmas gifts such as scented candles, perfume, books, scarves, plush toys, and so on. Get your gifts elaborately arranged in these Christmas bags for gifts, thereby enjoying a wonderful Christmas!</span></li>\r\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">EXQUISITE CHRISTMAS WRAPPING PAPER: These reusable gift bags with diverse patterns and bright colors will create a festive Christmas atmosphere!</span></li>\r\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">PREMIUM MATERIAL: These paper gift bags are made of high-quality white art paper with great strength for long-term use. The premium material enables you to store more gifts while protecting the bag from easily breaking when subjected to daily wear and tear.</span></li>\r\n<li class=\"a-spacing-mini\"><span class=\"a-list-item\">WIDE APPLICATION: Our bags have a wide range of applications. They are not only perfect bags for Christmas gifts and birthday gifts but also delicate decorations for Christmas parties, costume parties, and so on. Also, they can be easily stacked for the next use after Christmas. These reusable Christmas bags do bring an unforgettable time.</span></li>\r\n</ul>', 10, 2, 28, 25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:37:00'),
(27, 'Swivel Hook Kids Hangers Plastic', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">Reasonable Size:<br>\r\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\r\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\r\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\r\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\r\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping Bag Is Strong And Durable</li>\r\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\r\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\r\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As Gift Wrap Bag, Shopping Bag, Party Favor Bags.<br>\r\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\r\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\r\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\r\n</ul>', 10, 2, 85, 82.5, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:34:35'),
(28, 'Pink Color Baby Clothes Hangers Non Slip', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">Reasonable Size:<br>\r\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\r\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\r\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\r\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\r\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping <strong>Bag</strong> Is Strong And Durable</li>\r\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\r\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\r\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As <strong>Gift Wrap Bag,</strong> Shopping Bag, Party Favor Bags.<br>\r\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\r\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\r\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\r\n</ul>', 10, 2, 25, 22, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:31:46'),
(29, 'Black Color Baby Clothes Hangers Non Slip', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">Reasonable Size:<br>\r\n1.&nbsp; H22*32*10Cm Vertical Shape<br>\r\n2.&nbsp; H17*25*8Cm Vertical Shape<br>\r\n3.&nbsp; H31*43*14Cm Vertical Shape</span></li>\r\n<li>4.&nbsp; H28*38*12Cm<span class=\"a-list-item\">Vertical Shape</span></li>\r\n<li><span class=\"a-list-item\">Simple Gift Bag: P</span>remium Paper Shopping Bag Is Strong And Durable</li>\r\n<li>Gift Bags Shopping Bag Party Favor Bags with Grossgrain Ribbon Handle for Birthday Mother’s Day, Baby Shower Bridal Shower Wedding Gift</li>\r\n<li><span class=\"a-list-item\">The Bottom Reinforced Is Suitable For Carring Notebooks, Vacuum Bottles And Etc,.</span></li>\r\n<li><span class=\"a-list-item\">Multiple Uses: Paper Bags Can Be Used As Gift Wrap Bag, Shopping Bag, Party Favor Bags.<br>\r\nGift Bags Are Also Good As Retail Bags At Art Festivals And Crafts.</span></li>\r\n<li><span class=\"a-list-item\">Perfect For DIY: Bulk Kraft Gift Bag Surface Is Smooth Ang Flat, The Solid Color Appearance Is Perfect For Your DIY And Personalized Creations A Gift Bags For Your Friends.</span></li>\r\n<li><span class=\"a-list-item\">Also, As Retail Carry Bags, You Could Staple Your Business Card Or Stamp The Outside Of The Bag With Your Logo On.</span></li>\r\n</ul>', 10, 2, 25, 22, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:30:52'),
(30, 'Blue Color Baby Clothes Hangers Non Slip', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li>Available 4 color : White With Gold Border &amp; Pink With Gold Border</li>\r\n<li><span class=\"a-list-item\">【Material】:White / Black / Pink/Grey&nbsp; With Gold Border Made of 250 gram thickness white art paper , up to carry 5 kg items.</span></li>\r\n<li><span class=\"a-list-item\">&nbsp; Different Color Made of eco-friendly kraft paper With Window, can be recycled, reused and composted, No peculiar smell, good for storage</span></li>\r\n<li><span class=\"a-list-item\">【Special Design】:The boxes have regular viewing clear window, not easy to tear off, convenient to see goodies and shows items</span></li>\r\n<li><span class=\"a-list-item\">【Durable Handles】:Different from common bags, the bag handle is perforated and made of cord, more durable than paper handles</span></li>\r\n<li><span class=\"a-list-item\">【Quantity】:Including 10pcs&nbsp; and 100 pcs 2 options. For Retail and wholesale</span></li>\r\n<li><span class=\"a-list-item\">【Wide Usage】:Good for storing foods, nut-fruit, bread, snacks, clothes, can also be used to store gifts and candies in Christmas and Halloween</span></li>\r\n</ul>', 10, 2, 25, 22, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:30:01'),
(31, 'White Baby Clothes Hangers Non Slip', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">Material : 230 GSM White Art Paper, Matte Lamination</span></li>\r\n<li><span class=\"a-list-item\">10 pcs Packed&nbsp;</span></li>\r\n<li><span class=\"a-list-item\"> Size :H16*L12*D5.7cm Vertical</span></li>\r\n<li><span class=\"a-list-item\">Size : H18*22*10cm Horizontal</span></li>\r\n<li><span class=\"a-list-item\">Size : H22*L16*D8cm Vertical</span></li>\r\n<li>Size : H28*L20*D10cm Horizontal</li>\r\n<li>Size : H32*L25*D13cm Vertical</li>\r\n<li>Size : H26*L35*D13cm Horizontal</li>\r\n<li>Size : H40*L30*D10cm Vertical</li>\r\n<li>Size : H32*L42*D13cm Horizontal</li>\r\n<li><span class=\"a-list-item\">Black Ribbon Handle</span></li>\r\n<li><span class=\"a-list-item\">Can Carry Up To 5 KG Items.</span></li>\r\n</ul>', 10, 2, 25, 22, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:28:24'),
(32, 'Pants Baby Velvet Hangers Blue', '<ul class=\"tabs wc-tabs\" role=\"tablist\">\r\n				                    <li class=\"description_tab active\" id=\"tab-title-description\" role=\"tab\" aria-controls=\"tab-description\">\r\n                        <a href=\"#tab-description\">Description</a>\r\n                    </li>\r\n				                    <li class=\"additional_information_tab\" id=\"tab-title-additional_information\" role=\"tab\" aria-controls=\"tab-additional_information\">\r\n                        <a href=\"#tab-additional_information\">Specification</a>\r\n                    </li>\r\n				                    <li class=\"reviews_tab\" id=\"tab-title-reviews\" role=\"tab\" aria-controls=\"tab-reviews\">\r\n                        <a href=\"#tab-reviews\">Reviews (0)</a>\r\n                    </li>\r\n				            <li id=\"tl-wc-tab\" class=\"tl-wc-tab\"></li></ul>', 10, 2, 77, 73.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:26:57'),
(33, 'Pants Baby Velvet Hangers', 'This is sample description', 10, 2, 77, 73.5, 1, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:25:14'),
(34, 'House day Baby Hangers Black', 'This is sample description', 10, 2, 17, 15.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:22:45'),
(35, 'White Baby Velvet Hangers Ultra-Slim', 'This is sample description', 10, 2, 45, 43.25, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:20:59'),
(36, 'Pink Baby Velvet Hangers Ultra-Slim', 'This is sample description', 10, 2, 45, 43.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:19:18'),
(37, 'Grey Baby Velvet Hanger Ultra-Slim', 'This is sample description', 10, 2, 45, 43.25, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:16:49'),
(38, 'Light Purple Kids Velvet Hangers', 'This is sample description', 10, 2, 43, 39.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 07:04:03'),
(39, 'Star Shape Blue Velvet Baby Clothes Hangers', 'This is sample description', 10, 2, 28, 25, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 07:02:03'),
(40, 'Gold Huk Pink Baby Velvet Hangers Non Slip', 'This is sample description', 10, 2, 65, 63.25, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 06:58:48'),
(41, 'Gold Huk Baby Velvet Hangers Matcha Green', 'This is sample description', 10, 2, 50, 47.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 06:56:04'),
(42, 'Ivory Baby Velvet Hangers', 'This is sample description', 10, 2, 65, 63, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-25 06:54:21'),
(43, 'Blue Baby Velvet Hangers ', 'This is sample description', 10, 2, 65, 63.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-25 06:44:49'),
(44, 'Light Green Baby Velvet Hangers', 'This is sample description', 10, 2, 18, 15, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:32:03'),
(45, 'Gold Huk Baby Velvet Hangers', 'This is sample description', 10, 2, 50, 47.25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:33:32'),
(46, 'Pink Baby Velvet Hangers', 'This is sample description', 10, 2, 65, 63, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:29:39'),
(47, 'Baby velvet Pants Hangers', 'This is sample description', 10, 2, 75, 73.5, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:28:18'),
(49, 'Ivory Velvet Kids Hangers', 'This is sample description', 10, 2, 42, 39.6, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:24:01'),
(50, 'Pearl Cloth Hangers', 'This is sample description', 10, 2, 30, 27.6, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:22:39'),
(51, 'Baby Velvet Hangers Grey', 'This is sample description', 10, 2, 15, 12.6, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:21:04'),
(52, 'Baby Velvet Hangers white', 'This is sample description', 10, 2, 42, 39.6, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:19:58'),
(53, 'Baby Velvet Hangers Black', 'This is sample description', 10, 2, 15, 12.6, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:18:45'),
(54, 'Light Blue Velvet Kids Hangers', 'This is sample description', 10, 2, 42, 39.6, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:17:12'),
(55, 'Baby Velvet Hangers white', 'This is sample description', 10, 2, 15, 12.6, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:15:34'),
(56, 'Grey Velvet Kids Hangers', 'This is sample description', 10, 2, 42, 39.35, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:13:27'),
(57, 'Baby Velvet Hangers', 'This is sample description', 10, 2, 15, 12.6, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:10:37'),
(58, ' Star Shape Pink Velvet Baby Clothes Hanger', 'This is sample description', 10, 2, 27, 25, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 13:07:59'),
(59, 'Rose-Gold Hook Baby Velvet Hangers', 'This is sample description', 10, 2, 50, 47.25, 0, 1, '2024-05-20 13:47:13', 1, 6, '2024-05-20 18:48:58', '2024-05-24 13:05:06'),
(60, 'Baby Velvet Hangers 11Inch Light Green', 'This is sample description', 10, 2, 17, 15.75, 0, 1, '2024-05-20 13:35:04', 1, 6, '2024-05-20 18:40:06', '2024-05-24 15:12:10'),
(61, 'Black Drawer Cardboard Storage Box, For gift Necklace Ring Storage Organizer,gift box is specially designed for gifts packaging.(Size H6*33*22CM)', NULL, 22, 4, 23, 21.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 11:19:58'),
(62, 'Heart Shaped Flower Box with Lid Heart Shape Flower Packing Box Double Layer Rotating Flower Box Paper Jewelry Box for Valentines Day.(H16*W23*L18CM)', NULL, 22, 4, 30, 27.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 11:19:15'),
(63, 'Packed Foldble Cardboard Boxes With The Design Using for Gift Size (H15*20*20Cm)', NULL, 22, 4, 114, 110.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 11:17:59'),
(64, 'Brown Cardboard Gift Boxes Favor for Bridesmaid & Groomsmen Proposal/Birthday/Party/Wedding, Kraft Paper Present Packaging Box with Lid, Gift Wrap Boxes Bulk for Crafting.(23x12x12Cm)', NULL, 22, 4, 27, 25.25, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 11:08:18'),
(65, 'Marble Color LCD screen video gift box rose flower box birthday wedding anniversary storage box 7 inch video box', NULL, 22, 4, 28, 26.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 11:00:14'),
(66, 'Gift box Round Shape Velvet Box With Ribbion  Florist Flower Holder Bucket Gift Packaging Box Bouquet Packaging Box Party Wedding Supply.(Size H8.5*12CM)', NULL, 22, 4, 18, 16.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:57:45'),
(67, 'White Color Jewelry Gift Boxes With Satin Ribbon in Classic Grey Color Necklace Bracelet Storage Case Square Cardboard Jewelry Organizer Showcase Gift Storage.', NULL, 22, 4, 47, 45, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:56:28'),
(68, 'Thank You Gift Bags Boxes, Party Favor Small Bags Treat Boxes with Grey Bow Ribbon, Paper Gift Bags Bulk for Wedding Baby Shower Business Party Supplies(SizeH7*11.5*6CM).', NULL, 22, 4, 55, 52.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:55:23'),
(69, 'Jewelry Gift Boxes 12Pcs Texture Pattern Paper Necklace Bracelet Storage Case Square Cardboard Jewelry Organizer Showcase Gift Storage.', NULL, 22, 4, 35, 33.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:54:19'),
(70, 'Jewelry Drawer Storage Box With Handle, 12pcs Necklace Ring Storage Organizer, Mini Display Travel Jewelry Organizer (Size 10*10*3Cm).', NULL, 22, 4, 68, 66, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:52:57'),
(71, 'Black Drawer Storage Box Using for Necklace Ring Storage Organizer, For Gift Packing Mini Display Travel Jewelry Organizer.(H5x12x13cm)', NULL, 22, 4, 80, 78.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:52:09'),
(72, 'Single Watch Gift Boxes, 12 Pack Jewelry Bangle Bracelet Watch Boxes for Men and Women.(Size 9*9*5CM)', NULL, 22, 4, 50, 47.25, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:51:13'),
(73, 'Carboard Well Decorative Book Shape Gift Box Sturdy Gift Box Reusable Decorative Storage Box Packaging Box Candy Snack Boxes Multipurpose Storage box.(full set）', NULL, 22, 4, 46, 44, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:50:06'),
(74, '3D Floating Thin Film Jewelry Storage Box, Transparent Frame Display Case Holder for Ring Necklace Bracelet Earring, Dustproof Challenge Coin Medallion Display Case Stand.', NULL, 22, 4, 48, 46.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:49:16'),
(75, 'Red Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:48:06'),
(76, 'Cardboard Gift Box with  Satin Ribbon in Color, Square Decorative Gifting Boxes for Valentine’s Day, Christmas, Birthdays, Father’s Day, Weddings, Graduations, Proposals (Full Set)', NULL, 22, 4, 46, 44, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:47:05'),
(77, 'Thank You Gift Bags Boxes, Party Favor Small Bags Treat Boxes with Grey Bow Ribbon, Paper Gift Bags Bulk for Wedding Baby Shower Business Party Supplies(Size H13.5*W20*16CM).', NULL, 22, 4, 80, 77, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:43:58'),
(78, 'Black Color LCD screen video gift box rose flower box birthday wedding anniversary storage box 7 inch video box', NULL, 22, 4, 28, 26, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:42:58'),
(79, 'Rose gold Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style.', NULL, 22, 4, 18, 16.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:42:10'),
(80, 'RainBow Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:40:55'),
(81, 'Gift box 3Pcs/Set Round Shape Velvet Gift Box Florist Flower Holder Bucket Gift Packaging Box Bouquet Packaging Box Party Wedding Supply.(Full Set)', NULL, 22, 4, 95, 93.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:40:03'),
(82, 'Tubes Cardboard Essential Oil Bottle Cosmetic Container Holder Lipstick Perfume Box Paperboard Tubes For Gift Packaging H9*8.5CM(3 Color available)', NULL, 22, 4, 68, 66, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:38:57'),
(83, 'Kraft Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:37:49'),
(84, 'Orange Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 10:36:48'),
(85, 'Jewelry Drawer Storage Box, 12pcs Necklace Ring Storage Organizer, Mini Display Travel Jewelry Organizer.', NULL, 22, 4, 28, 26.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:42:32'),
(86, 'Gold Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:41:09'),
(87, 'Jewelry Gift Boxes 12Pcs Paper Necklace Bracelet Storage Case Square Cardboard Jewelry Organizer Showcase Gift Storage.', NULL, 22, 4, 22, 20.5, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:40:12'),
(88, 'White Gift Boxes Favor for Bridesmaid Proposal/Birthday/Party/Wedding, Kraft Paper Present Packaging Box with Lid, Decorative Gift Wrap Boxes Bulk for Crafting/Cupcake', NULL, 22, 4, 28, 25.25, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:39:10'),
(89, 'Cardboard Gift Box with  Satin Ribbon in Classic Black Color, Rectangle Decorative Gifting Boxes for Valentine’s Day, Christmas, Birthdays, Father’s Day, Weddings, Graduations, Proposals', NULL, 22, 4, 15, 13.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:38:02'),
(90, 'Black Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:36:23'),
(91, 'Thank You Gift Bags Boxes, Party Favor Small Bags Treat Boxes with Grey Bow Ribbon, Paper Gift Bags Bulk for Wedding Baby Shower Business Party Supplies', NULL, 22, 4, 34, 32, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:32:38'),
(92, 'White Color Flat Cardboard Boxes, Magnet Boxes, for Gifts, Packing, Easy To Fold Style', NULL, 22, 4, 18, 16.75, 0, 0, NULL, 1, 6, '2024-05-23 16:58:10', '2024-05-25 09:30:56'),
(110, ' Non-Woven Storage Bags , Shoe Bags ,Shoe Organizer (Without Window', NULL, 21, 3, 24, 22.05, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 09:23:46'),
(111, 'Canvas Tote Bags with Long Handle Reusable Shopping Bag Eco-Friendly', NULL, 21, 3, 15, 13.5, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 09:20:30'),
(112, 'Non-woven vest bag spot supermarket shopping bag Eco Friendly wholesale hand bag packing bag environmental protection bag handbag', NULL, 21, 3, 41, 38.5, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 09:19:23'),
(113, 'Non-Woven Storage Bags , Shoe Bags ,Shoe Organizer (Without Window)', NULL, 21, 3, 24, 22.05, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 09:17:36'),
(114, 'Non-Woven Reusable Tote Bag with Handles Shopping Bags,Gift Bags Vertical Shape', NULL, 21, 3, 17, 15.75, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 09:03:23'),
(115, ' Non-Woven Fabric Carry Bags with Zipper H32*38*15cm ( 5 Color Available )', NULL, 21, 3, 55, 52.5, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 08:59:25'),
(116, 'Non-Woven Reusable Tote Bag with Handles Shopping Bags,Gift Bags', NULL, 21, 3, 17, 15.75, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 08:57:54'),
(117, 'Non-Woven Fabric Bags Reusable Shopping Bags Tote Bag Party Gift Handles Bag Party Favors', NULL, 21, 3, 30, 27.6, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 08:56:50'),
(118, 'Canvas Tote Bags H44*35cm with Long Handle Reusable Shopping Bag Eco-Friendly', NULL, 21, 3, 12, 10.5, 0, 0, NULL, 1, 6, '2024-05-25 08:21:34', '2024-05-25 08:53:32'),
(119, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(120, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(121, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(122, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(123, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(124, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(125, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(126, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(127, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(128, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(129, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:27', NULL),
(130, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:28', NULL),
(131, 'Kraft Paper Bag', NULL, 20, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:04:28', NULL),
(132, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:08', NULL),
(133, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(134, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(135, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(136, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(137, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(138, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(139, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(140, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(141, 'Plastic PVC Bag', NULL, 18, 3, 0, NULL, 0, 0, NULL, 1, 6, '2024-05-25 09:36:09', NULL),
(142, 'Canvas Tote Bags H44*35cm with Long Handle Reusable Shopping Bag Eco-Friendly', NULL, 19, 3, 12, 10.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 12:01:15'),
(143, 'Premium Quity Tote Bag Lunch Box Thermal Portable Waterproof Lunch Container With Adjustable Shoulder Straps Durable Long Term Insulation – Multi Purpose Indoor Outdoor Cooler.', NULL, 19, 3, 25, 23.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:59:27'),
(144, 'Cotton White Canvas Gift Bag With Grosgrain Ribbon Drawstring Pouch Jewelry Packaging Wedding Birthday Party Gift Wrapping.(2 Size)', NULL, 19, 3, 23, 22, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:56:39'),
(145, 'Waterproof Drawstring Bags Sports Riding Backpack Suitable for Adults and Kids, Holiday, Swimming, Beach.(Size:H45*30CM)', NULL, 19, 3, 68, 66, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:55:37'),
(146, 'Paper Bags, Size : H30*20*13cm Die Cut Tote Bags Party Bags Good for Hag Al Lelah', NULL, 19, 3, 42, 38.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:54:09'),
(147, 'Gift Paper Bags, Size : H30*20*13cm Die Cut Tote Bags Party Bags Good for Hag Al Lelah (Girl Design)', NULL, 19, 3, 42, 38.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:54:34'),
(148, 'Canvas Tote Bags with Long Handle Reusable Shopping Bag Eco-Friendly', NULL, 19, 3, 15, 13.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:50:05'),
(149, 'Non-woven vest bag spot supermarket shopping bag Eco Friendly wholesale hand bag packing bag environmental protection bag handbag', NULL, 19, 3, 42, 38.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:44:16'),
(150, 'Vertical Shape A4 H38*30*10cm Non-Woven Reusable Tote Bag with Handles Shopping Bags,Gift Bags', NULL, 19, 3, 17, 15.75, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:42:17'),
(151, 'Paper Bags With Handles Kraft Gift Bags,Shopping Bags…For less then 500 pcs order list.（Available 4 color / 5 sizes )', NULL, 19, 3, 12, 8.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:40:37'),
(152, 'Non-Woven Fabric Carry Bags with Zipper H32*38*15cm ( 5 Color Available )', NULL, 19, 3, 54, 52, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:39:18'),
(153, 'Linen Pu Coating Reusable Jute Shopping Bag Beach Blonde Handbags Canvas Tote Bags For Women Grocery Bag Large', NULL, 19, 3, 15, 12.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:38:23'),
(154, 'Beige Color Cotton Canvas Gift Bag with Grosgrain Ribbon Drawstring Pouch Jewelry Packaging Wedding Birthday Party Gift Wrapping.(2 Size)', NULL, 19, 3, 24, 22, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:37:24'),
(155, 'Linen Pu Coating Reusable Jute Shopping Bag Beach Blonde Handbags Canvas Tote Bags For Women Grocery Bag Large.', NULL, 19, 3, 15, 13.5, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:36:33'),
(156, 'Non-Woven Reusable Tote Bag with Handles Shopping Bags,Gift Bags', NULL, 19, 3, 17, 15.75, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:35:05'),
(157, 'Non-Woven Fabric Bags Reusable Shopping Bags Tote Bag Party Gift Handles Bag Party Favors', NULL, 19, 3, 29, 27.6, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:34:08'),
(158, 'Cotton Pouch Drawstring Bags Canvas Gift Bags ( 9 Sizes )', NULL, 19, 3, 13, 11.05, 0, 0, NULL, 1, 6, '2024-05-25 09:41:32', '2024-05-25 11:33:10'),
(159, 'Glass Pudding Jars Yogurt Jars Ideal for Jam, Honey, Wedding Favors, Shower Favors (100ml)', NULL, 27, 5, 30, 27.75, 0, 0, NULL, 1, 6, '2024-05-25 13:11:15', '2024-05-25 13:17:01'),
(160, 'Glass Bottles Essential Oils Glass Eye Dropper,( 15ml / 30ml / 50ml / 100ml ) Glass Eye Dropper Dispenser for Essential Oils, Kitchen Tools, Chemistry Lab Chemicals, Colognes, Amber', NULL, 27, 5, 70, 65.5, 0, 0, NULL, 1, 6, '2024-05-25 13:11:15', '2024-05-25 13:16:23'),
(161, 'Rice Storage Container, Cereal Containers Set (2.5L*4 Units a Set) with Measuring Cup Plastic Storage Containers (RDFC-4)', NULL, 27, 5, 30, 27.5, 0, 0, NULL, 1, 6, '2024-05-25 13:11:15', '2024-05-25 13:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `added`, `updated`) VALUES
(1, 'available', '2024-05-16 15:01:25', NULL),
(2, 'unavailable', '2024-05-16 15:01:25', '2024-05-16 15:04:04'),
(3, 'out of stock', '2024-05-16 15:01:25', NULL),
(4, 'found', '2024-05-16 15:02:49', NULL),
(5, 'not found', '2024-05-16 15:02:49', NULL),
(6, 'active', '2024-05-16 15:03:54', NULL),
(7, 'deactive', '2024-05-16 15:03:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `idsubcategory` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchaseprice` float NOT NULL,
  `idcategory` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockout`
--

CREATE TABLE `stockout` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `idstatus` tinyint(4) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsubcategory` int(11) DEFAULT NULL,
  `idcategory` int(11) DEFAULT NULL,
  `idstatus` int(11) NOT NULL DEFAULT 6,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `idsubcategory`, `idcategory`, `idstatus`, `added`, `updated`) VALUES
(1, 'Home & Our Brands', NULL, 1, 6, '2024-05-16 14:58:27', '2024-05-16 15:56:36'),
(2, 'Hanger & Garment Cover', NULL, 1, 6, '2024-05-16 15:57:30', '2024-05-16 15:58:09'),
(3, 'Gift Bags', NULL, 1, 6, '2024-05-16 15:57:30', '2024-05-16 15:58:11'),
(4, 'Gift Boxes', NULL, 1, 6, '2024-05-16 15:57:55', '2024-05-16 15:58:13'),
(5, 'Gift Packagings', NULL, 1, 6, '2024-05-16 15:57:55', '2024-05-16 15:58:15'),
(6, 'House Day', 1, NULL, 6, '2024-05-16 16:02:46', NULL),
(7, 'Mango Tree', 1, NULL, 6, '2024-05-16 16:02:46', NULL),
(8, 'Mizgi', 1, NULL, 6, '2024-05-16 16:02:46', NULL),
(9, 'Nature Smile', 1, NULL, 6, '2024-05-16 16:02:46', NULL),
(10, 'Baby & Kids Hangers', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(11, 'Velvet Hanger', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(12, 'Metal Hangers', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(13, 'Pants Hangers', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(14, 'Wooden Hangers', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(15, 'Plastic Hanger', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(16, 'Garment Cover', 2, NULL, 6, '2024-05-16 16:04:53', NULL),
(17, 'Plain Shopping Bags', 3, NULL, 6, '2024-05-16 16:06:19', NULL),
(18, 'Plastic & PVC Bags', 3, NULL, 6, '2024-05-16 16:06:19', NULL),
(19, 'Tote Bags', 3, NULL, 6, '2024-05-16 16:06:19', NULL),
(20, 'Kraft Paper Bags', 3, NULL, 6, '2024-05-16 16:06:19', NULL),
(21, 'Fabric Carry Bags', 3, NULL, 6, '2024-05-16 16:06:19', NULL),
(22, 'Cardbord Box', 4, NULL, 6, '2024-05-16 16:08:00', NULL),
(23, 'Cake & Baker Packaging', 4, NULL, 6, '2024-05-16 16:08:00', NULL),
(24, 'Corrugated & Other Type', 4, NULL, 6, '2024-05-16 16:08:00', NULL),
(25, 'Paper Box', 4, NULL, 6, '2024-05-16 16:08:00', NULL),
(26, 'CT / DT / CA series Box', 4, NULL, 6, '2024-05-16 16:08:00', NULL),
(27, 'Glass Jars, Containers & Bottle', 5, NULL, 6, '2024-05-16 16:12:25', NULL),
(28, 'Tissue & Shred Paper', 5, NULL, 6, '2024-05-16 16:12:25', NULL),
(29, 'Gift Pouch', 5, NULL, 6, '2024-05-16 16:12:25', NULL),
(30, 'Ribbons', 5, NULL, 6, '2024-05-16 16:12:25', NULL),
(31, 'Wrapping Paper & Rolls', 5, NULL, 6, '2024-05-16 16:12:25', NULL),
(32, 'Mailers, Stickers & Sides', 5, NULL, 6, '2024-05-16 16:12:25', '2024-05-16 16:12:42'),
(33, 'Seasons & Party', 5, NULL, 6, '2024-05-16 16:12:25', '2024-05-16 16:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `name`, `password`, `data`) VALUES
(1, 1, 2, 3),
(2, 1, 2, 3),
(3, 1, 2, 3),
(4, 10, 10, 10),
(5, 10, 10, 10),
(7, 10, 10, 10),
(8, 10, 10, 10),
(9, 10, 10, 10),
(10, 10, 10, 10),
(11, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idvariationtypes` int(11) NOT NULL,
  `idstatus` smallint(6) NOT NULL DEFAULT 1,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variationtypes`
--

CREATE TABLE `variationtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idstatus` smallint(6) NOT NULL DEFAULT 1,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `variationtypes`
--

INSERT INTO `variationtypes` (`id`, `name`, `idstatus`, `added`, `updated`) VALUES
(1, 'sizes', 1, '2024-05-26 17:00:23', '2024-05-26 17:03:39'),
(2, 'colors', 1, '2024-05-26 17:04:39', NULL),
(3, 'Pack', 1, '2024-05-26 17:06:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockout`
--
ALTER TABLE `stockout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variationtypes`
--
ALTER TABLE `variationtypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stockout`
--
ALTER TABLE `stockout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variationtypes`
--
ALTER TABLE `variationtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
