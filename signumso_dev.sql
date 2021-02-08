-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2019 at 10:56 PM
-- Server version: 5.6.44
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signumso_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `kpi_reports`
--

CREATE TABLE `kpi_reports` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `report_id` varchar(255) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `container_size` int(11) NOT NULL DEFAULT '6',
  `height` int(11) NOT NULL DEFAULT '550',
  `status` varchar(25) NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpi_reports`
--

INSERT INTO `kpi_reports` (`id`, `sub_category_id`, `category_id`, `tab_id`, `report_id`, `section_id`, `order_no`, `container_size`, `height`, `status`) VALUES
(1, 35, 35, NULL, '4528aa36-9320-4525-b506-de23d6a86a50', 'ReportSection6382fd0dad50fc9f0775', 1, 6, 550, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `kpi_reports_category`
--

CREATE TABLE `kpi_reports_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `super_parent_category_id` int(11) DEFAULT NULL,
  `order_by` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `report_id` varchar(255) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `container_size` int(11) NOT NULL DEFAULT '6',
  `height` int(11) NOT NULL DEFAULT '550',
  `status` varchar(25) NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `sub_category_id`, `category_id`, `tab_id`, `report_id`, `section_id`, `order_no`, `container_size`, `height`, `status`) VALUES
(1, 15, 6, 1, '78a82ae0-7da0-4f21-8ece-c55c48129bce', 'ReportSection30742da11fd36b17a202', 1, 6, 600, 'enable'),
(2, 129, 6, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection2bfd17fb8b370973561e', 1, 6, 550, 'enable'),
(3, 130, 6, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection231361a7d054e492c7f3', 1, 6, 550, 'enable'),
(7, 131, 6, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection9f4eb759aca388634be8', 1, 6, 550, 'enable'),
(8, 30, 7, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection3635af39cdedebcb470c', 1, 6, 550, 'enable'),
(9, 109, 7, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection148dde77f369c158a6c7', 1, 6, 550, 'enable'),
(10, 135, 7, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSectione89007205988cd06fce3', 1, 6, 550, 'enable'),
(11, 134, 7, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSectiond8b9135ae4009d5e1d75', 1, 6, 550, 'enable'),
(12, 25, 8, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection263cd139dc560cd88a38', 1, 6, 550, 'enable'),
(13, 136, 8, 1, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection0eca3232375e62a5b397', 1, 6, 550, 'enable'),
(14, 137, 53, 2, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection93702faf6dcee7c44680', 1, 6, 550, 'enable'),
(15, 179, 53, 2, 'b8359770-2f21-4974-9532-97b65918e230', 'ReportSection283b72cadc29e0999b06', 1, 6, 550, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `reports_category`
--

CREATE TABLE `reports_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `super_parent_category_id` int(11) DEFAULT NULL,
  `order_by` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_category`
--

INSERT INTO `reports_category` (`category_id`, `name`, `parent_category_id`, `super_parent_category_id`, `order_by`) VALUES
(1, 'Sales', NULL, NULL, 1),
(2, 'Inventory', NULL, NULL, 1),
(3, 'POS', NULL, NULL, 1),
(4, 'Purchase', NULL, NULL, 1),
(5, 'Finance', NULL, NULL, 1),
(6, 'Information', 1, NULL, 1),
(7, 'Analysis', 1, NULL, 2),
(8, 'Insight', 1, NULL, 3),
(15, 'Sales Overview', 6, 1, 1),
(25, 'Branch Performance', 8, 1, 1),
(30, 'Sales Vs Stock - Time Series', 7, 1, 1),
(40, 'POS-Performance Over Time', 51, 3, 1),
(51, 'Insights', 3, NULL, 3),
(53, 'Information', 2, NULL, 1),
(57, 'Information', 3, NULL, 1),
(59, 'Insights', 4, NULL, 3),
(74, 'Analysis', 2, NULL, 2),
(80, 'Insights', 2, NULL, 3),
(89, 'Information', 5, NULL, 1),
(93, 'Analysis', 5, NULL, 2),
(103, 'Analysis', 3, NULL, 2),
(109, 'Sales Vs Stock - Branch Wise', 7, 1, 2),
(113, 'Insights', 5, NULL, 3),
(129, 'Branch Overview', 6, 1, 2),
(130, 'Product Segmentation Overview', 6, 1, 3),
(131, 'Price Segmentation Overview', 6, 1, 4),
(132, 'Performance Scope Of Each KPI-PUR', 89, 5, 8),
(133, 'KPI Evolution-Sales', 89, 5, 3),
(134, 'Trend Analysis', 7, 1, 3),
(135, 'Pareto Analysis', 7, 1, 5),
(136, 'Product Grp Performance', 8, 1, 2),
(137, 'Product Segmentation Stock Value', 53, 2, 1),
(138, 'Performance Scope of Each KPI-INV', 89, 5, 3),
(139, 'Sales Vs Stock - Time Series', 74, 2, 1),
(140, 'Sales Vs Stock - Branch Wise', 74, 2, 2),
(142, 'Pareto Analysis', 74, 2, 4),
(143, 'KPI Evolution', 89, 5, 4),
(145, 'Trend Analysis', 80, 2, 4),
(146, 'Life Cycle of Item', 80, 2, 2),
(147, 'Purchase Overview of KPI', 167, 4, 1),
(148, 'Performance Scope of Each KPI', 89, 5, 7),
(149, 'Pur analysis of Product Grp', 57, 3, 3),
(150, 'KPI Evolution-POS', 57, 3, 2),
(151, 'Pur KPI Trend Analysis-By Product Grp', 180, 4, 1),
(152, 'Pur Paretto Analysis By Product Grp', 180, 4, 2),
(153, 'POS-Salesperson Information', 57, 3, 1),
(154, 'POS-CM/PM', 57, 3, 2),
(155, 'POS-Overview of KPI\'s', 89, 5, 3),
(156, 'KPI Evolution', 89, 5, 4),
(157, 'POS KPI', 89, 5, 5),
(158, 'POS-Salesperson Based Analytics', 57, 3, 1),
(159, 'POS-Salesman Comparision', 103, 3, 2),
(160, 'POS-Customer Analysis', 93, 5, 3),
(161, 'Salesman Ranking', 93, 5, 4),
(162, 'POS-Nationality', 103, 3, 5),
(163, 'Salesman Details', 93, 5, 6),
(164, 'POS-Customer Detalils', 103, 3, 7),
(165, 'POS-Paretto', 103, 3, 8),
(166, 'Salesman Performance', 51, 3, 1),
(167, 'Information', 4, NULL, 1),
(168, 'Sales Overview', 167, 4, 1),
(169, 'Sales Vs Stock - Time Series', 167, 4, 2),
(170, 'Sales by Branch', 167, 4, 3),
(171, 'Sales Vs Stock By Branch', 167, 4, 4),
(172, 'Branch Performance', 167, 4, 5),
(173, 'Past Period Performance', 167, 4, 6),
(174, 'Design', 167, 4, 7),
(177, 'Sales Information', 175, 1, 1),
(178, 'Sales Frm Test', 175, 1, 2),
(179, 'Product Segmentation By Stock Turnaround', 53, 2, 2),
(180, 'Analysis', 4, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT 'user' COMMENT 'admin, user',
  `email` varchar(55) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `first_name` varchar(40) DEFAULT NULL,
  `bipassword` varchar(100) DEFAULT NULL,
  `biname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `email`, `phone`, `created_at`, `updated_at`, `status`, `first_name`, `bipassword`, `biname`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 'Gottilla@777', 'suntech@kiteservices.com'),
(2, 'signumuser1', 'signumuser1', 'admin', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL, NULL),
(3, 'signumuser2', 'signumuser2', 'admin', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL, NULL),
(4, 'dsdsds', '1234', 'user', 'admin@sdd.com', NULL, '2019-05-13 14:49:42', '2019-05-15 18:40:54', 1, NULL, 'admin', 'admin'),
(8, 'Test1', '1234', 'user', 'kaushil@aero-ic.com', NULL, '2019-05-18 12:00:38', '2019-06-04 10:34:48', 1, NULL, 'admin', 'admin'),
(9, 'shiva@123', '1234', 'user', 'shivakumar.a@kiteservices.com', NULL, '2019-05-18 12:03:07', '2019-05-19 04:12:50', 1, NULL, 'shiva123', 'shivakumar.a@kiteservices.com'),
(10, 'prashanth20111', '123456', 'user', 'prashanth@gmail.com', NULL, '2019-05-19 04:01:47', '2019-05-19 04:04:19', 1, NULL, 'Gottilla@666', 'suntech@kiteservices.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kpi_reports`
--
ALTER TABLE `kpi_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_reports_category`
--
ALTER TABLE `kpi_reports_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_category`
--
ALTER TABLE `reports_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kpi_reports`
--
ALTER TABLE `kpi_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kpi_reports_category`
--
ALTER TABLE `kpi_reports_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reports_category`
--
ALTER TABLE `reports_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
