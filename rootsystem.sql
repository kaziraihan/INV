-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rootsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetusedby`
--

CREATE TABLE `assetusedby` (
  `id` int(254) NOT NULL,
  `ForeignKey` int(254) NOT NULL,
  `AssetCode` int(254) NOT NULL,
  `UsedBy` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_list`
--

CREATE TABLE `asset_list` (
  `id` int(254) NOT NULL,
  `AssetCode` varchar(254) NOT NULL,
  `Company` varchar(4) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `assettype` varchar(254) NOT NULL,
  `AssetDescription` varchar(254) NOT NULL,
  `PurchaseDate` varchar(254) NOT NULL,
  `DepnStartPeriod` varchar(254) NOT NULL,
  `DepnEndPeriod` varchar(254) NOT NULL,
  `Disposed` varchar(10) NOT NULL,
  `SN` varchar(254) NOT NULL,
  `Supplier` varchar(254) NOT NULL,
  `Remark` varchar(254) NOT NULL,
  `usedbyid` int(4) NOT NULL,
  `Usedby` varchar(254) NOT NULL,
  `usedbydept` varchar(254) NOT NULL,
  `assigndate` date DEFAULT NULL,
  `Usedby2` varchar(254) NOT NULL,
  `Usedby3` varchar(254) NOT NULL,
  `Usedby4` varchar(254) NOT NULL,
  `Usedby5` varchar(254) NOT NULL,
  `Usedby6` varchar(254) NOT NULL,
  `Usedby7` varchar(254) NOT NULL,
  `Usedby8` varchar(254) NOT NULL,
  `Usedby9` varchar(254) NOT NULL,
  `Usedby10` varchar(254) NOT NULL,
  `assigned` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_list`
--

INSERT INTO `asset_list` (`id`, `AssetCode`, `Company`, `qty`, `assettype`, `AssetDescription`, `PurchaseDate`, `DepnStartPeriod`, `DepnEndPeriod`, `Disposed`, `SN`, `Supplier`, `Remark`, `usedbyid`, `Usedby`, `usedbydept`, `assigndate`, `Usedby2`, `Usedby3`, `Usedby4`, `Usedby5`, `Usedby6`, `Usedby7`, `Usedby8`, `Usedby9`, `Usedby10`, `assigned`) VALUES
(1, 'CEBD00002', 'NSBD', '1', 'Software', 'LAPTOP - ANJAN', '', '', '', '1', 'na', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(2, 'CEBD00003', 'NSBD', '1', 'Laptop', 'LAPTOP - SAIFUL', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(3, 'CEBD00004', 'NSBD', '12', ' Infrastructure', 'SERVER RACK - NETCOM', '', '2010-06-01', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-28', 'ZZZ NSL system', '', 'M.A. Imran', 'Mahtab Uddin Ahmed Likhon', 'Md. Manzurul Hasan', '', '', '', 'Md. Manzurul Hasan', 0),
(4, 'CEBD00005', 'NSBD', '1', 'Software', 'Laptop for Ezio', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(5, 'CEBD00009', 'NSBD', '1', 'Mobile', 'Security & Access Control System', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(6, 'CEBD00010(1-9)', 'NSBD', '20', 'Laptop', 'Desktop Computer', '', '', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(7, 'CEBD00011', 'NSBD', '1', 'Desktop', 'Server (mount)', '', '', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(8, 'CEBD00012', 'NSBD', '1', 'Desktop', 'Back-up Tape Drive', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(9, 'CEBD00020', 'NSBD', '14', 'Infrastructure', 'CAT 5E Cable-Data & Voice', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(10, 'CEBD00021', 'NSBD', '130', 'Infrastructure', 'CAT 5E Moduler-Data & Voice', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(11, 'CEBD00022', 'NSBD', '65', ' Infrastructure', 'Face Plate ( AMP)', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(12, 'CEBD00023', 'NSBD', '130', ' Infrastructure', 'Connector RJ45 & RJ11', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(13, 'CEBD00024', 'NSBD', '195', ' Infrastructure', 'Patch Cord-Data & Voice', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(14, 'CEBD00025', 'NSBD', '1', ' Infrastructure', 'PVC Pipe & Screw', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(15, 'CEBD00026', 'NSBD', '65', ' Infrastructure', 'Service Charge', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(16, 'CEBD00028', 'NSBD', '1', 'Desktop', 'APC UPS 1X5000 KVA', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(17, 'CEBD00029', 'NSBD', '1', '#N/A', 'Projector with Screen', '1/9/2010', '8/1/2010', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(18, 'CEBD00033', 'NSBD', '1', 'Laptop', 'GP-BLACKBERRY-JAHAN', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(19, 'CEBD00034', 'NSBD', '1', 'Mobile', 'GP-BLACKBERRY-SHOYAB', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(20, 'CEBD00035', 'NSBD', '1', 'Mobile', 'GP-PUR BLACK BERRY', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(21, 'CEBD00036', 'NSBD', '1', 'Network', 'STEVEN-BLACKBERRY', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(22, 'CEBD00037', 'NSBD', '2', 'Desktop', 'Executive-Laptop', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(23, 'CEBD00038', 'NSBD', '1', 'Desktop', 'Ryans-Camera W/520', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(24, 'CEBD00041', 'NSBD', '1', 'Desktop', 'GP-BLACK BERRY-8520', '1/9/2010', '8/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(25, 'CEBD00042', 'NSBD', '1', 'Desktop', 'E/TECHNOLOGIES-LAPTOP', '1/9/2010', '8/1/2010', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(26, 'CEBD00043', 'NSBD', '1', 'Desktop', 'Thakral Switch for Server', '1/11/2010', '10/1/2010', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(27, 'CEBD00044', 'NSBD', '1', 'Mobile', 'Thakral Computer', '1/11/2010', '10/1/2010', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(28, 'CEBD00045', 'NSBD', '1', 'Desktop', 'A3 Color Printer', '1/1/2011', '12/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(29, 'CEBD00046', 'NSBD', '1', 'Desktop', 'LAPTOP-GAIL JONES', '1/1/2011', '12/1/2010', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(30, 'CEBD00047', 'NSBD', '7', 'Desktop', 'Desktop Computer', '1/3/2011', '2/1/2011', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(31, 'CEBD00048', 'NSBD', '2', 'Desktop', 'Desktop 2 PCS', '1/4/2011', '3/1/2011', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(32, 'CEBD00049', 'NSBD', '3', 'Laptop', 'Blackberry 3 PCS', '1/5/2011', '4/1/2011', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(33, 'CEBD00050', 'NSBD', '1', 'Laptop', 'Laptop-Shahul Sally', '', '', '', '0', 'na', 'Unidentified', '', 87, 'Shahul Sally', 'Management', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(34, 'CEBD00051', 'NSBD', '1', 'Desktop', 'Blackberry- Shahul', '15-12-11', '11/1/2011', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(35, 'CEBD00052', 'NSBD', '1', 'Desktop', 'Desktop Computer', '26-01-12', '12/1/2011', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(36, 'CEBD00053', 'NSBD', '5', 'Desktop', 'Desktop Computer w/UPS', '14-02-12', '1/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(37, 'CEBD00054', 'NSBD', '2', 'Printer', 'Desktop Computer', '1/3/2012', '2/1/2012', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(38, 'CEBD00055', 'NSBD', '2', 'Printer', 'GP-Black Berry-8520-P09', '1/4/2012', '3/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(39, 'CEBD00056', 'NSBD', '2', 'Mobile', 'Desktops - W/UPS', '1/4/2012', '3/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(40, 'CEBD00057', 'NSBD', '1', 'Mobile', 'Laptop', '1/4/2012', '3/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(41, 'CEBD00058', 'NSBD', '1', 'Desktop', 'DESKTOPS - 2 PC W/UPS', '1/5/2012', '4/1/2012', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(42, 'CEBD00059-60', 'NSBD', '2', 'Mobile', 'Mobile Sets', '1/5/2012', '4/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(43, 'CEBD00061', 'NSBD', '1', 'Mobile', 'Mobile', '1/6/2012', '5/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(44, 'CEBD00062', 'NSBD', '1', 'Laptop', 'Mobile', '1/7/2012', '6/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(45, 'CEBD00063', 'NSBD', '1', 'Mobile', 'Laptop', '1/10/2012', '9/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(46, 'CEBD00064', 'NSBD', '1', 'Laptop', 'Laptop', '6/12/2012', '11/1/2012', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(47, 'CEBD00065', 'NSBD', '2', 'Printer', 'Desktop Computers', '14-01-13', '12/1/2012', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(48, 'CEBD00066', 'NSBD', '1', 'Laptop', 'Desktop Computers', '18-04-13', '3/1/2013', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(49, 'CEBD00067', 'NSBD', '2', 'VC', 'Desktop Computers', '18-04-13', '3/1/2013', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(50, 'CEBD00068', 'NSBD', '2', 'Mobile', 'GERBER- 2 DESKTOP COMPUTER', '18-04-13', '3/1/2013', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(51, 'CEBD00070', 'NSBD', '2', 'UPS', 'GERBER ACCMUARK-2PCS', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(52, 'CEBD00071-3', 'NSBD', '3', 'Printer', 'Laptop 3 pcs', '18-04-13', '3/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(53, 'CESL00074', 'NSBD', '1', 'Polycom VC', 'VC Policom', '', '', '', '0', 'na', 'Aamra networks limited', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(54, 'CEBD00075', 'NSBD', '1', '#N/A', 'Mobile Phone', '7/5/1905', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(55, 'CEBD00076', 'NSBD', '1', 'Desktop', 'LED TV FOR VC', '19-04-13', '3/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(56, 'CEBD00077', 'NSBD', '1', 'Desktop', 'Desktop Computer', '11/6/2013', '5/1/2013', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(57, 'CEBD00078', 'NSBD', '1', 'VC', 'Desktop Computer', '11/6/2013', '5/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(58, 'CEBD00079', 'NSBD', '1', 'Mobile', 'Desktop Computer + Laptop', '11/6/2013', '5/1/2013', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(59, 'CEBD00080', 'NSBD', '1', 'Polycom VC', 'VC Device & TV monitor', '', '', '', '0', 'na', 'Aamra networks limited', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(60, 'CEBD00081', 'NSBD', '1', 'Server', 'Payroll Software, License & Hardware', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(61, 'CEBD00082', 'NSBD', '1', 'Desktop', 'LICENSE SOFTWARE', '1/9/2013', '8/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(62, 'CEBD00083', 'NSBD', '1', 'Desktop', 'Laptops-Gail', '1/10/2013', '9/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(63, 'CEBD00084', 'NSBD', '1', 'Desktop', 'Desktop Computer-new staff', '1/12/2013', '11/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(64, 'CEBD00085', 'NSBD', '1', 'Pattern Machine', 'Gerber (Ploter+ Digitizer)', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(65, 'CEBD00086', 'NSBD', '1', 'Desktop', 'Blackberry/mobile Phone-Kamal Ahammed', '1/1/2014', '12/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(66, 'CEBD00087', 'NSBD', '1', 'Laptop', 'Laptops-Kamal Ahammed', '', '', '', '0', 'na', 'Unidentified', '', 93, 'Mohammad Salah Uddin Kamran', 'Finance and Accounts', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(67, 'CEBD00088', 'NSBD', '1', 'Server', 'Desktop Computer-Nazmul Hassan', '1/1/2014', '12/1/2013', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(68, 'CEBD00089', 'NSBD', '1', 'Mobile', 'Desktop Computer-Kamal Hossain', '1/1/2014', '12/1/2013', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(69, 'CEBD00090', 'NSBD', '1', 'Mobile', 'BB MOB-FR SHAHUL', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(70, 'CEBD00091', 'NSBD', '1', 'Laptop', 'Mobile - Peter', '1/2/2014', '1/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(71, 'CEBD00092', 'NSBD', '1', 'Desktop', 'mobile - HR mgr Kamrun', '1/2/2014', '1/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(72, 'CEBD00093', 'NSBD', '1', 'Desktop', 'Desktop Computer-BD14GT01/LB221 Mohammad Omar Faruk', '1/2/2014', '1/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(73, 'CEBD00094', 'NSBD', '1', 'Laptop', 'Desktop Computer-BD14SM01/Sazzad Ferdous', '1/4/2014', '3/1/2014', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(74, 'CEBD00095', 'NSBD', '1', 'Laptop', 'Desktop Computer BD14MR04/LB224/Sheikh Islam', '1/4/2014', '3/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(75, 'CEBD00096', 'NSBD', '1', 'Desktop', 'Desktop Computer(Replacement) -LB163-Sanaul Haque', '1/4/2014', '3/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(76, 'CEBD00097', 'NSBD', '1', 'CCTV', 'Desktop Computer(Replacement)', '1/4/2014', '3/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(77, 'CEBD00098', 'NSBD', '1', 'Access control', 'LAPTOP VAT CEBD00098 & 99  ( taief + nisat )', '1/5/2014', '4/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(78, 'CEBD00099', 'NSBD', '1', 'TV', 'Laptop-Nishat', '1/7/2014', '6/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(79, 'CEBD00100', 'NSBD', '1', 'Printer', 'mobile phone-Saiful', '1/7/2014', '6/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(80, 'CEBD00101', 'NSBD', '1', 'Smartphone', 'mobile phone - Shahul', '', '', '', '0', 'na', 'Unidentified', '', 87, 'Shahul Sally', 'Management', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(81, 'CEBD00102', 'NSBD', '1', 'iMacbook', 'Contingency-firewall', '1/7/2014', '6/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(82, 'CEBD00103', 'NSBD', '1', 'Access control', 'desktop-Jamil Hossain DPV1408656', '1/7/2014', '6/1/2014', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(83, 'CEBD00104', 'NSBD', '1', 'Camera', 'desktop-Mokammel Nobin DPV1408656', '1/12/2014', '11/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(84, 'CEBD00105', 'NSBD', '1', 'Adobe', 'desktop-Anisul Haque DPV1408656', '1/12/2014', '11/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(85, 'CEBD00106', 'NSBD', '1', 'Laptop', 'desktop-Ahmed Zaman DPV1408656', '1/8/2014', '7/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(86, 'CEBD00107', 'NSBD', '1', 'Digital camera', 'desktop - Amzad Hossain DPV1408656', '1/8/2014', '7/1/2014', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(87, 'CEBD00108', 'NSBD', '1', 'Mobile', 'Phone-Ruth DPV1408668', '1/8/2014', '7/1/2014', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(88, 'CEBD00109', 'NSBD', '1', 'Desktop', 'Nishat & Taief\'s & window software DPV1408623', '1/8/2014', '7/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(89, 'CEBD00110', 'NSBD', '1', 'Mobile', 'Desktop - NAFIZ', '1/9/2014', '8/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(90, 'CEBD00111', 'NSBD', '1', 'Desktop', 'Desktop - SADI', '1/9/2014', '8/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(91, 'CEBD00112', 'NSBD', '1', '#N/A', 'Desktop - MAINUL', '1/9/2014', '8/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(92, 'CEBD00113', 'NSBD', '1', 'Desktop', 'laptop-merchant DPV1409624', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(93, 'CEBD00114', 'NSBD', '1', 'Digital camera', 'laptop-merchant DPV1409624', '1/9/2014', '8/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(94, 'CEBD00115', 'NSBD', '1', 'Desktop', 'Desktop Computer', '1/9/2014', '8/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(95, 'CEBD00116', 'NSBD', '1', 'DSLR', 'Desktop Computer', '1/9/2014', '8/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(96, 'CEBD00117', 'NSBD', '1', 'CCTV', 'Desktop Computer', '1/11/2014', '10/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(97, 'CEBD00118', 'NSBD', '1', 'Digital camera', 'Printer', '1/10/2014', '9/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(98, 'CEBD00119', 'NSBD', '1', 'Access control', 'Printer', '1/10/2014', '9/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(99, 'CEBD00120', 'NSBD', '1', 'Printer', 'Mobile for Taief', '', '', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(100, 'CEBD00121', 'NSBD', '1', 'Desktop', 'MOBile for ALAM', '1/10/2014', '9/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(101, 'CEBD00122', 'NSBD', '1', 'Laptop', 'DESKTOP FROM ISL P12', '1/10/2014', '9/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(102, 'CEBD00123', 'NSBD', '1', 'Laptop', 'MOBILE FR PET SLATER P12', '1/12/2014', '11/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(103, 'CEBD00124', 'NSBD', '1', 'Laptop', 'MOBILE FR JAGS P12', '1/12/2014', '11/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(104, 'CEBD00125', 'NSBD', '1', 'Desktop', 'LAPTOP FR JAGS P12', '1/12/2014', '11/1/2014', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(105, 'CEBD00126', 'NSBD', '1', 'Laptop', 'MOBILE FR MURAD P12', '1/1/2015', '12/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(106, 'CEBD00127', 'NSBD', '1', 'Digital camera', 'IT VISTA LAPTOP PUR P11', '1/1/2015', '12/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(107, 'CEBD00128', 'NSBD', '1', 'Others', 'PHOTOCOPIER PUR P12', '1/1/2015', '12/1/2014', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(108, 'CEBD00129', 'NSBD', '4', 'Printer', 'Laptop -1503647 VISTA 3FACTORY 1 JAGS CQ#0998344', '1/1/2015', '12/1/2014', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(109, 'CEBD00130', 'NSBD', '1', 'Desktop', 'LCD TV for VC system', '1/1/2015', '12/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(110, 'CEBD00131', 'NSBD', '3', 'Laptop', 'mobile set for old office', '1/1/2015', '12/1/2014', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(111, 'CEBD00132', 'NSBD', '1', 'Laptop', 'UPS-3KVA+1KVA-CE for new office', '1/4/2015', '3/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(112, 'CEBD00133', 'NSBD', '1', 'HDD', 'photocopier - for new office', '1/4/2015', '3/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(113, 'CEBD00134', 'NSBD', '1', ' Infrastructure', 'LAN set up - for new office', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(114, 'CEBD00135', 'NSBD', '1', ' Infrastructure', 'pranatun - for new office', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(115, 'CEBD00136', 'NSBD', '12', 'HDD', 'Desktop Computer', '1/5/2015', '4/1/2015', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(116, 'CEBD00137', 'NSBD', '1', 'HDD', 'Desktop Computer', '1/5/2015', '4/1/2015', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(117, 'CEBD00138', 'NSBD', '1', 'Polycom VC', 'single point VC Device & TV monitor', '', '', '', '0', 'na', 'Aamra networks limited', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(118, 'CEBD00139', 'NSBD', '1', 'HDD', 'Mobile', '1/5/2015', '4/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(119, 'CEBD00140', 'NSBD', '1', 'HDD', 'DELL OPTIPLEX 3020 MT - Lutfun', '1/5/2015', '4/1/2015', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(120, 'CEBD00141', 'NSBD', '1', 'HDD', 'DELL OPTIPLEX 3020 MT - Papia', '1/5/2015', '4/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(121, 'CEBD00142', 'NSBD', '1', 'Printer', 'DELL OPTIPLEX 3020 MT - Humaiyra', '1/6/2015', '5/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(122, 'CEBD00143', 'NSBD', '1', 'server', 'DELL OPTIPLEX 3020 MT', '1/7/2015', '6/1/2015', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(123, 'CEBD00144', 'NSBD', '1', 'Desktop', 'DELL OPTIPLEX 3020 MT - Dilruba', '', '', '', '0', 'na', 'Unidentified', '', 84, 'Shabiha Khan Nisha', 'Apprentice', '2025-01-07', '', '', '', '', '', '', '', '', '', 0),
(124, 'CEBD00145', 'NSBD', '1', 'Desktop', 'LENEVO G4070 - Sajjan', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(125, 'CEBD00146', 'NSBD', '1', 'Desktop', 'LENEVO G4070 - Nobin', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(126, 'CEBD00147', 'NSBD', '1', 'Mobile', 'LENEVO G4070 - Lone', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(127, 'CEBD00148', 'NSBD', '1', 'Server', 'HP PROLIANT DL380 GEN 9 SERVER', '', '', '', '0', 'na', 'Tech Republic', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(128, 'CEBD00149', 'NSBD', '1', 'Laptop', 'SAMSUNG MOBILE PHONE', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(129, 'CEBD00150', 'NSBD', '1', 'Laptop', 'SAMSUNG MOBILE PHONE', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(130, 'CEBD00151', 'NSBD', '4', 'Laptop', 'LAPTOP', '1/7/2015', '6/1/2015', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(131, 'CESL00215', 'NSBD', '1', 'Desktop', 'COMPUTER', '23-06-09', '5/1/2009', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(132, 'CESL00225', 'NSBD', '1', 'Desktop', 'COMPUTER', '8/12/2009', '11/1/2009', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(133, 'CESL00229', 'NSBD', '1', 'Desktop', 'LAPTOP FOR JAGATH', '28-02-10', '1/1/2010', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(134, 'CESL00231', 'NSBD', '3', 'Laptop', '3 LAP TOPS', '31-03-10', '2/1/2010', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(135, 'CESL00232', 'NSBD', '10', 'Laptop', 'Desktop WITH WINDOWS', '1/9/2015', '8/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(136, 'CESL00233', 'NSBD', '16', 'CCTV', 'CCTV', '', '', '', '0', 'na', 'Allied technology', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(137, 'CESL00234', 'NSBD', '2', 'Access Control', 'ACCESS CONTROL SYSTEM', '', '', '', '0', 'na', 'Allied technology', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(138, 'CESL00235', 'NSBD', '1', 'Polycom VC', 'TV', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(139, 'CESL00236', 'NSBD', '1', 'Desktop', 'XEROX', '1/10/2015', '9/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(140, 'CESL00237', 'NSBD', '1', 'Desktop', 'IT VISTA', '1/10/2015', '9/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(141, 'CESL00238', 'NSBD', '1', 'Desktop', 'MACBOOK 27INCH PRO/MAC', '', '', '', '0', 'na', 'Computer Source', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(142, 'CESL00239', 'NSBD', '1', 'Desktop', 'ALLIED TECHNOLOGY QCC ACC CON', '1/11/2015', '10/1/2015', '', '1', '', '', '', 0, '', '', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(143, 'CESL00240', 'NSBD', '1', 'Pattern Machine', 'DIGITAL PLATFORM SCALE FR QCC', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(144, 'CESL00243', 'NSBD', '1', 'Monitor', 'ADOBE ILLUSTRATOR ADOBE PHOT', '1/11/2015', '10/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(145, 'CESL00244', 'NSBD', '1', 'Desktop', 'IT VISTA COM EQUIPMENT PC', '1/11/2015', '10/1/2015', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(146, 'CESL00245', 'NSBD', '1', 'Desktop', 'IT VISTA SONY CAMERA FR QCC', '1/11/2015', '10/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(147, 'CESL00246', 'NSBD', '1', 'Desktop', 'IT VISTA SAMSUNG J5 C#0303692-93', '8/12/2015', '11/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(148, 'CESL00247', 'NSBD', '1', 'Desktop', 'Desktop', '1/7/2015', '6/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(149, 'CESL00248', 'NSBD', '1', 'Desktop', 'VISTA SAMSUNG C PRIME C303692-93', '8/12/2015', '11/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(150, 'CESL00249', 'NSBD', '1', 'Desktop', 'IT VISTA DELL DESKTOP', '1/1/2016', '12/1/2015', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(151, 'CESL00250', 'NSBD', '1', 'Desktop', 'IT VISTA CANNON DSLR CAMERA 600D', '1/1/2016', '12/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(152, 'CESL00251', 'NSBD', '3', 'Monitor', 'IT VISTA 3 DELL BRAND DESKTOP PURCHASE', '5/1/2016', '12/1/2015', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(153, 'CESL00252', 'NSBD', '1', 'Digital camera', 'IT VISTA SONY BRAND CAMERA GARMENT W830', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(154, 'CESL00253', 'NSBD', '1', 'Desktop', 'DELL OPTIPLEX 3020 QCC CTG', '', '', '', '0', 'na', 'Unidentified', '', 267, 'Rashedul Islam', 'Merchandising', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(155, 'CESL00254', 'NSBD', '2', 'Digital camera', 'CANON DSLR CAMERA 600D', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(156, 'CESL00255', 'NSBD', '1', 'CCTV', 'CC TV and Access Control CTG QCC', '', '', '', '0', 'na', 'Allied technology', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(157, 'CESL00256', 'NSBD', '1', 'Digital camera', 'Sony Cyber Shot Digital Camera CTG QCC', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(158, 'CESL00257', 'NSBD', '1', 'Access Control', 'Access Control Installation- Allied Technology', '', '', '', '0', 'na', 'Allied technology', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(159, 'CESL00258', 'NSBD', '1', 'Printer', 'HP-Laserjet Printer CTG QCC', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(160, 'CESL00259', 'NSBD', '1', 'Laptop', 'Dell Optilex 3020-Desktop CTG QCC', '1/4/2016', '3/1/2016', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(161, 'CESL00260', 'NSBD', '1', 'Laptop', 'Laptop-HP PAVILION 15 FOR SAHAHUL', '', '', '', '0', 'na', 'Unidentified', '', 87, 'Shahul Sally', 'Management', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(162, 'CESL00261', 'NSBD', '1', 'Laptop', 'Laptop-HP NOTE BOOK 14', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(163, 'CESL00262', 'NSBD', '1', 'Desktop', 'Laptop-Dell Inspiron 3443', '1/6/2016', '5/1/2016', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(164, 'CESL00263', 'NSBD', '1', 'Desktop', 'DELL Optiplex 3020 MT', '1/7/2016', '6/1/2016', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(165, 'CESL00264', 'NSBD', '1', 'Desktop', 'Laptop-Lenevo G4080 MUSFIQ', '1/10/2016', '9/1/2016', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(166, 'CESL00265', 'NSBD', '1', 'Digital camera', 'Camera-Sony Cybershot 830 for CTG QCC', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(167, 'CESL00266', 'NSBD', '1', 'Desktop', 'Cybero AM CR 25ING-Backup firewall', '1/11/2016', '10/1/2016', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(168, 'CESL00267', 'NSBD', '1', 'Printer', 'HP Leser JET wifi Printer-Shahul', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', 'Shahul Sally', '', '', '', '', '', '', '', '', 0),
(169, 'CESL00268', 'NSBD', '2', 'Desktop', 'DELL Optiplex 3020 MT', '', '', '', '0', 'na', 'Unidentified', '', 105, 'Md. Shahinur Rahman', 'HR and Administration', '2025-01-07', '', '', '', '', '', '', '', '', '', 0),
(170, 'CESL00269', 'NSBD', '1', 'Desktop', 'Laptop-Dell Inspiron 3440', '1/1/2017', '12/1/2016', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(171, 'CESL00270', 'NSBD', '2', 'Laptop', 'Laptop-Dell Inspiron 5459', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '2025-01-24', 'A K M Fazlul Haque Sagar', '', '', '', '', '', '', '', '', 0),
(172, 'CESL00271', 'NSBD', '1', 'Hard drive portable ', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(173, 'CESL00272', 'NSBD', '1', 'Hard drive portable ', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(174, 'CESL00273', 'NSBD', '1', 'Hard drive portable ', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(175, 'CESL00274', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(176, 'CESL00275', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(177, 'CESL00276', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(178, 'CESL00277', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(179, 'CESL00278', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', 'NSL system', 'NSL system', 'NSL system', '', '', '', '', '', '', 0),
(180, 'CESL00279', 'NSBD', '1', 'Hard drive portable', 'Transcend 2 TB Portable Hard Disk-', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(181, 'CESL00280', 'NSBD', '1', 'Printer', 'HP Color leserjet PRO M477FNW', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(182, 'CESL00281', 'NSBD', '1', 'Server', 'New Email server', '', '', '', '0', 'na', 'Tech Republic', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(183, 'CESL00282', 'NSBD', '1', 'Desktop', 'DEL Desktop Core i 5', '', '', '', '0', 'na', 'Unidentified', '', 2, 'Md. Manzurul Hasan', 'Merchandising', '2025-01-12', 'Md.Mesbah Uddin Forhad', '', '', '', '', '', '', '', '', 0),
(184, 'CESL00283', 'NSBD', '1', 'Desktop', 'DEL Desktop Core i 5', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(185, 'CESL00284', 'NSBD', '1', 'Desktop', 'DEL Desktop Core i 5', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(186, 'CESL00285', 'NSBD', '1', 'Desktop', 'Samsung mobile J2 Prime', '1/6/2017', '5/1/2017', '', '1', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(187, 'CESL00286', 'NSBD', '1', 'Desktop', 'Lenovo Laptop-SUZY Mattocks', '1/7/2017', '6/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(188, 'CESL00287', 'NSBD', '1', 'Laptop', 'Lenovo Laptop-Asli Kolcak', '1/7/2017', '6/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(189, 'CESL00288', 'NSBD', '1', 'Desktop', 'Lenovo Laptop-ZOEY Court', '1/7/2017', '6/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(190, 'CESL00289', 'NSBD', '1', 'Desktop', 'Lenovo Laptop-Zoey Young', '1/7/2017', '6/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(191, 'CESL00290', 'NSBD', '1', 'Desktop', 'Dell desktop-5050 MT-Mahamudul Hassan', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 83, 'Mosharrat Haque Mysha', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(192, 'CESL00291', 'NSBD', '1', 'Laptop', 'Dell desktop-5050 MT--sagor', '1/8/2017', '7/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(193, 'CESL00292', 'NSBD', '1', 'Desktop', 'Dell desktop-5050 MT--Elahi', '1/8/2017', '7/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(194, 'CESL00293', 'NSBD', '1', 'Laptop', 'Lenovo ideapad 310 Laptop-Meral', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(195, 'CESL00294', 'NSBD', '1', 'Desktop', 'Lenovo ideapad 310 Laptop-Tausif', '1/9/2017', '8/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(196, 'CESL00295', 'NSBD', '1', 'Desktop', 'Lenovo ideapad 310 Laptop-Nayeem', '1/9/2017', '8/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(197, 'CESL00296', 'NSBD', '1', 'Desktop', 'Lenevo Laptop-IP-110 Vinod', '1/11/2017', '10/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(198, 'CESL00297', 'NSBD', '1', 'Desktop', 'Lenevo Laptop-IP-110 Faysal', '1/11/2017', '10/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(199, 'CESL00298', 'NSBD', '1', 'Digieye Machine', 'Asus Desktop Computer-DigiEYE', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 28, 'Mahadi Haque', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(200, 'CESL00299', 'NSBD', '1', 'Pattern Machine', 'Asus Desktop Computer-Optitex 3D System', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(201, 'CESL00300', 'NSBD', '1', 'Desktop', 'Dell-Core I5 desktop computer--Hisan', '1/11/2017', '10/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(202, 'CESL00301', 'NSBD', '1', 'Desktop', 'Dell-Core I5 desktop computer--Mothasin', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 686, 'K.M. Raihan', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(203, 'CESL00302', 'NSBD', '1', 'Projector', 'Projetor purchases', '', '', '', '0', 'na', 'Unidentified', '', 689, 'NSL system', 'IT', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(204, 'CESL00303', 'NSBD', '1', 'External Display ', 'Dell 21.5\" LED MONITOR --Manik Mollah', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 65, 'Md. Manik Molla', 'Sample Room', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(205, 'CESL00304', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop-ZINIA', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(206, 'CESL00305', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop-Mostafiz', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 362, 'Md. Abdul Alim', 'Technical', '2025-01-15', 'Md. Abdul Alim', '', '', '', '', '', '', '', '', 0),
(207, 'CESL00306', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop- EMMY', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(208, 'CESL00307', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop-SAPNA', '', '', '', '0', 'na', 'Unidentified', '', 340, 'Jannatul Ferdous', 'Technical', '2025-01-15', 'Jannatul Ferdous', '', '', '', '', '', '', '', '', 0),
(209, 'CESL00308', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop-KAZI MAHEDI', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(210, 'CESL00309', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop- BULBUL', '', '', '', '0', 'na', 'Unidentified', '', 81, 'Sujana Islam Shanta', 'Apprentice', '2025-01-15', 'Sujana Islam Shanta', '', '', '', '', '', '', '', '', 0),
(211, 'CESL00310', 'NSBD', '1', 'Desktop', 'Lenovo Thinkcentre Desktop-ASHIM KUMAR', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(212, 'CESL00311', 'NSBD', '1', 'External Display ', 'Dell 21.5\" LED MONITOR--Hanif', '', '', '', '0', 'na', 'Unidentified', '', 386, 'SK Mohammad Hanif', 'Sample Room', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(213, 'CESL00312', 'NSBD', '1', 'Laptop', 'Lenovo Desktop model M700-Asim kumar', '1/1/2018', '12/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(214, 'CESL00313', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-SUDIP ROY', '', '', '', '0', 'na', 'Unidentified', '', 82, 'Shafin Mustafa Chowdhury', 'Apprentice', '2025-01-07', '', '', '', '', '', '', '', '', '', 0),
(215, 'CESL00314', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Shamim hasan sardar', '', '', '', '0', 'na', 'Unidentified', '', 45, 'Muhammad Ariful Islam', 'Technical', '2025-01-07', '', '', '', '', '', '', '', '', '', 0),
(216, 'CESL00315', 'NSBD', '1', 'Laptop', 'Lenovo Desktop model M700-Shamima Hossain', '1/1/2018', '12/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(217, 'CESL00316', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Barsha Shaha', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 419, 'Md Sabbir Sorowar Chowdhury', 'Apprentice', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(218, 'CESL00317', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Afsana Jahan', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 187, 'Mashfi Sikder', 'Merchandising', '2025-01-07', '', '', '', '', '', '', '', '', '', 0),
(219, 'CESL00318', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Umma Farzana Sultana', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 697, 'Asif Iqbal', 'Apprentice', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(220, 'CESL00319', 'NSBD', '1', 'Laptop', 'Lenovo Laptop IDEAPAD 110-14 BLK-Mahabub Hossain Shamim', '1/1/2018', '12/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(221, 'CESL00320', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Badsha Faysal', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 355, 'Mahbubul Hasan Pollob', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(222, 'CESL00321', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-ZIAUR RAHMAN', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 312, 'Fahmida Hoque Shathi', 'Product Development', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(223, 'CESL00322', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Abdul Hakim Ali', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 46, 'Md. Maksudur Rahaman', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(224, 'CESL00323', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Umma Hani Nazat', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(225, 'CESL00324', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Rahyan Masud', '1/1/2018', '12/1/2017', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(226, 'CESL00325', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Samia Zinia', '1/1/2018', '12/1/2017', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(227, 'CESL00326', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Asef Ibn Hossain Sourav', '', '', '', '0', 'na', 'A 2 Z computer and security', 'Asef Ibn Hossain Sourav', 47, 'Jahan Jusi', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(228, 'CESL00327', 'NSBD', '1', 'Desktop', 'Lenovo Desktop model M700-Tanzir khan Faruk', '1/1/2018', '12/1/2017', '', '0', '', '', '', 106, 'Angesh Chandra Ray', 'HR and Administration', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(229, 'CESL00328', 'NSBD', '1', 'Desktop', 'Lenovo Laptop model IP110-Caner ILBAN', '1/1/2018', '12/1/2017', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(230, 'CESL00329', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-New Product Developer', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 6, 'Mir Mahib', 'Merchandising', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(231, 'CESL00330', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Shafiq', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 76, 'Farazi Ahmed Sami', 'Apprentice', '2025-01-28', '', 'Farazi Ahmed Sami', '', '', '', '', '', '', '', 0),
(232, 'CESL00331', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Nasimul Islam', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 96, 'MD Robiul Islam', 'IT', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(233, 'CESL00332', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Ambrose Smit', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 79, 'Zahin Solvi Khan', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(234, 'CESL00333', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Central Capacity Merchandiser', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 19, 'Hasnun Naznin', 'Capacity  Planning and Sourcing', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(235, 'CESL00334', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Sezan Mahmud Khan', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 10, 'Abdullah Al Nayem', 'NS Brand', '2025-01-17', 'Abdullah Al Nayem', '', '', '', '', '', '', '', '', 0),
(236, 'CESL00335', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Md Shahriar Hossain', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 48, '', 'Technical', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(237, 'CESL00336', 'NSBD', '1', 'Desktop', 'Lenovo Desktop M700-Dolna Nafak', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 77, 'Rehnuma Razzak Fera', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(238, 'CESL00337', 'NSBD', '1', 'Mobile', 'Laptop Lenovo, Model Idea PAD 110- New COP', '1/5/2018', '4/1/2018', '', '3', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(239, 'CESL00338', 'NSBD', '1', 'Laptop', 'Lenovo Idea PAD 320 Jakaria LB110', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 131, 'Sabikun Nahar Eva', 'Shipping', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(240, 'CESL00339', 'NSBD', '1', 'Desktop', 'LENEVO V520 :Mehedi Hasan Santo LB477', '1/7/2018', '6/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(241, 'CESL00340', 'NSBD', '1', 'Desktop', 'LENEVO V520: Ahsanullah LB215', '1/7/2018', '6/1/2018', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(242, 'CESL00341', 'NSBD', '1', 'Desktop', 'LENEVO V520: Nahid Newaz LB472', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(243, 'CESL00342', 'NSBD', '1', 'Desktop', 'LENEVO V520: Salim Jabed LB503', '1/7/2018', '6/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(244, 'CESL00343', 'NSBD', '1', 'Desktop', 'LENEVO V520: Rizvan Hasan LB494', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 85, 'Syeda Maliha Fairuz', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(245, 'CESL00344', 'NSBD', '1', 'Desktop', 'LENEVO V520: S.M Redawan LB509', '1/7/2018', '6/1/2018', '', '0', '', '', '', 72, 'Mumit Hossain Diganta', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(246, 'CESL00345', 'NSBD', '1', 'Desktop', 'LENEVO V520 : Monir Hossain LB510', '1/7/2018', '6/1/2018', '', '0', '', '', '', 25, 'Abdullah Al Mamun', 'Technical', '2025-01-17', 'Abdullah Al Mamun', '', '', '', '', '', '', '', '', 0),
(247, 'CESL00346', 'NSBD', '1', 'Desktop', 'LENEVO V520 : Kawsar Alam Tanim LB492', '1/7/2018', '6/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(248, 'CESL00347', 'BDBD', '1', 'Desktop', 'Lenovo Model: IP110 COP SALAUDDIN', '1/8/2018', '7/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(249, 'CESL00348', 'BDBD', '1', 'Desktop', 'Lenovo Model: M700 APPRENTICE UPOMA', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(250, 'CESL00349', 'BDBD', '1', 'Desktop', 'Lenovo Model: M700 APPRENTICE Praymasho', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(251, 'CESL00350', 'BDBD', '1', 'Laptop', 'Lenovo Model: M700 APPRENTICE Abu Bakkar', '1/8/2018', '7/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(252, 'CESL00351', 'BDBD', '1', 'Laptop', 'Laptop Lenovo, Model Idea PAD 110-Afsana Husain', '1/9/2018', '8/1/2018', '', '0', '', '', '', 174, 'Ishtiak Alam', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(253, 'CESL00352', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700--Kazi Khairul LB493', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 34, 'Md.Zakir Hossain', 'Technical', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(254, 'CESL00353', 'BDBD', '1', 'Laptop', 'Lenevo-Desktop Model: M700-- Nazmus Salehen LB496', '1/9/2018', '8/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(255, 'CESL00354', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700-- Riajul Islam LB501', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 339, 'Arefin Mahfuza', 'Technical', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(256, 'CESL00355', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700--Abdullah Hamid LB502', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '2025-01-08', '', '', '', '', '', '', '', '', '', 0),
(257, 'CESL00356', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700--Mohammad Hasanuzzaman LB504', '1/9/2018', '8/1/2018', '', '0', '', '', '', 314, 'Hossain Ahmed', 'Product Development', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(258, 'CESL00357', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700--Nazrul Islam LB506', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0);
INSERT INTO `asset_list` (`id`, `AssetCode`, `Company`, `qty`, `assettype`, `AssetDescription`, `PurchaseDate`, `DepnStartPeriod`, `DepnEndPeriod`, `Disposed`, `SN`, `Supplier`, `Remark`, `usedbyid`, `Usedby`, `usedbydept`, `assigndate`, `Usedby2`, `Usedby3`, `Usedby4`, `Usedby5`, `Usedby6`, `Usedby7`, `Usedby8`, `Usedby9`, `Usedby10`, `assigned`) VALUES
(259, 'CESL00358', 'BDBD', '1', 'Desktop', 'Lenevo-Desktop Model: M700--Khairul Islam LB507', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 399, 'Md. Forhan Hossen', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(260, 'CESL00359', 'BDBD', '1', 'Printer', 'Lenevo desktop purchase--M700 Abid (LB512)', '1/10/2018', '9/1/2018', '', '2', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(261, 'CESL00360', 'BDBD', '1', 'Desktop', 'Lenevo desktop purchase--M700 Ibrahim (LB514)', '1/10/2018', '9/1/2018', '', '0', '', '', '', 71, 'Zahanara Akter Mim', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(262, 'CESL00361', 'BDBD', '1', 'Mobile', 'Lenevo Laptop IPAD 320--DIDAR LB490', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(263, 'CESL00362', 'BDBD', '1', 'Laptop', 'Lenevo Laptop IdeaPAD 320-LB349 Lingkon', '', '', '', '0', 'na', 'A 2 Z computer and security', 'No one is using currently', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(264, 'CESL00363', 'BDBD', '1', 'Laptop', 'Lenevo Laptop ideaIPAD 320-Jahid LB241', '', '', '', '0', 'na', 'A 2 Z computer and security', 'No one is using currently', 183, 'Md. Monir Hossain Bhuiyan', 'Merchandising', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(265, 'CESL00364', 'BDBD', '1', 'Laptop', 'Lenevo Laptop ideaIPAD 320-Niaz LB303', '', '', '', '0', 'na', 'A 2 Z computer and security', 'No one is using currently', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(266, 'CESL00365', 'BDBD', '1', 'Desktop', 'Lenevo Laptop IPAD 320-Tanin LB492', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(267, 'CESL00366', 'BDBD', '1', 'Desktop', 'Lenevo Laptop IPAD 320-ANISUL LB241', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(268, 'CESL00367', 'BDBD', '1', 'Desktop', 'Lenevo Laptop IPAD 320-KAPILA XB056', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(269, 'CESL00368', 'BDBD', '1', 'Desktop', 'Lenevo Laptop IPAD 320-DEEN XB050', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(270, 'CESL00369', 'BDBD', '1', 'Desktop', 'Lenevo Laptop IPAD 320-PARITOSH LB533', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(271, 'CESL00370', 'BDBD', '1', 'Laptop', 'Lenevo Laptop IPAD 320-AKASH LB122', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(272, 'CESL00371', 'BDBD', '1', 'Laptop', 'Lenevo Laptop IPAD 320-ASHIFUR LB547', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(273, 'CESL00372', 'BDBD', '1', 'Laptop', 'Lenevo Laptop IPAD 320-TBC', '1/10/2018', '9/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(274, 'CESL00373', 'BDBD', '1', 'Printer', 'Canon IR-Printer 5th Floor', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(275, 'CESL00374', 'BDBD', '1', 'Laptop', 'Lenovo IP320 Laptop- XB0369 Bandara', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(276, 'CESL00375', 'BDBD', '1', 'Laptop', 'Lenovo IP320 Laptop-LB153 PAVEL', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(277, 'CESL00376', 'BDBD', '1', 'Laptop', 'Lenovo IP320 Laptop- LB183 Soyeb Hasan', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(278, 'CESL00377', 'BDBD', '1', 'Laptop', 'Lenovo IP320 Laptop- XB031 Sujeewa', '', '', '', '0', 'na', 'A 2 Z computer and security', 'No one is using currently', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(279, 'CESL00378', 'BDBD', '1', 'Laptop', 'Lenovo IP320 Laptop- Factory visit 01', '1/12/2018', '11/1/2018', '', '0', '', '', '', 101, 'Dolna Nafak', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(280, 'CESL00379', 'BDBD', '1', 'Mobile', 'Lenovo IP320 Laptop- Factory Visit 02', '1/12/2018', '11/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(281, 'CESL00380', 'BDBD', '1', 'Mobile', 'Lenovo IP320 Laptop- Factory Visit 03', '1/12/2018', '11/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(282, 'CESL00381', 'BDBD', '1', 'Laptop', 'Lenovo 710 Desktop- LB385 Shariful Ismal', '1/12/2018', '11/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(283, 'CESL00382', 'BDBD', '1', 'Laptop', 'Lenovo 710 Desktop- LB305 Mst. Muntasira', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(284, 'CESL00383', 'BDBD', '1', 'Mobile', 'Lenovo 710 Desktop- LB346 D M Russel Mostafa', '1/12/2018', '11/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(285, 'CESL00384', 'BDBD', '1', 'Desktop', 'Lenovo 710 Desktop- LB357 Ahmed Hossain', '1/12/2018', '11/1/2018', '', '0', '', '', '', 70, 'Sadikur Rahman', 'Apprentice', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(286, 'CESL00385', 'BDBD', '1', 'Desktop', 'Lenovo 710 Desktop- LB374 Shamsun Nahar Shikha', '1/12/2018', '11/1/2018', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(287, 'CESL00386', 'BDBD', '1', 'Desktop', 'Lenovo 710 Desktop- LB258 Shohel Khan', '1/12/2018', '11/1/2018', '', '0', '', '', '', 103, 'Puja Bandya', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(288, 'CESL00387', 'BDBD', '1', 'Desktop', 'Lenovo 710 Desktop- LB534 Saydul Islam', '1/12/2018', '11/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(289, 'CESL00388', 'BDBD', '1', 'Ipad', 'LENOVO DESTOP-Khalid Sikdar LB550', '1/1/2019', '12/1/2018', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(290, 'CESL00389', 'BDBD', '1', 'Laptop', 'Lenovo Laptop-IDEAPAD 330 LB268 DIDAR', '1/1/2019', '12/1/2018', '', '0', '', '', '', 360, 'Ibrahim', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(291, 'CESL00390', 'BDBD', '1', 'Laptop', 'Lenovo Laptop-IDEAPAD 330 LB562 Asim Sayem', '1/1/2019', '12/1/2018', '', '0', '', '', '', 276, 'Amit Saha', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(292, 'CESL00392', 'BDBD', '1', 'Smartphone', 'Mobile Purchase-Sumsang Galaxy J6-QC Manager LB562', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(293, 'CESL00393', 'BDBD', '1', 'Smartphone', 'Mobile Purchase-Sumsang Galaxy J6- Alam LB006', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(294, 'CESL00394', 'BDBD', '1', 'Smartphone', 'Mobile Purchase-Sumsang Galaxy J6-Ariful LB291', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(295, 'CESL00395', 'BDBD', '1', 'Smartphone', 'Mobile Purchase-Sumsang Galaxy J6- Tanveer LB354', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(296, 'CESL00396', 'BDBD', '1', 'Laptop', 'Dell desktop purchase-Vostro 367MT for Shahul', '1/2/2019', '1/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(297, 'CESL00397', 'BDBD', '1', 'Smartphone', 'Samsung smart mobile purchse--PA to GM LB597', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(298, 'CESL00398', 'BDBD', '1', 'Smartphone', 'Samsung smart mobile purchse- Muktadir', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(299, 'CESL00399', 'BDBD', '1', 'Smartphone', 'Samsung smart mobile purchse--Mukarrab', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(300, 'CESL00400', 'BDBD', '1', 'Desktop', 'Lenevo Desktop-Muktadir LB522', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(301, 'CESL00401', 'BDBD', '1', 'Laptop', 'Lenevo Desktop-Mokarrab LB596', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(302, 'CESL00402', 'BDBD', '1', 'Laptop', 'Lenevo Desktop-REDIKA LB597', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(303, 'CESL00403', 'BDBD', '1', 'Desktop', 'Lenevo Desktop- Raju Ahmed- LB594', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(304, 'CESL00404', 'BDBD', '1', 'Desktop', 'Lenevo Desktop-Mohaiminul LB595', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(305, 'CESL00405', 'BDBD', '1', 'Desktop', 'Lenevo Desktop-Somit LB437', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 86, 'Sajidun Nahar Sajuti', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(306, 'CESL00406', 'BDBD', '1', 'Desktop', 'Lenevo Desktop-SM Rasel LB263', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 75, 'Maliha Binte Monsur', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(307, 'CESL00407', 'BDBD', '1', 'Laptop', 'Lenevo Desktop-HM SAIFUL LB390', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 73, 'Nafisa Anjum Oishi', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(308, 'CESL00408', 'BDBD', '1', 'Laptop', 'Lenevo Desktop-Moshiul Alam LB505', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(309, 'CESL00409', 'BDBD', '1', 'Laptop', 'Lenevo Laptop- Jamil hossain LB238', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(310, 'CESL00410', 'BDBD', '1', 'Laptop', 'Lenevo Laptop-Ariful Russell LB291', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(311, 'CESL00411', 'BDBD', '1', 'Laptop', 'Lenevo Laptop- Rizman XB030', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(312, 'CESL00412', 'BDBD', '1', 'Laptop', 'Lenevo Laptop-Badiul Alam LB006', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(313, 'CESL00413', 'BDBD', '1', 'Laptop', 'Lenevo Laptop- Rajib Ahamed LB200', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(314, 'CESL00414', 'BDBD', '1', 'Laptop', 'Lenevo Laptop- Tania LB116', '1/5/2019', '4/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(315, 'CESL00415', 'BDBD', '1', 'Server', 'HP File server- HP DL380 GEN', '', '', '', '0', 'na', 'Tech Republic', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(316, 'CESL00416', 'BDBD', '1', 'Desktop', 'Lenovo Desktop-Model M700-Ruman LB607', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(317, 'CESL00417', 'BDBD', '1', 'Desktop', 'Lenovo Desktop: Model-M700- Amit Ghose LB609', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 348, 'Kazi Raihan Siddiq', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(318, 'CESL00418', 'BDBD', '1', 'Laptop', 'Lenovo Laptop: IDEAPAD 320- EWAN', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 95, 'Md. Mahdi Hasan', 'IT', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(319, 'CESL00419', 'BDBD', '1', 'Laptop', 'Lenovo Laptop: IDEAPAD 320- SHAFIQUR LB467', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(320, 'CESL00420', 'BDBD', '1', 'Printer', 'Black and white Printer', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(321, 'CESL00421', 'BDBD', '1', 'Desktop', 'Intel Mainboard for core I7 PRO WIH 8TH GENERATION PROCESSOR for Digi eye', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 387, 'Md. Golam Azom', 'Sample Room', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(322, 'CESL00422', 'BDBD', '0', 'Mobile', 'Mobile Phone for Rayhan Sarker QC Manager', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(323, 'CESL00423', 'BDBD', '1', 'Smartphone', 'Mobile Phone for Nayeem Production Controller', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(324, 'CESL00424', 'BDBD', '1', 'Smartphone', 'Mobile Phone for Dinesh Product Manager', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(325, 'CESL00425', 'BDBD', '1', 'Desktop', 'LENOVO DESKTOP FOR LB434 Samsun Nahar', '', '', '', '0', '', 'Unidentified', '', 80, 'Mouri Binte Hossain', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(326, 'CESL00426', 'BDBD', '1', 'Desktop', 'LENOVO DESKTOP FOR LB223 Utpal', '', '', '', '0', 'na', 'Unidentified', '', 93, 'Mohammad Salah Uddin Kamran', 'Finance and Accounts', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(327, 'CESL00427', 'BDBD', '1', 'Desktop', 'LENOVO DESKTOP FOR LB486 Minhaj Uddinl', '', '', '', '0', '', 'Unidentified', '', 104, 'Naziha Noor Jahan', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(328, 'CESL00428', 'BDBD', '1', 'Desktop', 'LENOVO DESKTOP FOR LB534 Saydul Islam', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 397, 'Syeda Atkia Faiza', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(329, 'CESL00429', 'BDBD', '1', 'Mobile', 'LENOVO DESKTOP FOR LB408 Riazuddin', '1/11/2019', '10/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(330, 'CESL00430', 'BDBD', '1', 'Desktop', 'LENOVO DESKTOP FOR LB615 Merin Hahan Sabiha', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(331, 'CESL00431', 'BDBD', '1', 'Laptop', 'Lenovo Laptop For XB061 Dinesh', '1/11/2019', '10/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(332, 'CESL00432', 'BDBD', '1', 'Laptop', 'Lenovo Laptop For LB206 Milon', '1/11/2019', '10/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(333, 'CESL00433', 'BDBD', '1', 'Laptop', 'Lenovo Laptop For LB323 NAZRUL', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(334, 'CESL00434', 'BDBD', '1', 'Laptop', 'Dell 22 Inch Monitor--HR Manager LB637', '1/12/2019', '11/1/2019', '', '0', '', '', '', 398, 'Sinthya Chakma', 'Apprentice', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(335, 'CESL00435', 'BDBD', '1', 'Laptop', 'Laptop: Lenevo for QA MANAGER RAIHAN LB633', '1/1/2020', '12/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(336, 'CESL00436', 'BDBD', '1', 'Laptop', 'Desktop: Lenevo Model E30 FR LB649 BIKASH', '1/1/2020', '12/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(337, 'CESL00437', 'BDBD', '1', 'Laptop', 'Desktop: Lenevo Model E30 FR LB666 ISHTIAQUE', '1/1/2020', '12/1/2019', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(338, 'CESL00438', 'BDBD', '1', 'Laptop', 'Laptop: Lenevo for Natalie Cox XB067', '1/1/2020', '12/1/2019', '', '0', '', '', '', 98, 'Md. Anamul Hoq', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(339, 'CESL00439', 'BDBD', '1', 'Laptop', 'Laptop: Lenevo for Charlotte Hunt XB062', '1/1/2020', '12/1/2019', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(340, 'CESL00440', 'BDBD', '1', 'Laptop', 'Replace mobile set Vivo Y19-Jamil Hossain LB238', '1/2/2020', '1/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(341, 'CESL00441', 'BDBD', '1', 'Mobile', 'Mobile purchase for Tamara XB039 Vivo Y19', '1/2/2020', '1/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(342, 'CESL00442', 'BDBD', '1', 'Firewall', 'Lenovo IP 320 Laptop purchase-Tamara XB039', '1/2/2020', '1/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(343, 'CESL00443', 'BDBD', '1', 'Laptop', 'Lenovo IP 320 Laptop purchase-Dinuka XB027', '1/2/2020', '1/1/2020', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(344, 'CESL00444', 'BDBD', '1', 'Mobile', 'Mobile-Vivo Y19 LB643 Moien', '1/3/2020', '2/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(345, 'CESL00445', 'BDBD', '1', 'Laptop', 'Lenevo Model:M700 For LB680 Tanveer Hossain', '1/5/2020', '4/1/2020', '', '0', '', '', '', 361, 'Md. Mominur Rahman', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(346, 'CESL00446', 'BDBD', '1', 'Laptop', 'Lenevo Model:M700 For LB679 KAZI ROBIUL', '1/5/2020', '4/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(347, 'CESL00447', 'BDBD', '1', 'Laptop', 'Lenevo Model:M700 For LB486 Minaj Uddin Ahmed', '1/5/2020', '4/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(348, 'CESL00448', 'BDBD', '1', 'Laptop', 'Lenevo Model:M700 For LB413 Mafuzul Haque', '1/5/2020', '4/1/2020', '', '0', '', '', '', 44, 'Alamin Islam', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(349, 'CESL00449', 'BDBD', '1', 'Ipad', 'Apple iPad 10.2 Inch 128GB Wi-Fi + Cellular', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(350, 'CESL00450', 'BDBD', '1', 'Laptop', 'LB535 Laptop Dell Vostro 14-3490', '1/9/2020', '8/1/2020', '', '0', '', '', '', 300, 'MD. Nashid Mahmud', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(351, 'CESL00451', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB332', '1/9/2020', '8/1/2020', '', '0', '', '', '', 141, 'Md. Habibur Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(352, 'CESL00452', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB388', '1/9/2020', '8/1/2020', '', '0', '', '', '', 251, 'Sanjoy Bhowmik', 'Merchandising', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(353, 'CESL00453', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB313', '', '', '', '0', '', 'Global brand limited', 'screen broken once', 0, 'Aminul Hoque Shagor', 'Merchandising', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(354, 'CESL00454', 'BDBD', '1', 'software', 'Laptop Dell Vostro 14-3490 LB625', '1/9/2020', '8/1/2020', '', '0', '', '', '', 315, 'Bulbul Ahmmad Akand', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(355, 'CESL00455', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 XB038', '1/9/2020', '8/1/2020', '', '0', '', '', '', 29, 'Md. Abu Hayath Firoj', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(356, 'CESL00456', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB354', '1/9/2020', '8/1/2020', '', '0', '', '', '', 254, 'Md. Osman Goni', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(357, 'CESL00457', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB202', '1/9/2020', '8/1/2020', '', '0', '', '', '', 136, 'Farzana Akter', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(358, 'CESL00458', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB230', '1/9/2020', '8/1/2020', '', '0', '', '', '', 23, 'Imrul Quaesh', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(359, 'CESL00459', 'BDBD', '1', 'Laptop', 'LB420 Hisan Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(360, 'CESL00460', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB413', '1/9/2020', '8/1/2020', '', '0', '', '', '', 26, 'Md. Jasim Uddin', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(361, 'CESL00461', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 XB064', '1/9/2020', '8/1/2020', '', '0', '', '', '', 170, 'Md. Hasibur Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(362, 'CESL00462', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB195', '1/9/2020', '8/1/2020', '', '0', '', '', '', 20, 'Kamruzzaman Nasim', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(363, 'CESL00463', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 XB063', '1/9/2020', '8/1/2020', '', '0', '', '', '', 245, 'Anamika Akter', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(364, 'CESL00464', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB310', '1/9/2020', '8/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(365, 'CESL00465', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 XB057', '1/9/2020', '8/1/2020', '', '0', '', '', '', 326, 'Md. Atikur Jaman', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(366, 'CESL00466', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 XB069', '1/9/2020', '8/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(367, 'CESL00467', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB694', '1/9/2020', '8/1/2020', '', '0', '', '', '', 12, 'Md. Imran Hossain', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(368, 'CESL00468', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB126', '1/9/2020', '8/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(369, 'CESL00469', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB416', '1/9/2020', '8/1/2020', '', '0', '', '', '', 247, 'Uddipan Barua', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(370, 'CESL00470', 'NSBD', '1', 'Laptop', 'Dell Vostro Notebook 3491', '1/8/2020', '7/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(371, 'CESL00471', 'NSBD', '1', 'Laptop', 'Dell Vostro Notebook 3491', '1/9/2020', '8/1/2020', '', '0', '', '', '', 321, 'Gulsah Aytemizel', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(372, 'CESL00472', 'BDBD', '1', 'Laptop', 'Laptop Dell Vestro-14-3490 LB501 RIAJUL', '1/10/2020', '9/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(373, 'CESL00473', 'BDBD', '1', 'Laptop', 'Laptop Dell Vestro-14-3490 LB298 Uddipan Barua', '1/10/2020', '9/1/2020', '', '0', '', '', '', 168, 'Mazadul Islam (Hridoy)', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(374, 'CESL00474', 'BDBD', '1', 'Laptop', 'Laptop Dell Vestro-14-3490 LB474 Abu Musa Azad', '1/10/2020', '9/1/2020', '', '0', '', '', '', 176, 'Golam Robbany', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(375, 'CESL00475', 'BDBD', '1', 'Laptop', 'Laptop Dell Vestro-14-3490 LB511 Jumman', '1/10/2020', '9/1/2020', '', '0', '', '', '', 142, 'Md. Ibrahim Khaled Nasim', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(376, 'CESL00476', 'BDBD', '1', 'Printer', 'Laptop Dell Vestro-14-3490 LB531ALI JIKO', '1/10/2020', '9/1/2020', '', '0', '', '', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(377, 'CESL00477', 'BDBD', '1', 'Mobile', 'Laptop Dell Vestro-14-3490 LB378 Rezaul Karim', '1/10/2020', '9/1/2020', '', '0', '', '', '', 272, 'Md. Rezaul Karim', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(378, 'CESL00478', 'BDBD', '1', 'Mobile', 'Laptop Dell Vestro-14-3490 LB539 Khairul Islam', '1/10/2020', '9/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(379, 'CESL00479', 'BDBD', '1', 'Mobile', 'Laptop Dell Vestro-14-3490 LB688 Shumitra /TBC', '1/10/2020', '9/1/2020', '', '0', '', '', '', 91, 'Utpal Komar Sarker', 'Finance and Accounts', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(380, 'CESL00480', 'BDBD', '1', 'Laptop', 'Laptop Dell Vestro-14-3490 LB456 Abdul Hakim Ali', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(381, 'CESL00481', 'BDBD', '1', 'Mobile', 'Laptop Dell Vestro-14-3490 LB701 Rashel Khan', '1/10/2020', '9/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(382, 'CESL00482', 'BDBD', '1', 'Mobile', 'Samsung mobile purchse for PA Maria LB716', '1/11/2020', '10/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(383, 'CESL00483', 'BDBD', '1', 'Mobile', 'Dell notebook Latitude 3410', '1/12/2020', '11/1/2020', '', '0', '', '', '', 336, 'Harinder Singh Saini', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(384, 'CESL00484', 'BDBD', '1', 'TV', 'Dell Inspiron laptop 153593 lb720-Tawfik Mohammed Rafique', '1/1/2021', '12/1/2020', '', '4', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(385, 'CESL00485', 'BDBD', '1', 'Mobile', 'Dell Inspiron laptop 153593 lb607 Mohammad Ruman', '1/1/2021', '12/1/2020', '', '0', '', '', '', 237, 'Md. Abdur Raihan Khondaker', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(386, 'CESL00486', 'BDBD', '1', 'Mobile', 'Dell Inspiron laptop 153593 lb634 Md. Abu Zafar', '1/1/2021', '12/1/2020', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(387, 'CESL00487', 'BDBD', '1', 'Mobile', 'Wacom Intuos Pro Medium', '1/2/2021', '1/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(388, 'CESL00488', 'BDBD', '1', 'Mobile', 'SAMSUNG M-21 Mobile purchase for Lorna Williamson XB072', '1/2/2021', '1/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(389, 'CESL00489', 'BDBD', '1', 'Laptop', 'SAMSUNG M-21 Mobile purchase for QC Manager Jahangir LB321', '1/2/2021', '1/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(390, 'CESL00490', 'BDBD', '1', 'Laptop', 'Samsung M21 Jourdian Mobile XB074', '1/3/2021', '2/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(391, 'CESL00491', 'BDBD', '1', 'Display', 'Lenovo V14 10TH GEN Faisal Kayes - Laptop - LB586', '1/4/2021', '3/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(392, 'CESL00492', 'BDBD', '1', 'Laptop', 'Lenovo V14 10TH GEN Sarmin akter sabrina -LB736', '1/4/2021', '3/1/2021', '', '0', '', '', '', 95, 'Md. Mahdi Hasan', 'IT', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(393, 'CESL00493', 'BDBD', '1', 'Laptop', 'Lenovo V14 10TH GEN Murad Laptop -LB053', '1/4/2021', '3/1/2021', '', '0', '', '', '', 129, 'Mafidul Hasan Murad', 'Shipping', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(394, 'CESL00494', 'BDBD', '1', 'Laptop', 'Lenovo V14 10TH GEN Shahul Sally XB015', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 7, 'Md. Hafijur Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(395, 'CESL00495', 'BDBD', '1', 'Laptop', 'Lenovo V14 10TH GEN Jourdain XB074', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 15, 'Md. Asir Ahabab Uul Haque', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(396, 'CESL00496', 'BDBD', '1', 'Laptop', 'Dell 3410 10th GEN Sabira Parvin Shanta - LB683', '1/4/2021', '3/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(397, 'CESL00497', 'BDBD', '1', 'Laptop', 'Dell 3410 10th GEN Imran Dewan Rokon LB540', '1/4/2021', '3/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(398, 'CESL00498', 'BDBD', '1', 'Laptop', 'Dell 3410 10th GEN Abdul Wahid Ashraf- LB699', '1/4/2021', '3/1/2021', '', '0', '', '', '', 152, 'Syeda Kashpia Ulfath', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(399, 'CESL00499', 'BDBD', '1', 'Laptop', 'Dell 3410 10th GEN Md Tanvir Zaman- LB590', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(400, 'CESL00500', 'BDBD', '1', 'Laptop', 'Dell 3410 10th GEN Tanvir ahsan chowdhury-LB748', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(401, 'CESL00501', 'BDBD', '1', 'Mobile', 'Samsumg M21 - Sumon LB742', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(402, 'CESL00502', 'BDBD', '1', 'Laptop', 'Fortinet Firewall from root system', '1/4/2021', '3/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(403, 'CESL00503', 'BDBD', '1', 'Mobile', 'Dell laptop Latitude 3410', '1/4/2021', '3/1/2021', '', '0', '', '', '', 325, 'Golam Azam', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(404, 'CESL00504', 'BDBD', '1', 'Mobile', 'Samsung M12 FOR FM LB223 Utpal', '1/5/2021', '4/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(405, 'CESL00505', 'BDBD', '1', 'Mobile', 'Dell Latitude 3410 10th Generation Core I5 LB374 Sikha', '1/6/2021', '5/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(406, 'CESL00506', 'BDBD', '1', 'Mobile', 'Dell Latitude 3410 10th Generation Core I5 XB015 Shahul Sally', '1/6/2021', '5/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(407, 'CESL00507', 'BDBD', '1', 'Mobile', 'Dell Latitude 3410 10th Generation Core I5 LB517 IMRAN', '1/6/2021', '5/1/2021', '', '0', '', '', '', 133, 'Md. Fokhrul Hasan Prince', 'COP', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(408, 'CESL00508', 'BDBD', '1', 'Mobile', 'Dell Latitude 3410 10th Generation Core I5 LB637 Tanzina kabir', '1/6/2021', '5/1/2021', '', '0', '', '', '', 181, 'Lingcon Chondro Bhowmick', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(409, 'CESL00509', 'BDBD', '1', 'Mobile', 'Dell Latitude 3410 10th Generation Core I5 XB052 Dilshan', '1/6/2021', '5/1/2021', '', '0', '', '', '', 161, 'Eakramul Hasan Emon', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(410, 'CESL00510', 'BDBD', '1', 'Laptop', 'Dell Latitude 3410 10th Generation Core I5 XB066 Vimarsha', '1/6/2021', '5/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(411, 'CESL00511', 'BDBD', '1', 'Laptop', 'Dell Latitude 3410 10th Generation Core I5 XB039 Tamara', '1/6/2021', '5/1/2021', '', '0', '', '', '', 311, 'Tamara Glackin', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(412, 'CESL00512', 'BDBD', '1', 'Laptop', 'Dell Latitude 3410 10th Generation Core I5 XB027 Dinuka', '1/6/2021', '5/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(413, 'CESL00513', 'BDBD', '1', 'Laptop', 'Dell Latitude 3410 10th Generation Core I5 LB349 Lingcon', '1/6/2021', '5/1/2021', '', '0', '', '', '', 284, 'Mahmudul Hasan Tarek', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(414, 'CESL00514', 'BDBD', '1', 'Laptop', 'PE-PDS, PE-PDS, AccuNest Multicore upgrade for Garber', '1/6/2021', '5/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(415, 'CESL00515', 'BDBD', '1', 'Laptop', 'HP Laptop Slim 15.6In i7 8GB 512 GB for Sarrah XB075', '1/8/2021', '7/1/2021', '', '0', '', '', '', 332, 'Md. Aktar Jamil', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(416, 'CESL00516', 'BDBD', '1', 'Laptop', 'LB626 Saidy Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(417, 'CESL00517', 'BDBD', '1', 'Laptop', 'LB581 Goni Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 16, 'Halima Akter', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(418, 'CESL00518', 'BDBD', '1', 'Laptop', 'LB708 Himu Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(419, 'CESL00519', 'BDBD', '1', 'Laptop', 'LB782 Samsul Alam Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 265, 'Tawfik Mohammed Rafique', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(420, 'CESL00520', 'BDBD', '1', 'Laptop', 'LB800 Musfiqur Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(421, 'CESL00521', 'BDBD', '1', 'Laptop', 'LB712 Abu Sayeed Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 140, 'Eftakhar Hossain', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(422, 'CESL00522', 'BDBD', '1', 'Laptop', 'LB734 Mahmudul Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 90, 'Mahfuja Ahmed', 'Management', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(423, 'CESL00523', 'BDBD', '1', 'Laptop', 'LB611 Jahidul Riad Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 266, 'Md. Jahidul Islam Riad', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(424, 'CESL00524', 'BDBD', '1', 'Laptop', 'LB529 Shahadat Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(425, 'CESL00525', 'BDBD', '1', 'Laptop', 'LB353 Barsha Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 33, 'Barsha Saha', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(426, 'CESL00526', 'BDBD', '1', 'Laptop', 'LB692 Smrity Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 232, 'Ibrahim Khalil', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(427, 'CESL00527', 'BDBD', '1', 'Laptop', 'Laptop Dell Vostro 14-3490 LB367', '1/9/2020', '8/1/2020', '', '0', '', '', '', 92, 'Gazi Tanzil Ahmed', 'Finance and Accounts', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(428, 'CESL00528', 'BDBD', '1', 'Laptop', 'LB515 Ahsan Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 39, 'Ahsan Habib', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(429, 'CESL00529', 'BDBD', '1', 'Laptop', 'LB467 Shafiqur Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 178, 'A.S.M Saad Uddin', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(430, 'CESL00530', 'BDBD', '1', 'Laptop', 'LB280 Tanzil Haue Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 148, 'Md Rokiebul Islam', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(431, 'CESL00531', 'BDBD', '1', 'Laptop', 'LB780 Shaiqur Dell Latitude 3410', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(432, 'CESL00532', 'BDBD', '1', 'Desktop', 'LB774 Motakabbir Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 283, 'Md. Mustanzid Hasan Murad', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(433, 'CESL00533', 'BDBD', '1', 'Mobile', 'WFH 1 Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(434, 'CESL00534', 'BDBD', '1', 'Laptop', 'WFH 2 Dell Latitude 3410', '', '', '', '0', 'na', 'Unidentified', '', 0, 'Md. Mosabbirul Islam', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(435, 'CESL00535', 'BDBD', '1', 'Pattern Design System (PDS)-Prime Asia', 'WFH 3 Dell Latitude 3410', '1/8/2021', '7/1/2021', '', '0', '', '', '', 255, 'Jasmin Akter Jotee', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(436, 'CESL00537', 'BDBD', '1', 'Printer', 'Blace & White Printer Shahul', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(437, 'CESL00538', 'BDBD', '1', 'Smartphone', 'LB374 Shikha Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(438, 'CESL00539', 'BDBD', '1', 'Smartphone', 'LB378 Rezaul Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(439, 'CESL00540', 'BDBD', '1', 'Smartphone', 'LB501 Riajul Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(440, 'CESL00541', 'BDBD', '1', 'Smartphone', 'LB531 Jiko Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(441, 'CESL00542', 'BDBD', '1', 'Smartphone', 'LB681 Motashasin Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(442, 'CESL00543', 'BDBD', '1', 'Smartphone', 'LB757 Firoj Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(443, 'CESL00544', 'BDBD', '1', 'Smartphone', 'LB781 Kibria Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(444, 'CESL00545', 'BDBD', '1', 'TV', 'Sony 43\' LED TV 43W660 (Meeting room setup)', '', '', '', '0', 'na', 'MK Electronic', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(445, 'CESL00546', 'BDBD', '1', 'Smartphone', 'LB206 Melon Mobile replace Samsung Galaxy M21', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(446, 'CESL00547', 'BDBD', '1', 'Smartphone', 'Mobile Samsung M21 Shiful (LB230)', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(447, 'CESL00548', 'BDBD', '1', 'Smartphone', 'Mobile Samsung M21 Hirok (LB367)', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(448, 'CESL00549', 'BDBD', '1', 'Smartphone', 'Mobile Samsung F22 (XB076) Vikas Sachdeva', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(449, 'CESL00550', 'BDBD', '1', 'Laptop', 'LB848 HP 240 G8 Notebook', '', '', '', '0', 'na', 'A 2 Z computer and security', 'Lost', 0, '', '', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(450, 'CESL00551', 'BDBD', '1', 'Laptop', 'LB849 HP 240 G8 Notebook D.M.Ismat Doha,LB820', '', '', '', '0', 'na', 'Global brand limited', '', 175, 'D.M.Ismat Doha', 'Merchandising', '2025-01-22', 'A K M Fazlul Haque Sagar', 'A K M Fazlul Haque Sagar', '', '', '', '', '', '', '', 0),
(451, 'CESL00552', 'BDBD', '1', 'External Display ', 'ASUS VP32AQ Eye Care Monitor ? 32-inch (Gerber Machine)', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(452, 'CESL00553', 'BDBD', '1', 'Laptop', 'LB871 Rupatam Chakma HP 250 G8 Notebook', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 155, 'M.D. Shahjahan', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(453, 'CESL00554', 'BDBD', '1', 'Laptop', 'LB872 Saifur Rahman HP ProBook 440 G8-Corp', '', '', '', '0', 'na', 'Smart technologies', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(454, 'CESL00555', 'BDBD', '1', 'Laptop', 'LB894 Sayeem HP 250 G8 Notebook', '', '', '', '0', 'na', 'Smart technologies', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(455, 'CESL00556', 'BDBD', '1', 'Laptop', 'LB895 Ahmed HP 250 G8 Notebook', '', '', '', '0', 'na', 'Smart technologies', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(456, 'CESL00557', 'BDBD', '1', 'Laptop', 'LB896 NAZMUL HP 250 G8 Notebook', '', '', '', '0', 'na', 'Smart technologies', '', 143, 'ATM Shadat Hossain Tarek', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(457, 'CESL00558', 'BDBD', '1', 'Laptop', 'LB321 Jahangir HP 250 G8 Notebook', '', '', '', '0', 'na', 'Smart technologies', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(458, 'CESL00559', 'BDBD', '1', 'Smartphone', 'XB079 Jatin Lala HP 250 G8 Notebook', '', '', '', '0', 'na', 'Smart technologies', '', 235, 'Md. Alif Arafat Shohan', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(459, 'CESL00560', 'BDBD', '1', 'Smartphone', 'XB050 Salahudeen Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(460, 'CESL00561', 'BDBD', '1', 'Smartphone', 'LB713 Maria Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(461, 'CESL00562', 'BDBD', '1', 'Smartphone', 'XB079 Jatin Lala Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(462, 'CESL00563', 'BDBD', '1', 'Laptop', 'LB900 Raihan AFT HP 240 G8', '', '', '', '0', 'na', 'Smart technologies', '', 346, 'Arif Hossen', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(463, 'CESL00564', 'BDBD', '1', 'Smartphone', 'XB068 Gaynor Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(464, 'CESL00565', 'BDBD', '1', 'Smartphone', 'LB053 Murad Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(465, 'CESL00566', 'BDBD', '1', 'Smartphone', 'LB517 Imran Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(466, 'CESL00567', 'BDBD', '1', 'Smartphone', 'LB332 Nayeem Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(467, 'CESL00568', 'BDBD', '1', 'Smartphone', 'LB241 Anisul Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(468, 'CESL00569', 'BDBD', '1', 'Smartphone', 'LB584 Mehrab Samsung Galaxy F22', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(469, 'CESL00570', 'BDBD', '1', 'Smartphone', 'Iphone 13', '', '', '', '0', 'na', 'Unidentified', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(470, 'CESL00571', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', 'na', 'Thakral Information limited', '', 97, 'Sultana Shakila Mannan', 'HR and Administration', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(471, 'CESL00572', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', 'na', 'Thakral Information limited', '', 18, 'Sabrina Jahan Ria', 'Product Development', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(472, 'CESL00573', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', 'na', 'Thakral Information limited', '', 322, 'Jacinta Skye Bird', 'Product Development', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(473, 'CESL00574', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', 'na', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(474, 'CESL00575', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', 'na', 'Thakral Information limited', '', 95, 'Md. Mahdi Hasan', 'IT', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(475, 'CESL00576', 'BDBD', '1', 'Mobile', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 38, 'Swapna Sultana', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(476, 'CESL00577', 'BDBD', '1', 'Mobile', 'Lenovo Thinkpad L14- Shishir', '', '', '', '0', '', '', '', 290, 'Azizul Alam Shovon', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(477, 'CESL00578', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', 'Unidentified', '', 320, 'Alestare James Barrie', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(478, 'CESL00579', 'BDBD', '1', 'Desktop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 327, 'Md. Mamun Uddin', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(479, 'CESL00580', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 328, 'Taslima Rahman Dishe', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(480, 'CESL00581', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 24, 'Md . Ibrahim Hossain', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(481, 'CESL00582', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(482, 'CESL00583', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 195, 'Md. Abu Baker Siddique', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(483, 'CESL00584', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 166, 'Enam Ahmed', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(484, 'CESL00585', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(485, 'CESL00586', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 138, 'Md. Mahbub Khan', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(486, 'CESL00587', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 304, 'Md. Dilshad Hasan Moin', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(487, 'CESL00588', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(488, 'CESL00589', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(489, 'CESL00590', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(490, 'CESL00591', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 169, 'Anup Chowdhury', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(491, 'CESL00592', 'BDBD', '1', 'Laptop', 'Lenovo Thinkpad L14', '', '', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(492, 'CESL00593', 'BDBD', '1', 'Laptop', 'PDS System HP PC Sampleroom', '8/1/2022', '7/1/2022', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(493, 'CESL00594', 'BDBD', '1', 'Laptop', 'LB918 Nizamuddin Samsung F22', '8/1/2022', '7/1/2022', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(494, 'CESL00595', 'BDBD', '1', 'Laptop', 'XB080 Anuradha Samsung F22', '8/1/2022', '7/1/2022', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(495, 'CESL00596', 'BDBD', '1', 'Laptop', 'Pattern Design System (PDS)-Prime Asia', '8/1/2022', '7/1/2022', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(496, 'CESL00597', 'BDBD', '1', 'Ipad', 'LB091 Babu Ipad for QMS Project', '', '', '', '0', '', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(497, 'CESL00598', 'BDBD', '1', 'Ipad', 'LB129 Sagor Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 58, 'A K M Fazlul Haque Sagar', 'QA', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(498, 'CESL00599', 'BDBD', '1', 'Ipad', 'LB156 Mamun Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 369, 'Md. Mamun-Ur-Rashid', 'QA', '2025-01-28', 'Md. Mamunur Rasid', '', '', '', '', '', '', '', '', 0);
INSERT INTO `asset_list` (`id`, `AssetCode`, `Company`, `qty`, `assettype`, `AssetDescription`, `PurchaseDate`, `DepnStartPeriod`, `DepnEndPeriod`, `Disposed`, `SN`, `Supplier`, `Remark`, `usedbyid`, `Usedby`, `usedbydept`, `assigndate`, `Usedby2`, `Usedby3`, `Usedby4`, `Usedby5`, `Usedby6`, `Usedby7`, `Usedby8`, `Usedby9`, `Usedby10`, `assigned`) VALUES
(499, 'CESL00600', 'BDBD', '1', 'Ipad', 'LB176 Hasan Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 54, 'Hasan Ahammed', 'QA', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(500, 'CESL00601', 'BDBD', '1', 'Ipad', 'LB215 AhsanullahIpad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(501, 'CESL00602', 'BDBD', '1', 'Ipad', 'LB244 Monirul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 51, 'Monirul Islam Shohag', 'QA', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(502, 'CESL00603', 'BDBD', '1', 'Ipad', 'LB268 Babul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 56, 'Md. Babul Akther', 'QA', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(503, 'CESL00604', 'BDBD', '1', 'Ipad', 'LB318 Shoarb Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(504, 'CESL00605', 'BDBD', '1', 'Ipad', 'LB321 Jahangir Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(505, 'CESL00606', 'BDBD', '1', 'Ipad', 'LB327 Amir Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(506, 'CESL00607', 'BDBD', '1', 'Ipad', 'LB340 Hasan Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(507, 'CESL00608', 'BDBD', '1', 'Ipad', 'LB343 Taiyab Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(508, 'CESL00609', 'BDBD', '1', 'Ipad', 'LB344 Emran Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(509, 'CESL00610', 'BDBD', '1', 'Ipad', 'LB363 Arfatul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 406, 'Arfatul Hoque Chowdhury', 'QA', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(510, 'CESL00611', 'BDBD', '1', 'Ipad', 'LB366 Ebrahem Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(511, 'CESL00612', 'BDBD', '1', 'Ipad', 'LB396 Bashar Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(512, 'CESL00613', 'BDBD', '1', 'Ipad', 'LB402 Alomgir Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 53, 'Md. Alomgir Hossain', 'Quality Assurance Inspector', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(513, 'CESL00614', 'BDBD', '1', 'Ipad', 'LB425 Maksudur Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(514, 'CESL00615', 'BDBD', '1', 'Ipad', 'LB451 Morshadul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 52, 'E. M. Wahed Morshedul Haque', 'QA', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(515, 'CESL00616', 'BDBD', '1', 'Ipad', 'LB475 Wahidur Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 49, 'K M Wahidur Rahman', 'Quality Assurance Inspector', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(516, 'CESL00617', 'BDBD', '1', 'Ipad', 'LB479 Mobarak Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(517, 'CESL00618', 'BDBD', '1', 'Ipad', 'LB555 Atikur Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 405, 'Md Atikur Rahman', 'QA', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(518, 'CESL00619', 'BDBD', '1', 'Ipad', 'LB580 Saikat Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(519, 'CESL00620', 'BDBD', '1', 'Ipad', 'LB612 Sumon Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(520, 'CESL00621', 'BDBD', '1', 'Ipad', 'LB616 Ohidul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 411, 'Mohammed Ohidul Islam', 'QA', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(521, 'CESL00622', 'BDBD', '1', 'Ipad', 'LB629 Monirozzaman Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 380, 'Md. Monirozzaman', 'QA', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(522, 'CESL00623', 'BDBD', '1', 'Ipad', 'LB633 Rayhan Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(523, 'CESL00624', 'BDBD', '1', 'Ipad', 'LB690 Hannan Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(524, 'CESL00625', 'BDBD', '1', 'Ipad', 'LB691 Ariful Ipad for QMS Project', '', '', '', '0', '', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(525, 'CESL00626', 'BDBD', '1', 'Ipad', 'LB706 Harun Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 382, 'Harun Ur Rashid', 'QA', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(526, 'CESL00627', 'BDBD', '1', 'Ipad', 'LB738 Kashidul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(527, 'CESL00628', 'BDBD', '1', 'Ipad', 'LB825 Naziur Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(528, 'CESL00629', 'BDBD', '1', 'Ipad', 'LB828 Nayan Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(529, 'CESL00630', 'BDBD', '1', 'Ipad', 'LB858 Fayzul Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 378, 'Fayzul Haque', 'QA', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(530, 'CESL00631', 'BDBD', '1', 'Ipad', 'LB919 Habibur Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 373, 'Md. Habibur Rahman Shuvo', 'QA', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(531, 'CESL00632', 'BDBD', '1', 'Ipad', 'LB942 Yousuf Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 61, 'Mohammad Yousuf', 'QA', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(532, 'CESL00633', 'BDBD', '1', 'Ipad', 'LB947 Zia Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(533, 'CESL00634', 'BDBD', '1', 'Ipad', 'XB031 Sujeewa Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 400, 'Mohammed Moinuddin Hassan Chowdhury', 'QA', '2025-01-20', '', '', '', '', '', '', '', '', '', 0),
(534, 'CESL00635', 'BDBD', '1', 'Ipad', 'Backup Ipad for QMS Project', '', '', '', '0', 'na', 'Swap', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(535, 'CESL00636', 'BDBD', '1', 'Laptop', 'GM Samsung Galaxy F22', '10/1/2022', '2022/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(536, 'CESL00637', 'BDBD', '1', 'Laptop', 'XB084 Maheshika Samsung Galaxy F22', '10/1/2022', '2022/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(537, 'CESL00638', 'BDBD', '1', 'Laptop', 'IT Room renovation', '4/1/2023', '2023/03', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(538, 'CESL00639', 'BDBD', '1', 'Laptop', 'Desktop for Updgrade Optitex', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(539, 'CESL00640', 'BDBD', '1', 'Laptop', 'LB994 Rupak PF3LBNQH Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(540, 'CESL00641', 'BDBD', '1', 'System', 'LB995 Bijoya PF3LNE61 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 201, 'Farhin Islam', 'NS Brand', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(541, 'CESL00642', 'BDBD', '1', 'Mobile', 'LB996 Rawful PF3LMFQK Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 147, 'Abdul Wahid Ashraf', 'Merchandising', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(542, 'CESL00643', 'BDBD', '1', 'Mobile', 'LB605 Roman PF3LN6QQ Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(543, 'CESL00644', 'BDBD', '1', 'Mobile', 'LB801 Eftakhar PF3LNK95 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(544, 'CESL00645', 'BDBD', '1', 'Network', 'LB808 Naderul PF3LMMH8 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(545, 'CESL00646', 'BDBD', '1', 'Network', 'LB607 Ruman PF3LNKYS Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(546, 'CESL00647', 'BDBD', '1', 'Network', 'XB089 Padriac PW032Y8P Lenovo ThinkPad L13Gen 3', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(547, 'CESL00648', 'BDBD', '1', 'Laptop', 'LB513 Taibour PF3LM8R7 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 289, 'Taibour Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(548, 'CESL00649', 'BDBD', '1', 'Laptop', 'LB785 Shimul PF3LNF40 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(549, 'CESL00650', 'BDBD', '1', 'Laptop', 'LB524 Mahadi PF3MSDJP Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 3, 'Mahtab Uddin Ahmed Likhon', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(550, 'CESL00651', 'BDBD', '1', 'Laptop', 'LB853 R. Monsur PF3LNEAG Lenovo ThinkPad L14Gen 2', '', '', '', '0', 'PF3LNEAG ', 'Thakral Information limited', '', 258, 'Arif UR Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(551, 'CESL00652', 'BDBD', '1', 'Laptop', 'LB892 Binit PF3LMWB8 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 150, 'Binit Kumar Karmaker', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(552, 'CESL00653', 'BDBD', '1', 'Laptop', 'XB088 Damien PW032Y57 Lenovo ThinkPad L13Gen 3', '5/1/2023', '2023/04', '', '0', '', '', '', 17, 'Emma Watson', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(553, 'CESL00654', 'BDBD', '1', 'Laptop', 'XB084 Maheshika PW032Y21 Lenovo ThinkPad L13Gen 3', '5/1/2023', '2023/04', '', '0', '', '', '', 317, 'Maheshika Kularathne', 'Product Development', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(554, 'CESL00655', 'BDBD', '1', 'Laptop', 'TBA Dev Merch PF3LN8KY Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 324, 'Angela Onorato', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(555, 'CESL00656', 'BDBD', '1', 'Laptop', 'TBA Asst, Merch Manager PF3LME40 Lenovo ThinkPad L14Gen 2', '5/1/2023', '2023/04', '', '0', '', '', '', 146, 'Md. Ali Jiko', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(556, 'CESL00657', 'BDBD', '1', 'Laptop', 'LB282 Md. Salahuddin Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(557, 'CESL00658', 'BDBD', '1', 'Laptop', 'LB467 Shafiqur Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(558, 'CESL00659', 'BDBD', '1', 'Laptop', 'LB349 Lingcon Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(559, 'CESL00660', 'BDBD', '1', 'Laptop', 'LB522 Muktadir Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(560, 'CESL00661', 'BDBD', '1', 'Laptop', 'LB558 Masud Rana Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(561, 'CESL00662', 'BDBD', '1', 'Laptop', 'XB087 Gulsah Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(562, 'CESL00663', 'BDBD', '1', 'Laptop', 'LB507 Khairul Hasan Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(563, 'CESL00664', 'BDBD', '1', 'Laptop', 'LB323 Nazrul Samsung A13', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(564, 'CESL00665', 'BDBD', '1', 'Laptop', 'XB083 Jonathan Samsung M12', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(565, 'CESL00666', 'BDBD', '1', 'Laptop', 'LB408 Riaz Samsung M12', '5/1/2023', '2023/04', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(566, 'CESL00667', 'BDBD', '1', 'Smartphone', 'XB088 Damien Samsung M12', '2023-01-06', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(567, 'CESL00668', 'BDBD', '1', 'Smartphone', 'XB089 Padriac Samsung M12', '2023-01-04', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(568, 'CESL00669', 'BDBD', '1', 'Laptop', 'LB801 Eftakhar Samsung M12', '5/1/2023', '2023/04', '', '0', '', '', '', 246, 'Md. Eftakhar Alam', 'Merchandising', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(569, 'CESL00670', 'BDBD', '1', 'Mobile', 'LB605 Roman Samsung M12', '5/1/2023', '2023/04', '', '0', '', '', '', 188, 'Md. Roman', 'Merchandising', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(570, 'CESL00671', 'BDBD', '1', 'Mobile', 'LB607 Ruman Samsung M12', '5/1/2023', '2023/04', '', '0', '', '', '', 203, 'Mohammad Ruman', 'NS Brand', '2025-01-21', '', '', '', '', '', '', '', '', '', 0),
(571, 'CESL00672', 'BDBD', '1', 'Laptop', 'XB090 Nicola Lenova ThinkPad L14', '2023-01-06', '2023-01-07', '2027-01-07', '0', 'na', 'Thakral Information limited', 'XB090 Nicola Lenova ThinkPad L14', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(572, 'CESL00673', 'BDBD', '1', 'Ipad', 'Saiham Knit Ipad for QMS Project WCP95WMQWV', '', '', '', '0', 'WCP95WMQWV', 'Swap', 'Saiham Knit', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(573, 'CESL00674', 'BDBD', '1', 'Ipad', 'Metro Knitting Ipad for QMS Project W1QW34WFJ2', '', '', '', '0', 'W1QW34WFJ2', 'Swap', 'Metro Knitting', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(574, 'CESL00675', 'BDBD', '1', 'Ipad', 'Mahmuda Attires Ipad for QMS Project GGVCXD6C4Q', '', '', '', '0', 'GGVCXD6C4Q', 'Swap', 'Mahmuda Attires', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(575, 'CESL00676', 'BDBD', '1', 'Ipad', 'Castle Crafts Ipad for QMS Project MQHWT3KJYF', '', '', '', '0', 'MQHWT3KJYF', 'Swap', 'Castle Crafts ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(576, 'CESL00677', 'BDBD', '1', 'Ipad', 'Zyta Apparels Ipad for QMS Project V674C9CHH2', '2023-01-06', '2023-01-07', '2027-01-07', '0', 'V674C9CHH2', 'Swap', 'Zyta Apparels Ipad for QMS Project ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(577, 'CESL00678', 'BDBD', '1', 'Network', 'Denitex Ltd Ipad for QMS Project J9HVHQTJ7X', '7/1/2023', '2023/06', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(578, 'CESL00679', 'BDBD', '1', 'Ipad', 'Pandora Sweater Ipad for QMS Project PFDFWC41WT', '', '', '', '0', 'PFDFWC41WT', 'Swap', 'Pandora Sweater', 0, '', '', '2025-01-15', '', '', '', '', '', '', '', '', '', 0),
(579, 'CESL00680', 'BDBD', '1', 'Smartphone', 'XB088 Damien Samsung F22', '2023-01-06', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(580, 'CESL00681', 'BDBD', '1', 'Headphone', 'XB090 Nicola Samsung F22', '2023-10-06', '2023-10-06', '2027-10-06', '0', 'na', 'A 2 Z computer and security', 'XB090 Nicola Samsung F22', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(581, 'CESL00682 ', 'BDBD', '1', 'Laptop', 'LB937 Nazifa PF3RGYEY Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(582, 'CESL00683', 'BDBD', '1', 'Laptop', 'LB932 Asha PF3RJ6RB Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(583, 'CESL00684', 'BDBD', '1', 'Laptop', 'LB1005 Amit Saha PF3RQV6P Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 236, 'Hasibul Hasan Shykat', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(584, 'CESL00685', 'BDBD', '1', 'Laptop', 'LB425 Maksudur PF3RPMDT Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 190, 'M.Moazzam Hossain Razib', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(585, 'CESL00686', 'BDBD', '1', 'Laptop', 'LB970 Mim PF3QMGB Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 132, 'Md. Salahuddin', 'COP', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(586, 'CESL00687', 'BDBD', '1', 'Laptop', 'LB925 Shanto PF3RGW7D Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 309, 'Abul Hossain Shanto', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(587, 'CESL00688', 'BDBD', '1', 'Laptop', 'LB842 Shakawat PF3RHOPP Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 308, 'Maria Akter', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(588, 'CESL00689', 'BDBD', '1', 'Laptop', 'LB771 Tauhidul PF3RGNDV Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 182, 'Mahmudul Hossain', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(589, 'CESL00690', 'BDBD', '1', 'Laptop', 'LB872 Saifur Rahman PF3RV7TP Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(590, 'CESL00691', 'BDBD', '1', 'Laptop', 'LB936 Muhtasin Ayan PF3RK1KF Lenovo ThinkPad K14', '9/1/2023', '2023/08', '', '0', '', '', '', 208, 'Bijoya Barua', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(591, 'CESL00692', 'BDBD', '1', 'Laptop', 'LB927 Arafat MP284HMW Lenovo IP Gaming 3i', '9/1/2023', '2023/08', '', '0', '', '', '', 100, 'Arafat Khan', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(592, 'CESL00693', 'BDBD', '1', 'Laptop', 'LB627 Mahabub Khan Samsung F14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(593, 'CESL00694', 'BDBD', '1', 'Laptop', 'Banani Apartment A6 Samsung F14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(594, 'CESL00695', 'BDBD', '1', 'Mobile', 'Banani Apartment B4 Samsung F14', '9/1/2023', '2023/08', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(595, 'CESL00696', 'BDBD', '1', 'Mobile', 'LB1020 Arefin Mahfuza PF3VY0W7 Lenovo ThinkPad L14 G2', '10/1/2023', '2023/09', '', '0', '', '', '', 337, 'M. Ahmed Siraji', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(596, 'CESL00697', 'BDBD', '1', 'Laptop', 'LB701 Rashel Khan PF3VY53K Lenovo ThinkPad L14 G2', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(597, 'CESL00698', 'BDBD', '1', 'Laptop', 'LB1044 Saddam Hossain PF3VXWD0 Lenovo ThinkPad L14 G2', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(598, 'CESL00699', 'BDBD', '1', 'Laptop', 'LB558 Masud Rana PF3TKQ0L Lenovo ThinkPad L14 G2', '10/1/2023', '2023/09', '', '0', '', '', '', 209, 'Jalal Quadir', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(599, 'CESL00700', 'BDBD', '1', 'Laptop', 'LB1054 Nayem Hossain PF3VYL4X Lenovo ThinkPad L14 G2', '10/1/2023', '2023/09', '', '0', '', '', '', 144, 'Abdullah Al Bitar', 'Merchandising', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(600, 'CESL00701', 'BDBD', '1', 'Laptop', 'Apex Fizz - 4 Hyper Simulation (Desktop version)', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(601, 'CESL00702', 'BDBD', '1', 'Laptop', 'LB504 Hasanuzzaman Samsung F23', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(602, 'CESL00703', 'BDBD', '1', 'Laptop', 'LB1052 Efthaker Rehaman Samsung F23', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(603, 'CESL00704', 'BDBD', '1', 'Laptop', 'LB786 Rayhan Chowdhury Samsung F23', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(604, 'CESL00705', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL:PSZ26101K25', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(605, 'CESL00706', 'BDBD', '1', 'Laptop', 'WiFi -Aps 4 Floor West', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(606, 'CESL00707', 'BDBD', '1', 'Laptop', 'WiFi -Aps 5th Floor West', '10/1/2023', '2023/09', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(607, 'CESL00708', 'BDBD', '1', 'Laptop', 'LB1060 Nazmul PF3VYFWW Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(608, 'CESL00709', 'BDBD', '1', 'Laptop', 'LB1066 Jubaer PF3TLVAS Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 163, 'Syed Abeer Jamil', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(609, 'CESL00710', 'BDBD', '1', 'Laptop', 'LB1057 Ali Razan PF3VYL49 Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VYL49 ', 'Thakral Information limited', 'LB1057 Ali Razan', 313, 'Ali Razan', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(610, 'CESL00711', 'BDBD', '1', 'Laptop', 'LB1068 Saber Hossain PF3VY9A4 Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VY9A4 ', 'Thakral Information limited', 'LB1068 Saber Hossain ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(611, 'CESL00712', 'BDBD', '1', 'Laptop', 'LB1053 Mamun Hossain PF3TKQ16 Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3TKQ16 ', 'Thakral Information limited', 'LB1053 Mamun Hossain', 186, 'Mahi Nuzzaman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(612, 'CESL00713', 'BDBD', '1', 'Laptop', 'LB1056 Rakib Hassan PF3VXAK8 Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VXAK8 ', 'Thakral Information limited', 'LB1056 Rakib Hassan ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(613, 'CESL00714', 'BDBD', '1', 'Laptop', 'LB1059 Abir Mohammad PF3VY76C Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VY76C ', 'Thakral Information limited', 'LB1059 Abir Mohammad', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(614, 'CESL00715', 'BDBD', '1', 'Laptop', 'LB1062 Khairul Islam PF3TMJ3T Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3TMJ3T', 'Thakral Information limited', 'LB1062 Khairul Islam ', 257, 'Deluar Hosen', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(615, 'CESL00716', 'BDBD', '1', 'Laptop', 'LB964 Raiyan Islam VF3TLZTX Lenovo ThinkPad L14 G2', '', '', '', '0', 'VF3TLZTX', 'Thakral Information limited', 'LB964 Raiyan Islam', 301, 'Abhishek Kundu', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(616, 'CESL00717', 'BDBD', '1', 'Laptop', 'LB1067 Abu Huraira PF3TKTWM Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 205, 'Abu Huraira', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(617, 'CESL00718', 'BDBD', '1', 'Laptop', 'LB1071 Azizul Hakim PF3VY9B6 Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 253, 'Enamul Haque', 'Merchandising', '2025-01-28', 'Azizul Hakim Shihab', '', '', '', '', '', '', '', '', 0),
(618, 'CESL00719', 'BDBD', '1', 'Laptop', 'XB091 Austin Squirell PF3TKTVP Lenovo ThinkPad L14 G2', '2023-01-10', '2023-01-10', '2027-01-10', '0', 'PF3TKTVP ', 'A 2 Z computer and security', 'XB091 Austin Squirell ', 153, 'Taskin Ahmed', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(619, 'CESL00720', 'BDBD', '1', 'Laptop', 'LB693 Shipon PF3VYBA5 Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(620, 'CESL00721', 'BDBD', '1', 'Laptop', 'LB799 Imran PF3VY0VH Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 239, 'Md. Imran Uddin', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(621, 'CESL00722', 'BDBD', '1', 'Laptop', 'LB931 Tanzir Khan PF3TKPSM Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(622, 'CESL00723', 'BDBD', '1', 'Laptop', 'LB974 Shafayat Jamil PF3VY2RH Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VY2RH ', 'Thakral Information limited', '', 214, 'Md. Hasin Ryan', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(623, 'CESL00724', 'BDBD', '1', 'Laptop', 'LB1025 Motakabbir Rahman Lenovo ThinkPad L14 G2', '', '', '', '0', '', 'Thakral Information limited', '', 197, 'Md. Anisul Haque', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(624, 'CESL00725', 'BDBD', '1', 'Laptop', 'LB888 Rumana Haque PF3VYNBB Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VYNBB', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(625, 'CESL00726', 'BDBD', '1', 'Laptop', 'LB323 NAZRUL ISLAM PF3VXJNR Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VXJNR ', 'Thakral Information limited', '', 333, 'Mohammad Nazrul Islam', 'Capacity  Planning and Sourcing', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(626, 'CESL00727', 'BDBD', '1', 'Laptop', 'LB496 Nazmus Saleehin PF3VXDDL Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3VXDDL ', 'Thakral Information limited', '', 159, 'Md. Ashikuzzaman Khan', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(627, 'CESL00728', 'BDBD', '1', 'Laptop', 'TBC ASSIST Merchandiser PF3VW0WN Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(628, 'CESL00729', 'BDBD', '1', 'Laptop', 'LB1063 Masum Billah PF3VYQJY Lenovo ThinkPad L14 G2', '11/1/2023', '2023/10', '', '0', '', '', '', 269, 'Gazi Masum Billah', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(629, 'CESL00730', 'BDBD', '1', 'Laptop', 'LB1053 Mamun Hossain Samsung F23', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(630, 'CESL00731', 'BDBD', '1', 'Laptop', 'LB1062 Khairul Islam Samsung F23', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(631, 'CESL00732', 'BDBD', '1', 'Laptop', 'LB1057 Ali Razan Samsung F23', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(632, 'CESL00733', 'BDBD', '1', 'Smartphone', 'XB091 Austin Squirell Samsung F23', '2023-01-10', '2023-01-10', '2027-01-10', '0', 'na', 'A 2 Z computer and security', 'XB091 Austin Squirell ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(633, 'CESL00734', 'BDBD', '1', 'Laptop', 'LB1073 Monjur Alam Samsung F23', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(634, 'CESL00735', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL: JAE25311145', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(635, 'CESL00736', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL: FOC2613Y372', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(636, 'CESL00737', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL:FOC2613Y354', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(637, 'CESL00738', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL:FOC2613Y381', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(638, 'CESL00739', 'BDBD', '1', 'Laptop', 'Allied 5th floor West Biometric Access control installation', '11/1/2023', '2023/10', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(639, 'CESL00740', 'BDBD', '1', 'Laptop', 'LB529 Shahadat Hossain Mithu PF3WBXQR Lenovo ThinkPad L14 G2', '', '', '', '0', 'PF3WBXQR ', 'Thakral Information limited', '', 173, 'Imam Hasan Maruf', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(640, 'CESL00741', 'BDBD', '1', 'Laptop', 'LB1076 Abdur Razzak PF-3W8R0S Lenovo ThinkPad L14 G2', '', '', '', '0', ' PF3W8R0S', 'Thakral Information limited', '', 352, 'Md. Abdur Razzak', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(641, 'CESL00742', 'BDBD', '1', 'Laptop', 'LB1077 Rahnuma Islam PF-3WE5YA Lenovo ThinkPad L14 G2', '', '', '', '0', ' PF3WE5YA', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(642, 'CESL00743', 'BDBD', '1', 'Laptop', 'LB1079 Taskin Ahmed PF-3WE554 Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 249, 'Tabiba Tabassum', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(643, 'CESL00744', 'BDBD', '1', 'Laptop', 'LB633 Rayhan Sarker PF-3WE3KA Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 167, 'Md. Abu Saide', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(644, 'CESL00745', 'BDBD', '1', 'Laptop', 'LB894 Sayeem PF-3W7W7G Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 228, 'Tasmina Akter Joyee', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(645, 'CESL00746', 'BDBD', '1', 'Laptop', 'LB1069 Ishrat Ahmed Shishir PF3W9XDW Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 270, 'Ishrat Ahmed Shishir', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(646, 'CESL00747', 'BDBD', '1', 'Laptop', 'LB193 Jahidul Haque PF-3W89K7 Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 278, 'Jahidul Haque', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(647, 'CESL00748', 'BDBD', '1', 'Laptop', 'LB713 Israt Jahan Maria Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 271, 'Jakaria Habib', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(648, 'CESL00749', 'BDBD', '1', 'Laptop', 'LB791 Riajul Karim Raihan Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 277, 'Ferdous Nahiyan', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(649, 'CESL00750', 'BDBD', '1', 'Laptop', 'LB986 Rubaiet Raihan Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 156, 'Abdullah Al Maheraj', 'Merchandising', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(650, 'CESL00751', 'BDBD', '1', 'Laptop', 'LB923 Sabuz Kumar Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 306, 'Irteza Uddin Turzo', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(651, 'CESL00752', 'BDBD', '1', 'Laptop', 'LB1016 Md. Moniruzzaman Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(652, 'CESL00753', 'BDBD', '1', 'Laptop', 'LB877 Tanzilur rahman Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(653, 'CESL00754', 'BDBD', '1', 'Laptop', 'LB854 Enamul Haque Lenovo ThinkPad L14 G2', '12/1/2023', '2023/11', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(654, 'CESL00755', 'BDBD', '1', 'Laptop', 'LB529 Shahadat Hossain Mithu Samsung A23', '12/1/2023', '2023/11', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(655, 'CESL00756', 'BDBD', '1', 'Laptop', 'LB193 Jahidul Haque Samsung A23', '12/1/2023', '2023/11', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(656, 'CESL00757', 'BDBD', '', 'Laptop', 'LB878 Shishir PF4L0QNZ Lenovo ThinkPad E14 G4', '1/1/2024', '2023/12', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(657, 'CESL00758', 'BDBD', '', 'Laptop', 'LB1026 Nusrat PF4KZZPF Lenovo ThinkPad E14 G4', '1/1/2024', '2023/12', '', '0', '', '', '', 274, 'Aminul Hoque Shagor', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(658, 'CESL00759', 'BDBD', '', 'Laptop', 'LB747 Masud Rana PF4L5SVX Lenovo ThinkPad E14 G4', '1/1/2024', '2023/12', '', '0', '', '', '', 43, 'Md. Masud Rana', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(659, 'CESL00760', 'BDBD', '1', 'Laptop', 'LB846 Ashish Saha PF4L1VWV Lenovo ThinkPad E14 G4', '1/1/2024', '2023/12', '', '0', '', '', '', 345, 'Ashish Saha', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(660, 'CESL00761', 'BDBD', '1', 'Laptop', 'LB1092 Tabiba PF4L415T Lenovo ThinkPad E14 G4', '1/1/2024', '2023/12', '', '0', '', '', '', 137, 'Abdullah Al Nayeem', 'Merchandising', '2025-01-17', '', '', '', '', '', '', '', '', '', 0),
(661, 'CESL00762', 'BDBD', '1', 'Laptop', 'LB1087 Turzo PF4L3NQS Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L3NQS ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(662, 'CESL00763', 'BDBD', '1', 'Laptop', 'LB1094 Jakaria Habib PF4L4LZH Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L4LZH ', 'Thakral Information limited', '', 99, 'Sadiya Anowar', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(663, 'CESL00764', 'BDBD', '1', 'Laptop', 'LB1088 Nahiyan PF4L1LSW Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L1LSW', 'Thakral Information limited', '', 174, 'Ishtiak Alam', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(664, 'CESL00765', 'BDBD', '1', 'Laptop', 'LB1090 Moresalina PF4L3V3C Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L3V3C ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(665, 'CESL00766', 'BDBD', '1', 'Laptop', 'LB HABIBUR PF4L1Y2B Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L1Y2B', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(666, 'CESL00767', 'BDBD', '1', 'Laptop', 'LB899 SULTAN PF4L4P0V Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L4P0V ', 'Thakral Information limited', '', 179, 'Ashfaqur Rahman', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(667, 'CESL00768', 'BDBD', '1', 'Laptop', 'LB1029 Hasibul PF4L2RP7 Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4L2RP7', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(668, 'CESL00769', 'BDBD', '1', 'Laptop', 'LB1028 Mashfi PF4LK64 Lenovo ThinkPad E14 G4', '', '', '', '0', 'PF4LK64 ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(669, 'CESL00770', 'BDBD', '1', 'Ipad', 'LB1091 Tauhidul Islam QC2YDVHXTH Ipad for QMS Project D4D737C1QJ', '', '', '', '0', 'QC2YDVHXTH ', 'Swap', '', 401, 'Tauhidul Islam', 'QA', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(670, 'CESL00771', 'BDBD', '1', 'Smartphone', 'LB899 Sultan Samsung A23', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(671, 'CESL00772', 'BDBD', '1', 'Laptop', 'Allied 5th floor East Biometric Access control installation', '1/1/2024', '2023/12', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(672, 'CESL00773', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL: FOC2613Y385', '1/1/2024', '2023/12', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(673, 'CESL00774', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL: FOC2613Y30M', '1/1/2024', '2023/12', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(674, 'CESL00775', 'BDBD', '1', 'Laptop', 'Cisco Network Switch SL: FOC2613Y31M', '1/1/2024', '2023/12', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(675, 'CESL00776', 'BDBD', '1', 'Laptop', 'LB878 Shishir SPW08TFVT Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(676, 'CESL00777', 'BDBD', '1', 'Laptop', 'LB1026 Nusrat Tabassum SPW08TFVX Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 226, 'Bulbul Ahmed Shahin', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(677, 'CESL00778', 'BDBD', '1', 'Laptop', 'LB684 Ibrahim Hossain SPW08TFW2 Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 318, 'Austin Squirrell', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(678, 'CESL00779', 'BDBD', '1', 'Laptop', 'LB747 Masud Rana SPW08TFWL Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(679, 'CESL00780', 'BDBD', '1', 'Laptop', 'LB846 Ashish Saha SPW08TFVW Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(680, 'CESL00781', 'BDBD', '1', 'Laptop', 'LB1032 Jasmin Jotee SPW08TFWX Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(681, 'CESL00782', 'BDBD', '1', 'Laptop', 'LB1042 Sazzad Hossain SPW08TFW8 Lenovo ThinkPad L14 A to Z', '2/1/2024', '2024/01', '', '0', '', '', '', 206, 'M. Waliul Islam', 'NS Brand', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(682, 'CESL00783', 'BDBD', '1', 'Laptop', 'QCC 1 QMVWL7L7R9 Swap BD', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(683, 'CESL00784', 'BDBD', '1', 'Laptop', 'QCC 2 C9FF9D44Q0 Swap BD', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(684, 'CESL00785', 'BDBD', '1', 'Laptop', 'QCC 3 JTQN475QH9 Swap BD', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(685, 'CESL00786', 'BDBD', '1', 'Laptop', 'QCC 4 JVWXF1V7Y1 Swap BD', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(686, 'CESL00787', 'BDBD', '1', 'Laptop', 'XB090 Nicola KWV4LH6WGL Swap BD', '2/1/2024', '2024/01', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(687, 'CESL00788', 'BDBD', '1', 'Laptop', 'LB1108 Sohel Rana PW08TFVS Lenovo ThinkPad L14 A to Z', '3/1/2024', '2024/02', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(688, 'CESL00789', 'BDBD', '1', 'Laptop', 'LB1120 Jannatul Ferdouse PW08TFW3 Lenovo ThinkPad L14 A to Z', '3/1/2024', '2024/02', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(689, 'CESL00790', 'BDBD', '1', 'Laptop', 'LB1121 Suha Tabil PW08TFX1 Lenovo ThinkPad L14 A to Z', '3/1/2024', '2024/02', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(690, 'CESL00791', 'BDBD', '1', 'Laptop', 'LB1119 Rejaul Karim PW09HBDV Lenovo ThinkPad L14 Thakral', '3/1/2024', '2024/02', '', '0', '', '', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(691, 'CESL00792', 'BDBD', '1', 'Laptop', 'LB1125 Mabrukh Bhuiyan PW09HBDW Lenovo ThinkPad L14 Thakral', '3/1/2024', '2024/02', '', '0', '', '', '', 331, 'HM Mabrukh Bhuiyan', 'Product Development', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(692, 'CESL00793', 'BDBD', '1', 'Laptop', 'LB1137 Zeeshan Anwar PW09HBN5 Lenovo ThinkPad L14 Thakral', '4/1/2024', '2024/03', '', '0', '', '', '', 135, 'Anton Krishnth Manoj Kumar Rajakumar', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(693, 'CESL00794', 'BDBD', '1', 'Laptop', 'LB1129 Emdadul Hoq PW09HBKL Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBKL', 'Thakral Information limited', '', 359, 'Md. Emdadul Hoq Milon', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(694, 'CESL00795', 'BDBD', '1', 'Laptop', 'LB1131 Puja Bandya PW09HBL8 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBL8 ', 'Thakral Information limited', '', 102, 'Md. Abdul Majid Mollah', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(695, 'CESL00796', 'BDBD', '1', 'Laptop', 'LB1127 Shubha Das PW09HBBN Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBBN ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(696, 'CESL00797', 'BDBD', '1', 'Laptop', 'LB1128 Bappy Hossain PW09HBC4 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBC4 ', 'Thakral Information limited', '', 219, 'Bappy Hossain', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(697, 'CESL00798', 'BDBD', '1', 'Laptop', 'XB094 Abbey Kilian PW09HBDJ Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBDJ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(698, 'CESL00799', 'BDBD', '1', 'Laptop', 'LB1140 Saiful Azam PW09HBKC Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBKC', 'Thakral Information limited', '', 692, 'Md. Ashiful Haque Badhon', 'Merchandising', '2025-01-27', '', '', '', '', '', '', '', '', '', 0),
(699, 'CESL00800', 'BDBD', '1', 'Smartphone', 'LB1137 Zeeshan Samsung F14 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(700, 'CESL00801', 'BDBD', '1', 'Smartphone', 'XB095 Ruth Butterworth Samsung F14 AtoZ', '', '', '', '0', 'na', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(701, 'CESL00802', 'BDBD', '1', 'Smartphone', 'XB094 Abbey Kilian Samsung F14 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(702, 'CESL00803', 'BDBD', '1', 'Laptop', 'LB408 Riaz uddin PW09HBEF Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBEF', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(703, 'CESL00804', 'BDBD', '1', 'Laptop', 'LB943 Imran sharif PW09HBLS Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBLS', 'Thakral Information limited', '', 158, 'Md. Imran Sharif', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(704, 'CESL00805', 'BDBD', '1', 'Laptop', 'LB565 Nashid Noushin PW09HBKB Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBKB', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(705, 'CESL00806', 'BDBD', '1', 'Laptop', 'LB436 Saifullah Al Tarique PW09HBEW Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBEW', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(706, 'CESL00807', 'BDBD', '1', 'Laptop', 'LB997 Kabir Hossain PW09HBDQ Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBDQ ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(707, 'CESL00808', 'BDBD', '1', 'Laptop', 'LB956 Anjan Sarkar PW09HBK7 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBK7', 'Thakral Information limited', '', 191, 'Anjan Sarkar', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(708, 'CESL00809', 'BDBD', '1', 'Laptop', 'LB507 Khairul Hasan PW09HBAM Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBAM', 'Thakral Information limited', 'has battery issue', 323, 'Khairul Hasan', 'Product Development', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(709, 'CESL00810', 'BDBD', '1', 'Laptop', 'XB095 Ruth Butterworth PW09HBNC Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBNC', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(710, 'CESL00811', 'BDBD', '1', 'Laptop', 'LB1040 Nafisa Masoom PW09HBEQ Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBEQ ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(711, 'CESL00812', 'BDBD', '1', 'Laptop', 'LB1142 Sabbir Ahmed PW09HBJP Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW09HBJP', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(712, 'CESL00813', 'BDBD', '1', 'Laptop', 'XB015 Shahul PW0ASFMC Lenovo ThinkPad L13 Thakral', '', '', '', '0', 'PW0ASFMC', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(713, 'CESL00814', 'BDBD', '1', 'Laptop', 'LB875 Samia PW0AM1W2 Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AM1W2 ', 'Victoria Sourcing', '', 251, 'Sanjoy Bhowmik', 'Merchandising', '2025-01-28', '', '', '', '', '', '', '', '', '', 0),
(714, 'CESL00815', 'BDBD', '1', 'Laptop', 'LB810 SHIMU PW0AAQAB Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQAB ', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(715, 'CESL00816', 'BDBD', '1', 'Laptop', 'LB723 SAIFUL PW0AAQ8K Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQ8K ', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(716, 'CESL00817', 'BDBD', '1', 'Laptop', 'LB996 RAWFUL PW0AAQ7E Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQ7E', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(717, 'CESL00818', 'BDBD', '1', 'Laptop', 'LB930 SHAKIR PW0AAQ8X Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQ8X', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(718, 'CESL00819', 'BDBD', '1', 'Laptop', 'LB1146 RIFAT PW0AM86G Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AM86G ', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(719, 'CESL00820', 'BDBD', '1', 'Laptop', 'LB1065 FUAD PW0AAQ77 Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQ77', 'Victoria Sourcing', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(720, 'CESL00821', 'BDBD', '1', 'Laptop', 'LB1058 KAMRUL PW0AAQ6D Lenovo ThinkPad L13 Victoria Sourcing', '', '', '', '0', 'PW0AAQ6D ', 'Victoria Sourcing', '', 242, 'Kamrul Hasan Rana', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(721, 'CESL00822', 'BDBD', '1', 'Smartphone', 'LB223 Utpal Komar Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(722, 'CESL00823', 'BDBD', '1', 'Smartphone', 'XB039 Gulsha Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(723, 'CESL00824', 'BDBD', '1', 'Smartphone', 'LB720 Rafa Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(724, 'CESL00825', 'BDBD', '1', 'Smartphone', 'LB633 Rayhan Sarker Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(725, 'CESL00826', 'BDBD', '1', 'Smartphone', 'LB681 Mothasin Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(726, 'CESL00827', 'BDBD', '1', 'Smartphone', 'LB1058 Kamrul Rana Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(727, 'CESL00828', 'BDBD', '1', 'Smartphone', 'LB627 Masud Rana Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(728, 'CESL00829', 'BDBD', '1', 'Smartphone', 'XB077 Harinder Singh Samsung A15 AtoZ', '', '', '', '0', 'na', 'A 2 Z computer and security', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(729, 'CESL00830', 'BDBD', '1', 'Access Control', 'Allied 6th floor West New side Biometric Access control installation', '', '', '', '0', 'na', 'Allied technology', '', 689, 'NSL system', 'IT', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(730, 'CESL00831', 'BDBD', '1', ' Infrastructure', 'Root Systems 6th floor IT structure Setup', '', '', '', '0', 'na', 'Root Systems Limited', '', 689, 'NSL system', 'IT', '2025-01-24', '', '', '', '', '', '', '', '', '', 0),
(731, 'CESL00832', 'BDBD', '1', 'Laptop', 'LB1147 RINA MONY PW0B9XZP Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XZP', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0);
INSERT INTO `asset_list` (`id`, `AssetCode`, `Company`, `qty`, `assettype`, `AssetDescription`, `PurchaseDate`, `DepnStartPeriod`, `DepnEndPeriod`, `Disposed`, `SN`, `Supplier`, `Remark`, `usedbyid`, `Usedby`, `usedbydept`, `assigndate`, `Usedby2`, `Usedby3`, `Usedby4`, `Usedby5`, `Usedby6`, `Usedby7`, `Usedby8`, `Usedby9`, `Usedby10`, `assigned`) VALUES
(732, 'CESL00833', 'BDBD', '1', 'Laptop', 'LB1141 mD. SAID PW0B9XPC Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XPC ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(733, 'CESL00834', 'BDBD', '1', 'Laptop', 'LB1030 SAKI PW0B9XXY Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XXY ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(734, 'CESL00835', 'BDBD', '1', 'Laptop', 'LB1157 SAZZADUL KARIM PW0B9XW2 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XW2', 'Thakral Information limited', '', 8, 'M.A. Imran', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(735, 'CESL00836', 'BDBD', '1', 'Laptop', 'LB1150 AMRAN PW0B9XZF Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XZF ', 'Thakral Information limited', '', 177, 'Md. Amran Hossain', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(736, 'CESL00837', 'BDBD', '1', 'Laptop', 'LB1143 Russell QCC Manager 21H1S0QH00 Lenovo ThinkPad L14 Thakral', '', '', '', '0', '21H1S0QH00', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(737, 'CESL00838', 'BDBD', '1', 'Laptop', 'LB972 Nazmul PW0B9XV1 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XV1', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(738, 'CESL00839', 'BDBD', '1', 'Laptop', 'LB808 Naderul PW0B9XNG Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XNG ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(739, 'CESL00840', 'BDBD', '1', 'Laptop', 'LB1054 Nayem PW0B9XWN Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XWN ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(740, 'CESL00841', 'BDBD', '1', 'Laptop', 'LB1066 Jubaer PW0B9XZQ Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XZQ', 'Thakral Information limited', '', 165, 'Jubaer Ahmed', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(741, 'CESL00842', 'BDBD', '1', 'Laptop', 'LB746 Yaqub PW0B9XRZ Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XRZ', 'Thakral Information limited', '', 231, 'Md Yaqub Ali', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(742, 'CESL00843', 'BDBD', '1', 'Laptop', 'LB1102 Mostakim PW0B9XN0 Lenovo ThinkPad L14 Thakral', '', '', '', '0', '', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(743, 'CESL00844', 'BDBD', '1', 'Laptop', 'LB1096 Monir Bhuiyan PW0B9XW6 Lenovo ThinkPad L14 Thakral', '', '', '', '1', 'PW0B9XW6', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(744, 'CESL00845', 'BDBD', '1', 'Laptop', 'LB1015 Tanvir Tanim PW0B9XS1 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XS1 ', 'Thakral Information limited', '', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(745, 'CESL00846', 'BDBD', '1', 'Laptop', 'LB904 Abu Kawser PW0B9Y0Y Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'na', 'Thakral Information limited', '', 240, 'MD. Abu Kawser', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(746, 'CESL00847', 'BDBD', '1', 'Laptop', 'LB1107 Tasnuva Jahin PW0B9XWV Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XWV', 'Thakral Information limited', '', 335, 'Tasnuva Jahin', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(747, 'CESL00848', 'BDBD', '1', 'Laptop', 'LB889 Fahmida PW0B9XXP Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XXP ', 'Thakral Information limited', 'Purchased for LB889 Fahmida', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(748, 'CESL00849', 'BDBD', '1', 'Laptop', 'LB827 Mahabubul Islam PW0B9Y0D Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9Y0D', 'Thakral Information limited', '', 223, 'Md. Mahabubul Islam', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(749, 'CESL00850', 'BDBD', '1', 'Laptop', 'LB1090 Moresalina PW0B9XV7 Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XV7 ', 'Thakral Information limited', 'LB1090 Moresalina ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(750, 'CESL00851', 'BDBD', '1', 'Laptop', 'LB636 Ibrahim PW0B9XRM Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XRM ', 'Thakral Information limited', 'LB636 Ibrahim ', 363, 'Md. Golam Rahman Chowdhury', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(751, 'CESL00852', 'BDBD', '1', 'Laptop', 'LB1070 Anamul PW0B9XVK Lenovo ThinkPad L14 Thakral', '', '', '', '0', 'PW0B9XVK ', 'Thakral Information limited', 'LB1070 Anamul ', 0, '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0),
(752, 'CESL00853', 'BDBD', '3', 'Desktop', 'LB1164 Shihab PW0B9XQC Lenovo ThinkPad L14 Thakral', '2024-12-26', '2024-12-26', '2024-12-26', '0', 'PW0B9XQC', 'Thakral Information limited', 'LB1164 Shihab', 213, 'A.B. Shihab Ahmed', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(2015, 'CESL00878', 'NSBD', '1', 'None', 'Lenovo thinkpad L14', '2024-12-01', '2025-01-01', '2029-01-01', '0', 'na', 'None', '', 98, 'Md. Anamul Hoq', 'HR and Administration', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(2016, 'CESL00877', 'NSBD', '1', 'None', 'Lenovo Thinkpad L14', '2025-01-01', '2025-01-01', '2025-01-01', '0', 'na', 'None', '', 293, 'K.M Fahim', 'Merchandising', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(2017, 'CESL00859', 'NSBD', '1', 'None', 'Lenovo Thinkpad l14', '2025-01-01', '2025-01-01', '2025-01-01', '0', 'na', 'None', '', 196, 'Md. Faruk Hossain', 'NS Brand', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(2018, 'CESL00863', 'NSBD', '1', 'None', 'Lenovo', '2025-01-01', '2025-01-01', '2025-01-01', '0', 'na', 'None', '', 361, 'Md. Mominur Rahman', 'Technical', '2025-01-22', '', '', '', '', '', '', '', '', '', 0),
(2019, 'CESL00854', 'NSBD', '1', 'Projector', 'Projector purchase Vivitek DW350BD\r\n', '2024-11-01', '2027-11-01', '2027-11-01', '0', 'na', 'Global brand limited', ' 89,395 \r\n', 689, 'NSL system', 'IT', '2025-01-24', 'None', '', '', '', '', '', '', '', '', 0),
(2020, 'CESL00855', 'NSBD', '1', ' Infrastructure', '6th Floor East Wifi AP\r\n\r\n', '2024-11-01', '2027-11-02', '2027-11-02', '0', 'na', 'Root Systems Limited', '6th Floor East Wifi AP\r\n', 689, 'NSL system', 'IT', '2025-01-24', 'NSL system', 'None', '', '', '', '', '', '', '', 0),
(2021, 'CESL00856', 'NSBD', '1', 'None', '6th Floor West Wifi AP\r\n', '2024-11-01', '2027-11-01', '2027-11-02', '0', 'na', 'Root Systems Limited', '6th Floor West Wifi AP\r\n', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2022, 'CESL00857', 'NSBD', '1', 'Access Control', 'Allied 4th floor East Biometric Access control installation\r\n', '2024-11-01', '2027-11-01', '2027-11-01', '0', 'na', 'Allied technology', ' 48,375 \r\n', 689, 'NSL system', 'IT', '2025-01-24', 'None', '', '', '', '', '', '', '', '', 0),
(2023, 'CESL00858', 'NSBD', '1', 'Laptop', 'LB1191 Tariqul Hasan PW0B9XXN Lenovo ThinkPad L14 Thakral\r\n', '2024-11-01', '2027-11-01', '2027-11-01', '0', 'PW0B9XXN ', 'Thakral Information limited', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2024, 'CESL00876', 'NSBD', '1', 'Laptop', 'LB703 Sohrab PWOB9XRB Lenovo ThinkPad L14 Thakral\r\n', '2024-12-01', '2025-01-01', '2025-01-01', '0', 'PWOB9XRB ', 'Thakral Information limited', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2025, 'CESL00879', 'NSBD', '1', 'Smartphone', 'LB1131 Puja Samsung F23\r\n', '2024-12-01', '2025-01-01', '2025-01-01', '0', 'na', 'A 2 Z computer and security', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2026, 'CESL00880', 'NSBD', '1', 'Smartphone', 'XB092 Angela Samsung F23\r\n', '2024-01-01', '2025-01-01', '2025-01-01', '0', 'na', 'A 2 Z computer and security', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2027, 'CESL00881', 'NSBD', '1', 'Smartphone', 'LB757 Firoj Samsung F23\r\n', '2024-12-01', '2025-01-01', '2025-01-01', '0', 'na', 'A 2 Z computer and security', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2028, 'CESL00882', 'NSBD', '1', 'Smartphone', 'TBC PA to Shahul Samsung F23\r\n', '2024-12-01', '2025-01-01', '2025-01-01', '0', 'na', 'A 2 Z computer and security', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2029, 'CESL00883', 'NSBD', '1', ' Infrastructure', 'Work Space - Postroom Digitalization Softwear\r\n', '2024-12-01', '2025-01-01', '2025-01-01', '0', 'na', 'Unidentified', '', 0, 'None', '', NULL, '', '', '', '', '', '', '', '', '', 0),
(2030, 'CESL00844', 'NSBD', '1', 'Laptop', 'LB1096 Monir Bhuiyan PW0B9XW6 Lenovo ThinkPad L14 Thakral\r\n', '2024-09-01', '2024-09-03', '2024-09-03', '0', 'PW0B9XW6 ', 'Thakral Information limited', '', 183, 'Md. Monir Hossain Bhuiyan', 'Merchandising', '2025-01-28', 'None', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(10, 'DELL'),
(11, 'LENOVO'),
(12, 'HP'),
(13, 'LOGITECH'),
(14, 'XEROX'),
(15, 'CANON');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(4) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(20, 'Desktop'),
(21, 'Laptop'),
(22, 'Headphone'),
(23, 'Smartphone'),
(24, 'Ipad'),
(30, 'Printer'),
(31, 'Switch'),
(32, 'Firewall'),
(34, 'CCTV'),
(35, 'Access Control'),
(36, ' Infrastructure'),
(37, 'Polycom VC'),
(38, 'Server'),
(39, 'Pattern Machine'),
(40, 'Digieye Machine'),
(41, 'Digital camera'),
(42, 'Hard drive portable '),
(43, 'External Display '),
(44, 'Projector'),
(45, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `emp_code` varchar(10) NOT NULL,
  `cus_name` varchar(255) NOT NULL,
  `cus_address` varchar(255) NOT NULL,
  `cus_email` varchar(255) NOT NULL,
  `cus_phone` varchar(255) NOT NULL,
  `cus_ref_no` varchar(255) NOT NULL,
  `cus_ref` int(5) NOT NULL,
  `cus_date` date NOT NULL,
  `asset` varchar(11) NOT NULL,
  `status` int(1) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `emp_code`, `cus_name`, `cus_address`, `cus_email`, `cus_phone`, `cus_ref_no`, `cus_ref`, `cus_date`, `asset`, `status`, `image`) VALUES
(2, 'LB1148', 'Md. Manzurul Hasan', 'Merchandising', 'manzurul_hasan@bd.nextsourcing.com', '1677717622', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(3, 'LB1177', 'Mahtab Uddin Ahmed Likhon', 'Merchandising', 'likhon_ahmed@bd.nextsourcing.com', '1670338946', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(4, 'LB1153', 'Md. Ridwan Monjur Paban', 'Merchandising', 'ridwan_paban@bd.nextsourcing.com', '1824898121', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(5, 'LB715', 'Nishat Ulfat', 'Merchandising', 'nisat_Ulfat@bd.nextsourcing.com', '1982146243', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(6, 'LB1162', 'Mir Mahib', 'Merchandising', 'mir_mahib@bd.nextsourcing.com', '1773877721', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(7, 'LB1168', 'Md. Hafijur Rahman', 'Merchandising', 'hafijur_rahman@bd.nextsourcing.com', '1719172063', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(8, 'LB1186', 'M.A. Imran', 'NS Brand', 'm_imran@bd.nextsourcing.com', '1672497091', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(9, 'LB11', 'Mohammad Delowar Hossan', 'NS Brand', 'delowar_hossan@bd.nextsourcing.com', '1709998637', 'Garment Technologist', 0, '0000-00-00', '0', 0, ''),
(10, 'LB1156', 'Abdullah Al Nayem', 'NS Brand', 'abdullah@bd.nextsourcing.com', '1738564159', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(11, 'LB1184', 'Nazmus Sadat', 'NS Brand', 'nazmus_sadat@bd.nextsourcing.com', '1722916969', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(12, 'LB1202', 'Md. Imran Hossain', 'Merchandising', 'md_imran@bd.nextsourcing.com', '1723308088', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(13, 'LB1176', 'Sayeda Badhon Chowdhury', 'Merchandising', 'sayeda_Badhon@bd.nextsourcing.com', '1622176215', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(14, 'LB810', 'Shahnaz Akther Shimu', 'Merchandising', 'shahnaz_shimu@bd.nextsourcing.com', '1672027014', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(15, 'LB1204', 'Md. Asir Ahabab Uul Haque', 'Merchandising', 'asir_ahabab@bd.nextsourcing.com', '1716440500', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(16, 'LB1145', 'Halima Akter', 'Merchandising', 'halima_akter@bd.nextsourcing.com', '1924161350', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(17, 'XB098', 'Emma Watson', 'Product Development', 'emma_watson@bd.nextsourcing.com', '1958398226', 'Graduate Placement', 0, '0000-00-00', '0', 1, ''),
(18, 'LB1159', 'Sabrina Jahan Ria', 'Product Development', 'sabrina_ria@bd.nextsourcing.com', '1618934419', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(19, 'LB1171', 'Hasnun Naznin', 'Capacity  Planning and Sourcing', 'hasnun_Naznin@bd.nextsourcing.com', '1768411975', 'Capacity Planning and Sourcing Assistant Merchandiser', 0, '0000-00-00', '0', 1, ''),
(20, 'LB195', 'Kamruzzaman Nasim', 'Technical', 'kamruzzaman_nasim@bd.nextsourcing.com', '1711192557', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(21, 'LB278', 'Shah Alam', 'Technical', 'shah_alam@bd.nextsourcing.com', '1712797302', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(22, 'LB1084', 'Ruhul Kibria', 'Technical', 'ruhul_kibria@bd.nextsourcing.com', '1912387858', 'Senior Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(23, 'LB941', 'Imrul Quaesh', 'Technical', 'imrul_quaesh@bd.nextsourcing.com', '1922137773', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(24, 'LB684', 'Md . Ibrahim Hossain', 'Technical', 'ibrahim_hossain@bd.nextsourcing.com', '1674981187', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(25, 'LB1126', 'Abdullah Al Mamun', 'Technical', 'abdullah_mamun@bd.nextsourcing.com', '1780059604', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(26, 'LB805', 'Md. Jasim Uddin', 'Technical', 'jasim@bd.nextsourcing.com', '1868363901', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(27, 'LB1059', 'Abir Mohammad', 'Technical', 'abir_mohammad@bd.nextsourcing.com', '1730547689', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(28, 'LB946', 'Mahadi Haque', 'Technical', 'mahadi_haque@bd.nextsourcing.com', '1537205901', 'Colorist', 0, '0000-00-00', '0', 1, ''),
(29, 'LB757', 'Md. Abu Hayath Firoj', 'Technical', 'abu_firoj@bd.nextsourcing.com', '1708458367', 'Wash Technologist', 0, '0000-00-00', '0', 1, ''),
(30, 'LB232', 'Mohammad Tanzir Khan Faruk', 'Technical', 'tanzir_faruk@bd.nextsourcing.com', '1707754741', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(31, 'LB498', 'Pramangshu Sutradhar', 'Technical', 'premu_sutradhar@bd.nextsourcing.com', '1723521204', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(32, 'LB767', 'Shariful Islam', 'Technical', 'islam_Shariful@bd.nextsourcing.com', '1967468231', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(33, 'LB353', 'Barsha Saha', 'Technical', 'barsha_saha@bd.nextsourcing.com', '1731184870', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(34, 'LB1019', 'Md.Zakir Hossain', 'Technical', 'zakir_hossain@bd.nextsourcing.com', '1916983461', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(35, 'LB911', 'Md.Riajul Islam', 'Technical', 'md_riajul@bd.nextsourcing.com', '1712855238', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(36, 'LB1185', 'Pallab Das', 'Technical', 'pallab_das@bd.nextsourcing.com', '1909508622', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(37, 'LB338', 'Khandker Mahfuzul Islam Sumon', 'Technical', 'mahfuz_islam@bd.nextsourcing.com', '1733519678', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(38, 'LB397', 'Swapna Sultana', 'Technical', 'swapna_sultana@bd.nextsourcing.com', '1837871126', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(39, 'LB515', 'Ahsan Habib', 'Technical', 'ahsan_habib@bd.nextsourcing.com', '1610108754', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(40, 'LB976', 'Md.Mesbah Uddin Forhad', 'Technical', 'mesbah_uddin@bd.nextsourcing.com', '1670319169', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(41, 'LB608', 'Nibel Chowdhury', 'Technical', 'nibel_chowdhury@bd.nextsourcing.com', '1722141512', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(42, 'LB723', 'Md. Saiful Islam', 'Technical', 'saiful@bd.nextsourcing.com', '1978764668', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(43, 'LB747', 'Md. Masud Rana', 'Technical', 'masud_rana@bd.nextsourcing.com', '1976223311', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(44, 'LB1123', 'Alamin Islam', 'Technical', 'alamin_islam@bd.nextsourcing.com', '1728970541', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(45, 'LB984', 'Muhammad Ariful Islam', 'Technical', 'Muhammad_ariful@bd.nextsourcing.com', '1708106060', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(46, 'LB425', 'Md. Maksudur Rahaman', 'Technical', 'maksudur_rahaman@bd.nextsourcing.com', '1819109745', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(47, 'LB727', 'Jahan Jusi', 'Technical', 'Jahan_Jusi@bd.nextsourcing.com', '1701472579', 'Trainee Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(48, 'LB1158', 'Raihana Tabassum Tondra', 'Technical', 'raihana_tabassum@bd.nextsourcing.com', '1715347974', 'Trainee Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(49, 'LB475', 'K M Wahidur Rahman', 'QA', 'wahidur_rahman@bd.nextsourcing.com', '1681555722', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(50, 'LB091', 'Md. Abdul Wahab Babu', 'QA', 'abdul_wahab@bd.nextsourcing.com', '1818003726', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(51, 'LB244', 'Monirul Islam Shohag', 'QA', 'monirul_islam@bd.nextsourcing.com', '1714977104', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(52, 'LB451', 'E. M. Wahed Morshedul Haque', 'QA', 'morshedul_haque@bd.nextsourcing.com', '1309330108', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(53, 'LB402', 'Md. Alomgir Hossain', 'QA', 'alomgir_hossain@bd.nextsourcing.com', '1711662626', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(54, 'LB176', 'Hasan Ahammed', 'QA', 'hasan_ahammed@bd.nextsourcing.com', '1829704190', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(55, 'LB366', 'Md. Ebrahem', 'QA', 'md_ebrahem@bd.nextsourcing.com', '1712750453', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(56, 'LB268', 'Md. Babul Akther', 'QA', 'babul_akhter@bd.nextsourcing.com', '1711375318', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(57, 'LB327', 'Md. Amir Hossain', 'QA', 'amir_hossain@bd.nextsourcing.com', '1779991842', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(58, 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'akm_fazlul@bd.nextsourcing.com', '1822890533', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(59, 'LB691', 'Md. Ariful Islam', 'QA', 'ariful_islam@bd.nextsourcing.com', '1970111337', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(60, 'LB947', 'Md. Golam Rahman Zia', 'QA', 'golam_zia@bd.nextsourcing.com', '1977550800', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(61, 'LB942', 'Mohammad Yousuf', 'QA', 'mohammad_yousuf@bd.nextsourcing.com', '1301179200', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(62, 'LB1183', 'Md. Hasan Murad Chowdhury', 'QA', 'murad_chowdhuray@bd.nextsourcing.com', '1825135365', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(63, 'LB479', 'Mohammad Mobarak Hossain', 'QA', 'mobarak_hossain@bd.nextsourcing.com', '1673885520', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(64, 'LB1033', 'Md. Saiful Islam (2)', 'QA', 'islam_saiful@bd.nextsourcing.com', '1844175729', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(65, 'LB369', 'Md. Manik Molla', 'Sample Room', 'manik_molla@bd.nextsourcing.com', '1991245975', '2D Pattern Master', 0, '0000-00-00', '0', 1, ''),
(66, 'LB44', 'Jasim Uddin', 'Sample Room', 'jasim_uddin@bd.nextsourcing.com ', '1631044211', '3D Pattern Master', 0, '0000-00-00', '0', 1, ''),
(67, 'LB042', 'Suchitra Mistri', 'Sample Room', 'suchitra_mistri@bd.nextsourcing.com', '1944305563', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(68, 'LB197', 'Tajul Islam', 'Sample Room', 'tajul_islam@bd.nextsourcing.com', '1825971110', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(69, 'LB196', 'Abul Kalam Azad', 'Sample Room', 'abul_azad@bd.nextsourcing.com', '1944789605', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(70, 'LB1138', 'Sadikur Rahman', 'Apprentice', 'sadikur_rahman@bd.nextsourcing.com', '1872545124', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(71, 'LB1165', 'Zahanara Akter Mim', 'Apprentice', 'zahan_mim@bd.nextsourcing.com', '1980397948', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(72, 'LB1180', 'Mumit Hossain Diganta', 'Apprentice', 'mumit_diganta@bd.nextsourcing.com', '1626760169', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(73, 'LB1187', 'Nafisa Anjum Oishi', 'Apprentice', 'oishi_anjum@bd.nextsourcing.com', '1914528093', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(74, 'LB1188', 'Nadira Islam Nira', 'Apprentice', 'nira_islam@bd.nextsourcing.com', '1747063322', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(75, 'LB1192', 'Maliha Binte Monsur', 'Apprentice', 'maliha_monsur@bd.nextsourcing.com', '1735377126', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(76, 'LB1193', 'Farazi Ahmed Sami', 'Apprentice', 'sami_ahmed@bd.nextsourcing.com', '1793420721', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(77, 'LB1194', 'Rehnuma Razzak Fera', 'Apprentice', 'fera_razzak@bd.nextsourcing.com', '1723111679', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(78, 'LB1195', 'Md. Karibul Islam', 'Apprentice', 'karibul_islam@bd.nextsourcing.com', '1781482175', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(79, 'LB1196', 'Zahin Solvi Khan', 'Apprentice', 'zahin_khan@bd.nextsourcing.com', '1953499884', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(80, 'LB1197', 'Mouri Binte Hossain', 'Apprentice', 'mouri_hossain@bd.nextsourcing.com', '1836247480', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(81, 'LB1198', 'Sujana Islam Shanta', 'Apprentice', 'sujana_islam@bd.nextsourcing.com', '1778147842', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(82, 'LB1199', 'Shafin Mustafa Chowdhury', 'Apprentice', 'shafin_mustafa@bd.nextsourcing.com', '1680242506', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(83, 'LB1190', 'Mosharrat Haque Mysha', 'Apprentice', 'mysha_haque@bd.nextsourcing.com', '1720106806', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(84, 'LB1201', 'Shabiha Khan Nisha', 'Apprentice', 'nisha_khan@bd.nextsourcing.com', '1723100106', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(85, 'LB1205', 'Syeda Maliha Fairuz', 'Apprentice', 'syeda_fairuz@bd.nextsourcing.com', '1615557887', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(86, 'LB1206', 'Sajidun Nahar Sajuti', 'Apprentice', 'sajidun_sajuti@bd.nextsourcing.com', '1633703177', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(87, 'XB015', 'Shahul Sally', 'Management', 'shahul_sally@bd.nextsourcing.com', '1713185270', 'Director', 0, '0000-00-00', '0', 1, ''),
(89, 'XB027', 'Dinuka Rajapakse', 'Management', 'dinuka_rajapakse@bd.nextsourcing.com', '1926693504', 'General Manager', 0, '0000-00-00', '0', 1, ''),
(90, 'LB1132', 'Mahfuja Ahmed', 'Management', 'mahfuja_ahmed@bd.nextsourcing.com', '1927154774', 'Administrative Assistant', 0, '0000-00-00', '0', 1, ''),
(91, 'LB223', 'Utpal Komar Sarker', 'Finance and Accounts', 'utpal_komar@bd.nextsourcing.com', '1926693508', 'Finance Manager', 0, '0000-00-00', '0', 1, ''),
(92, 'LB719', 'Gazi Tanzil Ahmed', 'Finance and Accounts', 'tanzil_ahmed@bd.nextsourcing.com', '01926693513', 'Accounts Executive', 0, '0000-00-00', '0', 1, ''),
(93, 'LB773', 'Mohammad Salah Uddin Kamran', 'Finance and Accounts', 'Kamran_uddin@bd.nextsourcing.com', '1736709045', 'Accounts Executive', 0, '0000-00-00', '0', 1, ''),
(94, 'LB1078', 'Kaniz Fatema', 'Finance and Accounts', 'kaniz_fatema@bd.nextsourcing.com', '1672416622', 'Accounts Executive', 0, '0000-00-00', '0', 1, ''),
(95, 'LB405', 'Md. Mahdi Hasan', 'IT', 'mahdi_hasan@bd.nextsourcing.com', '1932566613', 'IT Executive', 0, '0000-00-00', '0', 1, ''),
(96, 'LB968', 'MD Robiul Islam', 'IT', 'robiul_islam@bd.nextsourcing.com', '1744545687', 'IT Executive', 0, '0000-00-00', '0', 1, ''),
(97, 'LB1083', 'Sultana Shakila Mannan', 'HR and Administration', 'shakila_mannan@bd.nextsourcing.com', '1713257372', 'Head of HR', 0, '0000-00-00', '0', 1, ''),
(98, 'LB1070', 'Md. Anamul Hoq', 'HR and Administration', 'anamul_hoq@bd.nextsourcing.com', '1674561707', 'Assistant Manager_HR Operations', 0, '0000-00-00', '0', 1, ''),
(99, 'LB991', 'Sadiya Anowar', 'HR and Administration', 'sadiya_anowar@bd.nextsourcing.com', '1958398234', 'Talent Acquisition Executive', 0, '0000-00-00', '0', 1, ''),
(100, 'LB927', 'Arafat Khan', 'HR and Administration', 'arafat_khan@bd.nextsourcing.com', '1675914447', 'Learning and Development Executive', 0, '0000-00-00', '0', 1, ''),
(101, 'LB334', 'Dolna Nafak', 'HR and Administration', 'dolna_nafak@bd.nextsourcing.com', '1675914447', 'Travel Coordinator', 0, '0000-00-00', '0', 1, ''),
(102, 'LB600', 'Md. Abdul Majid Mollah', 'HR and Administration', 'majid_mollah@bd.nextsourcing.com', '1711421262', 'Administrator Executive', 0, '0000-00-00', '0', 1, ''),
(103, 'LB1131', 'Puja Bandya', 'HR and Administration', 'puja_bandya@bd.nextsourcing.com', '1926693545', 'Administrative Assistant', 0, '0000-00-00', '0', 1, ''),
(104, 'LB1024', 'Naziha Noor Jahan', 'HR and Administration', 'naziha_noor@bd.nextsourcing.com', '1711091337', 'Receptionist', 0, '0000-00-00', '0', 1, ''),
(105, 'LB039', 'Md. Shahinur Rahman', 'HR and Administration', 'postroom@bd.nextsourcing.com', '1724963393', 'Office Assistant (Post Room)', 0, '0000-00-00', '0', 1, ''),
(106, 'LB272', 'Angesh Chandra Ray', 'HR and Administration', 'postroom@bd.nextsourcing.com', '1761712565', 'Office Assistant (Post Room)', 0, '0000-00-00', '0', 1, ''),
(107, 'LB159', 'Md. Shahid Hossain', 'HR and Administration', 'shahid_hossain@bd.nextsourcing.com', '1829108034', 'Office Assistant', 0, '0000-00-00', '0', 1, ''),
(108, 'LB1163', 'Md. Rifaj Hossain Tanvir', 'HR and Administration', 'rifaj_tanvir@bd.nextsourcing.com', '1817068280', 'Office Assistant', 0, '0000-00-00', '0', 1, ''),
(109, 'LB929', 'Mrs. Priyanka Chisim', 'HR and Administration', 'temp@bd.nextsourcing.com', '1870529162', 'Tea Girl', 0, '0000-00-00', '0', 1, ''),
(110, 'LB1134', 'Afroja Akter Kona', 'HR and Administration', 'afroja_kona@bd.nextsourcing.com', '1301884374', 'Tea Girl', 0, '0000-00-00', '0', 1, ''),
(111, 'LB147', 'Md. Yousuf', 'HR and Administration', 'md_yousuf@bd.nextsourcing.com', '1939192591', 'Driver', 0, '0000-00-00', '0', 1, ''),
(112, 'LB380', 'Monotoch', 'HR and Administration', 'monotoch_conotoch@bd.nextsourcing.com', '1721653841', 'Driver', 0, '0000-00-00', '0', 1, ''),
(113, 'LB186', 'Jahid-Ul-Islam', 'HR and Administration', 'zahid_Islam@bd.nextsourcing.com', '1749287586', 'Driver', 0, '0000-00-00', '0', 1, ''),
(114, 'LB347', 'Mostofa Ahmed', 'HR and Administration', 'mostofa_ahmed@bd.nextsourcing.com', '1714243272', 'Driver', 0, '0000-00-00', '0', 1, ''),
(115, 'LB866', 'Md. Masud Rana', 'HR and Administration', 'temp@bd.nextsourcing.com', '1910039999', 'Driver', 0, '0000-00-00', '0', 1, ''),
(116, 'LB433', 'Md. Sujon Sheikh', 'HR and Administration', 'sujon_sheikh@bd.nextsourcing.com', '1959596557', 'Driver', 0, '0000-00-00', '0', 1, ''),
(117, 'LB648', 'Lablo Das', 'HR and Administration', 'Lablo_das@bd.nextsourcing.com', '1842310052', 'Driver', 0, '0000-00-00', '0', 1, ''),
(118, 'LB418', 'Md. Salim Khan', 'HR and Administration', 'salim_khan@bd.nextsourcing.com', '1912527351', 'Driver', 0, '0000-00-00', '0', 1, ''),
(119, 'LB621', 'Md.Ripon Hossain', 'HR and Administration', 'ripon_hossain@bd.nextsourcing.com', '1600009994', 'Driver', 0, '0000-00-00', '0', 1, ''),
(120, 'LB570', 'Md. Shahidul Islam Murad', 'HR and Administration', 'shahidul_islam@bd.nextsourcing.com', '1917619528', 'Driver', 0, '0000-00-00', '0', 1, ''),
(121, 'LB1043', 'Rafiqul Islam', 'HR and Administration', 'rafiqul_islam@bd.nextsourcing.com', '1775961919', 'Driver', 0, '0000-00-00', '0', 1, ''),
(122, 'LB675', 'Abdul Hai Babu', 'HR and Administration', 'abdul_hai@bd.nextsourcing.com', '1717135330', 'Driver', 0, '0000-00-00', '0', 1, ''),
(123, 'LB717', 'Din Mohammad', 'HR and Administration', 'mohammad_din@bd.nextsourcing.com', '1737340152', 'Driver', 0, '0000-00-00', '0', 1, ''),
(124, 'LB710', 'Murad Sharif', 'HR and Administration', 'Murad_sharif@bd.nextsourcing.com', '1793533296', 'Driver', 0, '0000-00-00', '0', 1, ''),
(125, 'LB847', 'Md. Momin Mia (Sumon)', 'HR and Administration', 'temp@bd.nextsourcing.com', '1917731375', 'Driver', 0, '0000-00-00', '0', 1, ''),
(126, 'LB1010', 'Salim Howlader (2)', 'HR and Administration', 'temp@bd.nextsourcing.com', '1712523492', 'Driver', 0, '0000-00-00', '0', 1, ''),
(127, 'LB1135', 'Aminuzzaman', 'HR and Administration', 'aminuzzaman@bd.nextsourcing.com', '1880090743', 'Driver', 0, '0000-00-00', '0', 1, ''),
(128, 'LB1139', 'Abdul Malake Ibna Ahmmed', 'HR and Administration', 'abdul_malek@bd.nextsourcing.com', '1715194878', 'Driver', 0, '0000-00-00', '0', 1, ''),
(129, 'LB053', 'Mafidul Hasan Murad', 'Shipping', 'murad@bd.nextsourcing.com', '1713185265', 'Shipping Manager', 0, '0000-00-00', '0', 1, ''),
(130, 'LB110', 'S. M. Jakaria Biddut', 'Shipping', 'Jakaria_Biddut@bd.nextsourcing.com', '1713249479', 'Senior Shipping Executive', 0, '0000-00-00', '0', 1, ''),
(131, 'LB890', 'Sabikun Nahar Eva', 'Shipping', 'eva@bd.nextsourcing.com', '1611977344', 'Shipping Assistant', 0, '0000-00-00', '0', 1, ''),
(132, 'LB282', 'Md. Salahuddin', 'COP', 'salah_uddin@bd.nextsourcing.com', '1730666858', 'Compliance Manager', 0, '0000-00-00', '0', 1, ''),
(133, 'LB906', 'Md. Fokhrul Hasan Prince', 'COP', 'fokhrul_hasan@bd.nextsourcing.com', '1958398202', 'Compliance Officer', 0, '0000-00-00', '0', 1, ''),
(134, 'LB1106', 'Sameera Anowar', 'COP', 'sameera_anowar@bd.nextsourcing.com', '1643383740', 'Trainee Compliance Officer', 0, '0000-00-00', '0', 1, ''),
(135, 'XB099', 'Anton Krishnth Manoj Kumar Rajakumar', 'Merchandising', 'manoj_r@bd.nextsourcing.com', '1958398239', 'Senior Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(136, 'LB1008', 'Farzana Akter', 'Merchandising', 'farzana_akter@bd.nextsourcing.com', '1765853562', 'Merchandise Administrator', 0, '0000-00-00', '0', 1, ''),
(137, 'LB332', 'Abdullah Al Nayeem', 'Merchandising', 'abdullah_nayeem@bd.nextsourcing.com', '1926694276', 'Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(138, 'LB627', 'Md. Mahbub Khan', 'Merchandising', 'mahbub_khan@bd.nextsourcing.com', '1926693521', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(139, 'LB730', 'Shaown Das', 'Merchandising', 'shaown_das@bd.nextsourcing.com', '1674730038', 'Development Merchandiser  Controller', 0, '0000-00-00', '0', 1, ''),
(140, 'LB610', 'Eftakhar Hossain', 'Merchandising', 'eftakhar_hossain@bd.nextsourcing.com', '1670074248', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(141, 'LB1097', 'Md. Habibur Rahman', 'Merchandising', 'rahman_habibur@bd.nextsourcing.com', '1713489257', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(142, 'LB514', 'Md. Ibrahim Khaled Nasim', 'Merchandising', 'khaled_nasim@bd.nextsourcing.com', '1917696341', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(143, 'LB696', 'ATM Shadat Hossain Tarek', 'Merchandising', 'tarek_hossain@bd.nextsourcing.com', '1762032137', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(144, 'LB1018', 'Abdullah Al Bitar', 'Merchandising', 'abdullah_bitar@bd.nextsourcing.com', '1521201279', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(145, 'LB11', 'Md. Saiful Azam', ' Merchandising ', 'saiful_azam@bd.nextsourcing.com', '1776301816', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(146, 'LB531', 'Md. Ali Jiko', 'Merchandising', 'jiko_ali@bd.nextsourcing.com', '1770194759', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(147, 'LB699', 'Abdul Wahid Ashraf', 'Merchandising', 'wahid_ashraf@bd.nextsourcing.com', '1926693534', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(148, 'LB849', 'Md Rokiebul Islam', 'Merchandising', 'rokiebul_islam@bd.nextsourcing.com', '1824003000', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(149, 'LB584', 'Mehrab Chowdhury', 'Merchandising', 'mehrab_chowdhury@bd.nextsourcing.com', '1926694293', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(150, 'LB892', 'Binit Kumar Karmaker', 'Merchandising', 'binit_kumar@bd.nextsourcing.com', '1745915577', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(151, 'LB1049', 'Md. Istiaque Uddin Chowdhury', 'Merchandising', 'istiaque_uddin@bd.nextsourcing.com', '1670339407', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(152, 'LB1045', 'Syeda Kashpia Ulfath', 'Merchandising', 'kashpia_ulfath@bd.nextsourcing.com', '1856311827', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(153, 'LB1079', 'Taskin Ahmed', 'Merchandising', 'taskin_ahmed@bd.nextsourcing.com', '1675620833', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(154, 'LB1166', 'Mehadi Hasan Anik', 'Merchandising', 'anik_hasan@bd.nextsourcing.com', '1521207365', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(155, 'LB882', 'M.D. Shahjahan', 'Merchandising', 'shahjahan@bd.nextsourcing.com', '1823953989', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(156, 'LB971', 'Abdullah Al Maheraj', 'Merchandising', 'abdullah_maheraj@bd.nextsourcing.com', '1835903929', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(157, 'LB1054', 'Nayem Hossain', 'Merchandising', 'hossain@bd.nextsourcing.com', '1855883339', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(158, 'LB1144', 'Md. Imran Sharif', 'Merchandising', 'imran_sharif@bd.nextsourcing.com', '1674121110', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(159, 'LB1151', 'Md. Ashikuzzaman Khan', 'Merchandising', 'ashikuzzaman_khan@bd.nextsourcing.com', '1833315834', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(160, 'LB899', 'Md. Sultan Mahmud', 'Merchandising', 'sultan_mahmud@bd.nextsourcing.com', '1730674169', 'Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(161, 'LB952', 'Eakramul Hasan Emon', 'Merchandising', 'eakramul_hasan@bd.nextsourcing.com', '1915522121', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(162, 'LB1095', 'Md. Shameemur Rahman', 'Merchandising', 'shameemur_rahman@bd.nextsourcing.com', '1671190606', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(163, 'LB960', 'Syed Abeer Jamil', 'Merchandising', 'syed_abeer@bd.nextsourcing.com', '1671168988', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(164, 'LB872', 'Md. Saifur Rahman', 'Merchandising', 'saifur_rahman@bd.nextsourcing.com', '1997267989', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(165, 'LB1066', 'Jubaer Ahmed', 'Merchandising', 'jubaer_ahmed@bd.nextsourcing.com', '1761908976', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(166, 'LB838', 'Enam Ahmed', 'Merchandising', 'enam_ahmed@bd.nextsourcing.com', '1970076937', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(167, 'LB1116', 'Md. Abu Saide', 'Merchandising', 'abu_saide@bd.nextsourcing.com', '1710063449', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(168, 'LB419', 'Mazadul Islam (Hridoy)', 'Merchandising', 'hridoy_islam@bd.nextsourcing.com', '1720507733', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(169, 'LB705', 'Anup Chowdhury', 'Merchandising', 'anup_chowdhury@bd.nextsourcing.com', '1958398211', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(170, 'LB835', 'Md. Hasibur Rahman', 'Merchandising', 'hasibur_rahman@bd.nextsourcing.com', '1744992675', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(171, 'LB1109', 'Md. Rejaul Motin', 'Merchandising', 'rejaul_motin@bd.nextsourcing.com', '1723944300', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(172, 'LB1056', 'Rakib Hassan', 'Merchandising', 'rakib_hassan@bd.nextsourcing.com', '1749774858', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(173, 'LB1089', 'Imam Hasan Maruf', 'Merchandising', 'imam_maruf@bd.nextsourcing.com', '1779296209', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(174, 'LB1027', 'Ishtiak Alam', 'Merchandising', 'ishtiak_alam@bd.nextsourcing.com', '1633392035', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(175, 'LB820', 'D.M.Ismat Doha', 'Merchandising', 'ismat_doha@bd.nextsourcing.com', '1724026853', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(176, 'LB829', 'Golam Robbany', 'Merchandising', 'golam_robbany@bd.nextsourcing.com', '1919444986', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(177, 'LB1150', 'Md. Amran Hossain', 'Merchandising', 'amran_hossain@bd.nextsourcing.com', '1721262217', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(178, 'LB1181', 'A.S.M Saad Uddin', 'Merchandising', 'saad_uddin@bd.nextsourcing.com', '1711932471', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(179, 'LB1104', 'Ashfaqur Rahman', 'Merchandising', 'ashfaqur_rahman@bd.nextsourcing.com', '1748244782', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(180, 'LB888', 'Rumana Haque', 'Merchandising', 'rumana_haque@bd.nextsourcing.com', '1687466917', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(181, 'LB349', 'Lingcon Chondro Bhowmick', 'Merchandising', 'lingcon_bhowmick@bd.nextsourcing.com', '1926694290', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(182, 'LB734', 'Mahmudul Hossain', 'Merchandising', 'mahmudul_hossain@bd.nextsourcing.com', '1926694297', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(183, 'LB1096', 'Md. Monir Hossain Bhuiyan', 'Merchandising', 'monir_hossain@bd.nextsourcing.com', '1974114130', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(184, 'LB923', 'Sabuz Kumar Podder', 'Merchandising', 'sabuj_kumar@bd.nextsourcing.com', '1736969183', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(185, 'LB1068', 'Md. Saber Hossain Chowdhury', 'Merchandising', 'saber_hossain@bd.nextsourcing.com', '1797282482', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(186, 'LB965', 'Mahi Nuzzaman', 'Merchandising', 'mahi_nuzzaman@bd.nextsourcing.com', '1521433901', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(187, 'LB1028', 'Mashfi Sikder', 'Merchandising', 'Mashfi_sikder@bd.nextsourcing.com', '1730585464', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(188, 'LB605', 'Md. Roman', 'Merchandising', 'roman@bd.nextsourcing.com', '1646490789', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(189, 'LB1055', 'Nusrat Farjuna', 'Merchandising', 'nusrat_farjuna@bd.nextsourcing.com', '1732220222', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(190, 'LB803', 'M.Moazzam Hossain Razib', 'Merchandising', 'razib_hossain@bd.nextsourcing.com', '1674163417', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(191, 'LB956', 'Anjan Sarkar', 'Merchandising', 'anjan_sarkar@bd.nextsourcing.com', '1672217009', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(192, 'LB1017', 'Rumana Akter Munny', 'Merchandising', 'rumana_munny@bd.nextsourcing.com', '1788603331', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(193, 'LB1178', 'Saifullah', 'Merchandising', 'saifullah@bd.nextsourcing.com', '1688293943', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(194, 'LB996', 'Rawful Alam Chowdhury', 'Merchandising', 'Rawful_Alam@bd.nextsourcing.com', '1676569830', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(195, 'LB1207', 'Md. Abu Baker Siddique', 'Merchandising', 'abu_baker@bd.nextsourcing.com', '1689078124', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(196, 'LB1203', 'Md. Faruk Hossain', 'NS Brand', 'faruk_hossain@bd.nextsourcing.com', '1958398245', 'Senior Manager - NS Brands', 0, '0000-00-00', '0', 1, ''),
(197, 'LB241', 'Md. Anisul Haque', 'NS Brand', 'anisul_haque@bd.nextsourcing.com', '1926694287', 'Assistant Merchandiser Manager', 0, '0000-00-00', '0', 1, ''),
(198, 'LB681', 'Mohammad Mothasin', 'NS Brand', 'mothasin_mohammad@bd.nextsourcing.com', '1795662370', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(199, 'LB1025', 'Md. Motakabbir Rahman', 'NS Brand', 'motakabbir_rahman@bd.nextsourcing.com', '1724196788', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(200, 'LB979', 'Sazzad Saifuddin', 'NS Brand', 'sazzad_saifuddin@bd.nextsourcing.com', '1737203303', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(201, 'LB1161', 'Farhin Islam', 'NS Brand', 'farhin_islam@bd.nextsourcing.com', '1755322486', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(202, 'LB1200', 'Sajib Kumar Das', 'NS Brand', 'sajib_kumar@bd.nextsourcing.com', '1954495919', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(203, 'LB607', 'Mohammad Ruman', 'NS Brand', 'mohammad_ruman@bd.nextsourcing.com', '1978174378', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(204, 'LB1011', 'Mir Fazle Mawla Chaple', 'NS Brand', 'fazle_mawla@bd.nextsourcing.com', '1790577031', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(205, 'LB1067', 'Abu Huraira', 'NS Brand', 'abu_huraira@bd.nextsourcing.com', '1943884226', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(206, 'LB1149', 'M. Waliul Islam', 'NS Brand', 'waliul_islam@bd.nextsourcing.com', '1521218134', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(207, 'LB975', 'Md.Odud Khan Prince', 'NS Brand', 'odudkhan_prince@bd.nextsourcing.com', '1791126895', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(208, 'LB995', 'Bijoya Barua', 'NS Brand', 'Bijoya_Barua@bd.nextsourcing.com', '1791037131', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(209, 'LB1130', 'Jalal Quadir', 'NS Brand', 'jalal_quadir@bd.nextsourcing.com', '1711031325', 'Production and Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(210, 'LB1040', 'Nafisa Masoom', 'NS Brand', 'nafisa_masoom@bd.nextsourcing.com', '1996416084', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(211, 'LB1030', 'Saki Samonti', 'NS Brand', 'Saki_samonti@bd.nextsourcing.com', '01715653493', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(212, 'LB897', 'Rakib Ahmed Jamil', 'NS Brand', 'rakib_ahmed@bd.nextsourcing.com', '1740989581', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(213, 'LB1164', 'A.B. Shihab Ahmed', 'NS Brand', 'shihab_ahmed@bd.nextsourcing.com', '1670045928', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(214, 'LB1113', 'Md. Hasin Ryan', 'NS Brand', 'hasin_ryan@bd.nextsourcing.com', '1939954456', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(215, 'LB40', 'Md. Riaz uddin', 'NS Brand', 'riazuddin_ahmed@bd.nextsourcing.com', '1712511809', 'Development Merchandise Controller', 0, '0000-00-00', '0', 0, ''),
(216, 'LB712', 'Sayeed Mahmud', 'NS Brand', 'Sayeed_mahmud@bd.nextsourcing.com', '1911711107', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(217, 'LB565', 'Nashid Noushin', 'NS Brand', 'noushin_nashid@bd.nextsourcing.com', '1774013091', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(218, 'LB1115', 'Ahmed Al Rubiet', 'NS Brand', 'ahmed_rubiet@bd.nextsourcing.com', '1672449822', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(219, 'LB1128', 'Bappy Hossain', 'NS Brand', 'bappy_hossain@bd.nextsourcing.com', '1921427794', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(220, 'LB1146', 'Tanvir Mahmud Rifat', 'NS Brand', 'tanvir_rifat@bd.nextsourcing.com', '1312706655', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(221, 'LB1118', 'Jahangir Alam', 'NS Brand', 'jahangir_alam@bd.nextsourcing.com', '1958398233', 'Technical Manager', 0, '0000-00-00', '0', 0, ''),
(222, 'LB808', 'Naderul Islam', 'NS Brand', 'Naderul@bd.nextsourcing.com', '1793532199', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(223, 'LB827', 'Md. Mahabubul Islam', 'NS Brand', 'mahabubul_islam@bd.nextsourcing.com', '1858983111', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(224, 'LB1189', 'Saima Nousheen', 'NS Brand', 'saima_nousheen@bd.nextsourcing.com', '1778249414', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(225, 'LB791', 'Md. Riajul Karim Raihan', 'NS Brand', 'karim_riajul@bd.nextsourcing.com', '1797548148', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(226, 'LB1093', 'Bulbul Ahmed Shahin', 'NS Brand', 'shahin_bulbul@bd.nextsourcing.com', '1739409899', 'Fabric Sourcing and Developer', 0, '0000-00-00', '0', 1, ''),
(227, 'LB1073', 'Monjur Alam Chowdhury', 'Merchandising', 'monjur_alam@bd.nextsourcing.com', '1757601575', 'Senior Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(228, 'LB1175', 'Tasmina Akter Joyee', 'Merchandising', 'tasmina_joyee@bd.nextsourcing.com', '1926694355', 'Administrative Assistant', 0, '0000-00-00', '0', 1, ''),
(229, 'LB530', 'Mohammad Amin Uz Zaman', 'Merchandising', 'amin_zaman@bd.nextsourcing.com', '1841171322', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(230, 'LB683', 'Sabira Parvin Shanta', 'Merchandising', 'sabira_shanta@bd.nextsourcing.com', '1533322379', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(231, 'LB746', 'Md Yaqub Ali', 'Merchandising', 'yaqub_ali@bd.nextsourcing.com', '1707077937', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(232, 'LB1117', 'Ibrahim Khalil', 'Merchandising', 'ibrahim_khalil@bd.nextsourcing.com', '1823456897', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(233, 'LB1090', 'Moresalina Islam', 'Merchandising', 'moresalina_islam@bd.nextsourcing.com', '1761086970', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(234, 'LB1042', 'Md. Sazzad Hossain', 'Merchandising', 'sazzad_hossain@bd.nextsourcing.com', '1521260443', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(235, 'LB1039', 'Md. Alif Arafat Shohan', 'Merchandising', 'shohan_arafat@bd.nextsourcing.com', '1685809475', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(236, 'LB1209', 'Hasibul Hasan Shykat', 'Merchandising', 'shykat_hasan@bd.nextsourcing.com', '1745057035', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(237, 'LB850', 'Md. Abdur Raihan Khondaker', 'Merchandising', 'raihan_khondaker@bd.nextsourcing.com', '1700744714', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(238, 'LB880', 'Md. Mosabbirul Islam', 'Merchandising', 'mosabbirul_islam@bd.nextsourcing.com', '1703927391', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(239, 'LB799', 'Md. Imran Uddin', 'Merchandising', 'uddin_imran@bd.nextsourcing.com', '1829370883', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(240, 'LB904', 'MD. Abu Kawser', 'Merchandising', 'abu_kawser@bd.nextsourcing.com', '1626757576', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(241, 'LB374', 'Shamsun Nahar Shikha', 'Merchandising', 'shikha_nahar@bd.nextsourcing.com', '1675128887', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(242, 'LB1058', 'Kamrul Hasan Rana', 'Merchandising', 'kamrul_hasan@bd.nextsourcing.com', '1680232671', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(243, 'LB934', 'Samira Aman Bushra', 'Merchandising', 'samira_aman@bd.nextsourcing.com', '1521526367', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(244, 'LB875', 'Samia Noshin', 'Merchandising', 'samia_noshin@bd.nextsourcing.com', '1757938307', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(245, 'LB1111', 'Anamika Akter', 'Merchandising', 'anamika_akter@bd.nextsourcing.com', '1609809807', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(246, 'LB801', 'Md. Eftakhar Alam', 'Merchandising', 'Eftakhar_Alam@bd.nextsourcing.com', '1675441962', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(247, 'LB999', 'Uddipan Barua', 'Merchandising', 'uddipon_barua@bd.nextsourcing.com', '1675022499', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(248, 'LB800', 'Musfiqul Islam Chowdhury', 'Merchandising', 'musfiqul@bd.nextsourcing.com', '1729224500', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(249, 'LB1092', 'Tabiba Tabassum', 'Merchandising', 'tabiba_tabassum@bd.nextsourcing.com', '1622674846', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(250, 'LB878', 'Mehedi Hasan Shishir', 'Merchandising', 'shishir@bd.nextsourcing.com', '1792644044', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(251, 'LB852', 'Sanjoy Bhowmik', 'Merchandising', 'sanjoy_bhowmik@bd.nextsourcing.com', '1728476165', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(252, 'LB1082', 'Nafiz Ahsan', 'Merchandising', 'nafiz_ahsan@bd.nextsourcing.com', '1771194993', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(253, 'LB854', 'Enamul Haque', 'Merchandising', 'enamul_haque@bd.nextsourcing.com', '1611555530', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(254, 'LB928', 'Md. Osman Goni', 'Merchandising', 'osman_goni@bd.nextsourcing.com', '1681413509', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(255, 'LB1032', 'Jasmin Akter Jotee', 'Merchandising', 'Jasmin_jotee@bd.nextsourcing.com', '01707038945', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(256, 'LB845', 'Nahid Morshed', 'Merchandising', 'nahid_morshed@bd.nextsourcing.com', '1926624761', 'Production and Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(257, 'LB1133', 'Deluar Hosen', 'Merchandising', 'deluar_hosen@bd.nextsourcing.com', '1620705304', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(258, 'LB916', 'Arif UR Rahman', 'Merchandising', 'arifur_rahman@bd.nextsourcing.com', '1833342349', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(259, 'LB1004', 'Sadiya Islam Sunny', 'Merchandising', 'sadiya_islam@bd.nextsourcing.com', '1682264767', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(260, 'LB1051', 'Shagor Sen', 'Merchandising', 'shagor_sen@bd.nextsourcing.com', '1844669888', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(261, 'XB100', 'Shehan Rajitha Goonawardena', 'Merchandising', 'shehan_goonawardena@bd.nextsourcing.com', '1958398240', 'Senior Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(262, 'LB1013', 'Razia Sultana', 'Merchandising', 'razia_sultana@bd.nextsourcing.com', '1678661512', 'Merchandise Administrator', 0, '0000-00-00', '0', 1, ''),
(263, 'LB52', 'M M Muktadir Rahman', 'Merchandising', 'muktadir_rahman@bd.nextsourcing.com', '1926694363', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 0, ''),
(264, 'LB436', 'Md. Saifullah Al Tarique', 'Merchandising', 'saifullah_tarique@bd.nextsourcing.com', '1926694296', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(265, 'LB720', 'Tawfik Mohammed Rafique', 'Merchandising', 'tawfik_rafique@bd.nextsourcing.com', '1727560665', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(266, 'LB611', 'Md. Jahidul Islam Riad', 'Merchandising', 'riad_jahidul@bd.nextsourcing.com', '1925752214', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(267, 'LB862', 'Rashedul Islam', 'Merchandising', 'rashedul_islam@bd.nextsourcing.com', '1867899133', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(268, 'LB977', 'Md.Ehsan Ullah Turin', 'Merchandising', 'ehsanullah_turin@bd.nextsourcing.com', '1676602393', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(269, 'LB1063', 'Gazi Masum Billah', 'Merchandising', 'masum_billah@bd.nextsourcing.com', '1673657204', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(270, 'LB1069', 'Ishrat Ahmed Shishir', 'Merchandising', 'shishir_ahmed@bd.nextsourcing.com', '1731224604', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(271, 'LB1094', 'Jakaria Habib', 'Merchandising', 'habib_jakaria@bd.nextsourcing.com', '1688857007', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(272, 'LB378', 'Md. Rezaul Karim', 'Merchandising', 'rezaul_karim@bd.nextsourcing.com', '1717888151', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(273, 'LB807', 'Md.Kamal Hossain', 'Merchandising', 'kamal_hossain@bd.nextsourcing.com', '1714618364', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(274, 'LB814', 'Aminul Hoque Shagor', 'Merchandising', 'aminul_shagor@bd.nextsourcing.com', '1813843168', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(275, 'LB1080', 'Rashidul Hasan', 'Merchandising', 'rashidul_hasan@bd.nextsourcing.com', '1763319946', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(276, 'LB1005', 'Amit Saha', 'Merchandising', 'amit_saha@bd.nextsourcing.com', '1624191352', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(277, 'LB1088', 'Ferdous Nahiyan', 'Merchandising', 'ferdous_nahiyan@bd.nextsourcing.com', '1528337999', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(278, 'LB193', 'Jahidul Haque', 'Merchandising', 'jahidul_haque@bd.nextsourcing.com', '1926694292', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(279, 'LB539', 'Mohammad Khairul Islam', 'Merchandising', 'islam_khairul@bd.nextsourcing.com', '1719179688', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(280, 'LB732', 'Muhammad Raihanul Kabir', 'Merchandising', 'raihanul_kabir@bd.nextsourcing.com', '1676913335', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(281, 'LB744', 'Md. Tarik Anam', 'Merchandising', 'tarik_anam@bd.nextsourcing.com', '1738276664', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(282, 'LB1050', 'Wasil Al Hasan Leman', 'Merchandising', 'wasil_alhasan@bd.nextsourcing.com', '1799185402', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(283, 'LB821', 'Md. Mustanzid Hasan Murad', 'Merchandising', 'Mustanzid_hasan@bd.nextsourcing.com', '1953375967', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(284, 'LB881', 'Mahmudul Hasan Tarek', 'Merchandising', 'tarek_mahmudul@bd.nextsourcing.com', '1862874706', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(285, 'LB930', 'Md. Shakir Ahmed Sium', 'Merchandising', 'shakir_ahmed@bd.nextsourcing.com', '1792203999', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(286, 'LB1155', 'Md. Shahazahan Islam', 'Merchandising', 'shahazahan_islam@bd.nextsourcing.com', '1717817860', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(287, 'LB932', 'Nazmoon Nahar Asha', 'Merchandising', 'nazmoon_nahar@bd.nextsourcing.com', '1303392337', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(288, 'LB626', 'Md. Saidy Hasan', 'Merchandising', 'saidy_hasan@bd.nextsourcing.com', '1774694817', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(289, 'LB513', 'Taibour Rahman', 'Merchandising', 'taibour_rahman@bd.nextsourcing.com', '1922783868', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(290, 'LB990', 'Azizul Alam Shovon', 'Merchandising', 'Azizul_alam@bd.nextsourcing.com', '1766650423', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(291, 'LB989', 'Salman Rahman Chowdhury', 'Merchandising', 'salman_rahman@bd.nextsourcing.com', '1718449328', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(292, ' LB743', 'Ashita Binta Ataur', 'Merchandising', 'ashita_ataur@bd.nextsourcing.com', '1703756625', 'Assistant Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(293, 'LB1037', 'K.M Fahim', 'Merchandising', 'km_fahim@bd.nextsourcing.com', '1744270208', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(294, 'LB922', 'Md.Ashiqur Rahman', 'Merchandising', 'ashiqur_rahman@bd.nextsourcing.com', '1726117491', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(295, 'LB933', 'Saleh Mohammad Zunayed', 'Merchandising', 'saleh_zunayed@bd.nextsourcing.com', '1970562167', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(296, 'LB11', 'Mehedi Hasan ', 'Merchandising', 'mehedi_nahiyan@bd.nextsourcing.com', '1748353342', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(297, 'LB742', 'Md Khairul Munir Sumon', 'Merchandising', 'sumon_khairul@bd.nextsourcing.com', '1711046931', 'Assistant Merchandise Manager', 0, '0000-00-00', '0', 1, ''),
(298, 'LB501', 'Md. Riajul Islam', 'Merchandising', 'riajul_islam@bd.nextsourcing.com', '1742118591', 'Development Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(299, 'LB748', 'Md. Tanvir Ahsan', 'Merchandising', 'Tanvir_chowdhury@bd.nextsourcing.com', '1717897038', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(300, 'LB955', 'MD. Nashid Mahmud', 'Merchandising', 'nashid_mahmud@bd.nextsourcing.com', '1710505090', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(301, 'LB912', 'Abhishek Kundu', 'Merchandising', 'abhishek_kundo@bd.nextsourcing.com', '1737259315', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(302, 'LB1154', 'Pilton chandra Das', 'Merchandising', 'pilton_das@bd.nextsourcing.com', '1759191274', 'Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(303, 'LB964', 'Md.Raiyan Islam Prottoy', 'Merchandising', 'raiyan_islam@bd.nextsourcing.com', '1759503478', 'Trainee Development Merchandiser', 0, '0000-00-00', '0', 1, ''),
(304, 'LB844', 'Md. Dilshad Hasan Moin', 'Merchandising', 'moin_hasan@bd.nextsourcing.com', '1717465341', 'Production Merchandise Controller', 0, '0000-00-00', '0', 1, ''),
(305, 'LB1065', 'Hossain Al Fuad', 'Merchandising', 'fuad_hossain@bd.nextsourcing.com', '1790168567', 'Production Merchandiser', 0, '0000-00-00', '0', 0, ''),
(306, 'LB1087', 'Irteza Uddin Turzo', 'Merchandising', 'irteza_turzo@bd.nextsourcing.com', '1685852649', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(307, 'LB1102', 'Md. Mostakim', 'Merchandising', 'mostakim@bd.nextsourcing.com', '1737486699', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(308, 'LB1169', 'Maria Akter', 'Merchandising', 'maria_akter@bd.nextsourcing.com', '1688329992', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(309, 'LB925', 'Abul Hossain Shanto', 'Merchandising', 'abul_hossain@bd.nextsourcing.com', '1873323824', 'Assistant Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(310, 'LB1120', 'Muntajena Nanjeba', 'Merchandising', 'muntajena_nanjeba@bd.nextsourcing.com', '1632374053', 'Trainee Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(311, 'XB039', 'Tamara Glackin', 'Product Development', 'tamara_glackin@bd.nextsourcing.com', '1708458364', 'Senior Product Manager', 0, '0000-00-00', '0', 1, ''),
(312, 'LB889', 'Fahmida Hoque Shathi', 'Product Development', 'fahmida_hoque@bd.nextsourcing.com', '1983975503', 'Product Development Administrator', 0, '0000-00-00', '0', 1, ''),
(313, 'LB1057', 'Ali Razan', 'Product Development', 'ali_razan@bd.nextsourcing.com', '1799937673', 'Fabric Sourcing and Development Manager', 0, '0000-00-00', '0', 1, ''),
(314, 'LB1103', 'Hossain Ahmed', 'Product Development', 'hossain_ahmed@bd.nextsourcing.com', '1784747976', 'Fabric Sourcing Administrator', 0, '0000-00-00', '0', 1, ''),
(315, 'LB1046', 'Bulbul Ahmmad Akand', 'Product Development', 'bulbul_ahmmad@bd.nextsourcing.com', '1816781181', 'Fabric Sourcing and Developer', 0, '0000-00-00', '0', 1, ''),
(316, 'LB1191', 'Muhammed Tariqul Hasan', 'Product Development', 'tariqul_hasan@bd.nextsourcing.com', '1673230220', 'Fabric Sourcing and Developer', 0, '0000-00-00', '0', 1, ''),
(317, 'XB084', 'Maheshika Kularathne', 'Product Development', 'maheshika@bd.nextsourcing.com', '1958398206', 'Product Manager', 0, '0000-00-00', '0', 1, ''),
(318, 'XB093', 'Austin Squirrell', 'Product Development', 'austin_squirrell@bd.nextsourcing.com', '1958398228', 'Product Manager', 0, '0000-00-00', '0', 1, '');
INSERT INTO `customer` (`id`, `emp_code`, `cus_name`, `cus_address`, `cus_email`, `cus_phone`, `cus_ref_no`, `cus_ref`, `cus_date`, `asset`, `status`, `image`) VALUES
(319, 'XB095', 'Ruth Butterworth', 'Product Development', 'ruth_butterworth@bd.nextsourcing.com', '01958398235?', 'Product Manager', 0, '0000-00-00', '0', 1, ''),
(320, 'XB097', 'Alestare James Barrie', 'Product Development', 'alestare_barrie@bd.nextsourcing.com', '1958398225', 'Product Manager', 0, '0000-00-00', '0', 1, ''),
(321, 'XB087', 'Gulsah Aytemizel', 'Product Development', 'gulsah_aytemizel@bd.nextsourcing.com', '1958398209', 'Product Manager', 0, '0000-00-00', '0', 1, ''),
(322, 'XB096', 'Jacinta Skye Bird', 'Product Development', 'jacinta_bird@bd.nextsourcing.com', '1958398237', 'Product Manager', 0, '0000-00-00', '0', 1, ''),
(323, 'LB507', 'Khairul Hasan', 'Product Development', 'khairul_hasan@bd.nextsourcing.com', '1740705039', 'Assistant Product Manager', 0, '0000-00-00', '0', 1, ''),
(324, 'XB092', 'Angela Onorato', 'Product Development', 'angela_onorato@bd.nextsourcing.com', '1958398232', 'Graduate', 0, '0000-00-00', '0', 1, ''),
(325, 'LB364', 'Golam Azam', 'Product Development', 'golam_azam@bd.nextsourcing.com', '1921529664', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(326, 'LB670', 'Md. Atikur Jaman', 'Product Development', 'atikur_jaman@bd.nextsourcing.com', '1738256180', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(327, 'LB860', 'Md. Mamun Uddin', 'Product Development', 'mamun_uddin@bd.nextsourcing.com', '1625114981', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(328, 'LB998', 'Taslima Rahman Dishe', 'Product Development', 'dishe_taslima@bd.nextsourcing.com', '1674084240', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(329, 'LB1077', 'Rahnuma Islam', 'Product Development', 'rahnuma_islam@bd.nextsourcing.com', '1973605986', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(330, 'LB1121', 'Suha Tabil', 'Product Development', 'suha_tabil@bd.nextsourcing.com', '1676307051', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(331, 'LB1125', 'HM Mabrukh Bhuiyan', 'Product Development', 'mabrukh_bhuiyan@bd.nextsourcing.com', '1918182554', 'Product Developer', 0, '0000-00-00', '0', 1, ''),
(332, 'LB953', 'Md. Aktar Jamil', 'Product Development', 'aktar_jamil@bd.nextsourcing.com', '1722609618', 'Assistant Product Developer', 0, '0000-00-00', '0', 1, ''),
(333, 'LB323', 'Mohammad Nazrul Islam', 'Capacity  Planning and Sourcing', 'nazrul_islam@bd.nextsourcing.com', '1926693541', 'Assistant Manager- Capacity Planning and Sourcing', 0, '0000-00-00', '0', 1, ''),
(335, 'LB1107', 'Tasnuva Jahin', 'Technical', 'tasnuva_jahin@bd.nextsourcing.com', '1771080295', 'Technical Administrator', 0, '0000-00-00', '0', 1, ''),
(336, 'XB077', 'Harinder Singh Saini', 'Technical', 'harinder_singh@bd.nextsourcing.com', '?01926694324', 'Technical Manager', 0, '0000-00-00', '0', 1, ''),
(337, 'LB389', 'M. Ahmed Siraji', 'Technical', 'ahmed_siraji@bd.nextsourcing.com', '1717760822', 'Senior Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(338, 'LB693', 'Md. Shipon Al-Mamun', 'Technical', 'shipon_mamun@bd.nextsourcing.com', '1684404560', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(339, 'LB1020', 'Arefin Mahfuza', 'Technical', 'arefin_mahfuza@bd.nextsourcing.com', '1927282841', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(340, 'LB1038', 'Jannatul Ferdous', 'Technical', 'jannatul_ferdous@bd.nextsourcing.com', '1631011954', 'Trainee Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(341, 'LB1152', 'Mohammad Adil Hossain Chowdhury', 'Technical', 'adil_hossain@bd.nextsourcing.com', '1958398242', 'Fabric Technical Manager', 0, '0000-00-00', '0', 1, ''),
(342, 'LB230', 'Shiful Islam', 'Technical', 'shiful_islam@bd.nextsourcing.com', '1926693519', 'Assistant Fabric Technical Manager', 0, '0000-00-00', '0', 1, ''),
(343, 'LB905', 'Md. Moniruzzman Khan', 'Technical', 'moniruzzman_khan@bd.nextsourcing.com', '1303844480', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(344, 'LB95', 'Nabo Kumar Sarkar', 'Technical', 'nabo_kumar@bd.nextsourcing.com', '1778858726', 'Fabric Technologist', 0, '0000-00-00', '0', 0, ''),
(345, 'LB846', 'Ashish Saha', 'Technical', 'ashish_saha@bd.nextsourcing.com', '1833450567', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(346, 'LB981', 'Arif Hossen', 'Technical', 'arif_hossen@bd.nextsourcing.com', '1747797853', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(347, 'LB1098', 'Rakibul Ria Kaisar', 'Technical', 'rakibul_kaiser@bd.nextsourcing.com', '1729999739', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(348, 'LB1101', 'Kazi Raihan Siddiq', 'Technical', 'raihan_siddiq@bd.nextsourcing.com', '1684538530', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(349, 'LB1105', 'Md. Monjurul Islam', 'Technical', 'monjurul_islam@bd.nextsourcing.com', '1914571619', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(350, 'LB1141', 'Md. Said Hossain Imran', 'Technical', 'imran_said@bd.nextsourcing.com', '1921588790', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(351, 'LB1071', 'Azizul Hakim Shihab', 'Technical', 'azizul_hakim@bd.nextsourcing.com', '1537509837', 'Fabric Inspector', 0, '0000-00-00', '0', 1, ''),
(352, 'LB1076', 'Md. Abdur Razzak', 'Technical', 'abdur_razzak@bd.nextsourcing.com', '1608079294', 'Fabric Inspector', 0, '0000-00-00', '0', 1, ''),
(353, 'LB504', 'Mohammad Hasanuzzaman', 'Technical', 'hasanuzzaman@bd.nextsourcing.com', '1926693548', 'Assistant Fabric Technical Manager', 0, '0000-00-00', '0', 1, ''),
(354, 'LB896', 'Nazmul Islam', 'Technical', 'nazmul_islam@bd.nextsourcing.com', '1670037056', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(355, 'LB1061', 'Mahbubul Hasan Pollob', 'Technical', 'mahbubul_hasan@bd.nextsourcing.com', '1760521421', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(356, 'LB1110', 'Sujoy Kumar Ghosh', 'Technical', 'sujoy_kumar@bd.nextsourcing.com', '1722046720', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(357, 'LB1182', 'Ridwoan Rahman', 'Technical', 'ridwoan_rahman@bd.nextsourcing.com', '1936381304', 'Assistant Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(358, 'XB030', 'Rizman Noor Hamith', 'Technical', 'rizman@bd.nextsourcing.com', '1926693531', 'Technical Manager', 0, '0000-00-00', '0', 1, ''),
(359, 'LB1129', 'Md. Emdadul Hoq Milon', 'Technical', 'emdadul_milon@bd.nextsourcing.com', '1832612749', 'Fabric and Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(360, 'LB636', 'Ibrahim', 'Technical', 'ebrahim@bd.nextsourcing.com', '1911563763', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(361, 'LB508', 'Md. Mominur Rahman', 'Technical', 'mominur_rahman@bd.nextsourcing.com', '1922309115', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(362, 'LB931', 'Md. Abdul Alim', 'Technical', 'abdul_alim@bd.nextsourcing.com', '1619687582', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(363, 'LB859', 'Md. Golam Rahman Chowdhury', 'Technical', 'golam_rahman@bd.nextsourcing.com', '1681631568', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(364, 'LB915', 'Mostafa Abu Elias', 'Technical', 'abu_elias@bd.nextsourcing.com', '1918293456', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(365, 'XB050', 'Mohamed Rilwan Salahudeen', 'Technical', 'deen@bd.nextsourcing.com', '1926694285', 'Technical Manager', 0, '0000-00-00', '0', 1, ''),
(366, 'LB692', 'Sarju Mafiz Smrity', 'Technical', 'sarju_smrity@bd.nextsourcing.com', '1684463196', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(367, 'LB614', 'Rabiul Islam (Rony)', 'Technical', 'rony_islam@bd.nextsourcing.com', '1992112855', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(368, 'LB698', 'Mohammad Nafi Uddin', 'Technical', 'nafi_uddin@bd.nextsourcing.com', '1670466420', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(369, 'LB156', 'Md. Mamun-Ur-Rashid', 'QA', 'mamunur_rashid@bd.nextsourcing.com', '1842053727', 'QA Manager', 0, '0000-00-00', '0', 1, ''),
(370, 'LB828', 'Nayan Barua', 'QA', 'nayan_barua@bd.nextsourcing.com', '1787612996', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(371, 'LB983', 'Rajib Kumar Mohajan', 'QA', 'rajib_mohajan@bd.nextsourcing.com', '1302611776', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(372, 'LB1072', 'Md. Mamunur Rasid', 'QA', 'rasid_mamunur@bd.nextsourcing.com', '1671000626', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(373, 'LB1022', 'Md. Habibur Rahman Shuvo', 'QA', 'shuvo_rahman@bd.nextsourcing.com', '1628949031', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(374, 'LB1075', 'Md. Zahid Hossain', 'QA', 'zahid_hossain@bd.nextsourcing.com', '1717685398', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(375, 'LB1100', 'Md. Fariduzzaman', 'QA', 'fariduzzaman@bd.nextsourcing.com', '1918934045', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(376, 'LB343', 'Md. Abu Taiyab', 'QA', 'abu_taiyab@bd.nextsourcing.com', '1821537131', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(377, 'LB318', 'Shorab Hasan Choudhury', 'QA', 'shorab_hasan@bd.nextsourcing.com', '1911053272', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(378, 'LB858', 'Fayzul Haque', 'QA', 'fayzul_haque@bd.nextsourcing.com', '1721234892', 'QA Manager', 0, '0000-00-00', '0', 1, ''),
(379, 'LB1091', 'Tauhidul Islam', 'QA', 'tauhidul_islam@bd.nextsourcing.com', '1711962542', 'Assistant QC', 0, '0000-00-00', '0', 1, ''),
(380, 'LB629', 'Md. Monirozzaman', 'QA', 'monirozzaman@bd.nextsourcing.com', '1558048639', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(381, 'LB91', 'MD. Habibur Rahman', 'QA', 'habibur_rahman@bd.nextsourcing.com', '1746994060', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(382, 'LB706', 'Harun Ur Rashid', 'QA', 'harunur@bd.nextsourcing.com', '1818461679', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(384, 'LB612', 'Md. Sumon Ahmed', 'QA', 'ahmed_sumon@bd.nextsourcing.com', '1956197153', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(385, 'LB1006', 'Md.Asraful Alam', 'QA', 'alam_asraful@bd.nextsourcing.com', '1922150267', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(386, 'LB320', 'SK Mohammad Hanif', 'Sample Room', 'hanif_sheakh@bd.nextsourcing.com', '1828174515', 'Senior CAD Technician', 0, '0000-00-00', '0', 1, ''),
(387, 'LB902', 'Md. Golam Azom', 'Sample Room', 'azom_golam@bd.nextsourcing.com', '1726513508', '2D Pattern Master', 0, '0000-00-00', '0', 1, ''),
(388, 'LB048', 'Mizanur Rahman', 'Sample Room', 'rahman_mizanur@bd.nextsourcing.com', '1725975375', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(389, 'LB560', 'Lipi Akter', 'Sample Room', 'lipi_akter@bd.nextsourcing.com', '1815099325', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(390, 'LB582', 'Abdul Malek', 'Sample Room', 'abdul_malek@bd.nextsourcing.com', '1720086367', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(391, 'LB1012', 'Md.Kawsar Hossain', 'Sample Room', 'kawsar_hossain@bd.nextsourcing.com', '1684798929', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(392, 'LB1047', 'Md.Jamrul Islam', 'Sample Room', 'jamrul_islam@bd.nextsourcing.com', '1777279080', 'Machine Operator', 0, '0000-00-00', '0', 1, ''),
(393, 'LB081', 'Md.Sumon Sarker', 'Sample Room', 'sumon_sarker@bd.nextsourcing.com', '1916627751', 'Sample Cutter', 0, '0000-00-00', '0', 1, ''),
(394, 'LB1114', 'Tuspia Islam', 'Apprentice', 'tuspia_islam@bd.nextsourcing.com', '1632285937', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(395, 'LB1124', 'Nure Arfi', 'Apprentice', 'nure_arfi@bd.nextsourcing.com', '1968815373', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(396, 'LB1160', 'Maitree Howlader', 'Apprentice', 'maitree_howlader@bd.nextsourcing.com', '1310414996', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(397, 'LB1173', 'Syeda Atkia Faiza', 'Apprentice', 'syeda_faiza@bd.nextsourcing.com', '1969555530', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(398, 'LB1174', 'Sinthya Chakma', 'Apprentice', 'sinthya_chakma@bd.nextsourcing.com', '1629659032', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(399, 'LB1208', 'Md. Forhan Hossen', 'Apprentice', 'forhan_hossen@bd.nextsourcing.com', '1877461919', 'Apprentice', 0, '0000-00-00', '0', 1, ''),
(400, 'LB1143', 'Mohammed Moinuddin Hassan Chowdhury', 'QA', 'russell_mhc@bd.nextsourcing.com', '1730786476', 'QCC Manager', 0, '0000-00-00', '0', 1, ''),
(401, 'LB10', 'Tauhidul Islam', 'QA', 'tauhidul_islam@bd.nextsourcing.com', '1711962542', 'Assistant QC', 0, '0000-00-00', '0', 1, ''),
(402, 'LB703', 'Mohammad Sohrab Hossain Mazumder', 'Merchandising', 'sohrab_hossain@bd.nextsourcing.com', '1676589630', 'Production Merchandiser', 0, '0000-00-00', '0', 1, ''),
(403, 'LB695', 'Muhammad Showkat Hossen', 'Technical', 'showkat_hossen@bd.nextsourcing.com', '1817269533', 'Fabric Technologist', 0, '0000-00-00', '0', 1, ''),
(404, 'LB685', 'Salim Jabed', 'Technical', 'salim_jabed@bd.nextsourcing.com', '1813707940', 'Garment Technologist', 0, '0000-00-00', '0', 1, ''),
(405, 'LB555', 'Md Atikur Rahman', 'QA', 'atikur_rahman@bd.nextsourcing.com', '1730597233', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(406, 'LB363', 'Arfatul Hoque Chowdhury', 'QA', 'arfatul_hoque@bd.nextsourcing.com', '1631584709', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(408, 'LB580', 'Saikat Barua', 'QA', 'saikat_barua@bd.nextsourcing.com', '1730863690', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(409, 'LB396', 'Mohammed Abul  Bashar', 'QA', 'abul_bashar@bd.nextsourcing.com', '1813873212', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(410, 'LB340', 'Md. Hasan Tareq', 'QA', 'hasan_tareq@bd.nextsourcing.com', '1916440300', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(411, 'LB616', 'Mohammed Ohidul Islam', 'QA', 'ohidul_islam@bd.nextsourcing.com', '1673968098', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(412, 'LB344', 'Md. Abdullah Emran', 'QA', 'abdullah_emran@bd.nextsourcing.com', '1791656406', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(413, 'LB34', 'Md. Abu Taiyab', 'QA', 'abu_taiyab@bd.nextsourcing.com', '1821537131', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(414, 'LB1021', 'Sanjoy Datta', 'QA', 'sanjoy_datta@bd.nextsourcing.com', '1818603788', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(415, 'LB997', 'Kabir Hossain', 'Apprentice', 'Kabir_hossain@bd.nextsourcing.com', '1673441583', 'Assistant Garment Technologist', 0, '0000-00-00', '0', 0, ''),
(416, 'LB91', 'MD. Habibur Rahman', 'QA', 'habibur_rahman@bd.nextsourcing.com', '1746994060', 'QA Inspector', 0, '0000-00-00', '0', 1, ''),
(419, 'LB1170', 'Md Sabbir Sorowar Chowdhury', 'QA', 'sabbir_soroar@bd.nextsourcing.com', '1683888009', 'QCC Administrator', 0, '0000-00-00', '0', 1, ''),
(686, 'LB377', 'K.M. Raihan', 'IT', 'raihan@bd.nextsourcing.com', '1911687267', 'IT Executive', 0, '0000-00-00', '0', 1, ''),
(689, 'LB000', 'NSL system', 'IT', 'raihan@bd.nextsourcing.com', '+88', 'IT Executive', 0, '2025-01-15', '0', 1, ''),
(691, 'LB1211', 'Rebeka Sultana Khushi', 'HR and Administration', 'kushi_sultana@bd.nextsourcing.com', '01971808325', 'Receptionist', 0, '2025-01-24', '0', 1, ''),
(692, 'LB1210', 'Md. Ashiful Haque Badhon', 'Merchandising', 'ashiful_haque@bd.nextsourcing.com', '01795676705', 'Production Merchandiser', 0, '2025-01-24', '0', 1, ''),
(693, 'LB1212', 'Ahmed Al Noman', 'Merchandising', 'ahmed_noman@bd.nextsourcing.com', '01833349522', 'Assistant Development Merchandiser', 0, '2025-01-24', '0', 1, ''),
(694, 'LB1216', 'Murthakey Hasan Jhoky', 'Merchandising', 'jhoky_hasan@bd.nextsourcing.com', '01611808877', 'Production Merchandiser', 0, '2025-01-24', '0', 1, ''),
(695, 'LB1220', 'Md. Tanvirul Islam Naim', 'Merchandising', 'tanvirul_naim@bd.nextsourcing.com', '01871110727', 'Trainee Development Merchandiser', 0, '2025-01-24', '0', 1, ''),
(696, 'LB1213', 'Md. Yeasin Uddin', 'Technical', 'yeasin_uddin@bd.nextsourcing.com', '01923021105', 'Fabric Technologist', 0, '2025-01-24', '0', 1, ''),
(697, 'LB1215', 'Asif Iqbal', 'Apprentice', 'asif_iqbal@bd.nextsourcing.com', '01772234574', 'Apprentice', 0, '2025-01-24', '0', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(254) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `status`) VALUES
(1, 'Management', 0),
(2, 'HR and Administration', 0),
(3, 'IT', 0),
(4, 'Shipping', 0),
(5, 'COP', 0),
(6, 'License', 0),
(7, 'Product Development', 0),
(8, 'Technical', 0),
(9, 'Capacity, Planning & Sourcing', 0),
(10, 'QA', 0),
(11, 'Merchandising', 0),
(12, 'Apprentice', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate`
--

CREATE TABLE `exchange_rate` (
  `id` int(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL,
  `Nav` int(11) NOT NULL,
  `switch` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `Nav`, `switch`, `status`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paginat`
--

CREATE TABLE `paginat` (
  `id` int(11) NOT NULL,
  `page` int(10) NOT NULL,
  `next` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paginat`
--

INSERT INTO `paginat` (`id`, `page`, `next`) VALUES
(1, -1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(4) NOT NULL,
  `tag_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(4, 'Thakral Information limited'),
(6, 'Global brand limited'),
(7, 'IOE Bangladesh limited'),
(12, 'A 2 Z computer and security'),
(13, 'Unidentified'),
(14, 'Aamra networks limited'),
(15, 'Abmer IT limited'),
(16, 'Allied technology'),
(17, 'Computer Source'),
(18, 'Tech Republic'),
(19, 'Swap'),
(20, 'MK Electronic'),
(21, 'Smart technologies'),
(22, 'Victoria Sourcing'),
(23, 'Root Systems Limited');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(254) NOT NULL,
  `emp_id` varchar(254) NOT NULL,
  `emp_code` varchar(254) NOT NULL,
  `emp_name` varchar(254) NOT NULL,
  `emp_dept` varchar(254) NOT NULL,
  `asset_id` varchar(254) NOT NULL,
  `asset_code` varchar(254) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `emp_id`, `emp_code`, `emp_name`, `emp_dept`, `asset_id`, `asset_code`, `status`) VALUES
(166, '76', 'LB1193', 'Farazi Ahmed Sami', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(167, '407', 'LB70', 'Harun Ur Rashid', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(168, '396', 'LB1160', 'Maitree Howlader', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(169, '75', 'LB1192', 'Maliha Binte Monsur', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(170, '399', 'LB1208', 'Md. Forhan Hossen', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(171, '78', 'LB1195', 'Md. Karibul Islam', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(172, '78', 'LB1195', 'Md. Karibul Islam', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(173, '83', 'LB1190', 'Mosharrat Haque Mysha', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(174, '80', 'LB1197', 'Mouri Binte Hossain', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(175, '72', 'LB1180', 'Mumit Hossain Diganta', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(176, '80', 'LB1197', 'Mouri Binte Hossain', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(177, '72', 'LB1180', 'Mumit Hossain Diganta', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(178, '74', 'LB1188', 'Nadira Islam Nira', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(179, '73', 'LB1187', 'Nafisa Anjum Oishi', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(180, '395', 'LB1124', 'Nure Arfi', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(181, '77', 'LB1194', 'Rehnuma Razzak Fera', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(182, '86', 'LB1206', 'Sajidun Nahar Sajuti', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(183, '398', 'LB1174', 'Sinthya Chakma', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(184, '397', 'LB1173', 'Syeda Atkia Faiza', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(185, '85', 'LB1205', 'Syeda Maliha Fairuz', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(186, '71', 'LB1165', 'Zahanara Akter Mim', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(187, '79', 'LB1196', 'Zahin Solvi Khan', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(188, '333', 'LB323', 'Mohammad Nazrul Islam', 'Capacity  Planning and Sourcing', 'AssetID123', 'AssetCode123', 0),
(189, '133', 'LB906', 'Md. Fokhrul Hasan Prince', 'COP', 'AssetID123', 'AssetCode123', 0),
(190, '91', 'LB223', 'Utpal Komar Sarker', 'Finance and Accounts', 'AssetID123', 'AssetCode123', 0),
(191, '247', 'LB999', 'Uddipan Barua', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(192, '265', 'LB720', 'Tawfik Mohammed Rafique', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(193, '335', 'LB1107', 'Tasnuva Jahin', 'Technical', 'AssetID123', 'AssetCode123', 0),
(194, '228', 'LB1175', 'Tasmina Akter Joyee', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(195, '328', 'LB998', 'Taslima Rahman Dishe', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(196, '213', 'LB1164', 'A.B. Shihab Ahmed', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(197, '178', 'LB1181', 'A.S.M Saad Uddin', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(198, '301', 'LB912', 'Abhishek Kundu', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(199, '27', 'LB1059', 'Abir Mohammad', 'Technical', 'AssetID123', 'AssetCode123', 0),
(200, '205', 'LB1067', 'Abu Huraira', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(201, '309', 'LB925', 'Abul Hossain Shanto', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(202, '39', 'LB515', 'Ahsan Habib', 'Technical', 'AssetID123', 'AssetCode123', 0),
(203, '44', 'LB1123', 'Alamin Islam', 'Technical', 'AssetID123', 'AssetCode123', 0),
(204, '320', 'XB097', 'Alestare James Barrie', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(205, '313', 'LB1057', 'Ali Razan', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(206, '274', 'LB814', 'Aminul Hoque Shagor', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(207, '276', 'LB1005', 'Amit Saha', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(208, '245', 'LB1111', 'Anamika Akter', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(209, '69', 'LB196', 'Abul Kalam Azad', 'Sample Room', 'AssetID123', 'AssetCode123', 0),
(210, '324', 'XB092', 'Angela Onorato', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(211, '191', 'LB956', 'Anjan Sarkar', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(212, '135', 'XB099', 'Anton Krishnth Manoj Kumar Rajakumar', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(213, '169', 'LB705', 'Anup Chowdhury', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(214, '100', 'LB927', 'Arafat Khan', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(215, '346', 'LB981', 'Arif Hossen', 'Technical', 'AssetID123', 'AssetCode123', 0),
(216, '258', 'LB916', 'Arif UR Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(217, '179', 'LB1104', 'Ashfaqur Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(218, '345', 'LB846', 'Ashish Saha', 'Technical', 'AssetID123', 'AssetCode123', 0),
(219, '27', 'LB1059', 'Abir Mohammad', 'Technical', 'AssetID123', 'AssetCode123', 0),
(220, '258', 'LB916', 'Arif UR Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(221, '143', 'LB696', 'ATM Shadat Hossain Tarek', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(222, '318', 'XB093', 'Austin Squirrell', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(223, '290', 'LB990', 'Azizul Alam Shovon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(224, '351', 'LB1071', 'Azizul Hakim Shihab', 'Technical', 'AssetID123', 'AssetCode123', 0),
(225, '219', 'LB1128', 'Bappy Hossain', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(226, '33', 'LB353', 'Barsha Saha', 'Technical', 'AssetID123', 'AssetCode123', 0),
(227, '208', 'LB995', 'Bijoya Barua', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(228, '150', 'LB892', 'Binit Kumar Karmaker', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(229, '226', 'LB1093', 'Bulbul Ahmed Shahin', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(230, '315', 'LB10', 'Bulbul Ahmmad Akand', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(231, '175', 'LB820', 'D.M.Ismat Doha', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(232, '257', 'LB1133', 'Deluar Hosen', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(233, '101', 'LB334', 'Dolna Nafak', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(234, '161', 'LB952', 'Eakramul Hasan Emon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(235, '140', 'LB610', 'Eftakhar Hossain', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(236, '17', 'XB098', 'Emma Watson', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(237, '166', 'LB838', 'Enam Ahmed', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(238, '253', 'LB854', 'Enamul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(239, '360', 'LB636', 'Ibrahim', 'Technical', 'AssetID123', 'AssetCode123', 0),
(240, '232', 'LB1117', 'Ibrahim Khalil', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(241, '136', 'LB1008', 'Farzana Akter', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(242, '277', 'LB1088', 'Ferdous Nahiyan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(243, '269', 'LB1063', 'Gazi Masum Billah', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(244, '325', 'LB364', 'Golam Azam', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(245, '176', 'LB829', 'Golam Robbany', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(246, '321', 'XB087', 'Gulsah Aytemizel', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(247, '16', 'LB1145', 'Halima Akter', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(248, '336', 'XB077', 'Harinder Singh Saini', 'Technical', 'AssetID123', 'AssetCode123', 0),
(249, '236', 'LB1209', 'Hasibul Hasan Shykat', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(250, '331', 'LB1125', 'HM Mabrukh Bhuiyan', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(251, '173', 'LB1089', 'Imam Hasan Maruf', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(252, '23', 'LB941', 'Imrul Quaesh', 'Technical', 'AssetID123', 'AssetCode123', 0),
(253, '306', 'LB1087', 'Irteza Uddin Turzo', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(254, '174', 'LB1027', 'Ishtiak Alam', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(255, '258', 'LB916', 'Arif UR Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(256, '258', 'LB916', 'Arif UR Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(257, '253', 'LB854', 'Enamul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(258, '270', 'LB1069', 'Ishrat Ahmed Shishir', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(259, '47', 'LB727', 'Jahan Jusi', 'Technical', 'AssetID123', 'AssetCode123', 0),
(260, '278', 'LB193', 'Jahidul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(261, '271', 'LB1094', 'Jakaria Habib', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(262, '209', 'LB1130', 'Jalal Quadir', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(263, '255', 'LB1032', 'Jasmin Akter Jotee', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(264, '165', 'LB1066', 'Jubaer Ahmed', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(265, '242', 'LB1058', 'Kamrul Hasan Rana', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(266, '20', 'LB195', 'Kamruzzaman Nasim', 'Technical', 'AssetID123', 'AssetCode123', 0),
(267, '94', 'LB1078', 'Kaniz Fatema', 'Finance and Accounts', 'AssetID123', 'AssetCode123', 0),
(268, '348', 'LB1101', 'Kazi Raihan Siddiq', 'Technical', 'AssetID123', 'AssetCode123', 0),
(269, '323', 'LB507', 'Khairul Hasan', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(270, '37', 'LB338', 'Khandker Mahfuzul Islam Sumon', 'Technical', 'AssetID123', 'AssetCode123', 0),
(271, '293', 'LB1037', 'K.M Fahim', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(272, '181', 'LB349', 'Lingcon Chondro Bhowmick', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(273, '337', 'LB389', 'M. Ahmed Siraji', 'Technical', 'AssetID123', 'AssetCode123', 0),
(274, '8', 'LB1186', 'M.A. Imran', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(275, '155', 'LB882', 'M.D. Shahjahan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(276, '190', 'LB803', 'M.Moazzam Hossain Razib', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(277, '190', 'LB803', 'M.Moazzam Hossain Razib', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(278, '129', 'LB053', 'Mafidul Hasan Murad', 'Shipping', 'AssetID123', 'AssetCode123', 0),
(279, '28', 'LB946', 'Mahadi Haque', 'Technical', 'AssetID123', 'AssetCode123', 0),
(280, '355', 'LB1061', 'Mahbubul Hasan Pollob', 'Technical', 'AssetID123', 'AssetCode123', 0),
(281, '90', 'LB1132', 'Mahfuja Ahmed', 'Management', 'AssetID123', 'AssetCode123', 0),
(282, '186', 'LB965', 'Mahi Nuzzaman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(283, '284', 'LB881', 'Mahmudul Hasan Tarek', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(284, '182', 'LB734', 'Mahmudul Hossain', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(285, '3', 'LB1177', 'Mahtab Uddin Ahmed Likhon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(286, '308', 'LB1169', 'Maria Akter', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(287, '168', 'LB419', 'Mazadul Islam (Hridoy)', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(288, '24', 'LB684', 'Md . Ibrahim Hossain', 'Technical', 'AssetID123', 'AssetCode123', 0),
(289, '297', 'LB742', 'Md Khairul Munir Sumon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(290, '96', 'LB968', 'MD Robiul Islam', 'IT', 'AssetID123', 'AssetCode123', 0),
(291, '96', 'LB968', 'MD Robiul Islam', 'IT', 'AssetID123', 'AssetCode123', 0),
(292, '148', 'LB849', 'Md Rokiebul Islam', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(293, '148', 'LB849', 'Md Rokiebul Islam', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(294, '231', 'LB746', 'Md Yaqub Ali', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(295, '102', 'LB600', 'Md. Abdul Majid Mollah', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(296, '237', 'LB850', 'Md. Abdur Raihan Khondaker', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(297, '352', 'LB1076', 'Md. Abdur Razzak', 'Technical', 'AssetID123', 'AssetCode123', 0),
(298, '195', 'LB1207', 'Md. Abu Baker Siddique', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(299, '29', 'LB757', 'Md. Abu Hayath Firoj', 'Technical', 'AssetID123', 'AssetCode123', 0),
(300, '240', 'LB904', 'MD. Abu Kawser', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(301, '167', 'LB1116', 'Md. Abu Saide', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(302, '332', 'LB953', 'Md. Aktar Jamil', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(303, '146', 'LB531', 'Md. Ali Jiko', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(304, '235', 'LB1039', 'Md. Alif Arafat Shohan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(305, '177', 'LB1150', 'Md. Amran Hossain', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(306, '98', 'LB1070', 'Md. Anamul Hoq', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(307, '197', 'LB241', 'Md. Anisul Haque', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(308, '159', 'LB1151', 'Md. Ashikuzzaman Khan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(309, '15', 'LB1204', 'Md. Asir Ahabab Uul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(310, '326', 'LB670', 'Md. Atikur Jaman', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(311, '304', 'LB844', 'Md. Dilshad Hasan Moin', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(312, '153', 'LB1079', 'Taskin Ahmed', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(313, '311', 'XB039', 'Tamara Glackin', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(314, '289', 'LB513', 'Taibour Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(315, '249', 'LB1092', 'Tabiba Tabassum', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(316, '152', 'LB1045', 'Syeda Kashpia Ulfath', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(317, '163', 'LB960', 'Syed Abeer Jamil', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(318, '38', 'LB397', 'Swapna Sultana', 'Technical', 'AssetID123', 'AssetCode123', 0),
(319, '27', 'LB1059', 'Abir Mohammad', 'Technical', 'AssetID123', 'AssetCode123', 0),
(320, '253', 'LB854', 'Enamul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(321, '359', 'LB1129', 'Md. Emdadul Hoq Milon', 'Technical', 'AssetID123', 'AssetCode123', 0),
(322, '196', 'LB1203', 'Md. Faruk Hossain', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(323, '363', 'LB859', 'Md. Golam Rahman Chowdhury', 'Technical', 'AssetID123', 'AssetCode123', 0),
(324, '141', 'LB919', 'Md. Habibur Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(325, '293', 'LB1037', 'K.M Fahim', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(326, '37', 'LB338', 'Khandker Mahfuzul Islam Sumon', 'Technical', 'AssetID123', 'AssetCode123', 0),
(327, '196', 'LB1203', 'Md. Faruk Hossain', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(328, '196', 'LB1203', 'Md. Faruk Hossain', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(329, '7', 'LB1168', 'Md. Hafijur Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(330, '170', 'LB835', 'Md. Hasibur Rahman', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(331, '214', 'LB1113', 'Md. Hasin Ryan', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(332, '142', 'LB514', 'Md. Ibrahim Khaled Nasim', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(333, '142', 'LB514', 'Md. Ibrahim Khaled Nasim', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(334, '12', 'LB1202', 'Md. Imran Hossain', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(335, '158', 'LB1144', 'Md. Imran Sharif', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(336, '239', 'LB799', 'Md. Imran Uddin', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(337, '266', 'LB611', 'Md. Jahidul Islam Riad', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(338, '26', 'LB447', 'Md. Jasim Uddin', 'Technical', 'AssetID123', 'AssetCode123', 0),
(339, '78', 'LB1195', 'Md. Karibul Islam', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(340, '223', 'LB827', 'Md. Mahabubul Islam', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(341, '138', 'LB627', 'Md. Mahbub Khan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(342, '95', 'LB405', 'Md. Mahdi Hasan', 'IT', 'AssetID123', 'AssetCode123', 0),
(343, '46', 'LB425', 'Md. Maksudur Rahaman', 'Technical', 'AssetID123', 'AssetCode123', 0),
(344, '327', 'LB860', 'Md. Mamun Uddin', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(345, '43', 'LB747', 'Md. Masud Rana', 'Technical', 'AssetID123', 'AssetCode123', 0),
(346, '361', 'LB508', 'Md. Mominur Rahman', 'Technical', 'AssetID123', 'AssetCode123', 0),
(347, '361', 'LB508', 'Md. Mominur Rahman', 'Technical', 'AssetID123', 'AssetCode123', 0),
(348, '61', 'LB942', 'Mohammad Yousuf', 'QA', 'AssetID123', 'AssetCode123', 0),
(349, '371', 'LB983', 'Rajib Kumar Mohajan', 'QA', 'AssetID123', 'AssetCode123', 0),
(350, '380', 'LB629', 'Md. Monirozzaman', 'QA', 'AssetID123', 'AssetCode123', 0),
(351, '411', 'LB616', 'Mohammed Ohidul Islam', 'QA', 'AssetID123', 'AssetCode123', 0),
(352, '56', 'LB268', 'Md. Babul Akther', 'QA', 'AssetID123', 'AssetCode123', 0),
(353, '401', 'LB10', 'Tauhidul Islam', 'QA', 'AssetID123', 'AssetCode123', 0),
(354, '417', 'LB31', 'Shorab Hasan Choudhury', 'QA', 'AssetID123', 'AssetCode123', 0),
(355, '132', 'LB282', 'Md. Salahuddin', 'COP', 'AssetID123', 'AssetCode123', 0),
(356, '104', 'LB1024', 'Naziha Noor Jahan', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(357, '103', 'LB1131', 'Puja Bandya', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(358, '99', 'LB991', 'Sadiya Anowar', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(359, '238', 'LB880', 'Md. Mosabbirul Islam', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(360, '283', 'LB821', 'Md. Mustanzid Hasan Murad', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(361, '300', 'LB955', 'MD. Nashid Mahmud', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(362, '254', 'LB928', 'Md. Osman Goni', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(363, '272', 'LB378', 'Md. Rezaul Karim', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(364, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(365, '386', 'LB320', 'SK Mohammad Hanif', 'Sample Room', 'AssetID123', 'AssetCode123', 0),
(366, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(367, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(368, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(369, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(370, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(371, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(372, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(373, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(374, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(375, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(376, '122', 'LB675', 'Abdul Hai Babu', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(377, '122', 'LB675', 'Abdul Hai Babu', 'HR and Administration', 'AssetID123', 'AssetCode123', 0),
(378, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(379, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(380, '371', 'LB983', 'Rajib Kumar Mohajan', 'QA', 'AssetID123', 'AssetCode123', 0),
(381, '52', 'LB451', 'E. M. Wahed Morshedul Haque', 'QA', 'AssetID123', 'AssetCode123', 0),
(382, '373', 'LB1022', 'Md. Habibur Rahman Shuvo', 'QA', 'AssetID123', 'AssetCode123', 0),
(383, '406', 'LB363', 'Arfatul Hoque Chowdhury', 'QA', 'AssetID123', 'AssetCode123', 0),
(384, '372', 'LB1072', 'Md. Mamunur Rasid', 'QA', 'AssetID123', 'AssetCode123', 0),
(385, '51', 'LB244', 'Monirul Islam Shohag', 'QA', 'AssetID123', 'AssetCode123', 0),
(386, '27', 'LB1059', 'Abir Mohammad', 'Technical', 'AssetID123', 'AssetCode123', 0),
(387, '697', 'LB1215', 'Asif Iqbal', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(388, '689', 'LB000', 'NSL system', 'IT', 'AssetID123', 'AssetCode123', 0),
(389, '689', 'LB000', 'NSL system', 'IT', 'AssetID123', 'AssetCode123', 0),
(390, '692', 'LB1210', 'Md. Ashiful Haque Badhon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(391, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(392, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(393, '58', 'LB129', 'A K M Fazlul Haque Sagar', 'QA', 'AssetID123', 'AssetCode123', 0),
(394, '697', 'LB1215', 'Asif Iqbal', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(395, '253', 'LB854', 'Enamul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(396, '253', 'LB854', 'Enamul Haque', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(397, '378', 'LB858', 'Fayzul Haque', 'QA', 'AssetID123', 'AssetCode123', 0),
(398, '76', 'LB1193', 'Farazi Ahmed Sami', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(399, '382', 'LB706', 'Harun Ur Rashid', 'QA', 'AssetID123', 'AssetCode123', 0),
(400, '54', 'LB176', 'Hasan Ahammed', 'QA', 'AssetID123', 'AssetCode123', 0),
(401, '94', 'LB1078', 'Kaniz Fatema', 'Finance and Accounts', 'AssetID123', 'AssetCode123', 0),
(402, '323', 'LB507', 'Khairul Hasan', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(403, '323', 'LB507', 'Khairul Hasan', 'Product Development', 'AssetID123', 'AssetCode123', 0),
(404, '37', 'LB338', 'Khandker Mahfuzul Islam Sumon', 'Technical', 'AssetID123', 'AssetCode123', 0),
(405, '206', 'LB1149', 'M. Waliul Islam', 'NS Brand', 'AssetID123', 'AssetCode123', 0),
(406, '396', 'LB1160', 'Maitree Howlader', 'Apprentice', 'AssetID123', 'AssetCode123', 0),
(407, '405', 'LB555', 'Md Atikur Rahman', 'QA', 'AssetID123', 'AssetCode123', 0),
(408, '297', 'LB742', 'Md Khairul Munir Sumon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(409, '27', 'LB1059', 'Abir Mohammad', 'Technical', 'AssetID123', 'AssetCode123', 0),
(410, '351', 'LB1071', 'Azizul Hakim Shihab', 'Technical', 'AssetID123', 'AssetCode123', 0),
(411, '297', 'LB742', 'Md Khairul Munir Sumon', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(412, '369', 'LB156', 'Md. Mamun-Ur-Rashid', 'QA', 'AssetID123', 'AssetCode123', 0),
(413, '369', 'LB156', 'Md. Mamun-Ur-Rashid', 'QA', 'AssetID123', 'AssetCode123', 0),
(414, '372', 'LB1072', 'Md. Mamunur Rasid', 'QA', 'AssetID123', 'AssetCode123', 0),
(415, '183', 'LB1096', 'Md. Monir Hossain Bhuiyan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(416, '183', 'LB1096', 'Md. Monir Hossain Bhuiyan', 'Merchandising', 'AssetID123', 'AssetCode123', 0),
(417, '251', 'LB852', 'Sanjoy Bhowmik', 'Merchandising', 'AssetID123', 'AssetCode123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(1) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `banner` varchar(18) NOT NULL,
  `rate` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme`, `banner`, `rate`) VALUES
(1, 'dark', 'Next Sourcing', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `user_role` int(5) NOT NULL,
  `update_role` int(1) NOT NULL,
  `assign_role` int(1) NOT NULL,
  `revoke_role` int(1) NOT NULL,
  `delete_role` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avater` text NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `user_role`, `update_role`, `assign_role`, `revoke_role`, `delete_role`, `phone`, `address`, `avater`, `join_date`) VALUES
(8, 'Admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'raihan@tnc.com', 'Admin', 1, 0, 0, 0, 0, '012345878', 'MIrpur Dhaka', '84830736294.png', '2020-04-13'),
(14, 'Mahdi', '7c222fb2927d828af22f592134e8932480637c0d', 'kaziraihan90@gmail.com', 'Mahdi', 1, 1, 0, 0, 0, '01717985025', 'Adarsha Road, Senpara Parbata, Mirpur 10', '', '2024-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `vms`
--

CREATE TABLE `vms` (
  `id` int(254) NOT NULL,
  `Visitor_name` varchar(254) NOT NULL,
  `Visitor_from` varchar(254) NOT NULL,
  `Email_address` varchar(254) NOT NULL,
  `Phone_Number` varchar(254) NOT NULL,
  `In_time` varchar(254) NOT NULL,
  `Am_Pm` varchar(254) NOT NULL,
  `Card_Number` int(254) NOT NULL,
  `to_whom` varchar(254) NOT NULL,
  `to_email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vms`
--

INSERT INTO `vms` (`id`, `Visitor_name`, `Visitor_from`, `Email_address`, `Phone_Number`, `In_time`, `Am_Pm`, `Card_Number`, `to_whom`, `to_email`) VALUES
(39, 'Raihan', 'Next Sourcing', 'raihan@bd.nextsourcing.com', '01717985025', '12:30', 'PM', 23, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(40, 'Raihan', 'Next', 'raihan@nextslbd.com', '01892738347', '12:04', 'PM', 13, 'Mafidul Hasan Murad', 'murad@bd.nextsourcing.com'),
(42, 'raihan', 'Next', 'kaziraihan90@gmail.com', '018191', '09:00', 'PM', 13, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(43, 'raihan', 'next', 'kaziraihan90@gmail.com', '01911687267', '09:00', 'AM', 13, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(44, 'Mahdi', 'Next', 'kaziraihan90@gmail.com', '018191', '09:00', 'PM', 13, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(45, 'Raihan', 'Next', 'raihan@bd.nextsourcing.com', '01911687267', '09:00', 'AM', 23, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(46, 'raihan', 'Next', 'kaziraihan90@gmail.com', '01892738347', '09:00', 'AM', 13, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com'),
(47, 'raihan', 'Next', 'kaziraihan90@gmail.com', '01911687267', '09:00', 'AM', 0, 'Md. Abdur Raihan Khondaker', 'Raihan_Khondaker@bd.nextsourcing.com'),
(48, '', '', '', '', '', 'AM', 0, 'Md. Abdur Raihan Khondaker', 'Raihan_Khondaker@bd.nextsourcing.com'),
(49, 'raihan', 'Next', 'kaziraihan90@gmail.com', '018191', '09:00', 'AM', 13, 'Shahul Sally', 'shahul_sally@bd.nextsourcing.com'),
(50, '', '', 'kaziraihan90@gmail.com', '', '', 'AM', 0, 'Khalifa Raihan Uddin', 'raihan_uddin@bd.nextsourcing.com'),
(51, 'Mahdi', 'next', 'kaziraihan90@gmail.com', '01911687267', '12:04', 'AM', 16, 'Md. Mahdi Hasan', 'mahdi_hasan@bd.nextsourcing.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetusedby`
--
ALTER TABLE `assetusedby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_list`
--
ALTER TABLE `asset_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_rate`
--
ALTER TABLE `exchange_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginat`
--
ALTER TABLE `paginat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vms`
--
ALTER TABLE `vms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetusedby`
--
ALTER TABLE `assetusedby`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_list`
--
ALTER TABLE `asset_list`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2031;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exchange_rate`
--
ALTER TABLE `exchange_rate`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `paginat`
--
ALTER TABLE `paginat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vms`
--
ALTER TABLE `vms`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
