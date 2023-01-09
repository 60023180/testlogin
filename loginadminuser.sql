-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 05:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginadminuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `d_id` int(11) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `d_id`, `d_name`) VALUES
(1, 1, 'กลุ่มงานทางการแพทย์'),
(2, 2, 'ทันตกรรม'),
(3, 3, 'เภสัชกรรม'),
(4, 4, 'การพยาบาล'),
(5, 5, 'ปฐมภูมิและองค์กรรวม'),
(6, 6, 'ซัพพลาย'),
(7, 7, 'แพทย์แผนไทย'),
(8, 8, 'เทคนิคการแพทย์'),
(9, 9, 'บริหารทั่วไป'),
(10, 10, 'ซักฟอก'),
(11, 11, 'ยุทธศาตร์และสารสนเทศทางการแพทย์'),
(12, 12, 'รังสีเทคนิค'),
(13, 13, 'เวชกรรมฟื้นฟู');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `p_id`, `p_name`) VALUES
(1, 1, 'นายแพทย์ชำนาญการ'),
(2, 2, 'นายแพทย์ชำนาญการพิเศษ'),
(3, 3, 'นายแพทย์เชี่ยวชาญ'),
(4, 4, 'ทันตแพทย์ชำนาญการ'),
(5, 5, 'ทันตแพทย์ชำนาญการพิเศษ'),
(6, 6, 'ทันตแพทย์เชี่ยวชาญ'),
(7, 7, 'ทันตแพทย์ปฏิบัติการ'),
(8, 8, 'เภสัชกรชำนาญการ'),
(9, 9, 'เภสัชกรปฏิบัติการ'),
(10, 10, 'แพทย์แผนไทยชำนาญการ'),
(11, 11, 'แพทย์แผนไทยปฏิบัติการ'),
(12, 12, 'พยาบาลวิชาชีพชำนาญการพิเศษ'),
(13, 13, 'พยาบาลวิชาชีพชำนาญ'),
(14, 14, 'พยาบาลวิชาชีพปฏิบัติการ'),
(15, 15, 'พยาบาลวิชาชีพ'),
(16, 16, 'นักกายภาพบำบัดชำนาญการ'),
(17, 17, 'นักกายภาพบำบัดปฏิบัติการ'),
(18, 18, 'นักเทคนิคการแพทย์ชำนาญการ'),
(19, 19, 'นักเทคนิคการแพทย์ปฏิบัติการ'),
(20, 20, 'นักรังสีการแพทย์ชำนาญการ'),
(21, 21, 'นักรังสีการแพทย์ชำปฏิบัติการ'),
(22, 22, 'นวก.สาธารณสุขปฏิบัติการ (พยาบาลวิชาชีพ)'),
(23, 23, 'นักวิชาการสาธารณสุขปฏิบัติการ '),
(24, 24, 'นักวิชาการสาธารณสุข'),
(25, 25, 'นักวิชาการการเงินและบัญชี'),
(26, 26, 'นักเทคนิคการแพทย์'),
(27, 27, 'นักโภชนาการปฏิบัติการ'),
(28, 28, 'นักวิชาการคอมพิวเตอร์'),
(29, 29, 'นักจัดการงานทั่วไปชำนาญการ'),
(30, 30, 'นักประชาสัมพันธ์'),
(31, 31, 'จพ.ทันตสาธารณสุขชำนาญงาน'),
(32, 32, 'จพ.ทันตสาธารณสุขปฏิบัติงาน'),
(33, 33, 'จพ.เภสัชกรรมชำนาญงาน'),
(34, 34, 'จพ.เภสัชกรรมปฏิบัติการ'),
(35, 35, 'จพ.สาธารณสุขชุมชน(เวชกิจฉุกเฉิน)ปฏิบัติงาน'),
(36, 36, 'จพ.สาธารณสุขชุมชน(เวชกิจฉุกเฉิน)'),
(37, 37, 'เจ้าพน้กงานธุรการชำนาญงาน'),
(38, 38, 'เจ้าพนักงานการเงินและบัญชีชำนาญงาน'),
(39, 39, 'เจ้าพนักงานการเงินและบัญชี'),
(40, 40, 'เจ้าพนักงานธุรการ'),
(41, 41, 'เจ้าพนักงานพัสดุ'),
(42, 42, 'เจ้าพนักงานเวชสถิติ'),
(43, 43, 'เจ้าพนักงานเวชสถิติปฏิบัติงาน'),
(44, 44, 'เจ้าพนักงานสาธารณสุขชุมชนชำนาญงาน'),
(45, 45, 'เจ้าหน้าที่พัสดุ'),
(46, 46, 'พนักงานขับรถยนต์'),
(47, 47, 'ผู้ช่วยพยาบาล'),
(48, 48, 'ผู้ช่วยช่างทั่วไป'),
(49, 49, 'ผู้ช่วยทันตแพทย์'),
(50, 50, 'พนักงานช่วยเหลือคนไข้'),
(51, 51, 'พนักงานซักฟอก'),
(52, 52, 'พนักงานบริการ'),
(53, 53, 'พนักงานบัตรรายงานโรค'),
(54, 54, 'พนักงานประจำห้องยา'),
(55, 55, 'พนักงานเปล'),
(56, 56, 'พนักงานประจำห้องทดลอง'),
(57, 57, 'พนักงานประจำตึก'),
(58, 58, 'คนสวน');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `e_id` int(4) NOT NULL,
  `e_prefix` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `e_nickname` varchar(100) NOT NULL,
  `e_dep` varchar(100) NOT NULL,
  `e_position` varchar(100) NOT NULL,
  `e_birth` date NOT NULL,
  `e_cid` int(20) NOT NULL,
  `e_license` varchar(100) NOT NULL,
  `e_tel` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userlevel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `e_id`, `e_prefix`, `firstname`, `lastname`, `e_nickname`, `e_dep`, `e_position`, `e_birth`, `e_cid`, `e_license`, `e_tel`, `username`, `password`, `userlevel`) VALUES
(1, 0, '', 'looo', 'oool', '', '', '', '0000-00-00', 0, '', 0, 'root', '202cb962ac59075b964b07152d234b70', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_dep` (`e_dep`),
  ADD KEY `e_position` (`e_position`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
