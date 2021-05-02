-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2016 at 12:57 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dcdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(300, 'Male'),
(301, 'Female'),
(302, 'Youth'),
(303, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `region_id`) VALUES
(40, 'Meru', 1),
(41, 'Arusha City', 1),
(42, 'Arusha District', 1),
(43, 'Karatu', 1),
(44, 'Longido', 1),
(45, 'Monduli', 1),
(46, 'Ngorongoro', 1),
(47, 'Ilala', 2),
(48, 'Kinondoni', 2),
(49, 'Temeke', 2),
(50, 'Itilima', 25),
(51, 'Bariadi', 25),
(52, 'Meatu', 25),
(53, 'Busega', 25),
(54, 'Maswa', 25),
(55, 'Bariadi TC', 25);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `district_id`) VALUES
(100, 'Itilima', 50),
(101, 'Kanadi', 50),
(102, 'Kinang''weli', 50),
(103, 'Bumera', 50);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` char(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `group_activity` varchar(50) NOT NULL,
  `group_category` varchar(50) NOT NULL,
  `group_total_members` varchar(50) NOT NULL,
  `group_leader` varchar(50) NOT NULL,
  `loan_information` text NOT NULL,
  `group_capital` varchar(100) NOT NULL,
  `group_creation_date` date NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `region`, `district`, `division`, `ward`, `village`, `registration_number`, `group_activity`, `group_category`, `group_total_members`, `group_leader`, `loan_information`, `group_capital`, `group_creation_date`) VALUES
(1, 'Apex', '25', '50', '103', '105', '130', 'apex1111', 'Activity 1', 'Group of men only', '10', 'Sanjeev', 'FOr Hourse', '50000', '2016-08-11'),
(2, 'aaaa', '25', '50', '101', '118', '191', '545', 'Activity 1', 'Group of men only', '10', 'aaadf', '1111', '55555', '2016-08-16'),
(3, 'Duc', '2', '2', '1', '2', '1', 'dfdfdf555', 'dfdfd', 'dfdf', 'dfdfdfdfd', 'dfdf', 'dfdfd', '5454', '2016-08-31'),
(4, 'dfd', '1', '2', '1', '1', '1', '2dfdf', 'dfd', 'df', '5', 'dfdf', 'dfdfdf', 'dfdfdf', '2016-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(50) NOT NULL,
  `loan_come_from` varchar(50) NOT NULL,
  `loan_amount` varchar(50) NOT NULL,
  `loan_interest` varchar(10) NOT NULL,
  `payment_term` varchar(50) NOT NULL,
  `total_payment_with_intereset` varchar(50) NOT NULL,
  `emi_per_month` varchar(50) NOT NULL,
  `payment_schedule` date NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `group_id`, `loan_come_from`, `loan_amount`, `loan_interest`, `payment_term`, `total_payment_with_intereset`, `emi_per_month`, `payment_schedule`, `due_date`) VALUES
(2, '1', 'Government', '1000', '10', '2', '1200', '50', '2016-09-01', '2016-09-04'),
(3, '2', 'Government', '10000', '10', '3', '13000', '361.1111111111111', '2016-08-25', '2016-08-26'),
(4, '3', 'Council', '500000', '10', '5', '750000', '12500', '2016-08-25', '2016-08-26'),
(5, '4', 'Government', '1000000', '10', '1', '1100000', '91666.66666666667', '2016-08-24', '2016-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `group_id` int(11) NOT NULL,
  `join_date` date NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `gender`, `group_id`, `join_date`) VALUES
(1, 'AAAVVVV', 'BB', 'm', 1, '2016-08-11'),
(2, 'KHKJ', 'HKKHK', 'f', 1, '2016-08-11'),
(3, 'Adfdf', 'dfdfd', 'm', 1, '2016-08-16'),
(4, 'bbb', 'dfdf', 'm', 1, '2016-08-16'),
(5, 'ccc', 'ccdf', 'f', 1, '2016-08-16'),
(6, 'dfdf', 'ddd', 'f', 1, '2016-08-16'),
(7, 'dfdfd', 'fdfdfdf', 'f', 1, '2016-08-16'),
(8, '545', 'dfdf', 'm', 1, '2016-08-16'),
(9, 'ae', 'ed', 'm', 1, '2016-08-16'),
(11, 'Ac', 'ac', 'm', 1, '2016-08-16'),
(12, 'adddd', 'adfdfd', 'm', 1, '2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE IF NOT EXISTS `payment_history` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`payment_id`, `group_id`, `amount_paid`, `payment_date`) VALUES
(1, 1, 50, '2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`) VALUES
(1, 'Arusha'),
(2, 'Dar es salaam'),
(3, 'Dodoma'),
(4, 'Geita'),
(5, 'Iringa'),
(6, 'Kagera'),
(7, 'Katavi'),
(8, 'Kigoma'),
(9, 'Kilimanjaro'),
(10, 'Lindi'),
(11, 'Manyara'),
(12, 'Mara'),
(13, 'Mbeya'),
(14, 'Songwe'),
(15, 'Morogoro'),
(16, 'Mtwara'),
(17, 'Mwanza'),
(18, 'Njombe'),
(19, 'Pemba North'),
(20, 'Pemba South'),
(21, 'Pwani'),
(22, 'Rukwa'),
(23, 'Ruvuma'),
(24, 'Shinyanga'),
(25, 'Simiyu'),
(26, 'Singida'),
(27, 'Tabora'),
(28, 'Tanga'),
(29, 'Zanzibar North'),
(30, 'Zanzibar South'),
(31, 'Zanzibar Urban West');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE IF NOT EXISTS `village` (
  `village_id` int(11) NOT NULL,
  `village_name` varchar(255) NOT NULL,
  `ward_id` int(11) NOT NULL,
  PRIMARY KEY (`village_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`village_id`, `village_name`, `ward_id`) VALUES
(130, 'Bumera', 105),
(131, 'Bulolambeshi', 105),
(132, 'Mwazimbi', 105),
(133, 'Mwandulu', 105),
(134, 'Habiya', 105),
(135, 'Ikindilo', 106),
(136, 'Ntenga', 106),
(137, 'Mwamungeshi', 106),
(138, 'Mwabuki', 106),
(139, 'Nyang''ombe', 106),
(140, 'Mwamtani', 107),
(141, 'Manasubi', 107),
(142, 'Mbogo', 107),
(143, 'Mwamakili', 107),
(144, 'Mwaswale', 108),
(145, 'Nding''ho', 108),
(146, 'Ng''walali', 108),
(147, 'Mwamalize', 108),
(148, 'Nkuyu', 109),
(149, 'Nyantugutu', 109),
(150, 'Lung''wa', 109),
(151, 'Pijulu', 109),
(152, 'Sagata', 110),
(153, 'Gaswa', 110),
(154, 'Laini A', 110),
(155, 'Laini B', 110),
(156, 'Mwalushu', 111),
(157, 'Mwamigagani', 111),
(158, 'Mwamanyangu', 111),
(159, 'Mwanunui', 111),
(160, 'Ng''homango', 111),
(161, 'Ntagaswa', 111),
(162, 'Mwamapalala', 112),
(163, 'Nkololo Itilima', 112),
(164, 'Ngeme', 112),
(165, 'Mwamunhu', 112),
(166, 'Idoselo', 112),
(167, 'Nkoma', 113),
(168, 'Dasina', 113),
(169, 'Gambasingu', 113),
(170, 'Ng''wang''wita', 113),
(171, 'Musoma', 113),
(172, 'Mwambagwa', 113),
(173, 'Nyamalapa', 114),
(174, 'Kimali', 114),
(175, 'Itilima', 114),
(176, 'B/Mbugani', 114),
(177, 'Isakang''hwale', 114),
(178, 'Mitobo', 115),
(179, 'Budalabujiga', 115),
(180, 'Mwakatale', 115),
(181, 'Mwabasabi', 115),
(182, 'Nanga', 116),
(183, 'Chinamili', 116),
(184, 'Senani', 116),
(185, 'Sali', 116),
(186, 'Lagangabilili', 117),
(187, 'Isengwa', 117),
(188, 'Nguno', 117),
(189, 'Lali', 117),
(190, 'Ng''esha', 117),
(191, 'Shishani', 118),
(192, 'Mwanhunda', 118),
(193, 'Migato', 118),
(194, 'Simiyu', 118),
(195, 'Longalombogo', 118),
(196, 'Madilana', 119),
(197, 'Mhunze', 119),
(198, 'Ngando', 119),
(199, 'Ng''wabulugu', 119),
(200, 'Nangale', 120),
(201, 'Ng''wanyitanga', 120),
(202, 'Ndolelezi', 120),
(203, 'Ng''waogama', 120),
(204, 'Mwakilangi', 121),
(205, 'Isengwa', 121),
(206, 'Kinang''weli', 121),
(207, 'Mwagimagi', 121),
(208, 'Lalang''ombe', 121),
(209, 'Luguru', 122),
(210, 'Ikungulipu', 122),
(211, 'Itubilo', 122),
(212, 'Inalo', 122),
(213, 'Kidula', 123),
(214, 'Sunzula', 123),
(215, 'Ng''hesha Itilima', 123),
(216, 'Mwamnemha', 123),
(217, 'Nhobora', 124),
(218, 'Mwabuyunge', 124),
(219, 'Mwaumisheni', 124),
(220, 'Tagawi', 124),
(221, 'Kilugala', 124),
(222, 'Sawida', 125),
(223, 'Isagala', 125),
(224, 'Mahembe', 125),
(225, 'Songambele', 125),
(226, 'Bukingwamizi', 126),
(227, 'Zanzui', 126),
(228, 'Mlimani', 126),
(229, 'Sasago', 126),
(230, 'Kabale', 126),
(231, 'Kashishi', 126);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE IF NOT EXISTS `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`ward_id`, `ward_name`, `division_id`) VALUES
(105, 'Bumera', 103),
(106, 'Ikindilo', 103),
(107, 'Mwamtani', 103),
(108, 'Mwaswale', 103),
(109, 'Nkuyu', 103),
(110, 'Sagata', 103),
(111, 'Mwalushu', 100),
(112, 'Mwamapalala', 100),
(113, 'Nkoma', 100),
(114, 'Nyamalapa', 100),
(115, 'Budalabujiga', 101),
(116, 'Chinamili', 101),
(117, 'Lagangabilili', 101),
(118, 'Migato', 101),
(119, 'Mhunze', 101),
(120, 'Ndolelezi', 101),
(121, 'Kinang''weli', 102),
(122, 'Luguru', 102),
(123, 'Mbita', 102),
(124, 'Nhobora', 102),
(125, 'Sawida', 102),
(126, 'Zagayu', 102);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
