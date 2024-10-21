-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2023 at 05:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treemphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int UNSIGNED NOT NULL,
  `categorysID` int UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `categorysID`, `title`, `image`, `createdAt`, `updatedAt`) VALUES
(7, 24, 'sad', '/uploads/images/Slides/Products/product-01.jpg', '2023-05-28 18:46:05', NULL),
(8, 25, 'dsada', '/uploads/images/Slides/Products/product-05.jpg', '2023-05-28 18:46:10', NULL),
(10, 26, 'Quản lý', '/uploads/images/Slides/Products/product-06.jpg', '2023-06-02 20:47:55', NULL),
(11, 25, 'dá', '/uploads/images/Slides/Products/product-09.jpg', '2023-06-02 20:48:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int UNSIGNED NOT NULL,
  `userID` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `userID`, `name`, `slug`, `createAt`, `updateAt`) VALUES
(24, 11, 'Quần áo nam', 'q', '2023-05-28 18:36:06', NULL),
(25, 11, 'Quần áo nữ', 'quan-ao-nu', '2023-05-28 18:36:33', NULL),
(26, 11, 'Quàn áo tre em', 'quan-ao-tre-em', '2023-05-28 18:36:52', NULL),
(27, 11, 'Quần áo mùa đông', 'quan-ao-mua-dong', '2023-05-28 18:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `reply` text,
  `status` int DEFAULT '1',
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `content`, `reply`, `status`, `createdAt`) VALUES
(1, 'manhlaso2@gmail.com', NULL, '                    dá                                                ', 0, '2023-06-13 11:14:37'),
(4, 'manhlaso2@gmail.com', 'da', NULL, 1, '2023-06-13 11:15:26'),
(5, 'manhlasoda2@gmail.com', 'da', NULL, 1, '2023-06-13 11:16:06'),
(6, 'clonegolike200@gmail.com', 'test', '                                                                ok                                                                        ', 0, '2023-06-13 12:19:26'),
(7, 'clonegolike200@gmail.com', 'da', NULL, 1, '2023-06-13 12:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `describes` text,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `describes`, `createAt`, `updateAt`) VALUES
(1, 'Admin', NULL, '2023-04-14 00:12:46', '2023-04-16 15:21:00'),
(2, 'Manager', NULL, '2023-04-15 16:26:34', NULL),
(11, 'Menmer', '{\"users\":[\"view\",\"add\",\"edit\",\"delete\"],\"categorys\":[\"view\",\"add\",\"edit\",\"delete\"]}', '2023-04-16 14:15:09', '2023-06-08 21:13:56'),
(15, 'SuperAdmin', '{\"users\":[\"view\",\"add\",\"edit\",\"delete\"],\"categorys\":[\"view\",\"add\",\"edit\",\"delete\"],\"groups\":[\"view\",\"add\",\"edit\",\"delete\"],\"usersclient\":[\"view\",\"add\",\"edit\",\"delete\"],\"properties\":[\"view\",\"add\",\"edit\",\"delete\"],\"products\":[\"view\",\"add\",\"edit\",\"delete\"],\"banner\":[\"view\",\"edit\",\"delete\"],\"slides\":[\"view\",\"add\",\"edit\",\"delete\"],\"order_detail\":[\"view\",\"delete\"],\"order\":[\"view\",\"active\",\"delete\"],\"subscribe\":[\"view\",\"delete\"],\"history\":[\"view\",\"delete\"],\"contact\":[\"view\",\"edit\",\"delete\"]}', '2023-05-26 12:06:53', '2023-06-13 11:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `imagecontents`
--

CREATE TABLE `imagecontents` (
  `id` int UNSIGNED NOT NULL,
  `productID` int UNSIGNED NOT NULL,
  `links` text,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imagecontents`
--

INSERT INTO `imagecontents` (`id`, `productID`, `links`, `createAt`, `updateAt`) VALUES
(98, 59, '/uploads/images/Slides/Products/product-01.jpg', '2023-05-28 18:37:50', '2023-06-13 02:08:40'),
(99, 59, '/uploads/images/Slides/Products/product-02.jpg', '2023-05-28 18:37:50', '2023-06-13 02:08:40'),
(100, 59, '/uploads/images/Slides/Products/product-05.jpg', '2023-05-28 18:37:50', '2023-06-13 02:08:40'),
(101, 60, '/uploads/images/Slides/Products/product-05.jpg', '2023-05-28 18:38:18', '2023-06-13 02:08:40'),
(102, 60, '/uploads/images/Slides/Products/product-01.jpg', '2023-05-28 18:38:18', '2023-06-13 02:08:40'),
(103, 61, '/uploads/images/Slides/Products/product-14.jpg', '2023-05-31 18:57:48', '2023-06-10 07:17:16'),
(104, 61, '/uploads/images/Slides/Products/product-09.jpg', '2023-05-31 18:57:48', '2023-06-10 07:17:16'),
(105, 61, '/uploads/images/Slides/Products/product-03.jpg', '2023-05-31 18:57:48', '2023-06-10 07:17:16'),
(106, 62, '/uploads/images/Slides/Products/product-01.jpg', '2023-06-07 21:32:19', '2023-06-13 02:08:40'),
(107, 62, '/uploads/images/Slides/Products/product-02.jpg', '2023-06-07 21:32:19', '2023-06-13 02:08:40'),
(108, 62, '/uploads/images/Slides/Products/product-04.jpg', '2023-06-07 21:32:19', '2023-06-10 07:16:59'),
(109, 63, '/uploads/images/Slides/d/product-07.jpg', '2023-06-07 21:38:22', '2023-06-10 07:16:39'),
(110, 64, '/uploads/images/Slides/Products/product-15.jpg', '2023-06-07 21:39:01', '2023-06-10 07:16:19'),
(111, 65, '/uploads/images/Slides/d/product-08.jpg', '2023-06-07 21:39:41', '2023-06-10 07:16:02'),
(112, 65, '/uploads/images/Slides/d/product-07.jpg', '2023-06-07 21:39:41', '2023-06-10 07:16:39'),
(113, 66, '/uploads/images/Slides/d/product-13.jpg', '2023-06-07 21:40:38', '2023-06-10 07:15:36'),
(114, 67, '/uploads/images/Slides/Products/product-01.jpg', '2023-06-07 22:35:17', '2023-06-13 02:08:40'),
(117, 68, '/uploads/images/Slides/Products/product-04.jpg', '2023-06-10 07:14:17', '2023-06-10 07:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `import_table`
--

CREATE TABLE `import_table` (
  `id` int UNSIGNED NOT NULL,
  `propertieID` int UNSIGNED DEFAULT NULL,
  `productID` int UNSIGNED DEFAULT NULL,
  `soLuong` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `import_table`
--

INSERT INTO `import_table` (`id`, `propertieID`, `productID`, `soLuong`, `createdAt`, `updatedAt`) VALUES
(3, 59, 59, '3', '2023-06-09 01:02:39', NULL),
(4, NULL, 61, '3', '2023-06-09 01:04:23', NULL),
(5, 62, 63, '32', '2023-06-09 13:55:41', NULL),
(6, 62, 63, '3', '2023-06-09 13:57:38', NULL),
(7, 62, 63, '38', '2023-06-09 14:03:02', NULL),
(8, 62, 63, '8', '2023-06-09 14:03:19', NULL),
(9, 62, 63, '-5', '2023-06-09 14:03:51', NULL),
(10, 62, 63, '55', '2023-06-09 14:04:41', NULL),
(12, 62, 63, '-40', '2023-06-09 14:06:04', NULL),
(13, 62, 63, '-55', '2023-06-09 14:06:49', NULL),
(14, NULL, 61, '3', '2023-06-09 17:23:14', NULL),
(15, NULL, 64, '6', '2023-06-13 01:29:42', NULL),
(16, 71, 67, '16', '2023-06-13 02:12:11', NULL),
(17, 59, 59, '3', '2023-06-13 02:12:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_token`
--

CREATE TABLE `login_token` (
  `id` int UNSIGNED NOT NULL,
  `userID` int UNSIGNED NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_token`
--

INSERT INTO `login_token` (`id`, `userID`, `token`, `createAt`) VALUES
(104, 11, 'ffec0382216e71b789617ffff44146f50feafa17', '2023-06-21 09:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `login_token_client`
--

CREATE TABLE `login_token_client` (
  `id` int UNSIGNED NOT NULL,
  `clientID` int UNSIGNED NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `actions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `title`, `actions`) VALUES
(1, 'users', 'Quản lý người dùng', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(2, 'categorys', 'Quản lý đanh mục', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(3, 'groups', 'Quản lý nhóm', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(4, 'usersclient', 'Quản lý người dùng', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(5, 'properties', 'Quản lý thuộc tính', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(6, 'products', 'Quản lý sản phẩm', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(7, 'banner', 'Quản lý danh mục hot', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(8, 'slides', 'Quản lý slides', '{\"view\":\"Xem\",\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}'),
(9, 'order_detail', 'Quản lý giao dịch', '{\"view\":\"Xem\",\"delete\":\"Xóa\"}'),
(11, 'order', 'Quản lý đơn hàng', '{\"view\":\"Xem\",\"active\":\"Kích hoạt\",\"delete\":\"Xóa\"}'),
(12, 'subscribe', 'Quản lý thông tin đăng ký', '{\"view\":\"Xem\",\"delete\":\"Xóa\"}'),
(13, 'history', 'Lịch sử sản phẩm', '{\"view\":\"Xem\",\"delete\":\"Xóa\"}'),
(14, 'contact', 'Quản lý hỗ trợ', '{\"view\":\"Xem\",\"edit\":\"Sửa\",\"delete\":\"Xóa\"}');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int UNSIGNED NOT NULL,
  `productID` int UNSIGNED NOT NULL,
  `clientID` int UNSIGNED NOT NULL,
  `propertieID` int UNSIGNED DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `maDonHang` varchar(100) NOT NULL,
  `total` int DEFAULT '0',
  `status` int DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int UNSIGNED NOT NULL,
  `clientID` int UNSIGNED NOT NULL,
  `orderID` int UNSIGNED NOT NULL,
  `maGiaoDich` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `ward` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `categoryID` int UNSIGNED NOT NULL,
  `userID` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `content` text,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `sale` varchar(100) DEFAULT NULL,
  `imageContent` int UNSIGNED DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createAT` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categoryID`, `userID`, `name`, `slug`, `images`, `content`, `price`, `discount`, `sale`, `imageContent`, `status`, `createAT`, `updateAt`) VALUES
(59, 27, 11, 'Esprit Ruffle Shirt', 'esprit-ruffle-shirt', '/uploads/images/Slides/Products/product-04.jpg', '&#60;p&#62;Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.&#60;/p&#62;&#13;&#10;', '45435345', NULL, '3213132', NULL, '0', '2023-05-28 18:37:50', '2023-06-13 02:08:40'),
(60, 24, 11, 'Herschel supply', 'herschel-supply', '/uploads/images/Slides/Products/product-05.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.&#13;&#10;', '2000001', NULL, '', NULL, '0', '2023-05-28 18:38:18', '2023-05-31 18:50:09'),
(61, 25, 11, 'Square Neck Back', 'square-neck-back', '/uploads/images/Slides/Products/product-06.jpg', 'Square Neck Back', '1233113', NULL, '', NULL, '0', '2023-05-31 18:57:48', '2023-06-10 07:17:16'),
(62, 25, 11, 'Only Check Trouser', 'only-check-trouser', '/uploads/images/Slides/Products/product-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '200000', NULL, '', NULL, '0', '2023-06-07 21:32:19', '2023-06-10 07:16:59'),
(63, 26, 11, 'Classic Trench Coat', 'classic-trench-coat', '/uploads/images/Slides/Products/product-12.jpg', 'International standard belts with 100% 1 to 1 exchange warranty', '240000', NULL, '180000', NULL, '0', '2023-06-07 21:38:22', '2023-06-10 07:16:39'),
(64, 24, 11, 'Mini Silver Mesh Watch', 'mini-silver-mesh-watch', '/uploads/images/Slides/Products/product-06.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '45435345', NULL, '3213132', NULL, '0', '2023-06-07 21:39:01', '2023-06-10 07:16:19'),
(65, 25, 11, 'Pretty Little Thing', 'pretty-little-thing', '/uploads/images/Slides/Products/product-14.jpg', 'Pretty Little Thing&#13;&#10;', '2000001', NULL, '180000', NULL, '0', '2023-06-07 21:39:41', '2023-06-10 07:16:02'),
(66, 26, 11, 'T-Shirt with Sleeve', 't-shirt-with-sleeve', '/uploads/images/Slides/d/product-10.jpg', 'T-Shirt with Sleeve&#13;&#10;', '240000', NULL, '', NULL, '0', '2023-06-07 21:40:38', '2023-06-10 07:15:36'),
(67, 25, 11, 'Quần nữ Amki', 'quan-nu-amki', '/uploads/images/Slides/Products/product-02.jpg', 'Quần nữ Amki', '2000001', NULL, '180000', NULL, '0', '2023-06-07 22:35:17', '2023-06-10 07:15:19'),
(68, 25, 11, 'Đồng hồ nam', 'dong-ho-nam', '/uploads/images/Slides/Products/product-06.jpg', 'Đồng hồ nam&#13;&#10;', '240000', NULL, '', NULL, '0', '2023-06-07 22:40:07', '2023-06-10 07:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int UNSIGNED NOT NULL,
  `size` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `productID` int UNSIGNED NOT NULL,
  `quantity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `size`, `productID`, `quantity`, `createAt`, `updateAt`) VALUES
(59, 'Xl', 59, '7', '2023-06-13 02:12:58', '2023-06-09 13:52:49'),
(62, 'X', 63, '25', '2023-06-09 13:57:38', '2023-06-09 14:06:49'),
(63, 'Xl', 68, '3', '2023-06-09 17:22:54', NULL),
(64, 'Xl', 66, '3', '2023-06-09 17:23:01', NULL),
(65, 'Xl', 60, '3', '2023-06-09 17:23:07', NULL),
(67, 'X', 65, '3', '2023-06-09 17:23:41', NULL),
(71, 'Xl', 67, '39', '2023-06-13 02:12:11', NULL),
(73, 'Xl', 61, '3', '2023-06-13 02:02:40', NULL),
(74, 'L', 64, '11', '2023-06-13 02:02:52', NULL),
(75, 'Xl', 62, '3', '2023-06-13 02:10:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `title`, `image`, `createAt`, `updatedAt`) VALUES
(10, 'lemanh', 'dsa', '/uploads/images/Slides/slide-03.jpg', '2023-05-28 18:41:48', NULL),
(11, 'lemanh1233dsada', 'dsa', '/uploads/images/Slides/slide-02.jpg', '2023-05-28 18:45:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `describe` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `describe`, `createdAt`, `updatedAt`) VALUES
(40, 'manhlasoda2@gmail.com', NULL, '2023-06-09 16:11:58', NULL),
(41, 'manhlaso2ad@gmail.com', NULL, '2023-06-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activeToken` varchar(100) DEFAULT NULL,
  `groupID` int UNSIGNED NOT NULL,
  `forgotToken` varchar(100) DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `twitch` varchar(100) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `password`, `email`, `activeToken`, `groupID`, `forgotToken`, `lastActivity`, `status`, `phone`, `address`, `zipcode`, `facebook`, `youtube`, `instagram`, `twitch`, `createAt`, `updateAt`) VALUES
(11, 'Lê Mạnh', '1f3edf49abaf3fb9804b93ab635dd3ff.png', '$2y$10$Snhu8r36F/KiyxDqlIuD4uYxe4R0ZCsuVvDwzS9H/rfPjURLT0.Su', 'clonegolike500@gmail.com', 'f47f7d5be8d4ccf634b47dc08f614eb6a6eb9fa4', 15, NULL, '2023-06-21 09:52:56', 1, '', '', NULL, 'https://www.facebook.com/profile.php?id=100026452673905', '', '', '', '2023-04-14 13:36:21', '2023-06-08 14:52:25'),
(56, 'lemanh1233dsda', '6.png', '$2y$10$m/d6lbUfNgTSvQGcr2tHU.CI.VZTwJqONDw1v8E4Tx5oxZxbtyWb6', 'clonegoloke5a00@gmail.com', NULL, 2, NULL, NULL, 1, '', '', NULL, '', '', '', '', '2023-05-26 12:11:22', '2023-06-07 21:23:20'),
(57, 'lemanh1233dsda', '6.png', '$2y$10$N9Nwl3ckhVaeNoBUJv71RumjiLz.3VzU97Dt73Lu.vnFMjtV/beEO', 'clonegoloake5a00@gmail.com', NULL, 1, NULL, NULL, 0, '', '', NULL, '', '', '', '', '2023-05-26 12:11:29', '2023-06-07 21:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `usersclient`
--

CREATE TABLE `usersclient` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `forgotToken` varchar(100) DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersclient`
--

INSERT INTO `usersclient` (`id`, `name`, `email`, `password`, `forgotToken`, `lastActivity`, `status`, `createdAt`, `updatedAt`) VALUES
(10, 'lemanh1233', 'manhlaso2@gmail.com', '$2y$10$zOkTVY4WtR2iIgTzYvnMtejnoSKMPqx8sWLYYYGZ4MlRPnOKdtiGO', NULL, '2023-06-13 02:23:46', 0, '2023-06-06 09:41:57', NULL),
(11, 'lemanh1233dsada', 'clonegoloke500@gmail.com', '$2y$10$tSnu9pt0jWjaoUsgSQffLeopePoHvTPiGRoJbXj43qPK8xcJOFO/.', NULL, NULL, 1, '2023-06-09 00:00:00', NULL),
(12, 'lemanh1233dsada', 'clonegolike500@gmail.com', '$2y$10$FSzJblA27pWW19aNZy8fP.fzyO5ex7pOt.hEMcF4T710voeH1rnSC', NULL, '2023-06-09 17:35:51', 0, '2023-06-09 00:00:00', NULL),
(14, 'lemanh', 'clonegoloke50a0@gmail.com', '$2y$10$T2SMfGLOcwZC2.jkRpkGd.5keCo5XXr.VX3MbO2xad3vHEWJi26ve', NULL, NULL, 1, '2023-06-09 09:44:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categorysID`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagecontents`
--
ALTER TABLE `imagecontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `import_table`
--
ALTER TABLE `import_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_table_ibfk_2` (`propertieID`),
  ADD KEY `import_table_ibfk_1` (`productID`);

--
-- Indexes for table `login_token`
--
ALTER TABLE `login_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `login_token_client`
--
ALTER TABLE `login_token_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_ibfk_1` (`clientID`),
  ADD KEY `order_ibfk_2` (`productID`),
  ADD KEY `order_ibfk_3` (`propertieID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_ibfk_1` (`clientID`),
  ADD KEY `order_detail_ibfk_2` (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `imageContentID` (`imageContent`),
  ADD KEY `imageID` (`images`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_ibfk_1` (`productID`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `usersclient`
--
ALTER TABLE `usersclient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `imagecontents`
--
ALTER TABLE `imagecontents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `import_table`
--
ALTER TABLE `import_table`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_token`
--
ALTER TABLE `login_token`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `login_token_client`
--
ALTER TABLE `login_token_client`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `usersclient`
--
ALTER TABLE `usersclient`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`categorysID`) REFERENCES `categorys` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `categorys`
--
ALTER TABLE `categorys`
  ADD CONSTRAINT `categorys_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `imagecontents`
--
ALTER TABLE `imagecontents`
  ADD CONSTRAINT `imagecontents_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `import_table`
--
ALTER TABLE `import_table`
  ADD CONSTRAINT `import_table_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `import_table_ibfk_2` FOREIGN KEY (`propertieID`) REFERENCES `properties` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `login_token`
--
ALTER TABLE `login_token`
  ADD CONSTRAINT `login_token_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `login_token_client`
--
ALTER TABLE `login_token_client`
  ADD CONSTRAINT `login_token_client_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `usersclient` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `usersclient` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`propertieID`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `usersclient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categorys` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
