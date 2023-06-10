-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 02:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`) VALUES
(14, 'Admin', 'Admin', '202cb962ac59075b964b07152d234b70', '1'),
(15, 'User', 'Admin2', '202cb962ac59075b964b07152d234b70', '2');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `preview_text` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `img`, `content`, `preview_text`, `created_at`) VALUES
(10, 'Adidas ra mắt ‘Meteorite Pack’ với X Speedflow dành cho Messi', 'hinhanh-1630139715Adidas-Meteorite-Pack-5.jpg', '<p><em>Những trận đấu b&oacute;ng đ&aacute; tại m&ugrave;a giải mới lu&ocirc;n l&agrave; thời điểm quan trọng để c&aacute;c h&atilde;ng gi&agrave;y giới thiệu c&aacute;c bộ sưu tập mới của m&igrave;nh. Để chuẩn bị cho m&ugrave;a giải 2021-22 th&igrave; Adidas đ&atilde; cho ra mắt bộ sưu tập gi&agrave;y đ&aacute; b&oacute;ng với t&ecirc;n gọi &lsquo;Meteorite Pack&rsquo; với nhiều sự thay đổi mới mẻ.</em></p>\r\n\r\n<p><em>Ở bộ sưu tập mới n&agrave;y Adidas đ&atilde; ch&iacute;nh thức dừng sản xuất d&ograve;ng gi&agrave;y Nemeziz v&agrave; n&acirc;ng cấp d&ograve;ng gi&agrave;y Adidas X với phi&ecirc;n bản mới l&agrave; X Speedflow. Với việc dừng sản xuất Adidas Nemeziz th&igrave; Messi sẽ ch&iacute;nh thức chuyển sang sử dụng d&ograve;ng gi&agrave;y Adidas X Speedflow với nhiều phi&ecirc;n bản được thửa ri&ecirc;ng cho anh.</em></p>\r\n\r\n<p><em>Bộ sưu tập&nbsp;<strong>Adidas &lsquo;Meteorite Pack&rsquo;</strong>&nbsp;được thiết kế với gam m&agrave;u đỏ chủ đạo cho cả 3 d&ograve;ng gi&agrave;y. Kể từ bộ sưu tập n&agrave;y th&igrave; Adidas sẽ chỉ c&ograve;n ph&aacute;t triển 3 d&ograve;ng gi&agrave;y đ&aacute; b&oacute;ng chủ lực của h&atilde;ng l&agrave; X Speedflow, Predator Freak v&agrave; Copa Sense.</em></p>\r\n', '<p><em>Những trận đấu b&oacute;ng đ&aacute; tại m&ugrave;a giải mới lu&ocirc;n l&agrave; thời điểm quan trọng để c&aacute;c h&atilde;ng gi&agrave;y giới thiệu c&aacute;c bộ sưu tập mới của m&igrave;nh. Để chuẩn bị cho m&ugrave;a giải 2021-22 th&igrav', '2021-08-28 08:35:15'),
(12, 'Giày Đá Bóng Sân Cỏ Nhân Tạo cho tiền vệ chọn thế nào?', 'hinhanh-16301398771.jpg', '<p><em>B&oacute;ng đ&aacute; l&agrave; bộ m&ocirc;n thể thao tập thể c&oacute; nhiều người chơi với c&aacute;c vị tr&iacute; kh&aacute;c nhau. Với sự ph&acirc;n h&oacute;a r&otilde; r&agrave;ng c&aacute;c vị tr&iacute; trong đội h&igrave;nh b&oacute;ng đ&aacute; chuy&ecirc;n nghiệp khiến c&aacute;c h&atilde;ng sản xuất gi&agrave;y cố gắng cải tiến để tạo ra những mẫu gi&agrave;y hỗ trợ chơi b&oacute;ng tốt nhất.</em></p>\r\n\r\n<p><em>Tuy nhi&ecirc;n sự thật th&igrave; c&aacute;c h&atilde;ng sản xuất gi&agrave;y b&oacute;ng đ&aacute; đang&nbsp;<strong>kh&ocirc;ng sản xuất gi&agrave;y theo vị tr&iacute;</strong>&nbsp;kh&aacute;c nhau m&agrave; chỉ sản xuất gi&agrave;y&nbsp;<strong>hỗ trợ chơi b&oacute;ng với c&aacute;c phong c&aacute;ch kh&aacute;c nhau</strong>. Điều n&agrave;y được &aacute;p dụng cho b&oacute;ng đ&aacute; chuy&ecirc;n nghiệp v&agrave; cả trong b&oacute;ng đ&aacute; kh&ocirc;ng chuy&ecirc;n tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo.</em></p>\r\n\r\n<p><em>Nội dung b&agrave;i viết n&agrave;y sẽ giới thiệu về c&aacute;ch chọn&nbsp;<strong>gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n cỏ nh&acirc;n tạo cho tiền vệ</strong>&nbsp;với c&aacute;c phong c&aacute;ch chơi b&oacute;ng kh&aacute;c nhau. C&acirc;u hỏi&nbsp;<strong>chọn gi&agrave;y đ&aacute; banh s&acirc;n cỏ nh&acirc;n tạo cho tiền vệ chọn thế n&agrave;o</strong>&nbsp;sẽ được giải th&iacute;ch v&agrave; trả lời một c&aacute;ch đơn giản, r&otilde; r&agrave;ng nhất. Hy vọng b&agrave;i viết sẽ gi&uacute;p c&aacute;c bạn tự tin, dễ d&agrave;ng hơn khi chọn mua gi&agrave;y để chơi b&oacute;ng nh&eacute;.</em></p>\r\n', '<p><em>B&oacute;ng đ&aacute; l&agrave; bộ m&ocirc;n thể thao tập thể c&oacute; nhiều người chơi với c&aacute;c vị tr&iacute; kh&aacute;c nhau. Với sự ph&acirc;n h&oacute;a r&otilde; r&agrave;ng c&aacute;c vị tr&iacute; trong đội h&igrave;nh b&oacute;', '2021-08-28 08:37:57'),
(13, 'Bộ sưu tập Nike ‘Motivation Pack’ mới mở đầu mùa giải 2021', 'hinhanh-163028919120.jpg', '<p><em>Sau một m&ugrave;a giải Euro đầy s&ocirc;i động v&agrave; v&agrave;i tuần tạm nghỉ th&igrave; b&oacute;ng đ&aacute; đ&atilde; trở lại tr&ecirc;n khắp thế giới. C&aacute;c giải đấu h&agrave;ng đầu thế giới đ&atilde; trở lại với những trận đấu rất hấp dẫn v&agrave;o mỗi cuối tuần.</em></p>\r\n\r\n<p><em>Để chuẩn bị cho sự trở lại của b&oacute;ng đ&aacute; th&igrave; Nike ra mắt bộ sưu tập &lsquo;Motivation Pack&rsquo; với những gam m&agrave;u đẹp mắt đầy ấn tượng. Kh&ocirc;ng chỉ c&oacute; sự n&acirc;ng cấp về thiết kế m&agrave; c&aacute;c mẫu&nbsp;<a href=\"https://giaydabongtot.com/giay-da-bong-nike\"><strong>gi&agrave;y đ&aacute; banh Nike</strong></a>&nbsp;trong bộ sưu tập n&agrave;y cũng được n&acirc;ng cấp rất nhiều với những phi&ecirc;n bản mới.</em></p>\r\n\r\n<p><em>Nội dung b&agrave;i viết n&agrave;y ch&uacute;ng ta c&ugrave;ng soi qua về vẻ đẹp rực rỡ của bộ sưu tập Nike &lsquo;Motivation Pack&rsquo; nh&eacute;. C&ugrave;ng với đ&oacute; sẽ t&igrave;m hiểu kỹ hơn về sự n&acirc;ng cấp về thiết kế, c&ocirc;ng nghệ cũng như chất liệu của c&aacute;c mẫu gi&agrave;y trong bộ sưu tập tuyệt vời n&agrave;y nh&eacute;.</em></p>\r\n', '<p><em>Sau một m&ugrave;a giải Euro đầy s&ocirc;i động v&agrave; v&agrave;i tuần tạm nghỉ th&igrave; b&oacute;ng đ&aacute; đ&atilde; trở lại tr&ecirc;n khắp thế giới. C&aacute;c giải đấu h&agrave;ng đầu thế giới đ&atilde; trở lại với những trận đấu r', '2021-08-30 02:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `id_parent`) VALUES
(1, 'Nike Shoes', 0),
(2, 'Adidas Shoes', 0),
(4, 'Nike Mercurial', 1),
(5, 'Nike PhanTom', 1),
(8, 'Adidas X', 2),
(9, 'Nike Tiempo', 1),
(10, 'Adidas Predator ', 2),
(11, 'Adidas Copa', 2),
(12, 'Adidas Nemeziz', 2),
(18, 'Mizuno Shoes', 0),
(20, 'Nike Neymar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`, `id_blog`, `date`) VALUES
(17, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'ok', 8, '2021-08-24 04:19:35'),
(18, 'Ty anh', 'anhthu@gmail.com', 'uk', 8, '2021-08-24 04:27:51'),
(19, 'Pham Hoang Vu 123213', 'anhvu991qn@gmail.com', 'as', 8, '2021-08-24 04:29:02'),
(20, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'Dc', 7, '2021-08-24 04:31:34'),
(21, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'd', 7, '2021-08-24 04:34:43'),
(22, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'dc', 7, '2021-08-24 04:36:16'),
(23, 'Pham Ngoc Nhan', 'admin@gmail.com', 'Bài Viết Khá Thú Vị và hấp dẫn ạ', 6, '2021-08-24 04:38:06'),
(24, 'Trâm Anh', 'thylovedung@gmail.com', 'Bài viết phù hợp vs tôi ạ\n', 7, '2021-08-24 06:45:33'),
(25, 'Ty anh ', 'anhvuqn@gmail.com', 'Dc', 7, '2021-08-27 13:52:31'),
(26, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'Nice News ! <3', 13, '2021-08-30 02:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`) VALUES
(12, 'Pham Hoang Vu', 'hoangvu.111@gmail.com', '0918753048', 'Ok'),
(14, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(23, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '09123213', ''),
(26, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(29, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(30, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(31, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(32, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(33, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', 'ok'),
(35, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(36, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(37, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(38, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', ''),
(39, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', 'Oke'),
(40, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '0918753048', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(1, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Hoa hồng Xấu Xí', 'anhvu99qn@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `img_products`
--

CREATE TABLE `img_products` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_products`
--

INSERT INTO `img_products` (`id`, `id_sp`, `img`) VALUES
(88, 26, 'hinhanh-163007014317.jpg'),
(89, 26, 'hinhanh-163007014318.jpg'),
(90, 26, 'hinhanh-163007014319.jpg'),
(91, 27, 'hinhanh-16300702232.jpg'),
(92, 27, 'hinhanh-16300702233.jpg'),
(93, 27, 'hinhanh-16300702234.jpg'),
(94, 26, '163007024513.jpg'),
(95, 26, '163007024514.jpg'),
(96, 26, '163007024515.jpg'),
(97, 27, '16300705742.jpg'),
(98, 27, '16300705743.jpg'),
(99, 27, '16300705744.jpg'),
(100, 26, '163007068518.jpg'),
(101, 26, '163007068619.jpg'),
(102, 26, '163007068620.jpg'),
(106, 29, 'hinhanh-16300709592.jpg'),
(107, 29, 'hinhanh-16300709593.jpg'),
(108, 29, 'hinhanh-16300709594.jpg'),
(109, 30, 'hinhanh-16300710396.jpg'),
(110, 30, 'hinhanh-16300710397.jpg'),
(111, 30, 'hinhanh-16300710398.jpg'),
(112, 31, 'hinhanh-163007117610.jpg'),
(113, 31, 'hinhanh-163007117611.jpg'),
(114, 31, 'hinhanh-163007117612.jpg'),
(115, 32, 'hinhanh-163007131915.jpg'),
(116, 32, 'hinhanh-163007131916.jpg'),
(117, 32, 'hinhanh-163007131917.jpg'),
(151, 44, 'hinhanh-16303771641.4.jpg'),
(152, 44, 'hinhanh-16303771641.2.jpg'),
(153, 44, 'hinhanh-16303771641.3.jpg'),
(157, 46, 'hinhanh-16303773211.5.jpg'),
(158, 46, 'hinhanh-16303773211.6.jpg'),
(159, 46, 'hinhanh-16303773211.7.jpg'),
(163, 48, 'hinhanh-16303775032.1.jpg'),
(164, 48, 'hinhanh-16303775032.2.jpg'),
(165, 48, 'hinhanh-16303775032.3.jpg'),
(166, 49, 'hinhanh-16303776113.1.jpg'),
(167, 49, 'hinhanh-16303776113.2.jpg'),
(168, 49, 'hinhanh-16303776113.3.jpg'),
(172, 51, 'hinhanh-16303778044.1.jpg'),
(173, 51, 'hinhanh-16303778044.2.jpg'),
(174, 51, 'hinhanh-16303778044.3.jpg'),
(178, 53, 'hinhanh-16303780335.1.jpg'),
(179, 53, 'hinhanh-16303780335.2.jpg'),
(180, 53, 'hinhanh-16303780335.3.jpg'),
(184, 55, 'hinhanh-16303782916.1.jpg'),
(185, 55, 'hinhanh-16303782916.2.jpg'),
(186, 55, 'hinhanh-16303782916.3.jpg'),
(187, 56, 'hinhanh-16303783447.1.jpg'),
(188, 56, 'hinhanh-16303783447.2.jpg'),
(189, 56, 'hinhanh-16303783447.3.jpg'),
(190, 57, 'hinhanh-16303783928.1.jpg'),
(191, 57, 'hinhanh-16303783928.2.jpg'),
(192, 57, 'hinhanh-16303783928.3.jpg'),
(193, 58, 'hinhanh-16303785761.11.jpg'),
(194, 58, 'hinhanh-16303785761.12.jpg'),
(195, 58, 'hinhanh-16303785761.13.jpg'),
(196, 59, 'hinhanh-16303786232.11.jpg'),
(197, 59, 'hinhanh-16303786232.12.jpg'),
(198, 59, 'hinhanh-16303786232.13.jpg'),
(199, 60, 'hinhanh-1630393017n1.jpg'),
(200, 60, 'hinhanh-1630393017n2.jpg'),
(201, 60, 'hinhanh-1630393018n3.jpg'),
(202, 61, 'hinhanh-1630393087n9.jpg'),
(203, 61, 'hinhanh-1630393087n10.jpg'),
(204, 61, 'hinhanh-1630393087n11.jpg'),
(208, 63, 'hinhanh-1630393204n6.jpg'),
(209, 63, 'hinhanh-1630393204n7.jpg'),
(210, 63, 'hinhanh-1630393204n8.jpg'),
(211, 64, 'hinhanh-1630393296nn1.jpg'),
(212, 64, 'hinhanh-1630393296nn2.jpg'),
(213, 64, 'hinhanh-1630393296nn4.jpg'),
(217, 66, 'hinhanh-1630393525p2.jpg'),
(218, 66, 'hinhanh-1630393525p3.jpg'),
(219, 66, 'hinhanh-1630393525p4.jpg'),
(220, 67, 'hinhanh-1630393575pt2.jpg'),
(221, 67, 'hinhanh-1630393575pt3.jpg'),
(222, 67, 'hinhanh-1630393575pt4.jpg'),
(223, 68, 'hinhanh-1630393628pt6.jpg'),
(224, 68, 'hinhanh-1630393628pt7.jpg'),
(225, 68, 'hinhanh-1630393628pt8.jpg'),
(226, 69, 'hinhanh-1630393785tp10.jpg'),
(227, 69, 'hinhanh-1630393785tp11.jpg'),
(228, 69, 'hinhanh-1630393786tp12.jpg'),
(229, 69, '1630393816tp10.jpg'),
(230, 69, '1630393816tp11.jpg'),
(231, 69, '1630393816tp9.jpg'),
(232, 70, 'hinhanh-1630393861tp2.jpg'),
(233, 70, 'hinhanh-1630393861tp3.jpg'),
(234, 70, 'hinhanh-1630393861tp4.jpg'),
(235, 71, 'hinhanh-1630393910tp6.jpg'),
(236, 71, 'hinhanh-1630393910tp7.jpg'),
(237, 71, 'hinhanh-1630393910tp8.jpg'),
(238, 72, 'hinhanh-16303954242.m.jpg'),
(239, 72, 'hinhanh-16303954243.m.jpg'),
(240, 72, 'hinhanh-16303954244.m.jpg'),
(241, 73, 'hinhanh-1630395735ptt2.jpg'),
(242, 73, 'hinhanh-1630395735ptt3.jpg'),
(243, 73, 'hinhanh-1630395735ptt4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `id_customer`, `phone`, `address`, `created_at`, `status`) VALUES
(67, 1, '0918753048', 'Hương An, Quế Sơn, Quảng Nam', '2021-08-27 13:39:11', 1),
(69, 1, '0918753048', 'K82/67 Nguyễn Lương Bằng, Liên Chiểu, Đà Nẵng', '2021-08-31 07:14:48', 0),
(70, 1, '0918753048', 'Huong an', '2021-09-02 02:29:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_sp`, `qty`, `price`) VALUES
(7, 20, 1, 100),
(7, 21, 1, 150),
(8, 20, 1, 100),
(8, 21, 1, 150),
(9, 21, 1, 150),
(9, 20, 1, 100),
(14, 20, 1, 100),
(14, 21, 1, 150),
(15, 21, 1, 150),
(15, 20, 1, 100),
(16, 20, 1, 100),
(16, 21, 1, 150),
(17, 20, 1, 100),
(18, 21, 1, 150),
(18, 20, 1, 100),
(19, 21, 1, 150),
(19, 20, 1, 100),
(20, 21, 1, 150),
(20, 20, 1, 100),
(21, 21, 1, 150),
(22, 21, 1, 150),
(22, 20, 1, 100),
(23, 21, 1, 150),
(23, 20, 1, 100),
(24, 21, 1, 150),
(24, 20, 1, 100),
(25, 21, 1, 150),
(25, 20, 1, 100),
(33, 21, 1, 150),
(34, 21, 1, 150),
(35, 21, 1, 150),
(35, 20, 1, 100),
(36, 21, 1, 150),
(36, 20, 1, 100),
(44, 21, 1, 150),
(44, 20, 1, 100),
(45, 21, 1, 150),
(45, 20, 1, 100),
(46, 21, 1, 150),
(46, 20, 1, 100),
(47, 21, 1, 150),
(47, 20, 1, 100),
(48, 21, 1, 150),
(48, 20, 1, 100),
(49, 21, 1, 150),
(50, 21, 1, 150),
(51, 20, 1, 100),
(52, 20, 1, 100),
(53, 21, 1, 150),
(54, 20, 1, 100),
(55, 20, 1, 100),
(55, 21, 1, 150),
(56, 20, 1, 100),
(57, 20, 1, 100),
(57, 21, 1, 150),
(58, 21, 1, 150),
(58, 20, 1, 100),
(59, 21, 1, 150),
(60, 21, 1, 150),
(61, 20, 1, 100),
(61, 21, 1, 150),
(62, 21, 1, 150),
(62, 20, 1, 100),
(63, 21, 1, 150),
(63, 20, 1, 100),
(64, 21, 1, 150),
(64, 20, 1, 100),
(65, 20, 6, 100),
(66, 21, 1, 150),
(66, 20, 1, 100),
(67, 30, 1, 100),
(67, 29, 4, 100),
(67, 31, 3, 150),
(67, 32, 2, 150),
(69, 71, 1, 100),
(69, 70, 1, 100),
(70, 72, 1, 100),
(70, 31, 4, 150);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `sp_hot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_cat`, `name_product`, `image`, `price`, `qty`, `preview`, `detail`, `sp_hot`) VALUES
(26, 10, 'Adidas Predator 20.3 TF Xanh dương trắng | Cổ cao, có dây', 'hinhanh-163007065917.jpg', 100, 10, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n</strong>&nbsp;(Thiết kế đế TF mới của Predator)</li>\r\n</ul>\r\n', 1),
(27, 10, 'Adidas Predator Freak .3 TF hồng đen | Cổ cao, có dây', 'hinhanh-16300702231.jpg', 100, 10, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator Freak phi&ecirc;n bản 2021)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator Freak phi&ecirc;n bản 2021)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n</strong>&nbsp;(Thiết kế đế TF mới của Predator)</li>\r\n</ul>\r\n', 1),
(29, 10, 'Adidas Predator 20.3 TF xanh nhạt cổ cam | Không dây, Cổ cao', 'hinhanh-16300709591.jpg', 100, 2, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n</strong>&nbsp;(Thiết kế đế TF mới của Predator)</li>\r\n</ul>\r\n', 1),
(30, 10, 'Adidas Predator 20.3 TF xanh nhạt vạch xanh | Cổ thấp, có dây', 'hinhanh-16300710395.jpg', 100, 2, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Thiết kế kh&ocirc;ng cổ thun</strong>&nbsp;(Dễ xỏ hơn, hợp ch&acirc;n b&egrave; hơn)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải ph', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Thiết kế kh&ocirc;ng cổ thun</strong>&nbsp;(Dễ xỏ hơn, hợp ch&acirc;n b&egrave; hơn)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m sơn</strong>&nbsp;(Thiết kế đế TF mới của Predator)</li>\r\n</ul>\r\n', 1),
(31, 10, 'Adidas Predator 20.3 TF đỏ vạch đen đế trong | Không dây, cổ cao', 'hinhanh-16300711769.jpg', 150, 2, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Gi&agrave;y kh&ocirc;ng d&acirc;y</strong>&nbsp;(Kh&ocirc;ng d&acirc;y buộc nhưng vẫn chắc chắn)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&n', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Gi&agrave;y kh&ocirc;ng d&acirc;y</strong>&nbsp;(Kh&ocirc;ng d&acirc;y buộc nhưng vẫn chắc chắn)</li>\r\n	<li><strong>Cổ thun &ocirc;m ch&acirc;n</strong>&nbsp;(Mang lại sự chắc ch&acirc;n nhưng lại dễ xỏ)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n</ul>\r\n', 1),
(32, 10, 'Adidas Predator 20.3 TF xanh dương vạch trắng | Cổ thấp, có dây', 'hinhanh-163007131914.jpg', 150, 10, '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Thiết kế kh&ocirc;ng cổ thun</strong>&nbsp;(Dễ xỏ hơn, hợp ch&acirc;n b&egrave; hơn)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải ph', '<ul>\r\n	<li><strong>Thiết kế đời mới</strong>&nbsp;(Predator phi&ecirc;n bản 2020)</li>\r\n	<li><strong>Thiết kế kh&ocirc;ng cổ thun</strong>&nbsp;(Dễ xỏ hơn, hợp ch&acirc;n b&egrave; hơn)</li>\r\n	<li><strong>Da vải &ecirc;m &aacute;i</strong>&nbsp;(Da vải phủ polyme mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m sơn</strong>&nbsp;(Thiết kế đế TF mới của Predator)</li>\r\n</ul>\r\n', 0),
(44, 8, 'Giày đá bóng siêu nhẹ Adidas X Ghosted .1 TF Hồng vạch đen', 'hinhanh-16303771641.1.jpg', 100, 12, '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</strong>&nbsp;(Chắc ch&acirc;n &ecirc;m &aacute;i hơn)</li>\r\n	<li><strong>Đế Boost &ecirc;m &aacute;i</stro', '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</strong>&nbsp;(Chắc ch&acirc;n &ecirc;m &aacute;i hơn)</li>\r\n	<li><strong>Đế Boost &ecirc;m &aacute;i</strong>&nbsp;(Kh&ocirc;ng bị đau b&agrave;n ch&acirc;n, g&oacute;t ch&acirc;n khi chạy)</li>\r\n	<li><strong>Gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo nhẹ</strong>&nbsp;(Da mỏng n&ecirc;n rất nhẹ)</li>\r\n</ul>\r\n', 0),
(46, 8, 'Adidas X Ghosted + FG trắng vạch vàng | Không dây, siêu nhẹ', 'hinhanh-16303773211.8.jpg', 100, 2, '<ul>\r\n	<li><strong>Thiết kế gọn nhẹ</strong>&nbsp;(Adidas X l&agrave; d&ograve;ng gi&agrave;y thi&ecirc;n về tốc độ)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbsp;(Chỉ 185g với size 40)</li>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&n', '<ul>\r\n	<li><strong>Thiết kế gọn nhẹ</strong>&nbsp;(Adidas X l&agrave; d&ograve;ng gi&agrave;y thi&ecirc;n về tốc độ)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbsp;(Chỉ 185g với size 40)</li>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Vừa kh&iacute;t b&agrave;n ch&acirc;n mọi g&oacute;c cạnh)</li>\r\n	<li><strong>Cổ Thun &ocirc;m ch&acirc;n</strong>&nbsp;(Thiết kế đời mới)</li>\r\n</ul>\r\n', 1),
(48, 8, 'Adidas X Ghosted .1 TF tím vạch xanh | bản SF siêu nhẹ', 'hinhanh-16303775032.4.jpg', 100, 12, '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</strong>&nbsp;(Chắc ch&acirc;n &ecirc;m &aacute;i hơn)</li>\r\n	<li><strong>Đế Boost &ecirc;m &aacute;i</stro', '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</strong>&nbsp;(Chắc ch&acirc;n &ecirc;m &aacute;i hơn)</li>\r\n	<li><strong>Đế Boost &ecirc;m &aacute;i</strong>&nbsp;(Kh&ocirc;ng bị đau b&agrave;n ch&acirc;n, g&oacute;t ch&acirc;n khi chạy)</li>\r\n	<li><strong>Gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo nhẹ</strong>&nbsp;(Da mỏng n&ecirc;n rất nhẹ)</li>\r\n</ul>\r\n', 0),
(49, 8, 'Adidas X Ghosted .3 TF màu xanh chuối vạch tím bản SF', 'hinhanh-16303776113.4.jpg', 100, 10, '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa si&ecirc;u mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</st', '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa si&ecirc;u mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thiết kế mới nhất Adidas X 2020)</li>\r\n	<li><strong>Form gi&agrave;y chắc chắn, thoải m&aacute;i</strong>&nbsp;(Chắc ch&acirc;n &ecirc;m &aacute;i hơn)</li>\r\n	<li><strong>Gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo nhẹ</strong>&nbsp;(Da mỏng n&ecirc;n rất nhẹ)</li>\r\n</ul>\r\n', 0),
(51, 8, 'Adidas X19.1 AG xanh nhạt trắng | Mẫu hot Đoàn Văn Hậu', 'hinhanh-16303778044.4.jpg', 100, 2, '<ul>\r\n	<li><strong>Thiết kế gọn nhẹ</strong>&nbsp;(Adidas X l&agrave; d&ograve;ng gi&agrave;y thi&ecirc;n về tốc độ)</li>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Vừa kh&iacute;t b&agrave;n ch&acirc;n mọi g&oacute;c cạnh)</li>\r\n	<', '<ul>\r\n	<li><strong>Thiết kế gọn nhẹ</strong>&nbsp;(Adidas X l&agrave; d&ograve;ng gi&agrave;y thi&ecirc;n về tốc độ)</li>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Vừa kh&iacute;t b&agrave;n ch&acirc;n mọi g&oacute;c cạnh)</li>\r\n	<li><strong>Cổ Thun &ocirc;m ch&acirc;n</strong>&nbsp;(Thiết kế đời mới)</li>\r\n	<li>Trải nghiệm gi&agrave;y đinh tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo (<strong>Gi&agrave;y đinh AG</strong>)</li>\r\n</ul>\r\n', 0),
(53, 12, 'Adidas Nemeziz 20.1 FG trắng đen vạch vàng bản SF', 'hinhanh-16303780335.4.jpg', 100, 12, '<ul>\r\n	<li><strong>Da vải mềm, mỏng</strong>&nbsp;(Mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang)</li>\r\n	<li><strong>Da vải co gi&atilde;n tốt</strong>&nbsp;(Kh&ocirc;ng bị đau ch&acirc;n, kích ch&acirc;n)</li>\r\n	<li><strong>Form gi&agrave;y ', '<ul>\r\n	<li><strong>Da vải mềm, mỏng</strong>&nbsp;(Mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang)</li>\r\n	<li><strong>Da vải co gi&atilde;n tốt</strong>&nbsp;(Kh&ocirc;ng bị đau ch&acirc;n, kích ch&acirc;n)</li>\r\n	<li><strong>Form gi&agrave;y hợp ch&acirc;n bè</strong>&nbsp;(&Ocirc;m ch&acirc;n những v&acirc;̃n thoải mái)</li>\r\n	<li><strong>Cổ thun thế hệ mới</strong>&nbsp;(Thiết kế kiểu mới của Adidas)</li>\r\n</ul>\r\n', 1),
(55, 12, 'Adidas Nemeziz Messi 18.3 TF Xanh lá | Bản Worldcup 2018', 'hinhanh-16303782916.4.jpg', 100, 10, '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Kh&aacute;ch h&agrave;n', '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Kh&aacute;ch h&agrave;ng cũ th&ocirc;ng b&aacute;o độ bền tr&ecirc;n 1 năm)</li>\r\n	<li><strong>Một trong những đ&ocirc;i gi&agrave;y da mềm nhất</strong>&nbsp;(Sờ l&agrave; biết)</li>\r\n</ul>\r\n', 0),
(56, 12, 'Adidas Nemeziz 18.3 TF Xanh dương vạch trắng | Da vải ôm chân', 'hinhanh-16303783447.4.jpg', 100, 12, '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Kh&aacute;ch h&agrave;n', '<ul>\r\n	<li><strong>Da vải thế hệ mới</strong>&nbsp;(Da vải phủ nhựa mỏng, mềm v&agrave; nhẹ)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Kh&aacute;ch h&agrave;ng cũ th&ocirc;ng b&aacute;o độ bền tr&ecirc;n 1 năm)</li>\r\n	<li><strong>Một trong những đ&ocirc;i gi&agrave;y da mềm nhất</strong>&nbsp;(Sờ l&agrave; biết)</li>\r\n</ul>\r\n', 0),
(57, 12, 'Adidas Nemeziz 19.3 TF Đen mun | Da mềm, hợp chân bè', 'hinhanh-16303783928.4.jpg', 100, 1, '<ul>\r\n	<li><strong>Da mềm, mỏng</strong>&nbsp;(Mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Cổ thun thế hệ mới</strong>&nbsp;(Thiết k', '<ul>\r\n	<li><strong>Da mềm, mỏng</strong>&nbsp;(Mang lại cảm gi&aacute;c thoải m&aacute;i cho người mang)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Cổ thun thế hệ mới</strong>&nbsp;(Thiết kế cổ thun &ocirc;m ch&acirc;n kiểu mới 2019 của Adidas)</li>\r\n	<li><strong>Một trong những đ&ocirc;i gi&agrave;y da mềm nhất</strong>&nbsp;(Sờ l&agrave; biết)</li>\r\n</ul>\r\n', 0),
(58, 11, 'Giày Adidas Copa 19.4 TF xám vạch đen | Da mềm, cổ thấp', 'hinhanh-16303785761.14.jpg', 75, 12, '<ul>\r\n	<li><strong>Da mềm &ecirc;m ch&acirc;n</strong>&nbsp;(mang lại sự thoải m&aacute;i khi mang)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Theo đ&aacute;nh', '<ul>\r\n	<li><strong>Da mềm &ecirc;m ch&acirc;n</strong>&nbsp;(mang lại sự thoải m&aacute;i khi mang)</li>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Độ bền rất cao</strong>&nbsp;(Theo đ&aacute;nh gi&aacute; của kh&aacute;ch h&agrave;ng đ&atilde; sử dụng)</li>\r\n	<li><strong>Ph&ugrave; hợp ch&acirc;n b&egrave;</strong>&nbsp;(Kh&ocirc;ng qu&aacute; bị tức ch&acirc;n do da mềm)</li>\r\n</ul>\r\n', 0),
(59, 11, 'Giày trẻ em Winbro Copa 18.4 TF Xanh dương trắng vạch đen', 'hinhanh-16303786232.14.jpg', 100, 12, '<ul>\r\n	<li><strong>Gi&agrave;y Việt Nam chất lượng cao</strong>&nbsp;(Độ bền cao, &ecirc;m, mềm)</li>\r\n	<li><strong>Form gi&agrave;y thoải m&aacute;i</strong>&nbsp;(Mang lại sự thoải m&aacute;i cho b&eacute;)</li>\r\n	<li><strong>Đế gi&agrave;y thon gọn</st', '<ul>\r\n	<li><strong>Gi&agrave;y Việt Nam chất lượng cao</strong>&nbsp;(Độ bền cao, &ecirc;m, mềm)</li>\r\n	<li><strong>Form gi&agrave;y thoải m&aacute;i</strong>&nbsp;(Mang lại sự thoải m&aacute;i cho b&eacute;)</li>\r\n	<li><strong>Đế gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ chơi tr&ecirc;n c&aacute;c mặt s&acirc;n cỏ nh&acirc;n tạo, s&acirc;n b&ecirc; t&ocirc;ng)</li>\r\n	<li><strong>Kh&acirc;u mũi chắc chắn</strong>&nbsp;(Kh&acirc;u ch&igrave;m chắc chắn, kh&ocirc;ng bị đứt chỉ)</li>\r\n</ul>\r\n', 0),
(60, 4, 'Nike Mercurial Vapor 14 Academy TF xanh nhạt vàng Euro', 'hinhanh-1630393017n4.jpg', 100, 10, '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Gi&agrave;y đinh dăm TF</strong>&nbsp;(Đinh gi&agrave;y thiết kế mới b&aacute;m s&acirc;n cực tốt)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbs', '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Gi&agrave;y đinh dăm TF</strong>&nbsp;(Đinh gi&agrave;y thiết kế mới b&aacute;m s&acirc;n cực tốt)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbsp;(So với c&aacute;c d&ograve;ng gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo kh&aacute;c)</li>\r\n	<li><strong>Lưỡi g&agrave; liền, kh&ocirc;ng bị lệch</strong>&nbsp;(Tăng độ &ocirc;m ch&acirc;n)</li>\r\n</ul>\r\n', 1),
(61, 4, 'Nike Mercurial Superfly 8 Elite FG Dream Speed 004 | Cổ cao', 'hinhanh-1630393087n12.jpg', 200, 13, '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thế hệ mới Superfly 8)</li>\r\n	<li><strong>Phi&ecirc;n bản đặc biệt</strong>&nbsp;(Mercurial Dream Speed 004)</li>\r\n	<li><strong>Cổ thun co gi&atilde;n tốt</strong>&nbsp;(Dễ xỏ v&agrave; thoải m&aacute;i k', '<ul>\r\n	<li><strong>Thiết kế đẹp mắt</strong>&nbsp;(Thế hệ mới Superfly 8)</li>\r\n	<li><strong>Phi&ecirc;n bản đặc biệt</strong>&nbsp;(Mercurial Dream Speed 004)</li>\r\n	<li><strong>Cổ thun co gi&atilde;n tốt</strong>&nbsp;(Dễ xỏ v&agrave; thoải m&aacute;i khi mang gi&agrave;y)</li>\r\n	<li>Phi&ecirc;n bản cao cấp (<strong>Gi&agrave;y s&acirc;n cỏ tự nhi&ecirc;n</strong>)</li>\r\n</ul>\r\n', 0),
(63, 4, 'Nike Mercurial Vapor 14 Pro TF Trắng vàng vạch đen mới', 'hinhanh-1630393204n5.jpg', 100, 2, '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Phi&ecirc;n bản 2010</strong>&nbsp;(Thế hệ mới rất mềm)</li>\r\n	<li><strong>Da mỏng thật ch&acirc;n</strong>&nbsp;(&agrave;m bằng da vải phủ lớp po', '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Phi&ecirc;n bản 2010</strong>&nbsp;(Thế hệ mới rất mềm)</li>\r\n	<li><strong>Da mỏng thật ch&acirc;n</strong>&nbsp;(&agrave;m bằng da vải phủ lớp polymer mỏng b&ecirc;n ngo&agrave;i)</li>\r\n	<li><strong>Hợp cả ch&acirc;n b&egrave;</strong>&nbsp;(D&ugrave; c&oacute; cổ thun nhưng ch&acirc;n b&egrave; vẫn mang thoải m&aacute;i)</li>\r\n</ul>\r\n', 1),
(64, 4, 'Nike Mercurial Vapor 13 Academy TF Neymar vàng đỏ xanh', 'hinhanh-1630393296nn5.jpg', 120, 2, '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Gi&agrave;y đinh dăm TF</strong>&nbsp;(Đinh gi&agrave;y thiết kế mới b&aacute;m s&acirc;n cực tốt)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbs', '<ul>\r\n	<li><strong>Form gi&agrave;y thon gọn</strong>&nbsp;(Hỗ trợ di chuyển xoay xở tốt)</li>\r\n	<li><strong>Gi&agrave;y đinh dăm TF</strong>&nbsp;(Đinh gi&agrave;y thiết kế mới b&aacute;m s&acirc;n cực tốt)</li>\r\n	<li><strong>Trọng lượng nhẹ</strong>&nbsp;(So với c&aacute;c d&ograve;ng gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo kh&aacute;c)</li>\r\n	<li><strong>Lưỡi g&agrave; liền, kh&ocirc;ng bị lệch</strong>&nbsp;(Tăng độ &ocirc;m ch&acirc;n)</li>\r\n</ul>\r\n', 0),
(66, 5, 'Nike Phantom GT Academy TF trắng đen | Bản mới 2020', 'hinhanh-1630393525p1.jpg', 100, 12, '<ul>\r\n	<li><strong>Form thoải m&aacute;i</strong>&nbsp;(Nhưng vẫn &ocirc;m ch&acirc;n, chắc ch&acirc;n)</li>\r\n	<li><strong>Phi&ecirc;n bản 2020</strong>&nbsp;(Thế hệ mới Nike Phantom GT)</li>\r\n	<li><strong>Lưỡi g&agrave; lệch</strong>&nbsp;(Tăng diện t&ia', '<ul>\r\n	<li><strong>Form thoải m&aacute;i</strong>&nbsp;(Nhưng vẫn &ocirc;m ch&acirc;n, chắc ch&acirc;n)</li>\r\n	<li><strong>Phi&ecirc;n bản 2020</strong>&nbsp;(Thế hệ mới Nike Phantom GT)</li>\r\n	<li><strong>Lưỡi g&agrave; lệch</strong>&nbsp;(Tăng diện t&iacute;ch xử l&yacute; b&oacute;ng)</li>\r\n	<li><strong>Hợp cả ch&acirc;n b&egrave;</strong>&nbsp;(Ch&acirc;n b&egrave; trung b&igrave;nh vẫn mang được)</li>\r\n</ul>\r\n', 0),
(67, 5, 'Giày Nike Phantom GT Pro TF vàng đen | Đế êm, ôm chân', 'hinhanh-1630393575pt1.jpg', 120, 13, '<ul>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Kh&ocirc;ng bị lỏng ch&acirc;n, nhấc g&oacute;t)</li>\r\n	<li><strong>Đế đệm react &ecirc;m &aacute;i</strong>&nbsp;(&Ecirc;m ch&acirc;n, b&aacute;m s&acirc;n, chắc ch&acirc;n)</li>\r\n	<l', '<ul>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Kh&ocirc;ng bị lỏng ch&acirc;n, nhấc g&oacute;t)</li>\r\n	<li><strong>Đế đệm react &ecirc;m &aacute;i</strong>&nbsp;(&Ecirc;m ch&acirc;n, b&aacute;m s&acirc;n, chắc ch&acirc;n)</li>\r\n	<li><strong>Lưỡi g&agrave; vải</strong>&nbsp;(C&oacute; đai cố định, kh&ocirc;ng bị lệch)</li>\r\n	<li><strong>Hợp cả ch&acirc;n b&egrave;</strong>&nbsp;(Ch&acirc;n b&egrave; vẫn mang thoải m&aacute;i)</li>\r\n</ul>\r\n', 0),
(68, 5, 'Giày Nike Phantom GT Pro TF đen hồng | Đế đệm React', 'hinhanh-1630393628pt5.jpg', 100, 13, '<ul>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Kh&ocirc;ng bị lỏng ch&acirc;n, nhấc g&oacute;t)</li>\r\n	<li><strong>Phi&ecirc;n bản 2020</strong>&nbsp;(Thế hệ mới Nike Phantom)</li>\r\n	<li><strong>Đế đệm react &ecirc;m &aacute;i</str', '<ul>\r\n	<li><strong>Form gi&agrave;y &ocirc;m ch&acirc;n</strong>&nbsp;(Kh&ocirc;ng bị lỏng ch&acirc;n, nhấc g&oacute;t)</li>\r\n	<li><strong>Phi&ecirc;n bản 2020</strong>&nbsp;(Thế hệ mới Nike Phantom)</li>\r\n	<li><strong>Đế đệm react &ecirc;m &aacute;i</strong>&nbsp;(&Ecirc;m ch&acirc;n, b&aacute;m s&acirc;n, chắc ch&acirc;n)</li>\r\n	<li><strong>Lưỡi g&agrave; vải</strong>&nbsp;(C&oacute; đai cố định, kh&ocirc;ng bị lệch)</li>\r\n</ul>\r\n', 0),
(69, 9, 'Nike Tiempo Legend X 7 Pro Xám vàng vạch đen da mềm', 'hinhanh-1630393785tp9.jpg', 100, 12, '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(Hỗ trợ trụ vững, tr&aacute;nh lật cổ ch&acirc;n)</li>\r\n	<li><strong>Da &ecirc;m mềm</strong>&nbsp;(Thoải m&aacute;i &ndash; Ch&acirc;n b&egrave; c&oacute; thể mang được', '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(Hỗ trợ trụ vững, tr&aacute;nh lật cổ ch&acirc;n)</li>\r\n	<li><strong>Da &ecirc;m mềm</strong>&nbsp;(Thoải m&aacute;i &ndash; Ch&acirc;n b&egrave; c&oacute; thể mang được)</li>\r\n	<li><strong>Đế giảm chấn &ecirc;m &aacute;i</strong>&nbsp;(Mang lại sự chắc ch&acirc;n, thoải m&aacute;i)</li>\r\n	<li><strong>Độ bền cao&nbsp;</strong>(Chất da cao cấp bền đẹp)</li>\r\n	<li><strong>Đai cố định lưỡi g&agrave;</strong>&nbsp;(Tr&aacute;nh bị lệch lưỡi g&agrave;, tăng độ &ocirc;m ch&acirc;n)</li>\r\n</ul>\r\n', 1),
(70, 9, 'Nike Tiempo Legend 8 Pro TF xám đỏ vạch đen | Bản SF', 'hinhanh-1630393861tp1.jpg', 100, 12, '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(&Ecirc;m ch&acirc;n với đệm xốp)</li>\r\n	<li><strong>Da gi&agrave;y v&acirc;n nổi 3D</strong>&nbsp;(Hỗ trợ kiểm so&aacute;t b&oacute;ng tốt hơn)</li>\r\n	<li><strong>Da &e', '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(&Ecirc;m ch&acirc;n với đệm xốp)</li>\r\n	<li><strong>Da gi&agrave;y v&acirc;n nổi 3D</strong>&nbsp;(Hỗ trợ kiểm so&aacute;t b&oacute;ng tốt hơn)</li>\r\n	<li><strong>Da &ecirc;m mềm</strong>&nbsp;(Thoải m&aacute;i &ndash; Ch&acirc;n b&egrave; c&oacute; thể mang được)</li>\r\n	<li><strong>Thiết kế gọn g&agrave;ng</strong>&nbsp;(Dễ di chuyển, s&uacute;t b&oacute;ng)</li>\r\n</ul>\r\n', 1),
(71, 9, 'Nike Tiempo Legend X 8 Pro TF trắng | Da mềm, êm chân', 'hinhanh-1630393910tp5.jpg', 100, 10, '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(&Ecirc;m ch&acirc;n với đệm xốp)</li>\r\n	<li><strong>Da gi&agrave;y v&acirc;n nổi 3D</strong>&nbsp;(Hỗ trợ kiểm so&aacute;t b&oacute;ng tốt hơn)</li>\r\n	<li><strong>Da &e', '<ul>\r\n	<li><strong>Đế gi&agrave;y b&aacute;m s&acirc;n, chắc ch&acirc;n&nbsp;</strong>(&Ecirc;m ch&acirc;n với đệm xốp)</li>\r\n	<li><strong>Da gi&agrave;y v&acirc;n nổi 3D</strong>&nbsp;(Hỗ trợ kiểm so&aacute;t b&oacute;ng tốt hơn)</li>\r\n	<li><strong>Da &ecirc;m mềm</strong>&nbsp;(Thoải m&aacute;i &ndash; Ch&acirc;n b&egrave; c&oacute; thể mang được)</li>\r\n	<li><strong>Thiết kế gọn g&agrave;ng</strong>&nbsp;(Dễ di chuyển, s&uacute;t b&oacute;ng)</li>\r\n	<li><strong>Độ bền cao&nbsp;</strong>(Chất da cao cấp bền đẹp)</li>\r\n</ul>\r\n', 0),
(72, 18, 'Giày đá bóng Mizuno Neo 3 FG trắng vạch đen | Da mềm', 'hinhanh-16303954233.m.jpg', 100, 12, '<ul>\r\n	<li><strong>Thiết kế cổ điển</strong>&nbsp;(Dễ xỏ, d&acirc;y buộc chắc ch&acirc;n)</li>\r\n	<li><strong>Form gi&agrave;y thoải m&aacute;i</strong>&nbsp;(Da rất &ecirc;m mềm hợp cả ch&acirc;n b&egrave;)</li>\r\n	<li><strong>Đế đinh FG</strong>&nbsp;(Hỗ ', '<ul>\r\n	<li><strong>Thiết kế cổ điển</strong>&nbsp;(Dễ xỏ, d&acirc;y buộc chắc ch&acirc;n)</li>\r\n	<li><strong>Form gi&agrave;y thoải m&aacute;i</strong>&nbsp;(Da rất &ecirc;m mềm hợp cả ch&acirc;n b&egrave;)</li>\r\n	<li><strong>Đế đinh FG</strong>&nbsp;(Hỗ trợ chơi b&oacute;ng tr&ecirc;n s&acirc;n cỏ tự nhi&ecirc;n)</li>\r\n	<li><strong>Chất lượng cao</strong>&nbsp;(Chất da bền đẹp)</li>\r\n</ul>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_cmt`
--

CREATE TABLE `product_cmt` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_cmt`
--

INSERT INTO `product_cmt` (`id`, `id_customer`, `id_sp`, `content`, `date`) VALUES
(1, 1, 20, 'Hàng Đẹp Sốp ơi', '2021-08-25 13:03:13'),
(2, 1, 21, 'Dep', '2021-08-25 13:10:01'),
(3, 1, 21, 'dc', '2021-08-25 13:11:11'),
(4, 1, 21, 'hang chat luong', '2021-08-25 13:11:21'),
(5, 1, 20, 'Oke', '2021-08-25 13:15:12'),
(9, 1, 26, 'Nice Shoes ', '2021-08-30 02:07:38'),
(10, 1, 32, 'Víp Số Pro', '2021-08-30 02:08:06'),
(11, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(12, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(13, 1, 69, 'oke', '2021-09-02 02:28:18'),
(14, 1, 70, 'đc', '2021-09-02 02:28:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cmt`
--
ALTER TABLE `product_cmt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_cmt`
--
ALTER TABLE `product_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
