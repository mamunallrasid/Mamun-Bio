-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 09:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mamun_bio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `userid`, `password`, `date`, `time`) VALUES
(1, 'Mamun All Rasid', 'mamunallrasid20@gmail.com', 'MamunAllRasid@2002', '2023-08-30', '24:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(3000) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Id`, `Name`, `Email`, `Message`, `Date`, `time`) VALUES
(1, 'Mamun All Rasid', 'mamunallrasid20@gmail.com', 'Hello Mamun All Rasid', '29-11-2022', '00:00:00'),
(3, 'Sahil ', 'sahilchowdhury012@gmail.com', 'Hello Mamun All Rasid', '23-12-2022', '00:00:00'),
(4, 'Sagar', 'uchchashikshargu@gmail.com', 'Helo Mamun', '31-12-2022', '00:00:00'),
(5, 'Puckhi', 'sushmaparvin22@gmail.com', 'Hello Baby', '03-01-2023', '00:00:00'),
(9, 'M Rasid', 'mamunallrasid20@gmail.com', 'Hello', '21-01-2023', '00:00:00'),
(12, 'Korimul', 'ki0066754@gmail.com', 'Hello Mamun ', '11-02-2023', '00:00:00'),
(13, 'Mamun', 'rasidallmamun@gmail.com', 'Hello', '19-02-2023', '00:00:00'),
(14, 'Hajera ', 'hajerahaju414@gmail.com', 'Hi', '19-02-2023', '00:00:00'),
(16, 'Ankit Saha', 'sahaankit669@gmail.com', 'hello', '06-04-2023', '00:00:00'),
(17, 'M Rasid', 'mamunallrasid200@gmail.com', 'Ok Google', '24-07-2023', '00:00:00'),
(18, 'Shibam Sharma ', 'shibamsharma076@gmail.com', 'Thanks ', '27-08-2023', '00:00:00'),
(19, 'Mamun', 'ok@gmail.com', 'Hey', '30-08-2023', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usr_details`
--

CREATE TABLE `usr_details` (
  `VisitorId` int(11) NOT NULL,
  `UserIp` varchar(100) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `CityName` varchar(20) NOT NULL,
  `Zip_Code` varchar(15) NOT NULL,
  `TimeZone` varchar(30) NOT NULL,
  `Region_Name` varchar(30) NOT NULL,
  `Isp` varchar(30) NOT NULL,
  `UserOs` varchar(20) NOT NULL,
  `User_Browser` varchar(20) NOT NULL,
  `User_Device` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usr_details`
--

INSERT INTO `usr_details` (`VisitorId`, `UserIp`, `Country`, `CityName`, `Zip_Code`, `TimeZone`, `Region_Name`, `Isp`, `UserOs`, `User_Browser`, `User_Device`, `Date`, `Time`) VALUES
(1, '103.198.132.115', 'Bangladesh', 'Pabna', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:27:07 pm'),
(2, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Windows 10', 'Chrome', 'Computer', '19-02-2023', '19:27:20 pm'),
(3, '2409:4061:2dca:7c91:485b:67ff:feb0:2d19', 'India', 'Raniganj', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:28:28 pm'),
(4, '2409:4088:849f:298::16cf:f8ac', 'India', '', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:28:31 pm'),
(5, '103.198.132.115', 'Bangladesh', 'Pabna', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:31:25 pm'),
(6, '103.198.132.115', 'Bangladesh', 'Pabna', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:31:27 pm'),
(7, '2409:4061:2dca:7c91:485b:67ff:feb0:2d19', 'India', 'Raniganj', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:35:12 pm'),
(8, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '19-02-2023', '19:40:08 pm'),
(9, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'iPhone', 'Safari', 'Mobile', '19-02-2023', '19:40:30 pm'),
(10, '37.120.196.109', 'Germany', 'Frankfurt am Main', '', 'Europe/Berlin', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:45:44 pm'),
(11, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '19:46:01 pm'),
(12, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Windows 10', 'Chrome', 'Computer', '19-02-2023', '19:58:31 pm'),
(13, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '19-02-2023', '20:27:49 pm'),
(14, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:11:30 pm'),
(15, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:13:07 pm'),
(16, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:13:41 pm'),
(17, '2a03:2880:32ff:3::face:b00c', 'Denmark', 'Odense', '', 'Europe/Copenhagen', '', '', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '19-02-2023', '21:44:18 pm'),
(18, '202.134.10.142', 'Bangladesh', 'Dhaka', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:44:52 pm'),
(19, '2a03:2880:31ff:a::face:b00c', 'Ireland', 'Clonee', '', 'Europe/Dublin', '', '', 'iPhone', 'Safari', 'Mobile', '19-02-2023', '21:45:25 pm'),
(20, '2a03:2880:31ff:5::face:b00c', 'Ireland', 'Clonee', '', 'Europe/Dublin', '', '', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '19-02-2023', '21:46:02 pm'),
(21, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:49:33 pm'),
(22, '2401:4900:1220:4916:6817:b389:4d4c:65e7', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '19-02-2023', '21:50:29 pm'),
(23, '2401:4900:1220:4916:6817:b389:4d4c:65e7', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '19-02-2023', '21:50:50 pm'),
(24, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '19-02-2023', '21:57:22 pm'),
(25, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'iPhone', 'Safari', 'Mobile', '19-02-2023', '22:13:38 pm'),
(26, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Windows 10', 'Chrome', 'Computer', '19-02-2023', '23:04:21 pm'),
(27, '103.171.247.135', 'India', 'Kolkata', '', 'Asia/Kolkata', '', '', 'Windows 10', 'Chrome', 'Computer', '19-02-2023', '23:05:04 pm'),
(28, '2a03:2880:32ff:12::face:b00c', 'Denmark', 'Odense', '', 'Europe/Copenhagen', '', '', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '20-02-2023', '00:15:43 am'),
(29, '144.48.163.154', 'Bangladesh', 'Dhaka', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '20-02-2023', '00:57:43 am'),
(30, '144.48.163.154', 'Bangladesh', 'Dhaka', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '20-02-2023', '00:57:58 am'),
(31, '2409:4061:2e04:3cc8:c9a0:b4f:a3d2:8ff', 'India', '', '', 'Asia/Kolkata', '', '', 'iPhone', 'Safari', 'Mobile', '20-02-2023', '03:02:08 am'),
(32, '144.48.163.154', 'Bangladesh', 'Dhaka', '', 'Asia/Dhaka', '', '', 'Android', 'Chrome', 'Mobile', '20-02-2023', '05:10:43 am'),
(33, '2401:4900:3a10:5836:3ca1:3dff:fe60:ee31', 'India', 'Islampur', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '20-02-2023', '07:37:51 am'),
(34, '2401:4900:3a10:5836:3ca1:3dff:fe60:ee31', 'India', 'Islampur', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '20-02-2023', '07:38:00 am'),
(35, '2401:4900:3a10:5836:3ca1:3dff:fe60:ee31', 'India', 'Islampur', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '20-02-2023', '08:40:10 am'),
(36, '2401:4900:3a10:5836:3ca1:3dff:fe60:ee31', 'India', 'Islampur', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Tablet', '20-02-2023', '08:46:53 am'),
(37, '2409:4088:849f:298::16cf:f8ac', 'India', '', '', 'Asia/Kolkata', '', '', 'Android', 'Chrome', 'Mobile', '20-02-2023', '14:37:52 pm'),
(38, '2409:4088:849f:298::16cf:f8ac', 'India', '', '', 'Asia/Kolkata', '', '', 'Linux', 'Chrome', 'Computer', '20-02-2023', '14:38:31 pm'),
(39, '2409:4088:849f:298:5da2:e7e0:6694:a685', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Chrome', 'Computer', '21-02-2023', '00:24:14 am'),
(40, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '21-02-2023', '00:25:37 am'),
(41, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:25:37 am'),
(42, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:25:40 am'),
(43, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:28:58 am'),
(44, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:37:04 am'),
(45, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '21-02-2023', '00:42:53 am'),
(46, '51.158.186.147', 'France', 'Paris', '75001.', 'Europe/Paris.', 'Île-de-France', 'SCALEWAY', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:45:15 am'),
(47, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '21-02-2023', '00:47:30 am'),
(48, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '21-02-2023', '00:48:11 am'),
(49, '2409:4088:849f:298:71c6:e590:23ba:3eda', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Chrome', 'Computer', '21-02-2023', '00:49:09 am'),
(50, '199.195.253.116', 'United States', 'New York', '10004.', 'America/New_York.', 'New York', 'FranTech Solutions', 'Linux', 'Chrome', 'Computer', '21-02-2023', '00:50:12 am'),
(51, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '21-02-2023', '09:08:18 am'),
(52, '2401:4900:3a23:42a3:da44:6b5c:556:47e7', 'India', 'Siliguri', '734429.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Ltd', 'Android', 'Chrome', 'Mobile', '21-02-2023', '10:01:41 am'),
(53, '2409:4088:849f:298::16cf:f8ac', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '21-02-2023', '10:01:53 am'),
(54, '2409:4088:ae8f:51c7:3e4:2e81:122:3bb0', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '21-02-2023', '12:31:17 pm'),
(55, '103.90.214.158', 'Bangladesh', 'Tongi', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'DB Technologies', 'Android', 'Chrome', 'Mobile', '21-02-2023', '20:34:29 pm'),
(56, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '22-02-2023', '00:26:42 am'),
(57, '115.124.42.145', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'GETNNET', 'Linux', 'Chrome', 'Computer', '22-02-2023', '12:58:45 pm'),
(58, '115.124.42.145', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'GETNNET', 'Android', 'Chrome', 'Mobile', '22-02-2023', '12:58:45 pm'),
(59, '115.124.42.145', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'GETNNET', 'Android', 'Chrome', 'Mobile', '22-02-2023', '12:59:00 pm'),
(60, '115.124.42.145', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'GETNNET', 'Android', 'Chrome', 'Mobile', '22-02-2023', '13:06:42 pm'),
(61, '103.90.214.158', 'Bangladesh', 'Tongi', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'DB Technologies', 'Android', 'Chrome', 'Mobile', '23-02-2023', '17:55:13 pm'),
(62, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Mobile', '24-02-2023', '11:36:31 am'),
(63, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Mobile', '24-02-2023', '11:36:32 am'),
(64, '198.244.189.136', 'United Kingdom', 'London', 'EC2V.', 'Europe/London.', 'England', 'OVH SAS', 'Android', 'Chrome', 'Mobile', '24-02-2023', '11:38:46 am'),
(65, '51.75.65.141', 'Germany', 'Limburg an der Lahn', '65550.', 'Europe/Berlin.', 'Hesse', 'OVH SAS', 'Android', 'Chrome', 'Mobile', '24-02-2023', '11:39:28 am'),
(66, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '09:55:53 am'),
(67, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '10:13:14 am'),
(68, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '10:14:27 am'),
(69, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '10:15:39 am'),
(70, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '10:21:20 am'),
(71, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '26-02-2023', '10:29:06 am'),
(72, '103.31.154.229', 'Bangladesh', 'Pār Naogaon', '5891.', 'Asia/Dhaka.', 'Rajshahi Division', 'Axiata (Bangladesh) Limited', 'Android', 'Chrome', 'Mobile', '26-02-2023', '19:23:37 pm'),
(73, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Mobile', '27-02-2023', '23:59:18 pm'),
(74, '2a03:2880:32ff:16::face:b00c', 'Denmark', 'Odense', '5100.', 'Europe/Copenhagen.', 'South Denmark', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '27-02-2023', '23:59:27 pm'),
(75, '118.179.94.221', 'Bangladesh', 'Dhaka', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'Dhakacom Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '07:43:08 am'),
(76, '118.179.94.221', 'Bangladesh', 'Dhaka', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'Dhakacom Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '07:43:31 am'),
(77, '118.179.94.221', 'Bangladesh', 'Dhaka', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'Dhakacom Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '07:43:36 am'),
(78, '118.179.94.221', 'Bangladesh', 'Dhaka', '1230.', 'Asia/Dhaka.', 'Dhaka Division', 'Dhakacom Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '07:45:58 am'),
(79, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '28-02-2023', '08:54:11 am'),
(80, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '28-02-2023', '12:04:25 pm'),
(81, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '28-02-2023', '12:05:44 pm'),
(82, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Mobile', '28-02-2023', '12:06:47 pm'),
(83, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '28-02-2023', '12:07:04 pm'),
(84, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '28-02-2023', '12:08:38 pm'),
(85, '2409:4061:2c00:fb90:e8bf:66ff:fe77:5ad6', 'India', 'Naksalbāri', '.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '12:11:13 pm'),
(86, '2409:4061:2c00:fb90:e8bf:66ff:fe77:5ad6', 'India', 'Naksalbāri', '.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '12:11:46 pm'),
(87, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '28-02-2023', '12:18:20 pm'),
(88, '2409:4088:9e35:4fde::4688:d90b', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '28-02-2023', '14:05:10 pm'),
(89, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '01-03-2023', '23:07:24 pm'),
(90, '2a03:2880:12ff:12::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '02-03-2023', '22:32:05 pm'),
(91, '103.171.247.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '04-03-2023', '02:28:11 am'),
(92, '2409:4088:9d93:bfbd::4688:109', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '04-03-2023', '21:32:24 pm'),
(93, '2409:4088:9d93:bfbd::4688:109', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '05-03-2023', '17:51:59 pm'),
(94, '2409:4061:282:d0d2:c4e2:5aff:fe05:6210', 'India', 'Gaighata', '743249.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '05-03-2023', '17:52:08 pm'),
(95, '2409:4061:282:d0d2:c4e2:5aff:fe05:6210', 'India', 'Gaighata', '743249.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '05-03-2023', '17:54:14 pm'),
(96, '2409:4061:282:d0d2:c4e2:5aff:fe05:6210', 'India', 'Gaighata', '743249.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '05-03-2023', '17:54:33 pm'),
(97, '2a03:2880:32ff:2::face:b00c', 'Denmark', 'Odense', '5100.', 'Europe/Copenhagen.', 'South Denmark', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '05-03-2023', '18:17:08 pm'),
(98, '103.170.137.152', 'Bangladesh', 'Swarpur', '.', 'Asia/Dhaka.', 'Dhaka Division', 'Touhedul Islam', 'Android', 'Chrome', 'Tablet', '05-03-2023', '18:17:28 pm'),
(99, '2409:4088:9113:f7ff::163e:8a1', 'India', 'Barjora', '722202.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '06-03-2023', '14:19:16 pm'),
(100, '2409:4088:9113:f7ff::163e:8a1', 'India', 'Barjora', '722202.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '06-03-2023', '14:20:05 pm'),
(101, '2401:4900:3a27:394:c09e:b3ce:2af3:660b', 'India', 'Siliguri', '734429.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Ltd', 'Android', 'Chrome', 'Tablet', '08-03-2023', '00:09:07 am'),
(102, '2409:4088:9d95:6b3::4648:8e07', 'India', 'Kolkata', '700132.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '08-03-2023', '18:51:47 pm'),
(103, '2409:4088:ae0b:90b1::4688:c80b', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '10-03-2023', '09:50:06 am'),
(104, '2a03:2880:32ff:c::face:b00c', 'Denmark', 'Odense', '5100.', 'Europe/Copenhagen.', 'South Denmark', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '10-03-2023', '09:50:15 am'),
(105, '2409:4088:ae0b:90b1::4688:c80b', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '10-03-2023', '09:53:32 am'),
(106, '2409:4088:ae0b:90b1::4688:c80b', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '10-03-2023', '09:54:33 am'),
(107, '2409:4088:ae0b:90b1::4688:c80b', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '10-03-2023', '10:27:21 am'),
(108, '103.185.25.70', 'Bangladesh', 'Comilla', '3500.', 'Asia/Dhaka.', 'Chittagong', 'Orange Communication', 'Android', 'Chrome', 'Tablet', '10-03-2023', '10:49:06 am'),
(109, '2a03:2880:32ff:12::face:b00c', 'Denmark', 'Odense', '5100.', 'Europe/Copenhagen.', 'South Denmark', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '14-03-2023', '14:02:49 pm'),
(110, '2409:4088:ae00:ca4d::7a09:8303', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '14-03-2023', '14:14:55 pm'),
(111, '2409:4088:9c07:8d4f::4688:ab00', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '14-03-2023', '15:37:18 pm'),
(112, '175.101.69.70', 'India', 'Thenali', '522201.', 'Asia/Kolkata.', 'Andhra Pradesh', 'ExcellMedia Pvt Ltd', 'Android', 'Chrome', 'Mobile', '14-03-2023', '15:37:19 pm'),
(113, '172.58.87.194', 'United States', 'Minneapolis', '55440.', 'America/Chicago.', 'Minnesota', 'T-Mobile USA, Inc.', 'Android', 'Chrome', 'Mobile', '14-03-2023', '15:39:53 pm'),
(114, '2401:4900:3bee:2df7:e10f:54b5:1b04:babc', 'India', 'Bhopal', '.', 'Asia/Kolkata.', 'Madhya Pradesh', 'Bharti Airtel Ltd', 'Android', 'Chrome', 'Mobile', '15-03-2023', '19:10:56 pm'),
(115, '2a03:2880:12ff:9::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '18-03-2023', '00:50:40 am'),
(116, '2a03:2880:12ff:b::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '21-03-2023', '21:38:04 pm'),
(117, '2401:4900:3fba:4b6b:c011:ff:fe4e:875e', 'India', 'Kolkata', '700019.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Tablet', '28-03-2023', '13:52:26 pm'),
(118, '2409:4088:ae8c:7fe4::4688:920b', 'India', 'Nabadwip', '743439.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '29-03-2023', '04:41:05 am'),
(119, '103.135.229.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '29-03-2023', '19:01:22 pm'),
(120, '103.135.229.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '30-03-2023', '22:00:18 pm'),
(121, '103.135.229.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '30-03-2023', '22:00:33 pm'),
(122, '103.135.229.135', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '30-03-2023', '22:00:37 pm'),
(123, '223.233.58.199', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '30-03-2023', '22:00:53 pm'),
(124, '223.233.58.199', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '30-03-2023', '22:05:48 pm'),
(125, '103.211.132.166', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '01-04-2023', '14:39:17 pm'),
(126, '103.211.132.166', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '01-04-2023', '17:20:19 pm'),
(127, '103.211.132.166', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '01-04-2023', '17:28:31 pm'),
(128, '115.187.54.117', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Alliance Broadband Services', 'Android', 'Chrome', 'Tablet', '03-04-2023', '12:01:15 pm'),
(129, '223.233.21.42', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '03-04-2023', '23:22:40 pm'),
(130, '2a03:2880:12ff:78::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '05-04-2023', '23:23:48 pm'),
(131, '2401:4900:3a24:1575:7d9b:436a:5e93:3dc2', 'India', 'Raiganj', '733130.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Ltd', 'Windows 10', 'Chrome', 'Computer', '06-04-2023', '14:45:30 pm'),
(132, '2401:4900:3a24:1575:7d9b:436a:5e93:3dc2', 'India', 'Raiganj', '733130.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Ltd', 'Windows 10', 'Chrome', 'Computer', '06-04-2023', '14:46:45 pm'),
(133, '2409:4061:2d83:7d90:c9b5:d254:c372:59aa', 'India', 'Jalpaiguri', '735101.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '06-04-2023', '19:48:49 pm'),
(134, '2409:4061:2d83:7d90:c9b5:d254:c372:59aa', 'India', 'Jalpaiguri', '735101.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '06-04-2023', '19:49:02 pm'),
(135, '2a03:2880:10ff:8::face:b00c', 'United States', 'Altoona', '50009.', 'America/Chicago.', 'Iowa', 'Facebook, Inc.', 'Android', 'Chrome', 'Mobile', '14-04-2023', '17:05:51 pm'),
(136, '2a03:2880:25ff:75::face:b00c', 'United States', 'Huntsville', '35895.', 'America/Chicago.', 'Alabama', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '14-04-2023', '17:06:35 pm'),
(137, '2a03:2880:12ff:6::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '18-04-2023', '08:53:16 am'),
(138, '66.249.70.119', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '24-04-2023', '06:26:18 am'),
(139, '66.249.70.117', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '24-04-2023', '06:26:53 am'),
(140, '66.249.70.117', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '24-04-2023', '06:26:53 am'),
(141, '66.249.70.119', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '25-04-2023', '06:39:23 am'),
(142, '66.249.70.102', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '28-04-2023', '03:20:05 am'),
(143, '49.44.81.132', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Chrome', 'Computer', '29-04-2023', '01:24:22 am'),
(144, '172.58.61.132', 'United States', 'Aurora', '80012.', 'America/Denver.', 'Colorado', 'T-Mobile USA, Inc.', 'Android', 'Chrome', 'Mobile', '29-04-2023', '01:25:30 am'),
(145, '103.171.247.143', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '29-04-2023', '01:26:18 am'),
(146, '66.249.72.89', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '29-04-2023', '07:55:52 am'),
(147, '146.196.47.169', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '29-04-2023', '21:58:43 pm'),
(148, '146.196.47.169', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '30-04-2023', '08:07:05 am'),
(149, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '30-04-2023', '14:54:44 pm'),
(150, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '30-04-2023', '22:54:28 pm'),
(151, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '30-04-2023', '22:56:53 pm'),
(152, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '01-05-2023', '10:14:17 am'),
(153, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '01-05-2023', '13:19:23 pm'),
(154, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '01-05-2023', '14:58:52 pm'),
(155, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '01-05-2023', '14:59:31 pm'),
(156, '2a03:2880:20ff:c::face:b00c', 'United States', 'Ashburn', '20149.', 'America/New_York.', 'Virginia', 'Facebook, Inc.', 'Windows XP', 'Firefox', 'Computer', '01-05-2023', '15:48:04 pm'),
(157, '2a03:2880:22ff:75::face:b00c', 'United States', 'Sandston', '23150.', 'America/New_York.', 'Virginia', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '01-05-2023', '15:48:42 pm'),
(158, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '01-05-2023', '23:01:05 pm'),
(159, '2402:3a80:4140:c6c8:9781:90e1:c392:376', 'India', 'Shantipur', '741404.', 'Asia/Kolkata.', 'West Bengal', 'Vodafone Idea Ltd.', 'Android', 'Chrome', 'Mobile', '01-05-2023', '23:01:08 pm'),
(160, '2a03:2880:12ff:15::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '02-05-2023', '07:50:58 am'),
(161, '66.249.73.95', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '02-05-2023', '08:05:14 am'),
(162, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '03-05-2023', '23:01:02 pm'),
(163, '2401:4900:3fba:5999:f06a:80ff:fe92:a9f7', 'India', 'Siliguri', '734014.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Tablet', '04-05-2023', '21:25:26 pm'),
(164, '66.249.70.112', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '06-05-2023', '13:24:52 pm'),
(165, '66.249.70.112', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '06-05-2023', '13:24:53 pm'),
(166, '66.249.66.83', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '06-05-2023', '20:38:54 pm'),
(167, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '07-05-2023', '01:40:18 am'),
(168, '146.196.47.135', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '07-05-2023', '01:40:18 am'),
(169, '2409:4064:2205:6ba6::1680:c8b0', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '07-05-2023', '06:43:29 am'),
(170, '2a03:2880:3ff:78::face:b00c', 'United States', 'Eagle Mountain', '84005.', 'America/Denver.', 'Utah', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '07-05-2023', '22:34:33 pm'),
(171, '2409:4061:11:e43b::1734:c0a0', 'India', 'Kolkata', '700049.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '07-05-2023', '22:35:33 pm'),
(172, '2409:4061:11:e43b::1734:c0a0', 'India', 'Kolkata', '700049.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '07-05-2023', '22:39:00 pm'),
(173, '66.249.66.11', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '10-05-2023', '03:05:41 am'),
(174, '2401:4900:3a16:2ef3:b80:9279:785d:1c00', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Ltd', 'Linux', 'Chrome', 'Computer', '12-05-2023', '08:41:30 am'),
(175, '66.249.66.64', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '15-05-2023', '07:47:48 am'),
(176, '2a03:2880:12ff:d::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '20-05-2023', '07:46:00 am'),
(177, '66.249.66.42', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '20-05-2023', '19:34:49 pm'),
(178, '66.249.66.12', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '20-05-2023', '19:34:50 pm'),
(179, '157.55.39.211', 'United States', 'Quincy', '98848.', 'America/Los_Angeles.', 'Washington', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '21-05-2023', '03:40:45 am'),
(180, '103.211.20.240', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '21-05-2023', '20:15:27 pm'),
(181, '103.211.20.240', 'India', 'Kolkata', '700028.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '22-05-2023', '20:31:56 pm'),
(182, '2a03:2880:13ff:1b::face:b00c', 'United States', 'Springfield', '68059.', 'America/Chicago.', 'Nebraska', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '26-05-2023', '01:07:09 am'),
(183, '103.171.247.165', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Tablet', '26-05-2023', '01:07:19 am'),
(184, '103.171.247.165', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '26-05-2023', '01:07:30 am'),
(185, '103.171.247.165', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Tablet', '26-05-2023', '01:08:06 am'),
(186, '103.171.247.165', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '26-05-2023', '01:11:44 am'),
(187, '2402:3a80:117b:20f8:86a2:917b:ca88:7550', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Vodafone Idea Ltd.', 'Android', 'Chrome', 'Tablet', '26-05-2023', '12:44:50 pm'),
(188, '66.249.66.34', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '27-05-2023', '08:17:11 am'),
(189, '40.77.167.91', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '29-05-2023', '11:32:50 am'),
(190, '66.249.66.6', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '01-06-2023', '11:18:47 am'),
(191, '66.249.66.70', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '01-06-2023', '11:18:48 am'),
(192, '2409:4061:4e93:3e86:bdd7:d996:d2d8:c98d', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Firefox', 'Computer', '02-06-2023', '14:01:08 pm'),
(193, '2409:4061:4e93:3e86:bdd7:d996:d2d8:c98d', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Firefox', 'Computer', '02-06-2023', '14:08:23 pm'),
(194, '40.77.167.91', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '07-06-2023', '01:44:29 am'),
(195, '103.175.168.152', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-06-2023', '07:57:18 am'),
(196, '49.44.81.166', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '08-06-2023', '07:57:20 am'),
(197, '103.175.168.152', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-06-2023', '07:57:23 am'),
(198, '172.58.63.216', 'United States', 'Denver', '80204.', 'America/Denver.', 'Colorado', 'T-Mobile USA, Inc.', 'Android', 'Chrome', 'Mobile', '08-06-2023', '07:58:25 am'),
(199, '2a03:2880:12ff:c::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '09-06-2023', '11:25:47 am'),
(200, '66.249.66.161', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '13-06-2023', '09:59:10 am'),
(201, '52.167.144.86', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '15-06-2023', '11:17:37 am'),
(202, '2a03:2880:12ff:76::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '16-06-2023', '09:12:19 am'),
(203, '66.249.70.107', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '16-06-2023', '10:01:57 am'),
(204, '2a03:2880:ff:d::face:b00c', 'United States', 'Prineville', '97754.', 'America/Los_Angeles.', 'Oregon', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '17-06-2023', '14:13:01 pm'),
(205, '103.175.169.86', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Tablet', '17-06-2023', '14:13:01 pm'),
(206, '103.175.169.86', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '17-06-2023', '14:13:10 pm'),
(207, '103.175.169.86', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '17-06-2023', '14:13:20 pm'),
(208, '103.175.169.86', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Tablet', '17-06-2023', '14:13:50 pm'),
(209, '103.175.169.86', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Android', 'Chrome', 'Tablet', '17-06-2023', '14:13:51 pm'),
(210, '2409:40e1:1005:60e4:8000::', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '17-06-2023', '14:13:58 pm'),
(211, '2409:40e1:1005:60e4:8000::', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Tablet', '17-06-2023', '14:13:58 pm'),
(212, '66.249.66.32', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '18-06-2023', '23:59:57 pm'),
(213, '2a03:2880:31ff:2::face:b00c', 'Ireland', 'Clonee', 'A86.', 'Europe/Dublin.', 'Leinster', 'Facebook, Inc.', 'iPhone', 'Safari', 'Mobile', '22-06-2023', '23:59:57 pm'),
(214, '2a03:2880:31ff:1b::face:b00c', 'Ireland', 'Clonee', 'A86.', 'Europe/Dublin.', 'Leinster', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-06-2023', '00:00:47 am'),
(215, '2a03:2880:3ff:2::face:b00c', 'United States', 'Eagle Mountain', '84005.', 'America/Denver.', 'Utah', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-06-2023', '13:43:04 pm'),
(216, '2a03:2880:3ff::face:b00c', 'United States', 'Eagle Mountain', '84005.', 'America/Denver.', 'Utah', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-06-2023', '13:43:04 pm'),
(217, '66.249.66.161', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-06-2023', '15:29:31 pm'),
(218, '40.77.167.171', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '26-06-2023', '00:52:36 am'),
(219, '52.167.144.25', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '26-06-2023', '06:48:35 am'),
(220, '66.249.66.161', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '26-06-2023', '15:25:14 pm'),
(221, '52.167.144.26', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '28-06-2023', '11:46:07 am'),
(222, '2409:40e1:100d:60a5:8000::', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '30-06-2023', '14:52:54 pm'),
(223, '2409:40e1:100d:60a5:8000::', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '30-06-2023', '14:53:24 pm'),
(224, '2409:40e1:100d:60a5:8000::', 'India', 'Siliguri', '734010.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '30-06-2023', '14:53:42 pm'),
(225, '2a03:2880:12ff:78::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '01-07-2023', '08:50:29 am'),
(226, '66.249.66.165', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '02-07-2023', '05:19:09 am'),
(227, '40.77.167.189', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '03-07-2023', '06:07:14 am'),
(228, '2409:40e1:5:a85c:8000::', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '04-07-2023', '18:30:21 pm'),
(229, '2409:40e1:5:a85c:8000::', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '04-07-2023', '20:17:58 pm'),
(230, '2401:4900:3fba:4a18:6092:2dff:fea8:6734', 'India', 'Bankura', '722155.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '06-07-2023', '11:54:58 am'),
(231, '52.167.144.20', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '07-07-2023', '17:46:33 pm'),
(232, '66.249.66.145', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '07-07-2023', '18:04:48 pm'),
(233, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '00:49:33 am'),
(234, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '00:49:33 am'),
(235, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '00:49:36 am'),
(236, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '01:13:28 am'),
(237, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '08:57:17 am'),
(238, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '08-07-2023', '09:00:29 am'),
(239, '66.249.73.69', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '08-07-2023', '23:35:27 pm'),
(240, '49.44.78.233', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '09-07-2023', '21:14:07 pm'),
(241, '172.58.63.172', 'United States', 'Eagle Mountain', '.', 'America/Denver.', 'Utah', 'T-Mobile USA, Inc.', 'Android', 'Chrome', 'Mobile', '09-07-2023', '21:44:20 pm'),
(242, '74.125.212.162', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '10-07-2023', '00:13:26 am'),
(243, '103.170.183.75', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '10-07-2023', '12:26:42 pm'),
(244, '2409:4061:385:e351:2d95:f6a3:a34a:860b', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '10-07-2023', '13:41:52 pm'),
(245, '2409:4061:385:e351:2d95:f6a3:a34a:860b', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '10-07-2023', '13:42:16 pm'),
(246, '2409:4061:385:e351:2d95:f6a3:a34a:860b', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '10-07-2023', '13:42:19 pm'),
(247, '2409:4061:385:e351:2d95:f6a3:a34a:860b', 'India', 'Kolkata', '700059.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '10-07-2023', '13:44:31 pm'),
(248, '66.249.66.204', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Android', 'Chrome', 'Mobile', '11-07-2023', '04:11:57 am'),
(249, '40.77.167.213', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '13-07-2023', '19:58:16 pm'),
(250, '157.55.39.215', 'United States', 'Quincy', '98848.', 'America/Los_Angeles.', 'Washington', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '14-07-2023', '11:38:13 am'),
(251, '2a03:2880:31ff:6::face:b00c', 'Ireland', 'Clonee', 'A86.', 'Europe/Dublin.', 'Leinster', 'Facebook, Inc.', 'Android', 'Chrome', 'Tablet', '15-07-2023', '18:49:50 pm'),
(252, '2a03:2880:25ff:3::face:b00c', 'United States', 'Huntsville', '35895.', 'America/Chicago.', 'Alabama', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '15-07-2023', '18:50:28 pm'),
(253, '2a03:2880:12ff::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '16-07-2023', '05:41:04 am'),
(254, '103.170.183.75', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '16-07-2023', '20:02:06 pm'),
(255, '207.46.13.213', 'United States', 'Quincy', '98848.', 'America/Los_Angeles.', 'Washington', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '16-07-2023', '23:44:32 pm'),
(256, '103.170.183.75', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '17-07-2023', '13:06:31 pm'),
(257, '103.170.183.75', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '17-07-2023', '13:06:32 pm'),
(258, '66.249.66.10', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '18-07-2023', '03:52:38 am'),
(259, '66.249.66.88', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '18-07-2023', '05:11:18 am'),
(260, '66.249.66.8', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '18-07-2023', '05:46:20 am'),
(261, '66.249.66.77', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '21-07-2023', '05:33:39 am'),
(262, '52.167.144.160', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '22-07-2023', '11:57:09 am'),
(263, '66.249.66.84', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '23-07-2023', '02:36:13 am'),
(264, '66.249.66.165', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-07-2023', '13:33:00 pm'),
(265, '66.249.66.163', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '23-07-2023', '13:33:31 pm'),
(266, '66.249.66.167', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '24-07-2023', '09:47:58 am'),
(267, '103.211.133.71', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '24-07-2023', '13:51:40 pm'),
(268, '103.211.133.71', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '24-07-2023', '13:52:48 pm'),
(269, '2a03:2880:21ff:16::face:b00c', 'United States', 'Forest City', '28043.', 'America/New_York.', 'North Carolina', 'Facebook, Inc.', 'Android', 'Chrome', 'Mobile', '25-07-2023', '01:02:30 am'),
(270, '2a03:2880:13ff:71::face:b00c', 'United States', 'Springfield', '68059.', 'America/Chicago.', 'Nebraska', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '25-07-2023', '01:03:11 am'),
(271, '66.249.72.163', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '25-07-2023', '17:23:40 pm'),
(272, '66.249.72.164', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '26-07-2023', '00:42:49 am'),
(273, '66.249.72.167', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '26-07-2023', '12:45:33 pm');
INSERT INTO `usr_details` (`VisitorId`, `UserIp`, `Country`, `CityName`, `Zip_Code`, `TimeZone`, `Region_Name`, `Isp`, `UserOs`, `User_Browser`, `User_Device`, `Date`, `Time`) VALUES
(274, '66.249.73.129', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Android', 'Chrome', 'Mobile', '27-07-2023', '03:01:26 am'),
(275, '66.249.73.129', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '27-07-2023', '07:59:08 am'),
(276, '40.77.167.206', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '27-07-2023', '17:47:52 pm'),
(277, '66.249.66.2', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Android', 'Chrome', 'Mobile', '27-07-2023', '21:14:43 pm'),
(278, '66.249.66.72', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '28-07-2023', '05:17:20 am'),
(279, '2a03:2880:12ff:74::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '31-07-2023', '03:59:16 am'),
(280, '52.167.144.124', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '02-08-2023', '17:21:06 pm'),
(281, '2409:40e1:29:d9a5:c43e:6dff:fe42:831c', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '03-08-2023', '19:41:44 pm'),
(282, '103.135.229.169', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '03-08-2023', '19:41:54 pm'),
(283, '103.135.229.169', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '03-08-2023', '19:42:21 pm'),
(284, '103.135.228.235', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '04-08-2023', '22:45:27 pm'),
(285, '40.77.167.248', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '05-08-2023', '09:00:33 am'),
(286, '103.135.228.235', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '05-08-2023', '10:39:00 am'),
(287, '103.135.228.235', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '05-08-2023', '11:24:27 am'),
(288, '103.135.228.235', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '05-08-2023', '11:24:32 am'),
(289, '2405:201:9009:a5:f9d2:8de2:8c99:5aea', 'India', 'Asansol', '713325.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '05-08-2023', '11:25:34 am'),
(290, '2409:40e1:f:89f8:8000::', 'India', 'Durgapur', '713212.', 'Asia/Kolkata.', 'West Bengal', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '05-08-2023', '13:34:21 pm'),
(291, '2401:4900:72ae:8aa9:b0b7:af49:676:4efe', 'India', 'Kolkata', '700014.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '06-08-2023', '07:27:46 am'),
(292, '2a03:2880:10ff:c::face:b00c', 'United States', 'Altoona', '50009.', 'America/Chicago.', 'Iowa', 'Facebook, Inc.', 'Android', 'Chrome', 'Tablet', '08-08-2023', '00:34:12 am'),
(293, '2a03:2880:24ff:78::face:b00c', 'United States', 'Social Circle', '30025.', 'America/New_York.', 'Georgia', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '08-08-2023', '00:34:53 am'),
(294, '52.167.144.97', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '09-08-2023', '22:40:37 pm'),
(295, '52.167.144.97', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '10-08-2023', '10:33:22 am'),
(296, '103.170.182.164', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '11-08-2023', '01:37:05 am'),
(297, '49.44.85.40', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Windows 10', 'Chrome', 'Computer', '11-08-2023', '01:37:07 am'),
(298, '35.203.255.10', 'United States', 'Mountain View', '94043.', 'America/Los_Angeles.', 'California', 'Google LLC', 'Mac OS X', 'Chrome', 'Computer', '11-08-2023', '01:37:19 am'),
(299, '103.170.182.164', 'India', 'Kolkata', '700036.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Linux', 'Chrome', 'Computer', '11-08-2023', '01:37:54 am'),
(300, '172.59.96.43', 'United States', 'Milwaukee', '53237.', 'America/Chicago.', 'Wisconsin', 'T-Mobile USA, Inc.', 'Android', 'Chrome', 'Mobile', '11-08-2023', '01:38:35 am'),
(301, '2409:40e1:1e:399e:3c51:15ff:fe2c:ea0a', 'India', 'Port Blair', '744107.', 'Asia/Kolkata.', 'Andaman and Nicobar', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '13-08-2023', '22:17:20 pm'),
(302, '2409:40e1:1e:399e:60ef:4cff:fe66:b280', 'India', 'Port Blair', '744107.', 'Asia/Kolkata.', 'Andaman and Nicobar', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '14-08-2023', '00:10:13 am'),
(303, '2409:40e1:1e:399e:60ef:4cff:fe66:b280', 'India', 'Port Blair', '744107.', 'Asia/Kolkata.', 'Andaman and Nicobar', 'Reliance Jio Infocomm Limited', 'Android', 'Chrome', 'Mobile', '14-08-2023', '00:10:21 am'),
(304, '2401:4900:3f9e:9937:a972:fb9:19e3:3712', 'India', 'Bankura', '722206.', 'Asia/Kolkata.', 'West Bengal', 'Bharti Airtel Limited', 'Android', 'Chrome', 'Mobile', '14-08-2023', '10:40:08 am'),
(305, '66.249.66.168', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Android', 'Chrome', 'Mobile', '14-08-2023', '11:30:19 am'),
(306, '66.249.66.166', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '14-08-2023', '11:30:24 am'),
(307, '66.249.66.161', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '14-08-2023', '11:57:52 am'),
(308, '66.249.66.161', 'United States', 'Clearwater', '33761.', 'America/New_York.', 'Florida', 'Google LLC', 'Android', 'Chrome', 'Mobile', '14-08-2023', '11:58:01 am'),
(309, '20.15.240.105', 'United States', 'Des Moines', '50309.', 'America/Chicago.', 'Iowa', 'Microsoft Corporation', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '17-08-2023', '10:04:46 am'),
(310, '157.55.39.216', 'United States', 'Quincy', '98848.', 'America/Los_Angeles.', 'Washington', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '20-08-2023', '13:50:12 pm'),
(311, '52.167.144.238', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '22-08-2023', '12:17:59 pm'),
(312, '160.238.92.238', 'India', 'Kolkata', '700006.', 'Asia/Kolkata.', 'West Bengal', 'Gtpl Kcbpl Broadband PVT LTD', 'Windows 10', 'Chrome', 'Computer', '23-08-2023', '00:33:32 am'),
(313, '2a03:2880:12ff:7::face:b00c', 'United States', 'Los Lunas', '87031.', 'America/Denver.', 'New Mexico', 'Facebook, Inc.', 'Unknown OS Platform', 'Unknown Browser', 'Computer', '23-08-2023', '06:20:06 am'),
(314, '52.167.144.29', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '26-08-2023', '01:16:13 am'),
(315, '40.77.167.65', 'United States', 'Boydton', '23917.', 'America/New_York.', 'Virginia', 'Microsoft Corporation', 'Unknown OS Platform', 'Chrome', 'Computer', '27-08-2023', '11:59:36 am'),
(316, '2409:4088:9c07:81aa:6cda:4ef2:2abc:74aa', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '27-08-2023', '14:01:39 pm'),
(317, '2409:4088:9c07:81aa:6cda:4ef2:2abc:74aa', 'India', 'Navi Mumbai', '400701.', 'Asia/Kolkata.', 'Maharashtra', 'Reliance Jio Infocomm Limited', 'Linux', 'Chrome', 'Computer', '27-08-2023', '14:02:57 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usr_details`
--
ALTER TABLE `usr_details`
  ADD PRIMARY KEY (`VisitorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usr_details`
--
ALTER TABLE `usr_details`
  MODIFY `VisitorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
