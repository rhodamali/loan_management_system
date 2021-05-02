-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2016 at 11:23 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
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

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL
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

CREATE TABLE `division` (
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL
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
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL
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

CREATE TABLE `village` (
  `village_id` int(11) NOT NULL,
  `village_name` varchar(255) NOT NULL,
  `ward_id` int(11) NOT NULL
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

CREATE TABLE `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`village_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`ward_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
