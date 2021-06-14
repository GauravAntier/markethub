-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 09:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stratus_markethub`
--

-- --------------------------------------------------------

--
-- Table structure for table `fc_banners`
--

CREATE TABLE `fc_banners` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(50) NOT NULL,
  `html_source` text DEFAULT NULL,
  `banner_type` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_banners`
--

INSERT INTO `fc_banners` (`id`, `banner_name`, `html_source`, `banner_type`, `start_date`, `end_date`, `status`, `created_on`) VALUES
(1, '', '', 'invitefriends', '0000-00-00', '0000-00-00', 'Inactive', '2020-05-30 05:30:18'),
(2, '', '', 'findfriends', '0000-00-00', '0000-00-00', 'Inactive', '2020-06-18 10:48:58'),
(3, '', NULL, 'shop', '0000-00-00', '0000-00-00', 'Inactive', '2020-06-18 10:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `fc_carts`
--

CREATE TABLE `fc_carts` (
  `id` int(11) NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `payment_status` enum('success','cancel','progress') NOT NULL DEFAULT 'progress',
  `quantity` int(11) NOT NULL,
  `size_options` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `emailsentstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_carts`
--

INSERT INTO `fc_carts` (`id`, `user_ip`, `user_id`, `item_id`, `payment_status`, `quantity`, `size_options`, `created_at`, `modified_at`, `emailsentstatus`) VALUES
(1, NULL, 157, 55, 'progress', 1, '', '2020-07-07 11:58:07', '2020-07-07 11:58:07', 0),
(2, NULL, 89, 55, 'success', 2, '', '2020-07-07 14:03:07', '2020-07-07 14:04:18', 0),
(3, NULL, 169, 8, 'progress', 1, 's', '2020-12-16 05:27:36', '2020-12-16 05:27:36', 0),
(4, NULL, 70, 60, 'success', 1, NULL, '2020-12-16 06:24:05', '2020-12-16 06:46:29', 0),
(5, NULL, 70, 60, 'success', 1, NULL, '2020-12-16 06:49:18', '2020-12-16 06:49:49', 0),
(6, NULL, 70, 60, 'success', 1, NULL, '2020-12-16 06:53:47', '2020-12-16 06:53:59', 0),
(7, NULL, 70, 8, 'success', 1, 's', '2020-12-16 08:10:18', '2020-12-16 08:10:34', 0),
(12, NULL, 171, 51, 'success', 1, NULL, '2020-12-16 09:54:42', '2020-12-16 09:54:56', 0),
(13, NULL, 162, 8, 'success', 1, 's', '2020-12-16 11:02:25', '2020-12-16 11:02:58', 0),
(14, NULL, 171, 8, 'success', 1, 'm', '2020-12-16 11:20:40', '2020-12-16 11:20:51', 0),
(15, NULL, 171, 8, 'success', 1, 's', '2020-12-16 11:26:13', '2020-12-16 11:26:24', 0),
(16, NULL, 171, 8, 'success', 1, 'm', '2020-12-16 12:24:33', '2020-12-16 12:25:23', 0),
(17, NULL, 171, 8, 'success', 2, 'm', '2020-12-16 12:29:06', '2020-12-16 12:29:32', 0),
(18, NULL, 171, 8, 'success', 1, 's', '2020-12-16 12:40:59', '2020-12-16 12:41:14', 0),
(22, NULL, 171, 8, 'success', 2, 'm', '2020-12-21 05:08:52', '2020-12-21 05:09:13', 0),
(23, NULL, 171, 8, 'success', 2, 'l', '2020-12-21 05:17:19', '2020-12-21 05:17:39', 0),
(24, NULL, 162, 10, 'success', 1, NULL, '2020-12-21 05:25:28', '2020-12-21 05:26:58', 0),
(25, NULL, 162, 20, 'success', 1, NULL, '2020-12-21 05:28:50', '2020-12-21 05:29:09', 0),
(26, NULL, 171, 59, 'success', 1, NULL, '2020-12-21 05:30:06', '2020-12-21 05:30:29', 0),
(27, NULL, 162, 8, 'success', 1, 's', '2020-12-21 05:33:08', '2020-12-21 05:34:06', 0),
(28, NULL, 171, 8, 'success', 1, 'm', '2020-12-21 05:35:49', '2020-12-21 05:36:14', 0),
(29, NULL, 171, 60, 'success', 1, NULL, '2020-12-21 05:52:42', '2020-12-21 05:53:07', 0),
(30, NULL, 162, 8, 'success', 1, 'm', '2020-12-21 05:55:08', '2020-12-21 05:55:30', 0),
(32, NULL, 162, 60, 'success', 1, NULL, '2020-12-21 05:57:22', '2020-12-21 05:58:15', 0),
(33, NULL, 162, 60, 'success', 1, NULL, '2020-12-21 06:00:58', '2020-12-21 06:01:22', 0),
(34, NULL, 171, 8, 'success', 1, 's', '2020-12-21 06:03:02', '2020-12-21 06:03:22', 0),
(35, NULL, 171, 60, 'success', 1, NULL, '2020-12-21 06:05:39', '2020-12-21 06:06:04', 0),
(36, NULL, 171, 8, 'success', 1, 'l', '2020-12-21 06:06:51', '2020-12-21 06:07:13', 0),
(37, NULL, 174, 61, 'progress', 1, NULL, '2020-12-21 07:52:09', '2020-12-21 07:52:09', 0),
(38, NULL, 180, 64, 'success', 2, NULL, '2020-12-23 05:38:50', '2020-12-23 05:39:19', 0),
(40, NULL, 180, 64, 'success', 1, NULL, '2020-12-23 05:55:17', '2020-12-23 05:55:37', 0),
(41, NULL, 171, 64, 'success', 1, NULL, '2020-12-23 06:59:39', '2020-12-23 07:00:14', 0),
(43, NULL, 186, 64, 'success', 1, NULL, '2020-12-23 08:10:37', '2020-12-23 08:11:31', 0),
(44, NULL, 186, 66, 'success', 1, NULL, '2020-12-23 09:37:22', '2020-12-23 09:40:37', 0),
(45, NULL, 162, 66, 'success', 1, NULL, '2020-12-23 10:20:18', '2020-12-23 10:20:29', 0),
(47, NULL, 186, 69, 'success', 1, NULL, '2020-12-26 05:44:39', '2020-12-26 05:45:04', 0),
(48, NULL, 186, 68, 'success', 2, NULL, '2020-12-26 06:27:36', '2020-12-26 06:28:15', 0),
(50, NULL, 186, 68, 'success', 1, NULL, '2020-12-26 07:14:39', '2020-12-26 07:15:09', 0),
(51, NULL, 186, 68, 'success', 3, NULL, '2020-12-26 07:23:31', '2020-12-26 07:23:52', 0),
(52, NULL, 194, 66, 'success', 1, NULL, '2020-12-26 08:59:25', '2020-12-26 09:01:55', 0),
(53, NULL, 185, 68, 'success', 1, NULL, '2020-12-26 13:14:28', '2020-12-26 13:15:35', 0),
(54, NULL, 210, 85, 'success', 1, NULL, '2021-01-04 12:35:27', '2021-01-05 04:52:07', 0),
(55, NULL, 210, 86, 'success', 1, NULL, '2021-01-04 13:18:08', '2021-01-05 04:52:06', 0),
(57, NULL, 70, 6, 'success', 1, 's', '2021-02-26 07:49:14', '2021-02-26 16:13:08', 0),
(58, NULL, 70, 6, 'success', 3, 'm', '2021-02-26 11:24:12', '2021-02-26 16:13:08', 0),
(59, NULL, 214, 94, 'success', 2, NULL, '2021-04-02 09:49:32', '2021-04-02 10:11:13', 0),
(60, NULL, 214, 93, 'success', 1, NULL, '2021-04-02 10:30:54', '2021-04-02 10:31:34', 0),
(61, NULL, 70, 94, 'success', 2, NULL, '2021-04-02 12:03:14', '2021-04-02 12:03:43', 0),
(62, NULL, 216, 6, 'success', 1, 's', '2021-04-05 12:03:54', '2021-04-05 12:06:10', 0),
(63, NULL, 216, 97, 'progress', 1, NULL, '2021-04-05 14:08:34', '2021-04-05 14:08:34', 0),
(64, NULL, 70, 6, 'success', 1, 's', '2021-04-07 12:53:47', '2021-04-12 06:06:35', 0),
(66, NULL, 70, 6, 'success', 1, 's', '2021-04-12 12:26:27', '2021-04-12 12:55:59', 0),
(68, NULL, 217, 15, 'progress', 1, NULL, '2021-04-13 08:20:24', '2021-04-13 08:20:24', 0),
(69, NULL, 223, 76, 'progress', 1, '', '2021-04-29 08:55:04', '2021-04-29 08:55:04', 0),
(70, NULL, 70, 6, 'success', 1, 'm', '2021-04-29 09:16:05', '2021-04-29 09:17:04', 0),
(71, NULL, 70, 107, 'progress', 1, '', '2021-04-29 10:45:04', '2021-04-29 10:45:04', 0),
(72, NULL, 70, 57, 'progress', 1, '', '2021-04-29 10:52:04', '2021-04-29 10:52:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fc_categories`
--

CREATE TABLE `fc_categories` (
  `id` int(11) NOT NULL,
  `category_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `category_urlname` varchar(50) NOT NULL,
  `category_parent` int(11) NOT NULL,
  `category_sub_parent` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `count_itemcat` int(11) NOT NULL,
  `category_image` text NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `category_webimage` varchar(255) NOT NULL,
  `category_webicon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_categories`
--

INSERT INTO `fc_categories` (`id`, `category_name`, `category_urlname`, `category_parent`, `category_sub_parent`, `created_by`, `created_at`, `modified_at`, `count_itemcat`, `category_image`, `featured`, `category_webimage`, `category_webicon`) VALUES
(1, 'Men\'s Fashion', 'mens-fashion', 0, 0, 1, '2021-04-02 07:22:26', '2021-04-29 07:13:04', 293, '1594123715_1.png', 1, '1617348145_1.jpg', '1617348080_1.png'),
(3, 'Women\'s Fashion', 'womens-fashion', 0, 0, 1, '2021-04-02 07:20:55', '2021-04-12 12:35:45', 100, '1594123981_1.png', 0, '1617348053_1.jpg', '1617348025_1.png'),
(4, 'Home appliances', 'home-appliances', 0, 0, 1, '2021-04-02 07:20:13', '2021-04-12 12:36:23', 67, '1594124085_1.png', 0, '1617347995_1.png', '1617348011_1.png'),
(5, 'Beauty and Personal care', 'beauty-and-personal-care', 0, 0, 1, '2021-04-02 07:25:28', '2021-04-12 12:35:28', 17, '1594124139_1.png', 0, '1617348311_1.png', '1617348326_1.png'),
(6, 'Electronics', 'electronics', 0, 0, 1, '2021-04-02 07:26:42', '2021-04-14 04:34:41', 63, '1594124188_1.png', 1, '1617348400_1.png', '1617348342_1.png'),
(7, 'Home and Furnitures', 'home-and-furnitures', 0, 0, 1, '2021-04-02 07:24:26', '2021-04-12 13:36:08', 26, '1594124210_1.png', 1, '1617348264_1.png', '1617348250_1.png'),
(8, 'Gym accessories', 'gym-accessories', 0, 0, 1, '2021-04-02 07:27:47', '2021-04-12 12:35:23', 16, '1594124228_1.png', 0, '1617347942_1.png', '1617348466_1.png'),
(9, 'E-Readers & eBooks', 'e-readers-ebooks', 0, 0, 1, '2021-04-02 07:23:20', '2021-04-12 13:36:02', 16, '1594124247_1.png', 1, '1617348169_1.jpg', '1617348198_1.png'),
(10, 'Mobiles & Computers', 'mobiles-computers', 0, 0, 1, '2021-04-02 07:17:42', '2021-04-12 12:36:40', 56, '1594124276_1.png', 1, '1617347860_1.jpg', '1617347835_1.png'),
(11, 'Top Wears', 'top-wears', 1, 0, 1, '2019-01-09 07:02:17', '2019-01-09 07:02:17', 0, '', 0, '', ''),
(12, 'Bottom Wears', 'bottom-wears', 1, 0, 1, '2019-01-09 07:02:29', '2019-01-09 07:02:29', 0, '', 0, '', ''),
(13, 'Televisions', 'televisions', 4, 0, 1, '2019-01-09 07:03:05', '2019-01-09 07:03:05', 0, '', 0, '', ''),
(14, 'Sarees', 'sarees', 3, 0, 1, '2019-01-09 07:03:40', '2019-01-09 07:03:40', 0, '', 0, '', ''),
(15, 'Top Wears', 'top-wears', 3, 0, 1, '2019-01-09 07:03:53', '2019-01-09 07:03:53', 0, '', 0, '', ''),
(17, 'Shirts', 'shirts', 1, 11, 1, '2020-04-06 09:36:17', '2020-04-06 09:36:17', 0, '', 0, '', ''),
(18, 'Tshirts', 'tshirts', 1, 11, 1, '2020-04-06 09:38:26', '2020-04-06 09:38:26', 0, '', 0, '', ''),
(28, 'E Kits', 'e-kits', 10, 0, 1, '2021-04-05 09:36:28', '2021-04-05 09:36:28', 0, '', 0, '', ''),
(29, 'Transports', 'transports', 0, 0, 1, '2021-04-12 11:03:08', '2021-04-28 15:14:07', 34, '', 1, '1617618519_1.jpg', '1618225384_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `fc_colors`
--

CREATE TABLE `fc_colors` (
  `id` int(11) NOT NULL,
  `color_name` varchar(20) NOT NULL,
  `rgb` varchar(11) NOT NULL,
  `color_hex` varchar(7) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_colors`
--

INSERT INTO `fc_colors` (`id`, `color_name`, `rgb`, `color_hex`, `cdate`) VALUES
(1, 'Red', '554,545,545', '#22a221', 1608732869),
(2, 'Green', '543,545,664', '#21f221', 1587989916),
(3, 'Pink', '256,192,203', '#100c0c', 1608732878),
(4, 'Blue', '0,0,205', '#0000cd', 1617356797);

-- --------------------------------------------------------

--
-- Table structure for table `fc_comments`
--

CREATE TABLE `fc_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `comments` mediumtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fc_comments`
--

INSERT INTO `fc_comments` (`id`, `user_id`, `item_id`, `comments`) VALUES
(1, 158, -1, 'vidéo on how to use thé staff '),
(2, 216, -1, 'http://localhost/markethub/listing/Nl80OTY0 '),
(3, 70, -1, 'Hello '),
(5, 217, -1, 'SDFSDFSDAFASDF\n ');

-- --------------------------------------------------------

--
-- Table structure for table `fc_commissions`
--

CREATE TABLE `fc_commissions` (
  `id` int(11) NOT NULL,
  `applyto` varchar(10) NOT NULL,
  `type` varchar(2) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `min_value` varchar(15) NOT NULL,
  `max_value` varchar(15) NOT NULL,
  `commission_details` varchar(250) NOT NULL,
  `active` int(11) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_commissions`
--

INSERT INTO `fc_commissions` (`id`, `applyto`, `type`, `amount`, `min_value`, `max_value`, `commission_details`, `active`, `cdate`) VALUES
(1, 'Seller', '%', '10', '1', '100', '', 1, 1608545817),
(3, 'Seller', '%', '20', '100', '1000', '', 1, 1608545855);

-- --------------------------------------------------------

--
-- Table structure for table `fc_contactsellermsgs`
--

CREATE TABLE `fc_contactsellermsgs` (
  `id` int(11) NOT NULL,
  `contactsellerid` int(11) NOT NULL,
  `message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `sentby` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `createdat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `fc_contactsellers`
--

CREATE TABLE `fc_contactsellers` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `merchantid` int(11) NOT NULL,
  `buyerid` int(11) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `itemname` varchar(150) NOT NULL,
  `buyername` varchar(30) NOT NULL,
  `sellername` varchar(30) NOT NULL,
  `sellerread` int(11) NOT NULL,
  `buyerread` int(11) NOT NULL,
  `lastsent` varchar(10) NOT NULL,
  `lastmodified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_conversations`
--

CREATE TABLE `fc_conversations` (
  `con_id` bigint(20) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `created` int(11) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_countries`
--

CREATE TABLE `fc_countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_countries`
--

INSERT INTO `fc_countries` (`id`, `code`, `country`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (\',Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo, The Democratic Republic of the'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Côte D\'Ivoire'),
(54, 'HR', 'Croatia'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GG', 'Guernsey'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard Island and McDonald Islands'),
(95, 'VA', 'Holy See (Vatican City State)'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran, Islamic Republic of'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IM', 'Isle of Man'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JE', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macao'),
(129, 'MK', 'Macedonia, The Former Yugoslav Republic of'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'YT', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory, Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'BL', 'Saint Barthélemy'),
(184, 'SH', 'Saint Helena'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'MF', 'Saint Martin'),
(188, 'PM', 'Saint Pierre and Miquelon'),
(189, 'VC', 'Saint Vincent and the Grenadines'),
(190, 'WS', 'Samoa'),
(191, 'SM', 'San Marino'),
(192, 'ST', 'Sao Tome and Principe'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SN', 'Senegal'),
(195, 'RS', 'Serbia'),
(196, 'SC', 'Seychelles'),
(197, 'SL', 'Sierra Leone'),
(198, 'SG', 'Singapore'),
(199, 'SK', 'Slovakia'),
(200, 'SI', 'Slovenia'),
(201, 'SB', 'Solomon Islands'),
(202, 'SO', 'Somalia'),
(203, 'ZA', 'South Africa'),
(204, 'GS', 'South Georgia and the South Sandwich Islands'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan, Province Of China'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TL', 'Timor-Leste'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States Minor Outlying Islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Viet Nam'),
(239, 'VG', 'Virgin Islands, British'),
(240, 'VI', 'Virgin Islands, U.S.'),
(241, 'WF', 'Wallis And Futuna'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `fc_coupons`
--

CREATE TABLE `fc_coupons` (
  `id` int(11) NOT NULL,
  `couponcode` varchar(10) NOT NULL,
  `coupontype` varchar(10) NOT NULL,
  `discount_amount` varchar(15) NOT NULL,
  `totalrange` varchar(15) NOT NULL,
  `validrange` varchar(15) NOT NULL,
  `select_merchant` int(11) NOT NULL,
  `merchant_ids` varchar(100) NOT NULL,
  `validfromdate` varchar(10) NOT NULL,
  `validtodate` varchar(10) NOT NULL,
  `cdate` int(11) NOT NULL,
  `one_time_use` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_dispcons`
--

CREATE TABLE `fc_dispcons` (
  `dcid` int(11) NOT NULL,
  `dispid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `msid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `date` int(11) NOT NULL,
  `commented_by` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `itemdetail` text COLLATE utf8mb4_bin NOT NULL,
  `newdispstatus` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `imagedisputes` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fc_dispcons`
--

INSERT INTO `fc_dispcons` (`dcid`, `dispid`, `user_id`, `msid`, `order_id`, `message`, `date`, `commented_by`, `itemdetail`, `newdispstatus`, `imagedisputes`) VALUES
(1, 1, 192, 189, 97, 'sdfffsdf', 1608827430, 'Buyer', 'null', 'Initialized', ''),
(2, 2, 183, 181, 116, 'not cleared ', 1608986919, 'Buyer', '[\"67\"]', 'Initialized', ''),
(3, 3, 210, 209, 140, 'break', 1609835260, 'Buyer', '[\"85\"]', 'Initialized', ''),
(4, 3, 210, 209, 140, 'hi', 1609835520, 'Admin', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_dispplms`
--

CREATE TABLE `fc_dispplms` (
  `id` int(11) NOT NULL,
  `problem` varchar(30) NOT NULL,
  `timedisp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_disputes`
--

CREATE TABLE `fc_disputes` (
  `disid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `selid` int(11) NOT NULL,
  `uorderid` int(11) NOT NULL,
  `money` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `uorderplm` varchar(20) NOT NULL,
  `uordermsg` varchar(1000) NOT NULL,
  `orderdatedisp` int(11) NOT NULL,
  `uorderstatus` varchar(30) NOT NULL,
  `created` varchar(7) NOT NULL,
  `resolvestatus` varchar(10) NOT NULL,
  `orderitem` varchar(8) NOT NULL,
  `itemdetail` tinytext NOT NULL,
  `newstatus` varchar(15) NOT NULL,
  `newstatusup` varchar(15) NOT NULL,
  `totprice` int(11) NOT NULL,
  `chatdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_disputes`
--

INSERT INTO `fc_disputes` (`disid`, `userid`, `selid`, `uorderid`, `money`, `uname`, `uemail`, `sname`, `semail`, `uorderplm`, `uordermsg`, `orderdatedisp`, `uorderstatus`, `created`, `resolvestatus`, `orderitem`, `itemdetail`, `newstatus`, `newstatusup`, `totprice`, `chatdate`) VALUES
(1, 192, 189, 97, 'sethu', 'sethu ', 'sethu@mailinator.com', 'today today', 'today@mailinator.com', 'dispute', 'sdfffsdf', 1608825853, 'null', 'Buyer', 'Delivered', 'Order', '', 'Initialized', 'Closed', 200, '1608827430'),
(2, 183, 181, 116, 'facebook', 'facebook ', 'facebook@mailinator.com', 'queen ddddd', 'queen@mailinator.com', 'dispute', 'not cleared ', 1608986277, '[\"67\"]', 'Buyer', 'Delivered', 'Item', '', 'Initialized', 'Initialized', 600, '1608986919'),
(3, 210, 209, 140, 'twitter', 'twitter ', 'twitter@mailinator.com', 'quit quit', 'quit@mailinator.com', 'dispute', 'break', 1609822326, '[\"85\"]', 'Buyer', 'Delivered', 'Item', '', 'Accepeted', 'Accepeted', 2000, '1609835739');

-- --------------------------------------------------------

--
-- Table structure for table `fc_facebookcoupons`
--

CREATE TABLE `fc_facebookcoupons` (
  `id` int(11) NOT NULL,
  `couponcode` varchar(8) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_facebookcoupons`
--

INSERT INTO `fc_facebookcoupons` (`id`, `couponcode`, `coupon_id`, `item_id`, `user_id`, `cdate`) VALUES
(1, 'ea3L9KaH', 12, 104, 70, 1619622725);

-- --------------------------------------------------------

--
-- Table structure for table `fc_faqs`
--

CREATE TABLE `fc_faqs` (
  `id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_faqs`
--

INSERT INTO `fc_faqs` (`id`, `faq_question`, `faq_answer`) VALUES
(1, 'Testing Testing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `fc_fashionusers`
--

CREATE TABLE `fc_fashionusers` (
  `id` int(11) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `userimage` varchar(20) DEFAULT NULL,
  `status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `cdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_fashionusers`
--

INSERT INTO `fc_fashionusers` (`id`, `itemId`, `user_id`, `userimage`, `status`, `cdate`) VALUES
(1, 62, 176, '1608548534_176.jpg', 'Yes', 1608548536),
(2, 76, 205, '1609395997_205.jpg', 'Yes', 1609395998),
(3, 86, 210, '1609836370_210.jpg', 'Yes', 1609836371),
(4, 94, 214, '1617362715_214.jpg', 'No', 1617362717),
(5, 94, 214, '1617362815_214.jpeg', 'No', 1617362817);

-- --------------------------------------------------------

--
-- Table structure for table `fc_feedcomments`
--

CREATE TABLE `fc_feedcomments` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `comments` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_feedcomments`
--

INSERT INTO `fc_feedcomments` (`id`, `userid`, `statusid`, `comments`) VALUES
(1, 158, 186, 'heyyy '),
(3, 70, 820, 'Vhvv '),
(4, 217, 791, 'esafasdfasdfasdf '),
(5, 217, 791, 'assdfasdfasdf a <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>@</span><a href=\'http://localhost/markethub/people/asdfasdfds\'>asdfasdfds</a></span> '),
(6, 217, 791, '<span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>#</span><a href=\'http://localhost/markethub/hashtag/asdfas\'>asdfas</a></span> dfasd \nasdfa sdfasdf <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>@</span><a href=\'http://localhost/markethub/people/asdfas\'>asdfas</a></span> d '),
(7, 217, 906, 'Utsrustu <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>@</span><a href=\'http://localhost/markethub/people/ashok\'>ashok</a></span> <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>#</span><a href=\'http://localhost/markethub/hashtag/trending\'>trending</a></span> ');

-- --------------------------------------------------------

--
-- Table structure for table `fc_followers`
--

CREATE TABLE `fc_followers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `follow_user_id` int(11) NOT NULL,
  `followed_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_followers`
--

INSERT INTO `fc_followers` (`id`, `user_id`, `follow_user_id`, `followed_on`) VALUES
(1, 157, 89, '2020-07-07 09:26:51'),
(2, 156, 89, '2020-07-07 09:26:51'),
(3, 70, 89, '2020-07-07 09:26:52'),
(4, 172, 173, '2020-12-21 07:35:07'),
(5, 177, 178, '2020-12-22 04:32:29'),
(6, 176, 178, '2020-12-22 04:32:33'),
(7, 178, 179, '2020-12-22 04:42:42'),
(8, 177, 179, '2020-12-22 04:42:46'),
(9, 179, 180, '2020-12-22 06:48:00'),
(10, 178, 180, '2020-12-22 06:48:04'),
(11, 177, 180, '2020-12-22 06:48:07'),
(12, 191, 192, '2020-12-24 15:06:40'),
(13, 189, 192, '2020-12-24 15:06:44'),
(14, 190, 192, '2020-12-24 15:06:47'),
(15, 188, 192, '2020-12-24 15:06:51'),
(16, 187, 192, '2020-12-24 15:06:55'),
(18, 192, 70, '2021-02-24 10:42:11'),
(19, 187, 70, '2021-02-24 11:17:52'),
(20, 188, 70, '2021-02-24 11:17:56'),
(21, 189, 70, '2021-02-24 11:18:00'),
(22, 190, 70, '2021-02-24 11:18:04'),
(23, 191, 70, '2021-02-24 11:18:08'),
(24, 156, 70, '2021-02-25 05:12:54'),
(25, 157, 70, '2021-02-25 05:12:59'),
(26, 203, 214, '2021-04-02 09:20:43'),
(27, 199, 214, '2021-04-02 09:20:45'),
(28, 195, 214, '2021-04-02 09:20:49'),
(29, 205, 214, '2021-04-02 09:20:56'),
(30, 213, 214, '2021-04-02 09:20:59'),
(31, 215, 216, '2021-04-05 10:47:51'),
(32, 214, 216, '2021-04-05 10:47:55'),
(33, 213, 216, '2021-04-05 11:06:50'),
(34, 70, 216, '2021-04-05 11:06:52'),
(35, 71, 216, '2021-04-05 11:06:53'),
(38, 204, 70, '2021-04-09 04:43:25'),
(39, 214, 70, '2021-04-09 04:43:30'),
(40, 215, 70, '2021-04-09 04:45:12'),
(42, 215, 217, '2021-04-12 10:13:24'),
(49, 216, 217, '2021-04-12 14:27:13'),
(50, 213, 70, '2021-04-13 05:39:45'),
(52, 217, 70, '2021-04-13 06:25:13'),
(53, 71, 70, '2021-04-13 06:25:17'),
(54, 73, 70, '2021-04-13 06:25:20'),
(55, 211, 70, '2021-04-13 06:25:29'),
(57, 214, 217, '2021-04-13 08:34:32'),
(58, 70, 217, '2021-04-13 08:35:49'),
(59, 208, 217, '2021-04-13 12:57:57'),
(60, 209, 217, '2021-04-13 12:57:59'),
(61, 210, 217, '2021-04-13 12:57:59'),
(62, 213, 217, '2021-04-13 12:58:21'),
(63, 216, 70, '2021-04-14 04:53:18'),
(67, 220, 221, '2021-04-25 13:13:50'),
(68, 219, 221, '2021-04-25 13:13:51'),
(69, 218, 221, '2021-04-25 13:13:51'),
(70, 217, 221, '2021-04-25 13:13:52'),
(71, 226, 227, '2021-06-02 11:34:02'),
(72, 225, 227, '2021-06-02 11:34:04'),
(73, 224, 227, '2021-06-02 11:34:05'),
(74, 223, 227, '2021-06-02 11:34:07'),
(75, 222, 227, '2021-06-02 11:34:09'),
(76, 221, 227, '2021-06-02 11:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `fc_forexrates`
--

CREATE TABLE `fc_forexrates` (
  `id` int(11) NOT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_symbol` varchar(5) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `currency_name` varchar(100) NOT NULL,
  `price` varchar(15) DEFAULT NULL,
  `cstatus` varchar(8) NOT NULL,
  `cdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_forexrates`
--

INSERT INTO `fc_forexrates` (`id`, `country_code`, `currency_code`, `currency_symbol`, `country_name`, `currency_name`, `price`, `cstatus`, `cdate`) VALUES
(1, NULL, 'USD', '$', '', 'U.S. Dollar', '1', 'default', '2017-11-10 07:02:26'),
(2, NULL, 'MXN', 'Mex$', '', 'Mexican Peso', '0.052', 'enable', '2017-11-10 07:07:29'),
(3, NULL, 'EUR', '€', '', 'Euro', '1.16', 'enable', '2017-11-10 07:07:40'),
(4, NULL, 'SGD', 'S$', '', 'Singapore Dollar', '0.74', 'enable', '2017-11-10 07:09:07'),
(6, NULL, 'ILS', '₪', '', 'Israeli New Sheqel', '0.28', 'enable', '2017-11-10 07:09:56'),
(7, NULL, 'INR', '₨', '', 'Indian Rupee', '0.015', 'enable', '2017-11-10 07:10:13'),
(8, NULL, 'RUB', 'руб', '', 'Russian Ruble', '10', 'enable', '2020-12-21 10:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `fc_giftcards`
--

CREATE TABLE `fc_giftcards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reciptent_name` varchar(30) DEFAULT NULL,
  `reciptent_email` varchar(150) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL,
  `avail_amount` varchar(15) DEFAULT NULL,
  `giftcard_key` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `currencyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_giftcards`
--

INSERT INTO `fc_giftcards` (`id`, `user_id`, `reciptent_name`, `reciptent_email`, `message`, `amount`, `avail_amount`, `giftcard_key`, `status`, `cdate`, `currencyid`) VALUES
(1, 158, 'Ramnath  ', 'tramnath_usr@hitasoft.com', 'hello', '1500', '1500', 'bc7eJ088', 'Paid', 1594246856, 1),
(2, 171, 'Demo', 'demo@fantacy.com', 'for demo', '1000', '1000', 'A4E5F33P', 'Paid', 1608720631, 1),
(3, 70, 'viji', 'aviji@hitasoft.com', 'fhhgj', '1000', '596', 'AFf21bcF', 'Paid', 1608721099, 1),
(4, 182, 'facebook', 'facebook@mailinator.com', 'happy birthday', '10', '0', 'ddMc8b9d', 'Paid', 1608793045, 1),
(5, 182, 'twitter', 'twitter@mailinator.com', 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '10', '0', '2D59aK5a', 'Paid', 1609767122, 1),
(6, 171, 'Demo', 'demo@fantacy.com', 'hfg jh j', '1500', '1500', NULL, 'Pending', 1613980180, 1),
(7, 70, 'Athena', 'vshrinidhi@hitasoft.com', 'Hey athena, its for your hardwork', '10', '10', '0H3c3C2A', 'Paid', 1614357205, 1),
(8, 70, 'Athena', 'vshrinidhi@hitasoft.com', 'Athena', '10', '10', '14DK0ea6', 'Paid', 1617364909, 1),
(9, 216, 'ashokkumar', 'ashokhts2019@gmail.com', 'asdfasdfas', '100', '100', '0Ad669Ia', 'Paid', 1618382182, 1),
(10, 70, 'vinoth ', 'jkiruba@gmail.com', 'hi', '10', '10', '3LD95F7H', 'Paid', 1619153019, 1),
(11, 223, 'DemoUser ', 'demo@fantacy.com', 'hi', '1500', '0', '4Neeb0PN', 'Paid', 1619618831, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fc_googlecodes`
--

CREATE TABLE `fc_googlecodes` (
  `id` int(11) NOT NULL,
  `google_code` text NOT NULL,
  `status` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_groupgiftpayamts`
--

CREATE TABLE `fc_groupgiftpayamts` (
  `id` int(11) NOT NULL,
  `ggid` int(11) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL,
  `paiduser_id` int(11) DEFAULT NULL,
  `transactionId` varchar(150) NOT NULL,
  `cdate` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_groupgiftpayamts`
--

INSERT INTO `fc_groupgiftpayamts` (`id`, `ggid`, `amount`, `paiduser_id`, `transactionId`, `cdate`, `status`) VALUES
(1, 1, '101', 193, 'bw41qdjd', 1608959487, NULL),
(2, 2, '180', 192, '922gj7m6', 1608960168, NULL),
(3, 4, '20', 195, 'nv0crvb3', 1608978235, NULL),
(4, 4, '283', 195, 'jxf5gwfg', 1608978259, NULL),
(5, 5, '303', 195, 'amg894ey', 1608978899, NULL),
(6, 6, '190', 197, '83a1e5td', 1608984374, NULL),
(7, 6, '11', 192, '5ayvbv3x', 1608984522, NULL),
(8, 8, '1010', 210, '3q54wpbx', 1609762936, NULL),
(9, 9, '101', 211, '5cvgs5yp', 1609836726, NULL),
(10, 10, '20', 70, '71ckcv8s', 1617365693, NULL),
(11, 12, '6000', 216, 'g4h7z41z', 1617626014, NULL),
(12, 12, '3070', 216, 'jzept1hd', 1617626041, NULL),
(13, 13, '9876', 217, 'pmed5n0g', 1618234835, NULL),
(14, 13, '9895', 217, 'n99jzke4', 1618234861, NULL),
(15, 13, '7000', 217, 'kzz3gerj', 1618234902, NULL),
(16, 13, '7000', 217, 'exyz5qae', 1618234935, NULL),
(17, 13, '6793.2', 217, '1282ndke', 1618234961, NULL),
(18, 13, '7000', 217, 'nc9ndd0p', 1618234985, NULL),
(19, 14, '102', 217, '0k8dkk88', 1618302309, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fc_groupgiftuserdetails`
--

CREATE TABLE `fc_groupgiftuserdetails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `recipient` varchar(30) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `image` varchar(20) NOT NULL,
  `address1` varchar(60) NOT NULL,
  `address2` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `itemcost` varchar(15) DEFAULT NULL,
  `itemsize` varchar(30) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `shipcost` varchar(15) DEFAULT NULL,
  `tax` varchar(15) NOT NULL,
  `total_amt` varchar(15) DEFAULT NULL,
  `balance_amt` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  `c_date` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_groupgiftuserdetails`
--

INSERT INTO `fc_groupgiftuserdetails` (`id`, `user_id`, `item_id`, `recipient`, `name`, `image`, `address1`, `address2`, `country`, `state`, `city`, `zipcode`, `telephone`, `itemcost`, `itemsize`, `itemquantity`, `shipcost`, `tax`, `total_amt`, `balance_amt`, `title`, `description`, `notes`, `status`, `c_date`, `currencyid`) VALUES
(1, 193, 69, 'Dora@mailinator.com', 'DoraDora', 'usrimg.jpg', 'dsdsd', 'sdsdsdsd', '232', 'kjkh', 'cxcxxcv', 'cxvc', '54446654', '100', '', 1, '100', '1', '201', '100', 'sdffsddf', 'sfdsfdsfdsfdsfsdfsdfsdfdsfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdfdsfdsfsdfsdfsdfsd', 'Active', 1608959013, 1),
(2, 192, 69, 'demo@fantacy.com', 'DemoUser', 'usrimg.jpg', '1st St', 'uwhw', '232', 'Tamil Nadu', 'Chinna Chokikulam', '625002', '499416616', '100', '', 1, '100', '1', '201', '21', 'sss', 'ssddsdssddasdasdasdsadsadasdasdas', 'dsadasdasdasdasdasdasd', 'Active', 1608960016, 1),
(3, 185, 66, 'demo@fantacy.com', 'DemoUser', 'usrimg.jpg', '1st St', 'uwhw', '232', 'Tamil Nadu', 'Chinna Chokikulam', '625002', '499416616', '400', '', 1, '0', '4', '404', '404', 'sample group gift test', 'fjsdlfjslfjsljfl', 'jfdsfsfsfsdf', 'Active', 1608968113, 1),
(4, 195, 60, 'demo@fantacy.com', 'DemoUser', 'usrimg.jpg', '1st St', 'uwhw', '232', 'Tamil Nadu', 'Chinna Chokikulam', '625002', '499416616', '300', '', 1, '0', '3', '303', '0', 'sample test 1223', 'fdsfsdffdsfdsfdsf', 'dsfsdfsdfsdfsdf', 'Completed', 1608977998, 1),
(5, 195, 60, 'demo@fantacy.com', 'DemoUser', 'usrimg.jpg', '1st St', 'uwhw', '232', 'Tamil Nadu', 'Chinna Chokikulam', '625002', '499416616', '300', '', 1, '0', '3', '303', '0', 'fsfsdf', 'dfsfdsffdsfdsfdsf', 'fdsfsfdsf', 'Completed', 1608978865, 1),
(6, 197, 69, 'share@mailinator.com', 'share', 'usrimg.jpg', 'asasasa', 'sasasasas', '232', 'sasasasa', 'sasasas', 'asasasasas', '645464654654', '100', '', 1, '100', '1', '201', '0', 'Unaku than da gift', 'vachuku da vachuko nala vachuko', 'cffdsdfd', 'Completed', 1608983952, 1),
(7, 193, 69, 'sing@mailinator.com', 'sing', 'usrimg.jpg', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', '232', 'dsadsadsadsadsa', 'dffsdsdffds', 'fsdsdffsdfsdd', '25245454554', '100', '', 1, '100', '1', '201', '201', 'saddsasdasda', 'dsaasaadsaasddsadsadsasda', 'dsadsadsasdasdasdasdasdadsadsa', 'Active', 1608988353, 1),
(8, 210, 83, 'lilly@mailinator.com', 'lilly water', '1608725319_182.jpg', 'sdf', 'middle street', '232', 'united states', 'united states', '34565654', '4474433', '1000', '', 1, '0', '10', '1010', '0', 'birthday', 'birthday birthday', 'note', 'Completed', 1609762886, 1),
(9, 211, 89, 'today@mailinator.com', 'todaytoday', 'usrimg.jpg', 'sdf', 'middle street', '232', 'united states', 'united states', '4753', '24545656', '2000', '', 1, '0', '20', '2020', '1919', 'zsvvzfvfvzf', 'vzfvzfdddddddddddddv', 'ygkkhukhk', 'Active', 1609836667, 1),
(10, 70, 6, 'seller@fantacy.com', 'Demo', '1594126713_71.jpg', 'kdsjfslk', 'ksdjflks', '100', 'tamilnadu', 'madurai', '625002', '987654321', '300', 's', 1, '0', '6', '306', '286', 'LEt\'s suprise demo', 'lkdsjfkdlsjfdlsjfdklsfjldsfjsdkljflkdsf', 'dsfdsfdsfdsfffffffddd', 'Active', 1617365612, 1),
(11, 216, 7, 'demo@fantacy.com', 'DemoUser', '1614357133_70.png', '1st St', 'uwhw', '232', 'Tamil Nadu', 'Chinna Chokikulam', '625002', '499416616', '7666', '', 1, '0', '88.93', '8981', '8981', 'asdfasdf', 'asdfasdfasdfasdfas', 'asdfasdfasdfasdfas', 'Active', 1617625847, 3),
(12, 216, 7, 'arush@mailinator.com', 'arusharush', 'usrimg.jpg', 'asdfasdf', 'asdfasdfs', '100', 'asdfasdf', 'asdfasdfa', 'asdfasdfa', '8978999998', '7666', '', 1, '0', '177.85', '9070', '0', 'asdfasdfas fasd', 'fasdf asdfas fasdfads asdfasdfasdfa fasdfas dfasdfasdfa', 'assdf asdfasd asdfasdf ', 'Completed', 1617625897, 3),
(13, 217, 102, 'ashok.c@mailinator.com', 'Ashok', 'usrimg.jpg', 'asdfasd', 'asdfasdf', '100', 'fasdfasdf', 'asdfasdfasdf', 'asdsfasdfa', '8445645656', '60000', '', 3, '0', '2664', '135864', '88299.8', 'asdfasdfdfasdfas', 'asdfasdfa sdfadfasd', 'fasdfasdfasdfasdfasdf asdfasdf', 'Active', 1618234789, 4),
(14, 217, 15, 'ashok.c@mailinator', 'Gshsh', '', 'Bsbbsbs', 'Hsheh', '100', 'Bzbs', 'Hsjsj', 'Bsbsbw', '838383838', '2000', '', 1, '0', '40', '2040', '1938', 'Bsbsb', 'HdhehejjbdjjdhdhehejejjjjejeSjdjjsik', 'Hsjdjejwj', 'Active', 1618302210, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fc_hashtags`
--

CREATE TABLE `fc_hashtags` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(30) NOT NULL,
  `usedcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_hashtags`
--

INSERT INTO `fc_hashtags` (`id`, `hashtag`, `usedcount`) VALUES
(1, '', 32),
(2, 'test', 1),
(3, 'asdfas', 1),
(4, 'trending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fc_helps`
--

CREATE TABLE `fc_helps` (
  `id` int(11) NOT NULL,
  `main_termsofSale` text NOT NULL,
  `sub_termsofSale` text NOT NULL,
  `contact` text NOT NULL,
  `main_termsofService` text NOT NULL,
  `sub_termsofService` text NOT NULL,
  `main_privacy` text NOT NULL,
  `sub_privacy` text NOT NULL,
  `main_termsofMerchant` text NOT NULL,
  `sub_termsofMerchant` text NOT NULL,
  `main_copyright` text NOT NULL,
  `sub_copyright` text NOT NULL,
  `main_faq` text NOT NULL,
  `sub_faq` text NOT NULL,
  `err_code` text NOT NULL,
  `main_about` text NOT NULL,
  `sub_about` text NOT NULL,
  `main_documentation` text NOT NULL,
  `sub_documentation` text NOT NULL,
  `main_press` text NOT NULL,
  `sub_press` text NOT NULL,
  `main_pricing` text NOT NULL,
  `sub_pricing` text NOT NULL,
  `main_talk` text NOT NULL,
  `sub_talk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_helps`
--

INSERT INTO `fc_helps` (`id`, `main_termsofSale`, `sub_termsofSale`, `contact`, `main_termsofService`, `sub_termsofService`, `main_privacy`, `sub_privacy`, `main_termsofMerchant`, `sub_termsofMerchant`, `main_copyright`, `sub_copyright`, `main_faq`, `sub_faq`, `err_code`, `main_about`, `sub_about`, `main_documentation`, `sub_documentation`, `main_press`, `sub_press`, `main_pricing`, `sub_pricing`, `main_talk`, `sub_talk`) VALUES
(1, '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '{\"emailid\":\"fantacy@hts.com\",\"mobileno\":\"989898989\",\"contactaddress\":\"ASDf asf wer qwer sfd fasfd erwrq\"}', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the</p>', '<p>Protecting your private information is our priority. This Statement of Privacy applies to&nbsp;<a href=\"https://fantacyscript.com/\">https://fantacyscript.com/</a> and&nbsp;Fantacy&nbsp;and governs data collection and usage. For the purposes of this Privacy Policy, unless otherwise noted, all references to Fantacy include&nbsp;<a href=\"https://fantacyscript.com/\">https://fantacyscript.com/</a>. The Fantacy website is a ecommerce site. By using the Fantacy website, you consent to the data practices described in this statement.</p>\r\n<p><br /><strong>Collection of your Personal Information</strong></p>\r\n<p><br />Fantacy may also collect anonymous demographic information, which is not unique to you.</p>\r\n<p><br />Please keep in mind that if you directly disclose personally identifiable information or personally sensitive data through Fantacy\'s public message boards, this information may be collected and used by others.</p>\r\n<p><br />We do not collect any personal information about you unless you voluntarily provide it to us. However, you may be required to provide certain personal information to us when you elect to use certain products or services available on the Site. These may include: (a) registering for an account on our Site; (b) entering a sweepstakes or contest sponsored by us or one of our partners; (c) signing up for special offers from selected third parties; (d) sending us an email message; (e) submitting your credit card or other payment information when ordering and purchasing products and services on our Site. To wit, we will use your information for, but not limited to, communicating with you in relation to services and/or products you have requested from us. We also may gather additional personal or non-personal information in the future.</p>\r\n<p><br /><strong>Use of your Personal Information</strong></p>\r\n<p><br />Fantacy collects and uses your personal information to operate its website(s) and deliver the services you have requested.</p>\r\n<p><br />Fantacy may also use your personally identifiable information to inform you of other products or services available from Fantacy and its affiliates.</p>\r\n<p><br /><strong>Sharing Information with Third Parties</strong></p>\r\n<p>Fantacy does not sell, rent or lease its customer lists to third parties.<br />Fantacy may, from time to time, contact you on behalf of external business partners about a particular offering that may be of interest to you. In those cases, your unique personally identifiable information (e-mail, name, address, telephone number) is transferred to the third party.</p>\r\n<p>Fantacy may share data with trusted partners to help perform statistical analysis, send you email or postal mail, provide customer support, or arrange for deliveries. All such third parties are prohibited from using your personal information except to provide these services to Fantacy, and they are required to maintain the confidentiality of your information.</p>\r\n<p>Fantacy may disclose your personal information, without notice, if required to do so by law or in the good faith belief that such action is necessary to: (a) conform to the edicts of the law or comply with legal process served on Fantacy or the site; (b) protect and defend the rights or property of Fantacy; and/or (c) act under exigent circumstances to protect the personal safety of users of Fantacy, or the public.</p>\r\n<p><br /><strong>Tracking User Behavior</strong></p>\r\n<p><br />Fantacy may keep track of the websites and pages our users visit within Fantacy, in order to determine what Fantacy services are the most popular. This data is used to deliver customized content and advertising within Fantacy to customers whose behavior indicates that they are interested in a particular subject area.<br />Automatically Collected Information<br />Information about your computer hardware and software may be automatically collected by Fantacy. This information can include: your IP address, browser type, domain names, access times and referring website addresses. This information is used for the operation of the service, to maintain quality of the service, and to provide general statistics regarding use of the Fantacy website.</p>\r\n<p><br /><strong>Use of Cookies</strong></p>\r\n<p><br />The Fantacy website may use \"cookies\" to help you personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.<br />One of the primary purposes of cookies is to provide a convenience feature to save you time. The purpose of a cookie is to tell the Web server that you have returned to a specific page. For example, if you personalize Fantacy pages, or register with Fantacy site or services, a cookie helps Fantacy to recall your specific information on subsequent visits. This simplifies the process of recording your personal information, such as billing addresses, shipping addresses, and so on. When you return to the same Fantacy website, the information you previously provided can be retrieved, so you can easily use the Fantacy features that you customized.</p>\r\n<p><br />You have the ability to accept or decline cookies. Most Web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. If you choose to decline cookies, you may not be able to fully experience the interactive features of the Fantacy services or websites you visit.</p>\r\n<p><br /><strong>Links</strong></p>\r\n<p><br />This website contains links to other sites. Please be aware that we are not responsible for the content or privacy practices of such other sites. We encourage our users to be aware when they leave our site and to read the privacy statements of any other site that collects personally identifiable information.<br /><br /></p>\r\n<p><strong>Security of your Personal Information</strong></p>\r\n<p><br />Fantacy secures your personal information from unauthorized access, use, or disclosure. Fantacy uses the following methods for this purpose:<br />- SSL Protocol</p>\r\n<p><br />When personal information (such as a credit card number) is transmitted to other websites, it is protected through the use of encryption, such as the Secure Sockets Layer (SSL) protocol.<br />We strive to take appropriate security measures to protect against unauthorized access to or alteration of your personal information.</p>\r\n<p>Unfortunately, no data transmission over the Internet or any wireless network can be guaranteed to be 100% secure. As a result, while we strive to protect your personal information, you acknowledge that: (a) there are security and privacy limitations inherent to the Internet which are beyond our control; and (b) security, integrity, and privacy of any and all information and data exchanged between you and us through this Site cannot be guaranteed.</p>\r\n<p><br /><strong>Children Under Thirteen</strong></p>\r\n<p><br />Fantacy does not knowingly collect personally identifiable information from children under the age of thirteen. If you are under the age of thirteen, you must ask your parent or guardian for permission to use this website.</p>\r\n<p><br /><strong>Disconnecting your Fantacy Account from Third Party Websites</strong></p>\r\n<p><br />You will be able to connect your Fantacy account to third party accounts. BY CONNECTING YOUR Fantacy ACCOUNT TO YOUR THIRD PARTY ACCOUNT, YOU ACKNOWLEDGE AND AGREE THAT YOU ARE CONSENTING TO THE CONTINUOUS RELEASE OF INFORMATION ABOUT YOU TO OTHERS (IN ACCORDANCE WITH YOUR PRIVACY SETTINGS ON THOSE THIRD PARTY SITES). IF YOU DO NOT WANT INFORMATION ABOUT YOU, INCLUDING PERSONALLY IDENTIFYING INFORMATION, TO BE SHARED IN THIS MANNER, DO NOT USE THIS FEATURE. You may disconnect your account from a third party account at any time. Users may learn how to disconnect their accounts from third-party websites by visiting their \"My Account\" page. Users may also contact us via email or telephone.</p>\r\n<p><br /><strong>Opt-Out &amp; Unsubscribe from Third Party Communications</strong></p>\r\n<p><br />We respect your privacy and give you an opportunity to opt-out of receiving announcements of certain information. Users may opt-out of receiving any or all communications from third-party partners of Fantacy by contacting us here:<br />- Email: support@Fantacy.com</p>\r\n<p><br /><strong>E-mail Communications</strong></p>\r\n<p><br />From time to time, Fantacy may contact you via email for the purpose of providing&nbsp;announcements, promotional offers, alerts, confirmations, surveys, and/or other general communication.<br /><br />If you would like to stop receiving marketing or promotional communications via email from Fantacy, you may opt out of such communications by Customers may unsubscribe from emails by \"replying STOP\" or \"clicking on the UNSUBSCRIBE button.&rdquo;</p>\r\n<p><br /><strong>External Data Storage Sites</strong></p>\r\n<p><br />We may store your data on servers provided by third party hosting vendors with whom we have contracted.</p>\r\n<p><br /><strong>Changes to this Statement</strong></p>\r\n<p><br />Fantacy reserves the right to change this Privacy Policy from time to time. We will notify you about significant changes in the way we treat personal information by sending a notice to the primary email address specified in your account, by placing a prominent notice on our site, and/or by updating any privacy information on this page. Your continued use of the Site and/or Services available through this Site after such modifications will constitute your: (a) acknowledgment of the modified Privacy Policy; and (b) agreement to abide and be bound by that Policy.</p>\r\n<p><br /><strong>Contact Information</strong></p>\r\n<p><br />Fantacy welcomes your questions or comments regarding this Statement of Privacy. If you believe that Fantacy has not adhered to this Statement, you may contact us at:&nbsp;<br />Email Address: info@hitasoft.com</p>', '', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p style=\"text-align: justify;\"><strong>TESTING SERVICES</strong></p>', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', '<p>test</p>', '<p style=\"text-align: center;\"><strong>test</strong></p>', '<p>test</p>', '<p>test</p>', '<p>test</p>', '<p>test</p>', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_historyitems`
--

CREATE TABLE `fc_historyitems` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` text DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_homepagesettings`
--

CREATE TABLE `fc_homepagesettings` (
  `id` int(11) NOT NULL,
  `layout` varchar(10) NOT NULL,
  `slider` text NOT NULL,
  `properties` text NOT NULL,
  `widgets` text NOT NULL,
  `widget_settings` text NOT NULL,
  `categories` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_homepagesettings`
--

INSERT INTO `fc_homepagesettings` (`id`, `layout`, `slider`, `properties`, `widgets`, `widget_settings`, `categories`) VALUES
(1, 'custom', '[{\"image\":\"1593241087_1.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacy\\/\\/shop\\/mens-fashion\\/top-wears\\/shirts\",\"mode\":\"web\"},{\"image\":\"1593241106_1.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacy\\/\\/shop\\/mens-fashion\\/top-wears\\/shirts\",\"mode\":\"web\"},{\"image\":\"1593241152_1.jpg\",\"link\":\"https:\\/\\/www.joysalescript.com\",\"mode\":\"app\"},{\"image\":\"1593412826_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacy\\/\\/listing\\/MTMxXzk4Mzk=\",\"mode\":\"app\"},{\"image\":\"1593507124_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacy\\/\\/shop\\/electronics\",\"mode\":\"app\"},{\"image\":\"1593507245_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacy\\/\\/shop\\/mens-fashion\\/top-wears\\/shirts\",\"mode\":\"app\"},{\"image\":\"1594126540_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/\\/shop\\/womens-fashion\\/sarees\",\"type\":\"categories\",\"category\":3,\"subcategory\":14,\"supercategory\":\"\",\"content_id\":3,\"mode\":\"app\"},{\"image\":\"1594126573_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/\\/listing\\/MjhfOTQ0NA==\",\"type\":\"item\",\"content_id\":28,\"mode\":\"app\"},{\"image\":\"1594126670_1.png\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\",\"type\":\"link\",\"content_id\":null,\"mode\":\"app\"}]', '{\"sliderheight\":null,\"sliderbg\":null}', 'Most Popular(,)Discounts(,)Featured Items(,)Recently Added(,)Top Rated(,)Top Stores', '{\"most_popular\":\"slider5\",\"featured_items\":\"slider4\",\"discounts\":\"slider3\",\"top_rated\":\"slider5\",\"recently_added\":\"slider2\"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_invoiceorders`
--

CREATE TABLE `fc_invoiceorders` (
  `invoiceorderid` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_invoiceorders`
--

INSERT INTO `fc_invoiceorders` (`invoiceorderid`, `invoiceid`, `orderid`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(46, 46, 46),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50),
(51, 51, 51),
(52, 52, 52),
(53, 53, 53),
(54, 54, 54),
(55, 55, 55),
(56, 56, 56),
(57, 57, 57),
(58, 58, 58),
(59, 59, 59),
(60, 60, 60),
(61, 61, 61),
(62, 62, 62),
(63, 63, 63),
(64, 64, 64),
(65, 65, 65),
(66, 66, 66),
(67, 67, 67),
(68, 68, 68),
(69, 69, 69),
(70, 70, 70),
(71, 71, 71),
(72, 72, 72),
(73, 73, 73),
(74, 74, 74),
(75, 75, 75),
(76, 76, 76),
(77, 77, 77),
(78, 78, 78),
(79, 79, 79),
(80, 80, 80),
(81, 81, 81),
(82, 82, 82),
(83, 83, 83),
(84, 84, 84),
(85, 85, 85),
(86, 86, 86),
(87, 87, 87),
(88, 88, 88),
(89, 89, 89),
(90, 90, 90),
(91, 91, 91),
(92, 92, 92),
(93, 93, 93),
(94, 94, 94),
(95, 95, 95),
(96, 96, 96),
(97, 97, 97),
(98, 98, 98),
(99, 99, 99),
(100, 100, 100),
(101, 101, 101),
(102, 102, 102),
(103, 103, 103),
(104, 104, 104),
(105, 105, 105),
(106, 106, 106),
(107, 107, 107),
(108, 108, 108),
(109, 109, 109),
(110, 110, 110),
(111, 111, 111),
(112, 112, 112),
(113, 113, 113),
(114, 114, 114),
(115, 115, 115),
(116, 116, 116),
(117, 117, 117),
(118, 118, 118),
(119, 119, 119),
(120, 120, 120),
(121, 121, 121),
(122, 122, 122),
(123, 123, 123),
(124, 124, 124),
(125, 125, 125),
(126, 126, 126),
(127, 127, 127),
(128, 128, 128),
(129, 129, 129),
(130, 130, 130),
(131, 131, 131),
(132, 132, 132),
(133, 133, 133),
(134, 134, 134),
(135, 135, 135),
(136, 136, 136),
(137, 137, 137),
(138, 138, 138),
(139, 139, 139),
(140, 140, 140),
(141, 141, 141),
(142, 142, 142),
(143, 143, 143),
(144, 144, 144),
(145, 145, 145),
(146, 146, 146),
(147, 147, 147),
(148, 148, 148),
(149, 149, 149),
(150, 150, 150),
(151, 151, 151),
(152, 152, 152),
(153, 153, 153),
(154, 154, 154),
(155, 155, 155),
(156, 156, 156),
(157, 157, 157),
(158, 158, 158),
(159, 159, 159),
(160, 160, 160),
(161, 161, 161),
(162, 162, 162),
(163, 163, 163),
(164, 164, 164),
(165, 165, 165),
(166, 166, 166),
(167, 167, 167),
(168, 168, 168),
(169, 169, 169),
(170, 170, 170),
(171, 171, 171),
(172, 172, 172),
(173, 173, 173),
(174, 174, 174),
(175, 175, 175),
(176, 176, 176),
(177, 177, 177),
(178, 178, 178),
(179, 179, 179),
(180, 180, 180),
(181, 181, 181);

-- --------------------------------------------------------

--
-- Table structure for table `fc_invoices`
--

CREATE TABLE `fc_invoices` (
  `invoiceid` int(11) NOT NULL,
  `invoiceno` varchar(30) NOT NULL,
  `invoicedate` int(11) NOT NULL,
  `invoicestatus` varchar(15) NOT NULL,
  `paymentmethod` varchar(10) NOT NULL,
  `paypaltransactionid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_invoices`
--

INSERT INTO `fc_invoices` (`invoiceid`, `invoiceno`, `invoicedate`, `invoicestatus`, `paymentmethod`, `paypaltransactionid`) VALUES
(1, 'INV181', 1594106839, 'Completed', 'Braintree', ''),
(2, 'INV281', 1594106891, 'Completed', 'Braintree', ''),
(3, 'INV381', 1594106941, 'Completed', 'Braintree', ''),
(4, 'INV481', 1594106969, 'Completed', 'COD', ''),
(5, 'INV589', 1594107962, 'Completed', 'COD', ''),
(6, 'INV689', 1594107975, 'Completed', 'COD', ''),
(7, 'INV789', 1594107991, 'Completed', 'COD', ''),
(8, 'INV889', 1594108006, 'Completed', 'COD', ''),
(9, 'INV989', 1594108036, 'Completed', 'COD', ''),
(10, 'INV1089', 1594108052, 'Completed', 'COD', ''),
(11, 'INV1189', 1594108099, 'Completed', 'Braintree', ''),
(12, 'INV1289', 1594108133, 'Completed', 'Braintree', ''),
(13, 'INV1389', 1594108168, 'Completed', 'Braintree', ''),
(14, 'INV1489', 1594108211, 'Completed', 'Braintree', ''),
(15, 'INV1589', 1594108586, 'Completed', 'Braintree', ''),
(16, 'INV1689', 1594108599, 'Completed', 'COD', ''),
(17, 'INV1789', 1594108613, 'Completed', 'COD', ''),
(18, 'INV1889', 1594108624, 'Completed', 'COD', ''),
(19, 'INV1989', 1594108636, 'Completed', 'COD', ''),
(20, 'INV2089', 1594108681, 'Completed', 'Braintree', ''),
(21, 'INV2189', 1594108695, 'Completed', 'COD', ''),
(22, 'INV2289', 1594108711, 'Completed', 'COD', ''),
(23, 'INV2389', 1594108741, 'Completed', 'Braintree', ''),
(24, 'INV24157', 1594112648, 'Completed', 'COD', ''),
(25, 'INV25157', 1594117370, 'Completed', 'Braintree', ''),
(26, 'INV26157', 1594117808, 'Completed', 'COD', ''),
(27, 'INV27157', 1594118405, 'Completed', 'COD', ''),
(28, 'INV28157', 1594118834, 'Completed', 'COD', ''),
(29, 'INV29157', 1594119105, 'Completed', 'COD', ''),
(30, 'INV30157', 1594122316, 'Completed', 'COD', ''),
(31, 'INV3189', 1594127562, 'Completed', 'COD', ''),
(32, 'INV3289', 1594130658, 'Completed', 'COD', ''),
(33, 'INV3370', 1607097782, 'Completed', 'credit_car', '07s4pmkw'),
(34, 'INV34161', 1607099975, 'Completed', 'credit_car', 'nq1mnedx'),
(35, 'INV3570', 1608101189, 'Completed', 'COD', ''),
(36, 'INV3670', 1608101389, 'Completed', 'COD', ''),
(37, 'INV3770', 1608101639, 'Completed', 'COD', ''),
(38, 'INV3870', 1608106235, 'Completed', 'COD', ''),
(39, 'INV39171', 1608112496, 'Completed', 'COD', ''),
(40, 'INV40162', 1608116578, 'Completed', 'COD', ''),
(41, 'INV41171', 1608117651, 'Completed', 'COD', ''),
(42, 'INV42171', 1608117984, 'Completed', 'COD', ''),
(43, 'INV43171', 1608121523, 'Completed', 'COD', ''),
(44, 'INV44171', 1608121772, 'Completed', 'COD', ''),
(45, 'INV45171', 1608122474, 'Completed', 'COD', ''),
(46, 'INV46171', 1608526237, 'Completed', 'credit_car', '0v2rdznr'),
(47, 'INV47171', 1608526922, 'Completed', 'credit_car', '9nfxdtpn'),
(48, 'INV48171', 1608527233, 'Completed', 'credit_car', 'ejhbds8k'),
(49, 'INV49171', 1608527353, 'Completed', 'credit_car', 'gtfds9tc'),
(50, 'INV50171', 1608527529, 'Completed', 'COD', ''),
(51, 'INV51171', 1608527859, 'Completed', 'credit_car', 'aehq7009'),
(52, 'INV52162', 1608528418, 'Completed', 'credit_car', 'frv6r1qp'),
(53, 'INV53162', 1608528549, 'Completed', 'credit_car', 'hcecrcv7'),
(54, 'INV54171', 1608528629, 'Completed', 'credit_car', 'rpgrshzw'),
(55, 'INV55162', 1608528846, 'Completed', 'credit_car', 'h6tbva2t'),
(56, 'INV56171', 1608528974, 'Completed', 'credit_car', 'mw16ge9h'),
(57, 'INV57171', 1608529987, 'Completed', 'credit_car', '6by4fbkf'),
(58, 'INV58162', 1608530130, 'Completed', 'credit_car', 'b0kk2hn5'),
(59, 'INV59162', 1608530295, 'Completed', 'credit_car', 'aqfhny0t'),
(60, 'INV60162', 1608530482, 'Completed', 'credit_car', 'p1qmsdvb'),
(61, 'INV61171', 1608530602, 'Completed', 'credit_car', '60ecxyny'),
(62, 'INV62171', 1608530764, 'Completed', 'credit_car', '457ydqp7'),
(63, 'INV63171', 1608530833, 'Completed', 'credit_car', 'm946f6em'),
(64, 'INV64174', 1608537615, 'Completed', 'credit_car', '2y4myky7'),
(65, 'INV65176', 1608548212, 'Completed', 'credit_car', 'ge86z8p6'),
(66, 'INV66176', 1608550442, 'Refunded', 'credit_car', 'g327nw30'),
(67, 'INV67176', 1608551191, 'Completed', 'credit_car', '00n53acx'),
(68, 'INV68179', 1608612264, 'Completed', 'credit_car', 'pyt8p7az'),
(69, 'INV69179', 1608612829, 'Completed', 'credit_car', 'ajmeq6wq'),
(70, 'INV70179', 1608619172, 'Completed', 'credit_car', '7rxzdfe9'),
(71, 'INV71179', 1608619345, 'Completed', 'credit_car', '0669y9ts'),
(72, 'INV72180', 1608619792, 'Completed', 'credit_car', 'dvs8x65x'),
(73, 'INV73180', 1608621997, 'Completed', 'credit_car', 'ad8v7cxk'),
(74, 'INV74180', 1608623410, 'Completed', 'COD', ''),
(75, 'INV75178', 1608624523, 'Completed', 'credit_car', '30qgbdk9'),
(76, 'INV76183', 1608624542, 'Completed', 'credit_car', '14cnxm70'),
(77, 'INV77180', 1608701959, 'Completed', 'credit_car', '3jm37hdd'),
(78, 'INV78180', 1608702937, 'Completed', 'credit_car', 'nty68h21'),
(79, 'INV79171', 1608706814, 'Completed', 'COD', ''),
(80, 'INV80178', 1608708707, 'Completed', 'COD', ''),
(81, 'INV81178', 1608709172, 'Completed', 'credit_car', '4qkgats2'),
(82, 'INV82180', 1608710092, 'Completed', 'credit_car', 'bx1g3wvv'),
(83, 'INV83184', 1608710663, 'Completed', 'credit_car', 'gvww8j0z'),
(84, 'INV84186', 1608711091, 'Completed', 'credit_car', '3wxgk5a1'),
(85, 'INV85187', 1608711142, 'Completed', 'COD', ''),
(86, 'INV86186', 1608711320, 'Completed', 'COD', ''),
(87, 'INV87188', 1608711503, 'Completed', 'credit_car', '8xpd01kk'),
(88, 'INV88186', 1608716437, 'Completed', 'credit_car', '4gmr1y88'),
(89, 'INV89162', 1608718829, 'Completed', 'COD', ''),
(90, 'INV90186', 1608720045, 'Completed', 'COD', ''),
(91, 'INV91171', 1608721242, 'Refunded', 'COD', ''),
(92, 'INV92171', 1608724835, 'Completed', 'credit_car', 'q8fee7t4'),
(93, 'INV93193', 1608823359, 'Completed', 'credit_car', 'hb0adxhw'),
(94, 'INV94193', 1608823639, 'Completed', 'credit_car', 'kv55z1j5'),
(95, 'INV95192', 1608824517, 'Refunded', 'credit_car', '5mbsjnsz'),
(96, 'INV96192', 1608825091, 'Refunded', 'COD', ''),
(97, 'INV97192', 1608825853, 'Completed', 'credit_car', '1mjbqdes'),
(98, 'INV98192', 1608827046, 'Refunded', 'credit_car', 'a9ntm170'),
(99, 'INV99192', 1608960849, 'Completed', 'COD', ''),
(100, 'INV100186', 1608961504, 'Completed', 'credit_car', '2s7j2jtv'),
(101, 'INV101186', 1608964095, 'Completed', 'credit_car', 'rngd2gy3'),
(102, 'INV102186', 1608965872, 'Completed', 'credit_car', '4tcg5ve7'),
(103, 'INV103186', 1608966909, 'Completed', 'credit_car', '307vwyc4'),
(104, 'INV104186', 1608967432, 'Completed', 'credit_car', '2k1ksyt3'),
(105, 'INV105194', 1608973315, 'Completed', 'credit_car', 'b3fjcjsq'),
(106, 'INV195', 1608978259, 'Completed', 'credit_car', ''),
(107, 'INV195', 1608978899, 'Completed', 'credit_car', ''),
(108, 'INV108196', 1608981475, 'Completed', 'credit_car', 'mxayrxeh'),
(109, 'INV109197', 1608982174, 'Completed', 'credit_car', '8cd590ke'),
(110, 'INV110197', 1608982453, 'Completed', 'credit_car', 'm3aw8ntt'),
(111, 'INV111197', 1608982918, 'Completed', 'credit_car', '0jzgzzbj'),
(112, 'INV112197', 1608983388, 'Refunded', 'credit_car', 'qvtjmvx3'),
(113, 'INV197', 1608984522, 'Completed', 'credit_car', ''),
(114, 'INV114183', 1608985117, 'Refunded', 'credit_car', '1pqy32ey'),
(115, 'INV115197', 1608986022, 'Completed', 'credit_car', '42wwze8v'),
(116, 'INV116183', 1608986277, 'Completed', 'credit_car', '76dgssc7'),
(117, 'INV117192', 1608986442, 'Completed', 'COD', ''),
(118, 'INV118197', 1608986660, 'Completed', 'COD', ''),
(119, 'INV119193', 1608987577, 'Refunded', 'credit_car', 'g16z72ck'),
(120, 'INV120193', 1608987705, 'Completed', 'COD', ''),
(121, 'INV121185', 1608988535, 'Completed', 'credit_car', 'a73h2ejq'),
(122, 'INV122199', 1608988644, 'Completed', 'COD', ''),
(123, 'INV123193', 1608989246, 'Refunded', 'credit_car', '3d8gfqt7'),
(124, 'INV124182', 1608989297, 'Completed', 'credit_car', 'p89xvvt8'),
(125, 'INV125193', 1608989375, 'Completed', 'COD', ''),
(126, 'INV126199', 1608990249, 'Completed', 'credit_car', 'pwx6zvn9'),
(127, 'INV127201', 1608991690, 'Completed', 'credit_car', '77xhp6yr'),
(128, 'INV128205', 1609393783, 'Completed', 'credit_car', '5rb60a16'),
(129, 'INV129206', 1609400258, 'Completed', 'credit_car', 'qzrcenjd'),
(130, 'INV130207', 1609402148, 'Completed', 'credit_car', '5mab8rjx'),
(131, 'INV131207', 1609403324, 'Completed', 'credit_car', '2zcw1bga'),
(132, 'INV132207', 1609404009, 'Completed', 'credit_car', 'jpsnxkes'),
(133, 'INV133207', 1609404781, 'Completed', 'credit_car', 'bpjwhzc3'),
(134, 'INV134207', 1609405199, 'Completed', 'credit_car', 'ehnf71sb'),
(135, 'INV135208', 1609405800, 'Completed', 'credit_car', 'eqq4z718'),
(136, 'INV136210', 1609762401, 'Completed', 'credit_car', '833tx1gs'),
(137, 'INV210', 1609762936, 'Completed', 'credit_car', ''),
(138, 'INV138210', 1609766464, 'Refunded', 'credit_car', '89ay0cgt'),
(139, 'INV139210', 1609767407, 'Refunded', 'credit_car', 'fvhw4xbb'),
(140, 'INV140210', 1609822326, 'Completed', 'credit_car', 'gdddnz0j'),
(141, 'INV14170', 1614355988, 'Completed', 'credit_car', 'c6433ns6'),
(142, 'INV14270', 1614657590, 'Completed', 'credit_car', '5me8g7az'),
(143, 'INV143214', 1617358273, 'Completed', 'credit_car', 'gh4v8evx'),
(144, 'INV144214', 1617358428, 'Completed', 'credit_car', '4xnpw3mf'),
(145, 'INV145214', 1617359353, 'Completed', 'credit_car', '37w9gxs8'),
(146, 'INV146214', 1617359494, 'Completed', 'credit_car', 'kbfcvmz7'),
(147, 'INV14770', 1617359791, 'Completed', 'credit_car', '7d10v1p9'),
(148, 'INV14870', 1617361829, 'Completed', 'credit_car', 'cpsaky7h'),
(149, 'INV14970', 1617362364, 'Completed', 'credit_car', 'bhkycss3'),
(150, 'INV150214', 1617362505, 'Completed', 'credit_car', '09q81dwx'),
(151, 'INV15170', 1617365023, 'Completed', 'credit_car', '75jsdkre'),
(152, 'INV152216', 1617624328, 'Completed', 'credit_car', '7feaafmm'),
(153, 'INV153216', 1617624370, 'Completed', 'COD', ''),
(154, 'INV216', 1617626041, 'Completed', 'credit_car', ''),
(155, 'INV15570', 1617796640, 'Completed', 'credit_car', '9r0tm19p'),
(156, 'INV15670', 1617799205, 'Completed', 'COD', ''),
(157, 'INV15770', 1618207595, 'Completed', 'COD', ''),
(158, 'INV158214', 1618230463, 'Completed', 'COD', ''),
(159, 'INV15970', 1618232159, 'Completed', 'COD', ''),
(160, 'INV160217', 1618235519, 'Completed', 'credit_car', 'a2ngc11h'),
(161, 'INV161216', 1618235869, 'Completed', 'credit_car', '3enxxjdx'),
(162, 'INV162217', 1618318070, 'Completed', 'COD', ''),
(163, 'INV16370', 1618376243, 'Completed', 'COD', ''),
(164, 'INV164216', 1618380150, 'Completed', 'COD', ''),
(165, 'INV165216', 1618380291, 'Completed', 'COD', ''),
(166, 'INV166216', 1618380415, 'Completed', 'COD', ''),
(167, 'INV167217', 1618383856, 'Completed', 'credit_car', 'd9mrkg2p'),
(168, 'INV168217', 1618384046, 'Completed', 'credit_car', 'j9zq8s4r'),
(169, 'INV16970', 1618559487, 'Completed', 'credit_car', 'egt85281'),
(170, 'INV17070', 1618581371, 'Completed', 'credit_car', '8zdffmpj'),
(171, 'INV17170', 1618816065, 'Completed', 'credit_car', 'kmajkgay'),
(172, 'INV17270', 1618834908, 'Completed', 'Braintree', ''),
(173, 'INV173223', 1619615600, 'Completed', 'credit_car', 'fks4ykt4'),
(174, 'INV17470', 1619618951, 'Completed', 'credit_car', 'fs4e9gbz'),
(175, 'INV17570', 1619686975, 'Completed', 'Braintree', ''),
(176, 'INV17670', 1619687824, 'Completed', 'Braintree', ''),
(177, 'INV177224', 1619702377, 'Completed', 'Braintree', ''),
(178, 'INV178224', 1619703299, 'Completed', 'Braintree', ''),
(179, 'INV179224', 1619704186, 'Completed', 'Braintree', ''),
(180, 'INV180223', 1619704933, 'Completed', 'COD', ''),
(181, 'INV181223', 1619705344, 'Completed', 'COD', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_ipntracks`
--

CREATE TABLE `fc_ipntracks` (
  `id` int(11) NOT NULL,
  `post` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fc_itemfavs`
--

CREATE TABLE `fc_itemfavs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_itemfavs`
--

INSERT INTO `fc_itemfavs` (`id`, `user_id`, `item_id`, `created_on`) VALUES
(2, 81, 6, '2020-07-07 07:21:40'),
(3, 81, 8, '2020-07-07 07:21:41'),
(4, 81, 10, '2020-07-07 07:21:41'),
(5, 81, 29, '2020-07-07 07:21:47'),
(6, 81, 34, '2020-07-07 07:21:48'),
(7, 81, 38, '2020-07-07 07:21:49'),
(8, 81, 43, '2020-07-07 07:21:51'),
(9, 81, 41, '2020-07-07 07:21:52'),
(10, 81, 30, '2020-07-07 07:21:54'),
(11, 89, 6, '2020-07-07 13:06:09'),
(12, 89, 8, '2020-07-07 13:06:10'),
(13, 89, 21, '2020-07-07 13:13:11'),
(14, 89, 24, '2020-07-07 13:13:12'),
(15, 89, 20, '2020-07-07 13:13:13'),
(16, 89, 19, '2020-07-07 13:13:13'),
(17, 89, 31, '2020-07-07 13:13:15'),
(18, 89, 32, '2020-07-07 13:13:16'),
(19, 89, 33, '2020-07-07 13:13:17'),
(20, 89, 46, '2020-07-07 13:13:43'),
(21, 89, 47, '2020-07-07 13:13:44'),
(25, 171, 8, '2020-12-16 12:24:05'),
(26, 162, 59, '2020-12-18 10:57:30'),
(27, 171, 59, '2020-12-21 04:49:58'),
(28, 176, 62, '2020-12-21 11:23:43'),
(29, 179, 64, '2020-12-22 04:53:13'),
(32, 180, 66, '2020-12-22 07:49:56'),
(33, 182, 67, '2020-12-26 12:21:08'),
(35, 211, 89, '2021-01-05 07:50:26'),
(36, 202, 19, '2021-01-06 09:33:44'),
(86, 70, 92, '2021-04-01 12:58:35'),
(103, 216, 63, '2021-04-05 12:34:39'),
(104, 216, 65, '2021-04-05 12:34:41'),
(115, 216, 7, '2021-04-05 12:47:20'),
(116, 216, 97, '2021-04-05 12:59:05'),
(130, 70, 71, '2021-04-07 13:04:05'),
(273, 70, 100, '2021-04-09 10:08:16'),
(275, 70, 97, '2021-04-09 10:08:21'),
(283, 70, 83, '2021-04-09 10:09:44'),
(291, 70, 87, '2021-04-09 10:14:39'),
(292, 70, 86, '2021-04-09 10:14:41'),
(296, 70, 67, '2021-04-09 10:14:57'),
(350, 70, 58, '2021-04-09 11:24:53'),
(390, 70, 22, '2021-04-09 12:27:23'),
(392, 70, 36, '2021-04-09 12:27:26'),
(393, 70, 43, '2021-04-09 12:27:27'),
(405, 70, 80, '2021-04-10 05:11:48'),
(410, 70, 84, '2021-04-10 12:53:26'),
(411, 70, 79, '2021-04-10 12:53:28'),
(413, 70, 11, '2021-04-10 12:55:47'),
(414, 70, 13, '2021-04-10 12:55:49'),
(415, 70, 15, '2021-04-10 12:55:54'),
(416, 70, 18, '2021-04-10 12:55:56'),
(417, 70, 14, '2021-04-10 12:55:58'),
(423, 70, 4, '2021-04-12 04:24:25'),
(428, 70, 31, '2021-04-12 04:45:07'),
(463, 217, 95, '2021-04-12 12:29:11'),
(464, 217, 90, '2021-04-12 12:29:13'),
(465, 217, 60, '2021-04-12 12:29:14'),
(467, 214, 63, '2021-04-12 12:44:31'),
(470, 217, 33, '2021-04-12 12:48:01'),
(479, 217, 93, '2021-04-12 13:20:12'),
(481, 217, 87, '2021-04-12 13:21:12'),
(483, 217, 85, '2021-04-12 13:21:20'),
(484, 216, 93, '2021-04-12 13:33:29'),
(485, 217, 102, '2021-04-12 13:50:30'),
(486, 217, 66, '2021-04-12 14:28:00'),
(489, 217, 69, '2021-04-12 14:28:32'),
(497, 217, 61, '2021-04-13 08:14:59'),
(498, 217, 6, '2021-04-13 08:15:30'),
(499, 217, 19, '2021-04-13 08:15:38'),
(501, 216, 90, '2021-04-14 06:04:26'),
(502, 216, 98, '2021-04-14 06:09:26'),
(555, 70, 26, '2021-04-16 12:13:57'),
(557, 70, 12, '2021-04-16 12:14:00'),
(559, 70, 33, '2021-04-16 12:14:16'),
(560, 70, 25, '2021-04-16 12:14:18'),
(566, 70, 103, '2021-04-16 14:01:02'),
(567, 70, 98, '2021-04-16 14:04:58'),
(573, 70, 6, '2021-04-21 06:28:35'),
(574, 70, 29, '2021-04-21 07:18:20'),
(575, 70, 19, '2021-04-23 12:03:06'),
(577, 70, 91, '2021-04-28 06:51:22'),
(578, 70, 95, '2021-04-29 09:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `fc_itemlists`
--

CREATE TABLE `fc_itemlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lists` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `list_item_id` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `user_create_list` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fc_itemlists`
--

INSERT INTO `fc_itemlists` (`id`, `user_id`, `lists`, `list_item_id`, `user_create_list`, `created_on`) VALUES
(1, 211, 'list', '[]', 1, '2021-01-05 07:50:35'),
(2, 70, 'list1', '[\"95\",\"19\"]', 1, '2021-04-29 10:26:25'),
(3, 70, 'list2', '[\"95\",\"19\"]', 1, '2021-04-29 10:26:25'),
(4, 70, 'list3', '[]', 1, '2021-04-29 10:27:55'),
(5, 70, 'Men\'s Fashion', '[]', 0, '2021-04-29 10:28:06'),
(6, 70, 'Women\'s Fashion', '[]', 0, '2021-04-29 10:28:06'),
(7, 216, 'qwertyu', '[\"93\"]', 1, '2021-04-12 13:34:46'),
(8, 70, 'New', '[]', 1, '2021-04-29 10:28:06'),
(9, 70, 'dsd', '[]', 1, '2021-04-29 10:27:57'),
(10, 216, 'Jfsutssuu', '[\"93\"]', 1, '2021-04-12 13:34:43'),
(11, 217, 'QAWERTYUIKL', '[\"69\"]', 1, '2021-04-12 14:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `fc_itemposts`
--

CREATE TABLE `fc_itemposts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(25) NOT NULL,
  `site_url` tinytext NOT NULL,
  `item_color` varchar(200) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_itemreviews`
--

CREATE TABLE `fc_itemreviews` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `review_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `reviews` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ratings` float(10,1) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_itemreviews`
--

INSERT INTO `fc_itemreviews` (`id`, `userid`, `seller_id`, `itemid`, `orderid`, `review_title`, `reviews`, `ratings`, `status`, `date`) VALUES
(1, 89, 154, 3, 20, '', 'good super excellent ', 5.0, '0', '2020-07-07 08:52:09'),
(2, 89, 71, 19, 23, '', 'nice color and good quantity with losest cost. satisfies ????????????????', 4.5, '0', '2020-07-07 08:51:31'),
(3, 89, 71, 16, 15, '', 'nice color with comfortable fit', 5.0, '0', '2020-07-07 08:52:46'),
(4, 89, 71, 33, 14, '', 'good super super fast super ', 5.0, '0', '2020-07-07 08:53:17'),
(5, 89, 154, 34, 13, '', 'good product super quantity \n', 5.0, '0', '2020-07-07 08:53:53'),
(6, 89, 71, 10, 12, '', 'good color super product ', 3.0, '0', '2020-07-07 08:59:30'),
(7, 89, 71, 6, 5, '', 'nice design ', 4.5, '0', '2020-07-07 09:00:17'),
(8, 157, 155, 48, 24, '', '<p dir=\"ltr\">this is probably the most interesting book I\'ve read so far, the writing so the book is amazing and can be easily understand.</p>\n', 4.0, '0', '2020-07-07 09:11:01'),
(9, 157, 155, 46, 25, '', '<p dir=\"ltr\">this book is very useful for me.</p>\n', 3.0, '0', '2020-07-07 10:26:38'),
(10, 157, 155, 47, 26, '', '<p dir=\"ltr\">By understanding how the subconscious mind works, you can learn how dreams become reality. this book was very easy to understand. after read this book very useful for me.</p>\n', 4.0, '0', '2020-07-07 10:42:12'),
(11, 157, 155, 36, 27, '', '<p dir=\"ltr\">Gloves were toi tight for me .... it was really hard to put on. and even harder to take off.. else quality was fine.</p>\n', 3.0, '0', '2020-07-07 10:44:48'),
(12, 157, 155, 12, 28, '', '<p dir=\"ltr\">This Tummy trimmer is very durabme due to its double spring and good quality and very easy to use.</p>\n', 4.0, '0', '2020-07-07 10:49:23'),
(13, 157, 155, 25, 29, '', '<p dir=\"ltr\">This was the best and worth dumbbell ever found in any website. no damages found.</p>\n', 5.0, '0', '2020-07-07 10:55:19'),
(14, 157, 155, 55, 30, '', '<p dir=\"ltr\">Camera pixels quality is low but overall the budget the smartphone in low lrice3</p>\n', 3.0, '0', '2020-07-07 11:47:42'),
(15, 89, 155, 44, 16, '', 'how to stop worrying and start living kindle edition product is good and effective \n\nits very usefull', 4.5, '0', '2020-07-08 13:20:51'),
(16, 161, 71, 58, 34, '', 'Test reviewww', 2.5, '0', '2020-12-04 16:42:28'),
(17, 176, 175, 62, 65, '', 'good', 5.0, '0', '2020-12-21 11:01:48'),
(18, 205, 203, 76, 128, '', 'good good', 4.0, '0', '2020-12-31 06:26:26'),
(19, 206, 203, 77, 129, '', '', 4.0, '0', '2020-12-31 07:50:52'),
(20, 210, 209, 84, 136, '', '', 2.0, '0', '2021-01-04 13:09:14'),
(21, 70, 71, 6, 141, '', 'working', 1.0, '0', '2021-04-07 11:56:27'),
(22, 70, 71, 8, 38, '', 'kdsfjlkdjflkdsjflkdsjfldksf', 3.0, '0', '2021-03-01 12:55:02'),
(23, 70, 71, 90, 142, '', 'Felix felicis work', 4.5, '0', '2021-04-09 10:33:48'),
(24, 214, 215, 94, 143, '', 'Nice product', 5.0, '0', '2021-04-02 11:56:06'),
(26, 70, 215, 94, 151, '', 'good', 5.0, '0', '2021-04-07 11:36:22'),
(27, 216, 71, 6, 152, '', 'Testing..', 4.0, '0', '2021-04-05 15:00:26'),
(28, 217, 71, 102, 160, '', 'qwerer qwer qwer', 5.0, '0', '2021-04-12 14:05:48'),
(29, 216, 71, 102, 161, '', 'asdf asdfas dfasd', 5.0, '0', '2021-04-12 14:04:36'),
(30, 217, 71, 102, 167, '', 'asdfasdfadfasdf', 4.0, '0', '2021-04-14 07:06:13'),
(31, 217, 71, 6, 168, '', 'afdssdf asfasdfasfafs', 4.0, '0', '2021-04-14 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `fc_items`
--

CREATE TABLE `fc_items` (
  `id` int(11) NOT NULL,
  `skuid` text COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `item_title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `item_title_url` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `item_description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `recipient` text COLLATE utf8mb4_bin DEFAULT NULL,
  `occasion` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `avg_rating` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_sold` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `share_coupon` enum('no','yes') COLLATE utf8mb4_bin DEFAULT NULL,
  `share_discountAmount` int(11) DEFAULT NULL,
  `super_catid` int(11) NOT NULL,
  `sub_catid` int(11) NOT NULL,
  `ship_from_country` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `processing_time` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `processing_min` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `processing_max` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `processing_option` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `size_options` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('draft','publish','things') COLLATE utf8mb4_bin NOT NULL DEFAULT 'draft',
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `item_color` text COLLATE utf8mb4_bin NOT NULL,
  `item_color_method` int(11) NOT NULL,
  `fav_count` int(11) NOT NULL DEFAULT 0,
  `bm_redircturl` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `videourrl` text COLLATE utf8mb4_bin DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL,
  `report_flag` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `cod` enum('no','yes') COLLATE utf8mb4_bin NOT NULL,
  `dailydeal` enum('yes','no') COLLATE utf8mb4_bin NOT NULL,
  `discount_type` enum('daily','regular','no') COLLATE utf8mb4_bin NOT NULL,
  `dealdate` date NOT NULL,
  `discount` int(11) NOT NULL,
  `affiliate_commission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fc_items`
--

INSERT INTO `fc_items` (`id`, `skuid`, `user_id`, `shop_id`, `item_title`, `item_title_url`, `item_description`, `recipient`, `occasion`, `price`, `avg_rating`, `quantity`, `quantity_sold`, `category_id`, `share_coupon`, `share_discountAmount`, `super_catid`, `sub_catid`, `ship_from_country`, `currencyid`, `countryid`, `processing_time`, `processing_min`, `processing_max`, `processing_option`, `size_options`, `status`, `created_on`, `modified_on`, `item_color`, `item_color_method`, `fav_count`, `bm_redircturl`, `videourrl`, `featured`, `comment_count`, `report_flag`, `cod`, `dailydeal`, `discount_type`, `dealdate`, `discount`, `affiliate_commission`) VALUES
(1, '543211', 154, 84, 'Microsoft Surface Pro X 1876', 'microsoft-surface-pro-x-1876', '<p>Processor: Powered by Qualcomm, the new custom Microsoft SQ1 processor delivers multitasking laptop performance, long battery life, and fast LTE and Wi-Fi<br />Operating System: Pre-loaded Windows 10 Home with lifetime validity<br />Display: 13 inch 2880 x 1920 PixelSense display | Touchscreen enabled<br />Memory &amp; Storage : 8GB LPDDR4x RAM with Microsoft SQ1 Adreno 685 GPU Graphics| Storage: 128GB SSD</p>', NULL, NULL, 20000, '', 0, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:22:18', '2021-04-16 12:04:47', '[\"WHITE\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 10, NULL),
(2, '5745845', 154, 84, 'Mi 4A PRO 80 cm (32) HD', 'mi-4a-pro-80-cm-32-hd', '<p>There is no fun in watching your favourite movie or show on a TV where the display quality is poor. Now, boost the fun and watch them all in good and clear-quality on this 80 cm (32) Mi smart TV. Its HD Ready display can accentuate your viewing experience and make it better. You can even access video streaming apps on it and never run out of quality-content to watch and enjoy. It comes with 2 speakers that deliver powerful audio which lets you experience the environment of a cinema hall right in your bedroom or living room.</p>', NULL, NULL, 30000, '', 1, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:26:46', '2020-07-07 07:12:16', '[\"SILVER\",\"WHITE\",\"SKY_BLUE\",\"BROWN\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'regular', '0000-00-00', 10, NULL),
(3, '8766665', 154, 84, 'Huawei ERS-B19 Band 2 Classic Activity Tracker (Black)', 'huawei-ers-b19-band-2-classic-activity-tracker-black', '<p>Tracking and monitoring of daily activity information, including step count, calories burned and distance covered<br />Use Huawei Health App to connect the phone<br />Support for running and swimming<br />Support for breathing exercises<br />Sleep status monitoring and sleep data collection<br />Alarm notifications, including smart alarms and event alarms<br />Notifications supported include incoming calls, SMS messages, emails, calendar events, WhatsApp and other social media apps</p>', NULL, NULL, 56, '5', 0, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'draft', '2020-07-07 06:30:32', '2021-03-31 05:21:34', '[\"WHITE\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(4, '329847', 155, 85, 'Puma Men black sneakers', 'puma-men-black-sneakers', '<p>A pair of round-toe black sneakers, has regular styling, lace-up detail<br />Mesh upper<br />Cushioned footbed<br />Textured and patterned outsole<br />Warranty: 3 months<br />Warranty provided by brand/manufacturer</p>', NULL, NULL, 1399, '', 19, NULL, 8, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '{\"size\":{\"6\":\"6\",\"7\":\"7\"},\"unit\":{\"6\":9,\"7\":\"10\"},\"price\":{\"6\":\"1399\",\"7\":\"1399\"}}', 'publish', '2020-07-07 06:30:36', '2021-04-12 04:24:25', '[\"SILVER\",\"BROWN\",\"BLACK\",\"GOLD\",\"PURPLE\"]', 0, 1, '', '', 1, 0, ' ', 'yes', '', 'daily', '2020-07-07', 10, NULL),
(5, '458458545', 154, 84, 'boAt Airdopes 511V2 TWS', 'boat-airdopes-511v2-tws', '<p>For warranty and product related queries please contact us at +912249461882<br />Tap into the True Wireless connectivity via optimum Bluetooth V5.0 and rise into the vibes<br />It comes equipped with our IWP (Insta Wake N&rsquo; Pair) Technology that enables the earbuds to power on automatically and get connected as soon as you open the lid of the carry case.</p>', NULL, NULL, 5000, '', 1, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:34:25', '2021-04-09 12:20:10', '[\"WHITE\",\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(6, 'msdfss101', 71, 2, 'Men Self Design Formal Spread Shirt', 'men-self-design-formal-spread-shirt', '<p>Men Self Design Formal Spread Shirt</p>', NULL, NULL, 300, '3.4', 16, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"s\":\"s\",\"m\":\"m\",\"l\":\"l\",\"xl\":\"xl\"},\"unit\":{\"s\":\"0\",\"m\":6,\"l\":\"10\",\"xl\":\"0\"},\"price\":{\"s\":\"300\",\"m\":\"400\",\"l\":\"500\",\"xl\":\"600\"}}', 'publish', '2020-07-07 06:37:49', '2021-04-29 09:17:04', '[\"Pink\"]', 1, 4, '', '', 1, 0, ' ', 'yes', '', 'daily', '2021-04-07', 5, 12),
(7, '845854', 154, 84, 'Fire TV Stick streaming media', 'fire-tv-stick-streaming-media', '<p>best-selling streaming media player, with all-new Alexa Voice Remote (2nd Gen, released 2019).<br />Fire TV Stick is easy to setup and comes pre-registered to your Amazon account so you can just plug it in to your HDTV and enjoy favourite titles.<br />Use the dedicated power, volume and mute buttons to control compatible T</p>', NULL, NULL, 7666, '', -4, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:37:55', '2021-04-16 11:26:13', '[\"BLACK\",\"RED\",\"ORANGE\",\"BROWN\",\"PINK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(8, 'MCCCAS12', 71, 2, 'Men Checkered Casual Cut Away Shirt', 'men-checkered-casual-cut-away-shirt', '<p>Men Checkered Casual Cut Away Shirt</p>', NULL, NULL, 150, '3', 9, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"s\":\"s\",\"m\":\"m\",\"l\":\"l\"},\"unit\":{\"s\":0,\"m\":2,\"l\":7},\"price\":{\"s\":\"150\",\"m\":\"175\",\"l\":\"200\"}}', 'publish', '2020-07-07 06:39:24', '2021-04-26 06:01:52', '[\"PURPLE\",\"BLACK\",\"BROWN\",\"SKY_BLUE\",\"GOLD\"]', 0, 3, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, 10),
(9, '854845', 154, 84, 'EGATE i9 LED HD PROJECTOR (Black)', 'egate-i9-led-hd-projector-black', '<p>1 year warranty provided by the manufacturer from date of purchase Contact_us on: [ 1800 123 6847 ] for any warranty related issues<br />30000 hrs life long led lamp</p>', NULL, NULL, 9000, '', 1, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:39:55', '2021-04-12 11:44:39', '[\"WHITE\",\"BLACK\",\"SILVER\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(10, 'MPCSS12', 71, 2, 'Men Printed Casual Spread Shirt', 'men-printed-casual-spread-shirt', '<p>Men Printed Casual Spread Shirt</p>', NULL, NULL, 513, '3', 18, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2020-07-07 06:41:00', '2021-04-09 12:58:48', '[\"PURPLE\",\"GOLD\",\"BLACK\"]', 0, 1, '', '', 1, 0, '[\"162\",\"162\",\"162\",\"162\"]', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(11, '48458', 154, 84, 'Mini Slim Stylist Multimedia Keyboard', 'mini-slim-stylist-multimedia-keyboard', '<p>It\'s a great of style, quality and technology. With user friendly contours and 87 soft keys, this keyboard gives you a relaxing work experience. It uses the membrane technology that gives silent key operations, cushioning effect to your fingers and hence adds comfort for prolonged working. Multimedia Mini keyboard does not require any driver and hence can be installed to any desktop or laptop.<br />&nbsp;</p><p>&nbsp;</p>', NULL, NULL, 2000, '', 0, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:42:38', '2021-04-10 12:55:47', '[\"SILVER\",\"WHITE\",\"PURPLE\",\"GOLD\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(12, '7987897', 155, 85, 'Eranqo Double Spring Tummy Trimmer', 'eranqo-double-spring-tummy-trimmer', '<p>Eranqo Tummy Trimmer &amp; Hand Gripper in One :The ab exerciser targets specific muscles of your body to build your fitness. Rowing movements of this exerciser trims and tones your abdominal muscles and strengthens your arms, legs, hips and thighs. It burns extra calories, melts away your abdominal fat around your waist to give you a flat and firm stomach. The exerciser also functions as a hand gripper. Grip the inner handle and pull. It exercises your arms, wrists, fingers, forearms simultaneous</p>', NULL, NULL, 999, '4', 11, NULL, 8, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:43:13', '2021-04-16 12:14:00', '[\"WHITE\",\"BROWN\",\"SILVER\",\"PURPLE\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 50, NULL),
(13, 'Tshirt120', 71, 2, 'Solid Men Round Neck Dark Blue, Black, Grey T-Shirt', 'solid-men-round-neck-dark-blue-black-grey-t-shirt', '<p>Solid Men Round Neck Dark Blue, Black, Grey T-Shirt</p>', NULL, NULL, 120, '', 40, NULL, 1, 'no', 0, 11, 18, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"s\":\"s\",\"m\":\"m\",\"l\":\"l\",\"xl\":\"xl\"},\"unit\":{\"s\":\"10\",\"m\":\"10\",\"l\":\"10\",\"xl\":\"10\"},\"price\":{\"s\":\"120\",\"m\":\"140\",\"l\":\"160\",\"xl\":\"180\"}}', 'publish', '2020-07-07 06:44:38', '2021-04-10 12:55:49', '[\"PURPLE\",\"BLACK\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(14, 'Tshirt140', 71, 2, 'Solid Men Round Neck Grey T-Shirt', 'solid-men-round-neck-grey-t-shirt', '<p>Solid Men Round Neck Grey T-Shirt</p>', NULL, NULL, 170, '', 20, NULL, 1, 'no', 0, 11, 18, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"s\":\"s\",\"m\":\"m\"},\"unit\":{\"s\":\"10\",\"m\":\"10\"},\"price\":{\"s\":\"170\",\"m\":\"200\"}}', 'publish', '2020-07-07 06:45:43', '2021-04-10 12:55:58', '[\"BROWN\",\"WHITE\",\"BLACK\",\"PURPLE\",\"GOLD\"]', 0, 1, '', '', 1, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(15, '37347347', 154, 84, 'Wood TV Entertainment Unit  (Finish Color - Walnut)', 'wood-tv-entertainment-unit-finish-color--walnut', '<p>This TV unit is made of 100% safe European Standard Particle Board Engineered wood, with reduced formaldehyde emissions.</p>', NULL, NULL, 2000, '', -1, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:46:45', '2021-04-13 08:23:33', '[\"BROWN\",\"SILVER\",\"BLACK\",\"GOLD\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(16, 'tshirt160', 71, 2, 'Striped Men Polo Neck Multicolor T-Shirt', 'striped-men-polo-neck-multicolor-t-shirt', '<p>Striped Men Polo Neck Multicolor T-Shirt</p>', NULL, NULL, 120, '5', 39, NULL, 1, 'no', 0, 11, 18, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"s\":\"s\",\"m\":\"m\",\"l\":\"l\",\"xl\":\"xl\"},\"unit\":{\"s\":9,\"m\":\"10\",\"l\":\"10\",\"xl\":\"10\"},\"price\":{\"s\":\"120\",\"m\":\"140\",\"l\":\"160\",\"xl\":\"180\"}}', 'draft', '2020-07-07 06:47:35', '2021-03-31 05:21:33', '[\"WHITE\",\"SILVER\",\"BROWN\",\"GOLD\",\"BLACK\"]', 0, 0, '', '', 1, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(17, '6556956', 154, 84, 'Telebrands Vinyl 3 Seater Inflatable Sofa  (Color - Black)', 'telebrands-vinyl-3-seater-inflatable-sofa-color--black', '<p><br />Air Lounger is a sofa cum bed that inflates into a full sized sofa that fits perfectly into any room in your home. Unfold it and instantly, it converts into an incredibly comfortable air mattress.</p>', NULL, NULL, 20000, '', 1, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:49:36', '2021-04-01 10:49:23', '[\"WHITE\",\"BROWN\",\"SILVER\",\"BLACK\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(18, '987897', 155, 85, 'AURION HANDGRIP1040 Adjustable Hand Grip', 'aurion-handgrip1040-adjustable-hand-grip', '<p>Increase strengthen your finger wrist and forearm, strengthen your grip.<br />Improve dexterity and flexibility, build muscularity, prevent hand injury.<br />Develop endurance and hand coordination.<br />Ergonomic design fits all hand sizes - for men, women, seniors, kids.</p>', NULL, NULL, 199, '', 13, NULL, 8, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:49:55', '2021-04-10 12:55:56', '[\"WHITE\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(19, 'TRP150', 71, 2, 'Solid Men Grey Track Pants', 'solid-men-grey-track-pants', '<p>Solid Men Grey Track Pants</p>', NULL, NULL, 450, '4.5', 19, NULL, 1, 'no', 0, 12, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:49:57', '2021-04-23 12:03:06', '[\"WHITE\",\"GOLD\",\"BLACK\",\"SILVER\",\"PURPLE\"]', 0, 4, '', '', 1, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(20, 'SMBTP90', 71, 2, 'Solid Men Blue Track Pants', 'solid-men-blue-track-pants', '<p>Solid Men Blue Track Pants</p>', NULL, NULL, 200, '', 18, NULL, 1, 'no', 0, 12, 0, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2020-07-07 06:50:46', '2021-04-16 11:26:02', '[\"WHITE\",\"BLACK\",\"BROWN\"]', 0, 1, '', '', 1, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(21, 'BCODE21', 71, 2, 'Men Cargos', 'men-cargos', '<p>Men Cargos</p>', NULL, NULL, 20, '', 290, NULL, 1, 'no', 0, 12, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:51:34', '2021-04-16 11:30:16', '[\"WHITE\",\"BLACK\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(22, '8458', 154, 84, 'Microfiber Napkin P8G Green Napkins  (8 Sheets)', 'microfiber-napkin-p8g-green-napkins-8-sheets', '<p>ype: Cloth<br />Material: Microfiber<br />Color: Green<br />Theme: Plain</p>', NULL, NULL, 270, '', 1, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:51:40', '2021-04-09 12:27:23', '[\"GREEN\",\"WHITE\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(23, '7987933', 154, 84, 'Yale YDM 7116 MB Smart Door Lock', 'yale-ydm-7116-mb-smart-door-lock', '<p>1 Front Panel, 1 Back Panel, RF Cards, Lock Mounting Accessories, 2 Mechanical keys, 4 AA size Batteries, User Guide, Installation Manual, Bluetooth Module</p>', NULL, NULL, 2000, '', 1, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:54:26', '2020-07-07 07:12:03', '[\"WHITE\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(24, 'STR213', 71, 2, 'Paisley, Striped, Floral Print Daily Wear Georgette Saree', 'paisley-striped-floral-print-daily-wear-georgette-saree', '<p>Paisley, Striped, Floral Print Daily Wear Georgette Saree</p>', NULL, NULL, 290, '', 9, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:54:43', '2021-04-16 11:30:10', '[\"WHITE\",\"BROWN\",\"GOLD\",\"PURPLE\",\"SKY_BLUE\"]', 0, 1, '', '', 1, 0, ' ', 'no', '', 'daily', '2021-04-02', 33, NULL),
(25, '348374', 155, 85, 'KORE DM-HEXA-COMBO16 Dumbbells Kits', 'kore-dm-hexa-combo16-dumbbells-kits', '<p>7.5kg x 2 hexa dumbbells<br />A combination of gym equipment for the perfect workout<br />Highly durable and long lasting</p>', NULL, NULL, 2765, '5', 5, NULL, 8, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:54:54', '2021-04-16 12:14:18', '[\"WHITE\",\"BROWN\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(26, 'Silk20', 71, 2, 'Checkered Fashion Cotton Silk Saree', 'checkered-fashion-cotton-silk-saree', '<p>Checkered Fashion Cotton Silk Saree</p>', NULL, NULL, 999, '', 5, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:55:37', '2021-04-16 12:13:57', '[\"WHITE\",\"BROWN\",\"GOLD\",\"BLACK\"]', 0, 1, '', '', 1, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 5, NULL),
(27, '34774437', 154, 84, 'Retail Paratpar Digital Black Clock', 'retail-paratpar-digital-black-clock', '<p>Digital Nightlights Temperature Battery Operated Optically Controlled Liquid Crystal Alarm Clock. Large lcd displays time, calendar, temperature, battery operated alarm clock -- without thinking about power goes out and wires, it can be placed whatever room you need, perfect for travel and beside use. Requires 3 aaa zinc-carbon batteries.</p>', NULL, NULL, 2000, '', 1, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:56:22', '2020-07-07 07:11:59', '[\"WHITE\",\"BLACK\",\"BROWN\",\"SILVER\"]', 0, 0, '', '', 0, 0, ' ', 'no', '', 'daily', '2020-07-08', 34, NULL),
(28, 'COTSILK290', 71, 2, 'Woven Fashion Cotton Silk Saree', 'woven-fashion-cotton-silk-saree', '<p>Woven Fashion Cotton Silk Saree</p>', NULL, NULL, 945, '', 4, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:56:32', '2021-04-16 12:14:02', '[\"WHITE\",\"BROWN\",\"BLACK\",\"GOLD\"]', 0, 0, '', '', 1, 0, '[\"70\"]', 'yes', 'yes', 'regular', '0000-00-00', 10, NULL),
(29, '84434343', 154, 84, 'Garnier Skin Naturals Sakura White Sheet Mask', 'garnier-skin-naturals-sakura-white-sheet-mask', '<p>Garnier introduces a new generation of face masks for women that infuses skin with 1 week of serum with 1 mask. Garnier Serum Sheet Masks gives your skin Super Hydration in just 15 mins and brightens it instantly.</p>', NULL, NULL, 6000, '', 1, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:57:55', '2021-04-21 07:18:20', '[\"SILVER\",\"WHITE\",\"PINK\",\"PURPLE\"]', 0, 2, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(30, '3q6236', 154, 84, 'The Man Company Total De-Tan Regime', 'the-man-company-total-de-tan-regime', '<p>Charcoal Face Wash - One of the most annoying things about the dirt and oil is that they settle down in the skin pores and thus, cannot be removed with a normal wash. The dirt and excess oil then go on to breed the bacteria that results into pimples. Hence, it is recommended to use charcoal face wash for oily</p>', NULL, NULL, 3636, '', 1, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 06:59:12', '2021-04-12 04:45:11', '[\"BLACK\",\"BROWN\",\"WHITE\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(31, 'UA32T4340AKXXL', 71, 2, 'Samsung 80cm (32 inch) HD Ready LED Smart TV', 'samsung-80cm-32-inch-hd-ready-led-smart-tv', '<p>Samsung 80cm (32 inch) HD Ready LED Smart TV</p>', NULL, NULL, 2543, '', 20, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '3d', NULL, NULL, NULL, '{\"size\":{\"32inc\":\"32inc\",\"40\":\"40\"},\"unit\":{\"32inc\":\"10\",\"40\":\"10\"},\"price\":{\"32inc\":\"2543\",\"40\":\"4500\"}}', 'publish', '2020-07-07 07:00:08', '2021-04-12 04:45:07', '[\"BROWN\",\"BLACK\",\"SILVER\",\"WHITE\",\"GOLD\"]', 0, 2, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(32, 'Mi4Acm100', 71, 2, 'Mi 4A 100 cm (40)', 'mi-4a-100-cm-40', '<p>Mi 4A 100 cm (40) Full HD LED Smart Android TV With Google Data Saver</p>', NULL, NULL, 2000, '', 20, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:01:13', '2021-04-12 04:47:06', '[\"BLACK\",\"WHITE\",\"SILVER\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(33, 'LEDSMRRELME', 71, 2, 'Realme 108cm (43 inch)', 'realme-108cm-43-inch', '<p>Realme 108cm (43 inch) Full HD LED Smart Android TV (TV 43) #JustHere</p>', NULL, NULL, 4500, '5', 8, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '3d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:02:12', '2021-04-16 12:14:16', '[\"WHITE\",\"GOLD\",\"BROWN\",\"SILVER\",\"BLACK\"]', 0, 3, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(34, '8548545', 154, 84, 'Women Beauty Care Radiance/Cleanser Instant Glow', 'women-beauty-care-radiancecleanser-instant-glow', '<p>Nutriglow Cosmetics manufactures products to enhance the face, body, and hair Remove your blemishes and superficial pigmentation with Nutriglow Wine Facial Kit. Containing all the ingredients that makes your skin look radiant and refreshed, this kit tightens the skin, reduces wrinkles and lightens all the age spots. You can now improve your skin complexion, and also prevent pimples and blemishes with this kit. Key Benefits : Helps in diminishing the bacteria, thus improving the acne &amp; drying out the excessive oil It deep cleanses, tones &amp; nourishes the skin. Makes the skin blemish free and glowing. this pure and natural face wash cleanses skin and washes away dead &amp; dull skin cells to reveal brighter and glowing skin. 2.) Toner helps to remove excessive oil, dirt, tightens the pores, restore skins natural pH, provides radiance and leaves skin revitalized.</p>', NULL, NULL, 6555, '5', 0, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:02:23', '2020-07-07 08:53:53', '[\"WHITE\",\"BROWN\",\"BLACK\",\"SILVER\",\"PURPLE\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(35, '43UM7290PTF', 71, 2, 'LG 108cm (43 inch)', 'lg-108cm-43-inch', '<p>LG 108cm (43 inch) Ultra HD (4K) LED Smart TV (43UM7290PTF)</p>', NULL, NULL, 6000, '', 10, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '3d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:03:07', '2020-07-07 07:11:37', '[\"WHITE\",\"BLUE\",\"BLACK\",\"SKY_BLUE\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(36, '87687', 155, 85, 'Dee mannequin Leather Gym Gloves', 'dee-mannequin-leather-gym-gloves', '<p>Assures full protection to user with non slippery cushion surface in palm for weight lifting<br />Stretchable design fits most hand sizes</p>', NULL, NULL, 182, '3', 9, NULL, 8, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:03:42', '2021-04-09 12:27:26', '[\"WHITE\",\"BLACK\",\"GOLD\",\"SILVER\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(37, '43US', 71, 2, 'Vu Premium 108cm', 'vu-premium-108cm', '<p>Vu Premium 108cm (43 inch) Full HD LED Smart Android TV (43US)</p>', NULL, NULL, 5900, '', 20, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:03:59', '2021-02-24 12:01:31', '[\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(38, '87878666', 154, 84, 'Mamaearth Men\'s Refresh Oil Control', 'mamaearth-mens-refresh-oil-control', '<p><br />After a hard day of toiling at work, when you feel like you are all soiled up- you can count on me, mamaearth\'s refresh face wash, to help you truly relax. I contain activated charcoal that draws out impurities, oil and grime, leaving skin refreshed and clear. I go deep, absorbing the dirt out of your pores giving you a hydrated supple afterfeel. Enriched with walnut, i have exfoliating properties and help remove dead skin. Dermatologically tested and ph balanced, i will take good care of your skin. I contain no harmful chemicals like sles, pegs, parabens, phthalates or artificial fragrances. Get out of the shower ready to take over the world! I, Mamaearth&rsquo;s Shampoo &amp; Bodywash, recharge your senses and energise you to take on all that comes your way throughout the day. My earthy smell helps channel your inner energy and caffeine awakens your senses helping you be at the top of your game. Enriched with antimicrobial tea tree oil, I remove dry and dead skin cells leaving you all fresh and clean. Dermatologically tested and pH balanced, I even take good care of your skin. I contain no harmful chemicals like SLES, PEGs, Phthalates, Parabens or Artificial fragrances.</p>', NULL, NULL, 9000, '', 1, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:04:30', '2021-04-12 06:14:57', '[\"WHITE\",\"BLACK\",\"SILVER\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(39, '43CAUHDN', 71, 2, 'Nokia 108cm (43 inch) Ultra HD', 'nokia-108cm-43-inch-ultra-hd', '<p>Nokia 108cm (43 inch) Ultra HD (4K) LED Smart Android TV with Sound by JBL (43CAUHDN)</p>', NULL, NULL, 3199, '', 1, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '3d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:05:01', '2020-07-07 07:11:35', '[\"WHITE\",\"SKY_BLUE\",\"SILVER\",\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(40, '50S3G', 71, 2, 'Coocaa 127cm (50 inch) Ultra HD', 'coocaa-127cm-50-inch-ultra-hd', '<p>Coocaa 127cm (50 inch) Ultra HD (4K) LED Smart Android TV with HDR 10 (50S3G)</p>', NULL, NULL, 32100, '', 5, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:05:51', '2021-02-24 12:04:22', '[\"BLACK\",\"BROWN\",\"WHITE\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(41, '768768', 154, 84, 'Enchanteur Intense Moisture Cocoa Sensuelle Body Lotion  (250 ml)', 'enchanteur-intense-moisture-cocoa-sensuelle-body-lotion-250-ml', '<p>jjkhkjhkjjjhjkhk</p>', NULL, NULL, 890809, '', 1, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:06:35', '2021-04-12 06:14:59', '[\"SILVER\",\"WHITE\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(42, 'BLA49BU680', 71, 2, 'Blaupunkt 124cm (49 inch)', 'blaupunkt-124cm-49-inch', '<p>Blaupunkt 124cm (49 inch) Ultra HD (4K) LED Smart TV (BLA49BU680)</p>', NULL, NULL, 2100, '', 20, NULL, 4, 'no', 0, 13, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:06:48', '2020-07-07 07:11:34', '[\"BLACK\",\"BROWN\",\"WHITE\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(43, '897899', 154, 84, 'NIVEA MEN MEN Dark Spot Reduction Crme', 'nivea-men-men-dark-spot-reduction-crme', '<p>NIVEA MEN MEN Dark Spot Reduction Crme</p>', NULL, NULL, 90, '', 0, NULL, 5, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:08:45', '2021-04-09 12:27:27', '[\"WHITE\",\"BLACK\",\"SILVER\"]', 0, 2, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(44, '234234', 155, 85, 'How to Stop Worrying and Start Living Kindle Edition', 'how-to-stop-worrying-and-start-living-kindle-edition', '<p>This Book can change your future The common habit of worrying directly affects your work, money, personal relationships and family life. In this multi-million copy bestseller, the legendary self-help master, Dale Carnegie offers practical and easy to apply suggestions on how to lead a more positive and enjoyable life by breaking out of this destructive habit.</p>', NULL, NULL, 85, '4.5', 14, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:13:49', '2020-07-08 13:20:51', '[\"BROWN\",\"WHITE\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(45, '877678', 155, 85, 'Brain Building for Achievement Kindle Edition', 'brain-building-for-achievement-kindle-edition', '<p>&ldquo;&hellip;To be fit for any position a man requires a certain amount of knowledge or skill.<br />If he does not possess this &hellip; he should regard himself &hellip; as incomplete&hellip;&rdquo;<br />With the rapid movement from manual work to technical and mechanized<br />setting, the human brain needs a newer gear too</p>', NULL, NULL, 98, '', 20, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:15:26', '2021-04-12 11:45:40', '[\"PURPLE\",\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(46, '394873', 155, 85, 'The Art of Public Speaking Kindle Edition', 'the-art-of-public-speaking-kindle-edition', '<p>Training in public speaking is not a matter of externals, primarily; it is not a matter of imitation, fundamentally; it is not a matter of conformity to standards, at all. Public speaking is public utterance, public issuance, of the man himself.</p>', NULL, NULL, 132, '3', 13, NULL, 9, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:18:15', '2021-04-12 11:45:44', '[\"BLACK\",\"BROWN\",\"SILVER\",\"PURPLE\",\"GOLD\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(47, '982734798', 155, 85, 'The Power of Your Subconscious Mind', 'the-power-of-your-subconscious-mind', '<p>\"The Power of Your Subconscious Mind\" will open a world of success, happiness, prosperity, and peace for you. It is one of the most brilliant and beloved spiritual self-help works of all time which can help you heal yourself, banish your fears, sleep better, enjoy better relationships and just feel happier. The techniques are simple and results come quickly. You can improve your relationships, your finances, your physical well-being.</p>', NULL, NULL, 199, '4', 12, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:21:06', '2021-04-16 12:10:31', '[\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(48, '343245', 155, 85, 'The Alchemist Kindle Edition', 'the-alchemist-kindle-edition', '<p>Combining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations.</p>', NULL, NULL, 250, '4', 11, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:23:15', '2021-04-12 11:45:54', '[\"ORANGE\",\"BROWN\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(49, '32425', 155, 85, 'What Happened to Netaji', 'what-happened-to-netaji', '<p>From the best selling author of India&rsquo;s Biggest Cover-up In 2013, the Lucknow Bench of the Allahabad High Court described as &lsquo;genuine and based on relevant material&rsquo;, Anuj Dhar&rsquo;s writings regarding the controvey surrounding the fate of Subhas Chandra Bose So, what really happened to Netaji? What is the factual position with regard to the air crash that reportedly killed him in 1945? Is there any truth behind Subramaniun Swamy\'s belief that Netaji was killed in Soviet Russia at Jawaharlal Nehru\'s behest</p>', NULL, NULL, 559, '', 20, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:26:00', '2021-04-16 12:10:06', '[\"BLACK\",\"SILVER\",\"BROWN\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(50, '345346', 155, 85, 'OnePlus 7 Pro', 'oneplus-7-pro', '<p>Go beyond speed with \'OnePlus\' newest flagship with an unique full display, an industry leading triple camera and premium glass design.</p>', NULL, NULL, 52999, '', 18, NULL, 10, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:31:16', '2021-04-16 11:30:46', '[\"WHITE\",\"SILVER\",\"BLACK\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 19, NULL),
(51, '340925', 155, 85, 'Samsung Galaxy Z Flip (Gold, 8GB RAM, 256GB Storage)', 'samsung-galaxy-z-flip-gold-8gb-ram-256gb-storage', '<p>Samsung Galaxy Z flip 1st smartphone to have foldable glass with hole punch display and Galaxy Z Flip folds to be surprisingly small for an outstanding design that easily fits into your pocket, bag, or accessory.</p>', NULL, NULL, 70000, '', 17, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-07-07 07:34:59', '2021-04-19 12:22:14', '[\"BLACK\",\"BROWN\",\"WHITE\",\"PURPLE\",\"PINK\"]', 0, 0, '', '', 1, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 10, NULL),
(52, '897987', 155, 85, 'Redmi 8A Dual (Sea Blue, 3GB RAM, 64GB Storage)', 'redmi-8a-dual-sea-blue-3gb-ram-64gb-storage', '<p>Colour: Sea Blue | Size name:64 GB Take strikingly clear photos with the 13MP + 2MP AI dual camera. Capture the beauty of any scene, while the AI-powered portrait mode with Beautify blurs the background to create portraits that stand out. The octa-core processor takes operational efficiency to the next level which results in brilliant performance</p>', NULL, NULL, 8999, '', 20, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:38:38', '2020-07-07 11:44:36', '[\"WHITE\",\"SKY_BLUE\",\"BLUE\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(53, '329487', 155, 85, 'OPPO A11K (Flowing Silver, 2GB RAM, 32GB Storage)', 'oppo-a11k-flowing-silver-2gb-ram-32gb-storage', '<p>13MP+2MP AI Rear Dual Camera| 5MP Front Camera. 15.79 centimeters (6.22-inch) HD+ Waterdrop Screen display with 1520 x 720 pixel resolution. 4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.</p>', NULL, NULL, 8990, '', 15, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:41:23', '2021-04-01 13:07:10', '[\"WHITE\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(54, '97898', 155, 85, 'Vivo U10', 'vivo-u10', '<p>The Vivo U10 smartphone comes with 13MP+8MP+2MP AI triple rear camera, 8MP selfie camera, Qualcomm Snapdragon 665 Octa-core processor, 3GB RAM, 32GB internal memory expandable up to 256 GB, 16.15cm (6.35) Halo FullView Display, a massive 5000mAh battery with 18W Fast Charging, and much more.Resolution :1544 * 720 , Wi-Fi :WLAN 2.4G， WLAN 5.1G， WLAN 5.8G，WLAN Display. To take clear photos: Adjust the focus until the picture gets clear when shooting; Try to photograph with sufficient light; Do not shake when you are shooting; In low brightness, use Professional mode(Set S(Shutter speed) as 2-4 seconds) or Night mode(Some phones support it) to take photos. Meanwhile, please keep your phone stable(It is very important); When taking selfies in low brightness, turn on HDR mode(Some phones do not support it); In the dark, turn on Selfie Softlight, Smart Screen Flash or rear flash when taking photos; If the objects easily move on, you can go to Professional mode and adjust ISO to the larger value, then touch the Shutter button</p>', NULL, NULL, 10990, '', 20, NULL, 10, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:44:39', '2020-07-07 11:44:28', '[\"ORANGE\",\"RED\",\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(55, '2098098', 155, 85, 'Lenovo K9 (Black, 32 GB) (3 GB RAM)', 'lenovo-k9-black-32-gb-3-gb-ram', '<p>The Lenovo K9 smartphone is a dazzling wonder whose attractive exterior comes with Dual-glass protection. Its 13 MP + 5 MP Rear and Selfie Cameras are enough to capture the breathtaking beauty around you. With an Octa-core processor for smooth performance and a Type-C connector for easy charging, this smartphone is designed to make your life simpler.</p>', NULL, NULL, 7500, '3', 12, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:48:17', '2021-04-16 12:05:01', '[\"BROWN\",\"BLACK\",\"PURPLE\",\"ORANGE\",\"RED\"]', 0, 0, '', '', 0, 0, ' ', 'yes', '', 'daily', '2020-07-07', 14, NULL),
(56, '129038', 155, 85, 'Lenovo Ideapad S340 Intel Core i3 10th Gen', 'lenovo-ideapad-s340-intel-core-i3-10th-gen', '<p>Comfortable confidence. Upto 10th Gen Intel Core processors provide speed &amp; power. Premium Dolby Audio provides a rich audio experience. Added security with physical webcam shutter. Up to 10 hours battery life that keeps you connected. Sleek and stylish design for easy portability.</p>', NULL, NULL, 47000, '', 20, NULL, 10, 'yes', 7, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:52:03', '2021-04-12 07:36:50', '[\"WHITE\",\"BROWN\",\"GOLD\",\"ORANGE\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(57, '640909', 155, 85, 'HP 14-inch Laptop', 'hp-14-inch-laptop', '<p>Thin, sleek and more stylish &ndash; this eye-catching laptop is easy to take anywhere. With its beautiful brushed finish and seamless bar hinge, the smartly designed HP 14\" laptop looks as good as it performs.</p>', NULL, NULL, 24250, '', 1, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-07-07 07:55:28', '2021-04-16 11:30:41', '[\"WHITE\",\"BLACK\",\"BROWN\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 20, NULL),
(58, '123456', 71, 2, 'Shirt', 'shirt', '<p>ShirtShirtShirt</p>', NULL, NULL, 100, '2.5', 9, NULL, 1, 'yes', 2, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2020-12-04 16:37:40', '2021-04-09 11:24:53', '[\"BLACK\",\"WHITE\",\"BLUE\"]', 0, 1, '', '', 0, 0, ' ', 'yes', '', 'daily', '2020-12-04', 2, NULL),
(59, 'fdsfsfsdf', 71, 2, 'Commission Demo', 'commission-demo', '<p>fdfdsfsf</p>', NULL, NULL, 200, '', 6, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-14 11:24:37', '2021-04-16 12:10:08', '[\"BLACK\",\"BROWN\",\"SKY_BLUE\",\"PURPLE\",\"SILVER\"]', 0, 2, '', '', 0, 0, ' ', 'no', 'yes', 'regular', '0000-00-00', 10, 10),
(60, 'dsfdsf', 71, 2, 'Comission 2', 'comission-2', '<p>fdsfsdf</p>', NULL, NULL, 300, '', 0, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-14 11:30:12', '2021-04-16 12:10:07', '[]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, 20),
(61, '564256', 172, 102, 'saree', 'saree', '<p>saree saree saree</p>', NULL, NULL, 200, '', 0, NULL, 3, 'yes', 1, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-21 07:13:56', '2021-04-16 12:04:43', '[\"BLACK\",\"BROWN\",\"GOLD\",\"SILVER\",\"PURPLE\"]', 0, 1, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 1, 20),
(62, '123456', 175, 105, 'Net saree', 'net-saree', '<p>net saree saree</p>', NULL, NULL, 200, '5', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-21 10:30:50', '2021-04-13 06:25:33', '[\"GOLD\",\"BROWN\",\"PINK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(63, '1234567', 175, 105, 'example', 'example', '<p>example</p>', NULL, NULL, 100, '', 1, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-21 11:49:04', '2021-04-16 10:08:16', '[\"BROWN\",\"GOLD\",\"SILVER\",\"BLACK\"]', 0, 2, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(65, '1234567', 181, 111, 'shirt', 'shirt', '<p>blue shirt&nbsp;</p>', NULL, NULL, 100, '', 0, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-22 07:21:36', '2021-04-16 12:04:34', '[\"BLACK\",\"WHITE\",\"BROWN\",\"GOLD\"]', 0, 1, '', '', 0, 0, ' ', 'yes', '', 'daily', '2020-12-22', 1, NULL),
(66, '12345600', 177, 107, 'Nikon', 'nikon', '<p>Nikon</p>', NULL, NULL, 400, '', 2, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-22 07:47:36', '2021-04-12 14:28:00', '[\"BLACK\",\"WHITE\",\"BROWN\"]', 0, 2, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 2, 10),
(67, '7654321', 181, 111, 'saree saree', 'saree-saree', '<p>saree saree</p>', NULL, NULL, 600, '', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-23 14:10:12', '2021-04-12 14:28:03', '[\"Green\"]', 1, 2, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 10),
(68, '34546465', 189, 119, 'Spider', 'spider', '<p>Spider</p>', NULL, NULL, 100, '', 5, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '4d', NULL, NULL, NULL, '', 'publish', '2020-12-24 15:04:58', '2021-04-09 10:15:03', '[\"WHITE\",\"RED\",\"PINK\",\"BLACK\",\"BROWN\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 50),
(69, '45654654', 189, 119, 'beem', 'beem', '<p>Beem</p>', NULL, NULL, 100, '', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '4d', NULL, NULL, NULL, '', 'publish', '2020-12-24 15:38:14', '2021-04-16 12:04:49', '[\"WHITE\",\"SILVER\",\"BROWN\",\"RED\",\"GOLD\"]', 0, 1, '', '', 0, 0, '[\"217\"]', 'yes', 'yes', 'no', '0000-00-00', 1, 20),
(70, '9675342', 181, 111, 'shirt', 'shirt', '<p>shirt</p>', NULL, NULL, 100, '', 1, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-12-26 13:08:29', '2021-04-16 12:04:38', '[\"BLACK\",\"WHITE\",\"BROWN\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(71, '76425', 181, 111, 'saree1', 'saree1', '<p>saree</p>', NULL, NULL, 200, '', 1, NULL, 3, 'no', 0, 15, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2020-12-26 13:10:33', '2021-04-07 13:04:05', '[\"GOLD\",\"BROWN\",\"SILVER\",\"PINK\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(72, '989232', 200, 130, 'blue', 'blue', '<p>blue</p>', NULL, NULL, 200, '', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-26 13:26:35', '2021-04-16 12:05:02', '[\"BLACK\",\"PURPLE\",\"BROWN\",\"GOLD\",\"SILVER\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(74, '23565656', 181, 111, 'blue blue blue', 'blue-blue-blue', '<p>blue blue</p>', NULL, NULL, 300, '', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-26 14:00:38', '2021-04-16 12:04:51', '[\"BLACK\",\"BROWN\",\"GOLD\",\"SILVER\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 10),
(76, '876424', 203, 133, 'mobile', 'mobile', '<p>mobile</p>', NULL, NULL, 60000, '4', 0, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-31 05:36:31', '2021-04-16 12:04:53', '[\"WHITE\",\"BLUE\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 1),
(77, '34567', 203, 133, 'test saree', 'test-saree', '<p>saree test</p>', NULL, NULL, 1000, '4', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-31 07:25:52', '2021-04-16 12:04:48', '[\"GOLD\",\"BROWN\",\"SILVER\",\"PINK\",\"BLACK\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 5),
(78, '23425453', 203, 133, 'shirt', 'shirt', '<p>shirt</p>', NULL, NULL, 200, '', 0, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-31 07:52:58', '2021-04-10 05:11:46', '[\"BLACK\",\"WHITE\",\"BROWN\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(79, '7893456', 203, 133, 'women saree', 'women-saree', '<p>saree women</p>', NULL, NULL, 1000, '', 0, NULL, 3, 'no', 0, 15, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-31 07:58:02', '2021-04-10 12:53:28', '[\"BROWN\",\"GOLD\",\"SILVER\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 10),
(80, '25365447', 203, 133, 'home', 'home', '<p>home</p>', NULL, NULL, 200, '', 0, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2020-12-31 07:59:31', '2021-04-10 05:11:48', '[\"BROWN\",\"SKY_BLUE\",\"PURPLE\",\"GOLD\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(81, '4t4343', 203, 133, 'fdgdfgf', 'fdgdfgf', '<p>sdgfasdg</p>', NULL, NULL, 3436, '', 0, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2020-12-31 09:06:18', '2021-04-16 12:04:42', '[\"BLACK\",\"WHITE\",\"BROWN\",\"GOLD\"]', 0, 0, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, NULL),
(83, '21454515', 209, 139, 'black car', 'black-car', '<p>black car</p>', NULL, NULL, 1000, '', -1, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-01-04 08:00:26', '2021-04-09 10:09:44', '[\"WHITE\",\"SILVER\",\"BROWN\",\"PURPLE\",\"BLACK\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 5),
(84, '2351535', 209, 139, 'test', 'test', '<p>test</p>', NULL, NULL, 1000, '2', 0, NULL, 1, 'no', 0, 11, 18, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2021-01-04 08:09:55', '2021-04-10 12:53:26', '[\"WHITE\",\"BLACK\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 5),
(85, '3466356536', 209, 139, 'test test', 'test-test', '<p>test test test</p>', NULL, NULL, 2000, '', 0, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2021-01-04 12:34:18', '2021-04-16 12:04:39', '[\"BLACK\",\"BROWN\"]', 0, 1, '', '', 0, 0, '', 'no', 'yes', 'no', '0000-00-00', 0, 1),
(86, '844sgdfgz', 209, 139, 'test test test', 'test-test-test', '<p>test test test</p>', NULL, NULL, 2000, '', 0, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2021-01-04 13:07:29', '2021-04-12 13:21:19', '[\"SILVER\",\"BROWN\",\"BLACK\",\"PURPLE\",\"SKY_BLUE\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 2),
(87, '235654624', 209, 139, 'test', 'test', '<p>test</p>', NULL, NULL, 100, '', 1, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-01-04 13:20:06', '2021-04-12 13:21:12', '[\"BLACK\",\"BROWN\",\"GOLD\",\"PURPLE\",\"SKY_BLUE\"]', 0, 2, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 1),
(90, 'dsfsdf', 71, 2, 'Husky', 'husky', '<p>dfdsfsf</p>', NULL, NULL, 500, '4.5', 98, NULL, 6, 'no', 0, 0, 0, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2021-02-26 16:26:35', '2021-04-29 14:02:13', '[\"BROWN\",\"BLACK\",\"SILVER\",\"PURPLE\",\"GOLD\"]', 0, 2, '', '', 1, 0, ' ', 'yes', '', 'daily', '2021-04-14', 10, 12),
(91, '1254545', 71, 2, 'Dan Brown\'s Origin', 'dan-browns-origin', '<p>Origin</p>', NULL, NULL, 500, '', 5, NULL, 9, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-04-01 07:40:53', '2021-04-28 06:51:22', '[\"Red\",\"Pink\"]', 1, 1, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-10', 23, NULL),
(93, '3445435', 71, 2, 'Ring', 'ring', '<p>Ring</p>', NULL, NULL, 1500, '', 13, NULL, 3, 'no', 0, 14, 0, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2021-04-01 07:48:01', '2021-04-16 08:51:22', '[\"Red\"]', 1, 2, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-02', 40, NULL),
(94, '2232321', 215, 144, 'Mobilephone', 'mobile', '<p>Samsung mobile</p>', NULL, NULL, 2000, '5', 2, NULL, 10, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2021-04-02 09:48:22', '2021-04-16 12:04:39', '[\"Red\",\"Pink\",\"Blue\"]', 1, 0, '', '', 0, 0, ' ', 'yes', 'yes', 'no', '0000-00-00', 0, NULL),
(95, 'asdfasdfas', 71, 2, 'testing', 'testing', '<p><strong>asdfasdfasd</strong></p>', NULL, NULL, 2332.22, '', 5, NULL, 29, 'yes', 5, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-04-05 12:13:30', '2021-04-29 09:42:41', '[\"Blue\"]', 1, 2, '', '', 0, 0, ' ', 'yes', 'yes', 'regular', '0000-00-00', 5, 20),
(96, 'asdfasdfasasdf32423', 71, 2, 'LED TV', 'led-tv', '<p>asdfasdfMake sure your Hourly meets all other posting policies.Make sure your Hourly meets all other posting policies.Make sure your Hourly meets all other posting policies.<br /><br /><br /></p>', NULL, NULL, 1520, '', 5, NULL, 4, 'yes', 1, 13, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-04-05 12:15:51', '2021-04-16 12:04:41', '[\"PURPLE\",\"BLACK\",\"WHITE\",\"BROWN\",\"SKY_BLUE\"]', 0, 0, '', '', 0, 0, ' ', 'yes', '', 'daily', '2021-04-05', 15, 5),
(97, '35342534523', 71, 2, 'Phone', 'phone', '<p>Make your Hourlie stand out with great quality images or even video illustrating the service that you are offering.<br />Make sure your Hourly meets all other posting policies.</p>', NULL, NULL, 755, '', 1, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, '', 'publish', '2021-04-05 12:55:51', '2021-04-19 12:23:14', '[\"WHITE\",\"SKY_BLUE\",\"PURPLE\",\"BLACK\"]', 0, 2, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-05', 10, 22),
(98, 'sdfdsfsf', 71, 2, 'USB', 'usb', '<p>dsfdsfdsfsf</p>', NULL, NULL, 200, '', 10, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-04-07 05:13:25', '2021-04-16 14:04:58', '[\"WHITE\",\"BLACK\",\"BROWN\"]', 0, 2, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-07', 23, NULL),
(100, '2123132', 71, 2, 'Car', 'car', '<p>adsf asdfasdfsdf</p>', NULL, NULL, 4646, '', 1, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2021-04-07 08:16:41', '2021-04-09 10:08:16', '[\"BLACK\",\"SILVER\",\"BLUE\",\"PURPLE\",\"BROWN\"]', 0, 1, '', '', 0, 0, ' ', 'no', 'yes', 'no', '0000-00-00', 0, 10),
(101, '32423423', 71, 2, 'Furnitures', 'furnitures', '<p>sasdf asfasfasdfas</p>', NULL, NULL, 233, '', 4, NULL, 7, 'no', 0, 0, 0, 0, 1, 232, '2d', NULL, NULL, NULL, NULL, 'publish', '2021-04-07 08:21:56', '2021-04-29 14:09:04', '[\"BLACK\",\"PURPLE\",\"BROWN\"]', 0, 0, '', '', 0, 0, '', 'no', '', 'daily', '2021-04-10', 12, 50),
(102, '213536', 71, 2, 'Men Fashion 2021 - Test', 'men-fashion-2021--test', '<p>Make your Hourlie stand out with great quality images or even video illustrating the service that you are offering.<br />Make sure</p>', NULL, NULL, 3560, '4.7', 147, NULL, 29, 'yes', 2, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '', 'publish', '2021-04-12 10:36:56', '2021-04-16 12:10:05', '[\"Red\",\"Green\",\"Pink\",\"Blue\"]', 1, 1, '', '', 0, 0, ' ', 'yes', '', 'daily', '2021-04-14', 15, 10),
(103, '1234567890', 71, 2, 'Shirts', 'shirts', '<p>Shirts</p>', NULL, NULL, 100, '', 56, NULL, 1, 'no', 0, 11, 17, 0, 1, 232, '2d', NULL, NULL, NULL, '{\"size\":{\"XL\":\"XL\",\"L\":\"L\",\"S\":\"S\"},\"unit\":{\"XL\":7,\"L\":\"20\",\"S\":\"29\"},\"price\":{\"XL\":\"100\",\"L\":\"200\",\"S\":\"140\"}}', 'publish', '2021-04-16 07:43:58', '2021-04-29 13:49:46', '[\"BLACK\",\"BROWN\",\"SILVER\",\"GOLD\"]', 0, 1, '', '', 0, 0, ' ', 'yes', '', 'daily', '2021-04-16', 10, 10),
(104, '987654321', 71, 2, 'bugatti', 'bugatti', '<p>fastest car in the world</p>', NULL, NULL, 876556, '', 2, NULL, 29, 'yes', 10, 0, 0, 0, 1, 232, '2ww', NULL, NULL, NULL, NULL, 'publish', '2021-04-21 07:24:58', '2021-04-28 15:14:46', '[]', 0, 0, '', '', 1, 0, ' ', 'no', '', 'daily', '2021-04-28', 5, 20),
(105, '98765432123', 71, 2, 'test model', 'test-model', '<p>test bike</p>', NULL, NULL, 178677, '', 1, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '3d', NULL, NULL, NULL, NULL, 'publish', '2021-04-21 12:00:41', '2021-04-24 11:04:58', '[\"BLACK\",\"SILVER\",\"BROWN\",\"WHITE\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-24', 5, 5);
INSERT INTO `fc_items` (`id`, `skuid`, `user_id`, `shop_id`, `item_title`, `item_title_url`, `item_description`, `recipient`, `occasion`, `price`, `avg_rating`, `quantity`, `quantity_sold`, `category_id`, `share_coupon`, `share_discountAmount`, `super_catid`, `sub_catid`, `ship_from_country`, `currencyid`, `countryid`, `processing_time`, `processing_min`, `processing_max`, `processing_option`, `size_options`, `status`, `created_on`, `modified_on`, `item_color`, `item_color_method`, `fav_count`, `bm_redircturl`, `videourrl`, `featured`, `comment_count`, `report_flag`, `cod`, `dailydeal`, `discount_type`, `dealdate`, `discount`, `affiliate_commission`) VALUES
(106, '87654322345', 71, 2, 'suzuki', 'suzuki', '<p>good design</p>', NULL, NULL, 178653, '', 1, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '3d', NULL, NULL, NULL, '', 'publish', '2021-04-21 12:01:57', '2021-04-29 09:02:55', '[\"WHITE\",\"BLACK\",\"SILVER\",\"BROWN\",\"PURPLE\"]', 0, 0, '', '', 0, 0, ' ', 'no', '', 'daily', '2021-04-24', 5, 5),
(107, '12345', 71, 2, 'Cadillac CT5 V', 'cadillac-ct5-v', '<p>The CT5-V includes an electronic Limited-Slip Rear Differential that automatically directs torque to the rear wheel with the most traction for greater control</p>', NULL, NULL, 47695, '', 1, NULL, 29, 'no', 0, 0, 0, 0, 1, 232, '1d', NULL, NULL, NULL, NULL, 'publish', '2021-04-21 12:12:51', '2021-04-24 11:05:00', '[\"BROWN\",\"PURPLE\",\"SILVER\",\"GOLD\",\"BLACK\"]', 0, 0, '', 'https://www.youtube.com/watch?v=GpdgX7J6mDY', 0, 0, ' ', 'yes', '', 'daily', '2021-04-24', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `fc_languages`
--

CREATE TABLE `fc_languages` (
  `id` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `countrycode` varchar(3) NOT NULL,
  `languagecode` varchar(3) NOT NULL,
  `languagename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_languages`
--

INSERT INTO `fc_languages` (`id`, `countryid`, `countrycode`, `languagecode`, `languagename`) VALUES
(1, 232, 'USD', 'en', 'English'),
(3, 1, 'EUR', 'fr', 'French'),
(4, 198, 'SGD', 'es', 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `fc_likedusers`
--

CREATE TABLE `fc_likedusers` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_likedusers`
--

INSERT INTO `fc_likedusers` (`id`, `userid`, `statusid`) VALUES
(1, 158, 186),
(3, 216, 759),
(4, 70, 828),
(5, 70, 843),
(6, 216, 851);

-- --------------------------------------------------------

--
-- Table structure for table `fc_logcoupons`
--

CREATE TABLE `fc_logcoupons` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_logs`
--

CREATE TABLE `fc_logs` (
  `id` int(11) NOT NULL,
  `type` enum('comment','favorite','additem','follow','followers','sellermessage','mentioned','orderstatus','ordermessage','adminmessage','itemapprove','credit','giftcard','invite','dispute','chatmessage','admin','status','review','groupgift','share','checkin','cartnotification','fashionimage','admin_commision') COLLATE utf8mb4_bin NOT NULL,
  `userid` int(11) NOT NULL,
  `notifyto` text COLLATE utf8mb4_bin NOT NULL,
  `sourceid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT 0,
  `notifymessage` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `notification_id` int(11) NOT NULL,
  `message` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `image` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `cdate` int(11) NOT NULL,
  `likecount` int(11) NOT NULL,
  `commentcount` int(11) NOT NULL,
  `shared` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  `shareagain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fc_logs`
--

INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(1, 'admin', 0, '71', 42, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDJfNTg5OA==\'>Blaupunkt 124cm (49 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105578_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDJfNTg5OA==\"}}', 1594105894, 0, 0, 0, 0, 0),
(2, 'additem', 71, '0', 42, 42, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDJfNTg5OA==\'>Blaupunkt 124cm (49 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105578_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDJfNTg5OA==\"}}', 1594105894, 0, 0, 0, 0, 0),
(3, 'admin', 0, '154', 41, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDFfNzI0Mw==\'>Enchanteur Intense Moisture Cocoa Sensuelle Body Lotion  (250 ml)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105539_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDFfNzI0Mw==\"}}', 1594105894, 0, 0, 0, 0, 0),
(4, 'additem', 154, '0', 41, 41, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDFfNzI0Mw==\'>Enchanteur Intense Moisture Cocoa Sensuelle Body Lotion  (250 ml)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105539_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDFfNzI0Mw==\"}}', 1594105894, 0, 0, 0, 0, 0),
(5, 'admin', 0, '154', 43, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDNfMjY0Mw==\'>NIVEA MEN MEN Dark Spot Reduction Crme</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105680_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDNfMjY0Mw==\"}}', 1594105894, 0, 0, 0, 0, 0),
(6, 'additem', 154, '0', 43, 43, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDNfMjY0Mw==\'>NIVEA MEN MEN Dark Spot Reduction Crme</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105680_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDNfMjY0Mw==\"}}', 1594105894, 0, 0, 0, 0, 0),
(7, 'admin', 0, '71', 40, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDBfNDk1OQ==\'>Coocaa 127cm (50 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105515_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDBfNDk1OQ==\"}}', 1594105894, 0, 0, 0, 0, 0),
(8, 'additem', 71, '0', 40, 40, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDBfNDk1OQ==\'>Coocaa 127cm (50 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105515_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDBfNDk1OQ==\"}}', 1594105894, 0, 0, 0, 0, 0),
(9, 'admin', 0, '71', 39, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzlfMTcyNA==\'>Nokia 108cm (43 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105472_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzlfMTcyNA==\"}}', 1594105895, 0, 0, 0, 0, 0),
(10, 'additem', 71, '0', 39, 39, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzlfMTcyNA==\'>Nokia 108cm (43 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105472_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzlfMTcyNA==\"}}', 1594105895, 0, 0, 0, 0, 0),
(11, 'admin', 0, '154', 38, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzhfNjcwMA==\'>Mamaearth Men\'s Refresh Oil Control</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105426_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzhfNjcwMA==\"}}', 1594105895, 0, 0, 0, 0, 0),
(12, 'additem', 154, '0', 38, 38, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzhfNjcwMA==\'>Mamaearth Men\'s Refresh Oil Control</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105426_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzhfNjcwMA==\"}}', 1594105895, 0, 0, 0, 0, 0),
(13, 'admin', 0, '71', 37, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzdfNjI5Mg==\'>Vu Premium 108cm</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105409_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzdfNjI5Mg==\"}}', 1594105895, 0, 0, 0, 0, 0),
(14, 'additem', 71, '0', 37, 37, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzdfNjI5Mg==\'>Vu Premium 108cm</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105409_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzdfNjI5Mg==\"}}', 1594105895, 0, 0, 0, 0, 0),
(15, 'admin', 0, '155', 36, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzZfNDM4MQ==\'>Dee mannequin Leather Gym Gloves</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105175_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzZfNDM4MQ==\"}}', 1594105896, 0, 0, 0, 0, 0),
(16, 'additem', 155, '0', 36, 36, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzZfNDM4MQ==\'>Dee mannequin Leather Gym Gloves</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594105175_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzZfNDM4MQ==\"}}', 1594105897, 0, 0, 0, 0, 0),
(17, 'admin', 0, '71', 35, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzVfMjcxMA==\'>LG 108cm (43 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105346_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzVfMjcxMA==\"}}', 1594105897, 0, 0, 0, 0, 0),
(18, 'additem', 71, '0', 35, 35, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzVfMjcxMA==\'>LG 108cm (43 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105346_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzVfMjcxMA==\"}}', 1594105897, 0, 0, 0, 0, 0),
(19, 'admin', 0, '154', 34, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzRfODE1Mg==\'>Women Beauty Care Radiance/Cleanser Instant Glow</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105296_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzRfODE1Mg==\"}}', 1594105898, 0, 0, 0, 0, 0),
(20, 'additem', 154, '0', 34, 34, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzRfODE1Mg==\'>Women Beauty Care Radiance/Cleanser Instant Glow</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105296_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzRfODE1Mg==\"}}', 1594105898, 0, 0, 0, 0, 0),
(21, 'admin', 0, '71', 33, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzNfOTMzMw==\'>Realme 108cm (43 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105292_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzNfOTMzMw==\"}}', 1594105915, 0, 0, 0, 0, 0),
(22, 'additem', 71, '0', 33, 33, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzNfOTMzMw==\'>Realme 108cm (43 inch)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105292_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzNfOTMzMw==\"}}', 1594105915, 0, 0, 0, 0, 0),
(23, 'admin', 0, '71', 32, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzJfNzMwOA==\'>Mi 4A 100 cm (40)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105226_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzJfNzMwOA==\"}}', 1594105915, 0, 0, 0, 0, 0),
(24, 'additem', 71, '0', 32, 32, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzJfNzMwOA==\'>Mi 4A 100 cm (40)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105226_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzJfNzMwOA==\"}}', 1594105915, 0, 0, 0, 0, 0),
(25, 'admin', 0, '71', 31, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzFfMjQwMA==\'>Samsung 80cm (32 inch) HD Ready LED Smart TV</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105132_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzFfMjQwMA==\"}}', 1594105917, 0, 0, 0, 0, 0),
(26, 'additem', 71, '0', 31, 31, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzFfMjQwMA==\'>Samsung 80cm (32 inch) HD Ready LED Smart TV</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594105132_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzFfMjQwMA==\"}}', 1594105917, 0, 0, 0, 0, 0),
(27, 'admin', 0, '154', 30, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MzBfNDE1Ng==\'>The Man Company Total De-Tan Regime</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105117_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzBfNDE1Ng==\"}}', 1594105917, 0, 0, 0, 0, 0),
(28, 'additem', 154, '0', 30, 30, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MzBfNDE1Ng==\'>The Man Company Total De-Tan Regime</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105117_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MzBfNDE1Ng==\"}}', 1594105917, 0, 0, 0, 0, 0),
(29, 'admin', 0, '154', 29, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjlfODM3Mw==\'>Garnier Skin Naturals Sakura White Sheet Mask</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105034_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjlfODM3Mw==\"}}', 1594105918, 0, 0, 0, 0, 0),
(30, 'additem', 154, '0', 29, 29, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjlfODM3Mw==\'>Garnier Skin Naturals Sakura White Sheet Mask</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594105034_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjlfODM3Mw==\"}}', 1594105918, 0, 0, 0, 0, 0),
(31, 'admin', 0, '71', 28, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjhfMjE4Mw==\'>Woven Fashion Cotton Silk Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104955_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjhfMjE4Mw==\"}}', 1594105919, 0, 0, 0, 0, 0),
(32, 'additem', 71, '0', 28, 28, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjhfMjE4Mw==\'>Woven Fashion Cotton Silk Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104955_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjhfMjE4Mw==\"}}', 1594105919, 0, 0, 0, 0, 0),
(33, 'admin', 0, '154', 27, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjdfNzMzMQ==\'>Retail Paratpar Digital Black Clock</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104929_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjdfNzMzMQ==\"}}', 1594105919, 0, 0, 0, 0, 0),
(34, 'additem', 154, '0', 27, 27, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjdfNzMzMQ==\'>Retail Paratpar Digital Black Clock</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104929_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjdfNzMzMQ==\"}}', 1594105919, 0, 0, 0, 0, 0),
(35, 'admin', 0, '71', 26, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjZfMTU1Mg==\'>Checkered Fashion Cotton Silk Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104907_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjZfMTU1Mg==\"}}', 1594105919, 0, 0, 0, 0, 0),
(36, 'additem', 71, '0', 26, 26, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjZfMTU1Mg==\'>Checkered Fashion Cotton Silk Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104907_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjZfMTU1Mg==\"}}', 1594105919, 0, 0, 0, 0, 0),
(37, 'admin', 0, '155', 25, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjVfODYwOQ==\'>KORE DM-HEXA-COMBO16 Dumbbells Kits</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104685_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjVfODYwOQ==\"}}', 1594105920, 0, 0, 0, 0, 0),
(38, 'additem', 155, '0', 25, 25, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjVfODYwOQ==\'>KORE DM-HEXA-COMBO16 Dumbbells Kits</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594104685_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjVfODYwOQ==\"}}', 1594105920, 0, 0, 0, 0, 0),
(39, 'admin', 0, '71', 24, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjRfMjY0Nw==\'>Paisley, Striped, Floral Print Daily Wear Georgette Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104853_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjRfMjY0Nw==\"}}', 1594105921, 0, 0, 0, 0, 0),
(40, 'additem', 71, '0', 24, 24, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjRfMjY0Nw==\'>Paisley, Striped, Floral Print Daily Wear Georgette Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104853_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjRfMjY0Nw==\"}}', 1594105921, 0, 0, 0, 0, 0),
(41, 'admin', 0, '154', 23, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjNfOTM1Ng==\'>Yale YDM 7116 MB Smart Door Lock</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104826_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjNfOTM1Ng==\"}}', 1594105923, 0, 0, 0, 0, 0),
(42, 'additem', 154, '0', 23, 23, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjNfOTM1Ng==\'>Yale YDM 7116 MB Smart Door Lock</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104826_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjNfOTM1Ng==\"}}', 1594105923, 0, 0, 0, 0, 0),
(43, 'admin', 0, '154', 22, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjJfNDk1Mw==\'>Microfiber Napkin P8G Green Napkins  (8 Sheets)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104654_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjJfNDk1Mw==\"}}', 1594105924, 0, 0, 0, 0, 0),
(44, 'additem', 154, '0', 22, 22, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjJfNDk1Mw==\'>Microfiber Napkin P8G Green Napkins  (8 Sheets)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104654_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjJfNDk1Mw==\"}}', 1594105924, 0, 0, 0, 0, 0),
(45, 'admin', 0, '71', 21, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjFfNDI2Mw==\'>Men Cargos</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104661_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjFfNDI2Mw==\"}}', 1594105924, 0, 0, 0, 0, 0),
(46, 'additem', 71, '0', 21, 21, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjFfNDI2Mw==\'>Men Cargos</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104661_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjFfNDI2Mw==\"}}', 1594105924, 0, 0, 0, 0, 0),
(47, 'admin', 0, '71', 20, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MjBfNDU1\'>Solid Men Blue Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104618_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjBfNDU1\"}}', 1594105925, 0, 0, 0, 0, 0),
(48, 'additem', 71, '0', 20, 20, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MjBfNDU1\'>Solid Men Blue Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104618_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MjBfNDU1\"}}', 1594105925, 0, 0, 0, 0, 0),
(49, 'admin', 0, '71', 19, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTlfMTY0Mg==\'>Solid Men Grey Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104559_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTlfMTY0Mg==\"}}', 1594105925, 0, 0, 0, 0, 0),
(50, 'additem', 71, '0', 19, 19, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTlfMTY0Mg==\'>Solid Men Grey Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104559_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTlfMTY0Mg==\"}}', 1594105925, 0, 0, 0, 0, 0),
(51, 'admin', 0, '155', 18, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MThfMjUxNQ==\'>AURION HANDGRIP1040 Adjustable Hand Grip</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104476_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MThfMjUxNQ==\"}}', 1594105926, 0, 0, 0, 0, 0),
(52, 'additem', 155, '0', 18, 18, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MThfMjUxNQ==\'>AURION HANDGRIP1040 Adjustable Hand Grip</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594104476_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MThfMjUxNQ==\"}}', 1594105926, 0, 0, 0, 0, 0),
(53, 'admin', 0, '154', 17, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTdfODk1NQ==\'>Telebrands Vinyl 3 Seater Inflatable Sofa  (Color - Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104529_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTdfODk1NQ==\"}}', 1594105927, 0, 0, 0, 0, 0),
(54, 'additem', 154, '0', 17, 17, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTdfODk1NQ==\'>Telebrands Vinyl 3 Seater Inflatable Sofa  (Color - Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104529_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTdfODk1NQ==\"}}', 1594105927, 0, 0, 0, 0, 0),
(55, 'admin', 0, '71', 16, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTZfNDkyOA==\'>Striped Men Polo Neck Multicolor T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104382_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTZfNDkyOA==\"}}', 1594105927, 0, 0, 0, 0, 0),
(56, 'additem', 71, '0', 16, 16, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTZfNDkyOA==\'>Striped Men Polo Neck Multicolor T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104382_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTZfNDkyOA==\"}}', 1594105927, 0, 0, 0, 0, 0),
(57, 'admin', 0, '154', 15, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTVfMTU4Ng==\'>Wood TV Entertainment Unit  (Finish Color - Walnut)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104359_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTVfMTU4Ng==\"}}', 1594105928, 0, 0, 0, 0, 0),
(58, 'additem', 154, '0', 15, 15, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTVfMTU4Ng==\'>Wood TV Entertainment Unit  (Finish Color - Walnut)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104359_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTVfMTU4Ng==\"}}', 1594105928, 0, 0, 0, 0, 0),
(59, 'admin', 0, '71', 14, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTRfNDAyNw==\'>Solid Men Round Neck Grey T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104301_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTRfNDAyNw==\"}}', 1594105928, 0, 0, 0, 0, 0),
(60, 'additem', 71, '0', 14, 14, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTRfNDAyNw==\'>Solid Men Round Neck Grey T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104301_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTRfNDAyNw==\"}}', 1594105928, 0, 0, 0, 0, 0),
(61, 'admin', 0, '71', 13, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTNfODQyMQ==\'>Solid Men Round Neck Dark Blue, Black, Grey T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104224_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTNfODQyMQ==\"}}', 1594105931, 0, 0, 0, 0, 0),
(62, 'additem', 71, '0', 13, 13, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTNfODQyMQ==\'>Solid Men Round Neck Dark Blue, Black, Grey T-Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104224_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTNfODQyMQ==\"}}', 1594105931, 0, 0, 0, 0, 0),
(63, 'admin', 0, '155', 12, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTJfMzA5NA==\'>Eranqo Double Spring Tummy Trimmer</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104033_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTJfMzA5NA==\"}}', 1594105931, 0, 0, 0, 0, 0),
(64, 'additem', 155, '0', 12, 12, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTJfMzA5NA==\'>Eranqo Double Spring Tummy Trimmer</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594104033_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTJfMzA5NA==\"}}', 1594105931, 0, 0, 0, 0, 0),
(65, 'admin', 0, '154', 11, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTFfNjQ0OA==\'>Mini Slim Stylist Multimedia Keyboard</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104092_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTFfNjQ0OA==\"}}', 1594105931, 0, 0, 0, 0, 0),
(66, 'additem', 154, '0', 11, 11, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTFfNjQ0OA==\'>Mini Slim Stylist Multimedia Keyboard</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594104092_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTFfNjQ0OA==\"}}', 1594105931, 0, 0, 0, 0, 0),
(67, 'admin', 0, '71', 10, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MTBfOTg1Ng==\'>Men Printed Casual Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104017_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTBfOTg1Ng==\"}}', 1594105931, 0, 0, 0, 0, 0),
(68, 'additem', 71, '0', 10, 10, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MTBfOTg1Ng==\'>Men Printed Casual Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104017_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MTBfOTg1Ng==\"}}', 1594105931, 0, 0, 0, 0, 0),
(69, 'admin', 0, '154', 9, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/OV83MjQ2\'>EGATE i9 LED HD PROJECTOR (Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103931_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/OV83MjQ2\"}}', 1594105931, 0, 0, 0, 0, 0),
(70, 'additem', 154, '0', 9, 9, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/OV83MjQ2\'>EGATE i9 LED HD PROJECTOR (Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594103931_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/OV83MjQ2\"}}', 1594105931, 0, 0, 0, 0, 0),
(71, 'admin', 0, '71', 8, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/OF83MzQy\'>Men Checkered Casual Cut Away Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103906_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/OF83MzQy\"}}', 1594105932, 0, 0, 0, 0, 0),
(72, 'additem', 71, '0', 8, 8, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/OF83MzQy\'>Men Checkered Casual Cut Away Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103906_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/OF83MzQy\"}}', 1594105932, 0, 0, 0, 0, 0),
(73, 'admin', 0, '154', 7, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/N18xMTUx\'>Fire TV Stick streaming media</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103773_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/N18xMTUx\"}}', 1594105932, 0, 0, 0, 0, 0),
(74, 'additem', 154, '0', 7, 7, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/N18xMTUx\'>Fire TV Stick streaming media</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594103773_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/N18xMTUx\"}}', 1594105932, 0, 0, 0, 0, 0),
(75, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/Nl84MTU3\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/Nl84MTU3\"}}', 1594105932, 0, 0, 0, 0, 0),
(76, 'additem', 71, '0', 6, 6, '<a href=\'https://fantacyscript.com/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/Nl84MTU3\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/Nl84MTU3\"}}', 1594105932, 0, 0, 0, 0, 0),
(77, 'admin', 0, '154', 5, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NV8zNTAx\'>boAt Airdopes 511V2 TWS</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103590_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NV8zNTAx\"}}', 1594105932, 0, 0, 0, 0, 0),
(78, 'additem', 154, '0', 5, 5, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NV8zNTAx\'>boAt Airdopes 511V2 TWS</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594103590_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NV8zNTAx\"}}', 1594105932, 0, 0, 0, 0, 0),
(79, 'admin', 0, '155', 4, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NF8xNDc5\'>Puma Men black sneakers</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103041_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NF8xNDc5\"}}', 1594105932, 0, 0, 0, 0, 0),
(80, 'additem', 155, '0', 4, 4, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NF8xNDc5\'>Puma Men black sneakers</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594103041_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NF8xNDc5\"}}', 1594105932, 0, 0, 0, 0, 0),
(81, 'admin', 0, '154', 3, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/M18z\'>Huawei ERS-B19 Band 2 Classic Activity Tracker (Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103300_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/M18z\"}}', 1594105935, 0, 0, 0, 0, 0),
(82, 'additem', 154, '0', 3, 3, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/M18z\'>Huawei ERS-B19 Band 2 Classic Activity Tracker (Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594103300_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/M18z\"}}', 1594105935, 0, 0, 0, 0, 0),
(83, 'admin', 0, '154', 2, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/Ml84ODcz\'>Mi 4A PRO 80 cm (32) HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103135_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/Ml84ODcz\"}}', 1594105936, 0, 0, 0, 0, 0),
(84, 'additem', 154, '0', 2, 2, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/Ml84ODcz\'>Mi 4A PRO 80 cm (32) HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594103135_154.jpeg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/Ml84ODcz\"}}', 1594105936, 0, 0, 0, 0, 0),
(85, 'admin', 0, '154', 1, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/MV85MDM=\'>Microsoft Surface Pro X 1876</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594102840_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MV85MDM=\"}}', 1594105937, 0, 0, 0, 0, 0),
(86, 'additem', 154, '0', 1, 1, '<a href=\'https://fantacyscript.com/stores/ram-stores\'>ram</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/MV85MDM=\'>Microsoft Surface Pro X 1876</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/ram-stores\"},\"item\":{\"image\":\"1594102840_154.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/MV85MDM=\"}}', 1594105937, 0, 0, 0, 0, 0),
(87, 'admin', 0, '155', 48, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDhfNjE4\'>The Alchemist Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106546_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDhfNjE4\"}}', 1594106672, 0, 0, 0, 0, 0),
(88, 'additem', 155, '0', 48, 48, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDhfNjE4\'>The Alchemist Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106546_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDhfNjE4\"}}', 1594106672, 0, 0, 0, 0, 0),
(89, 'admin', 0, '155', 47, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDdfMzk3OA==\'>The Power of Your Subconscious Mind</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106384_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDdfMzk3OA==\"}}', 1594106674, 0, 0, 0, 0, 0),
(90, 'additem', 155, '0', 47, 47, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDdfMzk3OA==\'>The Power of Your Subconscious Mind</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106384_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDdfMzk3OA==\"}}', 1594106674, 0, 0, 0, 0, 0),
(91, 'admin', 0, '155', 46, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDZfMzgw\'>The Art of Public Speaking Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106217_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDZfMzgw\"}}', 1594106674, 0, 0, 0, 0, 0),
(92, 'additem', 155, '0', 46, 46, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDZfMzgw\'>The Art of Public Speaking Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106217_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDZfMzgw\"}}', 1594106674, 0, 0, 0, 0, 0),
(93, 'admin', 0, '155', 45, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDVfNTIxOQ==\'>Brain Building for Achievement Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106072_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDVfNTIxOQ==\"}}', 1594106675, 0, 0, 0, 0, 0),
(94, 'additem', 155, '0', 45, 45, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDVfNTIxOQ==\'>Brain Building for Achievement Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106072_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDVfNTIxOQ==\"}}', 1594106675, 0, 0, 0, 0, 0),
(95, 'admin', 0, '155', 44, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDRfOTY0MQ==\'>How to Stop Worrying and Start Living Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594105942_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDRfOTY0MQ==\"}}', 1594106676, 0, 0, 0, 0, 0),
(96, 'additem', 155, '0', 44, 44, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDRfOTY0MQ==\'>How to Stop Worrying and Start Living Kindle Edition</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594105942_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDRfOTY0MQ==\"}}', 1594106676, 0, 0, 0, 0, 0),
(97, 'orderstatus', 154, '89', 20, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/20\">20</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108722, 0, 0, 0, 0, 0),
(98, 'orderstatus', 154, '89', 13, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/13\">13</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108732, 0, 0, 0, 0, 0),
(99, 'orderstatus', 154, '89', 11, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/11\">11</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108740, 0, 0, 0, 0, 0),
(100, 'orderstatus', 154, '89', 9, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/9\">9</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108747, 0, 0, 0, 0, 0),
(101, 'orderstatus', 154, '81', 3, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/3\">3</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108753, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(102, 'orderstatus', 154, '81', 3, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/3\">3</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108783, 0, 0, 0, 0, 0),
(103, 'orderstatus', 154, '89', 9, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/9\">9</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108800, 0, 0, 0, 0, 0),
(104, 'orderstatus', 154, '89', 11, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/11\">11</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108819, 0, 0, 0, 0, 0),
(105, 'orderstatus', 154, '89', 13, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/13\">13</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108841, 0, 0, 0, 0, 0),
(106, 'orderstatus', 154, '89', 20, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/20\">20</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnathtamilselvam\"}}', 1594108858, 0, 0, 0, 0, 0),
(107, 'orderstatus', 89, '154', 20, 0, 'Your order 20 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594110440, 0, 0, 0, 0, 0),
(108, 'orderstatus', 89, '154', 13, 0, 'Your order 13 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594110449, 0, 0, 0, 0, 0),
(109, 'orderstatus', 89, '154', 9, 0, 'Your order 9 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594110451, 0, 0, 0, 0, 0),
(110, 'orderstatus', 71, '89', 23, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/23\">23</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111444, 0, 0, 0, 0, 0),
(111, 'orderstatus', 71, '89', 22, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/22\">22</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111452, 0, 0, 0, 0, 0),
(112, 'orderstatus', 71, '89', 15, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/15\">15</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111459, 0, 0, 0, 0, 0),
(113, 'orderstatus', 71, '89', 14, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/14\">14</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111478, 0, 0, 0, 0, 0),
(114, 'orderstatus', 71, '89', 12, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/12\">12</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111485, 0, 0, 0, 0, 0),
(115, 'orderstatus', 71, '89', 10, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/10\">10</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111492, 0, 0, 0, 0, 0),
(116, 'orderstatus', 71, '89', 5, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/5\">5</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111498, 0, 0, 0, 0, 0),
(117, 'orderstatus', 71, '81', 2, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/2\">2</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111505, 0, 0, 0, 0, 0),
(118, 'orderstatus', 71, '81', 1, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/1\">1</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111511, 0, 0, 0, 0, 0),
(119, 'orderstatus', 71, '81', 1, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/1\">1</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111543, 0, 0, 0, 0, 0),
(120, 'orderstatus', 71, '81', 2, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/2\">2</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111563, 0, 0, 0, 0, 0),
(121, 'orderstatus', 71, '89', 5, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/5\">5</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111582, 0, 0, 0, 0, 0),
(122, 'orderstatus', 71, '89', 10, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/10\">10</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111602, 0, 0, 0, 0, 0),
(123, 'orderstatus', 71, '89', 12, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/12\">12</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111619, 0, 0, 0, 0, 0),
(124, 'orderstatus', 71, '89', 14, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/14\">14</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111638, 0, 0, 0, 0, 0),
(125, 'orderstatus', 71, '89', 15, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/15\">15</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111656, 0, 0, 0, 0, 0),
(126, 'orderstatus', 71, '89', 23, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/23\">23</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/demoseller\"}}', 1594111674, 0, 0, 0, 0, 0),
(127, 'orderstatus', 89, '71', 23, 0, 'Your order 23 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594111796, 0, 0, 0, 0, 0),
(128, 'orderstatus', 89, '71', 15, 0, 'Your order 15 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594111816, 0, 0, 0, 0, 0),
(129, 'orderstatus', 89, '71', 14, 0, 'Your order 14 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594111820, 0, 0, 0, 0, 0),
(130, 'orderstatus', 89, '71', 12, 0, 'Your order 12 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594111825, 0, 0, 0, 0, 0),
(131, 'orderstatus', 89, '154', 11, 0, 'Your order 11 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594112044, 0, 0, 0, 0, 0),
(132, 'orderstatus', 89, '71', 5, 0, 'Your order 5 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594112402, 0, 0, 0, 0, 0),
(133, 'orderstatus', 155, '157', 24, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/24\">24</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594112716, 0, 0, 0, 0, 0),
(134, 'orderstatus', 155, '157', 24, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/24\">24</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594112738, 0, 0, 0, 0, 0),
(135, 'orderstatus', 157, '155', 24, 0, 'Your order 24 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594112743, 0, 0, 0, 0, 0),
(136, 'follow', 89, '157', 1, 0, '<a href=\'https://fantacyscript.com/people/ramnath\'>Ramnath</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnath\"}}', 1594114011, 0, 0, 0, 0, 0),
(137, 'follow', 89, '156', 2, 0, '<a href=\'https://fantacyscript.com/people/ramnath\'>Ramnath</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnath\"}}', 1594114011, 0, 0, 0, 0, 0),
(138, 'follow', 89, '70', 3, 0, '<a href=\'https://fantacyscript.com/people/ramnath\'>Ramnath</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/ramnath\"}}', 1594114012, 0, 0, 0, 0, 0),
(139, 'orderstatus', 155, '157', 25, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/25\">25</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594117384, 0, 0, 0, 0, 0),
(140, 'orderstatus', 155, '157', 25, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/25\">25</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594117408, 0, 0, 0, 0, 0),
(141, 'orderstatus', 157, '155', 25, 0, 'Your order 25 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594117414, 0, 0, 0, 0, 0),
(142, 'orderstatus', 155, '157', 26, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/26\">26</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594117818, 0, 0, 0, 0, 0),
(143, 'orderstatus', 155, '157', 26, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/26\">26</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594117850, 0, 0, 0, 0, 0),
(144, 'orderstatus', 157, '155', 26, 0, 'Your order 26 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594117856, 0, 0, 0, 0, 0),
(145, 'orderstatus', 155, '89', 21, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/21\">21</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118007, 0, 0, 0, 0, 0),
(146, 'orderstatus', 155, '89', 21, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/21\">21</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118031, 0, 0, 0, 0, 0),
(147, 'orderstatus', 155, '89', 19, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/19\">19</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118039, 0, 0, 0, 0, 0),
(148, 'orderstatus', 155, '89', 19, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/19\">19</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118062, 0, 0, 0, 0, 0),
(149, 'orderstatus', 155, '89', 18, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/18\">18</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118101, 0, 0, 0, 0, 0),
(150, 'orderstatus', 155, '89', 18, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/18\">18</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118117, 0, 0, 0, 0, 0),
(151, 'orderstatus', 155, '89', 17, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/17\">17</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118130, 0, 0, 0, 0, 0),
(152, 'orderstatus', 155, '89', 17, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/17\">17</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118152, 0, 0, 0, 0, 0),
(153, 'orderstatus', 155, '89', 16, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/16\">16</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118175, 0, 0, 0, 0, 0),
(154, 'orderstatus', 155, '89', 16, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/16\">16</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118195, 0, 0, 0, 0, 0),
(155, 'orderstatus', 155, '157', 27, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/27\">27</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118419, 0, 0, 0, 0, 0),
(156, 'orderstatus', 155, '157', 27, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/27\">27</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118437, 0, 0, 0, 0, 0),
(157, 'orderstatus', 157, '155', 27, 0, 'Your order 27 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594118444, 0, 0, 0, 0, 0),
(158, 'orderstatus', 155, '157', 28, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/28\">28</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118844, 0, 0, 0, 0, 0),
(159, 'orderstatus', 155, '157', 28, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/28\">28</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594118861, 0, 0, 0, 0, 0),
(160, 'orderstatus', 157, '155', 28, 0, 'Your order 28 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594118865, 0, 0, 0, 0, 0),
(161, 'orderstatus', 155, '157', 29, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/29\">29</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594119118, 0, 0, 0, 0, 0),
(162, 'orderstatus', 155, '157', 29, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/29\">29</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594119136, 0, 0, 0, 0, 0),
(163, 'orderstatus', 157, '155', 29, 0, 'Your order 29 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594119142, 0, 0, 0, 0, 0),
(164, 'admin', 0, '155', 57, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTdfNzMyMw==\'>HP 14-inch Laptop</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594108401_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTdfNzMyMw==\"}}', 1594122260, 0, 0, 0, 0, 0),
(165, 'additem', 155, '0', 57, 57, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTdfNzMyMw==\'>HP 14-inch Laptop</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594108401_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTdfNzMyMw==\"}}', 1594122260, 0, 0, 0, 0, 0),
(166, 'admin', 0, '155', 56, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTZfMTQwMQ==\'>Lenovo Ideapad S340 Intel Core i3 10th Gen</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594108256_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTZfMTQwMQ==\"}}', 1594122262, 0, 0, 0, 0, 0),
(167, 'additem', 155, '0', 56, 56, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTZfMTQwMQ==\'>Lenovo Ideapad S340 Intel Core i3 10th Gen</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594108256_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTZfMTQwMQ==\"}}', 1594122262, 0, 0, 0, 0, 0),
(168, 'admin', 0, '155', 55, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTVfNjM3Mw==\'>Lenovo K9 (Black, 32 GB) (3 GB RAM)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594107992_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTVfNjM3Mw==\"}}', 1594122265, 0, 0, 0, 0, 0),
(169, 'additem', 155, '0', 55, 55, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTVfNjM3Mw==\'>Lenovo K9 (Black, 32 GB) (3 GB RAM)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594107992_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTVfNjM3Mw==\"}}', 1594122265, 0, 0, 0, 0, 0),
(170, 'admin', 0, '155', 54, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTRfMjQ4MA==\'>Vivo U10</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594107793_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTRfMjQ4MA==\"}}', 1594122268, 0, 0, 0, 0, 0),
(171, 'additem', 155, '0', 54, 54, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTRfMjQ4MA==\'>Vivo U10</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594107793_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTRfMjQ4MA==\"}}', 1594122268, 0, 0, 0, 0, 0),
(172, 'admin', 0, '155', 53, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTNfNDQ4OA==\'>OPPO A11K (Flowing Silver, 2GB RAM, 32GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594107597_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTNfNDQ4OA==\"}}', 1594122272, 0, 0, 0, 0, 0),
(173, 'additem', 155, '0', 53, 53, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTNfNDQ4OA==\'>OPPO A11K (Flowing Silver, 2GB RAM, 32GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594107597_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTNfNDQ4OA==\"}}', 1594122272, 0, 0, 0, 0, 0),
(174, 'admin', 0, '155', 52, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTJfNDYzOQ==\'>Redmi 8A Dual (Sea Blue, 3GB RAM, 64GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594107416_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTJfNDYzOQ==\"}}', 1594122276, 0, 0, 0, 0, 0),
(175, 'additem', 155, '0', 52, 52, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTJfNDYzOQ==\'>Redmi 8A Dual (Sea Blue, 3GB RAM, 64GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594107416_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTJfNDYzOQ==\"}}', 1594122276, 0, 0, 0, 0, 0),
(176, 'admin', 0, '155', 51, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTFfNTgwNw==\'>Samsung Galaxy Z Flip (Gold, 8GB RAM, 256GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594107158_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTFfNTgwNw==\"}}', 1594122279, 0, 0, 0, 0, 0),
(177, 'additem', 155, '0', 51, 51, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTFfNTgwNw==\'>Samsung Galaxy Z Flip (Gold, 8GB RAM, 256GB Storage)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594107158_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTFfNTgwNw==\"}}', 1594122279, 0, 0, 0, 0, 0),
(178, 'admin', 0, '155', 50, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NTBfOTg5OA==\'>OnePlus 7 Pro</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106931_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTBfOTg5OA==\"}}', 1594122281, 0, 0, 0, 0, 0),
(179, 'additem', 155, '0', 50, 50, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NTBfOTg5OA==\'>OnePlus 7 Pro</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106931_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NTBfOTg5OA==\"}}', 1594122281, 0, 0, 0, 0, 0),
(180, 'admin', 0, '155', 49, 0, 'Your product has been approved-___-<a href=\'https://fantacyscript.com/listing/NDlfNzA5\'>What Happened to Netaji</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594106700_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDlfNzA5\"}}', 1594122282, 0, 0, 0, 0, 0),
(181, 'additem', 155, '0', 49, 49, '<a href=\'https://fantacyscript.com/stores/kiruba-store\'>kiruba</a> -___-added a product-___- <a href=\'https://fantacyscript.com/listing/NDlfNzA5\'>What Happened to Netaji</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/stores\\/kiruba-store\"},\"item\":{\"image\":\"1594106700_155.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/NDlfNzA5\"}}', 1594122282, 0, 0, 0, 0, 0),
(182, 'orderstatus', 155, '157', 30, 0, 'Your order has been marked as processing-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/30\">30</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594122351, 0, 0, 0, 0, 0),
(183, 'orderstatus', 155, '157', 30, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://fantacyscript.com/buyerorderdetails/30\">30</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/kirubaj\"}}', 1594122370, 0, 0, 0, 0, 0),
(184, 'orderstatus', 157, '155', 30, 0, 'Your order 30 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594122376, 0, 0, 0, 0, 0),
(185, 'orderstatus', 89, '155', 16, 0, 'Your order 16 has been received by the buyer-___- <a href=\'https://fantacyscript.com/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/\"}}', 1594214413, 0, 0, 0, 0, 0),
(186, 'status', 158, '0', 1, 0, '<a href=\'https://fantacyscript.com/people/name2\'>name2</a> -___-posted a status', 0, 'vidéo on how to use thé staff ', '{\"user\":{\"image\":\"1594246322_5.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/name2\"},\"status\":{\"image\":\"1594246749_6.jpg\",\"link\":\"\"}}', 1594246751, 1, 1, 0, 0, 0),
(187, 'comment', 158, '158', 186, 0, '<a href=\'https://fantacyscript.com/people/name2\'>name</a>  -___-commented on your status-___- 186', 0, NULL, '{\"user\":{\"image\":\"1594246322_5.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/name2\"},\"item\":{\"image\":null,\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/listing\\/Xzk3ODY=\"}}', 1594246779, 0, 0, 0, 0, 0),
(188, 'status', 158, '0', 1, 0, '<a href=\'https://fantacyscript.com/people/name2\'>name2</a> -___-posted a status', 0, 'vidéo on how to use thé staff ', '{\"user\":{\"image\":\"1594246322_5.jpg\",\"link\":\"https:\\/\\/prodev.hitasoft.in\\/fantacy5.0\\/fantacyv5\\/people\\/name2\"},\"status\":{\"image\":\"1594246749_6.jpg\",\"link\":\"\"}}', 1594246789, 0, 0, 186, 158, 0),
(189, 'credit', 0, '89', 0, 0, 'You have received a gift card -___-IL4DcE9e', 0, 'You have received a Gift card from your friend name worth  use this code on checkout: IL4DcE9e', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1594246856, 0, 0, 0, 0, 0),
(190, 'orderstatus', 70, '71', 33, 0, '<a href=\'https://amazon.stratustest.co.za/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'https://amazon.stratustest.co.za/merchant/fulfillorders\'>33</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/demo\"}}', 1607097782, 0, 0, 0, 0, 0),
(191, 'admin', 0, '71', 58, 0, 'Your product has been approved-___-<a href=\'https://amazon.stratustest.co.za/listing/NThfNTcyMA==\'>Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1607099801_71.jpeg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/listing\\/NThfNTcyMA==\"}}', 1607099882, 0, 0, 0, 0, 0),
(192, 'additem', 71, '0', 58, 58, '<a href=\'https://amazon.stratustest.co.za/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'https://amazon.stratustest.co.za/listing/NThfNTcyMA==\'>Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/https:\\/\\/amazon.stratustest.co.za\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1607099801_71.jpeg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/listing\\/NThfNTcyMA==\"}}', 1607099882, 0, 0, 0, 0, 0),
(193, 'orderstatus', 161, '71', 34, 0, '<a href=\'https://amazon.stratustest.co.za/people/testt\'>Testt</a>-___-placed an order in your shop, order id : -___-<a href=\'https://amazon.stratustest.co.za/merchant/fulfillorders\'>34</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/testt\"}}', 1607099975, 0, 0, 0, 0, 0),
(194, 'orderstatus', 71, '161', 34, 0, 'Your order has been marked as processing-___- #<a href=\"https://amazon.stratustest.co.za/buyerorderdetails/34\">34</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/demoseller\"}}', 1607100038, 0, 0, 0, 0, 0),
(195, 'orderstatus', 71, '161', 34, 0, 'Your order has been updated with Tracking details-___- #<a href=\"https://amazon.stratustest.co.za/buyerorderdetails/34\">34</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/demoseller\"}}', 1607100053, 0, 0, 0, 0, 0),
(196, 'orderstatus', 161, '71', 34, 0, 'Your order has been received by the buyer-___- <a href=\'https://amazon.stratustest.co.za/people/testt\'>Testt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"https:\\/\\/amazon.stratustest.co.za\\/people\\/testt\"}}', 1607100066, 0, 0, 0, 0, 0),
(197, 'admin', 0, '71', 60, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjBfODY3Ng==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1607945360_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfODY3Ng==\"}}', 1607945680, 0, 0, 0, 0, 0),
(198, 'additem', 71, '0', 60, 60, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjBfODY3Ng==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1607945360_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfODY3Ng==\"}}', 1607945680, 0, 0, 0, 0, 0),
(199, 'admin', 0, '71', 59, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NTlfNzA1NQ==\'>Commission Demo</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1607945007_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NTlfNzA1NQ==\"}}', 1607945684, 0, 0, 0, 0, 0),
(200, 'additem', 71, '0', 59, 59, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NTlfNzA1NQ==\'>Commission Demo</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1607945007_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NTlfNzA1NQ==\"}}', 1607945684, 0, 0, 0, 0, 0),
(201, 'admin', 0, '71', 60, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjBfODE3MQ==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1607945360_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfODE3MQ==\"}}', 1608099941, 0, 0, 0, 0, 0),
(202, 'additem', 71, '0', 60, 60, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjBfODE3MQ==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1607945360_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfODE3MQ==\"}}', 1608099942, 0, 0, 0, 0, 0),
(203, 'orderstatus', 70, '71', 35, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>35</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1608101189, 0, 0, 0, 0, 0),
(204, 'orderstatus', 70, '71', 36, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>36</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1608101389, 0, 0, 0, 0, 0),
(205, 'orderstatus', 70, '71', 37, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>37</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1608101639, 0, 0, 0, 0, 0),
(206, 'orderstatus', 70, '71', 38, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>38</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1608106235, 0, 0, 0, 0, 0),
(207, 'invite', 171, '162', 0, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a> -___-accepted your invitation', 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a> accepted your invitation and joined Stratus. You can follow viji by visiting the profile', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608112015, 0, 0, 0, 0, 0),
(208, 'orderstatus', 171, '155', 39, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>39</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608112496, 0, 0, 0, 0, 0),
(209, 'credit', 162, '171', 0, 0, 'viji -___- rYour account has credited for referral bonus', 0, 'Your account has credited for referral bonus with $8012', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608112500, 0, 0, 0, 0, 0),
(210, 'orderstatus', 162, '71', 40, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>40</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608116578, 0, 0, 0, 0, 0),
(211, 'admin', 0, '71', 8, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OF8yODEw\'>Men Checkered Casual Cut Away Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103906_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OF8yODEw\"}}', 1608117305, 0, 0, 0, 0, 0),
(212, 'additem', 71, '0', 8, 8, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OF8yODEw\'>Men Checkered Casual Cut Away Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103906_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OF8yODEw\"}}', 1608117305, 0, 0, 0, 0, 0),
(213, 'orderstatus', 171, '71', 41, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>41</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608117651, 0, 0, 0, 0, 0),
(214, 'orderstatus', 171, '71', 42, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>42</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608117984, 0, 0, 0, 0, 0),
(215, 'orderstatus', 171, '71', 43, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>43</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608121523, 0, 0, 0, 0, 0),
(216, 'orderstatus', 171, '71', 44, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>44</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608121772, 0, 0, 0, 0, 0),
(217, 'orderstatus', 171, '71', 45, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>45</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608122474, 0, 0, 0, 0, 0),
(218, 'admin', 0, '71', 60, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjBfNDQzMQ==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608278673_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfNDQzMQ==\"}}', 1608278753, 0, 0, 0, 0, 0),
(219, 'additem', 71, '0', 60, 60, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjBfNDQzMQ==\'>Comission 2</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1608278673_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjBfNDQzMQ==\"}}', 1608278753, 0, 0, 0, 0, 0),
(220, 'admin', 0, '71', 59, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NTlfNTQxMA==\'>Commission Demo</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1607945007_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NTlfNTQxMA==\"}}', 1608278757, 0, 0, 0, 0, 0),
(221, 'additem', 71, '0', 59, 59, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NTlfNTQxMA==\'>Commission Demo</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1607945007_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NTlfNTQxMA==\"}}', 1608278757, 0, 0, 0, 0, 0),
(222, 'orderstatus', 171, '71', 46, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>46</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608526237, 0, 0, 0, 0, 0),
(223, 'orderstatus', 171, '71', 47, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>47</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608526922, 0, 0, 0, 0, 0),
(224, 'orderstatus', 171, '71', 48, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>48</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608527233, 0, 0, 0, 0, 0),
(225, 'orderstatus', 171, '71', 49, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>49</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608527353, 0, 0, 0, 0, 0),
(226, 'orderstatus', 171, '71', 50, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>50</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608527529, 0, 0, 0, 0, 0),
(227, 'orderstatus', 171, '71', 51, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>51</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608527859, 0, 0, 0, 0, 0),
(228, 'orderstatus', 162, '71', 52, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>52</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608528418, 0, 0, 0, 0, 0),
(229, 'orderstatus', 162, '71', 53, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>53</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608528550, 0, 0, 0, 0, 0),
(230, 'orderstatus', 171, '71', 54, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>54</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608528629, 0, 0, 0, 0, 0),
(231, 'orderstatus', 162, '71', 55, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>55</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608528846, 0, 0, 0, 0, 0),
(232, 'orderstatus', 171, '71', 56, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>56</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608528974, 0, 0, 0, 0, 0),
(233, 'orderstatus', 171, '71', 57, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>57</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608529987, 0, 0, 0, 0, 0),
(234, 'orderstatus', 162, '71', 58, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>58</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608530130, 0, 0, 0, 0, 0),
(235, 'orderstatus', 162, '71', 59, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>59</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608530295, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(236, 'orderstatus', 162, '71', 60, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>60</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608530482, 0, 0, 0, 0, 0),
(237, 'orderstatus', 171, '71', 61, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>61</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608530602, 0, 0, 0, 0, 0),
(238, 'orderstatus', 171, '71', 62, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>62</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608530764, 0, 0, 0, 0, 0),
(239, 'orderstatus', 171, '71', 63, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>63</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608530833, 0, 0, 0, 0, 0),
(240, 'admin', 0, '172', 61, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjFfNzg1MA==\'>saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608534018_172.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjFfNzg1MA==\"}}', 1608534854, 0, 0, 0, 0, 0),
(241, 'additem', 172, '0', 61, 61, '<a href=\'http://localhost/markethub/stores/sample-store\'>Anu</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjFfNzg1MA==\'>saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/sample-store\"},\"item\":{\"image\":\"1608534018_172.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjFfNzg1MA==\"}}', 1608534854, 0, 0, 0, 0, 0),
(242, 'admin_commision', 0, '0', 0, 0, 'Admin -___-updated a commission-___-', 0, 'Commision details:Min_value1000 Max_value:10000  Amount:20', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608535467, 0, 0, 0, 0, 0),
(243, 'admin_commision', 0, '0', 0, 0, 'Admin -___-updated a commission-___-', 0, 'Commision details:Min_value1000 Max_value:10000 Amount:20', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608535503, 0, 0, 0, 0, 0),
(244, 'orderstatus', 174, '172', 64, 0, '<a href=\'http://localhost/markethub/people/kar\'>karthika</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>64</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/kar\"}}', 1608537615, 0, 0, 0, 0, 0),
(245, 'orderstatus', 172, '174', 64, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/64\">64</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/anu\"}}', 1608537851, 0, 0, 0, 0, 0),
(246, 'orderstatus', 172, '174', 64, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/64\">64</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/anu\"}}', 1608537854, 0, 0, 0, 0, 0),
(247, 'orderstatus', 172, '174', 64, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/64\">64</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/anu\"}}', 1608537858, 0, 0, 0, 0, 0),
(248, 'orderstatus', 172, '174', 64, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/64\">64</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/anu\"}}', 1608537920, 0, 0, 0, 0, 0),
(249, 'orderstatus', 174, '172', 64, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/kar\'>karthika</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/kar\"}}', 1608538095, 0, 0, 0, 0, 0),
(250, 'admin_commision', 0, '0', 0, 0, 'Admin -___-updated a commission-___-', 0, 'Commision details:Min_value1 Max_value:100 Amount:10', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608545817, 0, 0, 0, 0, 0),
(251, 'admin_commision', 0, '0', 0, 0, 'Admin -___-updated a commission-___-', 0, 'Commision details:Min_value100 Max_value:1000  Amount:20', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608545855, 0, 0, 0, 0, 0),
(252, 'admin', 0, '175', 62, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjJfMzE3Ng==\'>Net saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608546575_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjJfMzE3Ng==\"}}', 1608546666, 0, 0, 0, 0, 0),
(253, 'additem', 175, '0', 62, 62, '<a href=\'http://localhost/markethub/stores/aa-store\'>example</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjJfMzE3Ng==\'>Net saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/aa-store\"},\"item\":{\"image\":\"1608546575_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjJfMzE3Ng==\"}}', 1608546666, 0, 0, 0, 0, 0),
(254, 'invite', 176, '70', 0, 0, '<a href=\'http://localhost/markethub/people/test\'>test</a> -___-accepted your invitation', 0, '<a href=\'http://localhost/markethub/people/test\'>test</a> accepted your invitation and joined Stratus. You can follow test by visiting the profile', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608547954, 0, 0, 0, 0, 0),
(255, 'orderstatus', 176, '175', 65, 0, '<a href=\'http://localhost/markethub/people/test\'>test</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>65</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608548212, 0, 0, 0, 0, 0),
(256, 'credit', 70, '176', 0, 0, 'test -___- Your account has credited for referral bonus', 0, 'Your account has credited for referral bonus with $8012', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608548216, 0, 0, 0, 0, 0),
(257, 'orderstatus', 175, '176', 65, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/65\">65</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548331, 0, 0, 0, 0, 0),
(258, 'orderstatus', 175, '176', 65, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/65\">65</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548335, 0, 0, 0, 0, 0),
(259, 'orderstatus', 175, '176', 65, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/65\">65</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548393, 0, 0, 0, 0, 0),
(260, 'orderstatus', 176, '175', 65, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/test\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608548486, 0, 0, 0, 0, 0),
(261, 'orderstatus', 176, '175', 65, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/test\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608548490, 0, 0, 0, 0, 0),
(262, 'fashionimage', 176, '175', 0, 0, '<a href=\'http://localhost/markethub/people/test\'>test</a> -___-uploaded fashion image on your product-___- <a href=\'http://localhost/markethub/listing/NjJfNzA2Mw==\'>Net saree</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjJfNzA2Mw==\"}}', 1608548540, 0, 0, 0, 0, 0),
(263, 'fashionimage', 175, '176', 1, 62, 'abi -___- accepted your selfie on product -___- Net saree', 0, '', '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548561, 0, 0, 0, 0, 0),
(264, 'fashionimage', 175, '176', 1, 62, 'abi -___- accepted your selfie on product -___- Net saree', 0, '', '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548565, 0, 0, 0, 0, 0),
(265, 'fashionimage', 175, '176', 1, 62, 'abi -___- accepted your selfie on product -___- Net saree', 0, '', '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608548569, 0, 0, 0, 0, 0),
(266, 'admin', 0, '175', 62, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjJfODMwNQ==\'>Net saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608546575_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjJfODMwNQ==\"}}', 1608550273, 0, 0, 0, 0, 0),
(267, 'additem', 175, '0', 62, 62, '<a href=\'http://localhost/markethub/stores/aa-store\'>example</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjJfODMwNQ==\'>Net saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/aa-store\"},\"item\":{\"image\":\"1608546575_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjJfODMwNQ==\"}}', 1608550273, 0, 0, 0, 0, 0),
(268, 'orderstatus', 176, '175', 66, 0, '<a href=\'http://localhost/markethub/people/test\'>test</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>66</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608550442, 0, 0, 0, 0, 0),
(269, 'orderstatus', 175, '176', 66, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/66\">66</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608550738, 0, 0, 0, 0, 0),
(270, 'orderstatus', 175, '176', 66, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/66\">66</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608550741, 0, 0, 0, 0, 0),
(271, 'orderstatus', 175, '176', 66, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/66\">66</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/abi\"}}', 1608550807, 0, 0, 0, 0, 0),
(272, 'orderstatus', 176, '175', 66, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/test\'>test</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">66</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608550831, 0, 0, 0, 0, 0),
(273, 'ordermessage', 176, '175', 66, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/test\'>test</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/66\">view</a>', 0, 'hi', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608550850, 0, 0, 0, 0, 0),
(274, 'admin', 0, '176', 66, 0, 'Your account has been credited for the refund of the order-___-#66', 0, 'Your account has been credited for the refund of the order-___-#66 - $202', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608550922, 0, 0, 0, 0, 0),
(275, 'orderstatus', 176, '71', 67, 0, '<a href=\'http://localhost/markethub/people/test\'>test</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>67</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/test\"}}', 1608551191, 0, 0, 0, 0, 0),
(276, 'admin', 0, '175', 63, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjNfNTg2\'>example</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608551298_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjNfNTg2\"}}', 1608551398, 0, 0, 0, 0, 0),
(277, 'additem', 175, '0', 63, 63, '<a href=\'http://localhost/markethub/stores/aa-store\'>example</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjNfNTg2\'>example</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/aa-store\"},\"item\":{\"image\":\"1608551298_175.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjNfNTg2\"}}', 1608551398, 0, 0, 0, 0, 0),
(278, 'follow', 178, '176', 6, 0, '<a href=\'http://localhost/markethub/people/prime\'>Prime</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608611553, 0, 0, 0, 0, 0),
(279, 'admin', 0, '177', 64, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjRfNDI4NQ==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNDI4NQ==\"}}', 1608611698, 0, 0, 0, 0, 0),
(280, 'additem', 177, '0', 64, 64, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjRfNDI4NQ==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNDI4NQ==\"}}', 1608611698, 0, 0, 0, 0, 0),
(281, 'follow', 179, '178', 7, 0, '<a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608612162, 0, 0, 0, 0, 0),
(282, 'orderstatus', 179, '177', 68, 0, '<a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>68</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608612264, 0, 0, 0, 0, 0),
(283, 'orderstatus', 179, '177', 68, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">68</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608612624, 0, 0, 0, 0, 0),
(284, 'orderstatus', 179, '177', 69, 0, '<a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>69</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608612829, 0, 0, 0, 0, 0),
(285, 'orderstatus', 177, '179', 69, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/69\">69</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608612887, 0, 0, 0, 0, 0),
(286, 'orderstatus', 177, '179', 69, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/69\">69</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608612890, 0, 0, 0, 0, 0),
(287, 'orderstatus', 177, '179', 69, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/69\">69</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608613031, 0, 0, 0, 0, 0),
(288, 'orderstatus', 179, '177', 69, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608613082, 0, 0, 0, 0, 0),
(289, 'admin', 0, '177', 69, 0, 'Your account has been credited for the order-___-#69 - $156.8', 0, 'Your account has been credited for the order-___-#69 - $156.8', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608613188, 0, 0, 0, 0, 0),
(290, 'orderstatus', 179, '177', 70, 0, '<a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>70</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608619172, 0, 0, 0, 0, 0),
(291, 'orderstatus', 179, '177', 71, 0, '<a href=\'http://localhost/markethub/people/bee\'>Bumbulbee</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>71</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/bee\"}}', 1608619345, 0, 0, 0, 0, 0),
(292, 'invite', 180, '178', 0, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a> -___-accepted your invitation', 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a> accepted your invitation and joined Stratus. You can follow Lion by visiting the profile', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608619654, 0, 0, 0, 0, 0),
(293, 'follow', 180, '179', 9, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608619680, 0, 0, 0, 0, 0),
(294, 'follow', 180, '178', 10, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608619684, 0, 0, 0, 0, 0),
(295, 'orderstatus', 180, '177', 72, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>72</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608619792, 0, 0, 0, 0, 0),
(296, 'credit', 178, '180', 0, 0, 'Lion -___- Your account has credited for referral bonus', 0, 'Your account has credited for referral bonus with $8012', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608619796, 0, 0, 0, 0, 0),
(297, 'admin', 0, '181', 65, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjVfODA5MQ==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608621538_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjVfODA5MQ==\"}}', 1608621767, 0, 0, 0, 0, 0),
(298, 'additem', 181, '0', 65, 65, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjVfODA5MQ==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608621538_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjVfODA5MQ==\"}}', 1608621767, 0, 0, 0, 0, 0),
(299, 'orderstatus', 180, '177', 73, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>73</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608621997, 0, 0, 0, 0, 0),
(300, 'admin', 0, '177', 66, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjZfNDkzNg==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfNDkzNg==\"}}', 1608623274, 0, 0, 0, 0, 0),
(301, 'additem', 177, '0', 66, 66, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjZfNDkzNg==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfNDkzNg==\"}}', 1608623274, 0, 0, 0, 0, 0),
(302, 'orderstatus', 180, '177', 74, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>74</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608623410, 0, 0, 0, 0, 0),
(303, 'orderstatus', 178, '177', 75, 0, '<a href=\'http://localhost/markethub/people/prime\'>Prime</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>75</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608624523, 0, 0, 0, 0, 0),
(304, 'orderstatus', 183, '181', 76, 0, '<a href=\'http://localhost/markethub/people/facebook\'>facebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>76</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608624542, 0, 0, 0, 0, 0),
(305, 'admin', 0, '177', 64, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjRfNzQwMw==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNzQwMw==\"}}', 1608646542, 0, 0, 0, 0, 0),
(306, 'additem', 177, '0', 64, 64, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjRfNzQwMw==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNzQwMw==\"}}', 1608646542, 0, 0, 0, 0, 0),
(307, 'admin', 0, '177', 66, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjZfMzg1Ng==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfMzg1Ng==\"}}', 1608646639, 0, 0, 0, 0, 0),
(308, 'additem', 177, '0', 66, 66, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjZfMzg1Ng==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfMzg1Ng==\"}}', 1608646639, 0, 0, 0, 0, 0),
(309, 'orderstatus', 177, '180', 74, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/74\">74</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608647080, 0, 0, 0, 0, 0),
(310, 'orderstatus', 177, '180', 74, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/74\">74</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608647083, 0, 0, 0, 0, 0),
(311, 'orderstatus', 177, '180', 74, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/74\">74</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608647103, 0, 0, 0, 0, 0),
(312, 'orderstatus', 180, '177', 74, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/lion\'>Lion</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608647151, 0, 0, 0, 0, 0),
(313, 'admin', 0, '177', 66, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjZfNjcx\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfNjcx\"}}', 1608701765, 0, 0, 0, 0, 0),
(314, 'additem', 177, '0', 66, 66, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjZfNjcx\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfNjcx\"}}', 1608701765, 0, 0, 0, 0, 0),
(315, 'orderstatus', 180, '177', 77, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>77</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608701959, 0, 0, 0, 0, 0),
(316, 'admin', 0, '177', 64, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjRfNzk0Mg==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNzk0Mg==\"}}', 1608702871, 0, 0, 0, 0, 0),
(317, 'additem', 177, '0', 64, 64, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjRfNzk0Mg==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNzk0Mg==\"}}', 1608702871, 0, 0, 0, 0, 0),
(318, 'orderstatus', 180, '177', 78, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>78</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608702937, 0, 0, 0, 0, 0),
(319, 'orderstatus', 171, '177', 79, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>79</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608706814, 0, 0, 0, 0, 0),
(320, 'orderstatus', 178, '177', 75, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/prime\'>Prime</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">75</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608708656, 0, 0, 0, 0, 0),
(321, 'orderstatus', 178, '177', 80, 0, '<a href=\'http://localhost/markethub/people/prime\'>Prime</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>80</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608708707, 0, 0, 0, 0, 0),
(322, 'orderstatus', 177, '178', 80, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/80\">80</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608708760, 0, 0, 0, 0, 0),
(323, 'admin', 0, '177', 64, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjRfNDMzNA==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNDMzNA==\"}}', 1608708883, 0, 0, 0, 0, 0),
(324, 'additem', 177, '0', 64, 64, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjRfNDMzNA==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfNDMzNA==\"}}', 1608708883, 0, 0, 0, 0, 0),
(325, 'orderstatus', 177, '178', 80, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/80\">80</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608708968, 0, 0, 0, 0, 0),
(326, 'orderstatus', 178, '177', 80, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/prime\'>Prime</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608708981, 0, 0, 0, 0, 0),
(327, 'admin', 0, '177', 64, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjRfMjgwMg==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfMjgwMg==\"}}', 1608709109, 0, 0, 0, 0, 0),
(328, 'additem', 177, '0', 64, 64, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjRfMjgwMg==\'>Iphone XR</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608611576_177.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjRfMjgwMg==\"}}', 1608709109, 0, 0, 0, 0, 0),
(329, 'orderstatus', 178, '177', 81, 0, '<a href=\'http://localhost/markethub/people/prime\'>Prime</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>81</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608709172, 0, 0, 0, 0, 0),
(330, 'orderstatus', 177, '178', 81, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/81\">81</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608709212, 0, 0, 0, 0, 0),
(331, 'orderstatus', 177, '178', 81, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/81\">81</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608709231, 0, 0, 0, 0, 0),
(332, 'orderstatus', 178, '177', 81, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/prime\'>Prime</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/prime\"}}', 1608709243, 0, 0, 0, 0, 0),
(333, 'orderstatus', 180, '177', 82, 0, '<a href=\'http://localhost/markethub/people/lion\'>Lion</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>82</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608710092, 0, 0, 0, 0, 0),
(334, 'orderstatus', 177, '180', 82, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/82\">82</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608710162, 0, 0, 0, 0, 0),
(335, 'orderstatus', 177, '180', 82, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/82\">82</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608710182, 0, 0, 0, 0, 0),
(336, 'orderstatus', 180, '177', 82, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/lion\'>Lion</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lion\"}}', 1608710201, 0, 0, 0, 0, 0),
(337, 'orderstatus', 184, '177', 83, 0, '<a href=\'http://localhost/markethub/people/cat\'>Cat</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>83</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/cat\"}}', 1608710663, 0, 0, 0, 0, 0),
(338, 'admin', 0, '177', 66, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjZfMjU4NQ==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfMjU4NQ==\"}}', 1608710960, 0, 0, 0, 0, 0),
(339, 'additem', 177, '0', 66, 66, '<a href=\'http://localhost/markethub/stores/a-to-z\'>King</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjZfMjU4NQ==\'>Nikon</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/a-to-z\"},\"item\":{\"image\":\"1608623201_177.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjZfMjU4NQ==\"}}', 1608710960, 0, 0, 0, 0, 0),
(340, 'orderstatus', 186, '177', 84, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>84</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608711091, 0, 0, 0, 0, 0),
(341, 'orderstatus', 187, '177', 85, 0, '<a href=\'http://localhost/markethub/people/userc\'>userc</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>85</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/userc\"}}', 1608711142, 0, 0, 0, 0, 0),
(342, 'orderstatus', 186, '177', 86, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>86</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608711320, 0, 0, 0, 0, 0),
(343, 'orderstatus', 188, '177', 87, 0, '<a href=\'http://localhost/markethub/people/userd\'>Userd</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>87</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/userd\"}}', 1608711503, 0, 0, 0, 0, 0),
(344, 'orderstatus', 186, '177', 88, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>88</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608716437, 0, 0, 0, 0, 0),
(345, 'orderstatus', 177, '186', 88, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/88\">88</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608716511, 0, 0, 0, 0, 0),
(346, 'orderstatus', 177, '186', 88, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/88\">88</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608716542, 0, 0, 0, 0, 0),
(347, 'orderstatus', 186, '177', 88, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608716575, 0, 0, 0, 0, 0),
(348, 'admin', 0, '177', 88, 0, 'Your account has been credited for the order-___-#88 - $242.24', 0, 'Your account has been credited for the order-___-#88 - $242.24', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608718022, 0, 0, 0, 0, 0),
(349, 'orderstatus', 162, '177', 89, 0, '<a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>89</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608718829, 0, 0, 0, 0, 0),
(350, 'orderstatus', 177, '162', 89, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/89\">89</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608718973, 0, 0, 0, 0, 0),
(351, 'orderstatus', 177, '162', 89, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/89\">89</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608718976, 0, 0, 0, 0, 0),
(352, 'orderstatus', 177, '162', 89, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/89\">89</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608718995, 0, 0, 0, 0, 0),
(353, 'orderstatus', 162, '177', 89, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/lakshmipriya\'>lakshmi</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lakshmipriya\"}}', 1608719005, 0, 0, 0, 0, 0),
(354, 'orderstatus', 186, '177', 90, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>90</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608720045, 0, 0, 0, 0, 0),
(355, 'credit', 0, '70', 0, 0, 'You have received a gift card -___-A4E5F33P', 0, 'You have received a Gift card from your friend  worth 1000 use this code on checkout: A4E5F33P', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608720653, 0, 0, 0, 0, 0),
(356, 'credit', 0, '171', 0, 0, 'You have received a gift card -___-AFf21bcF', 0, 'You have received a Gift card from your friend  worth 1000 use this code on checkout: AFf21bcF', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608721156, 0, 0, 0, 0, 0),
(357, 'orderstatus', 171, '177', 91, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>91</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608721242, 0, 0, 0, 0, 0),
(358, 'orderstatus', 177, '186', 90, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/90\">90</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608722469, 0, 0, 0, 0, 0),
(359, 'orderstatus', 177, '171', 91, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/91\">91</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608722508, 0, 0, 0, 0, 0),
(360, 'orderstatus', 177, '171', 91, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/91\">91</a>', 0, NULL, '{\"user\":{\"image\":\"1608610832_177.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/king\"}}', 1608722792, 0, 0, 0, 0, 0),
(361, 'orderstatus', 171, '177', 91, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/viji\'>viji</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">91</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608723605, 0, 0, 0, 0, 0),
(362, 'orderstatus', 171, '71', 92, 0, '<a href=\'http://localhost/markethub/people/viji\'>viji</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>92</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608724835, 0, 0, 0, 0, 0),
(363, 'orderstatus', 71, '171', 92, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/92\">92</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608725005, 0, 0, 0, 0, 0),
(364, 'orderstatus', 71, '171', 92, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/92\">92</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608725009, 0, 0, 0, 0, 0),
(365, 'orderstatus', 71, '171', 92, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/92\">92</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608725036, 0, 0, 0, 0, 0),
(366, 'orderstatus', 171, '71', 92, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/viji\'>viji</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608725138, 0, 0, 0, 0, 0),
(367, 'orderstatus', 171, '71', 92, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/viji\'>viji</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/viji\"}}', 1608725142, 0, 0, 0, 0, 0),
(368, 'admin', 0, '181', 67, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjdfODQ3MA==\'>saree saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608732511_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjdfODQ3MA==\"}}', 1608732630, 0, 0, 0, 0, 0),
(369, 'additem', 181, '0', 67, 67, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjdfODQ3MA==\'>saree saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608732511_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjdfODQ3MA==\"}}', 1608732630, 0, 0, 0, 0, 0),
(370, 'credit', 0, '183', 0, 0, 'You have received a gift card -___-ddMc8b9d', 0, 'You have received a Gift card from your friend  worth 10 use this code on checkout: ddMc8b9d', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608793087, 0, 0, 0, 0, 0),
(371, 'admin', 0, '189', 68, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjhfMjI0NA==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfMjI0NA==\"}}', 1608822317, 0, 0, 0, 0, 0),
(372, 'additem', 189, '0', 68, 68, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjhfMjI0NA==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfMjI0NA==\"}}', 1608822317, 0, 0, 0, 0, 0),
(373, 'follow', 192, '188', 15, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608822411, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(374, 'follow', 192, '187', 16, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608822415, 0, 0, 0, 0, 0),
(375, 'orderstatus', 193, '189', 93, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>93</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608823359, 0, 0, 0, 0, 0),
(376, 'admin', 0, '189', 68, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjhfMzIwMg==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfMzIwMg==\"}}', 1608823595, 0, 0, 0, 0, 0),
(377, 'additem', 189, '0', 68, 68, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjhfMzIwMg==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfMzIwMg==\"}}', 1608823595, 0, 0, 0, 0, 0),
(378, 'orderstatus', 193, '189', 94, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>94</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608823639, 0, 0, 0, 0, 0),
(379, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfOTQyNg==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfOTQyNg==\"}}', 1608824319, 0, 0, 0, 0, 0),
(380, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfOTQyNg==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfOTQyNg==\"}}', 1608824319, 0, 0, 0, 0, 0),
(381, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfOTY1OQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfOTY1OQ==\"}}', 1608824376, 0, 0, 0, 0, 0),
(382, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfOTY1OQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfOTY1OQ==\"}}', 1608824376, 0, 0, 0, 0, 0),
(383, 'orderstatus', 192, '189', 95, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>95</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608824517, 0, 0, 0, 0, 0),
(384, 'orderstatus', 189, '192', 95, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/95\">95</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608824548, 0, 0, 0, 0, 0),
(385, 'orderstatus', 189, '192', 95, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/95\">95</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608824551, 0, 0, 0, 0, 0),
(386, 'orderstatus', 192, '189', 95, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/sethu\'>sethu</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">95</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608824568, 0, 0, 0, 0, 0),
(387, 'admin', 0, '192', 95, 0, 'Your account has been credited for the refund of the order-___-#95', 0, 'Your account has been credited for the refund of the order-___-#95 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608824611, 0, 0, 0, 0, 0),
(388, 'orderstatus', 192, '189', 96, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>96</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608825091, 0, 0, 0, 0, 0),
(389, 'orderstatus', 192, '189', 96, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/sethu\'>sethu</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">96</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608825199, 0, 0, 0, 0, 0),
(390, 'admin', 0, '192', 96, 0, 'Your account has been credited for the refund of the order-___-#96', 0, 'Your account has been credited for the refund of the order-___-#96 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608825335, 0, 0, 0, 0, 0),
(391, 'orderstatus', 192, '189', 97, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>97</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608825853, 0, 0, 0, 0, 0),
(392, 'orderstatus', 192, '189', 98, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>98</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608827046, 0, 0, 0, 0, 0),
(393, 'orderstatus', 189, '192', 98, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/98\">98</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608827074, 0, 0, 0, 0, 0),
(394, 'orderstatus', 189, '192', 98, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/98\">98</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608827108, 0, 0, 0, 0, 0),
(395, 'orderstatus', 192, '189', 98, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/sethu\'>sethu</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">98</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608827126, 0, 0, 0, 0, 0),
(396, 'admin', 0, '192', 98, 0, 'Your account has been credited for the refund of the order-___-#98', 0, 'Your account has been credited for the refund of the order-___-#98 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608827159, 0, 0, 0, 0, 0),
(397, 'orderstatus', 189, '192', 97, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/97\">97</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608827359, 0, 0, 0, 0, 0),
(398, 'orderstatus', 189, '192', 97, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/97\">97</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608827390, 0, 0, 0, 0, 0),
(399, 'orderstatus', 192, '189', 97, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sethu\'>sethu</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608827416, 0, 0, 0, 0, 0),
(400, 'dispute', 192, '189', 1, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a> -___-created a dispute on your order : -___-<a href=\'http://localhost/markethub/merchant/disputeBuyer/97\'>97</a>', 0, 'sdfffsdf', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608827430, 0, 0, 0, 0, 0),
(401, 'admin', 0, '189', 97, 0, 'Your account has been credited for the order-___-#97 - $242', 0, 'Your account has been credited for the order-___-#97 - $242', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608827601, 0, 0, 0, 0, 0),
(402, 'groupgift', 193, '189', 0, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/1\">1</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608959013, 0, 0, 0, 0, 0),
(403, 'groupgift', 0, '193', 0, 0, 'You have created a group gift on the product-___-beem for DoraDora', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608959013, 0, 0, 0, 0, 0),
(404, 'groupgift', 192, '189', 0, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/2\">2</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608960016, 0, 0, 0, 0, 0),
(405, 'groupgift', 0, '192', 0, 0, 'You have created a group gift on the product-___-beem for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608960016, 0, 0, 0, 0, 0),
(406, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfMjMzMQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfMjMzMQ==\"}}', 1608960819, 0, 0, 0, 0, 0),
(407, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfMjMzMQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfMjMzMQ==\"}}', 1608960819, 0, 0, 0, 0, 0),
(411, 'orderstatus', 186, '189', 100, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>100</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608961504, 0, 0, 0, 0, 0),
(412, 'orderstatus', 186, '189', 101, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>101</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608964095, 0, 0, 0, 0, 0),
(413, 'orderstatus', 189, '186', 101, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/101\">101</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608964845, 0, 0, 0, 0, 0),
(414, 'orderstatus', 189, '186', 101, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/101\">101</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608965093, 0, 0, 0, 0, 0),
(415, 'orderstatus', 186, '189', 101, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608965247, 0, 0, 0, 0, 0),
(416, 'orderstatus', 186, '189', 102, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>102</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608965872, 0, 0, 0, 0, 0),
(417, 'orderstatus', 189, '186', 102, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/102\">102</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608965930, 0, 0, 0, 0, 0),
(418, 'orderstatus', 189, '186', 102, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/102\">102</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608965966, 0, 0, 0, 0, 0),
(419, 'orderstatus', 186, '189', 102, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608966031, 0, 0, 0, 0, 0),
(420, 'admin', 0, '189', 102, 0, 'Your account has been credited for the order-___-#102 - $164', 0, 'Your account has been credited for the order-___-#102 - $164', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608966465, 0, 0, 0, 0, 0),
(421, 'admin', 0, '189', 68, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjhfNzA2OA==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfNzA2OA==\"}}', 1608966872, 0, 0, 0, 0, 0),
(422, 'additem', 189, '0', 68, 68, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjhfNzA2OA==\'>Spider</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608822170_189.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjhfNzA2OA==\"}}', 1608966872, 0, 0, 0, 0, 0),
(423, 'orderstatus', 186, '189', 103, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>103</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608966909, 0, 0, 0, 0, 0),
(424, 'orderstatus', 189, '186', 103, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/103\">103</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608966943, 0, 0, 0, 0, 0),
(425, 'orderstatus', 189, '186', 103, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/103\">103</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608966960, 0, 0, 0, 0, 0),
(426, 'orderstatus', 186, '189', 103, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608967050, 0, 0, 0, 0, 0),
(427, 'admin', 0, '189', 103, 0, 'Your account has been credited for the order-___-#103 - $122', 0, 'Your account has been credited for the order-___-#103 - $122', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608967114, 0, 0, 0, 0, 0),
(428, 'orderstatus', 186, '189', 104, 0, '<a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>104</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608967432, 0, 0, 0, 0, 0),
(429, 'orderstatus', 189, '186', 104, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/104\">104</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608967463, 0, 0, 0, 0, 0),
(430, 'orderstatus', 189, '186', 104, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/104\">104</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608967479, 0, 0, 0, 0, 0),
(431, 'orderstatus', 186, '189', 104, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/nadesh\'>nadesh</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/nadesh\"}}', 1608967506, 0, 0, 0, 0, 0),
(432, 'admin', 0, '189', 104, 0, 'Your account has been credited for the order-___-#104 - $196', 0, 'Your account has been credited for the order-___-#104 - $196', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608967559, 0, 0, 0, 0, 0),
(433, 'groupgift', 185, '177', 0, 0, '<a href=\'http://localhost/markethub/people/deepthisree\'>deepthi</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/3\">3</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/deepthisree\"}}', 1608968113, 0, 0, 0, 0, 0),
(434, 'groupgift', 0, '185', 0, 0, 'You have created a group gift on the product-___-Nikon for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/deepthisree\"}}', 1608968113, 0, 0, 0, 0, 0),
(435, 'orderstatus', 194, '177', 105, 0, '<a href=\'http://localhost/markethub/people/karthik\'>karthik</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>105</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/karthik\"}}', 1608973315, 0, 0, 0, 0, 0),
(436, 'groupgift', 195, '71', 0, 0, '<a href=\'http://localhost/markethub/people/ram\'>ram</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/4\">4</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ram\"}}', 1608977998, 0, 0, 0, 0, 0),
(437, 'groupgift', 0, '195', 0, 0, 'You have created a group gift on the product-___-Comission 2 for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ram\"}}', 1608977998, 0, 0, 0, 0, 0),
(438, 'groupgift', 195, '71', 0, 0, '<a href=\'http://localhost/markethub/people/ram\'>ram</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/5\">5</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ram\"}}', 1608978865, 0, 0, 0, 0, 0),
(439, 'groupgift', 0, '195', 0, 0, 'You have created a group gift on the product-___-Comission 2 for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ram\"}}', 1608978865, 0, 0, 0, 0, 0),
(440, 'orderstatus', 71, '195', 107, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/107\">107</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608978993, 0, 0, 0, 0, 0),
(441, 'orderstatus', 71, '195', 107, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/107\">107</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608979009, 0, 0, 0, 0, 0),
(442, 'orderstatus', 195, '71', 107, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ram\'>ram</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ram\"}}', 1608979034, 0, 0, 0, 0, 0),
(443, 'admin', 0, '71', 107, 0, 'Your account has been credited for the order-___-#107 - $243', 0, 'Your account has been credited for the order-___-#107 - $243', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608979126, 0, 0, 0, 0, 0),
(444, 'admin', 0, '181', 67, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjdfNjA3Ng==\'>saree saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608732511_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjdfNjA3Ng==\"}}', 1608981407, 0, 0, 0, 0, 0),
(445, 'additem', 181, '0', 67, 67, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjdfNjA3Ng==\'>saree saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608732511_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjdfNjA3Ng==\"}}', 1608981407, 0, 0, 0, 0, 0),
(446, 'orderstatus', 196, '181', 108, 0, '<a href=\'http://localhost/markethub/people/mainuser\'>main</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>108</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/mainuser\"}}', 1608981475, 0, 0, 0, 0, 0),
(447, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfODI0OQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfODI0OQ==\"}}', 1608981951, 0, 0, 0, 0, 0),
(448, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfODI0OQ==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfODI0OQ==\"}}', 1608981951, 0, 0, 0, 0, 0),
(449, 'orderstatus', 197, '189', 109, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>109</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608982174, 0, 0, 0, 0, 0),
(450, 'orderstatus', 189, '197', 109, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/109\">109</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982206, 0, 0, 0, 0, 0),
(451, 'orderstatus', 189, '197', 109, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/109\">109</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982209, 0, 0, 0, 0, 0),
(452, 'orderstatus', 189, '197', 109, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/109\">109</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982213, 0, 0, 0, 0, 0),
(453, 'orderstatus', 189, '197', 109, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/109\">109</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982234, 0, 0, 0, 0, 0),
(454, 'orderstatus', 197, '189', 109, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608982256, 0, 0, 0, 0, 0),
(455, 'orderstatus', 197, '189', 110, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>110</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608982453, 0, 0, 0, 0, 0),
(456, 'orderstatus', 189, '197', 110, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/110\">110</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982525, 0, 0, 0, 0, 0),
(457, 'orderstatus', 189, '197', 110, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/110\">110</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982546, 0, 0, 0, 0, 0),
(458, 'orderstatus', 197, '189', 110, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608982557, 0, 0, 0, 0, 0),
(459, 'admin', 0, '189', 110, 0, 'Your account has been credited for the order-___-#110 - $151', 0, 'Your account has been credited for the order-___-#110 - $151', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608982750, 0, 0, 0, 0, 0),
(460, 'orderstatus', 197, '189', 111, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>111</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608982918, 0, 0, 0, 0, 0),
(461, 'orderstatus', 189, '197', 111, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/111\">111</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608982969, 0, 0, 0, 0, 0),
(462, 'orderstatus', 189, '197', 111, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/111\">111</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608983000, 0, 0, 0, 0, 0),
(463, 'orderstatus', 197, '189', 111, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608983019, 0, 0, 0, 0, 0),
(464, 'admin', 0, '189', 111, 0, 'Your account has been credited for the order-___-#111 - $222', 0, 'Your account has been credited for the order-___-#111 - $222', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608983285, 0, 0, 0, 0, 0),
(465, 'orderstatus', 197, '189', 112, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>112</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608983388, 0, 0, 0, 0, 0),
(466, 'orderstatus', 197, '189', 112, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">112</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608983425, 0, 0, 0, 0, 0),
(467, 'admin', 0, '197', 112, 0, 'Your account has been credited for the refund of the order-___-#112', 0, 'Your account has been credited for the refund of the order-___-#112 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608983454, 0, 0, 0, 0, 0),
(468, 'groupgift', 197, '189', 0, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/6\">6</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608983952, 0, 0, 0, 0, 0),
(469, 'groupgift', 0, '197', 0, 0, 'You have created a group gift on the product-___-beem for share', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608983952, 0, 0, 0, 0, 0),
(470, 'orderstatus', 189, '197', 113, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/113\">113</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608984656, 0, 0, 0, 0, 0),
(471, 'orderstatus', 189, '197', 113, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/113\">113</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608984682, 0, 0, 0, 0, 0),
(472, 'orderstatus', 197, '189', 113, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608984725, 0, 0, 0, 0, 0),
(473, 'admin', 0, '189', 113, 0, 'Your account has been credited for the order-___-#113 - $181', 0, 'Your account has been credited for the order-___-#113 - $181', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608984984, 0, 0, 0, 0, 0),
(474, 'orderstatus', 183, '181', 114, 0, '<a href=\'http://localhost/markethub/people/facebook\'>facebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>114</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608985117, 0, 0, 0, 0, 0),
(475, 'orderstatus', 181, '183', 76, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/76\">76</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608985346, 0, 0, 0, 0, 0),
(476, 'orderstatus', 181, '183', 76, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/76\">76</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608985349, 0, 0, 0, 0, 0),
(477, 'orderstatus', 181, '183', 76, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/76\">76</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608985442, 0, 0, 0, 0, 0),
(478, 'orderstatus', 183, '181', 76, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/facebook\'>facebook</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">76</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608985467, 0, 0, 0, 0, 0),
(479, 'orderstatus', 183, '181', 114, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/facebook\'>facebook</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">114</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608985484, 0, 0, 0, 0, 0),
(480, 'admin', 0, '183', 114, 0, 'Your account has been credited for the refund of the order-___-#114', 0, 'Your account has been credited for the refund of the order-___-#114 - $606', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608985615, 0, 0, 0, 0, 0),
(481, 'ordermessage', 181, '183', 76, 0, 'Seller-___- <a href=\'http://localhost/markethub/people/sure\'>queen</a> -___-sent a message-___- #<a href=\"http://localhost/markethub/buyerconversation/76\">76</a>', 0, 'hi', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608985746, 0, 0, 0, 0, 0),
(482, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfNDcyNg==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfNDcyNg==\"}}', 1608985876, 0, 0, 0, 0, 0),
(483, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfNDcyNg==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfNDcyNg==\"}}', 1608985876, 0, 0, 0, 0, 0),
(484, 'orderstatus', 197, '189', 115, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>115</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608986022, 0, 0, 0, 0, 0),
(485, 'orderstatus', 189, '197', 115, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/115\">115</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608986045, 0, 0, 0, 0, 0),
(486, 'orderstatus', 189, '197', 115, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/115\">115</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608986078, 0, 0, 0, 0, 0),
(487, 'orderstatus', 197, '189', 115, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608986090, 0, 0, 0, 0, 0),
(488, 'orderstatus', 183, '181', 116, 0, '<a href=\'http://localhost/markethub/people/facebook\'>facebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>116</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608986277, 0, 0, 0, 0, 0),
(489, 'orderstatus', 181, '183', 116, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/116\">116</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608986322, 0, 0, 0, 0, 0),
(490, 'orderstatus', 181, '183', 116, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/116\">116</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608986325, 0, 0, 0, 0, 0),
(491, 'orderstatus', 181, '183', 116, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/116\">116</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608986388, 0, 0, 0, 0, 0),
(492, 'orderstatus', 183, '181', 116, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/facebook\'>facebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608986404, 0, 0, 0, 0, 0),
(493, 'orderstatus', 183, '181', 116, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/facebook\'>facebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608986408, 0, 0, 0, 0, 0),
(494, 'orderstatus', 192, '71', 117, 0, '<a href=\'http://localhost/markethub/people/sethu\'>sethu</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>117</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608986442, 0, 0, 0, 0, 0),
(495, 'orderstatus', 71, '192', 117, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/117\">117</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608986485, 0, 0, 0, 0, 0),
(496, 'orderstatus', 71, '192', 117, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/117\">117</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1608986501, 0, 0, 0, 0, 0),
(497, 'orderstatus', 192, '71', 117, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sethu\'>sethu</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sethu\"}}', 1608986516, 0, 0, 0, 0, 0),
(498, 'orderstatus', 197, '189', 118, 0, '<a href=\'http://localhost/markethub/people/sing\'>sing</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>118</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608986660, 0, 0, 0, 0, 0),
(499, 'orderstatus', 189, '197', 118, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/118\">118</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608986762, 0, 0, 0, 0, 0),
(500, 'orderstatus', 189, '197', 118, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/118\">118</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608986805, 0, 0, 0, 0, 0),
(501, 'orderstatus', 197, '189', 118, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/sing\'>sing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sing\"}}', 1608986855, 0, 0, 0, 0, 0),
(502, 'dispute', 183, '181', 2, 0, '<a href=\'http://localhost/markethub/people/facebook\'>facebook</a> -___-created a dispute on your order : -___-<a href=\'http://localhost/markethub/merchant/disputeBuyer/116\'>116</a>', 0, 'not cleared ', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/facebook\"}}', 1608986919, 0, 0, 0, 0, 0),
(503, 'admin', 0, '189', 69, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NjlfMjM4Nw==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfMjM4Nw==\"}}', 1608987487, 0, 0, 0, 0, 0),
(504, 'additem', 189, '0', 69, 69, '<a href=\'http://localhost/markethub/stores/today\'>today</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NjlfMjM4Nw==\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/today\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfMjM4Nw==\"}}', 1608987487, 0, 0, 0, 0, 0),
(505, 'orderstatus', 193, '189', 119, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>119</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608987577, 0, 0, 0, 0, 0),
(506, 'orderstatus', 193, '189', 119, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/share\'>share</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">119</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608987590, 0, 0, 0, 0, 0),
(507, 'admin', 0, '193', 119, 0, 'Your account has been credited for the refund of the order-___-#119', 0, 'Your account has been credited for the refund of the order-___-#119 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608987612, 0, 0, 0, 0, 0),
(508, 'orderstatus', 193, '189', 120, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>120</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608987705, 0, 0, 0, 0, 0),
(509, 'orderstatus', 189, '193', 120, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/120\">120</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608987746, 0, 0, 0, 0, 0),
(510, 'orderstatus', 189, '193', 120, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/120\">120</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608987749, 0, 0, 0, 0, 0),
(511, 'orderstatus', 189, '193', 120, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/120\">120</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608987773, 0, 0, 0, 0, 0),
(512, 'orderstatus', 193, '189', 120, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/share\'>share</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608987802, 0, 0, 0, 0, 0),
(513, 'invite', 199, '182', 0, 0, '<a href=\'http://localhost/markethub/people/googlemail\'>google</a> -___-accepted your invitation', 0, '<a href=\'http://localhost/markethub/people/googlemail\'>google</a> accepted your invitation and joined Stratus. You can follow google by visiting the profile', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/googlemail\"}}', 1608987840, 0, 0, 0, 0, 0),
(514, 'admin', 0, '181', 70, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzBfMzU5Mw==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608988051_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzBfMzU5Mw==\"}}', 1608988130, 0, 0, 0, 0, 0),
(515, 'additem', 181, '0', 70, 70, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzBfMzU5Mw==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608988051_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzBfMzU5Mw==\"}}', 1608988130, 0, 0, 0, 0, 0),
(516, 'admin', 0, '189', 120, 0, 'Your account has been credited for the order-___-#120 - $171', 0, 'Your account has been credited for the order-___-#120 - $171', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608988200, 0, 0, 0, 0, 0),
(517, 'admin', 0, '181', 71, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzFfNjMyMg==\'>saree1</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608988154_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzFfNjMyMg==\"}}', 1608988271, 0, 0, 0, 0, 0),
(518, 'additem', 181, '0', 71, 71, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzFfNjMyMg==\'>saree1</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608988154_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzFfNjMyMg==\"}}', 1608988271, 0, 0, 0, 0, 0),
(519, 'groupgift', 193, '189', 0, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/7\">7</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608988353, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(520, 'groupgift', 0, '193', 0, 0, 'You have created a group gift on the product-___-beem for sing', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608988353, 0, 0, 0, 0, 0),
(521, 'orderstatus', 185, '189', 121, 0, '<a href=\'http://localhost/markethub/people/deepthisree\'>deepthi</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>121</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/deepthisree\"}}', 1608988535, 0, 0, 0, 0, 0),
(522, 'orderstatus', 189, '185', 121, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/121\">121</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608988643, 0, 0, 0, 0, 0),
(523, 'orderstatus', 199, '181', 122, 0, '<a href=\'http://localhost/markethub/people/googlemail\'>google</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>122</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/googlemail\"}}', 1608988644, 0, 0, 0, 0, 0),
(524, 'credit', 199, '182', 0, 0, 'googlemail -___- Your account has credited for referral bonus', 0, 'Your account has credited for referral bonus with $8012', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/googlemail\"}}', 1608988647, 0, 0, 0, 0, 0),
(525, 'orderstatus', 189, '185', 121, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/121\">121</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608988660, 0, 0, 0, 0, 0),
(526, 'orderstatus', 185, '189', 121, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/deepthisree\'>deepthi</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/deepthisree\"}}', 1608988674, 0, 0, 0, 0, 0),
(527, 'admin', 0, '200', 72, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzJfNDY2Nw==\'>blue</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608989168_200.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzJfNDY2Nw==\"}}', 1608989212, 0, 0, 0, 0, 0),
(528, 'additem', 200, '0', 72, 72, '<a href=\'http://localhost/markethub/stores/sample-store\'>second</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzJfNDY2Nw==\'>blue</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/sample-store\"},\"item\":{\"image\":\"1608989168_200.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzJfNDY2Nw==\"}}', 1608989212, 0, 0, 0, 0, 0),
(529, 'orderstatus', 193, '189', 123, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>123</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608989246, 0, 0, 0, 0, 0),
(530, 'orderstatus', 193, '189', 123, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/share\'>share</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">123</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608989261, 0, 0, 0, 0, 0),
(531, 'admin', 0, '193', 123, 0, 'Your account has been credited for the refund of the order-___-#123', 0, 'Your account has been credited for the refund of the order-___-#123 - $201', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608989279, 0, 0, 0, 0, 0),
(532, 'orderstatus', 182, '200', 124, 0, '<a href=\'http://localhost/markethub/people/lilly\'>lilly water</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>124</a>', 0, NULL, '{\"user\":{\"image\":\"1608725319_182.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lilly\"}}', 1608989297, 0, 0, 0, 0, 0),
(533, 'orderstatus', 193, '189', 125, 0, '<a href=\'http://localhost/markethub/people/share\'>share</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>125</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608989375, 0, 0, 0, 0, 0),
(534, 'orderstatus', 200, '182', 124, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/124\">124</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/second\"}}', 1608989390, 0, 0, 0, 0, 0),
(535, 'orderstatus', 200, '182', 124, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/124\">124</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/second\"}}', 1608989394, 0, 0, 0, 0, 0),
(536, 'orderstatus', 189, '193', 125, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/125\">125</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608989414, 0, 0, 0, 0, 0),
(537, 'orderstatus', 189, '193', 125, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/125\">125</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608989418, 0, 0, 0, 0, 0),
(538, 'orderstatus', 200, '182', 124, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/124\">124</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/second\"}}', 1608989446, 0, 0, 0, 0, 0),
(539, 'orderstatus', 189, '193', 125, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/125\">125</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/today\"}}', 1608989469, 0, 0, 0, 0, 0),
(540, 'orderstatus', 193, '189', 125, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/share\'>share</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/share\"}}', 1608989492, 0, 0, 0, 0, 0),
(541, 'orderstatus', 182, '200', 124, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/lilly\'>lilly water</a>', 0, NULL, '{\"user\":{\"image\":\"1608725319_182.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/lilly\"}}', 1608989506, 0, 0, 0, 0, 0),
(542, 'admin', 0, '189', 125, 0, 'Your account has been credited for the order-___-#125 - $151', 0, 'Your account has been credited for the order-___-#125 - $151', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1608989719, 0, 0, 0, 0, 0),
(543, 'admin', 0, '200', 73, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzNfOTQwNA==\'>blue shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608989797_200.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzNfOTQwNA==\"}}', 1608989998, 0, 0, 0, 0, 0),
(544, 'additem', 200, '0', 73, 73, '<a href=\'http://localhost/markethub/stores/sample-store\'>second</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzNfOTQwNA==\'>blue shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/sample-store\"},\"item\":{\"image\":\"1608989797_200.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzNfOTQwNA==\"}}', 1608989998, 0, 0, 0, 0, 0),
(545, 'orderstatus', 199, '200', 126, 0, '<a href=\'http://localhost/markethub/people/googlemail\'>google</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>126</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/googlemail\"}}', 1608990249, 0, 0, 0, 0, 0),
(546, 'admin', 0, '181', 74, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzRfOTkyMA==\'>blue blue blue</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1608991199_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzRfOTkyMA==\"}}', 1608991263, 0, 0, 0, 0, 0),
(547, 'additem', 181, '0', 74, 74, '<a href=\'http://localhost/markethub/stores/welcome-store\'>queen</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzRfOTkyMA==\'>blue blue blue</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/welcome-store\"},\"item\":{\"image\":\"1608991199_181.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzRfOTkyMA==\"}}', 1608991263, 0, 0, 0, 0, 0),
(548, 'orderstatus', 201, '181', 127, 0, '<a href=\'http://localhost/markethub/people/link\'>linkfacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>127</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/link\"}}', 1608991690, 0, 0, 0, 0, 0),
(549, 'orderstatus', 181, '201', 127, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/127\">127</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608991756, 0, 0, 0, 0, 0),
(550, 'orderstatus', 181, '201', 127, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/127\">127</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608991760, 0, 0, 0, 0, 0),
(551, 'orderstatus', 181, '201', 127, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/127\">127</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sure\"}}', 1608991799, 0, 0, 0, 0, 0),
(552, 'orderstatus', 201, '181', 127, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/link\'>linkfacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/link\"}}', 1608991822, 0, 0, 0, 0, 0),
(553, 'admin', 0, '203', 75, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzVfNDkzOQ==\'>mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609392501_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzVfNDkzOQ==\"}}', 1609392611, 0, 0, 0, 0, 0),
(554, 'additem', 203, '0', 75, 75, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzVfNDkzOQ==\'>mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609392501_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzVfNDkzOQ==\"}}', 1609392611, 0, 0, 0, 0, 0),
(555, 'admin', 0, '203', 76, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzZfOTUwNA==\'>mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609392924_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzZfOTUwNA==\"}}', 1609393007, 0, 0, 0, 0, 0),
(556, 'additem', 203, '0', 76, 76, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzZfOTUwNA==\'>mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609392924_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzZfOTUwNA==\"}}', 1609393007, 0, 0, 0, 0, 0),
(557, 'orderstatus', 205, '203', 128, 0, '<a href=\'http://localhost/markethub/people/testemail\'>testemail</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>128</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/testemail\"}}', 1609393783, 0, 0, 0, 0, 0),
(558, 'orderstatus', 203, '205', 128, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/128\">128</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609395429, 0, 0, 0, 0, 0),
(559, 'orderstatus', 203, '205', 128, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/128\">128</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609395433, 0, 0, 0, 0, 0),
(560, 'ordermessage', 205, '203', 128, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/testemail\'>testemail</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/128\">view</a>', 0, 'hiiiii', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/testemail\"}}', 1609395480, 0, 0, 0, 0, 0),
(561, 'orderstatus', 203, '205', 128, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/128\">128</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609395570, 0, 0, 0, 0, 0),
(562, 'orderstatus', 203, '205', 128, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/128\">128</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609395710, 0, 0, 0, 0, 0),
(563, 'orderstatus', 205, '203', 128, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/testemail\'>testemail</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/testemail\"}}', 1609395733, 0, 0, 0, 0, 0),
(564, 'fashionimage', 205, '203', 0, 0, '<a href=\'http://localhost/markethub/people/testemail\'>testemail</a> -___-uploaded fashion image on your product-___- <a href=\'http://localhost/markethub/listing/NzZfMzc5Nw==\'>mobile</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/testemail\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzZfMzc5Nw==\"}}', 1609396002, 0, 0, 0, 0, 0),
(565, 'fashionimage', 203, '205', 2, 76, 'well -___- accepted your selfie on product -___- mobile', 0, '', '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609396020, 0, 0, 0, 0, 0),
(566, 'admin', 0, '189', 121, 0, 'Your account has been credited for the order-___-#121 - $122', 0, 'Your account has been credited for the order-___-#121 - $122', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609399214, 0, 0, 0, 0, 0),
(567, 'admin', 0, '203', 77, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzdfNjE4Mw==\'>test saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609399398_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzdfNjE4Mw==\"}}', 1609399573, 0, 0, 0, 0, 0),
(568, 'additem', 203, '0', 77, 77, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzdfNjE4Mw==\'>test saree</a>', 0, NULL, '{\"user\":{\"image\":\"1609396191_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609399398_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzdfNjE4Mw==\"}}', 1609399573, 0, 0, 0, 0, 0),
(569, 'admin', 0, '189', 118, 0, 'Your account has been credited for the order-___-#118 - $190.09', 0, 'Your account has been credited for the order-___-#118 - $190.09', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609399851, 0, 0, 0, 0, 0),
(570, 'orderstatus', 206, '203', 129, 0, '<a href=\'http://localhost/markethub/people/secondmail\'>secondmail</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/secondmail\"}}', 1609400258, 0, 0, 0, 0, 0),
(571, 'orderstatus', 203, '206', 129, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/129\">129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609400468, 0, 0, 0, 0, 0),
(572, 'orderstatus', 203, '206', 129, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/129\">129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609400472, 0, 0, 0, 0, 0),
(573, 'orderstatus', 203, '206', 129, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/129\">129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609400475, 0, 0, 0, 0, 0),
(574, 'orderstatus', 203, '206', 129, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/129\">129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609400479, 0, 0, 0, 0, 0),
(575, 'orderstatus', 203, '206', 129, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/129\">129</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609400537, 0, 0, 0, 0, 0),
(576, 'orderstatus', 206, '203', 129, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/secondmail\'>secondmail</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/secondmail\"}}', 1609400557, 0, 0, 0, 0, 0),
(577, 'orderstatus', 206, '203', 129, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/secondmail\'>secondmail</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/secondmail\"}}', 1609400561, 0, 0, 0, 0, 0),
(578, 'admin', 0, '203', 129, 0, 'Your account has been credited for the order-___-#129 - $760', 0, 'Your account has been credited for the order-___-#129 - $760', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609400618, 0, 0, 0, 0, 0),
(579, 'admin', 0, '203', 78, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzhfNTc2Ng==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609401147_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzhfNTc2Ng==\"}}', 1609401194, 0, 0, 0, 0, 0),
(580, 'additem', 203, '0', 78, 78, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzhfNTc2Ng==\'>shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1609396191_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609401147_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzhfNTc2Ng==\"}}', 1609401194, 0, 0, 0, 0, 0),
(581, 'admin', 0, '203', 80, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODBfMzUyMg==\'>home</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609401517_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODBfMzUyMg==\"}}', 1609401593, 0, 0, 0, 0, 0),
(582, 'additem', 203, '0', 80, 80, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODBfMzUyMg==\'>home</a>', 0, NULL, '{\"user\":{\"image\":\"1609396191_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609401517_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODBfMzUyMg==\"}}', 1609401593, 0, 0, 0, 0, 0),
(583, 'admin', 0, '203', 79, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/NzlfNzIzMQ==\'>women saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609401348_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzlfNzIzMQ==\"}}', 1609401596, 0, 0, 0, 0, 0),
(584, 'additem', 203, '0', 79, 79, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/NzlfNzIzMQ==\'>women saree</a>', 0, NULL, '{\"user\":{\"image\":\"1609396191_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609401348_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NzlfNzIzMQ==\"}}', 1609401596, 0, 0, 0, 0, 0),
(585, 'orderstatus', 207, '203', 130, 0, '<a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>130</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609402148, 0, 0, 0, 0, 0),
(586, 'orderstatus', 203, '207', 130, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/130\">130</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609402234, 0, 0, 0, 0, 0),
(587, 'orderstatus', 203, '207', 130, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/130\">130</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609402238, 0, 0, 0, 0, 0),
(588, 'orderstatus', 203, '207', 130, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/130\">130</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609402276, 0, 0, 0, 0, 0),
(589, 'orderstatus', 207, '203', 130, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609402291, 0, 0, 0, 0, 0),
(590, 'orderstatus', 207, '203', 131, 0, '<a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609403324, 0, 0, 0, 0, 0),
(591, 'orderstatus', 203, '207', 131, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/131\">131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609403401, 0, 0, 0, 0, 0),
(592, 'orderstatus', 203, '207', 131, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/131\">131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609403404, 0, 0, 0, 0, 0),
(593, 'orderstatus', 203, '207', 131, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/131\">131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609403455, 0, 0, 0, 0, 0),
(594, 'orderstatus', 207, '203', 131, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609403475, 0, 0, 0, 0, 0),
(595, 'orderstatus', 203, '207', 131, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/131\">131</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609403777, 0, 0, 0, 0, 0),
(596, 'orderstatus', 207, '203', 131, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609403800, 0, 0, 0, 0, 0),
(597, 'orderstatus', 207, '203', 131, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609403804, 0, 0, 0, 0, 0),
(598, 'orderstatus', 207, '203', 132, 0, '<a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609404009, 0, 0, 0, 0, 0),
(599, 'orderstatus', 203, '207', 132, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404058, 0, 0, 0, 0, 0),
(600, 'orderstatus', 203, '207', 132, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404062, 0, 0, 0, 0, 0),
(601, 'orderstatus', 203, '207', 132, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404065, 0, 0, 0, 0, 0),
(602, 'orderstatus', 203, '207', 132, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404069, 0, 0, 0, 0, 0),
(603, 'orderstatus', 203, '207', 132, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404072, 0, 0, 0, 0, 0),
(604, 'orderstatus', 203, '207', 132, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/132\">132</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404094, 0, 0, 0, 0, 0),
(605, 'orderstatus', 207, '203', 132, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609404117, 0, 0, 0, 0, 0),
(606, 'orderstatus', 207, '203', 133, 0, '<a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609404781, 0, 0, 0, 0, 0),
(607, 'orderstatus', 203, '207', 133, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/133\">133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404816, 0, 0, 0, 0, 0),
(608, 'orderstatus', 203, '207', 133, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/133\">133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404819, 0, 0, 0, 0, 0),
(609, 'orderstatus', 203, '207', 133, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/133\">133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404822, 0, 0, 0, 0, 0),
(610, 'orderstatus', 203, '207', 133, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/133\">133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404826, 0, 0, 0, 0, 0),
(611, 'orderstatus', 203, '207', 133, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/133\">133</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/well\"}}', 1609404847, 0, 0, 0, 0, 0),
(612, 'orderstatus', 207, '203', 133, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609404863, 0, 0, 0, 0, 0),
(613, 'orderstatus', 207, '175', 134, 0, '<a href=\'http://localhost/markethub/people/samplefacebook\'>samplefacebook</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>134</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/samplefacebook\"}}', 1609405199, 0, 0, 0, 0, 0),
(614, 'admin', 0, '203', 81, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODFfNTMx\'>fdgdfgf</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609405546_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODFfNTMx\"}}', 1609405594, 0, 0, 0, 0, 0),
(615, 'additem', 203, '0', 81, 81, '<a href=\'http://localhost/markethub/stores/store\'>water</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODFfNTMx\'>fdgdfgf</a>', 0, NULL, '{\"user\":{\"image\":\"1609396191_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/store\"},\"item\":{\"image\":\"1609405546_203.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODFfNTMx\"}}', 1609405594, 0, 0, 0, 0, 0),
(616, 'orderstatus', 208, '203', 135, 0, '<a href=\'http://localhost/markethub/people/sampleeeeeee\'>samplemmmmmmm</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>135</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/sampleeeeeee\"}}', 1609405800, 0, 0, 0, 0, 0),
(617, 'admin', 0, '209', 82, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODJfMTg5OA==\'>car</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609746810_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODJfMTg5OA==\"}}', 1609746877, 0, 0, 0, 0, 0),
(618, 'additem', 209, '0', 82, 82, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODJfMTg5OA==\'>car</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609746810_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODJfMTg5OA==\"}}', 1609746877, 0, 0, 0, 0, 0),
(619, 'admin', 0, '209', 83, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODNfNTA3NA==\'>black car</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609747187_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODNfNTA3NA==\"}}', 1609747247, 0, 0, 0, 0, 0),
(620, 'additem', 209, '0', 83, 83, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODNfNTA3NA==\'>black car</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609747187_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODNfNTA3NA==\"}}', 1609747247, 0, 0, 0, 0, 0),
(621, 'admin', 0, '209', 84, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODRfNTg2OQ==\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609747758_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODRfNTg2OQ==\"}}', 1609747810, 0, 0, 0, 0, 0),
(622, 'additem', 209, '0', 84, 84, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODRfNTg2OQ==\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609747758_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODRfNTg2OQ==\"}}', 1609747810, 0, 0, 0, 0, 0),
(623, 'admin', 0, '0', 0, 0, 'posted a news:', 0, 'hi', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609761850, 0, 0, 0, 0, 0),
(624, 'orderstatus', 210, '209', 136, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>136</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762401, 0, 0, 0, 0, 0),
(625, 'orderstatus', 209, '210', 136, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/136\">136</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609762506, 0, 0, 0, 0, 0),
(626, 'orderstatus', 209, '210', 136, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/136\">136</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609762510, 0, 0, 0, 0, 0),
(627, 'orderstatus', 209, '210', 136, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/136\">136</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609762556, 0, 0, 0, 0, 0),
(628, 'orderstatus', 210, '209', 136, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762571, 0, 0, 0, 0, 0),
(629, 'admin', 0, '209', 136, 0, 'Your account has been credited for the order-___-#136 - $710', 0, 'Your account has been credited for the order-___-#136 - $710', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609762648, 0, 0, 0, 0, 0),
(630, 'groupgift', 210, '209', 0, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/8\">8</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762878, 0, 0, 0, 0, 0),
(631, 'groupgift', 0, '210', 0, 0, 'You have created a group gift on the product-___-black car for lilly water', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762878, 0, 0, 0, 0, 0),
(632, 'groupgift', 210, '209', 0, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/8\">8</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762886, 0, 0, 0, 0, 0),
(633, 'groupgift', 0, '210', 0, 0, 'You have created a group gift on the product-___-black car for lilly water', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609762886, 0, 0, 0, 0, 0),
(634, 'admin', 0, '209', 85, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODVfMTk2OA==\'>test test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609763623_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODVfMTk2OA==\"}}', 1609763671, 0, 0, 0, 0, 0),
(635, 'additem', 209, '0', 85, 85, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODVfMTk2OA==\'>test test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609763623_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODVfMTk2OA==\"}}', 1609763671, 0, 0, 0, 0, 0),
(636, 'admin', 0, '209', 86, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODZfNzI3NA==\'>test test test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609765613_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODZfNzI3NA==\"}}', 1609765662, 0, 0, 0, 0, 0),
(637, 'additem', 209, '0', 86, 86, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODZfNzI3NA==\'>test test test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609765613_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODZfNzI3NA==\"}}', 1609765662, 0, 0, 0, 0, 0),
(638, 'admin', 0, '209', 87, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODdfNTYwMQ==\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609766375_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODdfNTYwMQ==\"}}', 1609766421, 0, 0, 0, 0, 0),
(639, 'additem', 209, '0', 87, 87, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODdfNTYwMQ==\'>test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609766375_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODdfNTYwMQ==\"}}', 1609766421, 0, 0, 0, 0, 0),
(640, 'orderstatus', 210, '209', 138, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>138</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609766464, 0, 0, 0, 0, 0),
(641, 'orderstatus', 209, '210', 138, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/138\">138</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609766506, 0, 0, 0, 0, 0),
(642, 'orderstatus', 209, '210', 138, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/138\">138</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609766509, 0, 0, 0, 0, 0),
(643, 'orderstatus', 210, '209', 138, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">138</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609766532, 0, 0, 0, 0, 0),
(644, 'admin', 0, '210', 138, 0, 'Your account has been credited for the refund of the order-___-#138', 0, 'Your account has been credited for the refund of the order-___-#138 - $101', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609766586, 0, 0, 0, 0, 0),
(645, 'orderstatus', 209, '210', 137, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/137\">137</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609766901, 0, 0, 0, 0, 0),
(646, 'orderstatus', 209, '210', 137, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/137\">137</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609766905, 0, 0, 0, 0, 0),
(647, 'orderstatus', 209, '210', 137, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/137\">137</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609766949, 0, 0, 0, 0, 0),
(648, 'orderstatus', 210, '209', 137, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609766964, 0, 0, 0, 0, 0),
(649, 'orderstatus', 210, '209', 137, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609766968, 0, 0, 0, 0, 0),
(650, 'admin', 0, '209', 137, 0, 'Your account has been credited for the order-___-#137 - $1010', 0, 'Your account has been credited for the order-___-#137 - $1010', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609767023, 0, 0, 0, 0, 0),
(651, 'credit', 0, '210', 0, 0, 'You have received a gift card -___-2D59aK5a', 0, 'You have received a Gift card from your friend  worth 10 use this code on checkout: 2D59aK5a', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609767157, 0, 0, 0, 0, 0),
(652, 'admin', 0, '209', 88, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODhfNzg4\'>testtttt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609767223_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODhfNzg4\"}}', 1609767280, 0, 0, 0, 0, 0),
(653, 'additem', 209, '0', 88, 88, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODhfNzg4\'>testtttt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609767223_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODhfNzg4\"}}', 1609767280, 0, 0, 0, 0, 0),
(654, 'orderstatus', 210, '209', 139, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609767407, 0, 0, 0, 0, 0),
(655, 'orderstatus', 209, '210', 139, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/139\">139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609767449, 0, 0, 0, 0, 0),
(656, 'orderstatus', 209, '210', 139, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/139\">139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609767452, 0, 0, 0, 0, 0),
(657, 'orderstatus', 209, '210', 139, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/139\">139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609767502, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(658, 'orderstatus', 210, '209', 139, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609767524, 0, 0, 0, 0, 0),
(659, 'orderstatus', 210, '209', 139, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">139</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609767527, 0, 0, 0, 0, 0),
(660, 'admin', 0, '210', 139, 0, 'Your account has been credited for the refund of the order-___-#139', 0, 'Your account has been credited for the refund of the order-___-#139 - $202', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609767563, 0, 0, 0, 0, 0),
(661, 'orderstatus', 210, '209', 140, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609822327, 0, 0, 0, 0, 0),
(662, 'orderstatus', 209, '210', 140, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/140\">140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609825784, 0, 0, 0, 0, 0),
(663, 'orderstatus', 209, '210', 140, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/140\">140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609825787, 0, 0, 0, 0, 0),
(664, 'orderstatus', 209, '210', 140, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/140\">140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609825822, 0, 0, 0, 0, 0),
(665, 'orderstatus', 210, '209', 140, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609825857, 0, 0, 0, 0, 0),
(666, 'orderstatus', 210, '209', 140, 0, 'Your order has been claimed by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>, Order id : <a href=\"http://localhost/markethub/merchant/claimedorders/\">140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609825860, 0, 0, 0, 0, 0),
(667, 'orderstatus', 210, '209', 140, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/twitter\'>twitter</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609825984, 0, 0, 0, 0, 0),
(668, 'admin', 0, '209', 89, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/ODlfMjU5Ng==\'>weww</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1609826067_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODlfMjU5Ng==\"}}', 1609826121, 0, 0, 0, 0, 0),
(669, 'additem', 209, '0', 89, 89, '<a href=\'http://localhost/markethub/stores/quit-store\'>quit</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/ODlfMjU5Ng==\'>weww</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/quit-store\"},\"item\":{\"image\":\"1609826067_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODlfMjU5Ng==\"}}', 1609826121, 0, 0, 0, 0, 0),
(670, 'favorite', 211, '209', 89, 89, '<a href=\'http://localhost/markethub/people/reddd\'>reddd</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/89/weww\'>weww</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/reddd\"},\"item\":{\"image\":\"1609826067_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODlfMjI3NA==\"}}', 1609833035, 0, 0, 0, 0, 0),
(671, 'dispute', 210, '209', 3, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a> -___-created a dispute on your order : -___-<a href=\'http://localhost/markethub/merchant/disputeBuyer/140\'>140</a>', 0, 'break', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609835260, 0, 0, 0, 0, 0),
(672, 'admin', 0, '210', 3, 0, 'Stratus-___-replied for the dispute-___-# 3', 0, 'hi', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609835527, 0, 0, 0, 0, 0),
(673, 'admin', 0, '209', 3, 0, 'Stratus-___-replied for the dispute-___-# 3', 0, 'hi', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1609835527, 0, 0, 0, 0, 0),
(674, 'dispute', 210, '209', 3, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a> -___-Buyer Replied For the Dispute : -___-<a href=\'http://localhost/markethub/merchant/disputeBuyer/140\'>140</a>', 0, 'hiiiiiiiiiiiiiiiiiii', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"}}', 1609835739, 0, 0, 0, 0, 0),
(675, 'dispute', 209, '210', 3, 0, '<a href=\'http://localhost/markethub/people/quit\'>quit</a> -___- Seller Accepted the Dispute -___- #<a href=\'http://localhost/markethub/disputemessage/140\'>140</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609835850, 0, 0, 0, 0, 0),
(676, 'fashionimage', 210, '209', 0, 0, '<a href=\'http://localhost/markethub/people/twitter\'>twitter</a> -___-uploaded fashion image on your product-___- <a href=\'http://localhost/markethub/listing/ODZfNjEyOA==\'>test test test</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/twitter\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODZfNjEyOA==\"}}', 1609836374, 0, 0, 0, 0, 0),
(677, 'fashionimage', 209, '210', 3, 86, 'quit -___- accepted your selfie on product -___- test test test', 0, '', '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/quit\"}}', 1609836394, 0, 0, 0, 0, 0),
(678, 'groupgift', 211, '209', 0, 0, '<a href=\'http://localhost/markethub/people/reddd\'>reddd</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/9\">9</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/reddd\"}}', 1609836667, 0, 0, 0, 0, 0),
(679, 'groupgift', 0, '211', 0, 0, 'You have created a group gift on the product-___-weww for todaytoday', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/reddd\"}}', 1609836667, 0, 0, 0, 0, 0),
(681, 'follow', 70, '192', 18, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614163331, 0, 0, 0, 0, 0),
(682, 'favorite', 70, '71', 37, 37, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/37/vu-premium-108cm\'>Vu Premium 108cm</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594105409_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/MzdfMjc2Mw==\"}}', 1614164767, 0, 0, 0, 0, 0),
(683, 'favorite', 70, '71', 19, 19, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/19/solid-men-grey-track-pants\'>Solid Men Grey Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594104559_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/MTlfMTkwNA==\"}}', 1614164800, 0, 0, 0, 0, 0),
(684, 'favorite', 70, '71', 40, 40, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/40/coocaa-127cm-50-inch-ultra-hd\'>Coocaa 127cm (50 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594105515_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/NDBfNDU5Mw==\"}}', 1614165341, 0, 0, 0, 0, 0),
(685, 'favorite', 70, '71', 40, 40, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/40/coocaa-127cm-50-inch-ultra-hd\'>Coocaa 127cm (50 inch) Ultra HD</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594105515_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/NDBfODEx\"}}', 1614165366, 0, 0, 0, 0, 0),
(686, 'favorite', 70, '71', 19, 19, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/19/solid-men-grey-track-pants\'>Solid Men Grey Track Pants</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594104559_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/MTlfMTEwMA==\"}}', 1614165385, 0, 0, 0, 0, 0),
(687, 'follow', 70, '187', 19, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614165472, 0, 0, 0, 0, 0),
(688, 'follow', 70, '188', 20, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614165476, 0, 0, 0, 0, 0),
(689, 'follow', 70, '156', 24, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614229974, 0, 0, 0, 0, 0),
(690, 'follow', 70, '157', 25, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614229979, 0, 0, 0, 0, 0),
(691, 'favorite', 70, '71', 6, 6, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/6/men-self-design-formal-spread-shirt\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/Nl8xNzI1\"}}', 1614317948, 0, 0, 0, 0, 0),
(692, 'favorite', 70, '154', 3, 3, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/stratus_fantacy/listing/3/huawei-ers-b19-band-2-classic-activity-tracker-black\'>Huawei ERS-B19 Band 2 Classic Activity Tracker (Black)</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"},\"item\":{\"image\":\"1594103300_154.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/M182MzQ4\"}}', 1614321158, 0, 0, 0, 0, 0),
(693, 'orderstatus', 70, '71', 141, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/stratus_fantacy/merchant/fulfillorders\'>141</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614355989, 0, 0, 0, 0, 0),
(694, 'admin', 0, '71', 90, 0, 'Your product has been approved-___-<a href=\'http://localhost/stratus_fantacy/listing/OTBfNzE4Nw==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTBfNzE4Nw==\"}}', 1614357028, 0, 0, 0, 0, 0),
(695, 'additem', 71, '0', 90, 90, '<a href=\'http://localhost/stratus_fantacy/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/stratus_fantacy/listing/OTBfNzE4Nw==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/http:\\/\\/localhost\\/stratus_fantacy\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTBfNzE4Nw==\"}}', 1614357028, 0, 0, 0, 0, 0),
(696, 'orderstatus', 70, '71', 142, 0, '<a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/stratus_fantacy/merchant/fulfillorders\'>142</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614657590, 0, 0, 0, 0, 0),
(697, 'orderstatus', 71, '70', 142, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/stratus_fantacy/buyerorderdetails/142\">142</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demoseller\"}}', 1614657730, 0, 0, 0, 0, 0),
(698, 'orderstatus', 71, '70', 142, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/stratus_fantacy/buyerorderdetails/142\">142</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demoseller\"}}', 1614657760, 0, 0, 0, 0, 0),
(699, 'orderstatus', 70, '71', 142, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/stratus_fantacy/people/demo\'>DemoUser</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/demo\"}}', 1614657779, 0, 0, 0, 0, 0),
(700, 'admin', 0, '71', 92, 0, 'Your product has been approved-___-<a href=\'http://localhost/stratus_fantacy/listing/OTJfNjIyMg==\'>Neko</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617263060_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTJfNjIyMg==\"}}', 1617263158, 0, 0, 0, 0, 0),
(701, 'additem', 71, '0', 92, 92, '<a href=\'http://localhost/stratus_fantacy/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/stratus_fantacy/listing/OTJfNjIyMg==\'>Neko</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/http:\\/\\/localhost\\/stratus_fantacy\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617263060_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTJfNjIyMg==\"}}', 1617263158, 0, 0, 0, 0, 0),
(702, 'admin', 0, '71', 91, 0, 'Your product has been approved-___-<a href=\'http://localhost/stratus_fantacy/listing/OTFfMjgy\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTFfMjgy\"}}', 1617263159, 0, 0, 0, 0, 0),
(703, 'additem', 71, '0', 91, 91, '<a href=\'http://localhost/stratus_fantacy/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/stratus_fantacy/listing/OTFfMjgy\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/http:\\/\\/localhost\\/stratus_fantacy\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTFfMjgy\"}}', 1617263159, 0, 0, 0, 0, 0),
(704, 'admin', 0, '71', 90, 0, 'Your product has been approved-___-<a href=\'http://localhost/stratus_fantacy/listing/OTBfOTU1\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTBfOTU1\"}}', 1617263161, 0, 0, 0, 0, 0),
(705, 'additem', 71, '0', 90, 90, '<a href=\'http://localhost/stratus_fantacy/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/stratus_fantacy/listing/OTBfOTU1\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/http:\\/\\/localhost\\/stratus_fantacy\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTBfOTU1\"}}', 1617263161, 0, 0, 0, 0, 0),
(706, 'admin', 0, '71', 93, 0, 'Your product has been approved-___-<a href=\'http://localhost/stratus_fantacy/listing/OTNfNzk0NQ==\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTNfNzk0NQ==\"}}', 1617263295, 0, 0, 0, 0, 0),
(707, 'additem', 71, '0', 93, 93, '<a href=\'http://localhost/stratus_fantacy/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/stratus_fantacy/listing/OTNfNzk0NQ==\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/people\\/http:\\/\\/localhost\\/stratus_fantacy\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/localhost\\/stratus_fantacy\\/listing\\/OTNfNzk0NQ==\"}}', 1617263295, 0, 0, 0, 0, 0),
(708, 'admin', 0, '71', 93, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTNfMTkwNQ==\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTNfMTkwNQ==\"}}', 1617340075, 0, 0, 0, 0, 0),
(709, 'additem', 71, '0', 93, 93, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTNfMTkwNQ==\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTNfMTkwNQ==\"}}', 1617340075, 0, 0, 0, 0, 0),
(710, 'admin', 0, '71', 92, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTJfNjA2Mg==\'>Neko</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617263060_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTJfNjA2Mg==\"}}', 1617340076, 0, 0, 0, 0, 0),
(711, 'additem', 71, '0', 92, 92, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTJfNjA2Mg==\'>Neko</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617263060_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTJfNjA2Mg==\"}}', 1617340076, 0, 0, 0, 0, 0),
(712, 'admin', 0, '71', 91, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTFfNTU5Ng==\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTFfNTU5Ng==\"}}', 1617340125, 0, 0, 0, 0, 0),
(713, 'additem', 71, '0', 91, 91, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTFfNTU5Ng==\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTFfNTU5Ng==\"}}', 1617340125, 0, 0, 0, 0, 0),
(714, 'admin', 0, '71', 24, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MjRfOTAwMg==\'>Paisley, Striped, Floral Print Daily Wear Georgette Saree</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594104853_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MjRfOTAwMg==\"}}', 1617343168, 0, 0, 0, 0, 0),
(715, 'additem', 71, '0', 24, 24, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MjRfOTAwMg==\'>Paisley, Striped, Floral Print Daily Wear Georgette Saree</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594104853_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MjRfOTAwMg==\"}}', 1617343168, 0, 0, 0, 0, 0),
(716, 'follow', 214, '199', 27, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617355245, 0, 0, 0, 0, 0),
(717, 'follow', 214, '195', 28, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617355249, 0, 0, 0, 0, 0),
(718, 'follow', 214, '205', 29, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617355256, 0, 0, 0, 0, 0),
(719, 'follow', 214, '213', 30, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617355259, 0, 0, 0, 0, 0),
(720, 'admin', 0, '215', 94, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTRfOTIyMg==\'>Mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617356842_215.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTRfOTIyMg==\"}}', 1617356919, 0, 0, 0, 0, 0),
(721, 'additem', 215, '0', 94, 94, '<a href=\'http://localhost/markethub/stores/arty-artifacts\'>Artemis</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTRfOTIyMg==\'>Mobile</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/arty-artifacts\"},\"item\":{\"image\":\"1617356842_215.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTRfOTIyMg==\"}}', 1617356919, 0, 0, 0, 0, 0),
(722, 'orderstatus', 214, '215', 143, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>143</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617358273, 0, 0, 0, 0, 0),
(723, 'orderstatus', 214, '71', 144, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>144</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617358428, 0, 0, 0, 0, 0),
(724, 'orderstatus', 214, '71', 145, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>145</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617359353, 0, 0, 0, 0, 0),
(725, 'orderstatus', 214, '71', 146, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>146</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617359494, 0, 0, 0, 0, 0),
(726, 'orderstatus', 70, '71', 147, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>147</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617359791, 0, 0, 0, 0, 0),
(727, 'orderstatus', 70, '71', 148, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>148</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617361829, 0, 0, 0, 0, 0),
(728, 'ordermessage', 70, '71', 148, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/148\">view</a>', 0, 'Hello', '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617361862, 0, 0, 0, 0, 0),
(729, 'orderstatus', 70, '71', 149, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>149</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617362364, 0, 0, 0, 0, 0),
(730, 'orderstatus', 214, '71', 150, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>150</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617362505, 0, 0, 0, 0, 0),
(731, 'orderstatus', 214, '71', 145, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/athena\'>Athena</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">145</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617362552, 0, 0, 0, 0, 0),
(732, 'ordermessage', 214, '215', 143, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/143\">view</a>', 0, 'Hello Artemis', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617362576, 0, 0, 0, 0, 0),
(733, 'ordermessage', 215, '214', 143, 0, 'Seller-___- <a href=\'http://localhost/markethub/people/artemis\'>Artemis</a> -___-sent a message-___- #<a href=\"http://localhost/markethub/buyerconversation/143\">143</a>', 0, 'Hello\n', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/artemis\"}}', 1617362633, 0, 0, 0, 0, 0),
(734, 'orderstatus', 215, '214', 143, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/143\">143</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/artemis\"}}', 1617362651, 0, 0, 0, 0, 0),
(735, 'orderstatus', 215, '214', 143, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/143\">143</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/artemis\"}}', 1617362674, 0, 0, 0, 0, 0),
(736, 'orderstatus', 214, '215', 143, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/athena\'>Athena</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1617362705, 0, 0, 0, 0, 0),
(737, 'fashionimage', 214, '215', 0, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-uploaded fashion image on your product-___- <a href=\'http://localhost/markethub/listing/OTRfNzkxMA==\'>Mobile</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTRfNzkxMA==\"}}', 1617362721, 0, 0, 0, 0, 0),
(738, 'fashionimage', 214, '215', 0, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a> -___-uploaded fashion image on your product-___- <a href=\'http://localhost/markethub/listing/OTRfNTkzOA==\'>Mobile</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTRfNTkzOA==\"}}', 1617362820, 0, 0, 0, 0, 0),
(739, 'credit', 0, '214', 0, 0, 'You have received a gift card -___-14DK0ea6', 0, 'You have received a Gift card from your friend  worth 10 use this code on checkout: 14DK0ea6', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1617364954, 0, 0, 0, 0, 0),
(740, 'orderstatus', 70, '215', 151, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>151</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617365023, 0, 0, 0, 0, 0),
(741, 'favorite', 70, '71', 93, 93, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/93/ring\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTNfMzA2Mg==\"}}', 1617365103, 0, 0, 0, 0, 0),
(742, 'groupgift', 70, '71', 0, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/10\">10</a>', 0, '', '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617365612, 0, 0, 0, 0, 0),
(743, 'groupgift', 0, '70', 0, 0, 'You have created a group gift on the product-___-Men Self Design Formal Spread Shirt for Demo', 0, '', '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617365612, 0, 0, 0, 0, 0),
(744, 'orderstatus', 215, '70', 151, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/151\">151</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/artemis\"}}', 1617365848, 0, 0, 0, 0, 0),
(745, 'orderstatus', 215, '70', 151, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/151\">151</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/artemis\"}}', 1617365868, 0, 0, 0, 0, 0),
(746, 'orderstatus', 70, '215', 151, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>', 0, NULL, '{\"user\":{\"image\":\"1614357133_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617365886, 0, 0, 0, 0, 0),
(747, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl84Mjk4\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl84Mjk4\"}}', 1617606670, 0, 0, 0, 0, 0),
(748, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl84Mjk4\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl84Mjk4\"}}', 1617606670, 0, 0, 0, 0, 0),
(749, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl8xMjI1\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8xMjI1\"}}', 1617615624, 0, 0, 0, 0, 0),
(750, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl8xMjI1\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8xMjI1\"}}', 1617615624, 0, 0, 0, 0, 0),
(751, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl82MjI3\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl82MjI3\"}}', 1617615683, 0, 0, 0, 0, 0),
(752, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl82MjI3\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl82MjI3\"}}', 1617615683, 0, 0, 0, 0, 0),
(753, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl85NTIy\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl85NTIy\"}}', 1617615801, 0, 0, 0, 0, 0),
(754, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl85NTIy\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl85NTIy\"}}', 1617615801, 0, 0, 0, 0, 0),
(755, 'follow', 216, '214', 32, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617619675, 0, 0, 0, 0, 0),
(756, 'favorite', 216, '209', 86, 86, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/86/test-test-test\'>test test test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":\"1609765613_209.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/ODZfNzky\"}}', 1617619885, 0, 0, 0, 0, 0),
(757, 'follow', 216, '213', 33, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617620810, 0, 0, 0, 0, 0),
(758, 'follow', 216, '70', 34, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617620812, 0, 0, 0, 0, 0),
(759, 'status', 216, '0', 2, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-posted a status', 0, 'http://localhost/markethub/listing/Nl80OTY0 ', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617620833, 1, 0, 0, 0, 0),
(760, 'favorite', 216, '0', 759, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>  -___-shared the status-___- 759', 0, NULL, '0', 1617620842, 0, 0, 0, 0, 0),
(761, 'status', 216, '0', 2, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-posted a status', 0, 'http://localhost/markethub/listing/Nl80OTY0 ', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617620842, 0, -1, 759, 216, 0),
(762, 'favorite', 216, '71', 6, 6, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/6/men-self-design-formal-spread-shirt\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl85MzA4\"}}', 1617623019, 0, 0, 0, 0, 0),
(763, 'orderstatus', 216, '71', 152, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>152</a>', 0, NULL, '{\"user\":{\"image\":\"1617622042_216.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617624328, 0, 0, 0, 0, 0),
(764, 'orderstatus', 216, '71', 153, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>153</a>', 0, NULL, '{\"user\":{\"image\":\"1617622042_216.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617624370, 0, 0, 0, 0, 0),
(765, 'orderstatus', 216, '71', 153, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">153</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617624649, 0, 0, 0, 0, 0),
(766, 'admin', 0, '71', 95, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTVfNDk5MA==\'>testing</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617624755_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTVfNDk5MA==\"}}', 1617624817, 0, 0, 0, 0, 0),
(767, 'additem', 71, '0', 95, 95, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTVfNDk5MA==\'>testing</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617624755_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTVfNDk5MA==\"}}', 1617624817, 0, 0, 0, 0, 0),
(768, 'admin', 0, '71', 96, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTZfMzQ1Ng==\'>LED TV</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617624879_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTZfMzQ1Ng==\"}}', 1617624957, 0, 0, 0, 0, 0),
(769, 'additem', 71, '0', 96, 96, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTZfMzQ1Ng==\'>LED TV</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617624879_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTZfMzQ1Ng==\"}}', 1617624957, 0, 0, 0, 0, 0),
(770, 'admin', 0, '71', 96, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTZfNDk4MQ==\'>LED TV</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617624879_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTZfNDk4MQ==\"}}', 1617625381, 0, 0, 0, 0, 0),
(771, 'additem', 71, '0', 96, 96, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTZfNDk4MQ==\'>LED TV</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617624879_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTZfNDk4MQ==\"}}', 1617625381, 0, 0, 0, 0, 0),
(772, 'groupgift', 216, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/11\">11</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625832, 0, 0, 0, 0, 0),
(773, 'groupgift', 0, '216', 0, 0, 'You have created a group gift on the product-___-Fire TV Stick streaming media for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625832, 0, 0, 0, 0, 0),
(774, 'groupgift', 216, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/11\">11</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625839, 0, 0, 0, 0, 0),
(775, 'groupgift', 0, '216', 0, 0, 'You have created a group gift on the product-___-Fire TV Stick streaming media for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625839, 0, 0, 0, 0, 0),
(776, 'groupgift', 216, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/11\">11</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625847, 0, 0, 0, 0, 0),
(777, 'groupgift', 0, '216', 0, 0, 'You have created a group gift on the product-___-Fire TV Stick streaming media for DemoUser', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625847, 0, 0, 0, 0, 0),
(778, 'groupgift', 216, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/12\">12</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625890, 0, 0, 0, 0, 0),
(779, 'groupgift', 0, '216', 0, 0, 'You have created a group gift on the product-___-Fire TV Stick streaming media for arusharush', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625890, 0, 0, 0, 0, 0),
(780, 'groupgift', 216, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/12\">12</a>', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625897, 0, 0, 0, 0, 0),
(781, 'groupgift', 0, '216', 0, 0, 'You have created a group gift on the product-___-Fire TV Stick streaming media for arusharush', 0, '', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617625897, 0, 0, 0, 0, 0),
(782, 'favorite', 216, '154', 7, 7, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/7/fire-tv-stick-streaming-media\'>Fire TV Stick streaming media</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":\"1594103773_154.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/N184NTU3\"}}', 1617626366, 0, 0, 0, 0, 0),
(783, 'admin', 0, '71', 97, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTdfODg=\'>Phone</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617627300_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTdfODg=\"}}', 1617627358, 0, 0, 0, 0, 0),
(784, 'additem', 71, '0', 97, 97, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTdfODg=\'>Phone</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617627300_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTdfODg=\"}}', 1617627358, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(785, 'favorite', 216, '71', 97, 97, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/97/phone\'>Phone</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":\"1617627300_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTdfNTc4Ng==\"}}', 1617627546, 0, 0, 0, 0, 0),
(788, 'favorite', 216, '0', 759, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>  -___-shared the status-___- 759', 0, NULL, '0', 1617633837, 0, 0, 0, 0, 0),
(789, 'status', 216, '0', 2, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-posted a status', 0, 'http://localhost/markethub/listing/Nl80OTY0 ', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617633837, 0, 0, 759, 216, 1),
(790, 'favorite', 216, '0', 761, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>  -___-shared the status-___- 761', 0, NULL, '0', 1617633842, 0, 0, 0, 0, 0),
(791, 'status', 216, '0', 2, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-posted a status', 0, 'http://localhost/markethub/listing/Nl80OTY0 ', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617633842, 0, 3, 759, 216, 1),
(792, 'orderstatus', 71, '216', 152, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/152\">152</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634511, 0, 0, 0, 0, 0),
(793, 'orderstatus', 71, '216', 152, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/152\">152</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634514, 0, 0, 0, 0, 0),
(794, 'orderstatus', 71, '216', 152, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/152\">152</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634518, 0, 0, 0, 0, 0),
(795, 'orderstatus', 71, '214', 150, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/150\">150</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634521, 0, 0, 0, 0, 0),
(796, 'orderstatus', 71, '214', 150, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/150\">150</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634525, 0, 0, 0, 0, 0),
(797, 'orderstatus', 71, '214', 150, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/150\">150</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634530, 0, 0, 0, 0, 0),
(798, 'orderstatus', 71, '70', 149, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/149\">149</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634534, 0, 0, 0, 0, 0),
(799, 'orderstatus', 71, '216', 152, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/152\">152</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617634651, 0, 0, 0, 0, 0),
(800, 'orderstatus', 216, '71', 152, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"1617622042_216.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617634662, 0, 0, 0, 0, 0),
(801, 'orderstatus', 216, '71', 152, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"1617622042_216.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1617634665, 0, 0, 0, 0, 0),
(802, 'admin', 0, '71', 152, 0, 'Your account has been credited for the order-___-#152 - €271.09', 0, 'Your account has been credited for the order-___-#152 - €271.09', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1617634747, 0, 0, 0, 0, 0),
(803, 'admin', 0, '71', 98, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OThfMTUwNw==\'>USB</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617772372_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OThfMTUwNw==\"}}', 1617772454, 0, 0, 0, 0, 0),
(804, 'additem', 71, '0', 98, 98, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OThfMTUwNw==\'>USB</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617772372_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OThfMTUwNw==\"}}', 1617772454, 0, 0, 0, 0, 0),
(807, 'admin', 0, '71', 100, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAwXzQ5MjU=\'>Car</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617783375_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAwXzQ5MjU=\"}}', 1617783414, 0, 0, 0, 0, 0),
(808, 'additem', 71, '0', 100, 100, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAwXzQ5MjU=\'>Car</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617783375_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAwXzQ5MjU=\"}}', 1617783414, 0, 0, 0, 0, 0),
(809, 'admin', 0, '71', 101, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAxXzI3MzI=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzI3MzI=\"}}', 1617783726, 0, 0, 0, 0, 0),
(810, 'additem', 71, '0', 101, 101, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAxXzI3MzI=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzI3MzI=\"}}', 1617783726, 0, 0, 0, 0, 0),
(811, 'admin', 0, '71', 98, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OThfOTQ2\'>USB</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617772372_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OThfOTQ2\"}}', 1617787700, 0, 0, 0, 0, 0),
(812, 'additem', 71, '0', 98, 98, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OThfOTQ2\'>USB</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617772372_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OThfOTQ2\"}}', 1617787700, 0, 0, 0, 0, 0),
(813, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl8zNDU2\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8zNDU2\"}}', 1617788739, 0, 0, 0, 0, 0),
(814, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl8zNDU2\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8zNDU2\"}}', 1617788739, 0, 0, 0, 0, 0),
(815, 'orderstatus', 70, '71', 155, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>155</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617796640, 0, 0, 0, 0, 0),
(816, 'orderstatus', 71, '70', 155, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/155\">155</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617796719, 0, 0, 0, 0, 0),
(817, 'orderstatus', 71, '70', 155, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/155\">155</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1617796741, 0, 0, 0, 0, 0),
(818, 'orderstatus', 70, '71', 155, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617796756, 0, 0, 0, 0, 0),
(819, 'orderstatus', 70, '71', 156, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>156</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617799205, 0, 0, 0, 0, 0),
(820, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617803207, 0, 1, 0, 0, 0),
(821, 'admin', 0, '71', 101, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAxXzE2NjM=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzE2NjM=\"}}', 1617867974, 0, 0, 0, 0, 0),
(822, 'additem', 71, '0', 101, 101, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAxXzE2NjM=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzE2NjM=\"}}', 1617867974, 0, 0, 0, 0, 0),
(823, 'favorite', 70, '71', 98, 98, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/98/usb\'>USB</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"},\"item\":{\"image\":\"1617772372_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OThfNzI3Nw==\"}}', 1617890390, 0, 0, 0, 0, 0),
(824, 'favorite', 70, '71', 6, 6, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/6/men-self-design-formal-spread-shirt\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8yNTUz\"}}', 1617890420, 0, 0, 0, 0, 0),
(825, 'follow', 70, '204', 38, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943405, 0, 0, 0, 0, 0),
(826, 'follow', 70, '214', 39, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943410, 0, 0, 0, 0, 0),
(827, 'favorite', 70, '0', 820, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 820', 0, NULL, '0', 1617943767, 0, 0, 0, 0, 0),
(828, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943767, 1, 0, 820, 70, 0),
(829, 'favorite', 70, '0', 828, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 828', 0, NULL, '0', 1617943786, 0, 0, 0, 0, 0),
(830, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943786, 0, 0, 820, 70, 1),
(831, 'favorite', 70, '0', 830, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 830', 0, NULL, '0', 1617943792, 0, 0, 0, 0, 0),
(832, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943792, 0, 0, 820, 70, 1),
(833, 'favorite', 70, '0', 830, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 830', 0, NULL, '0', 1617943808, 0, 0, 0, 0, 0),
(834, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1617943808, 0, 0, 820, 70, 1),
(835, 'admin', 0, '71', 91, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTFfMTA2\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTFfMTA2\"}}', 1618027438, 0, 0, 0, 0, 0),
(836, 'additem', 71, '0', 91, 91, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTFfMTA2\'>Dan Brown\'s Origin</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617262792_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTFfMTA2\"}}', 1618027438, 0, 0, 0, 0, 0),
(837, 'admin', 0, '71', 101, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAxXzUwMTg=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzUwMTg=\"}}', 1618030234, 0, 0, 0, 0, 0),
(838, 'additem', 71, '0', 101, 101, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAxXzUwMTg=\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzUwMTg=\"}}', 1618030234, 0, 0, 0, 0, 0),
(839, 'orderstatus', 70, '71', 157, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>157</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207595, 0, 0, 0, 0, 0),
(840, 'favorite', 70, '0', 834, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 834', 0, NULL, '0', 1618207892, 0, 0, 0, 0, 0),
(841, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207892, 0, 0, 820, 70, 1),
(842, 'favorite', 70, '0', 834, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 834', 0, NULL, '0', 1618207893, 0, 0, 0, 0, 0),
(843, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207893, 1, 0, 820, 70, 1),
(844, 'favorite', 70, '0', 834, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 834', 0, NULL, '0', 1618207895, 0, 0, 0, 0, 0),
(845, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207895, 0, 0, 820, 70, 1),
(846, 'favorite', 70, '0', 834, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 834', 0, NULL, '0', 1618207900, 0, 0, 0, 0, 0),
(847, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207900, 0, 0, 820, 70, 1),
(848, 'favorite', 70, '0', 841, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 841', 0, NULL, '0', 1618207905, 0, 0, 0, 0, 0),
(849, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207905, 0, 0, 820, 70, 1),
(850, 'favorite', 70, '0', 849, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>  -___-shared the status-___- 849', 0, NULL, '0', 1618207973, 0, 0, 0, 0, 0),
(851, 'status', 70, '0', 3, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-posted a status', 0, 'Hello ', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618207973, 1, 0, 820, 70, 1),
(852, 'favorite', 70, '71', 101, 101, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/101/furnitures\'>Furnitures</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"},\"item\":{\"image\":\"1617783687_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAxXzkzNDM=\"}}', 1618212488, 0, 0, 0, 0, 0),
(854, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzg5NDM=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzg5NDM=\"}}', 1618223830, 0, 0, 0, 0, 0),
(855, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzg5NDM=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzg5NDM=\"}}', 1618223830, 0, 0, 0, 0, 0),
(856, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzIyODk=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIyODk=\"}}', 1618224436, 0, 0, 0, 0, 0),
(857, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzIyODk=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIyODk=\"}}', 1618224436, 0, 0, 0, 0, 0),
(860, 'favorite', 216, '70', 851, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>  -___-liked your status-___- ', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Xzg2MA==\"},\"status\":{\"image\":null,\"message\":\"Hello \"}}', 1618230354, 0, 0, 0, 0, 0),
(861, 'orderstatus', 214, '71', 158, 0, '<a href=\'http://localhost/markethub/people/athena\'>Athena</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>158</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/athena\"}}', 1618230463, 0, 0, 0, 0, 0),
(862, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzg4NjU=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzg4NjU=\"}}', 1618230870, 0, 0, 0, 0, 0),
(863, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzg4NjU=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzg4NjU=\"}}', 1618230870, 0, 0, 0, 0, 0),
(864, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzIwODg=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIwODg=\"}}', 1618231131, 0, 0, 0, 0, 0),
(865, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzIwODg=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIwODg=\"}}', 1618231131, 0, 0, 0, 0, 0),
(874, 'orderstatus', 70, '71', 159, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>159</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618232159, 0, 0, 0, 0, 0),
(875, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzc2NjI=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzc2NjI=\"}}', 1618233286, 0, 0, 0, 0, 0),
(876, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzc2NjI=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzc2NjI=\"}}', 1618233286, 0, 0, 0, 0, 0),
(877, 'favorite', 216, '71', 93, 93, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/93/ring\'>Ring</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"},\"item\":{\"image\":\"1617263228_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTNfMzU4Nw==\"}}', 1618234486, 0, 0, 0, 0, 0),
(878, 'groupgift', 217, '71', 0, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/13\">13</a>', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234783, 0, 0, 0, 0, 0),
(879, 'groupgift', 0, '217', 0, 0, 'You have created a group gift on the product-___-Men Fashion 2021 - Test for Ashok', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234783, 0, 0, 0, 0, 0),
(880, 'groupgift', 217, '71', 0, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/13\">13</a>', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234785, 0, 0, 0, 0, 0),
(881, 'groupgift', 0, '217', 0, 0, 'You have created a group gift on the product-___-Men Fashion 2021 - Test for Ashok', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234785, 0, 0, 0, 0, 0),
(882, 'groupgift', 217, '71', 0, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/13\">13</a>', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234789, 0, 0, 0, 0, 0),
(883, 'groupgift', 0, '217', 0, 0, 'You have created a group gift on the product-___-Men Fashion 2021 - Test for Ashok', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618234789, 0, 0, 0, 0, 0),
(884, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzI3Ng==\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzI3Ng==\"}}', 1618235418, 0, 0, 0, 0, 0),
(885, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzI3Ng==\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzI3Ng==\"}}', 1618235418, 0, 0, 0, 0, 0),
(886, 'orderstatus', 217, '71', 160, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>160</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618235519, 0, 0, 0, 0, 0),
(887, 'orderstatus', 71, '217', 160, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/160\">160</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618235533, 0, 0, 0, 0, 0),
(888, 'orderstatus', 71, '217', 160, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/160\">160</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618235535, 0, 0, 0, 0, 0),
(889, 'orderstatus', 71, '217', 160, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/160\">160</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618235552, 0, 0, 0, 0, 0),
(890, 'orderstatus', 217, '71', 160, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618235577, 0, 0, 0, 0, 0),
(891, 'orderstatus', 216, '71', 161, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>161</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618235869, 0, 0, 0, 0, 0),
(892, 'orderstatus', 71, '216', 161, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/161\">161</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618235876, 0, 0, 0, 0, 0),
(893, 'orderstatus', 71, '216', 161, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/161\">161</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618235900, 0, 0, 0, 0, 0),
(894, 'orderstatus', 216, '71', 161, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618235911, 0, 0, 0, 0, 0),
(895, 'follow', 217, '216', 49, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618237633, 0, 0, 0, 0, 0),
(896, 'favorite', 217, '189', 69, 69, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/69/beem\'>beem</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"},\"item\":{\"image\":\"1608824242_189.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/NjlfODYwNg==\"}}', 1618237725, 0, 0, 0, 0, 0),
(897, 'follow', 70, '213', 50, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618292385, 0, 0, 0, 0, 0),
(899, 'follow', 70, '217', 52, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618295113, 0, 0, 0, 0, 0),
(900, 'follow', 70, '73', 54, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618295120, 0, 0, 0, 0, 0),
(901, 'follow', 70, '211', 55, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618295129, 0, 0, 0, 0, 0),
(902, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzU0MDY=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzU0MDY=\"}}', 1618298613, 0, 0, 0, 0, 0),
(903, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzU0MDY=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzU0MDY=\"}}', 1618298613, 0, 0, 0, 0, 0),
(904, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzIzNDg=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIzNDg=\"}}', 1618298654, 0, 0, 0, 0, 0),
(905, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzIzNDg=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIzNDg=\"}}', 1618298654, 0, 0, 0, 0, 0),
(906, 'status', 217, '0', 5, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-posted a status', 0, 'SDFSDFSDAFASDF\n ', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618300953, 0, 1, 0, 0, 0),
(907, 'mentioned', 217, '216', 7, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-mentioned you in a livefeed status comment on : ', 0, 'Utsrustu <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>@</span><a href=\'http://localhost/markethub/people/ashok\'>ashok</a></span> <span class=\'cmt-tag\' style=\'display:inline-block;\'><span class=\'hashatcolor\'>#</span><a href=\'http://localhost/markethub/hashtag/trending\'>trending</a></span> ', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"},\"status\":{\"image\":null,\"message\":\"SDFSDFSDAFASDF\\n \"}}', 1618300973, 0, 0, 0, 0, 0),
(908, 'groupgift', 217, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/14\">14</a>', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302206, 0, 0, 0, 0, 0),
(909, 'groupgift', 0, '217', 0, 0, 'You have created a group gift on the product-___-Wood TV Entertainment Unit  (Finish Color - Walnut) for Gshsh', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302206, 0, 0, 0, 0, 0),
(910, 'groupgift', 217, '154', 0, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-Created a group gift on your product, Group Gift Id :-___-<a href=\"http://localhost/markethub/gifts/14\">14</a>', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302210, 0, 0, 0, 0, 0),
(911, 'groupgift', 0, '217', 0, 0, 'You have created a group gift on the product-___-Wood TV Entertainment Unit  (Finish Color - Walnut) for Gshsh', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302210, 0, 0, 0, 0, 0),
(913, 'follow', 217, '214', 57, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302872, 0, 0, 0, 0, 0),
(914, 'follow', 217, '70', 58, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618302949, 0, 0, 0, 0, 0),
(915, 'orderstatus', 217, '71', 162, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>162</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618318070, 0, 0, 0, 0, 0),
(916, 'follow', 217, '208', 59, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618318677, 0, 0, 0, 0, 0),
(917, 'follow', 217, '210', 61, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618318679, 0, 0, 0, 0, 0),
(918, 'follow', 217, '213', 62, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618318701, 0, 0, 0, 0, 0),
(919, 'admin', 0, '71', 90, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/OTBfNDEzOQ==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfNDEzOQ==\"}}', 1618373417, 0, 0, 0, 0, 0),
(920, 'additem', 71, '0', 90, 90, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTBfNDEzOQ==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfNDEzOQ==\"}}', 1618373417, 0, 0, 0, 0, 0),
(921, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzIwNDc=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIwNDc=\"}}', 1618373433, 0, 0, 0, 0, 0),
(922, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzIwNDc=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzIwNDc=\"}}', 1618373433, 0, 0, 0, 0, 0),
(923, 'admin', 0, '71', 90, 0, 'Votre produit a été approuvé -___-<a href=\'http://localhost/markethub/listing/OTBfNTc5MQ==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfNTc5MQ==\"}}', 1618374640, 0, 0, 0, 0, 0),
(924, 'additem', 71, '0', 90, 90, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTBfNTc5MQ==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfNTc5MQ==\"}}', 1618374640, 0, 0, 0, 0, 0),
(925, 'admin', 0, '71', 90, 0, 'Votre produit a été approuvé -___-<a href=\'http://localhost/markethub/listing/OTBfMjIwMg==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfMjIwMg==\"}}', 1618374891, 0, 0, 0, 0, 0),
(926, 'additem', 71, '0', 90, 90, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/OTBfMjIwMg==\'>Husky</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1614356728_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTBfMjIwMg==\"}}', 1618374891, 0, 0, 0, 0, 0),
(927, 'follow', 70, '216', 63, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-is now following you', 0, '', '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618375998, 0, 0, 0, 0, 0),
(928, 'orderstatus', 70, '155', 163, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>163</a>', 0, NULL, '{\"user\":{\"image\":\"1617782241_70.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618376243, 0, 0, 0, 0, 0),
(929, 'orderstatus', 216, '71', 164, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>164</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618380150, 0, 0, 0, 0, 0),
(930, 'orderstatus', 216, '71', 164, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">164</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618380183, 0, 0, 0, 0, 0),
(931, 'orderstatus', 216, '71', 165, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>165</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618380291, 0, 0, 0, 0, 0),
(932, 'orderstatus', 216, '71', 165, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">165</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618380370, 0, 0, 0, 0, 0),
(933, 'orderstatus', 216, '71', 166, 0, '<a href=\'http://localhost/markethub/people/ashok\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>166</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashok\"}}', 1618380415, 0, 0, 0, 0, 0),
(934, 'credit', 0, '217', 0, 0, 'You have received a gift card -___-0Ad669Ia', 0, 'You have received a Gift card from your friend  worth 100 use this code on checkout: 0Ad669Ia', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1618382201, 0, 0, 0, 0, 0),
(935, 'admin', 0, '71', 102, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAyXzgzMDE=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzgzMDE=\"}}', 1618383756, 0, 0, 0, 0, 0);
INSERT INTO `fc_logs` (`id`, `type`, `userid`, `notifyto`, `sourceid`, `itemid`, `notifymessage`, `notification_id`, `message`, `image`, `cdate`, `likecount`, `commentcount`, `shared`, `shareduserid`, `shareagain`) VALUES
(936, 'additem', 71, '0', 102, 102, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAyXzgzMDE=\'>Men Fashion 2021 - Test</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618223757_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAyXzgzMDE=\"}}', 1618383756, 0, 0, 0, 0, 0),
(937, 'orderstatus', 217, '71', 167, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>167</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618383856, 0, 0, 0, 0, 0),
(938, 'orderstatus', 71, '217', 167, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/167\">167</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618383870, 0, 0, 0, 0, 0),
(939, 'orderstatus', 71, '217', 167, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/167\">167</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618383892, 0, 0, 0, 0, 0),
(940, 'orderstatus', 217, '71', 167, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618383900, 0, 0, 0, 0, 0),
(941, 'orderstatus', 217, '71', 168, 0, '<a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>168</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618384046, 0, 0, 0, 0, 0),
(942, 'orderstatus', 71, '217', 168, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/168\">168</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618384056, 0, 0, 0, 0, 0),
(943, 'orderstatus', 71, '217', 168, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/168\">168</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1618384072, 0, 0, 0, 0, 0),
(944, 'orderstatus', 217, '71', 168, 0, 'Your order has been received by the buyer-___- <a href=\'http://localhost/markethub/people/ashokkumar\'>Ashok</a>', 0, NULL, '{\"user\":{\"image\":\"1618229158_217.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/ashokkumar\"}}', 1618384084, 0, 0, 0, 0, 0),
(945, 'admin', 0, '71', 6, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/Nl8xNTI4\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8xNTI4\"}}', 1618384242, 0, 0, 0, 0, 0),
(946, 'additem', 71, '0', 6, 6, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/Nl8xNTI4\'>Men Self Design Formal Spread Shirt</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1594103674_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/Nl8xNTI4\"}}', 1618384242, 0, 0, 0, 0, 0),
(950, 'admin', 0, '71', 103, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAzXzgxNDU=\'>Shirts</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618558975_71.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAzXzgxNDU=\"}}', 1618559099, 0, 0, 0, 0, 0),
(951, 'additem', 71, '0', 103, 103, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAzXzgxNDU=\'>Shirts</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618558975_71.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAzXzgxNDU=\"}}', 1618559099, 0, 0, 0, 0, 0),
(952, 'orderstatus', 70, '71', 169, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>169</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618559487, 0, 0, 0, 0, 0),
(953, 'ordermessage', 70, '71', 169, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/169\">view</a>', 0, 'Hi I have to discuss regarding the order', '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618559823, 0, 0, 0, 0, 0),
(954, 'ordermessage', 70, '71', 169, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/169\">view</a>', 0, 'Hi', '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618559836, 0, 0, 0, 0, 0),
(955, 'orderstatus', 70, '155', 163, 0, 'Your order has been cancelled by the buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>, Order Id : <a href=\"http://localhost/markethub/merchant/cancelledorders/\">163</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618559848, 0, 0, 0, 0, 0),
(956, 'ordermessage', 70, '155', 163, 0, 'Buyer-___- <a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-sent a message-___- <a href=\"http://localhost/markethub/merchant/sellerconversation/163\">view</a>', 0, 'Hi', '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618559874, 0, 0, 0, 0, 0),
(957, 'orderstatus', 70, '71', 170, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>170</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618581371, 0, 0, 0, 0, 0),
(958, 'orderstatus', 70, '71', 171, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>171</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1618816065, 0, 0, 0, 0, 0),
(959, 'orderstatus', 70, '155', 172, 0, 'Your order has been cancelled', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1618834934, 0, 0, 0, 0, 0),
(960, 'orderstatus', 70, '71', 171, 0, 'Your order has been cancelled', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1618834994, 0, 0, 0, 0, 0),
(961, 'orderstatus', 70, '71', 170, 0, 'Your order has been cancelled', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1618835009, 0, 0, 0, 0, 0),
(962, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzE1NDY=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618989851_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzE1NDY=\"}}', 1618989970, 0, 0, 0, 0, 0),
(963, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzE1NDY=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618989851_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzE1NDY=\"}}', 1618989971, 0, 0, 0, 0, 0),
(964, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzQ1NDg=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618989851_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzQ1NDg=\"}}', 1619006146, 0, 0, 0, 0, 0),
(965, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzQ1NDg=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618989851_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzQ1NDg=\"}}', 1619006146, 0, 0, 0, 0, 0),
(966, 'admin', 0, '71', 106, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA2Xzc3NjU=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2Xzc3NjU=\"}}', 1619006529, 0, 0, 0, 0, 0),
(967, 'additem', 71, '0', 106, 106, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA2Xzc3NjU=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2Xzc3NjU=\"}}', 1619006529, 0, 0, 0, 0, 0),
(968, 'admin', 0, '71', 105, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA1XzMzOTU=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzMzOTU=\"}}', 1619006531, 0, 0, 0, 0, 0),
(969, 'additem', 71, '0', 105, 105, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA1XzMzOTU=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzMzOTU=\"}}', 1619006531, 0, 0, 0, 0, 0),
(970, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzM3NzY=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzM3NzY=\"}}', 1619007051, 0, 0, 0, 0, 0),
(971, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzM3NzY=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzM3NzY=\"}}', 1619007051, 0, 0, 0, 0, 0),
(972, 'admin', 0, '71', 107, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA3Xzk5OTc=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzk5OTc=\"}}', 1619007418, 0, 0, 0, 0, 0),
(973, 'additem', 71, '0', 107, 107, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA3Xzk5OTc=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzk5OTc=\"}}', 1619007418, 0, 0, 0, 0, 0),
(974, 'admin', 0, '71', 106, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA2XzUwNzc=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzUwNzc=\"}}', 1619067554, 0, 0, 0, 0, 0),
(975, 'additem', 71, '0', 106, 106, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA2XzUwNzc=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzUwNzc=\"}}', 1619067554, 0, 0, 0, 0, 0),
(976, 'admin', 0, '71', 105, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA1XzYyNTk=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzYyNTk=\"}}', 1619067556, 0, 0, 0, 0, 0),
(977, 'additem', 71, '0', 105, 105, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA1XzYyNTk=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzYyNTk=\"}}', 1619067556, 0, 0, 0, 0, 0),
(978, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzU0Ng==\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzU0Ng==\"}}', 1619067557, 0, 0, 0, 0, 0),
(979, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzU0Ng==\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzU0Ng==\"}}', 1619067557, 0, 0, 0, 0, 0),
(980, 'admin', 0, '71', 107, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA3Xzg4MDI=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzg4MDI=\"}}', 1619067559, 0, 0, 0, 0, 0),
(981, 'additem', 71, '0', 107, 107, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA3Xzg4MDI=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzg4MDI=\"}}', 1619067559, 0, 0, 0, 0, 0),
(982, 'credit', 0, '156', 0, 0, 'You have received a gift card -___-N588475d', 0, 'You have received a Gift card from your friend DemoUser worth  use this code on checkout: N588475d', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619153019, 0, 0, 0, 0, 0),
(983, 'admin', 0, '71', 106, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA2XzcyNjM=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzcyNjM=\"}}', 1619153314, 0, 0, 0, 0, 0),
(984, 'additem', 71, '0', 106, 106, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA2XzcyNjM=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzcyNjM=\"}}', 1619153314, 0, 0, 0, 0, 0),
(985, 'admin', 0, '71', 105, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA1XzI4MzU=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzI4MzU=\"}}', 1619153319, 0, 0, 0, 0, 0),
(986, 'additem', 71, '0', 105, 105, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA1XzI4MzU=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzI4MzU=\"}}', 1619153319, 0, 0, 0, 0, 0),
(987, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzYyMDQ=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzYyMDQ=\"}}', 1619153320, 0, 0, 0, 0, 0),
(988, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzYyMDQ=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzYyMDQ=\"}}', 1619153320, 0, 0, 0, 0, 0),
(989, 'admin', 0, '71', 107, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA3XzE3Njc=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3XzE3Njc=\"}}', 1619153323, 0, 0, 0, 0, 0),
(990, 'additem', 71, '0', 107, 107, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA3XzE3Njc=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3XzE3Njc=\"}}', 1619153323, 0, 0, 0, 0, 0),
(991, 'admin', 0, '71', 106, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA2XzU1ODE=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzU1ODE=\"}}', 1619262297, 0, 0, 0, 0, 0),
(992, 'additem', 71, '0', 106, 106, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA2XzU1ODE=\'>suzuki</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006460_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA2XzU1ODE=\"}}', 1619262297, 0, 0, 0, 0, 0),
(993, 'admin', 0, '71', 105, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA1XzE4NDE=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzE4NDE=\"}}', 1619262298, 0, 0, 0, 0, 0),
(994, 'additem', 71, '0', 105, 105, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA1XzE4NDE=\'>test model</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006340_71.jpeg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA1XzE4NDE=\"}}', 1619262298, 0, 0, 0, 0, 0),
(995, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzE4MTg=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzE4MTg=\"}}', 1619262299, 0, 0, 0, 0, 0),
(996, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzE4MTg=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzE4MTg=\"}}', 1619262299, 0, 0, 0, 0, 0),
(997, 'admin', 0, '71', 107, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA3Xzc5NzQ=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzc5NzQ=\"}}', 1619262300, 0, 0, 0, 0, 0),
(998, 'additem', 71, '0', 107, 107, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA3Xzc5NzQ=\'>Cadillac CT5 V</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619006754_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA3Xzc5NzQ=\"}}', 1619262300, 0, 0, 0, 0, 0),
(999, 'follow', 221, '220', 67, 0, '<a href=\'http://localhost/markethub/people/apollodean\'>Dean</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/apollodean\"}}', 1619356430, 0, 0, 0, 0, 0),
(1000, 'follow', 221, '218', 69, 0, '<a href=\'http://localhost/markethub/people/apollodean\'>Dean</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/apollodean\"}}', 1619356431, 0, 0, 0, 0, 0),
(1001, 'follow', 221, '217', 70, 0, '<a href=\'http://localhost/markethub/people/apollodean\'>Dean</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/apollodean\"}}', 1619356432, 0, 0, 0, 0, 0),
(1002, 'orderstatus', 223, '71', 173, 0, '<a href=\'http://localhost/markethub/people/joker\'>Joker</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>173</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/joker\"}}', 1619615600, 0, 0, 0, 0, 0),
(1003, 'orderstatus', 71, '223', 173, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/173\">173</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619615695, 0, 0, 0, 0, 0),
(1004, 'orderstatus', 71, '223', 173, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/173\">173</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619615700, 0, 0, 0, 0, 0),
(1005, 'orderstatus', 71, '223', 173, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/173\">173</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619615753, 0, 0, 0, 0, 0),
(1006, 'orderstatus', 223, '71', 173, 0, 'Your order 173 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619616020, 0, 0, 0, 0, 0),
(1007, 'admin', 0, '71', 173, 0, 'Your account has been credited for the order-___-#173 - $173293.41', 0, 'Your account has been credited for the order-___-#173 - $173293.41', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619616667, 0, 0, 0, 0, 0),
(1008, 'credit', 0, '70', 0, 0, 'You have received a gift card -___-CM5265FM', 0, 'You have received a Gift card from your friend Joker worth  use this code on checkout: CM5265FM', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619618831, 0, 0, 0, 0, 0),
(1009, 'orderstatus', 70, '71', 174, 0, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a>-___-placed an order in your shop, order id : -___-<a href=\'http://localhost/markethub/merchant/fulfillorders\'>174</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"}}', 1619618951, 0, 0, 0, 0, 0),
(1010, 'orderstatus', 71, '70', 149, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/149\">149</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619619060, 0, 0, 0, 0, 0),
(1011, 'orderstatus', 70, '71', 149, 0, 'Your order 149 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619619075, 0, 0, 0, 0, 0),
(1012, 'orderstatus', 71, '70', 174, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/174\">174</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619619511, 0, 0, 0, 0, 0),
(1013, 'orderstatus', 71, '70', 174, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/174\">174</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619619530, 0, 0, 0, 0, 0),
(1014, 'orderstatus', 70, '71', 174, 0, 'Your order 174 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619619539, 0, 0, 0, 0, 0),
(1015, 'admin', 0, '71', 174, 0, 'Your account has been credited for the order-___-#174 - $710010.36', 0, 'Your account has been credited for the order-___-#174 - $710010.36', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619619605, 0, 0, 0, 0, 0),
(1016, 'admin', 0, '71', 104, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTA0XzM4NDI=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzM4NDI=\"}}', 1619622886, 0, 0, 0, 0, 0),
(1017, 'additem', 71, '0', 104, 104, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTA0XzM4NDI=\'>bugatti</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1619007031_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTA0XzM4NDI=\"}}', 1619622886, 0, 0, 0, 0, 0),
(1018, 'admin', 0, '71', 103, 0, 'Your product has been approved-___-<a href=\'http://localhost/markethub/listing/MTAzXzI3MzE=\'>Shirts</a>', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"},\"item\":{\"image\":\"1618558975_71.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAzXzI3MzE=\"}}', 1619680397, 0, 0, 0, 0, 0),
(1019, 'additem', 71, '0', 103, 103, '<a href=\'http://localhost/markethub/stores/fantacy-store\'>Demo Seller</a> -___-added a product-___- <a href=\'http://localhost/markethub/listing/MTAzXzI3MzE=\'>Shirts</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/stores\\/fantacy-store\"},\"item\":{\"image\":\"1618558975_71.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/MTAzXzI3MzE=\"}}', 1619680397, 0, 0, 0, 0, 0),
(1020, 'orderstatus', 71, '70', 175, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/175\">175</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619687170, 0, 0, 0, 0, 0),
(1021, 'orderstatus', 71, '70', 175, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/175\">175</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619687191, 0, 0, 0, 0, 0),
(1022, 'orderstatus', 70, '71', 175, 0, 'Your order 175 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619687198, 0, 0, 0, 0, 0),
(1023, 'admin', 0, '71', 175, 0, 'Your account has been credited for the order-___-#175 - $180439.53', 0, 'Your account has been credited for the order-___-#175 - $180439.53', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619687286, 0, 0, 0, 0, 0),
(1024, 'orderstatus', 71, '70', 176, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/176\">176</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619687837, 0, 0, 0, 0, 0),
(1025, 'orderstatus', 71, '70', 176, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/176\">176</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619687839, 0, 0, 0, 0, 0),
(1026, 'orderstatus', 71, '70', 176, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/176\">176</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619687861, 0, 0, 0, 0, 0),
(1027, 'orderstatus', 70, '71', 176, 0, 'Your order 176 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619687880, 0, 0, 0, 0, 0),
(1028, 'admin', 0, '71', 176, 0, 'Your account has been credited for the order-___-#176 - $328', 0, 'Your account has been credited for the order-___-#176 - $328', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619688009, 0, 0, 0, 0, 0),
(1029, 'favorite', 70, '71', 95, 95, '<a href=\'http://localhost/markethub/people/demo\'>DemoUser</a> -___-added your product in their collection -___- <a href=\'http://localhost/markethub/listing/95/testing\'>testing</a>', 0, NULL, '{\"user\":{\"image\":\"1618382992_70.png\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demo\"},\"item\":{\"image\":\"1617624755_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/listing\\/OTVfNDg0Mw==\"}}', 1619689376, 0, 0, 0, 0, 0),
(1030, 'orderstatus', 71, '224', 177, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/177\">177</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619702587, 0, 0, 0, 0, 0),
(1031, 'orderstatus', 71, '224', 177, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/177\">177</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619702589, 0, 0, 0, 0, 0),
(1032, 'orderstatus', 71, '224', 177, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/177\">177</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619702616, 0, 0, 0, 0, 0),
(1033, 'orderstatus', 224, '71', 177, 0, 'Your order 177 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619702626, 0, 0, 0, 0, 0),
(1034, 'admin', 0, '71', 177, 0, 'Your account has been credited for the order-___-#177 - $92', 0, 'Your account has been credited for the order-___-#177 - $92', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619702687, 0, 0, 0, 0, 0),
(1035, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703357, 0, 0, 0, 0, 0),
(1036, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703380, 0, 0, 0, 0, 0),
(1037, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703401, 0, 0, 0, 0, 0),
(1038, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703420, 0, 0, 0, 0, 0),
(1039, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703443, 0, 0, 0, 0, 0),
(1040, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703467, 0, 0, 0, 0, 0),
(1041, 'orderstatus', 71, '224', 178, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703491, 0, 0, 0, 0, 0),
(1042, 'orderstatus', 71, '70', 169, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/169\">169</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703801, 0, 0, 0, 0, 0),
(1043, 'orderstatus', 71, '224', 178, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/178\">178</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619703842, 0, 0, 0, 0, 0),
(1044, 'orderstatus', 224, '71', 178, 0, 'Your order 178 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619703848, 0, 0, 0, 0, 0),
(1045, 'admin', 0, '71', 178, 0, 'Your account has been credited for the order-___-#178 - $92', 0, 'Your account has been credited for the order-___-#178 - $92', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619703893, 0, 0, 0, 0, 0),
(1046, 'orderstatus', 71, '224', 179, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/179\">179</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619704234, 0, 0, 0, 0, 0),
(1047, 'orderstatus', 71, '224', 179, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/179\">179</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619704540, 0, 0, 0, 0, 0),
(1048, 'orderstatus', 224, '71', 179, 0, 'Your order 179 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619704554, 0, 0, 0, 0, 0),
(1049, 'admin', 0, '71', 179, 0, 'Your account has been credited for the order-___-#179 - $92', 0, 'Your account has been credited for the order-___-#179 - $92', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619704616, 0, 0, 0, 0, 0),
(1050, 'orderstatus', 71, '223', 181, 0, 'Your order has been marked as processing-___- #<a href=\"http://localhost/markethub/buyerorderdetails/181\">181</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619705363, 0, 0, 0, 0, 0),
(1051, 'orderstatus', 71, '223', 181, 0, 'Your order has been updated with Tracking details-___- #<a href=\"http://localhost/markethub/buyerorderdetails/181\">181</a>', 0, NULL, '{\"user\":{\"image\":\"1594126713_71.jpg\",\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/demoseller\"}}', 1619705382, 0, 0, 0, 0, 0),
(1052, 'orderstatus', 223, '71', 181, 0, 'Your order 181 has been received by the buyer-___- <a href=\'http://localhost/markethub/people/\'></a>', 0, NULL, '{\"user\":{\"image\":null,\"link\":\"http:\\/\\/services.hitasoft.in\\/dev\\/stratus\\/people\\/\"}}', 1619705389, 0, 0, 0, 0, 0),
(1053, 'admin', 0, '71', 181, 0, 'Your account has been credited for the order-___-#181 - $129.56', 0, 'Your account has been credited for the order-___-#181 - $129.56', '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"\"}}', 1619705422, 0, 0, 0, 0, 0),
(1054, 'follow', 227, '226', 71, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633642, 0, 0, 0, 0, 0),
(1055, 'follow', 227, '225', 72, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633644, 0, 0, 0, 0, 0),
(1056, 'follow', 227, '224', 73, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633645, 0, 0, 0, 0, 0),
(1057, 'follow', 227, '223', 74, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633647, 0, 0, 0, 0, 0),
(1058, 'follow', 227, '222', 75, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633649, 0, 0, 0, 0, 0),
(1059, 'follow', 227, '221', 76, 0, '<a href=\'http://localhost/markithub/people/chahal-hrdeep\'>hrdeep chahal</a> -___-is now following you', 0, NULL, '{\"user\":{\"image\":\"usrimg.jpg\",\"link\":\"http:\\/\\/localhost\\/markithub\\/people\\/chahal-hrdeep\"}}', 1622633650, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fc_managemodules`
--

CREATE TABLE `fc_managemodules` (
  `id` int(11) NOT NULL,
  `display_banner` enum('yes','no') NOT NULL,
  `site_maintenance_mode` enum('yes','no') NOT NULL,
  `maintenance_text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_mobilepages`
--

CREATE TABLE `fc_mobilepages` (
  `id` int(11) NOT NULL,
  `androidcontent` text NOT NULL,
  `androidlink` tinytext NOT NULL,
  `androidimage` varchar(20) NOT NULL,
  `ioscontent` text NOT NULL,
  `ioslink` tinytext NOT NULL,
  `iosimage` varchar(20) NOT NULL,
  `mobilecontent` text NOT NULL,
  `mobileimage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_mobilepages`
--

INSERT INTO `fc_mobilepages` (`id`, `androidcontent`, `androidlink`, `androidimage`, `ioscontent`, `ioslink`, `iosimage`, `mobilecontent`, `mobileimage`) VALUES
(1, '', 'https://playstore.com', '', '', 'https://appstore.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_news`
--

CREATE TABLE `fc_news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `status` enum('publish','unpublish') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_occasions`
--

CREATE TABLE `fc_occasions` (
  `id` int(11) NOT NULL,
  `occasion_name` varchar(200) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_ordercomments`
--

CREATE TABLE `fc_ordercomments` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `buyerid` int(11) NOT NULL,
  `merchantid` int(11) NOT NULL,
  `comment` tinytext NOT NULL,
  `createddate` int(11) NOT NULL,
  `commentedby` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_ordercomments`
--

INSERT INTO `fc_ordercomments` (`id`, `orderid`, `buyerid`, `merchantid`, `comment`, `createddate`, `commentedby`) VALUES
(1, 66, 176, 175, 'hi', 1608550850, 'buyer'),
(2, 76, 183, 181, 'hi', 1608985746, 'seller'),
(3, 128, 205, 203, 'hiiiii', 1609395480, 'buyer'),
(4, 148, 70, 71, 'Hello', 1617361862, 'buyer'),
(5, 143, 214, 215, 'Hello Artemis', 1617362576, 'buyer'),
(6, 143, 214, 215, 'Hello', 1617362633, 'seller'),
(7, 169, 70, 71, 'Hi I have to discuss regarding the order', 1618559823, 'buyer'),
(8, 169, 70, 71, 'Hi', 1618559836, 'buyer'),
(9, 163, 70, 155, 'Hi', 1618559874, 'buyer');

-- --------------------------------------------------------

--
-- Table structure for table `fc_orders`
--

CREATE TABLE `fc_orders` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `totalcost` varchar(15) NOT NULL,
  `totalCostshipp` varchar(15) DEFAULT NULL,
  `tax` varchar(15) NOT NULL,
  `orderdate` int(11) NOT NULL,
  `shippingaddress` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount_amount` varchar(15) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `admin_commission` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `deliver_update` int(11) NOT NULL,
  `status_date` int(11) NOT NULL,
  `deliver_date` int(11) NOT NULL,
  `reviews` int(11) NOT NULL,
  `deliverytype` varchar(10) NOT NULL,
  `seller_txnid` varchar(100) NOT NULL,
  `refunded_amount` varchar(15) DEFAULT NULL,
  `refunded_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_orders`
--

INSERT INTO `fc_orders` (`orderid`, `userid`, `merchant_id`, `totalcost`, `totalCostshipp`, `tax`, `orderdate`, `shippingaddress`, `coupon_id`, `discount_amount`, `currency`, `admin_commission`, `status`, `deliver_update`, `status_date`, `deliver_date`, `reviews`, `deliverytype`, `seller_txnid`, `refunded_amount`, `refunded_date`) VALUES
(1, 81, 71, '290', '0', '0', 1594106839, 1, NULL, NULL, 'USD', '29', 'Shipped', 0, 1594111543, 0, 0, 'braintree', '', NULL, NULL),
(2, 81, 71, '4500', '0', '0', 1594106891, 1, NULL, NULL, 'USD', '0', 'Shipped', 0, 1594111563, 0, 0, 'braintree', '', NULL, NULL),
(3, 81, 154, '90', '0', '0', 1594106941, 1, NULL, NULL, 'USD', '9', 'Shipped', 0, 1594108783, 0, 0, 'braintree', '', NULL, NULL),
(4, 81, 155, '229', '30', '0', 1594106969, 1, NULL, NULL, 'USD', '19.9', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(5, 89, 71, '299.25', '0', '14.25', 1594107962, 2, NULL, NULL, 'USD', '28.5', 'Delivered', 1594112402, 1594112402, 1594112401, 0, 'cod', '', NULL, NULL),
(6, 89, 155, '1322.06', '0', '62.96', 1594107975, 2, NULL, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(7, 89, 155, '2903.25', '0', '138.25', 1594107991, 2, NULL, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(8, 89, 155, '228.95', '20', '9.95', 1594108006, 2, NULL, NULL, 'USD', '19.9', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(9, 89, 154, '18900', '0', '900', 1594108036, 2, NULL, NULL, 'USD', '0', 'Delivered', 1594110451, 1594110451, 1594110451, 0, 'cod', '', NULL, NULL),
(10, 89, 71, '157.5', '0', '7.5', 1594108052, 2, NULL, NULL, 'USD', '15', 'Shipped', 0, 1594111602, 0, 0, 'cod', '', NULL, NULL),
(11, 89, 154, '2100', '0', '100', 1594108099, 2, NULL, NULL, 'USD', '0', 'Delivered', 1594112044, 1594112044, 1594112044, 0, 'braintree', '', NULL, NULL),
(12, 89, 71, '538.65', '0', '25.65', 1594108133, 2, NULL, NULL, 'USD', '51.3', 'Delivered', 1594111825, 1594111825, 1594111824, 0, 'braintree', '', NULL, NULL),
(13, 89, 154, '6882.75', '0', '327.75', 1594108168, 2, NULL, NULL, 'USD', '0', 'Delivered', 1594110449, 1594110449, 1594110448, 0, 'braintree', '', NULL, NULL),
(14, 89, 71, '4725', '0', '225', 1594108211, 2, NULL, NULL, 'USD', '0', 'Delivered', 1594111820, 1594111820, 1594111820, 0, 'braintree', '', NULL, NULL),
(15, 89, 71, '126', '0', '6', 1594108586, 2, NULL, NULL, 'USD', '12', 'Delivered', 1594111816, 1594111816, 1594111816, 0, 'braintree', '', NULL, NULL),
(16, 89, 155, '109.25', '20', '4.25', 1594108599, 2, NULL, NULL, 'USD', '8.5', 'Delivered', 1594214413, 1594214413, 1594214413, 0, 'cod', '', NULL, NULL),
(17, 89, 155, '228.95', '20', '9.95', 1594108613, 2, NULL, NULL, 'USD', '19.9', 'Shipped', 0, 1594118152, 0, 0, 'cod', '', NULL, NULL),
(18, 89, 155, '2903.25', '0', '138.25', 1594108624, 2, NULL, NULL, 'USD', '0', 'Shipped', 0, 1594118118, 0, 0, 'cod', '', NULL, NULL),
(19, 89, 155, '231.1', '40', '9.1', 1594108636, 2, NULL, NULL, 'USD', '18.2', 'Shipped', 0, 1594118062, 0, 0, 'cod', '', NULL, NULL),
(20, 89, 154, '9058.7999999999', '9000', '2.8', 1594108681, 2, NULL, NULL, 'USD', '5.6', 'Delivered', 1594110440, 1594110440, 1594110440, 0, 'braintree', '', NULL, NULL),
(21, 89, 155, '238.95', '30', '9.95', 1594108695, 2, NULL, NULL, 'USD', '19.9', 'Shipped', 0, 1594118032, 0, 0, 'cod', '', NULL, NULL),
(22, 89, 71, '893.03', '0', '42.53', 1594108711, 2, NULL, NULL, 'USD', '85.05', 'Processing', 0, 1594111452, 0, 0, 'cod', '', NULL, NULL),
(23, 89, 71, '472.5', '0', '22.5', 1594108741, 2, NULL, NULL, 'USD', '45', 'Delivered', 1594111796, 1594111796, 1594111796, 0, 'braintree', '', NULL, NULL),
(24, 157, 155, '270', '20', '0', 1594112648, 3, NULL, NULL, 'USD', '25', 'Delivered', 1594112743, 1594112743, 1594112738, 0, 'cod', '', NULL, NULL),
(25, 157, 155, '307.2', '30', '6.6', 1594117370, 4, NULL, NULL, 'USD', '26.4', 'Delivered', 1594117414, 1594117414, 1594117409, 0, 'braintree', '', NULL, NULL),
(26, 157, 155, '228.95', '20', '9.95', 1594117808, 4, NULL, NULL, 'USD', '19.9', 'Delivered', 1594117856, 1594117856, 1594117851, 0, 'cod', '', NULL, NULL),
(27, 157, 155, '422.2', '40', '9.1', 1594118405, 4, NULL, NULL, 'USD', '36.4', 'Delivered', 1594118444, 1594118444, 1594118439, 0, 'cod', '', NULL, NULL),
(28, 157, 155, '574.48', '50', '24.98', 1594118834, 4, NULL, NULL, 'USD', '49.95', 'Delivered', 1594118865, 1594118865, 1594118860, 0, 'cod', '', NULL, NULL),
(29, 157, 155, '2903.25', '0', '138.25', 1594119105, 4, NULL, NULL, 'USD', '0', 'Delivered', 1594119142, 1594119142, 1594119137, 0, 'cod', '', NULL, NULL),
(30, 157, 155, '6772.5', '0', '322.5', 1594122316, 4, NULL, NULL, 'USD', '0', 'Delivered', 1594122376, 1594122376, 1594122371, 0, 'cod', '', NULL, NULL),
(31, 89, 71, '299.25', '0', '14.25', 1594127561, 2, NULL, NULL, 'USD', '28.5', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(32, 89, 155, '13545', '0', '645', 1594130658, 2, NULL, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(33, 70, 71, '150', '0', '7.5', 1607097782, 5, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(34, 161, 71, '98', '0', '', 1607099975, 6, 0, NULL, 'USD', '9.8', 'Delivered', 1607100065, 1607100065, 1607100065, 0, 'braintree', '', NULL, NULL),
(35, 70, 71, '300', '0', '15', 1608101189, 7, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(36, 70, 71, '300', '0', '15', 1608101389, 8, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(37, 70, 71, '300', '0', '15', 1608101639, 9, 0, NULL, 'USD', '30', 'Delivered', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(38, 70, 71, '150', '0', '7.5', 1608106234, 10, 0, NULL, 'USD', '15', 'Delivered', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(39, 171, 155, '63000', '0', '', 1608112496, 11, 0, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(40, 162, 71, '150', '0', '', 1608116578, 12, NULL, '150', 'USD', '15', 'Pending', 0, 0, 0, 0, 'credit', '', NULL, NULL),
(41, 171, 71, '175', '0', '', 1608117651, 13, 0, NULL, 'USD', '17.5', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(42, 171, 71, '150', '0', '', 1608117984, 14, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(43, 171, 71, '175', '0', '', 1608121523, 15, 0, NULL, 'USD', '17.5', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(44, 171, 71, '350', '0', '', 1608121772, 16, 0, NULL, 'USD', '35', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(45, 171, 71, '150', '0', '', 1608122474, 17, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(46, 171, 71, '180', '0', '9', 1608526237, 18, 0, NULL, 'USD', '18', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(47, 171, 71, '180', '0', '9', 1608526922, 19, 0, NULL, 'USD', '18', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(48, 171, 71, '180', '0', '9', 1608527233, 20, 0, NULL, 'USD', '18', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(49, 171, 71, '350', '0', '17.5', 1608527353, 21, 0, NULL, 'USD', '35', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(50, 171, 71, '150', '0', '7.5', 1608527529, 22, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(51, 171, 71, '400', '0', '20', 1608527859, 23, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(52, 162, 71, '513', '0', '', 1608528418, 24, 0, NULL, 'USD', '51.3', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(53, 162, 71, '200', '0', '', 1608528549, 25, 0, NULL, 'USD', '20', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(54, 171, 71, '180', '0', '9', 1608528629, 26, 0, NULL, 'USD', '18', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(55, 162, 71, '150', '0', '', 1608528846, 27, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(56, 171, 71, '175', '0', '8.75', 1608528974, 28, 0, NULL, 'USD', '17.5', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(57, 171, 71, '300', '0', '15', 1608529987, 29, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(58, 162, 71, '175', '0', '', 1608530130, 30, 0, NULL, 'USD', '17.5', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(59, 162, 71, '300', '0', '15', 1608530295, 31, NULL, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(60, 162, 71, '300', '0', '15', 1608530482, 32, NULL, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(61, 171, 71, '150', '0', '7.5', 1608530602, 33, 0, NULL, 'USD', '15', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(62, 171, 71, '300', '0', '15', 1608530764, 34, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(63, 171, 71, '200', '0', '10', 1608530833, 35, 0, NULL, 'USD', '20', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(64, 174, 172, '198', '0', '9.9', 1608537615, 36, NULL, NULL, 'USD', '19.8', 'Paid', 1608538092, 1608538293, 1608538092, 0, 'braintree', '', NULL, NULL),
(65, 176, 175, '200', '0', '2', 1608548212, 37, 0, NULL, 'USD', '40', 'Paid', 1608548486, 1608548864, 1608548486, 0, 'braintree', '', NULL, NULL),
(66, 176, 175, '200', '0', '2', 1608550442, 38, 0, NULL, 'USD', '40', 'Refunded', 0, 1608550807, 0, 0, 'braintree', '', '202', 1608550922),
(67, 176, 71, '150', '0', '1.5', 1608551191, 39, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(68, 179, 177, '196', '0', '', 1608612264, 40, 0, NULL, 'USD', '39.2', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(69, 179, 177, '196', '0', '', 1608612829, 41, 0, NULL, 'USD', '39.2', 'Paid', 1608613079, 1608613188, 1608613079, 0, 'braintree', 'b1yy8ndb', NULL, NULL),
(70, 179, 177, '196', '0', '', 1608619172, 42, 0, NULL, 'USD', '39.2', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(71, 179, 177, '196', '0', '', 1608619345, 43, 0, NULL, 'USD', '39.2', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(72, 180, 177, '196', '0', '', 1608619792, 44, 0, NULL, 'USD', '39.2', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(73, 180, 177, '196', '0', '', 1608621997, 45, 0, NULL, 'USD', '39.2', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(74, 180, 177, '3920', '0', '', 1608623410, 46, 0, NULL, 'USD', '0', 'Paid', 1608647147, 1608647205, 1608647147, 0, 'cod', '', NULL, NULL),
(75, 178, 177, '196', '0', '', 1608624523, 47, 0, NULL, 'USD', '39.2', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(76, 183, 181, '99', '0', '0.99', 1608624541, 48, NULL, NULL, 'USD', '9.9', 'Claimed', 0, 1608985442, 0, 0, 'braintree', '', NULL, NULL),
(77, 180, 177, '400', '0', '', 1608701959, 49, 0, NULL, 'USD', '80', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(78, 180, 177, '200', '0', '', 1608702937, 50, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(79, 171, 177, '200', '0', '2', 1608706814, 51, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(80, 178, 177, '200', '0', '', 1608708707, 52, NULL, '200', 'USD', '40', 'Delivered', 1608708978, 1608708978, 1608708978, 0, 'credit', '', NULL, NULL),
(81, 178, 177, '200', '0', '4', 1608709171, 53, 0, NULL, 'USD', '40', 'Delivered', 1608709239, 1608709239, 1608709239, 0, 'braintree', '', NULL, NULL),
(82, 180, 177, '200', '0', '4', 1608710092, 54, 0, NULL, 'USD', '40', 'Paid', 1608710198, 1608960727, 1608710198, 0, 'braintree', '', NULL, NULL),
(83, 184, 177, '200', '0', '4', 1608710663, 55, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(84, 186, 177, '200', '0', '4', 1608711091, 56, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(85, 187, 177, '392', '0', '7.84', 1608711142, 57, 0, NULL, 'USD', '78.4', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(86, 186, 177, '200', '0', '4', 1608711320, 58, 0, NULL, 'USD', '40', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(87, 188, 177, '392', '0', '7.84', 1608711503, 59, 0, NULL, 'USD', '78.4', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(88, 186, 177, '392', '0', '7.84', 1608716437, 60, 4, NULL, 'USD', '78.4', 'Paid', 1608716571, 1608718022, 1608716571, 0, 'braintree', 'prpjeffc', NULL, NULL),
(89, 162, 177, '392', '0', '7.84', 1608718829, 61, 0, NULL, 'USD', '78.4', 'Paid', 1608719002, 1608719056, 1608719002, 0, 'cod', '', NULL, NULL),
(90, 186, 177, '392', '0', '7.84', 1608720045, 62, 0, NULL, 'USD', '78.4', 'Processing', 0, 1608722465, 0, 0, 'cod', '', NULL, NULL),
(91, 171, 177, '400', '0', '4', 1608721242, 63, NULL, '1000', 'USD', '80', 'Refunded', 0, 1608722792, 0, 0, 'giftcard', '', '404', 1608723895),
(92, 171, 71, '300', '0', '3', 1608724835, 64, 5, NULL, 'USD', '60', 'Paid', 1608725138, 1608986017, 1608725138, 0, 'braintree', '', NULL, NULL),
(93, 193, 189, '100', '100', '1', 1608823359, 65, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(94, 193, 189, '100', '100', '1', 1608823639, 66, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(95, 192, 189, '100', '100', '1', 1608824517, 67, NULL, '50', 'USD', '30', 'Refunded', 0, 1608824548, 0, 0, 'braintree', '', '201', 1608824611),
(96, 192, 189, '100', '100', '1', 1608825091, 68, NULL, '201', 'USD', '30', 'Refunded', 0, 0, 0, 0, 'credit', '', '201', 1608825335),
(97, 192, 189, '200', '100', '2', 1608825853, 69, NULL, '201', 'USD', '40', 'Paid', 1608827412, 1608827601, 1608827412, 0, 'braintree', 'mp24azzp', NULL, NULL),
(98, 192, 189, '100', '100', '1', 1608827046, 70, 0, NULL, 'USD', '30', 'Refunded', 0, 1608827108, 0, 0, 'braintree', '', '201', 1608827159),
(99, 192, 189, '100', '100', '1', 1608960849, 73, 0, NULL, 'USD', '30', 'Shipped', 0, 1608960951, 0, 0, 'cod', '', NULL, NULL),
(100, 186, 189, '100', '100', '2', 1608961504, 74, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(101, 186, 189, '200', '100', '4', 1608964095, 75, NULL, NULL, 'USD', '40', 'Delivered', 1608965243, 1608965243, 1608965243, 0, 'braintree', '', NULL, NULL),
(102, 186, 189, '200', '100', '4', 1608965872, 76, NULL, NULL, 'USD', '40', 'Paid', 1608966028, 1608966465, 1608966028, 0, 'braintree', 'cv569aa1', NULL, NULL),
(103, 186, 189, '100', '100', '2', 1608966909, 77, 0, NULL, 'USD', '30', 'Paid', 1608967046, 1608967114, 1608967046, 0, 'braintree', 'dxw2mrfb', NULL, NULL),
(104, 186, 189, '300', '100', '6', 1608967432, 78, 0, NULL, 'USD', '60', 'Paid', 1608967502, 1608967559, 1608967502, 0, 'braintree', 'pgaa2w06', NULL, NULL),
(105, 194, 177, '392', '0', '7.84', 1608973315, 79, 0, NULL, 'USD', '78.4', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(106, 195, 71, '300', '0', '3', 1608978259, 81, 0, '0', 'USD', '', 'Pending', 0, 0, 0, 0, '', '', NULL, NULL),
(107, 195, 71, '300', '0', '3', 1608978899, 82, 0, '0', 'USD', '', 'Paid', 1608979031, 1608979126, 1608979031, 0, '', '1msq9sz8', NULL, NULL),
(108, 196, 181, '600', '0', '6', 1608981475, 83, 0, NULL, 'USD', '120', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(109, 197, 189, '100', '100', '1', 1608982174, 84, 0, NULL, 'USD', '30', 'Paid', 1608982253, 1608982295, 1608982253, 0, 'braintree', '', NULL, NULL),
(110, 197, 189, '100', '100', '1', 1608982453, 85, 0, NULL, 'USD', '30', 'Paid', 1608982553, 1608982750, 1608982553, 0, 'braintree', 'exsn1z9t', NULL, NULL),
(111, 197, 189, '200', '100', '2', 1608982918, 86, 0, NULL, 'USD', '40', 'Paid', 1608983015, 1608983285, 1608983015, 0, 'braintree', 'faxwz69e', NULL, NULL),
(112, 197, 189, '100', '100', '1', 1608983388, 87, 0, NULL, 'USD', '30', 'Refunded', 0, 0, 0, 0, 'braintree', '', '201', 1608983454),
(113, 197, 189, '100', '100', '1', 1608984522, 89, 0, '0', 'USD', '', 'Paid', 1608984721, 1608984984, 1608984721, 0, '', 'h1h856xw', NULL, NULL),
(114, 183, 181, '600', '0', '6', 1608985117, 90, NULL, NULL, 'USD', '120', 'Refunded', 0, 0, 0, 0, 'braintree', '', '606', 1608985615),
(115, 197, 189, '99', '100', '0.99', 1608986022, 91, 0, NULL, 'USD', '9.9', 'Delivered', 1608986087, 1608986087, 1608986087, 0, 'braintree', '', NULL, NULL),
(116, 183, 181, '600', '0', '6', 1608986277, 92, NULL, '10', 'USD', '120', 'Delivered', 1608986404, 1608986404, 1608986404, 0, 'braintree', '', NULL, NULL),
(117, 192, 71, '200', '0', '2', 1608986442, 93, NULL, '202', 'USD', '40', 'Delivered', 1608986512, 1608986512, 1608986512, 0, 'credit', '', NULL, NULL),
(118, 197, 189, '99', '100', '0.99', 1608986660, 94, NULL, '199.99', 'USD', '9.9', 'Paid', 1608986852, 1609399851, 1608986852, 0, 'credit', 'ftjd7rbw', NULL, NULL),
(119, 193, 189, '100', '100', '1', 1608987577, 95, NULL, '80', 'USD', '30', 'Refunded', 0, 0, 0, 0, 'braintree', '', '201', 1608987612),
(120, 193, 189, '100', '100', '1', 1608987705, 96, NULL, '201', 'USD', '30', 'Paid', 1608987799, 1608988200, 1608987799, 0, 'credit', 'qdfa308p', NULL, NULL),
(121, 185, 189, '100', '100', '2', 1608988535, 97, 0, NULL, 'USD', '30', 'Paid', 1608988671, 1609399214, 1608988671, 0, 'braintree', '3wwmdqm7', NULL, NULL),
(122, 199, 181, '100', '0', '1', 1608988644, 98, 7, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(123, 193, 189, '100', '100', '1', 1608989246, 99, 0, NULL, 'USD', '30', 'Refunded', 0, 0, 0, 0, 'braintree', '', '201', 1608989279),
(124, 182, 200, '200', '0', '2', 1608989297, 100, NULL, '50', 'USD', '40', 'Paid', 1608989502, 1608989706, 1608989502, 0, 'braintree', '', NULL, NULL),
(125, 193, 189, '100', '100', '1', 1608989375, 101, NULL, '201', 'USD', '30', 'Paid', 1608989489, 1608989719, 1608989489, 0, 'credit', '832zd8fe', NULL, NULL),
(126, 199, 200, '100', '0', '1', 1608990249, 102, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(127, 201, 181, '300', '0', '3', 1608991690, 103, 0, NULL, 'USD', '60', 'Paid', 1608991818, 1608991943, 1608991818, 0, 'braintree', '', NULL, NULL),
(128, 205, 203, '60000', '0', '600', 1609393783, 104, 0, NULL, 'USD', '0', 'Paid', 1609395729, 1609395833, 1609395729, 0, 'braintree', '', NULL, NULL),
(129, 206, 203, '1000', '0', '10', 1609400258, 105, 0, NULL, 'USD', '200', 'Paid', 1609400557, 1609400618, 1609400557, 0, 'braintree', '5g046kdz', NULL, NULL),
(130, 207, 203, '1000', '0', '10', 1609402148, 106, 0, NULL, 'USD', '200', 'Paid', 1609402288, 1609402368, 1609402288, 0, 'braintree', '', NULL, NULL),
(131, 207, 203, '200', '0', '2', 1609403324, 107, 0, NULL, 'USD', '40', 'Paid', 1609403800, 1609403855, 1609403800, 0, 'braintree', '', NULL, NULL),
(132, 207, 203, '200', '0', '2', 1609404009, 108, 0, NULL, 'USD', '40', 'Paid', 1609404114, 1609404180, 1609404114, 0, 'braintree', '', NULL, NULL),
(133, 207, 203, '50000', '0', '500', 1609404781, 109, 0, NULL, 'USD', '0', 'Paid', 1609404860, 1609404882, 1609404860, 0, 'braintree', '', NULL, NULL),
(134, 207, 175, '100', '0', '1', 1609405199, 110, 0, NULL, 'USD', '30', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(135, 208, 203, '3436', '0', '34.36', 1609405800, 111, 0, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(136, 210, 209, '1000', '0', '10', 1609762401, 112, 9, NULL, 'USD', '200', 'Paid', 1609762567, 1609762648, 1609762567, 0, 'braintree', 'ffaa0cz1', NULL, NULL),
(137, 210, 209, '1000', '0', '10', 1609762936, 113, 0, '0', 'USD', '', 'Paid', 1609766964, 1609767023, 1609766964, 0, '', 'a448w0wx', NULL, NULL),
(138, 210, 209, '100', '0', '1', 1609766464, 114, NULL, NULL, 'USD', '30', 'Refunded', 0, 1609766506, 0, 0, 'braintree', '', '101', 1609766586),
(139, 210, 209, '200', '0', '2', 1609767407, 115, NULL, '10', 'USD', '40', 'Refunded', 0, 1609767502, 0, 0, 'braintree', '', '202', 1609767563),
(140, 210, 209, '4000', '0', '40', 1609822326, 116, NULL, NULL, 'USD', '0', 'Delivered', 1609825980, 1609825980, 1609825980, 0, 'braintree', '', NULL, NULL),
(141, 70, 71, '1500', '0', '15', 1614355988, 118, 0, NULL, 'USD', '60', 'Delivered', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(142, 70, 71, '500', '0', '5', 1614657589, 119, 0, NULL, 'USD', '100', 'Delivered', 1614657775, 1614657775, 1614657775, 0, 'braintree', '', NULL, NULL),
(143, 214, 215, '4000', '0', '', 1617358273, 120, 0, NULL, 'USD', '0', 'Delivered', 1617362702, 1617362702, 1617362702, 0, 'braintree', '', NULL, NULL),
(144, 214, 71, '385', '0', '', 1617358428, 121, 0, NULL, 'USD', '77', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(145, 214, 71, '385', '0', '', 1617359353, 122, 0, NULL, 'USD', '77', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(146, 214, 71, '900', '0', '', 1617359494, 123, 0, NULL, 'USD', '180', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(147, 70, 71, '900', '0', '9', 1617359791, 124, 0, NULL, 'USD', '180', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(148, 70, 71, '385', '0', '3.85', 1617361829, 125, 0, NULL, 'USD', '77', 'Pending', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(149, 70, 71, '900', '0', '9', 1617362364, 126, 0, NULL, 'USD', '180', 'Delivered', 1619619075, 1619619075, 1619619074, 0, 'braintree', '', NULL, NULL),
(150, 214, 71, '385', '0', '', 1617362505, 127, 0, NULL, 'USD', '77', 'Processing', 0, 1617634525, 0, 0, 'braintree', '', NULL, NULL),
(151, 70, 215, '4000', '0', '40', 1617365023, 128, NULL, NULL, 'USD', '0', 'Delivered', 1617365883, 1617365883, 1617365883, 0, 'braintree', '', NULL, NULL),
(152, 216, 71, '330.6', '0', '6.61', 1617624328, 130, 0, NULL, 'EUR', '66.12', 'Paid', 1617634662, 1617634747, 1617634662, 0, 'braintree', '3p3tqwrd', NULL, NULL),
(153, 216, 71, '330.6', '0', '6.61', 1617624370, 131, 0, NULL, 'EUR', '66.12', 'Cancelled', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(154, 216, 154, '8892.15', '0', '177.85', 1617626041, 133, 0, '0', 'EUR', '', 'Pending', 0, 0, 0, 0, '', '', NULL, NULL),
(155, 70, 71, '285', '0', '2.85', 1617796640, 134, 0, NULL, 'USD', '57', 'Delivered', 1617796753, 1617796753, 1617796753, 0, 'braintree', '', NULL, NULL),
(156, 70, 71, '285', '0', '2.85', 1617799205, 135, 0, NULL, 'USD', '57', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(157, 70, 71, '300', '0', '3', 1618207595, 140, 0, NULL, 'USD', '60', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(158, 214, 71, '300', '0', '', 1618230463, 141, 0, NULL, 'USD', '60', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(159, 70, 71, '300', '0', '3', 1618232159, 142, 0, NULL, 'USD', '60', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(160, 217, 71, '4478.48', '0', '89.57', 1618235519, 149, NULL, NULL, 'SGD', '0', 'Delivered', 1618235576, 1618235576, 1618235576, 0, 'braintree', '', NULL, NULL),
(161, 216, 71, '6052', '0', '121.04', 1618235869, 150, NULL, NULL, 'USD', '0', 'Delivered', 1618235909, 1618235909, 1618235909, 0, 'braintree', '', NULL, NULL),
(162, 217, 71, '3026', '0', '60.52', 1618318070, 152, 0, NULL, 'USD', '0', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(163, 70, 155, '19400', '0', '194', 1618376243, 153, 0, NULL, 'USD', '0', 'Cancelled', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(164, 216, 71, '450', '0', '9', 1618380150, 154, 0, NULL, 'USD', '90', 'Cancelled', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(165, 216, 71, '450', '0', '9', 1618380291, 155, 0, NULL, 'USD', '90', 'Cancelled', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(166, 216, 71, '450', '0', '9', 1618380415, 156, 0, NULL, 'USD', '90', 'Pending', 0, 0, 0, 0, 'cod', '', NULL, NULL),
(167, 217, 71, '6052', '0', '121.04', 1618383856, 157, 0, NULL, 'USD', '0', 'Delivered', 1618383899, 1618383899, 1618383899, 0, 'braintree', '', NULL, NULL),
(168, 217, 71, '6000', '0', '120', 1618384046, 158, 0, NULL, 'USD', '0', 'Delivered', 1618384083, 1618384083, 1618384083, 0, 'braintree', '', NULL, NULL),
(169, 70, 71, '126', '10', '1.26', 1618559487, 159, 0, NULL, 'USD', '25.2', 'Processing', 0, 1619703799, 0, 0, 'braintree', '', NULL, NULL),
(170, 70, 71, '540', '10', '5.4', 1618581371, 160, 0, NULL, 'USD', '108', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(171, 70, 71, '755', '22', '7.55', 1618816065, 161, NULL, NULL, 'USD', '151', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(172, 70, 155, '63000', '0', '630', 1618834908, 5, NULL, NULL, 'USD', '0', 'Cancelled', 0, 0, 0, 0, 'braintree', '', NULL, NULL),
(173, 223, 71, '178653', '0', '3573.06', 1619615600, 162, 0, NULL, 'USD', '0', 'Paid', 1619616020, 1619616667, 1619616019, 0, 'braintree', '14mk9622', NULL, NULL),
(174, 70, 71, '876556', '0', '8765.56', 1619618951, 163, NULL, '1500', 'USD', '0', 'Paid', 1619619539, 1619619605, 1619619539, 0, 'braintree', '37pmjq7b', NULL, NULL),
(175, 70, 71, '178653', '0', '1786.53', 1619686975, 5, NULL, NULL, 'USD', '0', 'Paid', 1619687198, 1619687286, 1619687197, 0, 'braintree', 'r89fnnhv', NULL, NULL),
(176, 70, 71, '400', '5', '3', 1619687824, 5, NULL, NULL, 'USD', '80', 'Paid', 1619687880, 1619688009, 1619687880, 0, 'braintree', '7pnzjs0j', NULL, NULL),
(177, 224, 71, '100', '20', '2', 1619702377, 164, NULL, NULL, 'USD', '30', 'Paid', 1619702626, 1619702687, 1619702625, 0, 'braintree', 'qc6tp51g', NULL, NULL),
(178, 224, 71, '100', '20', '2', 1619703299, 164, NULL, NULL, 'USD', '30', 'Paid', 1619703848, 1619703893, 1619703847, 0, 'braintree', 'qhzfay88', NULL, NULL),
(179, 224, 71, '100', '20', '2', 1619704186, 164, NULL, NULL, 'USD', '30', 'Paid', 1619704554, 1619704616, 1619704553, 0, 'braintree', 'fz6s62mm', NULL, NULL),
(180, 223, 71, '500', '20', '10', 1619704933, 162, NULL, NULL, 'USD', '100', 'Pending', 0, 0, 0, 0, 'credit', '', NULL, NULL),
(181, 223, 71, '233', '55', '4.66', 1619705344, 162, NULL, NULL, 'USD', '46.6', 'Paid', 1619705389, 1619705422, 1619705388, 0, 'credit', '2pkaqbx9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fc_order_items`
--

CREATE TABLE `fc_order_items` (
  `orderItemid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(150) NOT NULL,
  `item_size` varchar(30) DEFAULT NULL,
  `itemprice` varchar(15) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `itemunitprice` varchar(15) NOT NULL,
  `shippingprice` varchar(15) NOT NULL,
  `discountType` varchar(30) DEFAULT NULL,
  `discountAmount` varchar(15) DEFAULT NULL,
  `discountId` varchar(50) DEFAULT NULL,
  `tax` varchar(15) NOT NULL,
  `dealPercentage` int(11) NOT NULL,
  `giftamount` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_order_items`
--

INSERT INTO `fc_order_items` (`orderItemid`, `orderid`, `itemid`, `itemname`, `item_size`, `itemprice`, `itemquantity`, `itemunitprice`, `shippingprice`, `discountType`, `discountAmount`, `discountId`, `tax`, `dealPercentage`, `giftamount`) VALUES
(1, 1, 24, 'Paisley, Striped, Floral Print Daily Wear Georgette Saree', '', '290', 1, '290', '0', 'Credit', '0', NULL, '0', 0, NULL),
(2, 2, 33, 'Realme 108cm (43 inch)', '', '4500', 1, '4500', '0', 'Credit', '0', NULL, '0', 0, NULL),
(3, 3, 43, 'NIVEA MEN MEN Dark Spot Reduction Crme', '', '90', 1, '90', '0', 'Credit', '0', NULL, '0', 0, NULL),
(4, 4, 18, 'AURION HANDGRIP1040 Adjustable Hand Grip', '', '199', 1, '199', '30', 'Credit', '0', NULL, '0', 0, NULL),
(5, 5, 6, 'Men Self Design Formal Spread Shirt', 's', '285', 1, '285', '0', 'Credit', '0', NULL, '14.25', 5, NULL),
(6, 6, 4, 'Puma Men black sneakers', '6', '1259.1', 1, '1259.1', '0', 'Credit', '0', NULL, '62.96', 10, NULL),
(7, 7, 25, 'KORE DM-HEXA-COMBO16 Dumbbells Kits', '', '2765', 1, '2765', '0', 'Credit', '0', NULL, '138.25', 0, NULL),
(8, 8, 47, 'The Power of Your Subconscious Mind', '', '199', 1, '199', '20', 'Credit', '0', NULL, '9.95', 0, NULL),
(9, 9, 1, 'Microsoft Surface Pro X 1876', '', '18000', 1, '18000', '0', 'Credit', '0', NULL, '900', 10, NULL),
(10, 10, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', 'Credit', '0', NULL, '7.5', 0, NULL),
(11, 11, 11, 'Mini Slim Stylist Multimedia Keyboard', '', '2000', 1, '2000', '0', 'Credit', '0', NULL, '100', 0, NULL),
(12, 12, 10, 'Men Printed Casual Spread Shirt', '', '513', 1, '513', '0', 'Credit', '0', NULL, '25.65', 0, NULL),
(13, 13, 34, 'Women Beauty Care Radiance/Cleanser Instant Glow', '', '6555', 1, '6555', '0', 'Credit', '0', NULL, '327.75', 0, NULL),
(14, 14, 33, 'Realme 108cm (43 inch)', '', '4500', 1, '4500', '0', 'Credit', '0', NULL, '225', 0, NULL),
(15, 15, 16, 'Striped Men Polo Neck Multicolor T-Shirt', 's', '120', 1, '120', '0', 'Credit', '0', NULL, '6', 0, NULL),
(16, 16, 44, 'How to Stop Worrying and Start Living Kindle Edition', '', '85', 1, '85', '20', 'Credit', '0', NULL, '4.25', 0, NULL),
(17, 17, 47, 'The Power of Your Subconscious Mind', '', '199', 1, '199', '20', 'Credit', '0', NULL, '9.95', 0, NULL),
(18, 18, 25, 'KORE DM-HEXA-COMBO16 Dumbbells Kits', '', '2765', 1, '2765', '0', 'Credit', '0', NULL, '138.25', 0, NULL),
(19, 19, 36, 'Dee mannequin Leather Gym Gloves', '', '182', 1, '182', '40', 'Credit', '0', NULL, '9.1', 0, NULL),
(20, 20, 3, 'Huawei ERS-B19 Band 2 Classic Activity Tracker (Black)', '', '56', 1, '56', '9000', 'Credit', '0', NULL, '2.8', 0, NULL),
(21, 21, 18, 'AURION HANDGRIP1040 Adjustable Hand Grip', '', '199', 1, '199', '30', 'Credit', '0', NULL, '9.95', 0, NULL),
(22, 22, 28, 'Woven Fashion Cotton Silk Saree', '', '850.5', 1, '850.5', '0', 'Credit', '0', NULL, '42.53', 10, NULL),
(23, 23, 19, 'Solid Men Grey Track Pants', '', '450', 1, '450', '0', 'Credit', '0', NULL, '22.5', 0, NULL),
(24, 24, 48, 'The Alchemist Kindle Edition', '', '250', 1, '250', '20', NULL, NULL, NULL, '0', 0, NULL),
(25, 25, 46, 'The Art of Public Speaking Kindle Edition', '', '264', 2, '132', '30', NULL, NULL, NULL, '6.6', 0, NULL),
(26, 26, 47, 'The Power of Your Subconscious Mind', '', '199', 1, '199', '20', NULL, NULL, NULL, '9.95', 0, NULL),
(27, 27, 36, 'Dee mannequin Leather Gym Gloves', '', '364', 2, '182', '40', NULL, NULL, NULL, '9.1', 0, NULL),
(28, 28, 12, 'Eranqo Double Spring Tummy Trimmer', '', '499.5', 1, '499.5', '50', NULL, NULL, NULL, '24.98', 50, NULL),
(29, 29, 25, 'KORE DM-HEXA-COMBO16 Dumbbells Kits', '', '2765', 1, '2765', '0', NULL, NULL, NULL, '138.25', 0, NULL),
(30, 30, 55, 'Lenovo K9 (Black, 32 GB) (3 GB RAM)', '', '6450', 1, '6450', '0', NULL, NULL, NULL, '322.5', 14, NULL),
(31, 31, 6, 'Men Self Design Formal Spread Shirt', 's', '285', 1, '285', '0', 'Credit', '0', NULL, '14.25', 5, NULL),
(32, 32, 55, 'Lenovo K9 (Black, 32 GB) (3 GB RAM)', '', '12900', 2, '6450', '0', 'Credit', '0', NULL, '645', 14, NULL),
(33, 33, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '7.5', 0, NULL),
(34, 34, 58, 'Shirt', 'N/A', '98', 1, '98', '0', NULL, NULL, NULL, '0', 0, NULL),
(35, 35, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(36, 36, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(37, 37, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(38, 38, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '7.5', 0, NULL),
(39, 39, 51, 'Samsung Galaxy Z Flip (Gold, 8GB RAM, 256GB Storage)', '0', '63000', 1, '63000', '0', NULL, NULL, NULL, '0', 0, NULL),
(40, 40, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', 'User Credits', '150', NULL, '0', 0, NULL),
(41, 41, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '175', 1, '175', '0', NULL, NULL, NULL, '0', 0, NULL),
(42, 42, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '0', 0, NULL),
(43, 43, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '175', 1, '175', '0', NULL, NULL, NULL, '0', 0, NULL),
(44, 44, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '350', 2, '175', '0', NULL, NULL, NULL, '0', 0, NULL),
(45, 45, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '0', 0, NULL),
(46, 46, 59, 'Commission Demo', 'N/A', '180', 1, '180', '0', NULL, NULL, NULL, '9', 0, NULL),
(47, 47, 59, 'Commission Demo', 'N/A', '180', 1, '180', '0', NULL, NULL, NULL, '9', 0, NULL),
(48, 48, 59, 'Commission Demo', 'N/A', '180', 1, '180', '0', NULL, NULL, NULL, '9', 0, NULL),
(49, 49, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '350', 2, '175', '0', NULL, NULL, NULL, '17.5', 0, NULL),
(50, 50, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '7.5', 0, NULL),
(51, 51, 8, 'Men Checkered Casual Cut Away Shirt', 'l', '400', 2, '200', '0', NULL, NULL, NULL, '20', 0, NULL),
(52, 52, 10, 'Men Printed Casual Spread Shirt', '0', '513', 1, '513', '0', NULL, NULL, NULL, '0', 0, NULL),
(53, 53, 20, 'Solid Men Blue Track Pants', '0', '200', 1, '200', '0', NULL, NULL, NULL, '0', 0, NULL),
(54, 54, 59, 'Commission Demo', '0', '180', 1, '180', '0', NULL, NULL, NULL, '9', 0, NULL),
(55, 55, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '0', 0, NULL),
(56, 56, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '175', 1, '175', '0', NULL, NULL, NULL, '8.75', 0, NULL),
(57, 57, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(58, 58, 8, 'Men Checkered Casual Cut Away Shirt', 'm', '175', 1, '175', '0', NULL, NULL, NULL, '0', 0, NULL),
(59, 59, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(60, 60, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(61, 61, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '7.5', 0, NULL),
(62, 62, 60, 'Comission 2', '0', '300', 1, '300', '0', NULL, NULL, NULL, '15', 0, NULL),
(63, 63, 8, 'Men Checkered Casual Cut Away Shirt', 'l', '200', 1, '200', '0', NULL, NULL, NULL, '10', 0, NULL),
(64, 64, 61, 'saree', 'N/A', '198', 1, '198', '0', NULL, NULL, NULL, '9.9', 0, NULL),
(65, 65, 62, 'Net saree', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '2', 0, NULL),
(66, 66, 62, 'Net saree', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '2', 0, NULL),
(67, 67, 8, 'Men Checkered Casual Cut Away Shirt', 's', '150', 1, '150', '0', NULL, NULL, NULL, '1.5', 0, NULL),
(68, 68, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(69, 69, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(70, 70, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(71, 71, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(72, 72, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(73, 73, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(74, 74, 66, 'Nikon', 'N/A', '3920', 1, '3920', '0', NULL, NULL, NULL, '0', 0, NULL),
(75, 75, 64, 'Iphone XR', 'N/A', '196', 1, '196', '0', NULL, NULL, NULL, '0', 0, NULL),
(76, 76, 65, 'shirt', 'N/A', '99', 1, '99', '0', NULL, NULL, NULL, '0.99', 0, NULL),
(77, 77, 64, 'Iphone XR', '0', '400', 2, '200', '0', NULL, NULL, NULL, '0', 0, NULL),
(78, 78, 64, 'Iphone XR', '0', '200', 1, '200', '0', NULL, NULL, NULL, '0', 0, NULL),
(79, 79, 64, 'Iphone XR', '0', '200', 1, '200', '0', NULL, NULL, NULL, '2', 0, NULL),
(80, 80, 64, 'Iphone XR', 'N/A', '200', 1, '200', '0', 'User Credits', '200', NULL, '0', 0, NULL),
(81, 81, 64, 'Iphone XR', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '4', 0, NULL),
(82, 82, 64, 'Iphone XR', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '4', 0, NULL),
(83, 83, 64, 'Iphone XR', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '4', 0, NULL),
(84, 84, 64, 'Iphone XR', '0', '200', 1, '200', '0', NULL, NULL, NULL, '4', 0, NULL),
(85, 85, 66, 'Nikon', 'N/A', '392', 1, '392', '0', NULL, NULL, NULL, '7.84', 0, NULL),
(86, 86, 64, 'Iphone XR', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '4', 0, NULL),
(87, 87, 66, 'Nikon', 'N/A', '392', 1, '392', '0', NULL, NULL, NULL, '7.84', 0, NULL),
(88, 88, 66, 'Nikon', '0', '392', 1, '392', '0', 'Coupon Discount', '39.2', '4', '7.84', 0, NULL),
(89, 89, 66, 'Nikon', '0', '392', 1, '392', '0', NULL, NULL, NULL, '7.84', 0, NULL),
(90, 90, 66, 'Nikon', 'N/A', '392', 1, '392', '0', NULL, NULL, NULL, '7.84', 0, NULL),
(91, 91, 64, 'Iphone XR', 'N/A', '400', 2, '200', '0', 'Giftcard Discount', '-100000', 'AFf21bcF', '4', 0, '404'),
(92, 92, 60, 'Comission 2', 'N/A', '300', 1, '300', '0', 'Coupon Discount', '30', '5', '3', 0, NULL),
(93, 93, 68, 'Spider', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(94, 94, 68, 'Spider', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(95, 95, 69, 'beem', 'N/A', '100', 1, '100', '100', 'User Credits', '50', NULL, '1', 0, NULL),
(96, 96, 69, 'beem', 'N/A', '100', 1, '100', '100', 'User Credits', '201', NULL, '1', 0, NULL),
(97, 97, 69, 'beem', 'N/A', '200', 2, '100', '100', 'User Credits', '201', NULL, '2', 0, NULL),
(98, 98, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(99, 99, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(100, 100, 69, 'beem', '0', '100', 1, '100', '100', NULL, NULL, NULL, '2', 0, NULL),
(101, 101, 68, 'Spider', '0', '200', 2, '100', '100', NULL, NULL, NULL, '4', 0, NULL),
(102, 102, 68, 'Spider', 'N/A', '200', 2, '100', '100', NULL, NULL, NULL, '4', 0, NULL),
(103, 103, 68, 'Spider', '0', '100', 1, '100', '100', NULL, NULL, NULL, '2', 0, NULL),
(104, 104, 68, 'Spider', '0', '300', 3, '100', '100', NULL, NULL, NULL, '6', 0, NULL),
(105, 105, 66, 'Nikon', '0', '392', 1, '392', '0', NULL, NULL, NULL, '7.84', 0, NULL),
(106, 106, 60, 'Comission 2', '', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(107, 107, 60, 'Comission 2', '', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(108, 108, 67, 'saree saree', 'N/A', '600', 1, '600', '0', NULL, NULL, NULL, '6', 0, NULL),
(109, 109, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(110, 110, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(111, 111, 69, 'beem', 'N/A', '200', 2, '100', '100', NULL, NULL, NULL, '2', 0, NULL),
(112, 112, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(113, 113, 69, 'beem', '', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(114, 114, 67, 'saree saree', 'N/A', '600', 1, '600', '0', NULL, NULL, NULL, '6', 0, NULL),
(115, 115, 69, 'beem', 'N/A', '99', 1, '99', '100', NULL, NULL, NULL, '0.99', 0, NULL),
(116, 116, 67, 'saree saree', 'N/A', '600', 1, '600', '0', 'Giftcard Discount', '10.17', 'ddMc8b9d', '6', 0, '10'),
(117, 117, 20, 'Solid Men Blue Track Pants', 'N/A', '200', 1, '200', '0', 'User Credits', '202', NULL, '2', 0, NULL),
(118, 118, 69, 'beem', 'N/A', '99', 1, '99', '100', 'User Credits', '199.99', NULL, '0.99', 0, NULL),
(119, 119, 69, 'beem', 'N/A', '100', 1, '100', '100', 'User Credits', '80', NULL, '1', 0, NULL),
(120, 120, 69, 'beem', 'N/A', '100', 1, '100', '100', 'User Credits', '201', NULL, '1', 0, NULL),
(121, 121, 68, 'Spider', '0', '100', 1, '100', '100', NULL, NULL, NULL, '2', 0, NULL),
(122, 122, 65, 'shirt', 'N/A', '100', 1, '100', '0', 'Coupon Discount', '10', '7', '1', 0, NULL),
(123, 123, 69, 'beem', 'N/A', '100', 1, '100', '100', NULL, NULL, NULL, '1', 0, NULL),
(124, 124, 72, 'blue', 'N/A', '200', 1, '200', '0', 'User Credits', '50', NULL, '2', 0, NULL),
(125, 125, 69, 'beem', 'N/A', '100', 1, '100', '100', 'User Credits', '201', NULL, '1', 0, NULL),
(126, 126, 73, 'blue shirt', 'N/A', '100', 1, '100', '0', NULL, NULL, NULL, '1', 0, NULL),
(127, 127, 74, 'blue blue blue', 'N/A', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(128, 128, 76, 'mobile', 'N/A', '60000', 1, '60000', '0', NULL, NULL, NULL, '600', 0, NULL),
(129, 129, 77, 'test saree', 'N/A', '1000', 1, '1000', '0', NULL, NULL, NULL, '10', 0, NULL),
(130, 130, 79, 'women saree', 'N/A', '1000', 1, '1000', '0', NULL, NULL, NULL, '10', 0, NULL),
(131, 131, 80, 'home', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '2', 0, NULL),
(132, 132, 78, 'shirt', 'N/A', '200', 1, '200', '0', NULL, NULL, NULL, '2', 0, NULL),
(133, 133, 75, 'mobile', 'N/A', '50000', 1, '50000', '0', NULL, NULL, NULL, '500', 0, NULL),
(134, 134, 63, 'example', 'N/A', '100', 1, '100', '0', NULL, NULL, NULL, '1', 0, NULL),
(135, 135, 81, 'fdgdfgf', 'N/A', '3436', 1, '3436', '0', NULL, NULL, NULL, '34.36', 0, NULL),
(136, 136, 84, 'test', 'N/A', '1000', 1, '1000', '0', 'Coupon Discount', '100', '9', '10', 0, NULL),
(137, 137, 83, 'black car', '', '1000', 1, '1000', '0', NULL, NULL, NULL, '10', 0, NULL),
(138, 138, 87, 'test', 'N/A', '100', 1, '100', '0', NULL, NULL, NULL, '1', 0, NULL),
(139, 139, 88, 'testtttt', 'N/A', '200', 1, '200', '0', 'Giftcard Discount', '10.53', '2D59aK5a', '2', 0, '10'),
(140, 140, 86, 'test test test', '0', '2000', 1, '2000', '0', NULL, NULL, NULL, '20', 0, NULL),
(141, 140, 85, 'test test', '0', '2000', 1, '2000', '0', NULL, NULL, NULL, '20', 0, NULL),
(142, 141, 6, 'Men Self Design Formal Spread Shirt', 's', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(143, 141, 6, 'Men Self Design Formal Spread Shirt', 'm', '1200', 3, '400', '0', NULL, NULL, NULL, '12', 0, NULL),
(144, 142, 90, 'Husky', 'N/A', '500', 1, '500', '0', NULL, NULL, NULL, '5', 0, NULL),
(145, 143, 94, 'Mobile', '0', '4000', 2, '2000', '0', NULL, NULL, NULL, '0', 0, NULL),
(146, 144, 91, 'Dan Brown\'s Origin', 'N/A', '385', 1, '385', '0', NULL, NULL, NULL, '0', 0, NULL),
(147, 145, 91, 'Dan Brown\'s Origin', 'N/A', '385', 1, '385', '0', NULL, NULL, NULL, '0', 0, NULL),
(148, 146, 93, 'Ring', '0', '900', 1, '900', '0', NULL, NULL, NULL, '0', 0, NULL),
(149, 147, 93, 'Ring', 'N/A', '900', 1, '900', '0', NULL, NULL, NULL, '9', 0, NULL),
(150, 148, 91, 'Dan Brown\'s Origin', 'N/A', '385', 1, '385', '0', NULL, NULL, NULL, '3.85', 0, NULL),
(151, 149, 93, 'Ring', 'N/A', '900', 1, '900', '0', NULL, NULL, NULL, '9', 0, NULL),
(152, 150, 91, 'Dan Brown\'s Origin', 'N/A', '385', 1, '385', '0', NULL, NULL, NULL, '0', 0, NULL),
(153, 151, 94, 'Mobilephone', '0', '4000', 2, '2000', '0', NULL, NULL, NULL, '40', 0, NULL),
(154, 152, 6, 'Men Self Design Formal Spread Shirt', 's', '330.6', 1, '330.6', '0', NULL, NULL, NULL, '6.61', 0, NULL),
(155, 153, 6, 'Men Self Design Formal Spread Shirt', 's', '330.6', 1, '330.6', '0', NULL, NULL, NULL, '6.61', 0, NULL),
(156, 154, 7, 'Fire TV Stick streaming media', '', '8892.15', 1, '8892.15', '0', NULL, NULL, NULL, '177.85', 0, NULL),
(157, 155, 6, 'Men Self Design Formal Spread Shirt', 's', '285', 1, '285', '0', NULL, NULL, NULL, '2.85', 0, NULL),
(158, 156, 6, 'Men Self Design Formal Spread Shirt', 's', '285', 1, '285', '0', NULL, NULL, NULL, '2.85', 0, NULL),
(159, 157, 6, 'Men Self Design Formal Spread Shirt', 's', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(160, 158, 6, 'Men Self Design Formal Spread Shirt', 's', '300', 1, '300', '0', NULL, NULL, NULL, '0', 0, NULL),
(161, 159, 6, 'Men Self Design Formal Spread Shirt', 's', '300', 1, '300', '0', NULL, NULL, NULL, '3', 0, NULL),
(162, 160, 102, 'Men Fashion 2021 - Test', 'N/A', '4478.48', 2, '2239.24', '0', NULL, NULL, NULL, '89.57', 0, NULL),
(163, 161, 102, 'Men Fashion 2021 - Test', 'N/A', '6052', 2, '3026', '0', NULL, NULL, NULL, '121.04', 0, NULL),
(164, 162, 102, 'Men Fashion 2021 - Test', 'N/A', '3026', 1, '3026', '0', NULL, NULL, NULL, '60.52', 0, NULL),
(165, 163, 57, 'HP 14-inch Laptop', 'N/A', '19400', 1, '19400', '0', NULL, NULL, NULL, '194', 0, NULL),
(166, 164, 90, 'Husky', 'N/A', '450', 1, '450', '0', NULL, NULL, NULL, '9', 0, NULL),
(167, 165, 90, 'Husky', 'N/A', '450', 1, '450', '0', NULL, NULL, NULL, '9', 0, NULL),
(168, 166, 90, 'Husky', 'N/A', '450', 1, '450', '0', NULL, NULL, NULL, '9', 0, NULL),
(169, 167, 102, 'Men Fashion 2021 - Test', 'N/A', '6052', 2, '3026', '0', NULL, NULL, NULL, '121.04', 0, NULL),
(170, 168, 6, 'Men Self Design Formal Spread Shirt', 'xl', '6000', 10, '600', '0', NULL, NULL, NULL, '120', 0, NULL),
(171, 169, 103, 'Shirts', 'S', '126', 1, '126', '10', NULL, NULL, NULL, '1.26', 0, NULL),
(172, 170, 103, 'Shirts', 'L', '540', 3, '180', '10', NULL, NULL, NULL, '5.4', 0, NULL),
(173, 171, 97, 'Phone', 'N/A', '755', 1, '755', '22', NULL, NULL, NULL, '7.55', 0, NULL),
(174, 172, 51, 'Samsung Galaxy Z Flip (Gold, 8GB RAM, 256GB Storage)', '', '63000', 1, '63000', '0', NULL, NULL, NULL, '630', 10, NULL),
(175, 173, 106, 'suzuki', 'N/A', '178653', 1, '178653', '0', NULL, NULL, NULL, '3573.06', 0, NULL),
(176, 174, 104, 'bugatti', 'N/A', '876556', 1, '876556', '0', 'Giftcard Discount', '1502.57', '4Neeb0PN', '8765.56', 0, '1500'),
(177, 175, 106, 'suzuki', '', '178653', 1, '178653', '0', 'Credit', '9000', NULL, '1786.53', 0, NULL),
(178, 176, 6, 'Men Self Design Formal Spread Shirt', 'm', '400', 1, '400', '5', NULL, NULL, NULL, '3', 0, NULL),
(179, 177, 103, 'Shirts', 'XL', '100', 1, '100', '20', NULL, NULL, NULL, '2', 0, NULL),
(180, 178, 103, 'Shirts', 'XL', '100', 1, '100', '20', NULL, NULL, NULL, '2', 0, NULL),
(181, 179, 103, 'Shirts', 'XL', '100', 1, '100', '20', NULL, NULL, NULL, '2', 0, NULL),
(182, 180, 90, 'Husky', '', '500', 1, '500', '20', 'Credit', '530', NULL, '10', 0, NULL),
(183, 181, 101, 'Furnitures', '', '233', 1, '233', '55', 'Credit', '292.66', NULL, '4.66', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fc_payments`
--

CREATE TABLE `fc_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_photos`
--

CREATE TABLE `fc_photos` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image_name` varchar(40) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_photos`
--

INSERT INTO `fc_photos` (`id`, `item_id`, `image_name`, `created_on`) VALUES
(1, 1, '1594102840_154.jpg', '2020-07-07 06:22:18'),
(2, 1, '1594102846_154.jpg', '2020-07-07 06:22:18'),
(3, 1, '1594102853_154.jpg', '2020-07-07 06:22:18'),
(4, 1, '1594102857_154.jpg', '2020-07-07 06:22:18'),
(5, 2, '1594103135_154.jpeg', '2020-07-07 06:26:46'),
(6, 2, '1594103141_154.jpeg', '2020-07-07 06:26:46'),
(7, 3, '1594103300_154.jpg', '2020-07-07 06:30:32'),
(8, 3, '1594103306_154.jpg', '2020-07-07 06:30:32'),
(9, 3, '1594103321_154.jpg', '2020-07-07 06:30:32'),
(10, 3, '1594103329_154.jpg', '2020-07-07 06:30:32'),
(11, 3, '1594103334_154.jpg', '2020-07-07 06:30:32'),
(12, 4, '1594103041_155.jpg', '2020-07-07 06:30:36'),
(13, 5, '1594103590_154.jpg', '2020-07-07 06:34:25'),
(14, 5, '1594103596_154.jpg', '2020-07-07 06:34:25'),
(15, 5, '1594103602_154.jpg', '2020-07-07 06:34:25'),
(16, 5, '1594103608_154.jpg', '2020-07-07 06:34:25'),
(17, 6, '1594103674_71.jpeg', '2020-07-07 06:37:49'),
(18, 7, '1594103773_154.jpg', '2020-07-07 06:37:55'),
(19, 7, '1594103778_154.jpg', '2020-07-07 06:37:55'),
(20, 7, '1594103790_154.jpg', '2020-07-07 06:37:55'),
(21, 7, '1594103794_154.jpg', '2020-07-07 06:37:55'),
(22, 8, '1594103906_71.jpeg', '2020-07-07 06:39:24'),
(23, 9, '1594103931_154.jpg', '2020-07-07 06:39:55'),
(24, 9, '1594103937_154.jpg', '2020-07-07 06:39:55'),
(25, 9, '1594103942_154.jpg', '2020-07-07 06:39:55'),
(26, 10, '1594104017_71.jpeg', '2020-07-07 06:41:00'),
(27, 11, '1594104092_154.jpg', '2020-07-07 06:42:38'),
(28, 11, '1594104097_154.jpg', '2020-07-07 06:42:38'),
(29, 11, '1594104103_154.jpg', '2020-07-07 06:42:38'),
(30, 12, '1594104033_155.jpg', '2020-07-07 06:43:13'),
(31, 12, '1594104051_155.jpg', '2020-07-07 06:43:13'),
(32, 12, '1594104078_155.jpg', '2020-07-07 06:43:13'),
(33, 13, '1594104224_71.jpeg', '2020-07-07 06:44:38'),
(34, 14, '1594104301_71.jpeg', '2020-07-07 06:45:43'),
(35, 15, '1594104359_154.jpeg', '2020-07-07 06:46:45'),
(36, 16, '1594104382_71.jpeg', '2020-07-07 06:47:35'),
(37, 17, '1594104529_154.jpeg', '2020-07-07 06:49:36'),
(38, 17, '1594104534_154.jpeg', '2020-07-07 06:49:36'),
(39, 18, '1594104476_155.jpg', '2020-07-07 06:49:55'),
(40, 19, '1594104559_71.jpeg', '2020-07-07 06:49:57'),
(41, 20, '1594104618_71.jpeg', '2020-07-07 06:50:46'),
(42, 21, '1594104661_71.jpeg', '2020-07-07 06:51:34'),
(43, 22, '1594104654_154.jpeg', '2020-07-07 06:51:40'),
(44, 23, '1594104826_154.jpeg', '2020-07-07 06:54:26'),
(45, 24, '1594104853_71.jpeg', '2020-07-07 06:54:43'),
(46, 25, '1594104685_155.jpg', '2020-07-07 06:54:54'),
(47, 25, '1594104692_155.jpg', '2020-07-07 06:54:54'),
(48, 26, '1594104907_71.jpeg', '2020-07-07 06:55:37'),
(49, 27, '1594104929_154.jpeg', '2020-07-07 06:56:22'),
(50, 28, '1594104955_71.jpeg', '2020-07-07 06:56:32'),
(51, 29, '1594105034_154.jpeg', '2020-07-07 06:57:55'),
(52, 30, '1594105117_154.jpeg', '2020-07-07 06:59:12'),
(53, 30, '1594105122_154.jpeg', '2020-07-07 06:59:12'),
(54, 31, '1594105132_71.jpeg', '2020-07-07 07:00:08'),
(55, 32, '1594105226_71.jpeg', '2020-07-07 07:01:13'),
(56, 33, '1594105292_71.jpeg', '2020-07-07 07:02:12'),
(57, 34, '1594105296_154.jpeg', '2020-07-07 07:02:23'),
(58, 34, '1594105309_154.jpeg', '2020-07-07 07:02:23'),
(59, 35, '1594105346_71.jpeg', '2020-07-07 07:03:07'),
(60, 36, '1594105175_155.jpg', '2020-07-07 07:03:42'),
(61, 37, '1594105409_71.jpeg', '2020-07-07 07:03:59'),
(62, 38, '1594105426_154.jpeg', '2020-07-07 07:04:30'),
(63, 39, '1594105472_71.jpeg', '2020-07-07 07:05:01'),
(64, 40, '1594105515_71.jpeg', '2020-07-07 07:05:51'),
(65, 41, '1594105539_154.jpeg', '2020-07-07 07:06:35'),
(66, 42, '1594105578_71.jpeg', '2020-07-07 07:06:48'),
(67, 43, '1594105680_154.jpeg', '2020-07-07 07:08:45'),
(68, 44, '1594105942_155.jpg', '2020-07-07 07:13:49'),
(69, 45, '1594106072_155.jpg', '2020-07-07 07:15:26'),
(70, 46, '1594106217_155.jpg', '2020-07-07 07:18:15'),
(71, 47, '1594106384_155.jpg', '2020-07-07 07:21:06'),
(72, 48, '1594106546_155.jpg', '2020-07-07 07:23:15'),
(73, 49, '1594106700_155.jpg', '2020-07-07 07:26:00'),
(74, 50, '1594106931_155.jpg', '2020-07-07 07:31:16'),
(75, 50, '1594106947_155.jpg', '2020-07-07 07:31:16'),
(76, 51, '1594107158_155.jpg', '2020-07-07 07:34:59'),
(77, 51, '1594107162_155.jpg', '2020-07-07 07:34:59'),
(78, 52, '1594107416_155.jpg', '2020-07-07 07:38:38'),
(79, 52, '1594107420_155.jpg', '2020-07-07 07:38:38'),
(80, 53, '1594107597_155.jpg', '2020-07-07 07:41:23'),
(81, 53, '1594107602_155.jpg', '2020-07-07 07:41:23'),
(82, 54, '1594107793_155.jpg', '2020-07-07 07:44:39'),
(83, 54, '1594107797_155.jpg', '2020-07-07 07:44:39'),
(84, 55, '1594107992_155.jpg', '2020-07-07 07:48:17'),
(85, 55, '1594107997_155.jpg', '2020-07-07 07:48:17'),
(86, 56, '1594108256_155.jpg', '2020-07-07 07:52:03'),
(87, 56, '1594108261_155.jpg', '2020-07-07 07:52:03'),
(88, 57, '1594108401_155.jpg', '2020-07-07 07:55:28'),
(89, 57, '1594108406_155.jpg', '2020-07-07 07:55:28'),
(90, 58, '1607099801_71.jpeg', '2020-12-04 16:37:40'),
(91, 59, '1607945007_71.jpg', '2020-12-14 11:24:37'),
(92, 60, '1608278673_71.jpeg', '2020-12-18 08:04:38'),
(93, 61, '1608534018_172.jpg', '2020-12-21 07:13:56'),
(94, 62, '1608546575_175.jpg', '2020-12-21 10:30:50'),
(95, 63, '1608551298_175.jpg', '2020-12-21 11:49:04'),
(96, 64, '1608611576_177.jpg', '2020-12-22 04:34:28'),
(97, 65, '1608621538_181.jpg', '2020-12-22 07:21:36'),
(98, 66, '1608623201_177.jpeg', '2020-12-22 07:47:36'),
(99, 67, '1608732511_181.jpg', '2020-12-23 14:10:12'),
(100, 68, '1608822170_189.jpg', '2020-12-24 15:04:58'),
(101, 69, '1608824242_189.jpeg', '2020-12-24 15:38:14'),
(102, 70, '1608988051_181.jpg', '2020-12-26 13:08:29'),
(103, 71, '1608988154_181.jpg', '2020-12-26 13:10:33'),
(104, 72, '1608989168_200.jpg', '2020-12-26 13:26:35'),
(105, 73, '1608989797_200.jpg', '2020-12-26 13:39:26'),
(106, 74, '1608991199_181.jpg', '2020-12-26 14:00:38'),
(107, 75, '1609392501_203.jpg', '2020-12-31 05:29:52'),
(108, 76, '1609392924_203.jpg', '2020-12-31 05:36:31'),
(109, 77, '1609399398_203.jpg', '2020-12-31 07:25:52'),
(110, 78, '1609401147_203.jpg', '2020-12-31 07:52:58'),
(111, 79, '1609401348_203.jpg', '2020-12-31 07:58:02'),
(112, 80, '1609401517_203.jpg', '2020-12-31 07:59:31'),
(113, 81, '1609405546_203.jpg', '2020-12-31 09:06:18'),
(114, 82, '1609746810_209.jpg', '2021-01-04 07:54:22'),
(115, 83, '1609747187_209.jpg', '2021-01-04 08:00:26'),
(116, 84, '1609747758_209.jpg', '2021-01-04 08:09:55'),
(117, 85, '1609763623_209.jpg', '2021-01-04 12:34:18'),
(118, 86, '1609765613_209.jpg', '2021-01-04 13:07:29'),
(119, 87, '1609766375_209.jpg', '2021-01-04 13:20:06'),
(120, 88, '1609767223_209.jpg', '2021-01-04 13:34:13'),
(121, 89, '1609826067_209.jpg', '2021-01-05 05:55:02'),
(122, 90, '1614356728_71.jpg', '2021-02-26 16:26:35'),
(123, 91, '1617262792_71.jpg', '2021-04-01 07:40:53'),
(124, 92, '1617263060_71.jpg', '2021-04-01 07:45:20'),
(125, 93, '1617263228_71.jpg', '2021-04-01 07:48:01'),
(126, 94, '1617356842_215.jpeg', '2021-04-02 09:48:22'),
(127, 95, '1617624755_71.jpg', '2021-04-05 12:13:30'),
(128, 96, '1617624879_71.jpg', '2021-04-05 12:15:51'),
(129, 97, '1617627300_71.jpg', '2021-04-05 12:55:51'),
(130, 98, '1617772372_71.jpeg', '2021-04-07 05:13:25'),
(132, 100, '1617783375_71.jpg', '2021-04-07 08:16:41'),
(133, 101, '1617783687_71.jpg', '2021-04-07 08:21:56'),
(134, 102, '1618223757_71.jpg', '2021-04-12 10:36:56'),
(135, 103, '1618558975_71.png', '2021-04-16 07:43:58'),
(136, 104, '1619007031_71.jpg', '2021-04-21 12:10:37'),
(137, 105, '1619006340_71.jpeg', '2021-04-21 12:00:41'),
(138, 106, '1619006460_71.jpeg', '2021-04-21 12:01:57'),
(139, 107, '1619006754_71.jpg', '2021-04-21 12:12:51'),
(140, 103, '1619680367_71.jpeg', '2021-04-29 07:13:04'),
(141, 103, '1619680379_71.jpeg', '2021-04-29 07:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `fc_prices`
--

CREATE TABLE `fc_prices` (
  `id` int(11) NOT NULL,
  `from` varchar(11) NOT NULL,
  `to` varchar(11) NOT NULL,
  `cdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_prices`
--

INSERT INTO `fc_prices` (`id`, `from`, `to`, `cdate`) VALUES
(1, '1', '100', '1591364753'),
(2, '1001', '1010', '1591364710'),
(3, '101', '1000', '1591364766');

-- --------------------------------------------------------

--
-- Table structure for table `fc_productfaq`
--

CREATE TABLE `fc_productfaq` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` enum('question','answer') NOT NULL,
  `parent_id` int(11) NOT NULL,
  `answer_count` int(11) NOT NULL,
  `seller_answer` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_productfaq`
--

INSERT INTO `fc_productfaq` (`id`, `item_id`, `seller_id`, `user_id`, `content`, `type`, `parent_id`, `answer_count`, `seller_answer`, `status`, `created_on`, `modified_on`) VALUES
(1, 6, 71, 70, 'It\'s cotton or not ?', 'question', 0, 0, '0', '1', '2020-07-07 07:45:48', '0000-00-00 00:00:00'),
(2, 10, 71, 70, 'When washing the shirt colour is fine or not?', 'question', 0, 0, '0', '1', '2020-07-07 07:46:01', '0000-00-00 00:00:00'),
(3, 6, 71, 70, 'It can fit for 14 Year old boy?', 'question', 0, 0, '0', '1', '2020-07-07 07:46:24', '0000-00-00 00:00:00'),
(4, 10, 71, 70, 'It can fit for 14 Year old boy?', 'question', 0, 0, '0', '1', '2020-07-07 07:46:32', '0000-00-00 00:00:00'),
(5, 6, 71, 70, 'my age is 28 which size will be fit for me?', 'question', 0, 0, '0', '1', '2020-07-07 07:47:03', '0000-00-00 00:00:00'),
(6, 10, 71, 70, 'my age is 28 which size will be fit for me?', 'question', 0, 0, '0', '1', '2020-07-07 07:47:08', '0000-00-00 00:00:00'),
(7, 8, 71, 70, 'is this cotton fabric or other ?', 'question', 0, 0, '0', '1', '2020-07-07 07:47:41', '0000-00-00 00:00:00'),
(8, 8, 71, 70, 'My hight is 5\'5 what is the fit size?', 'question', 0, 0, '0', '1', '2020-07-07 07:47:56', '0000-00-00 00:00:00'),
(9, 8, 71, 70, 'im 5.7 which size is comfort for me?', 'question', 0, 0, '0', '1', '2020-07-07 07:48:12', '0000-00-00 00:00:00'),
(10, 20, 71, 70, 'is it suitable for cycling ?', 'question', 0, 0, '0', '1', '2020-07-07 07:54:42', '0000-00-00 00:00:00'),
(11, 48, 155, 89, 'how many editions???', 'question', 0, 3, '1', '0', '2020-07-07 10:22:02', '0000-00-00 00:00:00'),
(12, 19, 71, 70, 'Is it comfortable for running?', 'question', 0, 0, '0', '1', '2020-07-07 07:55:05', '0000-00-00 00:00:00'),
(13, 20, 71, 70, 'it can wear in summer season?', 'question', 0, 0, '0', '1', '2020-07-07 07:55:22', '0000-00-00 00:00:00'),
(14, 20, 71, 70, 'is this zipper pocket??', 'question', 0, 0, '0', '1', '2020-07-07 07:55:38', '0000-00-00 00:00:00'),
(15, 19, 71, 70, 'cloth material is streachable or not?', 'question', 0, 0, '0', '1', '2020-07-07 07:56:27', '0000-00-00 00:00:00'),
(16, 20, 71, 70, 'How many color are available?', 'question', 0, 0, '0', '1', '2020-07-07 07:57:11', '0000-00-00 00:00:00'),
(17, 19, 71, 70, 'How many color are available?', 'question', 0, 0, '0', '1', '2020-07-07 07:57:16', '0000-00-00 00:00:00'),
(18, 42, 71, 70, 'it support headphone?', 'question', 0, 0, '0', '1', '2020-07-07 08:02:24', '0000-00-00 00:00:00'),
(19, 42, 71, 70, 'fitting in my room?', 'question', 0, 0, '0', '1', '2020-07-07 08:02:34', '0000-00-00 00:00:00'),
(20, 42, 71, 70, 'is it support bluetooth?', 'question', 0, 0, '0', '1', '2020-07-07 08:02:44', '0000-00-00 00:00:00'),
(21, 40, 71, 70, 'Do we need to use Stebilizer for this tv?', 'question', 0, 0, '0', '1', '2020-07-07 08:03:18', '0000-00-00 00:00:00'),
(22, 40, 71, 70, 'how many energy saving star??', 'question', 0, 0, '0', '1', '2020-07-07 08:03:25', '0000-00-00 00:00:00'),
(23, 40, 71, 70, 'can i use this product as desktop monitor?', 'question', 0, 0, '0', '1', '2020-07-07 08:03:35', '0000-00-00 00:00:00'),
(24, 39, 71, 70, 'Can I attached fire stick And crome cast?', 'question', 0, 0, '0', '1', '2020-07-07 08:03:53', '0000-00-00 00:00:00'),
(25, 39, 71, 70, 'Is this have hdmi and vga port?', 'question', 0, 0, '0', '1', '2020-07-07 08:04:02', '0000-00-00 00:00:00'),
(26, 39, 71, 70, 'if i use it as a monitor then what is it\'s response time?', 'question', 0, 0, '0', '1', '2020-07-07 08:04:10', '0000-00-00 00:00:00'),
(27, 37, 71, 70, 'it is having home theater pin.?', 'question', 0, 0, '0', '1', '2020-07-07 08:04:44', '0000-00-00 00:00:00'),
(28, 37, 71, 70, 'Q:the demo people will be doing wall mount free or with additional charges?', 'question', 0, 0, '0', '1', '2020-07-07 08:04:54', '0000-00-00 00:00:00'),
(29, 37, 71, 70, 'is it bended down in its stand?', 'question', 0, 0, '0', '1', '2020-07-07 08:05:06', '0000-00-00 00:00:00'),
(30, 35, 71, 70, 'In tv playing Pubg game?', 'question', 0, 0, '0', '1', '2020-07-07 08:05:46', '0000-00-00 00:00:00'),
(31, 35, 71, 70, 'Can we attach sub woofer or home theatre?', 'question', 0, 0, '0', '1', '2020-07-07 08:06:15', '0000-00-00 00:00:00'),
(32, 35, 71, 70, 'high voltage protection yes or no in this tv?', 'question', 0, 0, '0', '1', '2020-07-07 08:06:32', '0000-00-00 00:00:00'),
(33, 33, 71, 70, 'Is it support 720p video?', 'question', 0, 0, '0', '1', '2020-07-07 08:07:15', '0000-00-00 00:00:00'),
(34, 33, 71, 70, 'It support SD card?', 'question', 0, 0, '0', '1', '2020-07-07 08:07:27', '0000-00-00 00:00:00'),
(35, 33, 71, 70, 'How am I connect headphone?', 'question', 0, 0, '0', '1', '2020-07-07 08:07:58', '0000-00-00 00:00:00'),
(36, 33, 71, 70, 'Does It Support Multiscreen from Phone?', 'question', 0, 0, '0', '1', '2020-07-07 08:08:16', '0000-00-00 00:00:00'),
(37, 32, 71, 70, 'Does It Support Multiscreen from Phone?', 'question', 0, 0, '0', '1', '2020-07-07 08:08:32', '0000-00-00 00:00:00'),
(38, 32, 71, 70, 'Does it have 15 pins in its VGA to connect Computer?', 'question', 0, 0, '0', '1', '2020-07-07 08:08:48', '0000-00-00 00:00:00'),
(39, 32, 71, 70, 'can i watch youtube or connect movies from my phone?', 'question', 0, 0, '0', '1', '2020-07-07 08:09:00', '0000-00-00 00:00:00'),
(40, 31, 71, 70, 'can we play ps4 on it ?', 'question', 0, 0, '0', '1', '2020-07-07 08:09:20', '0000-00-00 00:00:00'),
(41, 31, 71, 70, 'Ram & Rom memory please?', 'question', 0, 0, '0', '1', '2020-07-07 08:09:39', '0000-00-00 00:00:00'),
(42, 31, 71, 70, 'can i connect 128gb pendrive for watching movies?', 'question', 0, 0, '0', '1', '2020-07-07 08:09:55', '0000-00-00 00:00:00'),
(43, 48, 155, 157, 'there is only one kindle  edition.', 'answer', 11, 0, '0', '0', '2020-07-07 09:08:47', '0000-00-00 00:00:00'),
(44, 6, 71, 89, 'yes its fit for you', 'answer', 5, 0, '0', '0', '2020-07-07 09:26:27', '0000-00-00 00:00:00'),
(45, 48, 155, 155, 'it has only kindle edition.', 'answer', 11, 0, '0', '0', '2020-07-07 10:22:02', '0000-00-00 00:00:00'),
(46, 46, 155, 157, 'who is the author of this book?', 'question', 0, 2, '1', '0', '2020-07-07 10:27:46', '0000-00-00 00:00:00'),
(47, 46, 155, 155, 'Author of book is Mr.Dale Breckenridge Carnegie', 'answer', 46, 0, '0', '0', '2020-07-07 10:27:46', '0000-00-00 00:00:00'),
(48, 46, 155, 157, 'when was this book released?', 'question', 0, 2, '1', '0', '2020-07-07 10:29:33', '0000-00-00 00:00:00'),
(49, 46, 155, 155, 'this book was published on May 2, 2020.', 'answer', 48, 0, '0', '0', '2020-07-07 10:29:33', '0000-00-00 00:00:00'),
(50, 47, 155, 157, 'any other edition of this book?', 'question', 0, 2, '1', '0', '2020-07-07 10:39:25', '0000-00-00 00:00:00'),
(51, 47, 155, 155, 'No.', 'answer', 50, 0, '0', '0', '2020-07-07 10:39:25', '0000-00-00 00:00:00'),
(52, 36, 155, 157, 'have any leather gloves?', 'question', 0, 2, '1', '0', '2020-07-07 10:46:27', '0000-00-00 00:00:00'),
(53, 36, 155, 155, 'No. it is a rexin', 'answer', 52, 0, '0', '0', '2020-07-07 10:46:27', '0000-00-00 00:00:00'),
(54, 12, 155, 157, 'Is this china made?', 'question', 0, 2, '1', '0', '2020-07-07 10:50:33', '0000-00-00 00:00:00'),
(55, 12, 155, 155, 'No. Made in India. Manfactured in New Delhi.', 'answer', 54, 0, '0', '0', '2020-07-07 10:50:33', '0000-00-00 00:00:00'),
(56, 25, 155, 157, 'its steel or rubber?', 'question', 0, 2, '1', '0', '2020-07-07 10:57:27', '0000-00-00 00:00:00'),
(57, 25, 155, 157, 'Are these rubber coted with iron or coted with sand?', 'question', 0, 2, '1', '0', '2020-07-07 10:57:59', '0000-00-00 00:00:00'),
(58, 25, 155, 157, 'Is it 10kg package?', 'question', 0, 2, '1', '0', '2020-07-07 10:57:44', '0000-00-00 00:00:00'),
(59, 25, 155, 155, 'Rubber weights, steel rod', 'answer', 56, 0, '0', '0', '2020-07-07 10:57:27', '0000-00-00 00:00:00'),
(60, 25, 155, 155, 'Its 1 pair 5 kg and 1 pair 5kg total 2 pair total 10Kg 2 Dummbels', 'answer', 58, 0, '0', '0', '2020-07-07 10:57:44', '0000-00-00 00:00:00'),
(61, 25, 155, 155, 'Rubber coated', 'answer', 57, 0, '0', '0', '2020-07-07 10:57:59', '0000-00-00 00:00:00'),
(62, 55, 155, 157, 'What Android version does it have?', 'question', 0, 2, '1', '0', '2020-07-07 11:48:37', '0000-00-00 00:00:00'),
(63, 55, 155, 155, 'Android 8.1', 'answer', 62, 0, '0', '0', '2020-07-07 11:48:37', '0000-00-00 00:00:00'),
(64, 55, 155, 157, 'Does it support Jio sim?', 'question', 0, 2, '1', '0', '2020-07-07 11:49:28', '0000-00-00 00:00:00'),
(65, 55, 155, 155, 'Yes it does', 'answer', 64, 0, '0', '0', '2020-07-07 11:49:28', '0000-00-00 00:00:00'),
(66, 55, 155, 157, 'what is battery carrying capacity 4000mah or 4200mah?', 'question', 0, 2, '1', '0', '2020-07-07 11:50:27', '0000-00-00 00:00:00'),
(67, 55, 155, 155, '3000mah', 'answer', 66, 0, '0', '0', '2020-07-07 11:50:27', '0000-00-00 00:00:00'),
(68, 55, 155, 157, 'Is this battery remove?', 'question', 0, 2, '1', '0', '2020-07-07 11:51:24', '0000-00-00 00:00:00'),
(69, 55, 155, 155, 'No. ', 'answer', 68, 0, '0', '0', '2020-07-07 11:51:24', '0000-00-00 00:00:00'),
(70, 44, 155, 89, 'what is the best \nthing in the product pls tel me ', 'question', 0, 0, '0', '0', '2020-07-08 13:23:02', '0000-00-00 00:00:00'),
(71, 44, 155, 89, 'pls \n#advantage\n#usage\n#quality', 'question', 0, 0, '0', '0', '2020-07-08 13:24:37', '0000-00-00 00:00:00'),
(72, 10, 71, 70, 'dasd', 'question', 0, 0, '0', '1', '2020-12-04 15:23:19', '0000-00-00 00:00:00'),
(73, 58, 71, 161, 'xfghxfghxf', 'question', 0, 2, '1', '1', '2020-12-04 16:40:11', '0000-00-00 00:00:00'),
(74, 58, 71, 71, 'cfgnxfgjnxghyjcgthm', 'answer', 73, 0, '0', '0', '2020-12-04 16:40:11', '0000-00-00 00:00:00'),
(75, 28, 71, 70, 'SDFSdfSDF', 'question', 0, 0, '0', '1', '2020-12-05 06:23:25', '0000-00-00 00:00:00'),
(76, 28, 71, 70, 'SDFSdfSDF', 'question', 0, 0, '0', '1', '2020-12-05 06:23:25', '0000-00-00 00:00:00'),
(77, 28, 71, 70, 'ZDFSEGFEGR', 'question', 0, 0, '0', '1', '2020-12-05 06:23:37', '0000-00-00 00:00:00'),
(78, 88, 209, 211, 'test', 'question', 0, 2, '1', '1', '2021-01-05 08:06:20', '0000-00-00 00:00:00'),
(79, 88, 209, 209, 'test', 'answer', 78, 0, '0', '0', '2021-01-05 08:06:20', '0000-00-00 00:00:00'),
(80, 3, 154, 70, 'what about the year of release?', 'question', 0, 0, '0', '1', '2021-01-24 18:22:51', '0000-00-00 00:00:00'),
(81, 6, 71, 70, 'sdsdsdasdsad', 'question', 0, 0, '0', '1', '2021-04-07 08:18:20', '0000-00-00 00:00:00'),
(82, 90, 71, 70, 'Husky?', 'question', 0, 0, '0', '1', '2021-04-09 10:16:27', '0000-00-00 00:00:00'),
(83, 22, 154, 70, 'klsjldf', 'question', 0, 0, '0', '1', '2021-04-09 12:59:23', '0000-00-00 00:00:00'),
(84, 22, 154, 70, 'Hello', 'question', 0, 0, '0', '1', '2021-04-09 12:59:40', '0000-00-00 00:00:00'),
(85, 6, 71, 70, 'Working?', 'question', 0, 0, '0', '1', '2021-04-10 06:25:02', '0000-00-00 00:00:00'),
(86, 85, 209, 217, 'dsfsDADSFSDF', 'question', 0, 0, '0', '1', '2021-04-12 13:21:41', '0000-00-00 00:00:00'),
(87, 61, 172, 217, '7ts7ts7t', 'question', 0, 0, '0', '1', '2021-04-13 08:15:19', '0000-00-00 00:00:00'),
(88, 103, 71, 70, 'What about the Quality of the shirt. ', 'question', 0, 0, '0', '1', '2021-04-16 08:11:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fc_recipients`
--

CREATE TABLE `fc_recipients` (
  `id` int(11) NOT NULL,
  `recipient_name` varchar(60) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_reviews`
--

CREATE TABLE `fc_reviews` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `review_title` text NOT NULL,
  `reviews` text NOT NULL,
  `ratings` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_reviews`
--

INSERT INTO `fc_reviews` (`id`, `userid`, `sellerid`, `orderid`, `review_title`, `reviews`, `ratings`, `date`) VALUES
(1, 73, 71, 2, 'Janasya-Women-Kurtas', 'Review for own product and check the value of product ', 3, '2020-04-20 05:44:28'),
(2, 91, 80, 19, 'Hey I can get you a copy of the copy copies or email email or email copies or copy email email copies email email or print copies or copy email email or print email copies or copy copies email email or print copy copies email email or print email copies or copy copies ', 'Hi I can get it to work on my laptop tomorrow I can print email copies or copy email copies or copy copies email email or print email copies or copy copies email email or print email copies or copy copies email email or print email copies or copy copies email email or print email copies or copy copies email email or print email copies tyyytttttty hiii is a time of the next year to print copies or email copies email email copies ', 5, '2020-05-16 10:24:03'),
(3, 91, 80, 48, '   ', '   ', 0, '2020-06-04 12:47:22'),
(4, 73, 71, 54, 'eealsuskskksn xejjsjs', 'shsjjsisisiisisisisisisiisisis', 4, '2020-06-09 08:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `fc_searchitems`
--

CREATE TABLE `fc_searchitems` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sourceid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` enum('item','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fc_searchitems`
--

INSERT INTO `fc_searchitems` (`id`, `category_id`, `sourceid`, `userid`, `type`, `created_at`) VALUES
(1, 6, 1, 81, 'item', '2020-07-07 07:22:06'),
(2, 6, 7, 81, 'item', '2020-07-07 07:22:20'),
(3, 6, 9, 81, 'item', '2020-07-07 07:22:23'),
(4, 7, 15, 81, 'item', '2020-07-07 07:22:39'),
(5, 7, 17, 81, 'item', '2020-07-07 07:22:44'),
(6, 3, 24, 81, 'item', '2020-07-07 07:26:54'),
(7, 4, 33, 81, 'item', '2020-07-07 07:27:48'),
(8, 5, 43, 81, 'item', '2020-07-07 07:28:28'),
(9, 8, 18, 81, 'item', '2020-07-07 07:29:23'),
(17, 8, 4, 89, 'item', '2020-07-07 07:46:25'),
(21, 9, 46, 89, 'item', '2020-07-07 07:47:00'),
(24, 6, 1, 89, 'item', '2020-07-07 07:47:10'),
(28, 6, 11, 89, 'item', '2020-07-07 07:47:54'),
(32, 5, 34, 89, 'item', '2020-07-07 07:49:08'),
(33, 4, 33, 89, 'item', '2020-07-07 07:49:43'),
(38, 9, 48, 89, 'item', '2020-07-07 07:54:56'),
(45, 9, 47, 89, 'item', '2020-07-07 07:56:50'),
(46, 8, 25, 89, 'item', '2020-07-07 07:57:00'),
(48, 8, 36, 89, 'item', '2020-07-07 07:57:12'),
(51, 8, 18, 89, 'item', '2020-07-07 07:58:11'),
(52, 3, 28, 89, 'item', '2020-07-07 07:58:28'),
(65, 4, 39, 70, 'item', '2020-07-07 08:04:10'),
(74, 4, 35, 70, 'item', '2020-07-07 08:06:32'),
(83, 4, 32, 70, 'item', '2020-07-07 08:09:00'),
(88, 6, 7, 89, 'item', '2020-07-07 08:47:16'),
(95, 9, 48, 157, 'item', '2020-07-07 09:12:09'),
(98, 5, 30, 70, 'item', '2020-07-07 10:00:08'),
(106, 9, 46, 157, 'item', '2020-07-07 10:29:39'),
(111, 9, 44, 157, 'item', '2020-07-07 10:36:49'),
(119, 8, 36, 157, 'item', '2020-07-07 10:46:31'),
(123, 8, 12, 157, 'item', '2020-07-07 10:50:43'),
(130, 8, 25, 157, 'item', '2020-07-07 10:58:11'),
(167, 10, 56, 70, 'item', '2020-07-07 12:17:35'),
(169, 10, 53, 70, 'item', '2020-07-07 12:17:46'),
(182, 10, 50, 157, 'item', '2020-07-07 12:23:16'),
(186, 1, 10, 89, 'item', '2020-07-07 12:23:20'),
(191, 10, 56, 157, 'item', '2020-07-07 12:25:39'),
(195, 10, 54, 157, 'item', '2020-07-07 12:25:49'),
(209, 8, 18, 157, 'item', '2020-07-07 12:29:16'),
(212, 10, 53, 157, 'item', '2020-07-07 12:29:20'),
(219, 1, 8, 89, 'item', '2020-07-07 12:50:34'),
(224, 1, 21, 89, 'item', '2020-07-07 12:52:32'),
(226, 10, 50, 89, 'item', '2020-07-07 12:59:41'),
(228, 9, 47, 157, 'item', '2020-07-07 13:01:26'),
(232, 5, 30, 89, 'item', '2020-07-07 13:14:33'),
(233, 5, 29, 89, 'item', '2020-07-07 13:14:42'),
(234, 1, 6, 89, 'item', '2020-07-07 13:15:05'),
(235, 8, 4, 157, 'item', '2020-07-07 13:29:31'),
(236, 10, 51, 157, 'item', '2020-07-07 13:29:56'),
(237, 10, 57, 157, 'item', '2020-07-07 13:29:58'),
(245, 7, 23, 157, 'item', '2020-07-07 13:41:03'),
(249, 1, 16, 157, 'item', '2020-07-07 13:41:22'),
(250, 9, 49, 157, 'item', '2020-07-07 13:42:37'),
(252, 10, 55, 157, 'item', '2020-07-07 13:46:12'),
(253, 1, 8, 157, 'item', '2020-07-07 13:46:24'),
(254, 3, 24, 157, 'item', '2020-07-07 13:46:30'),
(255, 1, 6, 157, 'item', '2020-07-07 13:46:34'),
(256, 1, 20, 157, 'item', '2020-07-07 13:48:45'),
(257, 1, 21, 157, 'item', '2020-07-07 13:48:55'),
(258, 10, 55, 89, 'item', '2020-07-07 14:04:00'),
(259, 1, 16, 89, 'item', '2020-07-07 14:20:09'),
(260, 3, 24, 89, 'item', '2020-07-07 14:24:40'),
(261, 1, 20, 89, 'item', '2020-07-07 14:24:47'),
(262, 9, 48, 70, 'item', '2020-07-07 15:14:00'),
(263, 1, 19, 89, 'item', '2020-07-08 13:16:36'),
(265, 6, 3, 89, 'item', '2020-07-08 13:21:13'),
(273, 9, 44, 89, 'item', '2020-07-08 13:30:28'),
(278, 10, 57, 158, 'item', '2020-07-09 01:29:15'),
(280, 3, 28, 158, 'item', '2020-07-09 01:29:43'),
(281, 1, 6, 158, 'item', '2020-07-09 01:30:00'),
(282, 3, 24, 158, 'item', '2020-07-09 01:30:14'),
(283, 10, 54, 158, 'item', '2020-07-09 01:30:32'),
(305, 1, 58, 161, 'item', '2020-12-04 16:48:14'),
(361, 1, 60, 166, 'item', '2020-12-15 11:06:51'),
(362, 1, 60, 168, 'item', '2020-12-15 12:38:32'),
(383, 1, 60, 169, 'item', '2020-12-16 05:24:03'),
(384, 1, 8, 169, 'item', '2020-12-16 05:24:06'),
(399, 6, 5, 162, 'item', '2020-12-16 09:40:46'),
(402, 10, 51, 171, 'item', '2020-12-16 09:54:32'),
(429, 5, 41, 162, 'item', '2020-12-18 09:13:20'),
(468, 1, 6, 162, 'item', '2020-12-18 12:54:58'),
(469, 1, 21, 162, 'item', '2020-12-18 13:12:17'),
(489, 1, 20, 162, 'item', '2020-12-21 05:28:45'),
(496, 1, 8, 162, 'item', '2020-12-21 05:55:00'),
(500, 1, 60, 162, 'item', '2020-12-21 06:00:53'),
(503, 1, 8, 171, 'item', '2020-12-21 06:06:35'),
(508, 1, 59, 171, 'item', '2020-12-21 06:10:26'),
(513, 3, 61, 174, 'item', '2020-12-21 07:57:17'),
(514, 3, 61, 173, 'item', '2020-12-21 08:07:09'),
(515, 1, 60, 173, 'item', '2020-12-21 08:07:28'),
(524, 1, 60, 176, 'item', '2020-12-21 11:28:15'),
(530, 3, 62, 176, 'item', '2020-12-21 11:39:10'),
(535, 1, 8, 176, 'item', '2020-12-21 11:45:48'),
(547, 20, 64, 179, 'item', '2020-12-22 06:41:56'),
(553, 1, 65, 180, 'item', '2020-12-22 07:40:24'),
(556, 1, 65, 183, 'item', '2020-12-22 08:01:13'),
(563, 1, 59, 162, 'item', '2020-12-22 11:05:02'),
(572, 1, 65, 178, 'item', '2020-12-23 05:44:53'),
(578, 3, 61, 178, 'item', '2020-12-23 06:19:33'),
(581, 1, 10, 171, 'item', '2020-12-23 07:05:25'),
(586, 20, 64, 180, 'item', '2020-12-23 07:54:16'),
(587, 3, 61, 162, 'item', '2020-12-23 08:00:46'),
(589, 20, 64, 184, 'item', '2020-12-23 08:02:22'),
(590, 3, 61, 185, 'item', '2020-12-23 08:03:21'),
(594, 10, 66, 184, 'item', '2020-12-23 08:10:29'),
(596, 20, 64, 178, 'item', '2020-12-23 08:13:02'),
(597, 10, 66, 187, 'item', '2020-12-23 08:13:36'),
(599, 20, 64, 186, 'item', '2020-12-23 08:15:00'),
(600, 10, 66, 188, 'item', '2020-12-23 08:15:43'),
(601, 10, 66, 178, 'item', '2020-12-23 08:19:28'),
(602, 10, 66, 180, 'item', '2020-12-23 08:23:10'),
(604, 20, 64, 162, 'item', '2020-12-23 09:33:23'),
(607, 10, 66, 162, 'item', '2020-12-23 10:20:12'),
(610, 10, 66, 186, 'item', '2020-12-23 10:40:21'),
(611, 3, 28, 171, 'item', '2020-12-23 10:49:22'),
(613, 20, 64, 171, 'item', '2020-12-23 10:57:15'),
(615, 20, 64, 185, 'item', '2020-12-23 11:03:29'),
(619, 1, 60, 171, 'item', '2020-12-23 11:57:48'),
(620, 3, 61, 182, 'item', '2020-12-23 12:09:25'),
(624, 7, 23, 192, 'item', '2020-12-24 15:12:09'),
(627, 1, 68, 192, 'item', '2020-12-24 15:25:22'),
(629, 1, 68, 193, 'item', '2020-12-24 15:26:50'),
(641, 3, 69, 186, 'item', '2020-12-26 05:44:31'),
(645, 3, 67, 185, 'item', '2020-12-26 07:11:07'),
(646, 3, 67, 186, 'item', '2020-12-26 07:11:50'),
(650, 1, 68, 186, 'item', '2020-12-26 07:22:43'),
(651, 10, 66, 185, 'item', '2020-12-26 07:34:42'),
(652, 10, 66, 194, 'item', '2020-12-26 08:59:17'),
(654, 1, 19, 185, 'item', '2020-12-26 09:13:09'),
(657, 1, 60, 195, 'item', '2020-12-26 10:40:05'),
(665, 3, 67, 196, 'item', '2020-12-26 11:16:55'),
(686, 3, 69, 192, 'item', '2020-12-26 12:32:45'),
(688, 3, 67, 182, 'item', '2020-12-26 12:33:58'),
(690, 3, 61, 183, 'item', '2020-12-26 12:35:27'),
(692, 3, 67, 183, 'item', '2020-12-26 12:36:56'),
(693, 1, 20, 192, 'item', '2020-12-26 12:40:13'),
(694, 3, 69, 197, 'item', '2020-12-26 12:43:52'),
(699, 3, 67, 198, 'item', '2020-12-26 13:01:00'),
(701, 3, 67, 199, 'item', '2020-12-26 13:04:21'),
(704, 1, 68, 185, 'item', '2020-12-26 13:14:23'),
(705, 1, 65, 199, 'item', '2020-12-26 13:15:40'),
(709, 3, 72, 182, 'item', '2020-12-26 13:27:21'),
(710, 3, 69, 193, 'item', '2020-12-26 13:29:01'),
(711, 20, 73, 199, 'item', '2020-12-26 13:42:00'),
(716, 20, 73, 182, 'item', '2020-12-26 14:01:15'),
(717, 3, 74, 199, 'item', '2020-12-26 14:02:58'),
(718, 3, 74, 201, 'item', '2020-12-26 14:06:10'),
(722, 3, 74, 182, 'item', '2020-12-26 14:08:27'),
(723, 20, 73, 162, 'item', '2020-12-28 06:29:10'),
(728, 3, 61, 202, 'item', '2020-12-28 07:52:30'),
(729, 1, 10, 162, 'item', '2020-12-28 09:11:48'),
(733, 10, 51, 162, 'item', '2020-12-28 09:15:10'),
(734, 10, 76, 205, 'item', '2020-12-31 05:45:11'),
(736, 10, 76, 204, 'item', '2020-12-31 06:38:24'),
(737, 3, 77, 205, 'item', '2020-12-31 07:32:21'),
(738, 3, 77, 206, 'item', '2020-12-31 07:34:09'),
(741, 3, 79, 207, 'item', '2020-12-31 08:07:53'),
(746, 3, 77, 204, 'item', '2020-12-31 08:38:42'),
(747, 3, 79, 204, 'item', '2020-12-31 08:38:50'),
(752, 1, 78, 204, 'item', '2020-12-31 08:49:40'),
(753, 20, 75, 207, 'item', '2020-12-31 08:52:31'),
(754, 7, 80, 207, 'item', '2020-12-31 08:55:53'),
(755, 1, 78, 207, 'item', '2020-12-31 08:57:49'),
(756, 3, 72, 207, 'item', '2020-12-31 08:58:06'),
(757, 3, 63, 207, 'item', '2020-12-31 08:58:23'),
(758, 7, 80, 208, 'item', '2020-12-31 09:03:22'),
(759, 3, 74, 208, 'item', '2020-12-31 09:04:16'),
(760, 3, 79, 208, 'item', '2020-12-31 09:04:23'),
(761, 3, 77, 208, 'item', '2020-12-31 09:04:31'),
(762, 20, 73, 208, 'item', '2020-12-31 09:04:46'),
(763, 10, 76, 208, 'item', '2020-12-31 09:05:01'),
(765, 1, 81, 208, 'item', '2020-12-31 09:08:38'),
(767, 1, 81, 204, 'item', '2020-12-31 09:10:34'),
(773, 10, 76, 202, 'item', '2021-01-01 17:24:42'),
(774, 1, 81, 182, 'item', '2021-01-04 08:03:51'),
(778, 1, 6, 182, 'item', '2021-01-04 12:07:15'),
(781, 20, 82, 210, 'item', '2021-01-04 12:08:37'),
(786, 1, 84, 182, 'item', '2021-01-04 12:24:11'),
(790, 10, 83, 210, 'item', '2021-01-04 12:27:41'),
(791, 10, 83, 182, 'item', '2021-01-04 12:29:41'),
(792, 20, 82, 182, 'item', '2021-01-04 12:29:50'),
(800, 3, 77, 210, 'item', '2021-01-04 12:57:51'),
(801, 1, 81, 210, 'item', '2021-01-04 13:01:44'),
(802, 3, 62, 210, 'item', '2021-01-04 13:02:01'),
(804, 3, 85, 182, 'item', '2021-01-04 13:07:46'),
(805, 3, 61, 210, 'item', '2021-01-04 13:07:49'),
(816, 3, 85, 210, 'item', '2021-01-04 13:27:20'),
(817, 3, 87, 210, 'item', '2021-01-04 13:27:28'),
(818, 1, 84, 210, 'item', '2021-01-04 13:27:55'),
(820, 20, 88, 210, 'item', '2021-01-04 13:35:59'),
(821, 3, 87, 204, 'item', '2021-01-05 05:48:13'),
(822, 20, 88, 204, 'item', '2021-01-05 05:48:37'),
(828, 1, 86, 211, 'item', '2021-01-05 07:20:12'),
(838, 20, 88, 211, 'item', '2021-01-05 08:06:30'),
(840, 20, 89, 211, 'item', '2021-01-05 08:45:29'),
(841, 1, 86, 210, 'item', '2021-01-05 08:46:58'),
(847, 1, 19, 202, 'item', '2021-01-06 09:40:02'),
(921, 4, 37, 70, 'item', '2021-02-24 11:05:52'),
(1340, 4, 42, 70, 'item', '2021-02-26 11:38:35'),
(1369, 7, 80, 70, 'item', '2021-02-27 09:33:55'),
(1403, 1, 58, 70, 'item', '2021-03-03 08:38:21'),
(1410, 6, 3, 70, 'item', '2021-03-31 04:51:31'),
(1412, 6, 2, 70, 'item', '2021-03-31 07:37:24'),
(1418, 23, 92, 70, 'item', '2021-04-01 09:21:35'),
(1424, 3, 74, 214, 'item', '2021-04-02 09:22:09'),
(1426, 1, 70, 214, 'item', '2021-04-02 10:12:05'),
(1428, 3, 63, 214, 'item', '2021-04-02 10:22:40'),
(1431, 3, 93, 214, 'item', '2021-04-02 10:30:47'),
(1437, 9, 91, 214, 'item', '2021-04-02 11:38:36'),
(1441, 10, 94, 214, 'item', '2021-04-02 11:59:46'),
(1446, 1, 86, 216, 'item', '2021-04-05 10:50:37'),
(1449, 4, 40, 216, 'item', '2021-04-05 11:05:04'),
(1467, 4, 40, 70, 'item', '2021-04-05 12:31:33'),
(1480, 6, 7, 216, 'item', '2021-04-05 12:56:02'),
(1482, 4, 33, 216, 'item', '2021-04-05 12:57:17'),
(1490, 1, 59, 216, 'item', '2021-04-05 14:25:33'),
(1491, 29, 95, 216, 'item', '2021-04-05 14:25:42'),
(1492, 3, 79, 216, 'item', '2021-04-05 14:25:53'),
(1493, 3, 61, 216, 'item', '2021-04-05 14:26:03'),
(1496, 4, 96, 216, 'item', '2021-04-05 14:26:20'),
(1497, 29, 97, 216, 'item', '2021-04-05 14:26:56'),
(1498, 3, 74, 216, 'item', '2021-04-05 14:26:59'),
(1499, 9, 91, 216, 'item', '2021-04-05 14:31:29'),
(1500, 1, 6, 216, 'item', '2021-04-05 15:09:04'),
(1527, 7, 101, 216, 'item', '2021-04-07 08:24:31'),
(1529, 5, 38, 216, 'item', '2021-04-07 08:28:02'),
(1558, 3, 72, 70, 'item', '2021-04-07 13:03:06'),
(1559, 3, 71, 70, 'item', '2021-04-07 13:03:51'),
(1564, 1, 70, 70, 'item', '2021-04-07 13:40:43'),
(1596, 1, 20, 70, 'item', '2021-04-08 17:05:45'),
(1600, 6, 9, 70, 'item', '2021-04-09 06:28:11'),
(1698, 1, 65, 70, 'item', '2021-04-10 07:42:48'),
(1735, 6, 1, 70, 'item', '2021-04-12 10:06:55'),
(1737, 8, 4, 217, 'item', '2021-04-12 10:44:25'),
(1742, 9, 45, 217, 'item', '2021-04-12 12:08:54'),
(1748, 1, 58, 217, 'item', '2021-04-12 12:30:11'),
(1751, 29, 98, 217, 'item', '2021-04-12 12:34:36'),
(1755, 1, 6, 214, 'item', '2021-04-12 12:44:04'),
(1756, 3, 26, 217, 'item', '2021-04-12 12:47:53'),
(1759, 10, 51, 217, 'item', '2021-04-12 12:48:36'),
(1762, 3, 77, 217, 'item', '2021-04-12 13:06:56'),
(1764, 10, 66, 217, 'item', '2021-04-12 13:15:18'),
(1765, 3, 79, 217, 'item', '2021-04-12 13:15:51'),
(1768, 3, 85, 217, 'item', '2021-04-12 13:21:41'),
(1774, 3, 93, 216, 'item', '2021-04-12 13:33:31'),
(1779, 29, 102, 216, 'item', '2021-04-12 13:56:59'),
(1785, 3, 69, 217, 'item', '2021-04-12 14:29:53'),
(1796, 1, 78, 70, 'item', '2021-04-13 05:59:55'),
(1803, 3, 62, 70, 'item', '2021-04-13 06:25:46'),
(1812, 3, 61, 217, 'item', '2021-04-13 08:18:56'),
(1815, 7, 15, 217, 'item', '2021-04-13 08:20:35'),
(1817, 1, 78, 217, 'item', '2021-04-13 08:33:19'),
(1818, 3, 74, 217, 'item', '2021-04-13 08:37:29'),
(1849, 1, 84, 217, 'item', '2021-04-13 12:49:15'),
(1867, 6, 90, 216, 'item', '2021-04-14 06:06:32'),
(1868, 29, 98, 216, 'item', '2021-04-14 06:09:23'),
(1883, 1, 6, 217, 'item', '2021-04-14 07:08:59'),
(1885, 6, 90, 217, 'item', '2021-04-14 10:07:06'),
(1886, 1, 81, 70, 'item', '2021-04-15 06:47:57'),
(1890, 1, 21, 70, 'item', '2021-04-15 11:30:23'),
(1892, 7, 15, 70, 'item', '2021-04-16 07:27:33'),
(1897, 7, 101, 217, 'item', '2021-04-16 07:51:53'),
(1900, 29, 102, 217, 'item', '2021-04-16 07:58:35'),
(1912, 8, 36, 70, 'item', '2021-04-16 09:53:48'),
(1950, 9, 47, 70, 'item', '2021-04-16 12:10:29'),
(2037, 10, 94, 70, 'item', '2021-04-20 09:45:30'),
(2038, 9, 44, 70, 'item', '2021-04-20 09:46:05'),
(2051, 3, 85, 70, 'item', '2021-04-20 13:24:06'),
(2052, 1, 86, 70, 'item', '2021-04-20 13:24:15'),
(2063, 1, 6, 220, 'item', '2021-04-21 05:08:59'),
(2100, 5, 34, 70, 'item', '2021-04-21 10:55:00'),
(2101, 6, 5, 70, 'item', '2021-04-21 10:55:10'),
(2132, 4, 31, 70, 'item', '2021-04-22 07:51:18'),
(2146, 3, 93, 70, 'item', '2021-04-22 10:45:36'),
(2147, 3, 24, 70, 'item', '2021-04-22 10:45:40'),
(2150, 3, 67, 70, 'item', '2021-04-22 10:47:25'),
(2164, 29, 98, 70, 'item', '2021-04-22 12:17:53'),
(2207, 7, 22, 70, 'item', '2021-04-23 12:01:33'),
(2212, 1, 8, 70, 'item', '2021-04-23 12:10:22'),
(2219, 10, 66, 70, 'item', '2021-04-24 11:08:15'),
(2230, 29, 106, 221, 'item', '2021-04-25 13:14:29'),
(2232, 3, 79, 70, 'item', '2021-04-26 04:02:56'),
(2234, 3, 63, 70, 'item', '2021-04-26 04:25:14'),
(2235, 3, 87, 70, 'item', '2021-04-26 04:25:22'),
(2254, 29, 104, 222, 'item', '2021-04-26 12:54:31'),
(2339, 9, 91, 70, 'item', '2021-04-28 06:48:42'),
(2344, 10, 55, 70, 'item', '2021-04-28 06:58:13'),
(2346, 5, 41, 70, 'item', '2021-04-28 06:59:09'),
(2383, 7, 101, 70, 'item', '2021-04-28 15:12:32'),
(2384, 29, 100, 70, 'item', '2021-04-28 15:12:33'),
(2385, 29, 97, 70, 'item', '2021-04-28 15:12:34'),
(2386, 4, 96, 70, 'item', '2021-04-28 15:12:36'),
(2387, 8, 25, 70, 'item', '2021-04-28 15:13:01'),
(2392, 1, 103, 70, 'item', '2021-04-29 07:15:12'),
(2393, 29, 106, 223, 'item', '2021-04-29 08:04:04'),
(2395, 10, 76, 223, 'item', '2021-04-29 08:16:53'),
(2397, 1, 59, 70, 'item', '2021-04-29 09:03:23'),
(2401, 3, 85, 223, 'item', '2021-04-29 09:12:40'),
(2402, 1, 84, 223, 'item', '2021-04-29 09:12:44'),
(2403, 29, 104, 223, 'item', '2021-04-29 09:12:49'),
(2404, 29, 105, 223, 'item', '2021-04-29 09:12:57'),
(2410, 1, 8, 223, 'item', '2021-04-29 09:23:30'),
(2413, 3, 69, 223, 'item', '2021-04-29 09:23:57'),
(2414, 1, 6, 223, 'item', '2021-04-29 09:24:02'),
(2415, 1, 60, 223, 'item', '2021-04-29 09:24:09'),
(2418, 5, 43, 70, 'item', '2021-04-29 09:39:54'),
(2421, 6, 11, 70, 'item', '2021-04-29 09:43:16'),
(2422, 6, 7, 70, 'item', '2021-04-29 09:43:25'),
(2429, 29, 105, 70, 'item', '2021-04-29 09:53:24'),
(2434, 29, 102, 70, 'item', '2021-04-29 10:04:40'),
(2440, 5, 29, 70, 'item', '2021-04-29 10:18:44'),
(2454, 29, 106, 70, 'item', '2021-04-29 10:27:52'),
(2455, 29, 104, 70, 'item', '2021-04-29 10:28:03'),
(2472, 29, 107, 70, 'item', '2021-04-29 11:07:46'),
(2475, 10, 57, 70, 'item', '2021-04-29 11:08:02'),
(2476, 10, 51, 70, 'item', '2021-04-29 11:08:03'),
(2482, 8, 12, 70, 'item', '2021-04-29 11:08:14'),
(2483, 3, 26, 70, 'item', '2021-04-29 11:08:16'),
(2484, 3, 28, 70, 'item', '2021-04-29 11:08:17'),
(2485, 10, 50, 70, 'item', '2021-04-29 11:08:17'),
(2486, 29, 95, 70, 'item', '2021-04-29 11:09:30'),
(2487, 6, 90, 70, 'item', '2021-04-29 11:09:32'),
(2488, 3, 69, 70, 'item', '2021-04-29 11:09:34'),
(2489, 3, 61, 70, 'item', '2021-04-29 11:09:35'),
(2490, 1, 60, 70, 'item', '2021-04-29 11:09:36'),
(2491, 1, 6, 70, 'item', '2021-04-29 11:09:45'),
(2492, 1, 10, 70, 'item', '2021-04-29 11:09:52'),
(2493, 1, 13, 70, 'item', '2021-04-29 11:09:56'),
(2494, 1, 14, 70, 'item', '2021-04-29 11:09:58'),
(2495, 1, 19, 70, 'item', '2021-04-29 11:09:59'),
(2496, 4, 33, 70, 'item', '2021-04-29 11:10:32'),
(2497, 29, 102, 223, 'item', '2021-04-29 13:15:32'),
(2498, 29, 100, 223, 'item', '2021-04-29 13:15:38'),
(2503, 1, 19, 224, 'item', '2021-04-29 13:30:30'),
(2507, 1, 103, 223, 'item', '2021-04-29 13:46:02'),
(2509, 1, 103, 224, 'item', '2021-04-29 13:47:28'),
(2510, 6, 90, 224, 'item', '2021-04-29 13:59:36'),
(2512, 6, 90, 223, 'item', '2021-04-29 14:01:49'),
(2513, 10, 57, 224, 'item', '2021-04-29 14:03:59'),
(2514, 29, 102, 224, 'item', '2021-04-29 14:07:46'),
(2515, 7, 101, 224, 'item', '2021-04-29 14:07:50'),
(2517, 7, 101, 223, 'item', '2021-04-29 14:08:38'),
(2518, 1, 78, 227, 'item', '2021-06-03 04:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `fc_sellercoupons`
--

CREATE TABLE `fc_sellercoupons` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `sourceid` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `couponcode` varchar(10) NOT NULL,
  `couponpercentage` int(11) NOT NULL,
  `totalrange` int(11) NOT NULL,
  `remainrange` int(11) NOT NULL,
  `validfrom` varchar(10) NOT NULL,
  `validto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_sellercoupons`
--

INSERT INTO `fc_sellercoupons` (`id`, `type`, `sourceid`, `sellerid`, `couponcode`, `couponpercentage`, `totalrange`, `remainrange`, `validfrom`, `validto`) VALUES
(1, 'item', 55, 155, '94L8b492', 5, 10, 10, '07/07/2020', '07/07/2020'),
(2, 'category', 8, 155, 'D833bFE2', 5, 10, 10, '07/07/2020', '07/07/2020'),
(3, 'item', 18, 155, 'Eecb455e', 5, 10, 10, '07/07/2020', '07/07/2020'),
(4, 'cart', 0, 177, 'a51dDd0c', 10, 10, 9, '12/23/2020', '12/23/2020'),
(5, 'category', 1, 71, '6BPcfP2E', 10, 10, 9, '12/23/2020', '12/24/2020'),
(6, 'category', 3, 181, 'f7D4ca7L', 10, 1, 1, '12/25/2020', '12/25/2020'),
(7, 'category', 1, 181, 'B5B664a7', 10, 1, 0, '12/25/2020', '12/26/2020'),
(8, 'cart', 0, 181, 'N94HbEac', 5, 2, 2, '12/25/2020', '12/25/2020'),
(9, 'item', 84, 209, 'NKE671a0', 10, 1, 1, '01/04/2021', '01/05/2021'),
(10, 'cart', 0, 209, 'eIOMba9e', 1, 1, 1, '01/04/2021', '01/04/2021'),
(11, 'category', 20, 209, '2G7ad5EJ', 1, 1, 1, '01/04/2021', '01/04/2021'),
(12, 'facebook', 104, 71, 'ea3L9KaH', 10, 1, 1, '2021-04-28', '2021-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `fc_shareproducts`
--

CREATE TABLE `fc_shareproducts` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `share_amount` double NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fc_shareproducts`
--

INSERT INTO `fc_shareproducts` (`id`, `sender_id`, `receiver_id`, `item_id`, `order_id`, `share_amount`, `status`, `created_date`) VALUES
(1, 185, 186, 66, 90, 40, 'purchased', 0),
(2, 70, 171, 64, 91, 20, 'purchased', 0),
(3, 70, 171, 60, 92, 60, 'purchased', 0),
(4, 192, 193, 68, 94, 50, 'purchased', 0),
(5, 193, 192, 69, 96, 20, 'purchased', 0),
(6, 193, 192, 69, 97, 20, 'purchased', 0),
(7, 193, 192, 69, 98, 20, 'purchased', 0),
(8, 193, 192, 69, 99, 20, 'purchased', 0),
(9, 185, 186, 69, 100, 20, 'purchased', 0),
(10, 185, 186, 68, 101, 0, 'purchased', 0),
(11, 185, 186, 68, 102, 100, 'purchased', 0),
(12, 185, 186, 68, 103, 50, 'purchased', 0),
(13, 185, 186, 67, 0, 0, 'visit', 0),
(14, 185, 186, 68, 104, 150, 'paid', 0),
(15, 185, 194, 66, 105, 39.2, 'purchased', 0),
(16, 185, 195, 60, 107, 60, 'paid', 0),
(17, 185, 195, 60, 0, 0, 'visit', 0),
(18, 182, 196, 67, 108, 60, 'purchased', 0),
(19, 192, 197, 69, 109, 20, 'purchased', 0),
(20, 192, 197, 69, 110, 20, 'paid', 0),
(21, 192, 197, 69, 111, 40, 'paid', 0),
(22, 192, 197, 69, 112, 20, 'purchased', 0),
(23, 192, 197, 69, 113, 20, 'paid', 0),
(24, 182, 183, 67, 114, 60, 'purchased', 0),
(25, 192, 197, 69, 115, 19.8, 'purchased', 0),
(26, 192, 197, 69, 0, 0, 'visit', 0),
(27, 192, 193, 69, 119, 20, 'purchased', 0),
(28, 182, 198, 67, 0, 0, 'visit', 0),
(29, 192, 193, 69, 123, 20, 'purchased', 0),
(30, 182, 199, 67, 0, 0, 'visit', 0),
(31, 195, 185, 68, 121, 50, 'paid', 0),
(32, 192, 193, 69, 125, 20, 'paid', 0),
(33, 182, 199, 73, 126, 10, 'purchased', 0),
(34, 182, 199, 74, 0, 0, 'visit', 0),
(35, 182, 201, 74, 127, 30, 'purchased', 0),
(36, 204, 205, 76, 128, 600, 'purchased', 0),
(37, 204, 205, 77, 0, 0, 'visit', 0),
(38, 204, 206, 77, 129, 50, 'paid', 0),
(39, 204, 207, 79, 130, 100, 'purchased', 0),
(40, 70, 222, 104, 0, 0, 'visit', 0),
(41, 70, 223, 106, 173, 8932.65, 'paid', 1619615369),
(42, 223, 70, 104, 174, 175311.2, 'paid', 1619618717),
(43, 223, 70, 106, 0, 0, 'visit', 1619683610),
(44, 223, 70, 6, 0, 0, 'visit', 1619687751),
(45, 223, 224, 103, 0, 0, 'visit', 1619702291),
(46, 224, 223, 90, 0, 0, 'visit', 1619704890),
(47, 224, 223, 101, 181, 116.5, 'paid', 1619705302);

-- --------------------------------------------------------

--
-- Table structure for table `fc_shipings`
--

CREATE TABLE `fc_shipings` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `primary_cost` varchar(200) NOT NULL,
  `other_item_cost` varchar(200) NOT NULL,
  `shipping_delivery` varchar(200) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_shipings`
--

INSERT INTO `fc_shipings` (`id`, `item_id`, `country_id`, `primary_cost`, `other_item_cost`, `shipping_delivery`, `created_on`) VALUES
(1, 1, 232, '20000', '', NULL, '2020-07-07 06:22:18'),
(2, 1, 0, '20000', '', NULL, '2020-07-07 06:22:18'),
(3, 2, 232, '30000', '', NULL, '2020-07-07 06:26:46'),
(4, 2, 0, '30000', '', NULL, '2020-07-07 06:26:46'),
(5, 3, 232, '9000', '', NULL, '2020-07-07 06:30:32'),
(6, 3, 0, '9000', '', NULL, '2020-07-07 06:30:32'),
(7, 4, 100, '25', '', NULL, '2020-07-07 06:30:36'),
(8, 4, 232, '25', '', NULL, '2020-07-07 06:30:36'),
(9, 4, 0, '25', '', NULL, '2020-07-07 06:30:36'),
(10, 5, 232, '5000', '', NULL, '2020-07-07 06:34:25'),
(11, 5, 0, '5000', '', NULL, '2020-07-07 06:34:25'),
(12, 6, 232, '5', '', NULL, '2020-07-07 06:37:49'),
(13, 6, 0, '10', '', NULL, '2020-07-07 06:37:49'),
(14, 7, 232, '7666', '', NULL, '2020-07-07 06:37:55'),
(15, 7, 0, '7666', '', NULL, '2020-07-07 06:37:55'),
(16, 8, 232, '5', '', NULL, '2020-07-07 06:39:24'),
(17, 8, 0, '10', '', NULL, '2020-07-07 06:39:24'),
(18, 9, 232, '9000', '', NULL, '2020-07-07 06:39:55'),
(19, 9, 0, '9000', '', NULL, '2020-07-07 06:39:55'),
(20, 10, 232, '5', '', NULL, '2020-07-07 06:41:00'),
(21, 10, 0, '10', '', NULL, '2020-07-07 06:41:00'),
(22, 11, 232, '2000', '', NULL, '2020-07-07 06:42:38'),
(23, 11, 0, '2000', '', NULL, '2020-07-07 06:42:38'),
(24, 12, 100, '50', '', NULL, '2020-07-07 06:43:13'),
(25, 12, 232, '50', '', NULL, '2020-07-07 06:43:13'),
(26, 12, 0, '50', '', NULL, '2020-07-07 06:43:13'),
(27, 13, 232, '5', '', NULL, '2020-07-07 06:44:38'),
(28, 13, 0, '10', '', NULL, '2020-07-07 06:44:38'),
(29, 14, 232, '10', '', NULL, '2020-07-07 06:45:43'),
(30, 14, 0, '15', '', NULL, '2020-07-07 06:45:43'),
(31, 15, 232, '2000', '', NULL, '2020-07-07 06:46:45'),
(32, 15, 0, '2000', '', NULL, '2020-07-07 06:46:45'),
(33, 16, 232, '5', '', NULL, '2020-07-07 06:47:35'),
(34, 16, 0, '10', '', NULL, '2020-07-07 06:47:35'),
(35, 17, 232, '20000', '', NULL, '2020-07-07 06:49:36'),
(36, 17, 0, '20000', '', NULL, '2020-07-07 06:49:36'),
(37, 18, 100, '30', '', NULL, '2020-07-07 06:49:55'),
(38, 18, 99, '30', '', NULL, '2020-07-07 06:49:55'),
(39, 18, 232, '30', '', NULL, '2020-07-07 06:49:55'),
(40, 18, 0, '30', '', NULL, '2020-07-07 06:49:55'),
(41, 19, 232, '5', '', NULL, '2020-07-07 06:49:57'),
(42, 19, 0, '10', '', NULL, '2020-07-07 06:49:57'),
(43, 20, 232, '5', '', NULL, '2020-07-07 06:50:46'),
(44, 20, 0, '10', '', NULL, '2020-07-07 06:50:46'),
(45, 21, 232, '5', '', NULL, '2020-07-07 06:51:34'),
(46, 21, 0, '10', '', NULL, '2020-07-07 06:51:34'),
(47, 22, 232, '270', '', NULL, '2020-07-07 06:51:40'),
(48, 22, 0, '270', '', NULL, '2020-07-07 06:51:40'),
(49, 23, 232, '2000', '', NULL, '2020-07-07 06:54:26'),
(50, 23, 0, '2000', '', NULL, '2020-07-07 06:54:26'),
(51, 24, 232, '5', '', NULL, '2020-07-07 06:54:43'),
(52, 24, 0, '10', '', NULL, '2020-07-07 06:54:43'),
(53, 25, 100, '40', '', NULL, '2020-07-07 06:54:54'),
(54, 25, 99, '40', '', NULL, '2020-07-07 06:54:54'),
(55, 25, 232, '40', '', NULL, '2020-07-07 06:54:54'),
(56, 25, 0, '40', '', NULL, '2020-07-07 06:54:54'),
(57, 26, 232, '5', '', NULL, '2020-07-07 06:55:37'),
(58, 26, 0, '10', '', NULL, '2020-07-07 06:55:37'),
(59, 27, 232, '2300', '', NULL, '2020-07-07 06:56:22'),
(60, 27, 0, '2300', '', NULL, '2020-07-07 06:56:22'),
(61, 28, 232, '5', '', NULL, '2020-07-07 06:56:32'),
(62, 28, 0, '10', '', NULL, '2020-07-07 06:56:32'),
(63, 29, 232, '6000', '', NULL, '2020-07-07 06:57:55'),
(64, 29, 0, '6000', '', NULL, '2020-07-07 06:57:55'),
(65, 30, 232, '3636', '', NULL, '2020-07-07 06:59:12'),
(66, 30, 0, '3636', '', NULL, '2020-07-07 06:59:12'),
(67, 31, 232, '10', '', NULL, '2020-07-07 07:00:08'),
(68, 31, 0, '20', '', NULL, '2020-07-07 07:00:08'),
(69, 32, 232, '5', '', NULL, '2020-07-07 07:01:13'),
(70, 32, 0, '10', '', NULL, '2020-07-07 07:01:13'),
(71, 33, 232, '5', '', NULL, '2020-07-07 07:02:12'),
(72, 33, 0, '25', '', NULL, '2020-07-07 07:02:12'),
(73, 34, 232, '6555', '', NULL, '2020-07-07 07:02:23'),
(74, 34, 0, '6555', '', NULL, '2020-07-07 07:02:23'),
(75, 35, 232, '11', '', NULL, '2020-07-07 07:03:07'),
(76, 35, 0, '22', '', NULL, '2020-07-07 07:03:07'),
(77, 36, 100, '40', '', NULL, '2020-07-07 07:03:42'),
(78, 36, 99, '40', '', NULL, '2020-07-07 07:03:42'),
(79, 36, 232, '40', '', NULL, '2020-07-07 07:03:42'),
(80, 36, 0, '40', '', NULL, '2020-07-07 07:03:42'),
(81, 37, 232, '10', '', NULL, '2020-07-07 07:03:59'),
(82, 37, 0, '20', '', NULL, '2020-07-07 07:03:59'),
(83, 38, 232, '9000', '', NULL, '2020-07-07 07:04:30'),
(84, 38, 0, '9000', '', NULL, '2020-07-07 07:04:30'),
(85, 39, 232, '4', '', NULL, '2020-07-07 07:05:01'),
(86, 39, 0, '20', '', NULL, '2020-07-07 07:05:01'),
(87, 40, 232, '5', '', NULL, '2020-07-07 07:05:51'),
(88, 40, 0, '20', '', NULL, '2020-07-07 07:05:51'),
(89, 41, 232, '900', '', NULL, '2020-07-07 07:06:35'),
(90, 41, 0, '900', '', NULL, '2020-07-07 07:06:35'),
(91, 42, 232, '10', '', NULL, '2020-07-07 07:06:48'),
(92, 42, 0, '5', '', NULL, '2020-07-07 07:06:48'),
(93, 43, 232, '90', '', NULL, '2020-07-07 07:08:45'),
(94, 43, 0, '90', '', NULL, '2020-07-07 07:08:45'),
(95, 44, 100, '20', '', NULL, '2020-07-07 07:13:49'),
(96, 44, 99, '20', '', NULL, '2020-07-07 07:13:49'),
(97, 44, 232, '20', '', NULL, '2020-07-07 07:13:49'),
(98, 44, 0, '20', '', NULL, '2020-07-07 07:13:49'),
(99, 45, 100, '30', '', NULL, '2020-07-07 07:15:26'),
(100, 45, 99, '30', '', NULL, '2020-07-07 07:15:26'),
(101, 45, 232, '30', '', NULL, '2020-07-07 07:15:26'),
(102, 45, 0, '30', '', NULL, '2020-07-07 07:15:26'),
(103, 46, 100, '30', '', NULL, '2020-07-07 07:18:15'),
(104, 46, 232, '30', '', NULL, '2020-07-07 07:18:15'),
(105, 46, 0, '30', '', NULL, '2020-07-07 07:18:15'),
(106, 47, 100, '20', '', NULL, '2020-07-07 07:21:06'),
(107, 47, 99, '20', '', NULL, '2020-07-07 07:21:06'),
(108, 47, 232, '20', '', NULL, '2020-07-07 07:21:06'),
(109, 47, 0, '20', '', NULL, '2020-07-07 07:21:06'),
(110, 48, 232, '20', '', NULL, '2020-07-07 07:23:15'),
(111, 48, 0, '20', '', NULL, '2020-07-07 07:23:16'),
(112, 49, 100, '20', '', NULL, '2020-07-07 07:26:00'),
(113, 49, 99, '20', '', NULL, '2020-07-07 07:26:00'),
(114, 49, 232, '25', '', NULL, '2020-07-07 07:26:00'),
(115, 49, 0, '20', '', NULL, '2020-07-07 07:26:00'),
(116, 50, 100, '20', '', NULL, '2020-07-07 07:31:16'),
(117, 50, 99, '20', '', NULL, '2020-07-07 07:31:16'),
(118, 50, 232, '20', '', NULL, '2020-07-07 07:31:16'),
(119, 50, 0, '20', '', NULL, '2020-07-07 07:31:16'),
(120, 51, 100, '25', '', NULL, '2020-07-07 07:34:59'),
(121, 51, 99, '25', '', NULL, '2020-07-07 07:34:59'),
(122, 51, 232, '25', '', NULL, '2020-07-07 07:34:59'),
(123, 51, 0, '25', '', NULL, '2020-07-07 07:34:59'),
(124, 52, 100, '30', '', NULL, '2020-07-07 07:38:38'),
(125, 52, 232, '30', '', NULL, '2020-07-07 07:38:38'),
(126, 52, 0, '30', '', NULL, '2020-07-07 07:38:38'),
(127, 53, 100, '30', '', NULL, '2020-07-07 07:41:23'),
(128, 53, 232, '40', '', NULL, '2020-07-07 07:41:23'),
(129, 53, 0, '30', '', NULL, '2020-07-07 07:41:23'),
(130, 54, 100, '35', '', NULL, '2020-07-07 07:44:39'),
(131, 54, 232, '35', '', NULL, '2020-07-07 07:44:39'),
(132, 54, 0, '35', '', NULL, '2020-07-07 07:44:39'),
(133, 55, 100, '20', '', NULL, '2020-07-07 07:48:17'),
(134, 55, 232, '20', '', NULL, '2020-07-07 07:48:17'),
(135, 55, 0, '20', '', NULL, '2020-07-07 07:48:17'),
(136, 56, 100, '15', '', NULL, '2020-07-07 07:52:03'),
(137, 56, 232, '15', '', NULL, '2020-07-07 07:52:03'),
(138, 56, 0, '15', '', NULL, '2020-07-07 07:52:03'),
(139, 57, 232, '20', '', NULL, '2020-07-07 07:55:28'),
(140, 57, 0, '20', '', NULL, '2020-07-07 07:55:28'),
(141, 58, 100, '1', '', NULL, '2020-12-04 16:37:40'),
(142, 58, 232, '2', '', NULL, '2020-12-04 16:37:40'),
(143, 58, 0, '5', '', NULL, '2020-12-04 16:37:40'),
(144, 59, 232, '20', '', NULL, '2020-12-14 11:24:37'),
(145, 60, 232, '20', '', NULL, '2020-12-14 11:30:12'),
(146, 61, 232, '10', '', NULL, '2020-12-21 07:13:56'),
(147, 62, 232, '10', '', NULL, '2020-12-21 10:30:50'),
(148, 63, 232, '10', '', NULL, '2020-12-21 11:49:04'),
(149, 64, 100, '0', '', NULL, '2020-12-22 04:34:28'),
(150, 64, 232, '5', '', NULL, '2020-12-22 04:34:28'),
(151, 64, 0, '10', '', NULL, '2020-12-22 04:34:28'),
(152, 65, 232, '1', '', NULL, '2020-12-22 07:21:36'),
(153, 66, 100, '0', '', NULL, '2020-12-22 07:47:36'),
(154, 66, 232, '5', '', NULL, '2020-12-22 07:47:36'),
(155, 66, 0, '10', '', NULL, '2020-12-22 07:47:36'),
(156, 67, 232, '10', '', NULL, '2020-12-23 14:10:12'),
(157, 68, 232, '100', '', NULL, '2020-12-24 15:04:58'),
(158, 68, 0, '100', '', NULL, '2020-12-24 15:04:58'),
(159, 69, 232, '100', '', NULL, '2020-12-24 15:38:14'),
(160, 69, 0, '100', '', NULL, '2020-12-24 15:38:14'),
(161, 70, 232, '10', '', NULL, '2020-12-26 13:08:29'),
(162, 71, 232, '20', '', NULL, '2020-12-26 13:10:33'),
(163, 72, 232, '10', '', NULL, '2020-12-26 13:26:35'),
(164, 73, 232, '50', '', NULL, '2020-12-26 13:39:26'),
(165, 74, 232, '10', '', NULL, '2020-12-26 14:00:38'),
(166, 75, 232, '10', '', NULL, '2020-12-31 05:29:52'),
(167, 76, 232, '10', '', NULL, '2020-12-31 05:36:31'),
(168, 77, 100, '100', '', NULL, '2020-12-31 07:25:52'),
(169, 77, 232, '10', '', NULL, '2020-12-31 07:25:52'),
(170, 78, 232, '10', '', NULL, '2020-12-31 07:52:58'),
(171, 79, 232, '10', '', NULL, '2020-12-31 07:58:02'),
(172, 80, 232, '10', '', NULL, '2020-12-31 07:59:31'),
(173, 81, 232, '10', '', NULL, '2020-12-31 09:06:18'),
(174, 82, 232, '10', '', NULL, '2021-01-04 07:54:22'),
(175, 83, 232, '100', '', NULL, '2021-01-04 08:00:26'),
(176, 84, 232, '10', '', NULL, '2021-01-04 08:09:55'),
(177, 85, 232, '10', '', NULL, '2021-01-04 12:34:18'),
(178, 86, 232, '10', '', NULL, '2021-01-04 13:07:29'),
(179, 87, 232, '10', '', NULL, '2021-01-04 13:20:06'),
(180, 88, 232, '10', '', NULL, '2021-01-04 13:34:13'),
(181, 89, 232, '10', '', NULL, '2021-01-05 05:55:02'),
(182, 90, 232, '10', '', NULL, '2021-02-26 16:26:35'),
(183, 90, 0, '20', '', NULL, '2021-02-26 16:26:35'),
(184, 91, 232, '12', '', NULL, '2021-04-01 07:40:53'),
(185, 91, 0, '23', '', NULL, '2021-04-01 07:40:53'),
(186, 92, 232, '5', '', NULL, '2021-04-01 07:45:20'),
(187, 92, 0, '9', '', NULL, '2021-04-01 07:45:20'),
(188, 93, 232, '5', '', NULL, '2021-04-01 07:48:01'),
(189, 93, 0, '6', '', NULL, '2021-04-01 07:48:01'),
(190, 94, 232, '5', '', NULL, '2021-04-02 09:48:22'),
(191, 94, 0, '10', '', NULL, '2021-04-02 09:48:22'),
(192, 95, 232, '10', '', NULL, '2021-04-05 12:13:30'),
(193, 95, 0, '8', '', NULL, '2021-04-05 12:13:30'),
(194, 96, 232, '44', '', NULL, '2021-04-05 12:15:51'),
(195, 96, 0, '10', '', NULL, '2021-04-05 12:15:51'),
(196, 97, 232, '22', '', NULL, '2021-04-05 12:55:51'),
(197, 97, 0, '11', '', NULL, '2021-04-05 12:55:51'),
(198, 98, 232, '3', '', NULL, '2021-04-07 05:13:25'),
(199, 98, 0, '5', '', NULL, '2021-04-07 05:13:25'),
(202, 100, 232, '10', '', NULL, '2021-04-07 08:16:41'),
(203, 100, 0, '22', '', NULL, '2021-04-07 08:16:41'),
(204, 101, 232, '22', '', NULL, '2021-04-07 08:21:56'),
(205, 101, 0, '55', '', NULL, '2021-04-07 08:21:56'),
(206, 102, 232, '11', '', NULL, '2021-04-12 10:36:56'),
(207, 102, 0, '10', '', NULL, '2021-04-12 10:36:56'),
(208, 103, 232, '10', '', NULL, '2021-04-16 07:43:58'),
(209, 103, 0, '20', '', NULL, '2021-04-16 07:43:58'),
(210, 104, 232, '1000', '', NULL, '2021-04-21 07:24:58'),
(211, 104, 0, '5000', '', NULL, '2021-04-21 07:24:58'),
(212, 105, 232, '1000', '', NULL, '2021-04-21 12:00:41'),
(213, 105, 0, '5000', '', NULL, '2021-04-21 12:00:41'),
(214, 106, 232, '1000', '', NULL, '2021-04-21 12:01:57'),
(215, 106, 0, '5000', '', NULL, '2021-04-21 12:01:57'),
(216, 107, 232, '1250', '', NULL, '2021-04-21 12:12:51'),
(217, 107, 0, '1000', '', NULL, '2021-04-21 12:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `fc_shippingaddresses`
--

CREATE TABLE `fc_shippingaddresses` (
  `shippingid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address1` varchar(60) NOT NULL,
  `address2` varchar(60) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `countrycode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_shippingaddresses`
--

INSERT INTO `fc_shippingaddresses` (`shippingid`, `userid`, `nickname`, `name`, `address1`, `address2`, `city`, `state`, `country`, `zipcode`, `phone`, `countrycode`) VALUES
(1, 81, 'jsjsjsks', 'ramnafh', 'sjjsjs', 'sjsjjsj', 'madurai', 'tamilnadu', 'India', '625104', '9500737315', 100),
(2, 89, 'gggrr', 'ggghh', 'tttyggg', 'ffggggh', 'gggy', 'gyyy', 'United States', 'hyhy', '625104', 232),
(3, 157, 'velu', 'velu', 'malai kovik street', 'near stage', 'Madurai', 'tamilnadu', 'India', '625501', '9564621661', 100),
(4, 157, 'nivash', 'nivash', 'ghandhi street', 'near magal', 'gotham', 'gotham', 'United States', '53540', '9597477852', 232),
(5, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(6, 161, 'gdsfg', 'asfgdf', 'sdfgsdfg', 'sdfgsdfg', 'sergserg', 'sdrgsd', 'India', '123456', '12345645364', 100),
(7, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(8, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(9, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(10, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(11, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(12, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(13, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(14, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(15, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(16, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(17, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'India', '625001', '9938387453', 100),
(18, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(19, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(20, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(21, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(22, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(23, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(24, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(25, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(26, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(27, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(28, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(29, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(30, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(31, 162, 'fdsfsf', 'fdsf', 'fdsfsf', '', 'dfsdf', 'fdsfsf', 'United States', 'fsfsdfsdf', '9787867867868', 232),
(32, 162, 'fdsfsf', 'fdsf', 'fdsfsf', '', 'dfsdf', 'fdsfsf', 'United States', 'fsfsdfsdf', '9787867867868', 232),
(33, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(34, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(35, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(36, 174, 'trw', 'wer', '254', 'mill street', 'united states', 'united states', 'United States', '626102', '9876543210', 232),
(37, 176, 'eeeeee', 'example', '345', 'west street', 'united states', 'united states', 'United States', '678934', '9876543210', 232),
(38, 176, 'eeeeee', 'example', '345', 'west street', 'united states', 'united states', 'United States', '678934', '9876543210', 232),
(39, 176, 'eeeeee', 'example', '345', 'west street', 'united states', 'united states', 'United States', '678934', '9876543210', 232),
(40, 179, 'sssss', 'aaaaaa', 'aaaaaaaa', 'ssssssss', 'aasss', 'asassssss', 'India', '5645645', '96325874410', 100),
(41, 179, 'sssss', 'aaaaaa', 'aaaaaaaa', 'ssssssss', 'aasss', 'asassssss', 'India', '5645645', '96325874410', 100),
(42, 179, 'sssss', 'aaaaaa', 'aaaaaaaa', 'ssssssss', 'aasss', 'asassssss', 'India', '5645645', '96325874410', 100),
(43, 179, 'sssss', 'aaaaaa', 'aaaaaaaa', 'ssssssss', 'aasss', 'asassssss', 'India', '5645645', '96325874410', 100),
(44, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(45, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(46, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(47, 178, 'asas', 'saa', 'asas', 'asassa', 'asasasas', 'asasassa', 'India', '625402', '9876325410', 100),
(48, 183, '2address', 'adress', '123', 'east street', 'united states', 'united states', 'United States', '123456', '8765431290', 232),
(49, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(50, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(51, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(52, 178, 'asas', 'saa', 'asas', 'asassa', 'asasasas', 'asasassa', 'India', '625402', '9876325410', 100),
(53, 178, 'asas', 'saa', 'asas', 'asassa', 'asasasas', 'asasassa', 'India', '625402', '9876325410', 100),
(54, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(55, 184, 'cat', 'cat', 'aaaaa', 'aaaaaa', 'aaaaaa', 'aaaa', 'India', '625402', '9632541000', 100),
(56, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(57, 187, 'aaaaaaaa', 'aaaa', 'aaaaa', 'aaa', 'aaaaaaa', 'aaaa', 'India', '625402', '132456498749', 100),
(58, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(59, 188, 'dddddddddd', 'addddddd', 'ddddddd', 'ddddd', 'aaaaaaaaaa', 'aaaaaaa', 'India', '6543231', '9632587410', 100),
(60, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(61, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(62, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(63, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(64, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(65, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(66, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(67, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(68, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(69, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(70, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(71, 193, '1608959487', 'DoraDora', 'dsdsd', 'sdsdsdsd', 'cxcxxcv', 'kjkh', 'United States', 'cxvc', '54446654', 232),
(72, 192, '1608960168', 'DemoUser', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(73, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(74, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(75, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(76, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(77, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(78, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(79, 194, 'dfdsf', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(80, 195, '1608978235', 'DemoUser', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(81, 195, '1608978259', 'DemoUser', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(82, 195, '1608978899', 'DemoUser', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(83, 196, 'hello', 'well', 'hdfc', 'west street', 'united states', 'united states', 'United States', '``````````````````', '8765431290', 232),
(84, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(85, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(86, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(87, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(88, 197, '1608984374', 'share', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(89, 197, '1608984522', 'share', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(90, 183, '2address', 'adress', '123', 'east street', 'united states', 'united states', 'United States', '123456', '8765431290', 232),
(91, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(92, 183, '2address', 'adress', '123', 'east street', 'united states', 'united states', 'United States', '123456', '8765431290', 232),
(93, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(94, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(95, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(96, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(97, 185, 'fdsfdsf', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(98, 199, 'sam', 'sampe', 'erttt', 'west street', 'united states', 'united states', 'United States', '654321', '879834567', 232),
(99, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(100, 182, 'gmee', 'qqqqqqq', 'sdf', 'middle street', 'united states', 'united states', 'United States', '34565654', '4474433', 232),
(101, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(102, 199, 'sam', 'sampe', 'erttt', 'west street', 'united states', 'united states', 'United States', '654321', '879834567', 232),
(103, 201, 'ewrewfsfa', 'ttttttt', '3452', 'west street', 'united states', 'united states', 'United States', '764234', '3773567367', 232),
(104, 205, 'testt', 'test', '345 ', 'middle street', 'united states', 'united states', 'United States', '6534789', '8762525525', 232),
(105, 206, 'mail', 'mail', '7643', 'west street', 'united states', 'united states', 'United States', '7642423', '87653456588', 232),
(106, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(107, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(108, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(109, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(110, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(111, 208, 'asgggs', 'testtt', '245', 'west street', 'united states', 'united states', 'United States', '3476367', '7848745865', 232),
(112, 210, 'reallllll', 'realll', '34522', 'west street', 'united states', 'united states', 'United States', '3563636', '568857858', 232),
(113, 210, '1609762936', 'lilly water', 'sdf', 'middle street', 'united states', 'united states', 'United States', '34565654', '4474433', 232),
(114, 210, 'reallllll', 'realll', '34522', 'west street', 'united states', 'united states', 'United States', '3563636', '568857858', 232),
(115, 210, 'reallllll', 'realll', '34522', 'west street', 'united states', 'united states', 'United States', '3563636', '568857858', 232),
(116, 210, 'reallllll', 'realll', '34522', 'west street', 'united states', 'united states', 'United States', '3563636', '568857858', 232),
(117, 211, '1609836726', 'todaytoday', 'sdf', 'middle street', 'united states', 'united states', 'United States', '4753', '24545656', 232),
(118, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(119, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(120, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(121, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(122, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(123, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(124, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(125, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(126, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(127, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(128, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(129, 70, '1617365693', 'Demo', 'kdsjfslk', 'ksdjflks', 'madurai', 'tamilnadu', 'India', '625002', '987654321', 100),
(130, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(131, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(132, 216, '1617626014', 'arusharush', 'asdfasdf', 'asdfasdfs', 'asdfasdfa', 'asdfasdf', 'India', 'asdfasdfa', '8978999998', 100),
(133, 216, '1617626041', 'arusharush', 'asdfasdf', 'asdfasdfs', 'asdfasdfa', 'asdfasdf', 'India', 'asdfasdfa', '8978999998', 100),
(134, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(135, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(136, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(137, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(138, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(139, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(140, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(141, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(142, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(143, 217, '1618234835', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(144, 217, '1618234861', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(145, 217, '1618234902', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(146, 217, '1618234935', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(147, 217, '1618234961', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(148, 217, '1618234985', 'Ashok', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(149, 217, 'asdfadsfas', 'aadsfadsf', 'fas', 'asdfadsfa', 'sdfasdf', 'asdfasdfasd', 'India', 'sdfasdfasd', '9878784', 100),
(150, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(151, 217, '1618302309', 'Gshsh', 'Bsbbsbs', 'Hsheh', 'Hsjsj', 'Bzbs', 'India', 'Bsbsbw', '838383838', 100),
(152, 217, 'asdfadsfas', 'aadsfadsf', 'fas', 'asdfadsfa', 'sdfasdf', 'asdfasdfasd', 'India', 'sdfasdfasd', '9878784', 100),
(153, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(154, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(155, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(156, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(157, 217, 'asdfadsfas', 'aadsfadsf', 'fas', 'asdfadsfa', 'sdfasdf', 'asdfasdfasd', 'India', 'sdfasdfasd', '9878784', 100),
(158, 217, 'asdfadsfas', 'aadsfadsf', 'fas', 'asdfadsfa', 'sdfasdf', 'asdfasdfasd', 'India', 'sdfasdfasd', '9878784', 100),
(159, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(160, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(161, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(162, 223, 'joker', 'joker', 'hitasoft', 'hitasoft', 'madurai', 'Tamil Nadu', 'India', '625009', '9876543210', 100),
(163, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(164, 224, 'vishnu', 'Sandbox Unknown', 'hitahjn', 'gnvg', 'mad', 'tn', 'India', '4689', '67656464353586', 100);

-- --------------------------------------------------------

--
-- Table structure for table `fc_shippricelists`
--

CREATE TABLE `fc_shippricelists` (
  `id` int(11) NOT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `asiaD` varchar(50) DEFAULT NULL,
  `asiaE` varchar(50) DEFAULT NULL,
  `americaD` varchar(50) DEFAULT NULL,
  `americaE` varchar(50) DEFAULT NULL,
  `europeD` varchar(50) DEFAULT NULL,
  `europeE` varchar(50) DEFAULT NULL,
  `africaD` varchar(50) DEFAULT NULL,
  `africaE` varchar(50) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_shopcomments`
--

CREATE TABLE `fc_shopcomments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_shopfavs`
--

CREATE TABLE `fc_shopfavs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `cretaed_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_shops`
--

CREATE TABLE `fc_shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_name` varchar(60) DEFAULT NULL,
  `shop_name_url` varchar(80) NOT NULL,
  `merchant_name` varchar(60) NOT NULL,
  `shop_image` varchar(20) DEFAULT NULL,
  `shop_banner` varchar(20) DEFAULT NULL,
  `shop_description` varchar(255) NOT NULL,
  `shop_announcement` text DEFAULT NULL,
  `shop_message` text DEFAULT NULL,
  `shop_address` varchar(200) DEFAULT NULL,
  `shop_latitude` float(10,6) DEFAULT NULL,
  `shop_longitude` float(10,6) DEFAULT NULL,
  `welcome_message` text DEFAULT NULL,
  `payment_policy` text DEFAULT NULL,
  `shipping_policy` text DEFAULT NULL,
  `refund_policy` text DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `seller_info` text DEFAULT NULL,
  `phone_no` varchar(20) NOT NULL,
  `paypal_id` varchar(150) NOT NULL,
  `stripeid` varchar(150) NOT NULL,
  `stripekey` varchar(150) NOT NULL,
  `paytype` varchar(10) NOT NULL,
  `seller_status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `item_count` int(11) NOT NULL,
  `follow_count` int(11) NOT NULL,
  `shop_facebook` varchar(55) NOT NULL,
  `shop_twitter` varchar(55) NOT NULL,
  `shop_twitter_id` varchar(55) NOT NULL,
  `shop_social_status` int(11) NOT NULL,
  `shop_category` varchar(255) NOT NULL,
  `store_platform` varchar(50) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `inventory_loc` varchar(255) NOT NULL,
  `qqid` varchar(20) NOT NULL,
  `news_key` varchar(60) NOT NULL,
  `news_username` varchar(60) NOT NULL,
  `country_id` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `currencysymbol` varchar(5) NOT NULL,
  `store_enable` enum('enable','disable') NOT NULL,
  `pickup` enum('no','yes') NOT NULL,
  `pricefree` enum('no','yes') NOT NULL,
  `freeamt` int(11) NOT NULL,
  `postalfree` enum('no','yes') NOT NULL,
  `postalcodes` text NOT NULL,
  `wifi` enum('no','yes') NOT NULL,
  `featured` int(11) NOT NULL,
  `featured_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `abandon_cart` enum('no','yes') NOT NULL,
  `braintree_id` text NOT NULL,
  `braintree_publickey` text NOT NULL,
  `braintree_privatekey` text NOT NULL,
  `braintree_type` enum('sandbox','live') DEFAULT NULL,
  `merchant_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_shops`
--

INSERT INTO `fc_shops` (`id`, `user_id`, `shop_name`, `shop_name_url`, `merchant_name`, `shop_image`, `shop_banner`, `shop_description`, `shop_announcement`, `shop_message`, `shop_address`, `shop_latitude`, `shop_longitude`, `welcome_message`, `payment_policy`, `shipping_policy`, `refund_policy`, `additional_info`, `seller_info`, `phone_no`, `paypal_id`, `stripeid`, `stripekey`, `paytype`, `seller_status`, `created_on`, `item_count`, `follow_count`, `shop_facebook`, `shop_twitter`, `shop_twitter_id`, `shop_social_status`, `shop_category`, `store_platform`, `product_category`, `inventory_loc`, `qqid`, `news_key`, `news_username`, `country_id`, `currency`, `currencysymbol`, `store_enable`, `pickup`, `pricefree`, `freeamt`, `postalfree`, `postalcodes`, `wifi`, `featured`, `featured_time`, `abandon_cart`, `braintree_id`, `braintree_publickey`, `braintree_privatekey`, `braintree_type`, `merchant_id`) VALUES
(1, 70, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-07 09:26:52', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(2, 71, 'Fantacy Store', 'fantacy-store', 'demoseller', '1594126722_71.jpg', '1594126728_71.jpg', 'To get fantasized...', NULL, NULL, 'SanFranciso~SanFranciso~SanFranciso~SanFranciso~United States~100', 0.004125, 0.002060, NULL, NULL, NULL, NULL, NULL, NULL, '213-3213-32133213213', '', '', '', 'braintree', 1, '2021-04-24 11:05:02', 37, 0, '', '', '', 0, '', '', '', ',', '', '', '', 232, 'USD', '$', 'enable', '', 'yes', 1000, 'yes', '[\"100\"]', '', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(3, 73, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:26', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(4, 74, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:26', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(5, 75, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:26', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(7, 77, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:25', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(8, 78, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:24', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(9, 79, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:23', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(11, 81, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:33', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(12, 82, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:33', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(13, 83, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:21', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(15, 85, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:21', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(16, 86, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:19', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(17, 87, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:20', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(19, 89, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:21', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(20, 90, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:20', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(21, 91, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:35', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(22, 92, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:38', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(23, 93, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:36', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(24, 94, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:36', 0, 5, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(25, 95, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:37', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(26, 96, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:17', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(27, 97, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:16', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(28, 98, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:16', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(30, 100, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-18 13:59:56', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(31, 101, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:15', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(32, 102, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:59:21', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(33, 103, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:59:19', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(34, 104, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:59:19', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(35, 105, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:59:19', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(37, 107, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:59:20', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(38, 108, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:40', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(39, 109, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:42', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(40, 110, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:41', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(41, 111, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 13:21:41', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(42, 112, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:36', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(43, 113, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:36', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(44, 114, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:35', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(45, 115, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:35', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(46, 116, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:35', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(47, 117, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:34', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(48, 118, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:33', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(49, 119, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-18 11:06:10', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(50, 120, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:31', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(51, 121, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:30', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(54, 124, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:27', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(55, 125, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:27', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(56, 126, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:26', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(57, 127, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:26', 0, 6, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(58, 128, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:25', 0, 5, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(59, 129, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:24', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(60, 130, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:22', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(61, 131, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:22', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(62, 132, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-19 08:33:39', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(63, 133, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:20', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(65, 135, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:19', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(66, 136, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:18', 0, 4, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(68, 138, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:18', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(69, 139, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:17', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(70, 140, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:17', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(71, 141, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:16', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(72, 142, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:16', 0, 3, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(74, 144, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-06-29 05:58:16', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(75, 145, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-01 08:15:08', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(76, 146, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 06:12:31', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(77, 147, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 06:11:53', 0, 2, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(78, 148, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 06:12:27', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(79, 149, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-02 13:32:50', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(80, 150, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-02 14:33:44', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(81, 151, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 06:11:49', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(82, 152, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 08:12:50', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(83, 153, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-04 10:55:27', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(84, 154, 'Ram Stores', 'ram-stores', 'ramnathtamilselvam', '1594125757_154.jpg', '1594125993_154.jpg', 'Ram Stores', NULL, NULL, 'Madurai~Madurai~Madurai~Madurai~India~625104', 0.002868, -0.013443, NULL, NULL, NULL, NULL, NULL, NULL, '91-7-9500737315', '', '', '', 'braintree', 1, '2021-03-31 05:21:34', 17, 0, '', '', '', 0, '', '', '', ',', '', '', '', 232, 'USD', '$', 'enable', '', 'yes', 100, 'yes', '[\"625104\"]', '', 0, '0000-00-00 00:00:00', 'no', 'QWERT', 'QQRQTQTQqttqqt', 'qtqttqqttqtqqtqtqt', 'sandbox', 'QWERTYUIO'),
(85, 155, 'kiruba store', 'kiruba-store', 'kirubaj', '1594126434_155.jpg', NULL, 'Kiruba arts', NULL, NULL, 'Thideer nagar , madurai -625001~near periyar stand.~madurai~Tamilnadu~India~625001', 9.915020, 78.109756, NULL, NULL, NULL, NULL, NULL, NULL, '91-44-9597477853', '', '', '', 'braintree', 1, '2020-07-07 12:54:28', 19, 0, '', '', '', 0, '', '', '', ',', '', '', '', 232, 'USD', '$', 'enable', '', 'yes', 500, 'yes', '[\"625001\"]', '', 0, '0000-00-00 00:00:00', 'no', '10111', '10abc10', '12cde12', 'sandbox', '20384'),
(86, 156, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-07 09:26:51', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(87, 157, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-07 09:26:51', 0, 1, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(88, 158, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-07-08 22:11:12', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(89, 159, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-04 16:06:34', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(90, 160, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-04 16:06:41', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(91, 161, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-04 16:28:28', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(92, 162, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-14 11:52:27', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(93, 163, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 09:35:39', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(94, 164, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 10:29:03', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(95, 165, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 10:33:57', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(96, 166, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 10:48:22', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(97, 167, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 11:07:35', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(98, 168, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-15 11:20:18', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(99, 169, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-16 04:51:45', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(100, 170, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-16 09:45:36', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(101, 171, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-16 09:46:55', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(102, 172, 'Sample store', 'sample-store', 'Anu', NULL, NULL, '', NULL, NULL, 'sdf~middle street~rajapalayam~tamilnadu~India~34565654', 9.903921, 78.134766, NULL, NULL, NULL, NULL, NULL, NULL, '4356-2456-425656', '', '', '', 'braintree', 1, '2020-12-21 07:14:19', 1, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 100, 'yes', '[\"626102\"]', 'no', 0, '0000-00-00 00:00:00', 'no', '673', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(103, 173, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-21 07:32:35', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(104, 174, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-21 07:47:09', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(105, 175, 'Aa store', 'aa-store', 'abi', NULL, NULL, '', NULL, NULL, 'sdf~west street~rajapalayam~tamilnadu~India~34565654', 9.882275, 78.112793, NULL, NULL, NULL, NULL, NULL, NULL, '7642-4567-567890', '', '', '', 'braintree', 1, '2020-12-21 11:50:02', 2, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 100, 'yes', '[\"626102\"]', 'no', 0, '0000-00-00 00:00:00', 'no', '673', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(106, 176, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-21 10:52:34', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(107, 177, 'A to Z', 'a-to-z', 'King', '1608610845_177.jpg', '1608610857_177.jpg', 'The king A to Z ', NULL, NULL, 'aaaaa~bbbbbb~ccccccc~ddddddd~India~625402', 10.009417, 78.053780, NULL, NULL, NULL, NULL, NULL, NULL, '91-0452-9632587410', '', '', '', 'braintree', 1, '2020-12-22 07:47:58', 2, 0, '', '', '', 0, '', '', '', ',', '', '', '', 232, 'USD', '$', 'enable', '', 'yes', 200, 'no', '', '', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(108, 178, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-22 04:31:53', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(109, 179, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-22 04:42:21', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(110, 180, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-22 06:47:34', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(111, 181, 'welcome Store', 'welcome-store', 'sure', NULL, NULL, '', NULL, NULL, 'sdf~north street~Madurai~Tamilnadu~India~34565654', 9.947209, 78.134766, NULL, NULL, NULL, NULL, NULL, NULL, '12345-2456-123456789', '', '', '', 'braintree', 1, '2020-12-26 14:01:07', 5, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 50, 'yes', '[\"626102\"]', 'no', 0, '0000-00-00 00:00:00', 'no', '123', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(112, 182, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-22 07:16:34', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(113, 183, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-22 08:00:51', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(114, 184, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-23 08:01:33', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(115, 185, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-23 08:03:04', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(116, 186, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-23 08:09:29', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(117, 187, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-23 08:11:17', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(118, 188, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-23 08:15:28', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(119, 189, 'today', 'today', 'today', NULL, NULL, '', NULL, NULL, 'gsfdfgs~askffboakhsvfkasf~madurai~dsfsdfsdfds~United States~gfgfghfgf', 9.920657, 78.124680, NULL, NULL, NULL, NULL, NULL, NULL, '91-22-96595511469', '', '', '', 'braintree', 1, '2020-12-24 15:38:42', 2, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(120, 190, 'anand', 'anand', 'anand', NULL, NULL, '', NULL, NULL, 'dffsdfdsfds~sfdfsdfds~fsdfsdfdsfdsfds~ffsdfsdfs~United States~165413', 9.993646, 78.158577, NULL, NULL, NULL, NULL, NULL, NULL, '91-22-96595511469', '', '', '', 'braintree', 1, '2020-12-24 15:01:42', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(121, 191, 'sugith', 'sugith', 'sugith', NULL, NULL, '', NULL, NULL, 'gsfdfgs~hhghghghgf~asdasdasdsd~dsfsdfsdfds~United States~4565', 10.193141, 78.187645, NULL, NULL, NULL, NULL, NULL, NULL, '91-22-96595511469', '', '', '', 'braintree', 1, '2020-12-24 15:01:44', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(122, 192, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-24 15:06:02', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(123, 193, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-24 15:20:31', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(124, 194, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 08:58:58', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(125, 195, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 10:17:22', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(126, 196, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 11:08:02', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(127, 197, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 11:27:42', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(128, 198, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 13:00:39', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(129, 199, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 13:04:00', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(130, 200, 'Sample Store', 'sample-store', 'second', NULL, NULL, '', NULL, NULL, '234~west street~Madurai~Tamilnadu~India~626102', 9.916097, 78.127899, NULL, NULL, NULL, NULL, NULL, NULL, '123-345-654312', '', '', '', 'braintree', 1, '2020-12-26 13:40:01', 2, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 100, 'yes', '[\"626102\"]', 'no', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(131, 201, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-26 14:05:48', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(132, 202, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-28 07:29:42', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(133, 203, 'Store', 'store', 'well', '1609396148_203.jpg', '1609396295_203.png', 'cheap and best', NULL, NULL, 'sdf~middle street~rajapalayam~tamilnadu~India~34565654', 9.821389, 78.254242, NULL, NULL, NULL, NULL, NULL, NULL, '678-789-87653', '', '', '', 'braintree', 1, '2020-12-31 09:06:37', 7, 0, '', '', '', 0, '', '', '', ',', '', '', '', 232, 'USD', '$', 'enable', '', 'yes', 100, 'yes', '[\"626102\"]', '', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(134, 204, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-31 04:50:55', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(135, 205, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-31 05:42:44', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(136, 206, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-31 07:33:49', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(137, 207, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-31 08:07:28', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(138, 208, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2020-12-31 09:03:02', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(139, 209, 'quit Store', 'quit-store', 'quit', NULL, NULL, '', NULL, NULL, 'sdf~middle street~rajapalayam~tamilnadu~India~34565654', 9.947209, 78.112793, NULL, NULL, NULL, NULL, NULL, NULL, '256-246-246565', '', '', '', 'braintree', 1, '2021-01-05 05:55:24', 8, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 50, 'yes', '[\"626102\"]', 'no', 0, '0000-00-00 00:00:00', 'no', 'hitasofttechologysolution', 'mh8kpjy4dnmcxwgt', 'd96892008b6000b7136124aa1aafb523', 'sandbox', 'h6gtn2qpmrmhyf2h'),
(140, 210, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-01-04 07:57:14', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(141, 211, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-01-05 06:53:30', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(142, 212, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-02-26 13:08:03', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(143, 214, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-02 09:20:26', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(144, 215, 'Arty Artifacts', 'arty-artifacts', 'Artemis', NULL, NULL, '', NULL, NULL, 'Fowl manor~Dublin~Ireland~Ireland~Ireland~625002', 53.349804, -6.260310, NULL, NULL, NULL, NULL, NULL, NULL, '91-452-9876543210', '', '', '', 'braintree', 1, '2021-04-02 09:43:23', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 100, 'yes', '[\"23243\",\"625002\"]', 'no', 0, '0000-00-00 00:00:00', 'no', 'Sample merchant id', 'sample public key', 'sample private key', 'sandbox', 'Sample braintreemerchant id'),
(145, 216, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-05 10:47:29', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(146, 217, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-12 10:12:53', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(147, 218, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-16 11:07:18', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(148, 219, 'swat', 'swat', 'Swat', NULL, NULL, '', NULL, NULL, '2easd~asdsadasdsdasdsd~asd~asdsdsadsd~India~160059', 30.719131, 76.720619, NULL, NULL, NULL, NULL, NULL, NULL, '91-12-82849032343', '', '', '', 'braintree', 1, '2021-04-19 09:21:27', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 232, 'USD', '$', 'enable', 'no', 'yes', 100, 'yes', '[\"160059\"]', 'no', 0, '0000-00-00 00:00:00', 'no', '12312qwe', 'qwewe', 'qwewe', 'sandbox', 'qwewe'),
(149, 220, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-21 04:35:23', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(150, 221, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-25 13:09:10', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(151, 222, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-26 12:54:04', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(152, 223, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-28 13:09:04', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(153, 224, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-29 13:06:16', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(154, 225, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-04-29 13:12:03', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(155, 226, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-06-02 11:19:45', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL),
(156, 227, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 2, '2021-06-02 11:32:41', 0, 0, '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 'enable', 'no', 'no', 0, 'no', '', 'no', 0, '0000-00-00 00:00:00', 'no', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fc_shopuserphotos`
--

CREATE TABLE `fc_shopuserphotos` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `userimage` varchar(100) DEFAULT NULL,
  `status` enum('Yes','No') DEFAULT 'No',
  `cdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_sitequeries`
--

CREATE TABLE `fc_sitequeries` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `queries` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_sitequeries`
--

INSERT INTO `fc_sitequeries` (`id`, `type`, `queries`) VALUES
(1, 'contact_seller', '[\"subject\",\"subject new 1\",\"subject new 2\",\"subject new 3\"]'),
(2, 'Dispute_Problem', '[\"dispute\"]');

-- --------------------------------------------------------

--
-- Table structure for table `fc_sitesettings`
--

CREATE TABLE `fc_sitesettings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(60) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `meta_key` varchar(200) NOT NULL,
  `meta_desc` varchar(200) NOT NULL,
  `welcome_email` enum('yes','no') NOT NULL,
  `signup_active` enum('yes','no') NOT NULL,
  `notification_email` varchar(150) NOT NULL,
  `support_email` varchar(150) NOT NULL,
  `noreply_host` varchar(100) NOT NULL,
  `noreply_name` varchar(60) NOT NULL,
  `noreply_email` varchar(150) NOT NULL,
  `noreply_password` varchar(50) NOT NULL,
  `gmail_smtp` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `smtp_port` int(11) NOT NULL DEFAULT 465,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `media_url` varchar(50) NOT NULL,
  `media_server_hostname` varchar(100) NOT NULL,
  `media_server_username` varchar(50) NOT NULL,
  `media_server_password` varchar(50) NOT NULL,
  `like_btn_cmnt` varchar(10) NOT NULL,
  `liked_btn_cmnt` varchar(10) NOT NULL,
  `unlike_btn_cmnt` varchar(10) NOT NULL,
  `site_logo` varchar(20) NOT NULL,
  `site_dark_logo` varchar(20) NOT NULL,
  `site_logo_icon` varchar(20) CHARACTER SET utf32 COLLATE utf32_swedish_ci NOT NULL,
  `site_likebtn_logo` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `paypal_id` varchar(150) NOT NULL,
  `stripe_type` varchar(20) DEFAULT NULL,
  `stripe_secret` varchar(50) DEFAULT NULL,
  `stripe_publish` varchar(50) DEFAULT NULL,
  `site_changes` text NOT NULL,
  `mobile_settings` text NOT NULL,
  `giftcard` text DEFAULT NULL,
  `paypaladaptive` text NOT NULL,
  `mpowerpg` text DEFAULT NULL,
  `affiliate_enb` enum('enable','disable') NOT NULL,
  `footer_left` text NOT NULL,
  `footer_right` text NOT NULL,
  `footer_active` enum('yes','no') NOT NULL,
  `credit_percentage` varchar(2) NOT NULL,
  `social_id` text NOT NULL,
  `news_key` varchar(60) NOT NULL,
  `news_username` varchar(60) NOT NULL,
  `cod` enum('enable','disable') NOT NULL,
  `default_ship_country` int(11) NOT NULL,
  `gender_type` varchar(50) NOT NULL,
  `userloc` varchar(255) NOT NULL,
  `social_page` text NOT NULL,
  `signup_credit` int(11) NOT NULL,
  `checkin_credit` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `checkin_count` int(11) NOT NULL,
  `numofdays_received` int(11) NOT NULL,
  `landing_video` tinytext DEFAULT NULL,
  `favicon_image` varchar(20) NOT NULL,
  `user_default_image` varchar(20) NOT NULL,
  `braintree_setting` text NOT NULL,
  `google_api` varchar(255) DEFAULT NULL,
  `merchantid_setting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_sitesettings`
--

INSERT INTO `fc_sitesettings` (`id`, `site_name`, `site_title`, `meta_key`, `meta_desc`, `welcome_email`, `signup_active`, `notification_email`, `support_email`, `noreply_host`, `noreply_name`, `noreply_email`, `noreply_password`, `gmail_smtp`, `smtp_port`, `created_on`, `media_url`, `media_server_hostname`, `media_server_username`, `media_server_password`, `like_btn_cmnt`, `liked_btn_cmnt`, `unlike_btn_cmnt`, `site_logo`, `site_dark_logo`, `site_logo_icon`, `site_likebtn_logo`, `payment_type`, `paypal_id`, `stripe_type`, `stripe_secret`, `stripe_publish`, `site_changes`, `mobile_settings`, `giftcard`, `paypaladaptive`, `mpowerpg`, `affiliate_enb`, `footer_left`, `footer_right`, `footer_active`, `credit_percentage`, `social_id`, `news_key`, `news_username`, `cod`, `default_ship_country`, `gender_type`, `userloc`, `social_page`, `signup_credit`, `checkin_credit`, `order_count`, `checkin_count`, `numofdays_received`, `landing_video`, `favicon_image`, `user_default_image`, `braintree_setting`, `google_api`, `merchantid_setting`) VALUES
(1, 'Stratus', 'Stratus', 'Stratus', 'Stratus', 'no', 'no', 'noreply@hitasoft.com', 'fantacy@hitasoft.com', 'smtp.gmail.com', 'Fantacy', 'hitasofttestmail@gmail.com', 'hit@s@ft@2019', 'enable', 587, '2021-04-02 10:58:08', 'http://localhost/markethub/', '12332', 'dsddd', '123456', 'stratustes', 'stratust\'d', 'Unstratust', '1607147910_1.png', '1607147901_1.png', 'logo_icon.png', '1508846571_1.jpg', 'paypal', 'demofantacy@gmail.com', 'sandbox', '', '', '{\"credit_amount\":\"100\"}', '{\"android_url\":\"dwd\",\"ios_url\":\"dwd\"}', '{\"image\":\"banner2.jpeg\",\"title\":\"Gift card\",\"description\":\"sddsadsdasdadsddsas\",\"amounts\":\"10,20,40,50,100,200,500,1000,1500\",\"time\":1546594511}', '{\"paymentMode\":\"paypalnormal\"}', NULL, '', 'Powered by <a href=\"https://amazon.stratustest.co.za/\">Stratus</a>', 'Stratus Multi vendor eCommerce Script v4.1', 'yes', '10', '{\"FB_ID\":\"359140918389960\",\"FB_SECRET\":\"8125a40caa41f9bee65f52d465e7e1fa\",\"TWITTER_ID\":\"Hbs6hxICk7skWx7Lj1uhHMHLJ\",\"TWITTER_SECRET\":\"oPQeHVUX5PD5r4gKVXsISJzzaamNgRF3TjK9OejzLmV1od8NsQ\",\"GOOGLE_ID\":\"49473366810-j6qe6rod4mr17crvqgndf1lf7hru9q3c.apps.googleusercontent.com\",\"GOOGLE_SECRET\":\"GwDI4PiFRpDEJhpnCPzxVDDM\",\"GMAIL_CLIENT_ID\":\"556162648535-fhg68o0i67ju0362fd9ks1p0qvdtluj8.apps.googleusercontent.com\",\"GMAIL_CLIENT_SECRET\":\"8-qdaH248lCdEju3nKN0cFCY\"}', '839d963daa3c93773821bb77edf31a0d-us16', 'a ', 'enable', 18, '[\"Male\",\"Female\",\"others\"]', '123', '{\"instagram_link\":\"http:\\/\\/instagram.com\",\"facebook_link\":\"http:\\/\\/facebook.com\",\"twitter_link\":\"http:\\/\\/twitter.com\"}', 8012, 8712, 1212, 1512, 0, '', 'favicon.ico', 'usrimg.jpg', '{\"type\":\"sandbox\",\"merchant_id\":\"wd6v9yqp6syfxwnx\",\"public_key\":\"zbv82z73szs82hyd\",\"private_key\":\"a88e10291a97c6ce89512a698d4109d8\",\"USD\":{\"merchant_account_id\":\"hitasofttechologysolution\"}}', 'AAAAc-4119I:APA91bF7FlFQAFg0TLhFso4L4tI69PwV6eF6Xwx-xi1_VPzqHsTHJwM2-8njtcoI1qR5FYDXeI_GHYsuNqrAz81qLmL_W6-WcOYtHjDlR1DdPz-7LEzw8-545P49P08oOe5BI7cyT2iK', '{\"type\":\"sandbox\",\"merchant_id\":\"h6gtn2qpmrmhyf2h\",\"public_key\":\"mh8kpjy4dnmcxwgt\",\"private_key\":\"d96892008b6000b7136124aa1aafb523\"}');

-- --------------------------------------------------------

--
-- Table structure for table `fc_storefollowers`
--

CREATE TABLE `fc_storefollowers` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `follow_user_id` int(11) DEFAULT NULL,
  `followed_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_storefollowers`
--

INSERT INTO `fc_storefollowers` (`id`, `store_id`, `follow_user_id`, `followed_on`) VALUES
(1, 2, 89, '2020-07-07 09:27:12'),
(2, 102, 173, '2020-12-21 07:35:11'),
(3, 107, 179, '2020-12-22 04:42:49'),
(4, 107, 180, '2020-12-22 06:48:11'),
(5, 2, 192, '2020-12-24 15:06:58'),
(6, 85, 192, '2020-12-24 15:07:02'),
(7, 84, 192, '2020-12-24 15:07:05'),
(8, 105, 192, '2020-12-24 15:07:08'),
(9, 107, 192, '2020-12-24 15:07:12'),
(10, 111, 192, '2020-12-24 15:07:16'),
(11, 102, 192, '2020-12-24 15:07:20'),
(12, 119, 192, '2020-12-24 15:07:23'),
(13, 2, 70, '2021-02-24 10:42:53'),
(18, 139, 70, '2021-02-24 11:02:17'),
(19, 133, 70, '2021-02-24 11:02:22'),
(21, 105, 70, '2021-02-24 11:02:32'),
(22, 107, 70, '2021-02-24 11:02:36'),
(24, 2, 214, '2021-04-02 09:21:03'),
(25, 133, 214, '2021-04-02 09:21:07'),
(26, 130, 214, '2021-04-02 09:21:12'),
(28, 2, 216, '2021-04-05 10:48:07'),
(30, 85, 216, '2021-04-05 10:49:17'),
(31, 111, 216, '2021-04-05 10:49:21'),
(32, 133, 216, '2021-04-05 10:49:24'),
(33, 139, 216, '2021-04-05 10:49:28'),
(35, 85, 217, '2021-04-12 10:13:32'),
(36, 2, 217, '2021-04-13 08:32:54'),
(37, 85, 70, '2021-04-16 07:41:23'),
(38, 84, 70, '2021-04-16 07:41:24'),
(39, 111, 70, '2021-04-16 07:41:26'),
(40, 119, 70, '2021-04-16 07:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `fc_styles`
--

CREATE TABLE `fc_styles` (
  `id` int(11) NOT NULL,
  `style_name` varchar(200) NOT NULL,
  `cretaed_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_taxes`
--

CREATE TABLE `fc_taxes` (
  `id` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `countryname` varchar(50) NOT NULL,
  `taxname` varchar(50) NOT NULL,
  `percentage` varchar(6) NOT NULL,
  `status` enum('enable','disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_taxes`
--

INSERT INTO `fc_taxes` (`id`, `countryid`, `countryname`, `taxname`, `percentage`, `status`) VALUES
(1, 232, 'United States', 'VAT', '1', 'enable'),
(2, 100, 'India', 'GST', '2', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `fc_tempaddresses`
--

CREATE TABLE `fc_tempaddresses` (
  `shippingid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address1` varchar(60) NOT NULL,
  `address2` varchar(60) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `countrycode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_tempaddresses`
--

INSERT INTO `fc_tempaddresses` (`shippingid`, `userid`, `nickname`, `name`, `address1`, `address2`, `city`, `state`, `country`, `zipcode`, `phone`, `countrycode`) VALUES
(1, 73, 'kiruba', 'kiruba', 'madurai', '', 'madurai', 'tamilnadu', 'India', '625501', '9597448533', 100),
(2, 70, 'wjjw', 'amwam', '1st St', 'uwhw', 'Chinna Chokikulam', 'Tamil Nadu', 'United States', '625002', '499416616', 232),
(3, 75, 'kaalis', 'Kalidass', '12a ', 'saint fransis 2nd street', 'fransiso', 'california', 'American Samoa', '12546', '1234567890', 4),
(4, 78, 'ewq', 'weqqew', 'ewq', 'eqweqw', 'dsaads', 'saddas', 'United States', 'sdaads', '324432432243', 232),
(5, 77, 'vvvn', 'xhjchchcxh', 'uxxhhxx', 'dchxhxt', 'vtcr', 'xf g', 'United States', 'xtcyn8ubtc', '8550556868', 232),
(6, 85, 'Hsjsh shsh', 'Shahjahan', 'Shhsjsjs', 'Nzznznnzzn', 'Bznz bznz', ' Bznz bznz', 'United States', 'Bsbsbs', '845454', 232),
(7, 87, 'utuy', 'ygf', 'yddyyfcy', 'yfgfy', 'fyuf', 'jggu', 'Anguilla', 'chcuuf', '6868628386806', 7),
(8, 90, 'kiran', 'Raj', 'weri', 'eori', 'eoiw', 'dfs', 'India', 'sdioe-02', '3209329023', 100),
(9, 93, 'True', 'Fufu', 'Hdhd', 'Uffu', 'Chjggj', 'Jghffu', 'United States', 'Jcjcjccj', '585842575755555', 232),
(10, 91, 'Shhs shhs', 'Hshsh', 'Hshs', 'Shhs', 'Dhdhhd', 'Jzjd', 'United States', 'Hdhdhd', '9876543210', 232),
(11, 92, 'Dhhd', 'Hdhd', 'Dhhd', 'She', 'Gfdh', 'Hchc', 'United States', 'Jghffu', '56865675754353', 232),
(12, 94, 'hehe', 'hdhe', 'eiue', 'ueue', 'dhhd', 'bdhd', 'United States', 'dnjdhd', '67655455464645', 232),
(13, 95, 'aruna', 'aruna', 'aruna', 'aruna', 'madurai', 'tamilnadu', 'India', '625002', '9876543210', 100),
(14, 96, 'utyfuf', 'testst', 'fyyfydd', 'yfjgyu', 'madurai', 'tamilnadu', 'United States', '625002', '9876543210', 232),
(15, 100, 'home', 'aruna', 'kamala 2nd street', 'chinnachokikulam', 'Madurai', 'tamilnadu', 'Indonesia', '630561', '324432432243', 101),
(16, 98, 'test', 'testtest', 'address', 'address', 'madurai', 'tamilnadu', 'India', '625002', '98765210', 100),
(17, 73, 'sjjsjsi', 'nsjsjs', 'skisksis', 'suissi', 'suisjs', 'sass', 'United States', '377373', '9500737315', 232),
(18, 81, 'jsjsjsks', 'ramnafh', 'sjjsjs', 'sjsjjsj', 'madurai', 'tamilnadu', 'India', '625104', '9500737315', 100),
(19, 125, 'Preethi', 'Aruna', 'Kamala 2nd street', 'chinnachokikulam', 'madurai', 'tamilnadu', 'India', '625002', '9876543210', 100),
(20, 126, 'gecu', 'kkkl', 'crt', 'gff', 'vdtg', 'tani', 'India', 'bgt', '825', 100),
(21, 127, 'hffhhf', 'ydfh', 'fyiuofo7', '9utufi', 'madurai', 'tamolnadu', 'United States', '625002', '9856321470', 232),
(22, 128, 'test', 'test', 'tesr', 'test', 'maduraj', 'tamilnadu', 'United States', 'shus', '9876543210', 232),
(23, 74, 'kiruba', 'kirubakaran', 'madurai alanganallur', 'kallanai', 'madurai', 'tamilnadu', 'India', '625501', '9594665665', 100),
(24, 130, 'Test', 'Test', 'Hey do ', 'You know I can ', 'Madurai', 'Tamilnadu', 'United States', '625002', '987654321064', 232),
(25, 131, 'aruna', 'Aruna', 'kamala 2nd street', 'chinnachokikulam', 'madurai', 'tamilnadu', 'India', '625002', '9876543210', 100),
(26, 133, 'Ashok', 'Ashok', 'Address qwerty ', 'Address qwerty', 'Hsjsh', 'Shhsjs', 'India', 'Hahahaha', '546344361', 100),
(28, 132, 'tet', 'test', 'address1', 'address2', 'madurai', 'tamilandu', 'India', '625002', '9876543210', 100),
(29, 136, 'yiyd', 'dtjgj', 'yes', 'yioyro', 'yiiy', 'tdydfy', 'Argentina', 'tudggd', '55685756575', 10),
(30, 74, 'bal', 'bala', 'vilapuram', 'villapuram', 'madurai', 'tamilnadu', 'India', '625505', '956646496', 100),
(31, 135, 'home', 'Roby', 'yes', 'yioyro', 'yiiy', 'tdydfy', 'Argentina', 'tudggd', '55685756575', 10),
(32, 138, 'Nickname', 'Namnewe', 'Address1', 'Address2', 'madurai', 'tamilandu', 'United States', '6250020', '9876543210', 232),
(33, 138, 'new', 'new', 'new', 'new', 'new', 'new', 'Aruba', '6155252', '6546978312', 12),
(34, 139, 'test', 'test', 'test', 'test', 'madurai', 'tamilnadu', 'United States', '625002', '987653280', 232),
(35, 141, 'aruna', 'aruna', 'address1', 'qddress2', 'madurai', 'tamilnadu', 'United States', '6250026', '9876543210', 232),
(36, 140, 'Aruna', 'Aruna', 'Address1', 'Address2', 'Madurai', 'Tamilnadu', 'United States', '625002', '9876543210', 232),
(37, 142, 'aruna', 'aruna', 'address 1', 'address 2', 'maduraii', 'tamilnadu', 'India', '625002', '98765432123456', 100),
(38, 142, 'nick', 'nick', 'address1', 'address2', 'madurai', 'test', 'United States', '625002', '987654567', 232),
(39, 107, 'Qwerty', 'Qwerty ', 'Sbs sjjs', 'Bsbsbs', 'Shhsjsjs', 'Bxxbsbsk', 'India', 'Bdbdnnd', '84845', 100),
(40, 100, 'jsjsjsj', 'nsjsjs', 'susuusisis', 'sujsjsjsj', 'njsjsjs', 'nxjsjxj', 'United States', '73737', '9500737315', 232),
(41, 145, 'preethi', 'aruna', 'kamala 2nd street ', 'chinnachokikualm ', 'madurai', 'tamilnadu', 'India', '625002', '987654323456', 100),
(42, 145, 'test', 'test', 'test', 'test', 'madurai', 'tamilnadu', 'United States', '625002', '98765432123456', 232),
(43, 146, 'King', 'mixiaomi', 'Aaaaa', 'Bbbbb', 'Xbxbbbd', 'Xbbdbd', 'India', '625401', '9876554323', 100),
(44, 148, 'preethi', 'aruna', 'aruna', 'dsfdsf', 'asdasd', 'dfsfds', 'United States', 'asdasdads', '2234324423423', 232),
(45, 152, 'preethi', 'aruna', 'address1', 'address2', 'madurai', 'tamilnadu', 'India', '625002', '234423234243234', 100),
(46, 152, 'test', 'test', 'test', 'test', 'madurai', 'tamilnadu', 'United States', '625002', '8765434567', 232),
(47, 153, 'Test', 'Test', 'Address', 'Address', 'Madurai', 'Tamilnadu', 'United States', '625002', '9856321407', 232),
(48, 97, 'nsjsjsj', 'nsjsjsj', 'susuus', 'shjsjs', 'sjjsjs', 'susuus', 'United States', 'susjjs', '455464', 232),
(49, 89, 'gggrr', 'ggghh', 'tttyggg', 'ffggggh', 'gggy', 'gyyy', 'United States', 'hyhy', '625104', 232),
(50, 157, 'nivash', 'nivash', 'ghandhi street', 'near magal', 'gotham', 'gotham', 'United States', '53540', '9597477852', 232),
(51, 157, 'velu', 'velu', 'malai kovik street', 'near stage', 'Madurai', 'tamilnadu', 'India', '625501', '9564621661', 100),
(52, 161, 'gdsfg', 'asfgdf', 'sdfgsdfg', 'sdfgsdfg', 'sergserg', 'sdrgsd', 'India', '123456', '12345645364', 100),
(53, 169, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9749387497', 100),
(54, 162, 'demo', 'demo', 'southstreet', 'anuppanadi', 'madurai', 'tamilnadu', 'India', '625009', '9999999999', 100),
(55, 171, 'test', 'test', 'weststreet', 'annanagar', 'madurai', 'tamilnadu', 'United States', '625001', '9938387453', 232),
(56, 171, 'dfdsf', 'fdsf', 'ddsfsd', 'fdsfsdf', 'fdsf', 'dsf', 'American Samoa', 'dsf', '9999999999', 4),
(57, 162, 'fdsfsf', 'fdsf', 'fdsfsf', '', 'dfsdf', 'fdsfsf', 'United States', 'fsfsdfsdf', '9787867867868', 232),
(58, 174, 'kar', 'karthika', '567', 'middle street', 'rajapalayam', 'tamil nadu', 'India', '626102', '8765432109', 100),
(59, 174, 'trw', 'wer', '254', 'mill street', 'united states', 'united states', 'United States', '626102', '9876543210', 232),
(60, 176, 'eeeeee', 'example', '345', 'west street', 'united states', 'united states', 'United States', '678934', '9876543210', 232),
(61, 179, 'sssss', 'aaaaaa', 'aaaaaaaa', 'ssssssss', 'aasss', 'asassssss', 'India', '5645645', '96325874410', 100),
(62, 180, 'The king of jungle', 'Lion', 'qqqq', 'qqq', 'sdfsdfsd', 'sdfsdfsdf', 'India', '625402', '132456498749', 100),
(63, 183, 'real', 'realname', '122', 'west street', 'united states', 'united states', 'India', '123456', '8765431290', 100),
(64, 178, 'asas', 'saa', 'asas', 'asassa', 'asasasas', 'asasassa', 'India', '625402', '9876325410', 100),
(65, 183, '2address', 'adress', '123', 'east street', 'united states', 'united states', 'United States', '123456', '8765431290', 232),
(66, 184, 'cat', 'cat', 'aaaaa', 'aaaaaa', 'aaaaaa', 'aaaa', 'India', '625402', '9632541000', 100),
(67, 186, 'dem', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(68, 187, 'aaaaaaaa', 'aaaa', 'aaaaa', 'aaa', 'aaaaaaa', 'aaaa', 'India', '625402', '132456498749', 100),
(69, 188, 'dddddddddd', 'addddddd', 'ddddddd', 'ddddd', 'aaaaaaaaaa', 'aaaaaaa', 'India', '6543231', '9632587410', 100),
(70, 193, 'sasasas', 'ssssasa', 'asasasa', 'sasasasas', 'sasasas', 'sasasasa', 'United States', 'asasasasas', '645464654654', 232),
(71, 192, 'fsdfdsfsdfsdfsd', 'sdfsdfdfssfd', 'fdsfsddffdsfsddfs', 'fsddfsfsdfsd', 'sdadsadsasda', 'dasdasdasd', 'United States', 'sdasdasdadsadsa', '5454654654', 232),
(72, 194, 'dfdsf', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(73, 196, 'hello', 'well', 'hdfc', 'west street', 'united states', 'united states', 'United States', '``````````````````', '8765431290', 232),
(74, 197, 'sdsdsadasdas', 'ssdsadsd', 'dasdsadsadasdsadsa', 'dasdsadsaasddsa', 'dffsdsdffds', 'dsadsadsadsadsa', 'United States', 'fsdsdffsdfsdd', '25245454554', 232),
(75, 182, 'gmee', 'qqqqqqq', 'sdf', 'middle street', 'united states', 'united states', 'United States', '34565654', '4474433', 232),
(76, 199, 'sam', 'sampe', 'erttt', 'west street', 'united states', 'united states', 'United States', '654321', '879834567', 232),
(77, 185, 'fdsfdsf', 'demo', 'southstreet', '', 'madurai', 'tamilnadu', 'India', '625009', '99999999999', 100),
(78, 201, 'ewrewfsfa', 'ttttttt', '3452', 'west street', 'united states', 'united states', 'United States', '764234', '3773567367', 232),
(79, 205, 'testt', 'test', '345 ', 'middle street', 'united states', 'united states', 'United States', '6534789', '8762525525', 232),
(80, 206, 'mail', 'mail', '7643', 'west street', 'united states', 'united states', 'United States', '7642423', '87653456588', 232),
(81, 207, 'reallll', 'realname', '346', 'middle street', 'united states', 'united states', 'United States', '56343', '367575878', 232),
(82, 208, 'asgggs', 'testtt', '245', 'west street', 'united states', 'united states', 'United States', '3476367', '7848745865', 232),
(83, 210, 'test', 'test', '3555', 'west street', 'united states', 'united states', 'India', '3565652', '7347576447', 100),
(84, 210, 'reallllll', 'realll', '34522', 'west street', 'united states', 'united states', 'United States', '3563636', '568857858', 232),
(85, 214, 'Arty', 'Artemis fowl', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'Ireland', '23243', '09876543210', 104),
(86, 214, 'Athena', 'Athena', 'Fowl manor', 'Dublin', 'Ireland', 'Ireland', 'India', '23243', '09876543210', 100),
(87, 216, 'asdfasdf', 'asdfasd', 'asdfasd', 'asdfasdf', 'asdfasdfasdf', 'fasdfasdf', 'India', 'asdsfasdfa', '8445645656', 100),
(88, 217, 'asdfadsfas', 'aadsfadsf', 'fas', 'asdfadsfa', 'sdfasdf', 'asdfasdfasd', 'India', 'sdfasdfasd', '9878784', 100),
(89, 223, 'joker', 'joker', 'hitasoft', 'hitasoft', 'madurai', 'Tamil Nadu', 'India', '625009', '9876543210', 100),
(90, 224, 'vishnu', 'Sandbox Unknown', 'hitahjn', 'gnvg', 'mad', 'tn', 'India', '4689', '67656464353586', 100);

-- --------------------------------------------------------

--
-- Table structure for table `fc_trackdetails`
--

CREATE TABLE `fc_trackdetails` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `shippingdate` int(11) NOT NULL,
  `couriername` varchar(100) NOT NULL,
  `courierservice` varchar(100) NOT NULL,
  `trackingid` varchar(100) NOT NULL,
  `notes` tinytext NOT NULL,
  `reason` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fc_trackingdetails`
--

CREATE TABLE `fc_trackingdetails` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `merchantid` int(11) NOT NULL,
  `buyername` varchar(60) NOT NULL,
  `buyeraddress` varchar(200) NOT NULL,
  `shippingdate` int(11) NOT NULL,
  `couriername` varchar(100) NOT NULL,
  `courierservice` varchar(100) DEFAULT NULL,
  `trackingid` varchar(100) NOT NULL,
  `notes` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_trackingdetails`
--

INSERT INTO `fc_trackingdetails` (`id`, `orderid`, `status`, `merchantid`, `buyername`, `buyeraddress`, `shippingdate`, `couriername`, `courierservice`, `trackingid`, `notes`) VALUES
(1, 3, 'Processing', 154, '', 'sjjsjs,<br />sjsjjsj,<br />madurai - 625104,<br />tamilnadu,<br />India,<br />Ph. : 9500737315.<br />', 1594080000, 'Vegin', 'vegin courier', '123322', 'vegin courier'),
(2, 9, 'Processing', 154, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', '3f444g4v4', 'vegin courier'),
(3, 11, 'Processing', 154, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'dsfsdf8293', 'vegin courier'),
(4, 13, 'Processing', 154, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'sdsdsd89s', 'vegin courier'),
(5, 20, 'Processing', 154, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'efr44', 'vegin courier'),
(6, 1, 'Processing', 71, '', 'sjjsjs,<br />sjsjjsj,<br />madurai - 625104,<br />tamilnadu,<br />India,<br />Ph. : 9500737315.<br />', 1594080000, 'vegin courier', 'courier service', '1234eee', 'vegin courier'),
(7, 2, 'Processing', 71, '', 'sjjsjs,<br />sjsjjsj,<br />madurai - 625104,<br />tamilnadu,<br />India,<br />Ph. : 9500737315.<br />', 1594080000, 'vegin courier', 'vegin courier', 'VGC123', 'vegin courier'),
(8, 5, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'CVSSW9', 'vegin courier'),
(9, 10, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'VGC987', 'vegin courier'),
(10, 12, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'VMNXJ2', 'vegin courier'),
(11, 14, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'LKOXS11', 'vegin courier'),
(12, 15, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'MKXOXI11', 'vegin courier'),
(13, 23, 'Processing', 71, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'vegin courier', 'vegin courier', 'PPOISI2', 'vegin courier'),
(14, 24, 'Processing', 155, 'nivash', 'malai kovik street,<br />near stage,<br />Madurai - 625501,<br />tamilnadu,<br />India,<br />Ph. : 9564621661.<br />', 1594080000, 'kiruba', 'kiruba', '39797', 'shipped success'),
(15, 25, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1594080000, 'kiruba', 'kiruba', '779898', 'shipped success'),
(16, 26, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1593993600, 'kali', 'kali', '239873', 'shipped success'),
(17, 21, 'Processing', 155, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'viswa', 'viswa', '1098', 'shipped success'),
(18, 19, 'Processing', 155, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'viki', 'viki', '90973', 'shipped success'),
(19, 18, 'Processing', 155, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'kali', 'kali', '39487', 'shipped success'),
(20, 17, 'Processing', 155, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'viki', 'viki', '5987498', 'shipped success'),
(21, 16, 'Processing', 155, 'Ramnath', 'tttyggg,<br />ffggggh,<br />gggy - hyhy,<br />gyyy,<br />United States,<br />Ph. : 625104.<br />', 1594080000, 'manoj', 'manoj', '598098', 'shipped success'),
(22, 27, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1594080000, 'viki', 'viki', '67987', 'shipped success'),
(23, 28, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1594080000, 'viki', 'viki', '770897', 'shipped success'),
(24, 29, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1594080000, 'viki', 'viki', '67098', 'shipped success'),
(25, 30, 'Processing', 155, 'nivash', 'ghandhi street,<br />near magal,<br />gotham - 53540,<br />gotham,<br />United States,<br />Ph. : 9597477852.<br />', 1594080000, 'viswa', 'viswa', '67897', 'shipped success'),
(26, 34, 'Processing', 71, 'Testt', 'sdfgsdfg,<br />sdfgsdfg,<br />sergserg - 123456,<br />sdrgsd,<br />India,<br />Ph. : 12345645364.<br />', 1607040000, 'dfhxfgnn', 'xghyjtgcyj', 'cgthmjctgj', 'tgggggggggggggggggggg'),
(27, 64, 'Processing', 172, 'karthika', '254,<br />mill street,<br />united states - 626102,<br />united states,<br />United States,<br />Ph. : 9876543210.<br />', 1608508800, 'sample', 'sample', '32545', 'sdgsgggdggsgfdgs'),
(28, 65, 'Processing', 175, 'test', '345,<br />west street,<br />united states - 678934,<br />united states,<br />United States,<br />Ph. : 9876543210.<br />', 1608508800, 'example', 'example', '6', 'zsdfdsgdggdgdgdg'),
(29, 66, 'Processing', 175, 'test', '345,<br />west street,<br />united states - 678934,<br />united states,<br />United States,<br />Ph. : 9876543210.<br />', 1608508800, 'sample', 'sample', '67', 'zsfdgdfgfdgfd'),
(30, 69, 'Processing', 177, 'Bumbulbee', 'aaaaaaaa,<br />ssssssss,<br />aasss - 5645645,<br />asassssss,<br />India,<br />Ph. : 96325874410.<br />', 1608595200, 'asdasd', 'asdas', 'asdasd', 'asdasdasdas'),
(31, 74, 'Processing', 177, 'Lion', 'qqqq,<br />qqq,<br />sdfsdfsd - 625402,<br />sdfsdfsdf,<br />India,<br />Ph. : 132456498749.<br />', 1608595200, 'asas', 'asas', 'asas', 'asasasasasas'),
(32, 80, 'Processing', 177, 'Prime', 'asas,<br />asassa,<br />asasasas - 625402,<br />asasassa,<br />India,<br />Ph. : 9876325410.<br />', 1608681600, 'cvdxv', 'dfgdfg', 'dfgdfg', 'dfgdfgdfgdfg'),
(33, 81, 'Processing', 177, 'Prime', 'asas,<br />asassa,<br />asasasas - 625402,<br />asasassa,<br />India,<br />Ph. : 9876325410.<br />', 1608681600, 'aaaaa', 'ssssss', 'ddddddddddd', 'asdasdasdasdasdsadsaa'),
(34, 82, 'Processing', 177, 'Lion', 'qqqq,<br />qqq,<br />sdfsdfsd - 625402,<br />sdfsdfsdf,<br />India,<br />Ph. : 132456498749.<br />', 1608681600, 'qaaa', 'dddd', 'aaaaaaaa', 'assssssssssssssss'),
(35, 88, 'Processing', 177, 'nadesh', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608681600, 'fdsf', 'dfsff', 'fdsfsf', 'fdsfsdfsffdsfsdfsfsdf'),
(36, 89, 'Processing', 177, 'lakshmi', 'southstreet,<br />anuppanadi,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 9999999999.<br />', 1608681600, 'fdsf', 'fdsf', 'fdsf', 'fdsfdsffdsfdsf'),
(37, 91, 'Processing', 177, 'viji', 'weststreet,<br />annanagar,<br />madurai - 625001,<br />tamilnadu,<br />United States,<br />Ph. : 9938387453.<br />', 1608681600, 'cxdgd', 'fgdhg', '457665', 'fdhgfhddhdggh'),
(38, 92, 'Processing', 71, 'viji', 'weststreet,<br />annanagar,<br />madurai - 625001,<br />tamilnadu,<br />United States,<br />Ph. : 9938387453.<br />', 1608681600, 'fdsfs', 'fsdfsdf', 'fdsfsd', 'fdsfsdffdsfsdfsf'),
(39, 98, 'Processing', 189, 'sethu', 'fdsfsddffdsfsddfs,<br />fsddfsfsdfsd,<br />sdadsadsasda - sdasdasdadsadsa,<br />dasdasdasd,<br />United States,<br />Ph. : 5454654654.<br />', 1608768000, 'vcbcvbvc', 'vcbvcbcv', 'bvcbcvbcvbcv', 'bcvbcvbvcbvcbcvbvcbcvbcvbcv'),
(40, 97, 'Processing', 189, 'sethu', 'fdsfsddffdsfsddfs,<br />fsddfsfsdfsd,<br />sdadsadsasda - sdasdasdadsadsa,<br />dasdasdasd,<br />United States,<br />Ph. : 5454654654.<br />', 1608768000, 'dfssdfsdf', 'sdfsdfsdfsd', 'fsdfsdfdsfsdfsddfs', 'dfsfsdfsdfsdfsdfsdfsdfsdsdf'),
(41, 99, 'Processing', 189, 'sethu', 'fdsfsddffdsfsddfs,<br />fsddfsfsdfsd,<br />sdadsadsasda - sdasdasdadsadsa,<br />dasdasdasd,<br />United States,<br />Ph. : 5454654654.<br />', 1608940800, 'sdadasasdasd', 'saddsadasdas', 'sdadsadsadsdassa', 'dsadsadsadasasdasddsasdadsasdaasddsadsa'),
(42, 101, 'Processing', 189, 'nadesh', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608940800, 'fsdfsdf', 'sdfsfsdf', 'dfsfsdf', 'sdfsdfsdfsfsfsfsf'),
(43, 102, 'Processing', 189, 'nadesh', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608940800, 'fdsfdsf', 'fdsfsdf', 'fdsfsdf', 'dsfdsfsdffdsfsdfsdf'),
(44, 103, 'Processing', 189, 'nadesh', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608940800, 'fdf', 'fdsfdsf', 'fdsf', 'fdsfsdffdfdsfsf'),
(45, 104, 'Processing', 189, 'nadesh', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608940800, 'fdsf', 'dfsfsd', 'fdsfsdf', 'sdfsdfsdfsfdsfsf'),
(46, 107, 'Processing', 71, 'ram', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1608940800, 'fdsfdsf', 'fdsfsd', 'fdsfsdf', 'fdsfsdffdsfdfsd'),
(47, 109, 'Processing', 189, 'sing', 'dasdsadsadasdsadsa,<br />dasdsadsaasddsa,<br />dffsdsdffds - fsdsdffsdfsdd,<br />dsadsadsadsadsa,<br />United States,<br />Ph. : 25245454554.<br />', 1608940800, 'saddsad', 'ssdasdadsadsa', 'dsadssdadsa', 'dsasdasdadsadsfusadhfkjahjfhaskjdfhash'),
(48, 110, 'Processing', 189, 'sing', 'dasdsadsadasdsadsa,<br />dasdsadsaasddsa,<br />dffsdsdffds - fsdsdffsdfsdd,<br />dsadsadsadsadsa,<br />United States,<br />Ph. : 25245454554.<br />', 1608940800, 'vcvxcvxc', 'vxcvxvxccxv', 'cxvcvxcxvvxc', 'cxvvcxvxcvxcvcxvcxvcxvcxvcxcvxxvcvcx'),
(49, 111, 'Processing', 189, 'sing', 'dasdsadsadasdsadsa,<br />dasdsadsaasddsa,<br />dffsdsdffds - fsdsdffsdfsdd,<br />dsadsadsadsadsa,<br />United States,<br />Ph. : 25245454554.<br />', 1608940800, 'saddadsadsa', 'dsasdadsasda', 'dsadsadsasdasad', 'dsadsasdasdaaaaaaaaaaaaaasdsdadsasdasdadassda'),
(50, 113, 'Processing', 189, 'sing', 'asasasa,<br />sasasasas,<br />sasasas - asasasasas,<br />sasasasa,<br />United States,<br />Ph. : 645464654654.<br />', 1608940800, 'dfsddfsd', 'fdsfdsfdsfdsf', 'fdsfsdfdsfdsfdsfds', 'fdsfdsfdsdfsfsdfdsfds'),
(51, 76, 'Processing', 181, 'facebook', '123,<br />east street,<br />united states - 123456,<br />united states,<br />United States,<br />Ph. : 8765431290.<br />', 1608940800, 'ewrwrw', 'werwer', '1234', 'zdfdggggggggggggggggggg'),
(52, 115, 'Processing', 189, 'sing', 'dasdsadsadasdsadsa,<br />dasdsadsaasddsa,<br />dffsdsdffds - fsdsdffsdfsdd,<br />dsadsadsadsadsa,<br />United States,<br />Ph. : 25245454554.<br />', 1608940800, 'xzxcxzcxzzc', 'xczcxzxczcxzcxz', 'cxzcxzcxzxczxczcxz', 'cxzcxzcxzcxzcxzcxzcxzcxzcxzcxz'),
(53, 116, 'Processing', 181, 'facebook', '123,<br />east street,<br />united states - 123456,<br />united states,<br />United States,<br />Ph. : 8765431290.<br />', 1608940800, 'example', 'example', '1234', 'asfssssssssssssssssss'),
(54, 117, 'Processing', 71, 'sethu', 'fdsfsddffdsfsddfs,<br />fsddfsfsdfsd,<br />sdadsadsasda - sdasdasdadsadsa,<br />dasdasdasd,<br />United States,<br />Ph. : 5454654654.<br />', 1608940800, 'ccxcxzzxcxzc', 'xczcxzcxzcxz', 'cxzcxzcxzcxzcxz', 'xczcxzcxzcxzcxzcxz'),
(55, 118, 'Processing', 189, 'sing', 'dasdsadsadasdsadsa,<br />dasdsadsaasddsa,<br />dffsdsdffds - fsdsdffsdfsdd,<br />dsadsadsadsadsa,<br />United States,<br />Ph. : 25245454554.<br />', 1608940800, 'dfdsfdsds', 'fsddfsdfsfds', 'dfsfsdfsdffsdfsdfsd', 'sfdfsdfsdfdsdfsfdsffsdfsdfdsfdsfsdfsdfsd'),
(56, 120, 'Processing', 189, 'share', 'asasasa,<br />sasasasas,<br />sasasas - asasasasas,<br />sasasasa,<br />United States,<br />Ph. : 645464654654.<br />', 1608940800, 'xczdsdsdfsd', 'dsfdfsdsfsfdfsd', 'dsffsddfsdfsfsdfsd', 'dsffddfssdffsdsfddfsdfsdsfdsdfsfsdsfd'),
(57, 121, 'Processing', 189, 'deepthi', 'southstreet,<br />madurai - 625009,<br />tamilnadu,<br />India,<br />Ph. : 99999999999.<br />', 1608940800, 'fdsfds', 'fdsfsd', 'ffdsfds', 'fsdfsdfsdsdfsdfdsf'),
(58, 124, 'Processing', 200, 'lilly water', 'sdf,<br />middle street,<br />united states - 34565654,<br />united states,<br />United States,<br />Ph. : 4474433.<br />', 1608940800, 'sample', 'sample', '877765', 'awefsdsfgfdgfdg'),
(59, 125, 'Processing', 189, 'share', 'asasasa,<br />sasasasas,<br />sasasas - asasasasas,<br />sasasasa,<br />United States,<br />Ph. : 645464654654.<br />', 1608940800, 'ddsadsdsdsasda', 'adsdsadsadsa', 'dsasdasdaasdsda', 'asdsdasdadssadasddsaasdasdasddsadasds'),
(60, 127, 'Processing', 181, 'linkfacebook', '3452,<br />west street,<br />united states - 764234,<br />united states,<br />United States,<br />Ph. : 3773567367.<br />', 1608940800, 'test', 'test', '12345', 'agdagdfgfgf'),
(61, 128, 'Shipped', 203, 'testemail', '345 ,<br />middle street,<br />united states - 6534789,<br />united states,<br />United States,<br />Ph. : 8762525525.<br />', 1609372800, 'servicesss', 'service', '345', 'test test test test'),
(62, 129, 'Processing', 203, 'secondmail', '7643,<br />west street,<br />united states - 7642423,<br />united states,<br />United States,<br />Ph. : 87653456588.<br />', 1609372800, 'test service', 'test  service', '345', 'test test test test test'),
(63, 130, 'Processing', 203, 'samplefacebook', '346,<br />middle street,<br />united states - 56343,<br />united states,<br />United States,<br />Ph. : 367575878.<br />', 1609372800, 'serive', 'serive', '585874', 'agafdgnjfgsdfg'),
(64, 131, 'Shipped', 203, 'samplefacebook', '346,<br />middle street,<br />united states - 56343,<br />united states,<br />United States,<br />Ph. : 367575878.<br />', 1609372800, 'now', 'now', '123', 'welcome welcome'),
(65, 132, 'Processing', 203, 'samplefacebook', '346,<br />middle street,<br />united states - 56343,<br />united states,<br />United States,<br />Ph. : 367575878.<br />', 1609372800, 'qrawar', 'agafgag', '247647', 'adffdxbxcvbxcvb'),
(66, 133, 'Processing', 203, 'samplefacebook', '346,<br />middle street,<br />united states - 56343,<br />united states,<br />United States,<br />Ph. : 367575878.<br />', 1609372800, 'sgdfgd', 'fsdfgdfg', '3426', 'asgdfgadfgfdgfdg'),
(67, 136, 'Processing', 209, 'twitter', '34522,<br />west street,<br />united states - 3563636,<br />united states,<br />United States,<br />Ph. : 568857858.<br />', 1609718400, 'sample', 'sample', '234', 'zssgdgdsfgdfg'),
(68, 137, 'Processing', 209, 'twitter', 'sdf,<br />middle street,<br />united states - 34565654,<br />united states,<br />United States,<br />Ph. : 4474433.<br />', 1609718400, 'sample', 'sample', '1345445', '2asagdfgdfgfdgsdg'),
(69, 139, 'Processing', 209, 'twitter', '34522,<br />west street,<br />united states - 3563636,<br />united states,<br />United States,<br />Ph. : 568857858.<br />', 1609718400, 'write', 'write', '3476', 'zfbdfggdbfbfxhhfghxfgh'),
(70, 140, 'Processing', 209, 'twitter', '34522,<br />west street,<br />united states - 3563636,<br />united states,<br />United States,<br />Ph. : 568857858.<br />', 1609804800, 'testtttt', 'testtst', '346631', 'sdfgfsfgghg'),
(71, 142, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1614643200, 'fdf', 'dsfdsf', 'c344324', 'dsfdsfdfdsff'),
(72, 143, 'Processing', 215, 'Athena', 'Fowl manor,<br />Dublin,<br />Ireland - 23243,<br />Ireland,<br />Ireland,<br />Ph. : 09876543210.<br />', 1617321600, 'dfds', 'dsfdfs', '34324234', 'sfsdfdsdfdfdf'),
(73, 151, 'Processing', 215, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1617321600, 'kdsfjlkfdj', 'lkdjsfl', 'lkdjfldsf', 'kldjflsdfjdfdsf'),
(74, 152, 'Processing', 71, 'Ashok', 'asdfasd,<br />asdfasdf,<br />asdfasdfasdf - asdsfasdfa,<br />fasdfasdf,<br />India,<br />Ph. : 8445645656.<br />', 1617580800, 'asdfasdfasdf', 'asdfasdfasdfasdf', 'asdfasdfasdfasdfasdf', 'asdfasdf asdfasdf asdfasdfasdfasdfasdfasdfa'),
(75, 155, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1617753600, 'sdfdsfsdf', 'dsfdfsdf', 'sr23432', 'dsfdfdsfdfdsfsfsfsdfdfds'),
(76, 160, 'Processing', 71, 'Ashok', 'fas,<br />asdfadsfa,<br />sdfasdf - sdfasdfasd,<br />asdfasdfasd,<br />India,<br />Ph. : 9878784.<br />', 1618185600, 'sdsfdsfdsf', 'sdfsdfsdf', 'sdfdsfsdfsdf', 'dsfsdfdsfsdfdsf dfdsfdsfds ds\nfds\nfdsfdsfdsfs'),
(77, 161, 'Processing', 71, 'Ashok', 'asdfasd,<br />asdfasdf,<br />asdfasdfasdf - asdsfasdfa,<br />fasdfasdf,<br />India,<br />Ph. : 8445645656.<br />', 1618185600, 'asdfasdfasdf', 'asdfasdfasd', 'asdfa sdf', 'a sdf asdfasd asdfsadfasdfsad'),
(78, 167, 'Processing', 71, 'Ashok', 'fas,<br />asdfadsfa,<br />sdfasdf - sdfasdfasd,<br />asdfasdfasd,<br />India,<br />Ph. : 9878784.<br />', 1618358400, 'azcZXcaadsfsadf', 'sdfsadfadsfasdf adsfsad', 'fasdfdsfsd adfasdfasdfasf', 'asdfas fadsfadsfasdfasd asdfadsfasdf'),
(79, 168, 'Processing', 71, 'Ashok', 'fas,<br />asdfadsfa,<br />sdfasdf - sdfasdfasd,<br />asdfasdfasd,<br />India,<br />Ph. : 9878784.<br />', 1618358400, 'adasdfasd', 'fsdfasdfasdf', 'asdfasdfasd', 'asdfasdf adfasdfadsfasdfasfdasfd'),
(80, 173, 'Processing', 71, 'Joker', 'hitasoft,<br />hitasoft,<br />madurai - 625009,<br />Tamil Nadu,<br />India,<br />Ph. : 9876543210.<br />', 1619568000, 'habwdb', 'nakjwbdka', '12345678', 'demo testawdkjbakwbd'),
(81, 149, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1619654400, 'dvxdv', 'dsf', '12345678', 'sfashcbasvhdjaw'),
(82, 174, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1619654400, 'efsef', 'awdaw', '1234567890', 'dwawdawdawdawd'),
(83, 175, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1619654400, 'sdasdawd', 'awdawd', '1234567890', 'wdrgthklo765es'),
(84, 176, 'Processing', 71, 'DemoUser', '1st St,<br />uwhw,<br />Chinna Chokikulam - 625002,<br />Tamil Nadu,<br />United States,<br />Ph. : 499416616.<br />', 1619740800, '1234567890', '123456789', '876543211234', 'wdefrgthyjuki;pjhgf'),
(85, 177, 'Processing', 71, 'vishnu', 'hitahjn,<br />gnvg,<br />mad - 4689,<br />tn,<br />India,<br />Ph. : 67656464353586.<br />', 1619740800, '1234567', '9876543', '123456789', 'asdfghujikloyhgfdcx'),
(86, 178, 'Processing', 71, 'vishnu', 'hitahjn,<br />gnvg,<br />mad - 4689,<br />tn,<br />India,<br />Ph. : 67656464353586.<br />', 1619740800, '3e4567i', 'dfghj,mnbvc', 'sdcfvgbnmnbdsa', 'asdfghnmnbvcxa'),
(87, 179, 'Processing', 71, 'vishnu', 'hitahjn,<br />gnvg,<br />mad - 4689,<br />tn,<br />India,<br />Ph. : 67656464353586.<br />', 1619740800, '1234567', '234567', '23456789', 'drfghjkl;lkjhgfdszxcg'),
(88, 181, 'Processing', 71, 'Joker', 'hitasoft,<br />hitasoft,<br />madurai - 625009,<br />Tamil Nadu,<br />India,<br />Ph. : 9876543210.<br />', 1619740800, '123456', '123456', '12345678', '23456789oijhgcx');

-- --------------------------------------------------------

--
-- Table structure for table `fc_userbankinfos`
--

CREATE TABLE `fc_userbankinfos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bankAccNo` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fc_userdevices`
--

CREATE TABLE `fc_userdevices` (
  `id` int(11) NOT NULL,
  `deviceToken` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `badge` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `mode` int(11) NOT NULL DEFAULT 0,
  `cdate` int(11) DEFAULT NULL,
  `deviceId` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fc_userdevices`
--

INSERT INTO `fc_userdevices` (`id`, `deviceToken`, `user_id`, `badge`, `type`, `mode`, `cdate`, `deviceId`) VALUES
(2, 'fRvRYhfFM8s:APA91bHE7oW8-QdNpo0ljxSB5mR6WOXjIK8YW_tWojjympkHmkq-m3_nhI-57tU6GWJh7RADANkrrrkTFsflRNMvVyKURicWbjh4qnIGlBa1OJUc2D7yqjHmK5EdHVimXzMZlmOROF8A', 89, 50, 0, 1, 1594107179, '6A308D47-D3FF-45B1-B2E9-6DB636AE1804'),
(5, 'cf4r1WrIu8g:APA91bHTulO3C0CIcDHbOAIYi2qIbvJXcj6l_nQUGekAcPnufGVPi0z63mTmv1WRWR--EoF1jvdw89p45nhGMqA39Q891OHHFmh27ERyt8mL0BJHD3rfFQYA552wRKs8F0bW6nG1RbpH', 157, 17, 1, 0, 1594112137, 'bc5ede8cbbfe967e'),
(6, 'eoV_ENVGLvo:APA91bHNwK_x40xVWUxA7Z9W3mEmeipUUN1cEhleWeGvfkd5O5dsSk0WeT3j4k3VIK5_cU8eCIiK0Rdcbiwj2fLEjPCRCKUPttLsWAM0qIcY88ws_EdQFxqkL-hL5qmkHrix4unpDMs_', 70, 26, 1, 0, 1594123666, '44adda0d87b9f2bf'),
(7, 'fP76lq_mv4Q:APA91bEJGOHpLz9B9tlf4bf9zwc0OENoHt2bBiuXCEwr47ipl3UkeRSOlG9WPfFjz0lSTnOb9oayvsETephGbUcS3HI39MkneOI_rxmJlOxTHg-BD3pDdxGqLZjiU-EQ-5f3nKlDynmW', 158, 2, 1, 0, 1594246284, 'ff4372ca43092a76'),
(8, 'fJu2Co3HECc:APA91bHne4lSeBrdhsgBs968WPPhrVq8uKhJ48ca5m4TACQRXewtCpyXxZ_H_TAbuZpk5mb1IeH53Ii414rxBc1x5dHJDa0Q8HffuNBSNeyuVMoBwAb_7kXS6UcY_sTQXc0yy45_9WoO', 218, 1, 1, 0, 1618571238, 'e2737707a61bbdac'),
(9, 'dwoOmvesmlI:APA91bGAp9VHmy7dQUcK9msb3XBdkkJyhzubocIMc62LZ2tfZKhVOs644a66NMmd_7e96xkoi8abmqsN-_SYkoey1ES8Nt9cxt12w6iho3UjY_XTUCtn7fU2AAp7YDF9T5PwN1SnLzkM', 70, 1, 1, 0, 1618573114, '3b2f598fc596c5fa'),
(13, 'dg7YDJ5YbEQ:APA91bEyCm83rEuwQIPBDS1ILyeHTCstbK6lhDjJykU3gvUG2YSR3pMDc7bc8HN9s5T-CP1xMkU5zbVsnPyf9n-jrquSldN7CbGKDE7GE5JjiDrnia080S69wgpp4hjHrhEjbcOC8TrJ', 220, 1, 1, 0, 1618979750, '19e3eba058196188'),
(21, 'eQcewDCUFd0:APA91bHWtEKZysCx5S6nmrJ-X4-A_qBgqAaA9uhFp4uLBjTcBrNyhEP-52WSJ1Zgoeg6iKZn5lkdMy1KR0sk3-PqpdpSCKYx4CnXev8_nZvTp_B6XUpwHv4Gir0oTJcvxfWjApH8WdOU', 224, 14, 1, 0, 1619701589, '7a9323c1fa60465e'),
(12, 'dV7F3HWPOhE:APA91bEUL90iF7Z5vntUOmtuwCKFRy0HdTFE6Ul8nuWTPlCWTepsBXRZpkQOfd4pzPbt7e18M4MsWkXliIJHlMn86YdHw1CC_xvMmYMIN1Ol4E3MJN7QRm1NKexHd8SxAX8KZA-IRDzp', 70, 1, 1, 0, 1618921407, 'ea856164b554d292'),
(18, 'cUik9NgX06A:APA91bGG7bJe5jpte3iOzqo4kh56rPfzRkpNqhBHCtws-gvoGvt7Stea8sNmJtF_oFuvi93Sx3gGTrNuemePxHaMH83fSG-mATDGLZhDkGfMmzzyx9YZjYfiVbH1GkBqaozbm2iS2EdF', 223, 3, 1, 0, 1619616006, '4f345145b7a47b2b'),
(20, 'fV-W72h25I8:APA91bHktzRKH4p_U26kptovdLpYHhHpyojx7Ma2F5frSxjZWbqB55Tq65RGyTdGTGNC-O0nbMdIzOvJQfkpZG5NUbcIrdiV8XywTceZ1Qn6oB-2VINlEvwL3lac0dbhruRgWXU0ZaM5', 70, NULL, 0, 0, 1619682958, 'DE5E95DA-6B46-4F7E-B1B5-6889A98E80D7');

-- --------------------------------------------------------

--
-- Table structure for table `fc_userinvitecredits`
--

CREATE TABLE `fc_userinvitecredits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `invited_friend` int(11) DEFAULT NULL,
  `credit_amount` varchar(15) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `status` enum('Used','NotUsed') NOT NULL DEFAULT 'NotUsed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_userinvitecredits`
--

INSERT INTO `fc_userinvitecredits` (`id`, `user_id`, `invited_friend`, `credit_amount`, `cdate`, `status`) VALUES
(1, 128, 127, '100', 1592059235, 'Used'),
(2, 139, 138, '100', 1592984816, 'Used'),
(3, 171, 162, '100', 1608112500, 'Used'),
(4, 176, 70, '100', 1608548216, 'Used'),
(5, 180, 178, '100', 1608619796, 'Used'),
(6, 199, 182, '100', 1608988647, 'Used');

-- --------------------------------------------------------

--
-- Table structure for table `fc_userinvites`
--

CREATE TABLE `fc_userinvites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_email` varchar(150) NOT NULL,
  `invited_date` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_userinvites`
--

INSERT INTO `fc_userinvites` (`id`, `user_id`, `invited_email`, `invited_date`, `status`, `cdate`) VALUES
(1, 127, 'Ammu@mailinator.com', 1592058170, 'Joined', 1592058170),
(2, 138, 'web@mailinator.com', 1592980712, 'Joined', 1592980712),
(3, 162, 'aviji@hitasoft.com', 1608111722, 'Joined', 1608111722),
(4, 173, 'karthika@mailinator.com', 1608537250, 'Invited', 1608537250),
(5, 70, 'test@mailinator.com', 1608547869, 'Joined', 1608547869),
(6, 178, 'lion@mailinator.com', 1608619601, 'Joined', 1608619601),
(7, 182, 'anu@mailinato.com', 1608987442, 'Invited', 1608987442),
(8, 182, 'anu@mailinator.com', 1608987532, 'Invited', 1608987532),
(9, 182, 'google@mailinator.com', 1608987762, 'Joined', 1608987762),
(10, 204, 'facebooklink@mailinator.com', 1609404656, 'Invited', 1609404656),
(11, 204, 'refer@mailinator.com', 1609405271, 'Invited', 1609405271),
(12, 216, 'ashokhts2019@gmail.com', 1617622566, 'Invited', 1617622566),
(13, 216, 'asdfasdf@asdfc.dd', 1617622569, 'Invited', 1617622569);

-- --------------------------------------------------------

--
-- Table structure for table `fc_users`
--

CREATE TABLE `fc_users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `username_url` varchar(40) NOT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `age_between` varchar(10) NOT NULL,
  `user_level` enum('normal','god','shop','moderator') NOT NULL,
  `user_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `verify_pass` varchar(30) NOT NULL,
  `share_status` text DEFAULT NULL,
  `credit_points` int(11) DEFAULT NULL,
  `profile_image` varchar(20) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `about` varchar(180) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `joined_date` date NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `follow_count` int(11) NOT NULL,
  `login_type` enum('normal','twitter','facebook','apple') NOT NULL DEFAULT 'normal',
  `facebook_id` bigint(20) DEFAULT NULL,
  `token_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `twitter_id` varchar(40) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `google_id` varchar(50) DEFAULT NULL,
  `apple_id` varchar(250) NOT NULL,
  `referrer_id` varchar(100) NOT NULL DEFAULT '0',
  `credit_total` varchar(50) DEFAULT NULL,
  `refer_key` text NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` tinyint(4) NOT NULL DEFAULT 0,
  `subs` int(11) NOT NULL DEFAULT 1,
  `someone_follow` int(11) NOT NULL DEFAULT 1,
  `someone_show` int(11) NOT NULL DEFAULT 0,
  `someone_cmnt_ur_things` int(11) NOT NULL DEFAULT 0,
  `your_thing_featured` int(11) NOT NULL DEFAULT 0,
  `someone_mention_u` int(11) NOT NULL DEFAULT 0,
  `push_notifications` text NOT NULL,
  `unread_notify_cnt` int(11) NOT NULL,
  `unread_livefeed_cnt` int(11) NOT NULL,
  `featureditemid` int(11) NOT NULL,
  `defaultshipping` int(11) NOT NULL,
  `user_api_details` text NOT NULL,
  `admin_menus` text NOT NULL,
  `seller_ratings` varchar(3) NOT NULL,
  `currencyid` int(11) NOT NULL DEFAULT 1,
  `customer_id` varchar(40) NOT NULL,
  `checkdisabled` int(11) NOT NULL DEFAULT 0,
  `languagecode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fc_users`
--

INSERT INTO `fc_users` (`id`, `username`, `username_url`, `first_name`, `last_name`, `password`, `email`, `city`, `website`, `birthday`, `age_between`, `user_level`, `user_status`, `verify_pass`, `share_status`, `credit_points`, `profile_image`, `location`, `about`, `created_at`, `joined_date`, `modified_at`, `follow_count`, `login_type`, `facebook_id`, `token_key`, `secret_key`, `twitter_id`, `twitter`, `google_id`, `apple_id`, `referrer_id`, `credit_total`, `refer_key`, `gender`, `user_address`, `last_login`, `activation`, `subs`, `someone_follow`, `someone_show`, `someone_cmnt_ur_things`, `your_thing_featured`, `someone_mention_u`, `push_notifications`, `unread_notify_cnt`, `unread_livefeed_cnt`, `featureditemid`, `defaultshipping`, `user_api_details`, `admin_menus`, `seller_ratings`, `currencyid`, `customer_id`, `checkdisabled`, `languagecode`) VALUES
(1, 'Admin', 'admin', 'fantacy', 'fantacy', '$2y$10$QjfLQtj9R2omf6Igfqd/T.U6b66qZ7fXP.yGPtEWGhXCCKUrcaA1e', 'admin@fantacy.com', 'Chennai', '', '', '', 'god', 'enable', '', '', 0, '', NULL, NULL, '2017-12-09 05:41:23', '2013-03-15', '2013-02-28 06:32:24', 0, 'normal', NULL, NULL, NULL, '0', '', NULL, '', '0', NULL, '', 'male', NULL, '2016-08-04 00:02:00', 1, 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '', 0, '', 0, ''),
(70, 'Demo', 'demo', 'DemoUser', NULL, '$2y$10$ZOB3lEv0kNALKOTj2H2/NOeitheGAr0aKseDJ5ad9GmG4/wSMXdPW', 'demo@fantacy.com', 'Newyork', 'sds', '0-0-0', 'none', 'normal', 'enable', '', '[{\"1\":0,\"amount\":500},{\"1588586355\":0,\"amount\":0},{\"1589264947\":0,\"amount\":0},{\"1589780867\":0,\"amount\":0},{\"1592925413\":0,\"amount\":0},{\"1593187444\":0,\"amount\":0},{\"33\":0,\"amount\":150},{\"35\":0,\"amount\":300},{\"36\":0,\"amount\":300},{\"37\":0,\"amount\":300},{\"38\":0,\"amount\":150},{\"142\":0,\"amount\":500},{\"148\":0,\"amount\":385},{\"149\":0,\"amount\":900},{\"151\":0,\"amount\":4000},{\"155\":0,\"amount\":570},{\"156\":0,\"amount\":570},{\"157\":0,\"amount\":600},{\"159\":0,\"amount\":600},{\"163\":0,\"amount\":19400},{\"169\":0,\"amount\":126},{\"170\":0,\"amount\":540},{\"171\":0,\"amount\":755},{\"1618834908\":0,\"amount\":0},{\"174\":0,\"amount\":1753112},{\"1619686975\":0,\"amount\":0},{\"1619687824\":0,\"amount\":0}]', 8012, '1619700348_6.jpeg', NULL, '', '2019-01-09 06:32:33', '0000-00-00', '2019-01-09 06:32:33', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '112.65', 'aA79d536', '', NULL, '2021-04-29 10:16:27', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":1,\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":1,\"somone_likes_ur_item_push\":0,\"frends_flw_push\":1,\"frends_cmnts_push\":0}', 1, 0, 0, 2, '', '', '', 1, '344170931', 0, 'en'),
(71, 'demoseller', 'demoseller', 'Demo Seller', 'Seller', '$2y$10$PpntpukMRzzoUD5x5db./.EO//5Ch0Wo9kO5jHwD5oLno9bJsH9ay', 'seller@fantacy.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1594126713_71.jpg', NULL, NULL, '2019-01-09 06:36:59', '0000-00-00', '2019-01-09 06:36:59', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'c13cMJDK', NULL, NULL, '2020-07-04 08:09:09', 1, 1, 1, 0, 0, 0, 0, '', 6, 18, 0, 0, '', '', '3.9', 1, '', 0, ''),
(72, 'Moderator', 'Moderator', 'Demo', NULL, '$2y$10$.EWFgxykAL3MRiNFcihtGu0PvwqSS/zkYZUI0ipNSn3HmO6zq39.e', 'moderator@fantacy.com', '', '', '', '', 'moderator', 'enable', '', NULL, NULL, '', NULL, NULL, '2019-01-09 07:07:18', '0000-00-00', '2019-01-09 07:07:18', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n          \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n          \"frends_flw_push\":0,\"frends_cmnts_push\":0}', 0, 0, 0, 0, '', '[', '', 1, '', 0, ''),
(73, 'kiruba', 'kiruba', 'kiruba   ', NULL, '$2y$10$PLF2vSGVaWe3Qeno3nYoq.tCvdBsAAj8gx1yTNSKK2PZyklOKNIr.', 'jkirubakaran_usr@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"1585991389\":0,\"amount\":0},{\"1586334801\":0,\"amount\":0},{\"1588165108\":0,\"amount\":0},{\"1588234997\":0,\"amount\":0},{\"1588843389\":0,\"amount\":0},{\"1588844757\":0,\"amount\":0},{\"1589351380\":0,\"amount\":0},{\"1589780987\":0,\"amount\":0},{\"1589817100\":0,\"amount\":0},{\"1589817212\":0,\"amount\":0},{\"1589817430\":0,\"amount\":0},{\"1589817430\":0,\"amount\":0},{\"1590131356\":0,\"amount\":0},{\"1590375224\":0,\"amount\":0},{\"1590376116\":0,\"amount\":0},{\"1590554748\":0,\"amount\":0},{\"1590729207\":0,\"amount\":0},{\"1590989404\":0,\"amount\":0},{\"1591099603\":0,\"amount\":0},{\"1591244417\":0,\"amount\":0},{\"1591244591\":0,\"amount\":0},{\"1591682273\":0,\"amount\":0},{\"1591692126\":0,\"amount\":0},{\"1591857152\":0,\"amount\":0},{\"1591942842\":0,\"amount\":0},{\"1591943093\":0,\"amount\":0},{\"1592044953\":0,\"amount\":0},{\"1592045034\":0,\"amount\":0},{\"1592201140\":0,\"amount\":0},{\"1592222648\":0,\"amount\":0},{\"1592396415\":0,\"amount\":0},{\"98\":0,\"amount\":99.75},{\"1593057530\":0,\"amount\":0},{\"1593057937\":0,\"amount\":0},{\"1593066939\":0,\"amount\":0},{\"1593071179\":0,\"amount\":0},{\"1593073698\":0,\"amount\":0},{\"1593073778\":0,\"amount\":0},{\"1593073917\":0,\"amount\":0},{\"1593074041\":0,\"amount\":0},{\"1593074176\":0,\"amount\":0},{\"1593074708\":0,\"amount\":0},{\"1593074734\":0,\"amount\":0},{\"1593075166\":0,\"amount\":0},{\"1593077831\":0,\"amount\":0},{\"1593077851\":0,\"amount\":0},{\"1593077894\":0,\"amount\":0},{\"1593077994\":0,\"amount\":0},{\"1593078052\":0,\"amount\":0},{\"1593078327\":0,\"amount\":0},{\"1593078369\":0,\"amount\":0},{\"1593078416\":0,\"amount\":0},{\"1593078486\":0,\"amount\":0},{\"1593078536\":0,\"amount\":0},{\"1593078652\":0,\"amount\":0},{\"1593078758\":0,\"amount\":0},{\"1593082049\":0,\"amount\":0},{\"1593085322\":0,\"amount\":0},{\"1593086224\":0,\"amount\":0},{\"1593164759\":0,\"amount\":0},{\"190\":0,\"amount\":1.43},{\"191\":0,\"amount\":111},{\"192\":0,\"amount\":190},{\"1593271529\":0,\"amount\":0},{\"1593415356\":0,\"amount\":0},{\"265\":0,\"amount\":1000},{\"266\":0,\"amount\":1000},{\"380\":0,\"amount\":100},{\"381\":0,\"amount\":200},{\"382\":0,\"amount\":200},{\"384\":0,\"amount\":380},{\"387\":0,\"amount\":380},{\"1593621393\":0,\"amount\":0},{\"390\":0,\"amount\":380},{\"391\":0,\"amount\":380},{\"395\":0,\"amount\":380},{\"396\":0,\"amount\":380},{\"397\":0,\"amount\":400},{\"398\":0,\"amount\":380},{\"400\":0,\"amount\":380},{\"401\":0,\"amount\":380},{\"402\":0,\"amount\":380},{\"406\":0,\"amount\":380},{\"407\":0,\"amount\":380},{\"414\":0,\"amount\":200},{\"415\":0,\"amount\":400},{\"416\":0,\"amount\":570},{\"417\":0,\"amount\":600},{\"422\":0,\"amount\":570},{\"423\":0,\"amount\":570},{\"424\":0,\"amount\":1520},{\"425\":0,\"amount\":760},{\"428\":0,\"amount\":760},{\"429\":0,\"amount\":1.43},{\"431\":0,\"amount\":1244},{\"433\":0,\"amount\":1244},{\"435\":0,\"amount\":1204},{\"438\":0,\"amount\":860},{\"439\":0,\"amount\":1160},{\"440\":0,\"amount\":760}]', 8012, '1592224262_8.jpg', NULL, NULL, '2020-03-27 10:31:18', '0000-00-00', '2020-03-27 10:31:18', 0, 'normal', 1100697743632971, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '2020-07-03 19:05:30', 2, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":1,\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":1,\"somone_likes_ur_item_push\":\"1\",\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 1, 0, 0, 1, '{\"socialLoginDetails\":{\"facebookName\":\"J Kiruba\"}}', '', '', 1, '559711009', 0, 'en'),
(80, 'Arunmozhi', 'arunmozhi', 'Arunmozhi', 'Ganesan', '$2y$10$WcbsHE.GDbjsxXGLEZQzSu8QcmEejRt9skNoQre3Yh8X/3.Q.i2Ny', 'arunmozhi@hitasoft.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1589969838_80.jpg', NULL, NULL, '2020-04-27 12:51:39', '0000-00-00', '2020-04-27 12:51:39', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '3G68Dce8', NULL, NULL, '2020-06-25 11:25:31', 1, 1, 1, 0, 0, 0, 0, '', 1, 3, 0, 0, '', '', '', 1, '', 0, ''),
(84, 'khan', 'khan', 'khan', 'khan', '$2y$10$yjhrGluQSJFZsafbhmxr0eIUOn1SbJaXnpxGBzDYY1axIuLlu3yKi', 'khan@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-05-07 11:05:05', '0000-00-00', '2020-05-07 11:05:05', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'f3PdFEH8', NULL, NULL, '2020-05-07 11:09:04', 1, 1, 1, 0, 0, 0, 0, '', 2, 0, 0, 0, '', '', '', 1, '', 0, ''),
(88, 'arush', 'arush', 'arush', 'arush', '$2y$10$YrmhFfzDrhiIiT6OguCshOYxEZ0pSndGYT8cvoqySDjm/b48OVElu', 'arush@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-05-08 07:46:37', '0000-00-00', '2020-05-08 07:46:37', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'bNBBB2BB', NULL, NULL, '2020-06-25 11:25:02', 1, 1, 1, 0, 0, 0, 0, '', 7, 0, 0, 0, '', '', '', 1, '', 0, ''),
(89, 'Ramnath', 'ramnath', 'Ramnath ', NULL, '$2y$10$aPNJFI7n3EAZ/rwL/KDQUOMwEmi2Kj94siHs24s.tPmVDf7HqflNa', 'tramnath_usr@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"1594107962\":0,\"amount\":0},{\"1594107975\":0,\"amount\":0},{\"1594107991\":0,\"amount\":0},{\"1594108006\":0,\"amount\":0},{\"1594108036\":0,\"amount\":0},{\"1594108052\":0,\"amount\":0},{\"1594108099\":0,\"amount\":0},{\"1594108133\":0,\"amount\":0},{\"1594108168\":0,\"amount\":0},{\"1594108211\":0,\"amount\":0},{\"1594108586\":0,\"amount\":0},{\"1594108599\":0,\"amount\":0},{\"1594108613\":0,\"amount\":0},{\"1594108624\":0,\"amount\":0},{\"1594108636\":0,\"amount\":0},{\"1594108681\":0,\"amount\":0},{\"1594108695\":0,\"amount\":0},{\"1594108711\":0,\"amount\":0},{\"1594108741\":0,\"amount\":0},{\"1594127561\":0,\"amount\":0},{\"1594130658\":0,\"amount\":0}]', 8012, '1594114092_4.jpg', NULL, NULL, '2020-05-09 22:52:44', '0000-00-00', '2020-05-09 22:52:44', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '2020-07-08 13:16:24', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 75, 1, 0, 49, '', '', '', 1, '', 0, ''),
(99, 'seller', 'seller', 'aruviSeller', 'Seller', '$2y$10$heV2rzzceapjwc.K6GvLh.HOkM96gCSKbEHUZIgiaarTv/dvyGFW6', 'seller@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1591615989_99.jpeg', NULL, NULL, '2020-06-05 13:34:58', '0000-00-00', '2020-06-05 13:34:58', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '21Hd373b', NULL, NULL, '2020-06-09 07:59:07', 1, 1, 1, 0, 0, 0, 0, '', 0, 1, 0, 0, '', '', '', 1, '', 0, ''),
(106, 'Mart', 'mart', 'Martian', 'Martian', '$2y$10$2.jVM.EiJ6hxcjGHsSz.8.WDAAlPHFC4dkWfV9Hnm71NQffCDamgq', 'martian@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-06-09 12:03:24', '0000-00-00', '2020-06-09 12:03:24', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'McOF22Jb', NULL, NULL, '2020-06-09 12:22:54', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(123, 'raj', 'raj', 'Raj', 'Raj', '$2y$10$WY3sIftc5a8IjvTUqrkfR.7E/BQj820N2R2yZQntqjT5V7BGHy8D.', 'Raj@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1591961421_123.jpg', NULL, NULL, '2020-06-12 10:52:31', '0000-00-00', '2020-06-12 10:52:31', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'KJ31d9eN', NULL, NULL, '2020-06-29 07:12:48', 1, 1, 1, 0, 0, 0, 0, '', 2, 4, 0, 0, '', '', '3.8', 1, '', 0, ''),
(134, 'kumarc', 'kumarc', 'Kumar', 'kumar', '$2y$10$wjrkHQGZMfX2bYCWgHMmCenPYLUpcR0REmfgx5IEP6AfgFDBWnzxW', 'kumarc@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-06-18 12:38:53', '0000-00-00', '2020-06-18 12:38:53', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '0c5C88OC', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '5', 1, '', 0, ''),
(137, 'Dora', 'dora', 'Dora', 'Dora', '$2y$10$c3Nh.rwCX41dLlIEZdllpuXQz8ejSP/TrCoiTzbx943qQDHMp7T3.', 'Dora@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-06-19 08:01:25', '0000-00-00', '2020-06-19 08:01:25', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'A57aEJE5', NULL, NULL, '2020-06-22 09:04:33', 1, 1, 1, 0, 0, 0, 0, '', 10, 1, 0, 0, '', '', '2.5', 1, '', 0, ''),
(143, 'Merchant', 'merchant', 'Merchant', 'Merchant', '$2y$10$WgcwypARcrOgf2vvJPGxgexaTH.RW5lp9Ayt0gqooo3oarYZExtQK', 'Merchant@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-06-27 11:07:40', '0000-00-00', '2020-06-27 11:07:40', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'bIN4adAJ', NULL, NULL, '2020-07-06 14:09:10', 1, 1, 1, 0, 0, 0, 0, '', 0, 1, 0, 0, '', '', '3.5', 1, '', 0, ''),
(154, 'ramnathtamilselvam', 'ramnathtamilselvam', 'ram', 'nath', '$2y$10$XPtdpqjgjKHnJ.YYTOHQDOFinoPgL8K3VqIiGgdfIm6EbtpvVcsWC', 'tramnath@hitasoft.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1594125745_154.jpg', NULL, NULL, '2020-07-07 06:00:34', '0000-00-00', '2020-07-07 06:00:34', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '4CHKB40f', NULL, NULL, '2020-07-07 11:38:22', 1, 1, 1, 0, 0, 0, 0, '', 33, 2, 0, 0, '', '', '5', 1, '', 0, ''),
(155, 'kirubaj', 'kirubaj', 'kiruba', 'jeya', '$2y$10$rl8vCp3DkXhn0dPw9ruLWuTjDL1FyG8HrhYOkrxKe.XyrP6/NFb5W', 'jkirubakaran@hitasoft.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-07-07 06:19:04', '0000-00-00', '2020-07-07 06:19:04', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'N0f4bab5', NULL, NULL, '2020-07-07 11:43:08', 1, 1, 1, 0, 0, 0, 0, '', 3, 0, 0, 0, '', '', '3.8', 1, '', 0, ''),
(156, 'vinoth', 'vinoth', 'vinoth', NULL, '$2y$10$cD6LNrTPnZVxmFtzG1bvLO0.dNCr/V2EiDHcN1kA7XTyTHlUGGH7i', 'jkiruba@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-07-07 08:35:58', '0000-00-00', '2020-07-07 08:35:58', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '2020-07-07 08:54:51', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n			\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n			\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 3, 0, 0, 0, '', '', '', 1, '', 0, ''),
(157, 'nivash', 'nivash', 'nivash', NULL, '$2y$10$s29LfkUd3EU5q0mq7D9LPeBtE77iZDmsfVOL/LqW4BwGyS5.InxTu', 'jkiruba216@gmail.com', '', '', '', '', 'normal', 'enable', '', '[{\"1594112648\":0,\"amount\":0},{\"1594117370\":0,\"amount\":0},{\"1594117808\":0,\"amount\":0},{\"1594118405\":0,\"amount\":0},{\"1594118834\":0,\"amount\":0},{\"1594119105\":0,\"amount\":0},{\"1594122316\":0,\"amount\":0}]', 8012, '1594112192_0.jpg', NULL, NULL, '2020-07-07 08:39:29', '0000-00-00', '2020-07-07 08:39:29', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '2020-07-07 08:55:37', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 16, 0, 0, 50, '', '', '', 1, '', 0, ''),
(158, 'name2', 'name2', 'name', NULL, '$2y$10$yp7Ji848ebmgwnGSt9yZCejMRaK3y4twgQMNTntFfDfomgJroTXAu', 'lilililu332@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '1594246322_5.jpg', NULL, NULL, '2020-07-08 22:11:12', '0000-00-00', '2020-07-08 22:11:12', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '2020-07-08 22:11:23', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 0, 0, 0, 0, '', '', '', 1, '884360076', 0, ''),
(159, 'dsad', 'dsad', 'dsad', NULL, '$2y$10$e9vAS1ZHJ2DTkJcrPq0MUOmHmuRqDSnhAt6.VrmwBU5tbkBOL.2AK', 'dsad@dsad.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-04 16:06:34', '0000-00-00', '2020-12-04 16:06:34', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'BIK9eLI3', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(160, 'prabu', 'prabu', 'prabu', NULL, '$2y$10$F1cwikG9HQy50hA1Thuenu5VLil32iIaAfpBDLrhNGIRhaP/zgjPG', 'prabunagarajan@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-04 16:06:41', '0000-00-00', '2020-12-04 16:06:41', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '3b087LM0', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(161, 'testt', 'testt', 'Testt', NULL, '$2y$10$smIHa18h1GTotLNXQOsqnOIjV.u0DfB6Ir60n2WUe5ZLrBd3Nn6fi', 't@mailinator.com', 'chennai', '', '0-0-0', 'none', 'normal', 'enable', '', '[{\"34\":0,\"amount\":98}]', 8012, '1607100473_161.png', NULL, '', '2020-12-04 16:28:28', '0000-00-00', '2020-12-04 16:28:28', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'bffJ7ff3', '', NULL, '2020-12-04 16:44:48', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 52, '', '', '', 1, '139590713', 0, ''),
(162, 'lakshmipriya', 'lakshmipriya', 'lakshmi', NULL, '$2y$10$G.vG84MsRTFpEMuNFORn9.1i8qhkCiM1r.87tr5Cx6f8oEM5g6yi6', 'lakshmipriya@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"40\":0,\"amount\":150},{\"52\":0,\"amount\":1026},{\"53\":0,\"amount\":400},{\"55\":0,\"amount\":150},{\"58\":0,\"amount\":175},{\"59\":0,\"amount\":300},{\"60\":0,\"amount\":300},{\"89\":0,\"amount\":392}]', 8012, '', NULL, NULL, '2020-12-14 11:52:27', '0000-00-00', '2020-12-14 11:52:27', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '230', '2a7D628d', NULL, NULL, '2021-04-07 13:04:44', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 54, '', '', '', 1, '222215363', 0, ''),
(163, 'hello', 'hello', 'hello', NULL, '$2y$10$PWCpxtBEH7mdA0PYIqAKpOwysrpT3RNyWuz/3kYCaTRnyUul/3NVK', 'hello@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-15 09:35:39', '0000-00-00', '2020-12-15 09:35:39', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '8L05cOaf', NULL, NULL, '2020-12-15 09:35:55', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(164, 'emotest', 'emotest', 'demoest', NULL, '$2y$10$Er5MQcfTGqzetDPpbXUxzOy95THkMRsn3NqouSkt8M5.bFO3GCJlS', 'demotest@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-15 10:29:03', '0000-00-00', '2020-12-15 10:29:03', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '66A60d7d', NULL, NULL, '2020-12-15 10:29:24', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(165, 'deephi', 'deephi', 'deepthi', NULL, '$2y$10$g11a5u.tWDXw.WEx/En5p.FBuZJ3HtRi.DlCEDK./vI.f.Sm0AmJO', 'deepthi@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-15 10:33:57', '0000-00-00', '2020-12-15 10:33:57', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'aM8Bd406', NULL, NULL, '2020-12-15 10:34:08', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(166, 'testing', 'testing', 'testing', NULL, '$2y$10$caUK76Hn4/dJqyoXJh5/a.Li7tvG3KRMlENGMUr/tmgzDTYgAsWrm', 'testing@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-15 10:48:22', '0000-00-00', '2020-12-15 10:48:22', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '0D8cJ0AB', NULL, NULL, '2020-12-15 10:48:35', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(168, 'fdfd', 'fdfd', 'dfdf', NULL, '$2y$10$8mH8foYeV4BgRUXc4xNyy.ds6TCB02bvkn4o2Xr.seVOugEccBFQy', 'fdfd@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-15 11:20:18', '0000-00-00', '2020-12-15 11:20:18', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'Hde24HBH', NULL, NULL, '2020-12-16 04:50:36', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(169, 'welocme', 'welocme', 'welcome', NULL, '$2y$10$54XsbcK6a4tCh5W5ajLWZOm3QPtZVT6tBpWlFcPCwWP9fIkNwDT/m', 'welcome@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-16 04:51:45', '0000-00-00', '2020-12-16 04:51:45', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'J4d23d3J', NULL, NULL, '2020-12-16 04:51:55', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 53, '', '', '', 1, '', 0, ''),
(171, 'viji', 'viji', 'viji', NULL, '$2y$10$0XxrQiRY4Eu/jHaQSZhYaeq59TpnmOGMkKgB9Tp4XuQjPq2Zucbtm', 'aviji@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"39\":0,\"amount\":63000},{\"41\":0,\"amount\":175},{\"42\":0,\"amount\":150},{\"43\":0,\"amount\":175},{\"44\":0,\"amount\":350},{\"45\":0,\"amount\":150},{\"46\":0,\"amount\":180},{\"47\":0,\"amount\":180},{\"48\":0,\"amount\":180},{\"49\":0,\"amount\":350},{\"50\":0,\"amount\":150},{\"51\":0,\"amount\":400},{\"54\":0,\"amount\":180},{\"56\":0,\"amount\":175},{\"57\":0,\"amount\":300},{\"61\":0,\"amount\":150},{\"62\":0,\"amount\":300},{\"63\":0,\"amount\":200},{\"79\":0,\"amount\":200},{\"91\":0,\"amount\":400},{\"92\":0,\"amount\":300}]', 8012, '', NULL, NULL, '2020-12-16 09:46:55', '0000-00-00', '2020-12-16 09:46:55', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '{\"reffid\":\"162\",\"first\":\"Purchased\"}', '404', '111D33fE', NULL, NULL, '2021-02-22 07:49:22', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 5, 0, 0, 55, '', '', '', 1, '641099343', 0, ''),
(172, 'Anu', 'anu', 'Anu', 'ddddd', '$2y$10$UozuUgWTdfjLUK9T38hqBuoAQpUr/HiV567kIXNT8QaBXqLiwxXbm', 'anu@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-21 06:57:31', '0000-00-00', '2020-12-21 06:57:31', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'd4KH7N30', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 2, 0, 0, 0, '', '', '', 1, '', 0, ''),
(173, 'anusuya', 'anusuya', 'welcome', NULL, '$2y$10$BD/fQlVKvBvZuLGc3187/ucxAQmRBpk3OL0eR4N9ymM84nCDulOTm', 'test1@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-21 07:32:35', '0000-00-00', '2020-12-21 07:32:35', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'Oaffe0GH', NULL, NULL, '2020-12-21 07:34:51', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(174, 'kar', 'kar', 'karthika', NULL, '$2y$10$aG1ZydZ12itQc4h8GRklDOabCUKY4Y9675uJ.Jbxc/B7dmXQkgAqC', 'karthika@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"64\":0,\"amount\":198}]', 8012, '', NULL, NULL, '2020-12-21 07:47:09', '0000-00-00', '2020-12-21 07:47:09', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '1bbBO0H5', NULL, NULL, '2020-12-21 11:53:38', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 58, '', '', '', 1, '283650386', 0, ''),
(175, 'abi', 'abi', 'example', 'dddd', '$2y$10$pUIBxqTVrfEMgiB8IQ5Re.DVSuTu7WfWQWA3TWKj3zp01QbphjPB6', 'test2@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-21 10:20:36', '0000-00-00', '2020-12-21 10:20:36', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '68a3a855', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(176, 'test', 'test', 'test', NULL, '$2y$10$.w23Th9hSHjL7G6Gcd4UV.E1gmsmrwkxMpVZTLq1OrXL73ZRBukAu', 'test@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"65\":0,\"amount\":200},{\"66\":0,\"amount\":200},{\"67\":0,\"amount\":150}]', 8012, '', NULL, NULL, '2020-12-21 10:52:34', '0000-00-00', '2020-12-21 10:52:34', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '{\"reffid\":\"70\",\"first\":\"Purchased\"}', '202', 'A5aC6aEb', NULL, NULL, '2020-12-31 05:40:09', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 60, '', '', '', 1, '861000974', 0, ''),
(177, 'King', 'king', 'King', 'Maker', '$2y$10$7xVZiWMQP4BLgqIrZu0omeSCG6vtOcmmDLM7exUMytjGKA33qHGh2', 'king@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1608610832_177.png', NULL, NULL, '2020-12-22 04:14:27', '0000-00-00', '2020-12-22 04:14:27', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'G5Ieebea', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(178, 'Prime', 'prime', 'Prime', NULL, '$2y$10$dKpxLvmQSLmCwu.3hyBS4uKvG/G6n87atiuEASaDOsDlAj5Vvvyjm', 'prime@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"75\":0,\"amount\":196},{\"80\":0,\"amount\":200},{\"81\":0,\"amount\":200}]', 8012, '', NULL, NULL, '2020-12-22 04:31:53', '0000-00-00', '2020-12-22 04:31:53', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '300', 'H3P8Cda0', NULL, NULL, '2020-12-23 08:19:28', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 64, '', '', '', 1, '592611326', 0, ''),
(179, 'BEE', 'bee', 'Bumbulbee', NULL, '$2y$10$d0XWKePjS3tKhC83TjDN9.b4wLIOv/ThxhIK10mQ/lkHH4QknYxi6', 'bee@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"68\":0,\"amount\":196},{\"69\":0,\"amount\":196},{\"70\":0,\"amount\":196},{\"71\":0,\"amount\":196}]', 8012, '', NULL, NULL, '2020-12-22 04:42:21', '0000-00-00', '2020-12-22 04:42:21', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '6J55L47I', NULL, NULL, '2020-12-22 06:41:56', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 9, 0, 0, 61, '', '', '', 1, '546117363', 0, ''),
(180, 'Lion', 'lion', 'Lion', NULL, '$2y$10$QT.e0AvJjhsSE2O69Zp.7.VXbSIf7f/dvtC02Vz4EJLhvPft7u3AG', 'lion@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"72\":0,\"amount\":196},{\"73\":0,\"amount\":196},{\"74\":0,\"amount\":3920},{\"77\":0,\"amount\":400},{\"78\":0,\"amount\":200},{\"82\":0,\"amount\":200}]', 8012, '', NULL, NULL, '2020-12-22 06:47:34', '0000-00-00', '2020-12-22 06:47:34', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '{\"reffid\":\"178\",\"first\":\"Purchased\"}', '0', '5B3512Ea', NULL, NULL, '2020-12-23 08:23:09', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 12, 0, 0, 62, '', '', '', 1, '899952856', 0, ''),
(181, 'sure', 'sure', 'queen', 'ddddd', '$2y$10$jZilvurZWN1mlmZ4puIYAuwHS0nKBwadsifOR3FBcFhxyJbyG0QXu', 'queen@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-22 07:12:07', '0000-00-00', '2020-12-22 07:12:07', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'BdL1F2E0', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(182, 'lilly', 'lilly', 'lilly water', NULL, '$2y$10$NN2dlDjfzfxYRYEIn7vpleX.iLRYTS9CA4paqG8PgEyxoAe8mnf8S', 'lilly@mailinator.com', 'Madurai', 'https://10fastfingers.com/typing-test/english', '1997-5-22', '1', 'normal', 'enable', '', '[{\"124\":0,\"amount\":200}]', 8012, '1608725319_182.jpg', NULL, 'test test test', '2020-12-22 07:16:34', '0000-00-00', '2020-12-22 07:16:34', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '50', 'cO5NNNCI', 'female', NULL, '2021-01-04 11:56:15', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 75, '', '', '', 1, '682156979', 0, ''),
(183, 'facebook', 'facebook', 'facebook', NULL, '$2y$10$kdMzsDbIyYviZSWsQxDR7uKpviaJ8wiDSTgBHkEe13VqDoJc6Ocq6', 'facebook@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"76\":0,\"amount\":99},{\"114\":0,\"amount\":600},{\"116\":0,\"amount\":600}]', 8012, '', NULL, NULL, '2020-12-22 08:00:51', '0000-00-00', '2020-12-22 08:00:51', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '606', 'IF35DKHG', NULL, NULL, '2020-12-26 12:15:21', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 63, '', '', '', 1, '813831159', 0, ''),
(184, 'cat', 'cat', 'Cat', NULL, '$2y$10$0Q28b3QngMiH5lZjH3rMR.2KggZxvyF4XICWy/XcU/kbOnHBQsRym', 'cat@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"83\":0,\"amount\":200}]', 8012, '', NULL, NULL, '2020-12-23 08:01:33', '0000-00-00', '2020-12-23 08:01:33', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '579304dM', NULL, NULL, '2020-12-23 08:02:21', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 66, '', '', '', 1, '861189463', 0, ''),
(185, 'deepthisree', 'deepthisree', 'deepthi', NULL, '$2y$10$MBYRr6DRQAG0oDMJZYtrsut7V6kpOH/9pUK0AcnX4qkJNbRkNawjG', 'deepthisree@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"121\":0,\"amount\":100}]', 8012, '', NULL, NULL, '2020-12-23 08:03:04', '0000-00-00', '2020-12-23 08:03:04', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '270', 'acfa58Ja', NULL, NULL, '2020-12-26 13:12:46', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 77, '', '', '', 1, '437827911', 0, ''),
(186, 'nadesh', 'nadesh', 'nadesh', NULL, '$2y$10$7RoQF8OmVAbPCtmSdZP1E.jCAwn.j8aa3Gm1F.1YiXWrwjgs5Rt66', 'nadeshkumar@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"84\":0,\"amount\":200},{\"86\":0,\"amount\":200},{\"88\":0,\"amount\":392},{\"90\":0,\"amount\":392},{\"100\":0,\"amount\":100},{\"101\":0,\"amount\":200},{\"102\":0,\"amount\":200},{\"103\":0,\"amount\":100},{\"104\":0,\"amount\":300}]', 8012, '', NULL, NULL, '2020-12-23 08:09:28', '0000-00-00', '2020-12-23 08:09:29', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '', '928Ce9f8', NULL, NULL, '2021-02-16 11:46:21', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 9, 0, 0, 67, '', '', '', 1, '862312089', 0, ''),
(187, 'userc', 'userc', 'userc', NULL, '$2y$10$PaGnfVrKAQ6nJ2u2y3CfOewihl1mVags7gB5/f8fZ9K59cpjs4MFO', 'c@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"85\":0,\"amount\":392}]', 8012, '', NULL, NULL, '2020-12-23 08:11:17', '0000-00-00', '2020-12-23 08:11:17', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '40', 'O127L83F', NULL, NULL, '2020-12-23 08:11:27', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 68, '', '', '', 1, '', 0, ''),
(188, 'userd', 'userd', 'Userd', NULL, '$2y$10$hoUAyZLPnn4px7ONgfoxguJyIQC6kdPuvoSaf151.kCX.3WSRY2.m', 'd@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"87\":0,\"amount\":392}]', 8012, '', NULL, NULL, '2020-12-23 08:15:28', '0000-00-00', '2020-12-23 08:15:28', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'CAD7fE13', NULL, NULL, '2020-12-23 08:15:39', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 69, '', '', '', 1, '199619931', 0, ''),
(189, 'today', 'today', 'today', 'today', '$2y$10$7xVZiWMQP4BLgqIrZu0omeSCG6vtOcmmDLM7exUMytjGKA33qHGh2', 'today@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-24 14:31:23', '0000-00-00', '2020-12-24 14:31:23', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'Lfe6Gbc3', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 2, 1, 0, 0, '', '', '', 1, '', 0, ''),
(190, 'anand', 'anand', 'anand', 'anand', '$2y$10$0jurALSrxu.AWb/fRY9pueN8FYCEpGHmsVwmQ6pMBwuCWbOwXN9Qe', 'anand@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-24 14:40:29', '0000-00-00', '2020-12-24 14:40:29', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'FfMOfEbb', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(191, 'sugith', 'sugith', 'sugith', 'sugith', '$2y$10$Lyrc.GQhoopVY7RjfVUEH.6XIDe9/Q9Cf3Uww3iNOE0kLFWRdvUIi', 'sugithsharma5@gmail.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-24 14:43:25', '0000-00-00', '2020-12-24 14:43:25', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'H8f7fOf2', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(192, 'sethu', 'sethu', 'sethu', NULL, '$2y$10$8PjpmvaCJlJqyHT4cSbyF.eh91t34HXInAbIYzYrWof3L5T06eEp.', 'sethu@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"95\":0,\"amount\":100},{\"96\":0,\"amount\":100},{\"97\":0,\"amount\":200},{\"98\":0,\"amount\":100},{\"99\":0,\"amount\":100},{\"117\":0,\"amount\":400}]', 8012, '', NULL, NULL, '2020-12-24 15:06:02', '0000-00-00', '2020-12-24 15:06:02', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '99', 'P3071AF3', NULL, NULL, '2021-01-07 09:54:01', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 88, 0, 0, 71, '', '', '', 1, '838668209', 0, ''),
(193, 'share', 'share', 'share', NULL, '$2y$10$Hvlz4CJTLqYaFqKnk1XCWesL6IRdYTumr1sVY89S3Ko2fwQUcq5gK', 'share@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"93\":0,\"amount\":100},{\"94\":0,\"amount\":100},{\"119\":0,\"amount\":100},{\"120\":0,\"amount\":100},{\"123\":0,\"amount\":100},{\"125\":0,\"amount\":100}]', 8012, '', NULL, NULL, '2020-12-24 15:20:31', '0000-00-00', '2020-12-24 15:20:31', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '0', '8C7aCbBa', NULL, NULL, '2021-01-07 09:52:58', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 10, 0, 0, 70, '', '', '', 1, '601853126', 0, ''),
(194, 'karthik', 'karthik', 'karthik', NULL, '$2y$10$qW8bVgx5Unb8k19Xivlazuyl5WCADp/l2gE6p1S5AIMtBP2lzskzO', 'karthik@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"105\":0,\"amount\":392}]', 8012, '', NULL, NULL, '2020-12-26 08:58:58', '0000-00-00', '2020-12-26 08:58:58', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'G27a42ed', NULL, NULL, '2020-12-26 08:59:10', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 72, '', '', '', 1, '545218209', 0, ''),
(195, 'ram', 'ram', 'ram', NULL, '$2y$10$HvXcotBdyGNYyQXsvlMSkOCQiaYu80lO0KyqeAXDse9u3A8bLN5rK', 'ram@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-26 10:17:22', '0000-00-00', '2020-12-26 10:17:22', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '50', 'dL71H7ef', NULL, NULL, '2020-12-26 13:12:30', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 4, 0, 0, 0, '', '', '', 1, '232542824', 0, ''),
(196, 'mainuser', 'mainuser', 'main', NULL, '$2y$10$HgrCXFn/mumszp7qWZWOAeMVcp26Ta8juz6lOpdjKZJNg8WPWzSg2', 'main@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"108\":0,\"amount\":600}]', 8012, '', NULL, NULL, '2020-12-26 11:08:02', '0000-00-00', '2020-12-26 11:08:02', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'd513f47e', NULL, NULL, '2020-12-26 11:10:21', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 73, '', '', '', 1, '156971359', 0, ''),
(197, 'sing', 'sing', 'sing', NULL, '$2y$10$7TkCaw0VyCOeE62s3ZvdP.0iuuiSYO1znYOQqPAXBhLgqPukATGW6', 'sing@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"109\":0,\"amount\":100},{\"110\":0,\"amount\":100},{\"111\":0,\"amount\":200},{\"112\":0,\"amount\":100},{\"115\":0,\"amount\":99},{\"118\":0,\"amount\":99}]', 8012, '', NULL, NULL, '2020-12-26 11:27:42', '0000-00-00', '2020-12-26 11:27:42', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '1.01', '66O4I92M', NULL, NULL, '2020-12-26 11:28:03', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 6, 0, 0, 74, '', '', '', 1, '169446686', 0, ''),
(198, 'newgmail', 'newgmail', 'newgmail', NULL, '$2y$10$lFKYKS//oUGZXzwbM6dlje.IkMYRpPFHBvzijRNGozrUOX/pzjvPm', 'new@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-26 13:00:39', '0000-00-00', '2020-12-26 13:00:39', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'FeO1c687', NULL, NULL, '2020-12-26 13:00:57', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(199, 'googlemail', 'googlemail', 'google', NULL, '$2y$10$XyzPWcSbHM//NVPdLkg62.0qTSQCdRVjs9Eu9z.MuZbf5ytIWt4qS', 'google@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"122\":0,\"amount\":100},{\"126\":0,\"amount\":100}]', 8012, '', NULL, NULL, '2020-12-26 13:04:00', '0000-00-00', '2020-12-26 13:04:00', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '{\"reffid\":\"182\",\"first\":\"Purchased\"}', NULL, 'ed6dHOcI', NULL, NULL, '2020-12-26 13:04:18', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 76, '', '', '', 1, '887117513', 0, ''),
(200, 'second', 'second', 'second', 'second', '$2y$10$2RuIOz.G0AEKG1Y5vdgVnOfPGjpGUb.LXxVU/lW.7pAFy8bYLtafO', 'second@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2020-12-26 13:22:13', '0000-00-00', '2020-12-26 13:22:13', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'dcd5G5J9', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(201, 'link', 'link', 'linkfacebook', NULL, '$2y$10$tW/FY1su9kIhHKCgE5frMu2ZYu2h/iRcu/FYaaNiAwn2Y2oHu6tgC', 'link@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"127\":0,\"amount\":300}]', 8012, '', NULL, NULL, '2020-12-26 14:05:48', '0000-00-00', '2020-12-26 14:05:48', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '5B55HI11', NULL, NULL, '2020-12-26 14:06:07', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 78, '', '', '', 1, '646865056', 0, ''),
(202, 'prasanth', 'prasanth', 'prasanth', NULL, '$2y$10$eFY9LZ/mreXMfEz/Tcz/XexnOQbuEGPx0zd13RiV7A/orzKc8KT2q', 'prasantha@hitasoft.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-28 07:29:42', '0000-00-00', '2020-12-28 07:29:42', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '156A5a19', NULL, NULL, '2021-01-06 09:33:23', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 0, '', '', '', 1, '', 0, ''),
(203, 'well', 'well', 'water', 'water', '$2y$10$dNi7bJI7xK8fgNVt0cpaSOm0dnwCqmYJzfu8aOEkOwB1XT6ibZ.h2', 'water@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '1609396191_203.jpg', NULL, NULL, '2020-12-31 04:45:22', '0000-00-00', '2020-12-31 04:45:22', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'K8DO79e6', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(204, 'email', 'email', 'email', NULL, '$2y$10$hrmjcYmJ3O8dv/M3ZUx5/e7zw3lnkWGgTvooRcIwH5.5fiYAEwxrq', 'email@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2020-12-31 04:50:55', '0000-00-00', '2020-12-31 04:50:55', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '50', 'b1If7L8K', NULL, NULL, '2021-01-05 05:30:17', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(205, 'testemail', 'testemail', 'testemail', NULL, '$2y$10$bm.uXr0ag2xNRv674jHQ.OSNtokO6XlvKzausHgQOY8uYWmGGRJ/e', 'testemail@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"128\":0,\"amount\":60000}]', 8012, '', NULL, NULL, '2020-12-31 05:42:44', '0000-00-00', '2020-12-31 05:42:44', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '7Bf4AfJ9', NULL, NULL, '2020-12-31 07:21:47', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 79, '', '', '', 1, '581549686', 0, ''),
(206, 'secondmail', 'secondmail', 'secondmail', NULL, '$2y$10$OanFL0Ngf2uWD7S8RI48o.KRu7Be6eslYVcMFyS/R1m0dsKdutJOm', 'secondmail@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"129\":0,\"amount\":1000}]', 8012, '', NULL, NULL, '2020-12-31 07:33:49', '0000-00-00', '2020-12-31 07:33:49', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '194N53e5', NULL, NULL, '2020-12-31 07:34:06', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 80, '', '', '', 1, '168658154', 0, ''),
(207, 'samplefacebook', 'samplefacebook', 'samplefacebook', NULL, '$2y$10$9qo5VbemUaV8EObQA4bOW.V.9vzrQHUc9pohwMl2B4SnDqE4CeIuK', 'facebooklink@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"130\":0,\"amount\":1000},{\"131\":0,\"amount\":200},{\"132\":0,\"amount\":200},{\"133\":0,\"amount\":50000},{\"134\":0,\"amount\":100}]', 8012, '', NULL, NULL, '2020-12-31 08:07:28', '0000-00-00', '2020-12-31 08:07:28', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '1B85fIeb', NULL, NULL, '2020-12-31 08:55:52', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 81, '', '', '', 1, '276996261', 0, ''),
(208, 'sampleeeeeee', 'sampleeeeeee', 'samplemmmmmmm', NULL, '$2y$10$3uSNX244oTtytuVXsKEjEeWFFTYJPOEi4oNfmqNTUHsc/1zvbZaXu', 'refer@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"135\":0,\"amount\":3436}]', 8012, '', NULL, NULL, '2020-12-31 09:03:02', '0000-00-00', '2020-12-31 09:03:02', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '9OaDIGaO', NULL, NULL, '2020-12-31 09:03:20', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 82, '', '', '', 1, '691266589', 0, ''),
(209, 'quit', 'quit', 'quit', 'quit', '$2y$10$f80xPr3N/YOjlGnC8b44.uJlsf7xcMGujtakozKyLRKifhQE6XrVu', 'quit@mailinator.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2021-01-04 07:47:21', '0000-00-00', '2021-01-04 07:47:21', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'e4NBG05c', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 1, 2, 0, 0, '', '', '', 1, '', 0, ''),
(210, 'twitter', 'twitter', 'twitter', NULL, '$2y$10$ke4u8KnZQEI0DwxaB300HOQNK2bY15r6tRCvBFL3VN0TLAtPpn7n2', 'twitter@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"136\":0,\"amount\":1000},{\"138\":0,\"amount\":100},{\"139\":0,\"amount\":200},{\"140\":0,\"amount\":4000}]', 8012, '', NULL, NULL, '2021-01-04 07:57:14', '0000-00-00', '2021-01-04 07:57:14', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '303', 'd395H5eH', NULL, NULL, '2021-01-05 08:10:59', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 2, 0, 0, 83, '', '', '', 1, '545353013', 0, ''),
(211, 'reddd', 'reddd', 'reddd', NULL, '$2y$10$1BRKrGoTyzDEfz3v4VLCA./yK5ucPYzC4UIvC91ZfBQshjbYuE3v6', 'sample@mailinator.com', 'India', '', '0-0-0', '1', 'normal', 'enable', '', NULL, 8012, '', NULL, '', '2021-01-05 06:53:30', '0000-00-00', '2021-01-05 06:53:30', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'Ef51J3d3', 'female', NULL, '2021-01-05 06:53:41', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 3, 0, 0, 0, '', '', '', 1, '193022033', 0, ''),
(213, 'Newuser', 'Newuser', 'Newuser', NULL, '$2y$10$.zO7e6hctlAdY7bYrzKTBekf16AJ98Nspd1cnHSQz/rrh3wFUBiPe', 'newuser@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, NULL, '', NULL, NULL, '2021-03-01 09:17:01', '0000-00-00', '2021-03-01 09:17:01', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n               \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n               \"frends_flw_push\":0,\"frends_cmnts_push\":0}', 4, 0, 0, 0, '', '', '', 1, '', 0, '');
INSERT INTO `fc_users` (`id`, `username`, `username_url`, `first_name`, `last_name`, `password`, `email`, `city`, `website`, `birthday`, `age_between`, `user_level`, `user_status`, `verify_pass`, `share_status`, `credit_points`, `profile_image`, `location`, `about`, `created_at`, `joined_date`, `modified_at`, `follow_count`, `login_type`, `facebook_id`, `token_key`, `secret_key`, `twitter_id`, `twitter`, `google_id`, `apple_id`, `referrer_id`, `credit_total`, `refer_key`, `gender`, `user_address`, `last_login`, `activation`, `subs`, `someone_follow`, `someone_show`, `someone_cmnt_ur_things`, `your_thing_featured`, `someone_mention_u`, `push_notifications`, `unread_notify_cnt`, `unread_livefeed_cnt`, `featureditemid`, `defaultshipping`, `user_api_details`, `admin_menus`, `seller_ratings`, `currencyid`, `customer_id`, `checkdisabled`, `languagecode`) VALUES
(214, 'Athena', 'athena', 'Athena', NULL, '$2y$10$poBiM5O7qin0zz/zhsY1Dub/Keh/jyaH/z1cIf4QnvFc.qYZ9tgXu', 'vshrinidhi@hitasoft.com', '', '', '', '', 'normal', 'enable', '', '[{\"150\":0,\"amount\":385},{\"158\":0,\"amount\":600}]', 8012, '', NULL, NULL, '2021-04-02 09:20:26', '0000-00-00', '2021-04-02 09:20:26', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'bNaH0J29', NULL, NULL, '2021-04-14 07:24:33', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 33, 0, 0, 85, '', '', '', 1, '578244127', 0, ''),
(215, 'Artemis', 'artemis', 'Artemis', 'Fowl', '$2y$10$S8jFlr5EzWtMMcGmnhQqx.OzJTKbOrMHM6VIVXibxzoAkUjumeQv.', 'artemisfowl2310@gmail.com', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2021-04-02 09:42:35', '0000-00-00', '2021-04-02 09:42:35', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'edP7M729', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '5', 1, '', 0, ''),
(216, 'ashok', 'ashok', 'Ashok', NULL, '$2y$10$r0eVqxqKwahZ41HPcy1FQuP8ols.GQEKI.f8y9rnz0msytye5uLC2', 'ashok.c@mailinator.com', 'madurai', '', '2000-1-1', 'none', 'normal', 'enable', '', '[{\"152\":0,\"amount\":661.2},{\"153\":0,\"amount\":661.2},{\"161\":0,\"amount\":6052},{\"164\":0,\"amount\":900},{\"165\":0,\"amount\":900},{\"166\":0,\"amount\":900}]', 8012, '', NULL, 'safasfasdfasd', '2021-04-05 10:47:29', '0000-00-00', '2021-04-05 10:47:29', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'dbedef6e', 'male', NULL, '2021-04-14 06:00:42', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 28, 1, 0, 87, '', '', '', 1, '802603375', 0, ''),
(217, 'ashokkumar', 'ashokkumar', 'Ashok', NULL, '$2y$10$6o6IvAba2spruo/8XcfMWu77s4M1PxihXoRvn5H/9z4h3//Z3CYrW', 'ashokhts2019@gmail.com', 'madurai', '', '0-0-0', 'none', 'normal', 'enable', '', '[{\"160\":0,\"amount\":4478.48},{\"162\":0,\"amount\":3026},{\"167\":0,\"amount\":6052},{\"168\":0,\"amount\":12000}]', 8012, '1618229158_217.jpg', NULL, '', '2021-04-12 10:12:53', '0000-00-00', '2021-04-12 10:12:53', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '0M7LacMB', 'male', NULL, '2021-04-16 13:46:59', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 22, 0, 0, 88, '', '', '', 1, '631765218', 0, ''),
(218, 'HitasoftArun218', 'hitasoftarun218', 'Hitasoft Arun', NULL, NULL, 'hitasoftsocialapp@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '1618571236_3.jpg', NULL, NULL, '2021-04-16 11:07:18', '0000-00-00', '2021-04-16 11:07:18', 0, '', NULL, NULL, NULL, '', '', '102326196578618519033', '', '0', NULL, 'd18P513I', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n			\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n			\"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '{\"socialLoginDetails\":{\"googleEmail\":\"Hitasoft Arun\"}}', '', '', 1, '', 0, ''),
(219, 'Swat', 'swat', 'Swati', 'Rana', '$2y$10$/4PAxhpAMAL10vFPRo8GBexiMKQvR5RSr5.znfx2Jf98o4OlI4FEy', 'swati.rana@antech.in', '', '', '', '', 'shop', 'enable', '', NULL, NULL, '', NULL, NULL, '2021-04-19 09:20:00', '0000-00-00', '2021-04-19 09:20:00', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'dI98d0L5', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 0, ''),
(220, 'muthu', 'muthu', 'muthu', NULL, '$2y$10$WHGylssEdLbbG9yXGKlXx.etPAXWE2gHlh460YBb7dE.bKzzpjpnq', 'hello@gmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2021-04-21 04:35:23', '0000-00-00', '2021-04-21 04:35:23', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'FDf4e24B', NULL, NULL, '2021-04-21 04:35:50', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(221, 'ApolloDean', 'apollodean', 'Dean', NULL, '$2y$10$xubuoD1Sey8q8eToJCLOXupNMTmvMRx43qsQ1fo2PxN/cKlP/NFGy', 'dab@apollocurrency.com', '', '', '', '', 'normal', 'enable', '1619356399', NULL, 8012, '', NULL, NULL, '2021-04-25 13:09:10', '0000-00-00', '2021-04-25 13:09:10', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, 'd1IA6032', NULL, NULL, '2021-04-25 13:13:45', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(222, 'vishnutest', 'vishnutest', 'vishnu test', NULL, '$2y$10$QHTHuI4XHUq6lrGI0R3Wr.1jxjN/gDu5pkrDHKdOAc07mQPz0SkQi', 'vishnu@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2021-04-26 12:54:04', '0000-00-00', '2021-04-26 12:54:04', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '88MJb3Mf', NULL, NULL, '2021-04-26 12:54:19', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(223, 'joker', 'joker', 'Joker', NULL, '$2y$10$AuCPSWz8fCNzhGr5JG5R1e8wYvZxgTq0m7aZ31h9MoiNyvD/6WVKS', 'joker@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"173\":0,\"amount\":178653},{\"1619704933\":0,\"amount\":0},{\"1619705344\":0,\"amount\":0}]', 8012, '', NULL, NULL, '2021-04-28 13:09:04', '0000-00-00', '2021-04-28 13:09:04', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '174488.54', '2d8deIKA', NULL, NULL, '2021-04-29 14:01:20', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 3, 0, 0, 89, '', '', '', 1, '', 0, ''),
(224, 'vishnu', 'vishnu', 'vishnu', NULL, '$2y$10$8KCGLDzkDqr82bZY4UjRuefjpBxqsv5Hlkryd5eye8gk44jnHDZv.', 'vishnutest@mailinator.com', '', '', '', '', 'normal', 'enable', '', '[{\"1619702377\":0,\"amount\":0},{\"1619703299\":0,\"amount\":0},{\"1619704186\":0,\"amount\":0}]', 8012, '1619705833_4.jpeg', NULL, NULL, '2021-04-29 13:06:16', '0000-00-00', '2021-04-29 13:06:16', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', '116.5', '', NULL, NULL, '2021-04-29 13:46:57', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 14, 0, 0, 90, '', '', '', 1, '519835710', 0, ''),
(225, 'vishnu122', 'vishnu122', 'vishnu', NULL, '$2y$10$VPPlcQGDjg19rsc6PDzdtePEeuKxboG2lcoJ5DqGag6XwMRD7Kxe2', 'vishnutest122@mailinator.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2021-04-29 13:12:03', '0000-00-00', '2021-04-29 13:12:03', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\n			\"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\n			\"frends_flw_push\":0,\"frends_cmnts_push\":0}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(226, 'hrdeep@youpmail.com', 'hrdeepyoupmail-com', 'hrdeep chahal', NULL, '$2y$10$4HvC3fNkTQnDhR3L./ucWeOkxS6rxdxTB7xzoAkYMHG9sbA2k.JsW', 'hrdeep@youpmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2021-06-02 11:19:44', '0000-00-00', '2021-06-02 11:19:45', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '3aJfFGDK', NULL, NULL, '0000-00-00 00:00:00', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\r\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\r\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 1, 0, 0, 0, '', '', '', 1, '', 0, ''),
(227, 'chahal.hrdeep', 'chahal-hrdeep', 'hrdeep chahal', NULL, '$2y$10$KdHui8JDgLUWNmpafonMpO4vS1NfSzIyCWstGnAvlDx5FQUHmtfOO', 'hrdeep123@yopmail.com', '', '', '', '', 'normal', 'enable', '', NULL, 8012, '', NULL, NULL, '2021-06-02 11:32:41', '0000-00-00', '2021-06-02 11:32:41', 0, 'normal', NULL, NULL, NULL, '', '', NULL, '', '0', NULL, '1ebb1bID', NULL, NULL, '2021-06-04 12:22:08', 1, 1, 1, 0, 0, 0, 0, '{\"somone_flw_push\":\"1\",\r\n                    \"somone_cmnts_push\":\"1\",\"somone_mentions_push\":\"1\",\"somone_likes_ur_item_push\":\"1\",\r\n                    \"frends_flw_push\":1,\"frends_cmnts_push\":1}', 0, 0, 0, 0, '', '', '', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fc_wantownits`
--

CREATE TABLE `fc_wantownits` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `access_token` binary(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `alldata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fc_banners`
--
ALTER TABLE `fc_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_carts`
--
ALTER TABLE `fc_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_categories`
--
ALTER TABLE `fc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_colors`
--
ALTER TABLE `fc_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_comments`
--
ALTER TABLE `fc_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_commissions`
--
ALTER TABLE `fc_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_contactsellermsgs`
--
ALTER TABLE `fc_contactsellermsgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_contactsellers`
--
ALTER TABLE `fc_contactsellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_countries`
--
ALTER TABLE `fc_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_coupons`
--
ALTER TABLE `fc_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_dispcons`
--
ALTER TABLE `fc_dispcons`
  ADD PRIMARY KEY (`dcid`);

--
-- Indexes for table `fc_dispplms`
--
ALTER TABLE `fc_dispplms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_disputes`
--
ALTER TABLE `fc_disputes`
  ADD PRIMARY KEY (`disid`);

--
-- Indexes for table `fc_facebookcoupons`
--
ALTER TABLE `fc_facebookcoupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_faqs`
--
ALTER TABLE `fc_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_fashionusers`
--
ALTER TABLE `fc_fashionusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_feedcomments`
--
ALTER TABLE `fc_feedcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_followers`
--
ALTER TABLE `fc_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_forexrates`
--
ALTER TABLE `fc_forexrates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_giftcards`
--
ALTER TABLE `fc_giftcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_googlecodes`
--
ALTER TABLE `fc_googlecodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_groupgiftpayamts`
--
ALTER TABLE `fc_groupgiftpayamts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_groupgiftuserdetails`
--
ALTER TABLE `fc_groupgiftuserdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_hashtags`
--
ALTER TABLE `fc_hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_historyitems`
--
ALTER TABLE `fc_historyitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_homepagesettings`
--
ALTER TABLE `fc_homepagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_invoiceorders`
--
ALTER TABLE `fc_invoiceorders`
  ADD PRIMARY KEY (`invoiceorderid`);

--
-- Indexes for table `fc_invoices`
--
ALTER TABLE `fc_invoices`
  ADD PRIMARY KEY (`invoiceid`);

--
-- Indexes for table `fc_ipntracks`
--
ALTER TABLE `fc_ipntracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_itemfavs`
--
ALTER TABLE `fc_itemfavs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_itemlists`
--
ALTER TABLE `fc_itemlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_itemposts`
--
ALTER TABLE `fc_itemposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_itemreviews`
--
ALTER TABLE `fc_itemreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_items`
--
ALTER TABLE `fc_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_languages`
--
ALTER TABLE `fc_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_likedusers`
--
ALTER TABLE `fc_likedusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_logcoupons`
--
ALTER TABLE `fc_logcoupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_logs`
--
ALTER TABLE `fc_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_managemodules`
--
ALTER TABLE `fc_managemodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_mobilepages`
--
ALTER TABLE `fc_mobilepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_news`
--
ALTER TABLE `fc_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_occasions`
--
ALTER TABLE `fc_occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_ordercomments`
--
ALTER TABLE `fc_ordercomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_orders`
--
ALTER TABLE `fc_orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `fc_order_items`
--
ALTER TABLE `fc_order_items`
  ADD PRIMARY KEY (`orderItemid`);

--
-- Indexes for table `fc_payments`
--
ALTER TABLE `fc_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_photos`
--
ALTER TABLE `fc_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_prices`
--
ALTER TABLE `fc_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_productfaq`
--
ALTER TABLE `fc_productfaq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_recipients`
--
ALTER TABLE `fc_recipients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_reviews`
--
ALTER TABLE `fc_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_searchitems`
--
ALTER TABLE `fc_searchitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_sellercoupons`
--
ALTER TABLE `fc_sellercoupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shareproducts`
--
ALTER TABLE `fc_shareproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shipings`
--
ALTER TABLE `fc_shipings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shippingaddresses`
--
ALTER TABLE `fc_shippingaddresses`
  ADD PRIMARY KEY (`shippingid`);

--
-- Indexes for table `fc_shippricelists`
--
ALTER TABLE `fc_shippricelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shopcomments`
--
ALTER TABLE `fc_shopcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shopfavs`
--
ALTER TABLE `fc_shopfavs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shops`
--
ALTER TABLE `fc_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_shopuserphotos`
--
ALTER TABLE `fc_shopuserphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_sitequeries`
--
ALTER TABLE `fc_sitequeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_sitesettings`
--
ALTER TABLE `fc_sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_storefollowers`
--
ALTER TABLE `fc_storefollowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_styles`
--
ALTER TABLE `fc_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_taxes`
--
ALTER TABLE `fc_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_tempaddresses`
--
ALTER TABLE `fc_tempaddresses`
  ADD PRIMARY KEY (`shippingid`);

--
-- Indexes for table `fc_trackdetails`
--
ALTER TABLE `fc_trackdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_trackingdetails`
--
ALTER TABLE `fc_trackingdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_userbankinfos`
--
ALTER TABLE `fc_userbankinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_userdevices`
--
ALTER TABLE `fc_userdevices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deviceToken` (`deviceToken`);

--
-- Indexes for table `fc_userinvitecredits`
--
ALTER TABLE `fc_userinvitecredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_userinvites`
--
ALTER TABLE `fc_userinvites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_users`
--
ALTER TABLE `fc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_wantownits`
--
ALTER TABLE `fc_wantownits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fc_banners`
--
ALTER TABLE `fc_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_carts`
--
ALTER TABLE `fc_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `fc_categories`
--
ALTER TABLE `fc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `fc_colors`
--
ALTER TABLE `fc_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_comments`
--
ALTER TABLE `fc_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fc_commissions`
--
ALTER TABLE `fc_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_contactsellermsgs`
--
ALTER TABLE `fc_contactsellermsgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_contactsellers`
--
ALTER TABLE `fc_contactsellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_countries`
--
ALTER TABLE `fc_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `fc_coupons`
--
ALTER TABLE `fc_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_dispcons`
--
ALTER TABLE `fc_dispcons`
  MODIFY `dcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_dispplms`
--
ALTER TABLE `fc_dispplms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_disputes`
--
ALTER TABLE `fc_disputes`
  MODIFY `disid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_facebookcoupons`
--
ALTER TABLE `fc_facebookcoupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_faqs`
--
ALTER TABLE `fc_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_fashionusers`
--
ALTER TABLE `fc_fashionusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fc_feedcomments`
--
ALTER TABLE `fc_feedcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fc_followers`
--
ALTER TABLE `fc_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `fc_forexrates`
--
ALTER TABLE `fc_forexrates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fc_giftcards`
--
ALTER TABLE `fc_giftcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fc_googlecodes`
--
ALTER TABLE `fc_googlecodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_groupgiftpayamts`
--
ALTER TABLE `fc_groupgiftpayamts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fc_groupgiftuserdetails`
--
ALTER TABLE `fc_groupgiftuserdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fc_hashtags`
--
ALTER TABLE `fc_hashtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_historyitems`
--
ALTER TABLE `fc_historyitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_homepagesettings`
--
ALTER TABLE `fc_homepagesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_invoiceorders`
--
ALTER TABLE `fc_invoiceorders`
  MODIFY `invoiceorderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `fc_invoices`
--
ALTER TABLE `fc_invoices`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `fc_ipntracks`
--
ALTER TABLE `fc_ipntracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_itemfavs`
--
ALTER TABLE `fc_itemfavs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT for table `fc_itemlists`
--
ALTER TABLE `fc_itemlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fc_itemposts`
--
ALTER TABLE `fc_itemposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_itemreviews`
--
ALTER TABLE `fc_itemreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `fc_items`
--
ALTER TABLE `fc_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `fc_languages`
--
ALTER TABLE `fc_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_likedusers`
--
ALTER TABLE `fc_likedusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fc_logcoupons`
--
ALTER TABLE `fc_logcoupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_logs`
--
ALTER TABLE `fc_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1060;

--
-- AUTO_INCREMENT for table `fc_managemodules`
--
ALTER TABLE `fc_managemodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_mobilepages`
--
ALTER TABLE `fc_mobilepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_news`
--
ALTER TABLE `fc_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_occasions`
--
ALTER TABLE `fc_occasions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_ordercomments`
--
ALTER TABLE `fc_ordercomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fc_orders`
--
ALTER TABLE `fc_orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `fc_order_items`
--
ALTER TABLE `fc_order_items`
  MODIFY `orderItemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `fc_payments`
--
ALTER TABLE `fc_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_photos`
--
ALTER TABLE `fc_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `fc_prices`
--
ALTER TABLE `fc_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_productfaq`
--
ALTER TABLE `fc_productfaq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `fc_recipients`
--
ALTER TABLE `fc_recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_reviews`
--
ALTER TABLE `fc_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_searchitems`
--
ALTER TABLE `fc_searchitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2519;

--
-- AUTO_INCREMENT for table `fc_sellercoupons`
--
ALTER TABLE `fc_sellercoupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fc_shareproducts`
--
ALTER TABLE `fc_shareproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `fc_shipings`
--
ALTER TABLE `fc_shipings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `fc_shippingaddresses`
--
ALTER TABLE `fc_shippingaddresses`
  MODIFY `shippingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `fc_shippricelists`
--
ALTER TABLE `fc_shippricelists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_shopcomments`
--
ALTER TABLE `fc_shopcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_shopfavs`
--
ALTER TABLE `fc_shopfavs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_shops`
--
ALTER TABLE `fc_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `fc_shopuserphotos`
--
ALTER TABLE `fc_shopuserphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_sitequeries`
--
ALTER TABLE `fc_sitequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fc_sitesettings`
--
ALTER TABLE `fc_sitesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fc_storefollowers`
--
ALTER TABLE `fc_storefollowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `fc_styles`
--
ALTER TABLE `fc_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_taxes`
--
ALTER TABLE `fc_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fc_tempaddresses`
--
ALTER TABLE `fc_tempaddresses`
  MODIFY `shippingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `fc_trackdetails`
--
ALTER TABLE `fc_trackdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_trackingdetails`
--
ALTER TABLE `fc_trackingdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `fc_userbankinfos`
--
ALTER TABLE `fc_userbankinfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fc_userdevices`
--
ALTER TABLE `fc_userdevices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fc_userinvitecredits`
--
ALTER TABLE `fc_userinvitecredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fc_userinvites`
--
ALTER TABLE `fc_userinvites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fc_users`
--
ALTER TABLE `fc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `fc_wantownits`
--
ALTER TABLE `fc_wantownits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
