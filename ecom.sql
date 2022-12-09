-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 08:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Chân váy ', 'chanvay', 2, 3, '0', '2019-05-22 16:15:39', '4', '2019-05-22 22:37:23', '1', 1, 1),
(2, 'Váy hai dây', 'vayhaiday', 2, 3, '0', '2019-05-22 16:13:24', '4', '2019-05-22 22:37:28', '1', 1, 1),
(3, 'Váy', 'vay', 1, 0, '0', '2019-05-22 16:09:41', '4', '2019-05-22 16:09:41', '4', 1, 1),
(4, 'Quần áo', 'quanao', 1, 0, '1', '2019-05-23 21:33:25', '1', '2019-05-23 21:33:25', '1', 1, 1),
(5, 'Áo len', 'aolen', 2, 4, '0', '2019-05-23 21:33:41', '1', '2019-05-23 21:33:41', '1', 1, 1),
(6, 'Quần short', 'quanshort ', 2, 4, '1', '2019-06-03 21:38:28', '1', '2019-06-03 21:38:28', '1', 1, 1),
(7, 'Váy BabyDoll', 'vaybabydoll', 2, 3, '1', '2019-06-27 21:39:01', '1', '2019-06-03 21:39:01', '1', 1, 1),
(8, 'Váy body', 'vaybody', 2, 3, '2', '2019-06-03 21:39:48', '1', '2019-06-11 23:41:32', '4', 1, 1),
(9, 'Áo phông', 'aophong', 2, 4, '0', '2019-06-03 21:40:38', '1', '2019-06-11 23:40:35', '4', 1, 1),
(10, 'Phụ kiện', 'phukien', 1, 0, '2', '2019-06-03 22:19:53', '1', '2019-06-03 22:19:53', '1', 1, 1),
(11, 'Quần Âu', 'quanau', 2, 4, '1', '2019-06-03 22:37:59', '1', '2019-06-11 23:31:02', '4', 1, 1),
(14, 'váy test', 'vay-test', 2, 3, '1', '2022-12-04 17:19:57', '67', '2022-12-04 17:19:57', '67', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mail_smtp_password` varchar(100) NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'daothithuy.27092001@gmail.com', '123aA@', 'daothithuy.27092001@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'Phản hồi đồ mua', '0123456789', 'tangha0123@gmail.com', 'Hàng chất lượng', '2022/12/4', 1, 1, 'Haha'),
(12, 'Phản hồi về đơn hàng', '0123456789', 'tangha0123@gmail.com', 'Đơn hàng phù hợp', '2022/12/4', 1, 1, 'Hảo'),
(13, 'Hỏi giá ship', '0971549770', 'daothithuy.27092001@gmail.com', 'Shop ơi ship đến Thường Tín Hà Nội hết bn thế ạ', '2022/12/4', 1, 1, 'thuy');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Hàng quần áo Hàn Quốc đang tăng giá', 'hang-quan-ao-han-quoc-dang-tang-gia', 'Điều này cho thấy đồ Hàn Quốc đang rất thịnh hành.', '', 'anh1.jpg', '2019-05-26 23:18:02', '1', '2019-06-23 18:03:27', '1', 1, 1),
(5, 'Tin tức đồ nội địa Trung Quốc đang thịnh hành ở giới trẻ Việt Nam.', 'tin-tuc-do-noi-dia-trung-quoc-dang-thinh-hanh-o-gioi-tre-viet-nam', 'Điều đó cho thấy phong cách Trung Quốc đang rất rộng mở.', '', 'anh1.jpg', '2019-06-10 00:27:23', '1', '2019-06-12 22:53:05', '1', 1, 1),
(6, 'Tin tức đồ nội địa Trung Quốc đang thịnh hành ở giới trẻ Việt Nam.', 'tin-tuc-do-noi-dia-trung-quoc-dang-thinh-hanh-o-gioi-tre-viet-nam', 'Điều đó cho thấy phong cách Trung Quốc đang rất rộng mở.', '', 'anh1.jpg', '2019-06-26 17:22:04', '1', '2019-06-26 17:22:04', '1', 1, 1),
(7, 'Liệu thời trang có đang được phá cách ?', 'lieu-thoi-trang-co-dang-duoc-pha-cach', '', '', 'anh21.jpg', '2022-12-04 15:10:31', '67', '2022-12-04 15:10:31', '67', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Hiệp gà', 'hiep1998', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', 'vanhiepp1998@gmail.com', '2019-05-24 22:10:08', 1, 1),
(9, 'Nguyễn Đức Lương', 'luong1998', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'luong@gmail.com', '2019-06-11 17:15:12', 1, 1),
(39, 'Bảo bự', '', '', '', '052244141', 'baobu@gmail.com', '2019-06-16 23:19:45', 0, 1),
(46, 'Dương Minh Trí', '', '', '', '0908030405', '', '2019-06-22 23:11:42', 0, 1),
(47, 'Trần Thanh Tuy', '', '', '', '090305146', '', '2019-06-22 23:16:45', 0, 1),
(48, 'Xuân Thịnh', '', '', '', '090640316', '', '2019-06-25 22:52:27', 0, 1),
(49, 'Minh Sang', '', '', '', '0913164136', '', '2019-06-25 22:58:22', 0, 1),
(50, 'Hoàng Dũng', '', '', '', '096323646', '', '2019-06-25 23:09:57', 0, 1),
(51, 'Nguyễn Văn Trường', '', '', '', '0357646765', '', '2019-06-26 13:17:30', 0, 1),
(52, 'Hiệp Ngô', '', '', '', '076613166', '', '2019-06-26 16:26:19', 0, 1),
(53, 'Thanh Sơn', '', '', '', '0903121564', '', '2019-06-28 15:57:50', 0, 1),
(54, 'Thành', '', '', '', '033564616', '', '2019-06-28 22:17:44', 0, 1),
(55, 'Lương 21', '', '', '', '03056451', '', '2019-06-29 15:02:46', 1, 1),
(56, 'Tuấn Anh', '', '', '', '0305464844', '', '2019-06-29 15:09:06', 0, 1),
(57, 'Tiến Đạt', '', '', '', '032133234', '', '2019-07-05 23:01:51', 0, 1),
(66, 'Hiệp 2019', 'hiep2019', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'vanhiepp19988@gmail.com', '2019-07-06 00:00:00', 0, 1),
(67, 'thúy đào', 'DAOTHITHUY', '25d55ad283aa400af464c76d713c07ad', '', '0971549770', 'daothithuy.27092001@gmail.com', '2022-12-03 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2022-09-15', 500000, 'Giam 100000', '2022-06-01', 1, 1, 1),
(2, 'DAOTHUY', 200000, 20, 3, '2022-06-15', 500000, 'Giam 200k', '2022-06-01', 1, 1, 1),
(3, 'TUYETCHINH', 200000, 300, 103, '2022-07-01', 300000, 'giảm 200k', '2022-07-01', 1, 1, 1),
(4, 'TANGHAO', 150000, 68, 23, '2022-06-01', 500000, 'giảm 300k', '2022-06-01', 1, 1, 1),
(13, 'PHAMLOAN', 210000, 200, 0, '2022-07-01', 100000, 'Giảm 150k', '2022-07-01', 1, 1, 1),
(18, 'SVHF7GKU6QC8', 100000, 1, 0, '2023-01-03', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-12-03', 0, 1, 1),
(19, 'NHOM3', 900000, 3, 0, '2022-12-04', 1, '', '2022-12-04', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(76, 'ClHkjUiX', 67, '2022-12-04 03:30:41', 'thúy đào', '0971549770', 28130000, 30000, 0, 1, 277, 'thường tín', 1, 2),
(77, 'CueTA6Q0', 67, '2022-12-04 17:58:18', 'thúy đào', '0971549770', 52420000, 30000, 0, 1, 250, 'Nguyên Xá, Minh Khai', 1, 4),
(78, 'ElDyARfO', 67, '2022-12-04 18:02:53', 'thúy đào', '0971549770', 57830000, 30000, 0, 1, 21, 'Nguyên Xá', 0, 2),
(79, 'aviVG92B', 67, '2022-12-04 21:21:58', 'thúy đào', '0971549770', 29930000, 30000, 0, 1, 279, 'Nam Từ Niêm', 1, 1),
(80, 'wtV198Uo', 67, '2022-12-05 15:42:26', 'thúy đào', '0971549770', 12730000, 30000, 0, 48, 495, 'cẩm khê', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(101, 76, 28, 1, 15400000, 1, 1),
(102, 76, 27, 1, 12700000, 1, 1),
(103, 77, 18, 1, 22490000, 1, 1),
(104, 77, 16, 1, 29900000, 1, 1),
(105, 78, 8, 2, 28900000, 1, 1),
(106, 79, 16, 1, 29900000, 1, 1),
(109, 78, 29, 1, 16000000, 1, 1),
(110, 80, 27, 1, 12700000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'YODY', 'DIGIWORLD', 'vay,quanao', '2019-05-22 16:08:31', 4, '2019-05-22 16:08:31', 4, 1, 1),
(2, 'Nhà cung cấp Dior', 'GOVAPPRODUCER', 'phukien,vay,quanao', '2019-06-12 23:30:37', 1, '2019-07-05 10:52:13', 1, 1, 1),
(3, 'CHANNEL', 'TGDDCODE', 'phukien', '2019-05-22 16:06:31', 4, '2019-06-12 23:40:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sortDesc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 2, 'Váy hai dây hoa nhí', 'vay-hai-day-hoa-nhi', 'anh1.jpg', 'anh1.jpg', 'Váy hai dây hoa nhí Hàn Quốc siêu xinh nè. Mang phong cách nhẹ nhàng mà vẫn cuốn hút cho các cô nàng.', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/anh1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/anh1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 1, 320, 60, 10, 300000, 270000, '2019-05-22 16:22:43', '4', '2022-12-05 13:24:37', '1', 1, 1),
(2, 7, 'Váy BabyDoll đáng yêu', 'vay-babydoll-dang-yeu', 'babydoll1.jpg', 'babydoll1.jpg#babydoll1.jpg', 'Váy BabyDoll dáng rộng siêu xinh cho các nàng', '<h3><strong>Mẫu baby doll đơn giản</strong></h3>\r\n<p>Nếu là một cô nàng chuộng sự giản đơn, tiện dụng cũng như không muốn mất nhiều thời gian cho việc lựa chọn trang phục, nàng hãy thử chọn một chiếc babydoll trơn màu, đơn giản trong những ngày không biết mặc gì. Một váy babydoll trắng là item phù hợp theo nàng dạo phố, đến những buổi cà phê cùng bạn bè.<p>\r\n<p><img src=\"public/images/products/babydoll1.jpg\" style=\"height:525px; width:840px\" /></p>', 1, 40, 26, 20, 21000000, 20000000, '2019-05-26 23:28:34', '1', '2022-12-05 13:02:45', '1', 1, 1),
(4, 2, 'Váy hai dây vitange', 'vay-hai-day-vintage', 'haiday8.png', 'haiday8.png#haiday8.png', 'Váy hai dây phong cách vintage ', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/haiday8.png\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/haiday8.png\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 400, 44, 10, 4990000, 4250000, '2019-06-03 21:45:31', '1', '2019-06-27 17:12:15', '1', 1, 1),
(5, 2, 'Váy hai dây Rose mặc', 'vay-hai-day-rose-mac', 'haiday2.jpg', 'haiday2.jpg#haiday2.jpg', 'Váy Rose mặc siêu xinh, mặc vào biến thành ngay Idol.', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/haiday2.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/haiday2.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 368, 11, 10, 6990000, 6390000, '2019-06-03 21:49:23', '1', '2019-06-27 17:04:43', '1', 1, 1),
(6, 8, 'Váy body ôm trọn cơ thể', 'vay-body-om-tron-co-the', 'vaybody4.jpg', 'vaybody4.jpg#vaybody4.jpg', 'Váy body ôm trọn cơ thể đồng hồ cát.', '<h3><strong>Đầm ôm body có điểm nhấn</strong></h3>\r\n<p>Một chiếc váy body đẹp ôm trơn màu, tối giản về thiết kế sẽ trông rất quyến rũ. Tuy nhiên khi diện item này cần phải cẩn thận vì nàng sẽ rất dễ bị lộ những nhược điểm không mong muốn trên cơ thể. <p>\r\n<p><img src=\"public/images/products/vaybody4.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 1, 420, 10, 10, 4990000, 4550000, '2019-06-03 21:54:51', '1', '2019-06-27 16:59:20', '1', 1, 1),
(7, 1, 'Chân váy xếp li', 'chan-vay-xep-li', 'chanvay1.jpg', 'chanvay1.jpg#chanvay1.jpg', 'Chân váy có độ xòe tốt, mặc siêu hách dáng.', '<h3><strong>Váy mang lại sự trẻ trung</strong></h3>\r\n<p>Thiết kế của chân váy xòe cũng ôm gọn phần eo và xòe rộng xuống dưới. Chân váy xòe nhiều dáng khác nhau như ngắn trên đầu gối, ngang đầu gối hoặc dài quá đầu gối. Chân váy xòe có đặc điểm che đi khuyết điểm của người mặc, các cô nàng có vòng 3 khiêm tốn hoặc vòng 2 mũm mịm sẽ không còn lo lắng khi diện loại chân váy này.<p>\r\n<p><img src=\"public/images/products/chanvay1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 2, 190, 20, 0, 21900000, 21900000, '2019-06-03 22:04:43', '1', '2019-06-27 16:57:33', '1', 1, 1),
(8, 1, 'Chân váy chữ A màu đen', 'chan-vay-chu-a-mau-den', 'chanvay2.jpg', 'chanvay2.jpg#chanvay2.jpg', 'Chân váy siêu tôn dáng dù bạn 1m50.', '<h3><strong>Váy mang lại sự trẻ trung</strong></h3>\r\n<p>Thiết kế của chân váy xòe cũng ôm gọn phần eo và xòe rộng xuống dưới. Chân váy xòe nhiều dáng khác nhau như ngắn trên đầu gối, ngang đầu gối hoặc dài quá đầu gối. Chân váy xòe có đặc điểm che đi khuyết điểm của người mặc, các cô nàng có vòng 3 khiêm tốn hoặc vòng 2 mũm mịm sẽ không còn lo lắng khi diện loại chân váy này.<p>\r\n<p><img src=\"public/images/products/chanvay2.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 2, 160, 32, 0, 28900000, 28900000, '2019-06-03 22:08:30', '1', '2019-06-27 16:55:46', '1', 1, 1),
(9, 7, 'Váy BabyDoll hoa cúc ', 'vay-babydoll-hoa-cuc', 'babydoll2.jpg', 'babydoll2.jpg#babydoll2.jpg', 'Váy BabyDoll hoa cúc bầu 5 tháng vẫn bon chen tốt.', '<h3><strong>Mẫu baby doll đơn giản</strong></h3>\r\n<p>Nếu là một cô nàng chuộng sự giản đơn, tiện dụng cũng như không muốn mất nhiều thời gian cho việc lựa chọn trang phục, nàng hãy thử chọn một chiếc babydoll trơn màu, đơn giản trong những ngày không biết mặc gì. Một váy babydoll trắng là item phù hợp theo nàng dạo phố, đến những buổi cà phê cùng bạn bè.<p>\r\n<p><img src=\"public/images/products/babydoll2.jpg\" style=\"height:525px; width:840px\" /></p>', 2, 220, 30, 10, 16990000, 15990000, '2019-06-03 22:14:17', '1', '2019-06-27 17:14:06', '1', 1, 1),
(10, 7, 'Váy BaByDoll hoa hướng dương', 'vay-babydoll-hoa-huong-duong', 'babydoll3.jpg', 'babydoll3.jpg#babydoll3.jpg', 'Váy BabyDoll phù hợp các bạn chụp kỉ yếu. ', '<h3><strong>Mẫu baby doll đơn giản</strong></h3>\r\n<p>Nếu là một cô nàng chuộng sự giản đơn, tiện dụng cũng như không muốn mất nhiều thời gian cho việc lựa chọn trang phục, nàng hãy thử chọn một chiếc babydoll trơn màu, đơn giản trong những ngày không biết mặc gì. Một váy babydoll trắng là item phù hợp theo nàng dạo phố, đến những buổi cà phê cùng bạn bè.<p>\r\n<p><img src=\"public/images/products/babydoll3.jpg\" style=\"height:525px; width:840px\" /></p>', 2, 310, 41, 0, 16900000, 16900000, '2019-06-03 22:18:49', '1', '2019-06-27 17:15:05', '1', 1, 1),
(11, 10, 'Khuyên tai ngọc trai', 'khuyen-tai-ngoc-trai', 'anh9.jpg', 'anh9.jpg#anh9.jpg', 'Khuyên tai ngọc trai mò ở Biển Đông.', '<h3><strong>Khuyên tai ngọc trai nước ngọt tự nhiên 100% 2510 </strong></h3>\r\n<p>\r\n<br>Chất liệu : Ngọc trai nước ngọt tự nhiên nuôi cấy và chốt bạc 925 tinh khiết</br>\r\nMàu sắc : trắng - trắng ngà ( đơn phát sinh là ngẫu nhiên, nhưng màu sẽ nghiên trắng nhiều hơn)</br>\r\nkích thước hạt bông ; 8-9 ly</br>\r\nThiết kế khuyên tai ngọc trai đơn giản dễ dàng thích hợp đeo hằng ngày hay kết hợp với chuỗi ngọc trai, vòng cổ đơn giản\r\nphù hợp với mọi lứa tuổi</br>\r\n<p><img src=\"public/images/products/anh9.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 605, 27, 0, 340000, 340000, '2019-06-03 22:21:22', '1', '2019-06-03 22:21:22', '1', 1, 1),
(12, 8, 'Váy body khoét lưng', 'vay-body-khoet-lung', 'vaybody5.jpg', 'vaybody5.jpg#vaybody5.jpg', 'Váy siêu sexy tôn dáng.', '<h3><strong>Đầm ôm body có điểm nhấn</strong></h3>\r\n<p>Một chiếc váy body đẹp ôm trơn màu, tối giản về thiết kế sẽ trông rất quyến rũ. Tuy nhiên khi diện item này cần phải cẩn thận vì nàng sẽ rất dễ bị lộ những nhược điểm không mong muốn trên cơ thể. <p>\r\n<p><img src=\"public/images/products/vaybody5.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 1, 220, 4, 0, 8490000, 8490000, '2019-06-03 22:27:35', '1', '2019-06-27 16:42:14', '1', 1, 1),
(13, 8, 'Váy body Rose', 'vay-body-rose', 'vaybody1.png', 'vaybody1.png#vaybody1.png', 'Váy siêu xinh', '<h3><strong>Đầm ôm body có điểm nhấn</strong></h3>\r\n<p>Một chiếc váy body đẹp ôm trơn màu, tối giản về thiết kế sẽ trông rất quyến rũ. Tuy nhiên khi diện item này cần phải cẩn thận vì nàng sẽ rất dễ bị lộ những nhược điểm không mong muốn trên cơ thể. <p>\r\n<p><img src=\"public/images/products/vaybody1.png\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 2, 260, 16, 0, 11990000, 11990000, '2019-06-03 22:30:05', '1', '2019-06-27 16:40:11', '1', 1, 1),
(14, 10, 'Dây buộc tóc', 'day-buoc-toc', 'PK9.jpg', 'Pk9.jpg#PK9.jpg', 'Dây buộc tóc 5 cánh sắc màu, co giãn tốt.', '<h3><strong>Khuyên tai ngọc trai nước ngọt tự nhiên 100% 2510 </strong></h3>\r\n<p>\r\n<br>Chất liệu : Ngọc trai nước ngọt tự nhiên nuôi cấy và chốt bạc 925 tinh khiết</br>\r\nMàu sắc : trắng - trắng ngà ( đơn phát sinh là ngẫu nhiên, nhưng màu sẽ nghiên trắng nhiều hơn)</br>\r\nkích thước hạt bông ; 8-9 ly</br>\r\nThiết kế khuyên tai ngọc trai đơn giản dễ dàng thích hợp đeo hằng ngày hay kết hợp với chuỗi ngọc trai, vòng cổ đơn giản\r\nphù hợp với mọi lứa tuổi</br>\r\n<p><img src=\"public/images/products/PK9.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 1, 731, 110, 0, 790000, 790000, '2019-06-03 22:33:51', '1', '2019-06-23 17:54:59', '1', 1, 1),
(15, 6, 'Quần short thể thao', 'quan-short-the-thao', 'qshort5.jpg', 'qshort5.jpg#qshort5.jpg', 'Mặc hở chân chơi thể thao.', '<h3><strong>Chất liệu</strong></h3>\r\n<p>Tại ONOFF chất liệu sản phẩm luôn được đặt lên hàng đầu, chúng tôi luôn nghiên cứu, phát triển và thử nghiệm những chất liệu trước khi đưa ra thị trường. Với tiêu chí mang đến cho người dùng sự thoải mái nhất.</p>\r\n<p><img src=\"public/images/products/qshort5.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Kiểu dáng</strong></h3>\r\n<p>ONOFF luôn hướng đến những kiểu dáng, mẫu mã basic, dễ dàng kết hợp với trang phục khác.<p>\r\n<p><img src=\"public/images/products/qshort5.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Cảm giác mềm mại</strong></h3>\r\n<p>Quần Short tại ONOFF sử dụng chất liệu French Terry, hoặc Cotton đem lại cho bạn cảm giác mềm mại, ôm nhẹ. Giúp người mặc tận hưởng cảm giác thoải mái khi sử dụng.\r\nQua những thông tin trên, hi vọng các bạn đã có thêm những kiến thức về quần short. Hãy đến ONOFF để sở hữu ngay cho mình những chiếc quần short với kiểu dáng và chất liệu thật thoải mái nhất nhé.<p>', 2, 120, 6, 0, 11490000, 11490000, '2019-06-03 22:36:43', '1', '2019-06-23 17:54:37', '1', 1, 1),
(16, 11, 'Quần âu công sở', 'quan-au-cong-so', 'quanau1.jpg', 'quanau.jpg#quanau1.jpg', 'Quần hợp với cô nàng công sở.', '<h3><strong>Chất liệu</strong></h3>\r\n<p>Ngoài quần tây vải thun 100% cotton thì còn có quần tây vải thun CVC và vải thun TC. Hai loại vải này đều được pha trộn giữa cotton và polyeste, nhưng tỷ lệ khác nhau. Việc pha trộn các thành phần với nhau nhằm mục đích khắc phục nhược điểm của vải thun cotton như khô, cứng, xù lông. Vì vậy các loại vải thun pha thường có nhiều ưu điểm như mềm mại, thấm hút, sáng bóng và không bị nhăn. Bên cạnh đó thì giá thành cũng thấp hơn so với vải thun cotton nên quần tây vải thun pha cũng được nhiều người ưa chuộng. Riêng vải thun TC do tỷ lệ PE nhiều hơn nên hơi nóng và ít thấm hút hơn. Do đó loại vải này dùng để may quần tây thun nam vào mùa đông là phù hợp.</p>\r\n<p><img src=\"public/images/products/quanau1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 61, 4, 0, 29900000, 29900000, '2019-06-03 22:40:49', '1', '2019-06-23 17:54:42', '1', 1, 1),
(17, 11, 'Quần âu giả trai', 'quan-au-gia-trai', 'quanau2.jpg', 'quanau2.jpg#quanau2.jpg', 'Giả trai siêu xinh', '<h3><strong>Chất liệu</strong></h3>\r\n<p>Ngoài quần tây vải thun 100% cotton thì còn có quần tây vải thun CVC và vải thun TC. Hai loại vải này đều được pha trộn giữa cotton và polyeste, nhưng tỷ lệ khác nhau. Việc pha trộn các thành phần với nhau nhằm mục đích khắc phục nhược điểm của vải thun cotton như khô, cứng, xù lông. Vì vậy các loại vải thun pha thường có nhiều ưu điểm như mềm mại, thấm hút, sáng bóng và không bị nhăn. Bên cạnh đó thì giá thành cũng thấp hơn so với vải thun cotton nên quần tây vải thun pha cũng được nhiều người ưa chuộng. Riêng vải thun TC do tỷ lệ PE nhiều hơn nên hơi nóng và ít thấm hút hơn. Do đó loại vải này dùng để may quần tây thun nam vào mùa đông là phù hợp.</p>\r\n<p><img src=\"public/images/products/quanau2.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 90, 8, 0, 39100000, 39100000, '2019-06-04 23:24:20', '1', '2019-06-23 17:54:33', '1', 1, 1),
(18, 6, 'Quần short jean', 'quan-short-jean', 'qshort1.jpg', 'qshort1.jpg#q.short1.jpg', 'Quần jean 1970.', '<h3><strong>Chất liệu</strong></h3>\r\n<p>Tại ONOFF chất liệu sản phẩm luôn được đặt lên hàng đầu, chúng tôi luôn nghiên cứu, phát triển và thử nghiệm những chất liệu trước khi đưa ra thị trường. Với tiêu chí mang đến cho người dùng sự thoải mái nhất.</p>\r\n<p><img src=\"public/images/products/qshort1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Kiểu dáng</strong></h3>\r\n<p>ONOFF luôn hướng đến những kiểu dáng, mẫu mã basic, dễ dàng kết hợp với trang phục khác.<p>\r\n<p><img src=\"public/images/products/qshort1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Cảm giác mềm mại</strong></h3>\r\n<p>Quần Short tại ONOFF sử dụng chất liệu French Terry, hoặc Cotton đem lại cho bạn cảm giác mềm mại, ôm nhẹ. Giúp người mặc tận hưởng cảm giác thoải mái khi sử dụng.\r\nQua những thông tin trên, hi vọng các bạn đã có thêm những kiến thức về quần short. Hãy đến ONOFF để sở hữu ngay cho mình những chiếc quần short với kiểu dáng và chất liệu thật thoải mái nhất nhé.<p>', 2, 180, 13, 10, 22990000, 22490000, '2019-06-04 23:28:14', '1', '2019-06-23 17:54:25', '1', 1, 1),
(19, 9, 'Áo phông màu trắng', 'ao-phong-mau-trang', 'anh10.jpg', 'anh10.jpg#anh10.jpg', 'Siêu xinh basic.', '<h3><strong>Chất liệu</strong></h3>\r\n<p>được làm từ sợi bông thiên nhiên. Đây là chất liệu phổ biến nhất được chọn làm áo thun bởi vì áo thun được làm từ loại vải này có khả năng co giãn rất tốt, thấm hút mồ hôi nhanh, mặc rất mát nên mang đến cảm giác thoải mái và rất dễ chịu. Vải cotton được sử dụng nhiều trên áo thun cao cấp, có giá trị sử dụng lớn, phù hợp là sản phẩm biếu tặng.</p>\r\n<p><img src=\"public/images/products/anh10.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Áo phông cổ tròn</strong></h3>\r\n<p>Đây là dáng áo phông phổ biến nhất vì nó đem lại cho người dùng sự thoải mái, linh hoạt trong việc phối đồ, đem lại phong cách trẻ trung và năng động cho người mặc. Áo phông cổ tròn hay áo phông cổ thuyền là một trong những item bán chạy nhất của hãng thời trang ONOFF nhờ các đặc tính thoải mái, thấm hút mồ hôi tốt,..</p>\r\n<p><img src=\"public/images/products/anh10.jpg\" style=\"height:525px; width:840px\" /></p>', 2, 140, 22, 10, 13890000, 11890000, '2019-06-04 23:30:36', '1', '2019-06-23 17:54:19', '1', 1, 1),
(20, 5, 'Áo len thừng', 'ao-len-thung', 'anh11.jpg', 'anh11.jpg', 'Áo len siêu ấm.', '<h3><strong>Số liệu</strong></h3>\r\n<p>\r\nChất liệu: len sợi\r\nMàu sắc: be, đen\r\nSố liệu: SP chỉ phù hợp cho bạn dưới 50kg.\r\nChiều dài áo: 58 cm Tay áo: 51 cm\r\n<h3><strong>Chất liệu </strong></h3>\r\nLen sợi mỏng dệt móc thích hợp mặc cho mua thu đông trong năm với form áo rộng rãi thoải mái, chất liệu dày ấm\r\nLen ít dão nên các bạn có thể giặt máy, tuy nhiên nên vắt kiệt nước trước khi phơi.\r\n<p><img src=\"public/images/products/anh11.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 1, 300, 26, 10, 18790000, 16790000, '2019-06-04 23:33:43', '1', '2019-06-04 23:33:43', '1', 1, 1),
(21, 1, 'Chân váy đuôi tôm', 'chan-vay-duoi-tom', 'chanvay3.jpg', 'chanvay3.jpg#chanvay3.jpg', 'Mặc biến thành cá.', '<h3><strong>Váy mang lại sự trẻ trung</strong></h3>\r\n<p>Thiết kế của chân váy xòe cũng ôm gọn phần eo và xòe rộng xuống dưới. Chân váy xòe nhiều dáng khác nhau như ngắn trên đầu gối, ngang đầu gối hoặc dài quá đầu gối. Chân váy xòe có đặc điểm che đi khuyết điểm của người mặc, các cô nàng có vòng 3 khiêm tốn hoặc vòng 2 mũm mịm sẽ không còn lo lắng khi diện loại chân váy này.<p>\r\n<p><img src=\"public/images/products/chanvay3.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 2, 240, 17, 12, 19500000, 18200000, '2019-06-10 00:03:02', '1', '2019-06-10 00:03:02', '67', 1, 1),
(22, 10, 'Kẹp tóc', 'kep-toc', 'PK10.jpg', 'PK10.jpg#PK10.jpg', 'Kẹp tóc siêu chắc.', '<h3><strong>Khuyên tai ngọc trai nước ngọt tự nhiên 100% 2510 </strong></h3>\r\n<p>\r\n<br>Chất liệu : Ngọc trai nước ngọt tự nhiên nuôi cấy và chốt bạc 925 tinh khiết</br>\r\nMàu sắc : trắng - trắng ngà ( đơn phát sinh là ngẫu nhiên, nhưng màu sẽ nghiên trắng nhiều hơn)</br>\r\nkích thước hạt bông ; 8-9 ly</br>\r\nThiết kế khuyên tai ngọc trai đơn giản dễ dàng thích hợp đeo hằng ngày hay kết hợp với chuỗi ngọc trai, vòng cổ đơn giản\r\nphù hợp với mọi lứa tuổi</br>\r\n<p><img src=\"public/images/products/PK10.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 3, 720, 161, 0, 250000, 250000, '2019-06-10 00:04:42', '1', '2022-12-04 13:43:38', '67', 1, 1),
(23, 1, 'Chân váy đuôi mực.', 'chan-vay-duoi-muc', 'chanvay4.png', 'chanvay4.png#chanvay4.png', 'Mai biến thành mực luôn.', '<h3><strong>Váy mang lại sự trẻ trung</strong></h3>\r\n<p>Thiết kế của chân váy xòe cũng ôm gọn phần eo và xòe rộng xuống dưới. Chân váy xòe nhiều dáng khác nhau như ngắn trên đầu gối, ngang đầu gối hoặc dài quá đầu gối. Chân váy xòe có đặc điểm che đi khuyết điểm của người mặc, các cô nàng có vòng 3 khiêm tốn hoặc vòng 2 mũm mịm sẽ không còn lo lắng khi diện loại chân váy này.<p>\r\n<p><img src=\"public/images/products/chanvay4.png\" style=\"height:525px; width:840px\" /></p>\r\n<p>Vì vậy những chiếc đầm này cần có phần chi tiết làm điểm nhấn để góp phần khiến mẫu váy thêm đặc sắc, nổi bật và phong cách. Ngoài ra còn giúp phái đẹp thành công che đi những khuyết điểm như vòng eo hơi to,... <p>\r\n\r\n', 1, 470, 32, 15, 22500000, 19500000, '2019-06-10 00:07:42', '1', '2019-06-23 17:53:49', '1', 1, 1),
(24, 5, 'Áo len mịn', 'ao-len-min', 'aolen2.jpg', 'aolen2.jpg', 'Mặc không cần người yêu.', '<h3><strong>Số liệu</strong></h3>\r\n<p>\r\nChất liệu: len sợi\r\nMàu sắc: be, đen\r\nSố liệu: SP chỉ phù hợp cho bạn dưới 50kg.\r\nChiều dài áo: 58 cm Tay áo: 51 cm\r\n<h3><strong>Chất liệu </strong></h3>\r\nLen sợi mỏng dệt móc thích hợp mặc cho mua thu đông trong năm với form áo rộng rãi thoải mái, chất liệu dày ấm\r\nLen ít dão nên các bạn có thể giặt máy, tuy nhiên nên vắt kiệt nước trước khi phơi.\r\n<p><img src=\"public/images/products/aolen2.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 250, 3, 0, 14900000, 14900000, '2019-06-10 00:10:34', '1', '2019-06-23 17:53:43', '67', 1, 1),
(25, 2, 'Váy hai dây Lisa', 'vay-hai-day-lisa', 'haiday9.jpg', 'haiday9.jpg#haiday9.jpg', 'Nếu bạn muốn trở thành một Idol giống như Lisa hãy mua chiếc áo này nha siêu đẹp mà hách dáng nữa.', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/haiday9.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/haiday9.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 367, 5, 15, 22980000, 18900000, '2019-06-10 00:14:46', '1', '2019-06-27 16:37:01', '1', 1, 1),
(27, 2, 'Váy hai dây Jennie', 'vay-hai-day-jennie', 'haiday6.jpg#haiday6.jpg', 'haiday6.jpg', 'Siêu xinh', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/haiday6.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/haiday6.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 430, 56, 20, 17900000, 12700000, '2019-06-14 21:46:25', '1', '2019-06-14 21:46:25', '', 1, 1),
(28, 2, 'Váy hai dây Jisoo', 'vay-hai-day-jisoo', 'haiday4.jpg', 'haiday4.jpg#haiday4.jpg', 'Mặc siêu xinh với màu đen sang trọng tôn lên vẻ đẹp quý phái.', '<h3><strong>Thiết kế cách điệu</strong></h3>\r\n<p>Để thật thoải mái và tự tin khi diện váy hoa, bạn nên chọn váy ngắn trên gối hoặc dài vừa qua gối. Những chi tiết cách điệu như chân váy xẻ tà, tay áo phồng, đường nhún bèo ở eo sẽ là “điểm cộng” tôn dáng và giúp tổng thể trang phục thêm phần phóng khoáng, bay bổng. Váy quần (wrap dress) là lựa chọn phù hợp với đa dạng vóc dáng vì vừa tạo hiệu ứng vòng 2 thon gọn vừa khắc phục khuyết điểm ở phần đùi và hông.<p>\r\n<p><img src=\"public/images/products/haiday1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n<h3><strong>Bảng màu RETRO </strong></h3>\r\n<p>Váy màu đen, nâu dễ dàng phối cùng đa dạng phụ kiện, song chúng có thể vô tình “cộng thêm” tuổi cho người mặc. Thay vào đó, bảng màu nóng như đỏ cam, xanh lá, vàng là lựa chọn mà các tín đồ thời trang retro nên cân nhắc. Không những mang dấu ấn của các thập niên cũ, các gam màu này còn giúp tôn da và tạo vẻ ngoài trẻ trung, nổi bật hơn.<p>\r\n<p><img  alt =\"\" src=\"public/images/products/haiday1.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 325, 313, 20, 20900000, 15400000, '2019-06-10 00:20:01', '1', '2022-12-04 16:53:46', '67', 1, 1),
(29, 10, 'Bờm đính ngọc và đá', 'bom-dinh-ngoc-va-da', 'PK11.jpg', 'PK11.jpg#PK11.jpg', 'Bờm đính ngọc và đá 100% thật.', '<h3><strong>Khuy&ecirc;n tai ngọc trai nước ngọt tự nhi&ecirc;n 100% 2510 </strong></h3>\r\n\r\n<p><br />\r\nChất liệu : Ngọc trai nước ngọt tự nhi&ecirc;n nu&ocirc;i cấy v&agrave; chốt bạc 925 tinh khiết<br />\r\nM&agrave;u sắc : trắng - trắng ng&agrave; ( đơn ph&aacute;t sinh l&agrave; ngẫu nhi&ecirc;n, nhưng m&agrave;u sẽ nghi&ecirc;n trắng nhiều hơn)<br />\r\nk&iacute;ch thước hạt b&ocirc;ng ; 8-9 ly<br />\r\nThiết kế khuy&ecirc;n tai ngọc trai đơn giản dễ d&agrave;ng th&iacute;ch hợp đeo hằng ng&agrave;y hay kết hợp với chuỗi ngọc trai, v&ograve;ng cổ đơn giản ph&ugrave; hợp với mọi lứa tuổi</p>\r\n\r\n<p><img src=\"public/images/products/PK11.jpg\" style=\"height:525px; width:840px\" /></p>\r\n', 2, 567, 1, 10, 600000, 500000, '2019-06-26 17:32:25', '1', '2022-12-09 14:11:24', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(2, 'Banner 2', 'Banner-2', 'default.png', '2019-06-13 23:45:04', '1', '2019-06-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'anh1.jpg', '2019-07-03 17:05:52', '1', '2019-07-03 17:07:18', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'anh2.jpg', '2019-07-03 17:06:38', '1', '2019-07-03 17:06:38', '1', 1, 1),
(7, 'test', 'test', 'anh32.jpg', '2022-12-04 16:57:17', '67', '2022-12-04 16:57:17', '67', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2019-04-23 09:20:41', 1, 1),
(4, 'Nguyễn Văn A', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0985657410', 'Gò vấp 1', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2019-04-25 22:08:18', 0, 1),
(8, 'Ngô Văn Hiệp', 'hiep1998', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'vanhiepp1998@gmail.com', 0, '981643651', 'Gò vấp', 'default.png', '2019-06-13 22:30:03', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
