-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 04:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elbriall_elbrit_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `employee_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_employee_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile_no`, `team_id`, `employee_code`, `designation`, `hq`, `manager_employee_code`, `doj`, `dob`, `created_at`, `updated_at`) VALUES
(7, 'DineshKumar.J', 'dinesh3190@gmail.com', '+919789668846', 7, 'E00482', 'BE', 'Chennai', 'R.Chandra kumar', '2022-02-03', '1990-01-03', '2022-07-03 01:18:02', '2022-07-27 11:45:59'),
(8, 'Mohammed Rafi Shaik', 'mdrafi2525@gmail.com', '+917032954786', 10, 'E00525', 'RBM', 'Hyderabad', 'HO', '2022-07-06', '1983-08-14', '2022-07-09 04:12:00', '2022-07-22 14:31:33'),
(9, 'Mohammed Abdul Naseem', 'manaseem_003@yahoo.com', '+919395320725', 10, 'E00375', 'ABM', 'Hyderabad', 'Mohammed Rafi Shaik', '2021-03-15', '1984-06-12', '2022-07-09 04:33:20', '2022-07-27 16:19:28'),
(10, 'Makala Sudhakar Yadav', 'sudhakar.msy@gmail.com', '+919398166624', 10, 'E00450', 'BE', 'Hyderabad', 'Mohammed Abdul Naseem', '2021-11-01', '1985-07-15', '2022-07-09 04:39:14', '2022-07-22 16:16:56'),
(11, 'Mohammed Mujeeb', 'mujeebmohammed137@gmail.com', '+919052650239', 10, 'E00218', 'BE', 'Hyderabad', 'Mohammed Abdul Naseem', '2019-09-05', '1986-04-29', '2022-07-09 04:58:08', '2022-07-22 16:22:05'),
(12, 'M.Prashanth Goud', 'munimandaprashanth@gmail.com', '+919849400418', 10, 'E00381', 'BE', 'Mehaboob Nagar', 'Mohammed Abdul Naseem', '2021-04-06', NULL, '2022-07-09 04:59:52', '2022-07-22 16:22:52'),
(13, 'Pillala Shaikshavali', 'shaikshavali1978@gmail.com', '+917032655445', 10, 'E00464', 'ABM', 'Kurnool', 'Mohammed Rafi Shaik', '2021-12-13', '1986-08-12', '2022-07-09 05:00:56', '2022-07-27 16:30:14'),
(14, 'Epperu Mansoor Ali', 'mnali4803@gmail.com', '+919030134803', 10, 'E00510', 'BE', 'Anantapur', 'Pillala Shaikshavali', '2022-06-04', '1996-04-06', '2022-07-09 05:01:56', '2022-07-22 16:27:56'),
(15, 'N.Md Azharuddin', 'nazar4248@gmail.com', '+918374103883', 10, 'E00465', 'BE', 'Kurnool', 'Pillala Shaikshavali', '2001-12-15', '1995-06-20', '2022-07-09 05:03:00', '2022-07-22 16:28:10'),
(16, 'Gaurav Kumar', 'gauravcpmr@gmail.com', '+918860744662', 15, 'E00412', 'RBM', 'Delhi', 'HO', '2021-07-13', '1988-12-25', '2022-07-09 05:04:47', '2022-07-22 16:28:37'),
(17, 'Vansh Arora', 'aroravansh86@gmail.com', '+919856008686', 13, 'E00239', 'RBM', 'CHANDIGARGH', 'HO', '2019-11-06', '1986-09-02', '2022-07-09 05:05:51', '2022-07-22 16:29:09'),
(18, 'Anand Mohan', 'mohananandrs@gmail.com', '+919988425768', 13, 'E00432', 'ABM', 'Amritsar', 'Vansh Arora', '2021-09-04', '1978-04-27', '2022-07-09 05:07:34', '2022-07-22 16:29:40'),
(19, 'Guruprashad Singh', 'simarpreet0090@gmail.com', '+919517392625', 13, 'E00488', 'BE', 'Amritsar', 'Vacant Anand Mohan', '2021-03-03', '1996-10-22', '2022-07-09 05:13:48', '2022-07-27 16:42:08'),
(20, 'Navjot Sharma', 'navjot.sharma1324@gmail.com', '+917837343163', 13, 'E00437', 'BE', 'JALANDHAR', 'Vacant_Anand Mohan', '2021-09-25', '1992-06-24', '2022-07-09 05:15:33', '2022-07-27 16:43:57'),
(21, 'Gaurav Guleria', 'gauravguleria22@gmail.com', '+917986814919', 13, 'E00274', 'ABM', 'CHANDIGARGH', 'Vansh Arora', '2020-02-17', '1992-02-14', '2022-07-09 05:16:55', '2022-07-27 11:58:29'),
(22, 'Ajay Chauhan', 'chauhan.ajay1982@gmail.com', '+917018491809', 13, 'E00523', 'BE', 'Mandi', 'Gaurav Guleria', '2022-06-22', '1982-04-07', '2022-07-09 05:18:00', '2022-07-27 16:46:26'),
(23, 'Harsh kumar thakur', 'harshlavithakur@gmail.com', '+919888096115', 13, 'E00524', 'BE', 'Mohali', 'Gaurav Guleria', '2022-07-01', '1993-02-07', '2022-07-09 05:19:41', '2022-07-27 16:47:50'),
(24, 'Abhishek Kumar', 'Abhipoonia26@gmail.com', '+917206118482', 13, 'E00504', 'BE', 'Panchkula', 'Gaurav Guleria', '2021-07-22', '1991-07-24', '2022-07-09 05:20:42', '2022-07-27 16:49:27'),
(25, 'Praveen Kumar Sharma', 'praveens4u@rediff.com', '+918561002733', 14, 'E00277', 'RBM', 'Jaipur', 'HO', '2020-02-18', '1974-08-02', '2022-07-09 05:23:18', '2022-07-27 12:05:10'),
(27, 'Sanjay Kumar Tailor', 'tailorsanjay14@gmail.com', '+919462647345', 14, 'E00435', 'ABM', 'Jaipur', 'Praveen Kumar Sharma', '2021-09-14', '1989-07-14', '2022-07-09 05:27:55', '2022-07-27 12:05:59'),
(28, 'Avdesh Dixit', 'avdheshd147@gmail.com', '+919193893052', 14, 'E00516', 'BE', 'Siker', 'Sanjay Kumar Tailor', '2022-06-08', '1997-02-08', '2022-07-09 05:34:12', '2022-07-27 12:07:13'),
(29, 'Ratan Lal Patel', 'ratanlalp@gmail.com', '+919828911532', 14, 'E00458', 'ABM', 'Jodhpur', 'Praveen Kumar Sharma', '2021-11-15', '1985-06-11', '2022-07-09 05:35:43', '2022-07-22 14:50:39'),
(30, 'Nishant Gehlot', 'chitu183@gmail.com', '+919602377723', 14, 'E00526', 'BE', 'Jodhpur', 'Ratan Lal Patel', '2022-07-02', '1992-03-18', '2022-07-09 05:36:50', '2022-07-22 14:51:03'),
(31, 'Mahesh Chouhan', 'mahesh.chouhan2223@gmail.com', '+918619991036', 14, 'E00337', 'BE', 'Jodhpur', 'Ratan Lal Patel', '2020-11-07', '1993-03-14', '2022-07-09 05:38:40', '2022-07-27 12:10:31'),
(32, 'Mohan Lal', 'sssmohansa36@gmail.com', '+918432171525', 14, 'E00509', 'BE', 'Udaipur', 'Ratan Lal Patel', '2022-06-06', '1996-10-17', '2022-07-09 05:39:29', '2022-07-27 12:11:16'),
(33, 'Sanjeev Kumar Prajapati', 'sanjeev.babloo87@gmail.com', '+919019040874', 16, 'E00170', 'RBM', 'lucknow', 'HO', '2018-12-19', '1990-12-16', '2022-07-09 05:40:22', '2022-07-27 12:11:35'),
(34, 'Suresh . R', 'rsuresh@elbrit.org', '+919842382853', 4, 'E00006', 'SM', 'Coimbatore', 'HO', '2014-04-01', '1982-03-23', '2022-07-09 05:43:31', '2022-07-27 12:12:27'),
(35, 'Vinothkumar .R', 'vinoth.sabarish@gmail.com', '+917010323677', 4, 'E00010', 'RBM', 'Coimbatore', 'HO', '2014-04-01', '1985-04-07', '2022-07-09 05:44:20', '2022-07-27 12:12:48'),
(36, 'Ganesh Babu . J P', 'GANESHBABUJP@YAHOO.COM', '+919597687254', 4, 'E00014', 'ABM', 'Coimbatore', 'Vinothkumar .R', '2014-04-01', '1988-09-14', '2022-07-09 05:45:26', '2022-07-27 12:14:12'),
(37, 'T.Sankar Ganesh', 'tsankarr1986@gmail.com', '+918220566260', 4, 'E00518', 'BE', 'Coimbatore', 'Ganesh Babu . J P', '2022-06-03', '1986-06-09', '2022-07-09 05:47:04', '2022-07-27 16:59:29'),
(38, 'Dharun Raj. R', 'dharunsumathi@gmail.com', '+918940767006', 4, 'E00366', 'BE', 'Erode', 'Ganesh Babu . J P', '2021-02-02', '1999-06-02', '2022-07-09 05:53:50', '2022-07-27 12:18:17'),
(39, 'Nandhakumar .V', 'vnnandhakumar@gmail.com', '+919677829992', 4, 'E00102', 'BE', 'Salem', 'Ganesh Babu . J P', '2016-04-08', '1987-07-13', '2022-07-09 05:54:48', '2022-07-27 12:18:56'),
(40, 'Naresh . G', 'nareshmba4186@gmail.com', '+919786618880', 4, 'E00121', 'BE', 'Salem', 'Ganesh Babu . J P', '2017-01-03', '1986-01-04', '2022-07-09 05:56:05', '2022-07-27 12:20:13'),
(41, 'C.P.Balaji', 'balaji.cp84@gmail.com', '+919994365763', 4, 'E00346', 'ABM', 'Madurai', 'Vinothkumar .R', '2020-12-03', '1984-05-03', '2022-07-09 05:57:41', '2022-07-27 12:20:56'),
(42, 'Velraj.S', 'svelrajrj632@gmail.com', '+919940212601', 4, 'E00211', 'BE', 'Madurai', 'C.P.Balaji', '2019-08-02', '1987-06-03', '2022-07-09 05:58:38', '2022-07-27 12:21:40'),
(43, 'Ranjit Kumar.S', 'cranjit11@ymail.com', '+919043759447', 4, 'E00223', 'BE', 'Madurai', 'C.P.Balaji', '2019-09-12', '1983-11-27', '2022-07-09 05:59:27', '2022-07-27 12:22:13'),
(44, 'Mohammed haniff', 'mohamedhaniff2008@gmail.com', '+919655261543', 4, 'E00459', 'BE', 'Tirunelveli', 'C.P.Balaji', '2021-12-04', '1988-07-23', '2022-07-09 06:00:26', '2022-07-27 12:22:58'),
(45, 'J.Jaheer Ahamed', 'jjahamed77@yahoo.co.in', '+919965471146', 4, 'E00353', 'ABM', 'Trichy', 'Vinothkumar .R', '2020-12-21', '1977-05-16', '2022-07-09 06:01:14', '2022-07-27 12:24:03'),
(46, 'Murugan . P', 'murugan03p@gmail.com', '+919894996498', 4, 'E00096', 'BE', 'Tanjore', 'J.Jaheer Ahamed', '2016-03-10', '1982-06-03', '2022-07-09 06:02:00', '2022-07-27 12:24:48'),
(47, 'Ram kumar paramasivam', 'p.ram1789@yahoo.com', '+919994256743', 4, 'E00333', 'BE', 'Tanjore', 'J.Jaheer Ahamed', '2020-10-21', '1989-07-01', '2022-07-09 06:03:05', '2022-07-27 12:25:14'),
(48, 'K.Manivannan', 'manivannank17@gmail.com', '+918012923780', 4, 'E00301', 'BE', 'Trichy', 'J.Jaheer Ahamed', '2020-07-08', '1987-01-03', '2022-07-09 06:04:26', '2022-07-27 12:26:25'),
(49, 'Abhishek Kumar Shukla', 'sabhi335@gmail.com', '+917338770910', 16, 'E00416', 'BE', 'Allahabad', 'Sanjeev Kumar Prajapati', '2021-07-22', '1991-07-24', '2022-07-09 06:09:04', '2022-07-22 14:53:46'),
(50, 'Tahzibul Hasan (E00424)', 'tahzibul_hasan@yahoo.com', '+918933035059', 16, 'E00424', 'BE', 'Varanasi', 'Sanjeev Kumar Prajapati', '2021-08-09', '1991-01-01', '2022-07-09 06:10:04', '2022-07-22 14:54:44'),
(51, 'Santosh Prasad Prajapati', 'santoshpharma2@gmail.com', '+919980693544', 16, 'E00175', 'BE', 'Varanasi', 'Sanjeev Kumar Prajapati', '2018-12-19', '1990-12-16', '2022-07-09 06:10:51', '2022-07-22 14:55:03'),
(52, 'Abhikesh Chauhan', 'abhikeshchauhan@gmail.com', '+919455280009', 16, 'E00505', 'BE', 'lucknow', 'Sanjeev Kumar Prajapati', '2022-05-09', '1984-04-30', '2022-07-09 06:12:49', '2022-07-22 14:55:30'),
(53, 'Sakthivel . V S', 'sakthivel@elbrit.org', '+919943666322', 5, 'E00045', 'RBM', 'Chennai', 'HO', '2015-04-06', '1981-07-24', '2022-07-09 06:13:55', '2022-07-22 14:59:18'),
(54, 'Kamesh . S', 'kamesh25021987@gmail.com', '+917338707366', 5, 'E00069', 'ABM', 'Chennai', 'Sakthivel . V S', '2015-07-08', '1987-02-26', '2022-07-09 06:14:42', '2022-07-22 14:58:49'),
(55, 'Althaf Hussian.F', 'althafirfan07@gmail.com', '+919940155384', 5, 'E00453', 'BE', 'Chennai', 'Kamesh . S', '2021-11-08', '1992-08-09', '2022-07-09 06:15:45', '2022-07-27 12:33:30'),
(56, 'S.Manikandan', 'smanikandan0215@gmail.com', '+919789006517', 5, 'E00330', 'BE', 'Chennai', 'Kamesh . S', '2020-10-14', '1995-07-02', '2022-07-09 06:18:21', '2022-07-27 12:34:10'),
(57, 'Suresh.V', 'kvsureshmba@gmail.com', '+919047717229', 5, 'E00507', 'BE', 'Kancheepuram', 'Kamesh . S', '2022-05-13', '1982-05-25', '2022-07-09 06:19:42', '2022-07-27 12:35:07'),
(58, 'Satish Kumar . M', 'm.sathish_12@yahoo.com', '+919994461472', 5, 'E00122', 'BE', 'Vellore', 'Kamesh . S', '2017-01-05', '1982-09-12', '2022-07-09 06:20:47', '2022-07-27 12:35:45'),
(59, 'A Sivaramkumar', 'umeshkumara2018@gmail.com', '+918939842421', 5, 'E00142', 'ABM', 'Chennai', 'Sakthivel . V S', '2018-07-02', NULL, '2022-07-09 06:21:25', '2022-07-27 12:36:59'),
(60, 'P.Bala Prakash', 'bprakash832@gmail.com', '+918438401107', 5, 'E00399', 'BE', 'Chennai', 'A Sivaramkumar', '2021-07-02', '1993-05-03', '2022-07-09 06:22:09', '2022-07-22 15:01:59'),
(61, 'G.Balaji', 'balajiran228@gmail.com', '+919841450604', 5, 'E00421', 'BE', 'Chennai', 'A Sivaramkumar', '2021-08-06', '1996-03-06', '2022-07-09 06:22:57', '2022-07-27 12:39:07'),
(62, 'Velmani', 'velmanisakkarai@gmail.com', '+919043734270', 5, 'E00378', 'BE', 'Cuddalore', 'A Sivaramkumar', '2021-04-05', '1986-05-03', '2022-07-09 06:23:56', '2022-07-27 12:39:38'),
(63, 'M.Muthu', 'pearlmax87@gmail.com', '+919176775990', 5, 'E00252', 'ABM', 'Chennai', 'Sakthivel . V S', '2019-12-02', '1987-09-08', '2022-07-09 06:24:42', '2022-07-27 12:40:28'),
(64, 'Varadharajan', 'varadharajan385@gmail.com', '+919941817050', 5, 'E00376', 'BE', 'Chennai', 'M.Muthu', '2021-04-02', '1992-05-22', '2022-07-09 06:25:35', '2022-07-27 12:41:08'),
(65, 'E.Aravindakumar', 'aravind8d28@gmail.com', '+919087755561', 5, 'E00521', 'BE', 'Chennai', NULL, '2022-06-15', '1995-07-08', '2022-07-09 06:31:16', '2022-07-09 06:31:16'),
(66, 'Prasanna . G', 'gprasannag7@gmail.com', '+919884945288', 5, 'E00124', 'BE', 'Chennai', 'M.Muthu', '2017-06-07', '1987-10-20', '2022-07-09 06:33:39', '2022-07-27 12:42:45'),
(67, 'A.Ragul', 'rahullnish@yahoo.in', '+919080555693', 5, 'E00319', 'BE', 'Pondicherry', 'M.Muthu', '2020-10-01', '1989-10-06', '2022-07-09 06:34:33', '2022-07-27 12:43:11'),
(68, 'Janardhanan . A', 'janardhanan@elbrit.org', '+919003806455', 11, 'E00004', 'SM', 'Coimbatore', 'HO', '2021-07-13', '1981-04-12', '2022-07-09 06:35:50', '2022-07-27 13:45:15'),
(69, 'A.Bala Abirama Subramaniam', 'abalamuthu@gmail.com', '+919445842020', 12, 'E00411', 'RBM', 'Chennai', 'HO', '2021-07-13', '1981-04-12', '2022-07-09 06:36:42', '2022-07-22 15:03:44'),
(70, 'Anand . B', 'anandmoen@gmail.com', '+916379823482', 12, 'E00131', 'ABM', 'Chennai', 'A.Bala Abirama Subramaniam', '2017-11-20', '1988-08-10', '2022-07-09 06:37:24', '2022-07-27 12:46:33'),
(71, 'L.Muthazhagan', 'l.muthazhagan@gmail.com', '+918807802821', 12, 'E00417', 'BE', 'Chennai', 'Anand . B', '2021-07-23', '1994-08-12', '2022-07-09 06:38:07', '2022-07-27 13:47:00'),
(72, 'K.BALAVIGNESH', 'BALAVIGNESHSTRIDES@GMAIL.COM', '+919940514904', 12, 'E00191', 'ABM', 'Chennai', 'A.Bala Abirama Subramaniam', '2019-07-02', '1992-10-30', '2022-07-09 06:38:51', '2022-07-27 13:48:12'),
(73, 'S.Ganesan', 'Ganesan15031999@gmail.com', '+917358341224', 12, 'E00466', 'BE', 'Chennai', 'K.BALAVIGNESH', '2021-12-14', '1999-03-15', '2022-07-09 06:39:34', '2022-07-27 13:49:06'),
(74, 'Saravanan.S', 'spikesaravanan@gmail.com', '+919626120904', 12, 'E00448', 'BE', 'Vellore', 'K.BALAVIGNESH', '2021-10-18', '1996-04-17', '2022-07-09 06:41:38', '2022-07-27 13:49:30'),
(75, 'Balamurugan . K', 'kbalam82@gmail.com', '+919698754094', 12, 'E00070', 'ABM', 'Cuddalore', 'A.Bala Abirama Subramaniam', '2015-07-08', '1989-01-04', '2022-07-09 06:42:31', '2022-07-27 13:50:22'),
(76, 'K.Paramanathan', 'krishparama0504@gmail.com', '+916374417213', 12, 'E00517', 'BE', 'Cuddalore', 'Balamurugan . K', '2022-06-10', '1994-02-05', '2022-07-09 06:43:10', '2022-07-27 13:51:17'),
(77, 'A.Selvaraj', 'selva_pharmacy@yahoo.com', '+917305818636', 12, 'E00419', 'BE', 'Pondicherry', 'Balamurugan . K', '2021-08-05', '1983-07-24', '2022-07-09 06:43:52', '2022-07-27 13:51:58'),
(78, 'M.Jothi', 'mjothi95@gmail.com', '+919894622441', 12, 'E00410', 'RBM', 'Coimbatore', 'HO', '2021-07-12', '1978-05-09', '2022-07-09 06:44:46', '2022-07-22 15:05:45'),
(79, 'Satheshkumar . M', 'sathesh1986_37@yahoo.co.in', '+918778852127', 11, 'E00033', 'ABM', 'Coimbatore', 'M.Jothi', '2015-04-06', '1986-07-03', '2022-07-09 06:45:33', '2022-07-27 13:53:04'),
(80, 'Athirstan.B', 'athirstan@gmail.com', '+919677886327', 11, 'E00350', 'BE', 'Coimbatore', 'Satheshkumar . M', '2020-12-14', '1994-03-24', '2022-07-09 06:46:22', '2022-07-27 14:00:47'),
(81, 'Rajamanickam.T', 'rajamanickam.deee@gmail.com', '+919698825120', 11, 'E00367', 'BE', 'Erode', 'Satheshkumar . M', '2021-02-04', '1993-07-30', '2022-07-09 06:47:36', '2022-07-27 13:55:57'),
(82, 'Prasath.S', 'prasath0809@gmail.com', '+918838180059', 11, 'E00336', 'BE', 'Salem', 'Satheshkumar . M', '2020-11-09', '1994-07-07', '2022-07-09 06:48:24', '2022-07-27 14:01:44'),
(83, 'S.Saleem Malik', 'malik.bsccs@gmail.com', '+919789631111', 11, 'E00491', 'BE', 'Trichy', 'Vacant_S.Prabhu', '2022-03-15', '1987-10-18', '2022-07-09 06:50:13', '2022-07-27 14:02:38'),
(84, 'S.Mariappan', 'smariappan90@gmail.com', '+917373746306', 11, 'E00520', 'ABM', 'Trichy', 'M.Jothi', '2022-06-16', '1990-04-16', '2022-07-09 06:53:23', '2022-07-27 14:03:39'),
(85, 'M.K Arun Pandiyan', 'arunchand2417.ak@gmail.com', '+919677552417', 11, 'E00508', 'BE', 'Madurai', NULL, '2022-05-05', '1993-03-24', '2022-07-09 06:54:04', '2022-07-09 06:54:04'),
(86, 'B Palanikumar', 'KUMAR.PALANI207@GMAIL.COM', '+919600565334', 6, 'E00164', 'RBM', 'Coimbatore', 'HO', '2018-11-21', NULL, '2022-07-09 06:55:21', '2022-07-22 15:07:04'),
(87, 'Chandrasekar . S', 'scsekar8@yahoo.com', '+919789542429', 6, 'E00032', 'ABM', 'Coimbatore', 'B Palanikumar', '2015-04-06', '1984-02-26', '2022-07-09 06:55:59', '2022-07-27 14:07:43'),
(88, 'Nattu Durai', 'nattubeats@gmail.com', '+919600631092', 6, 'E00236', 'BE', 'Coimbatore', 'Chandrasekar . S', '2019-11-05', '1988-04-03', '2022-07-09 06:56:47', '2022-07-27 14:08:21'),
(89, 'Sathish Kumar . M', 'm.sathish2612@gmail.com', '+919944428941', 6, 'E00130', 'BE', 'Erode', 'Chandrasekar . S', '2017-11-09', '1985-12-26', '2022-07-09 06:57:24', '2022-07-27 14:09:54'),
(90, 'A.Arunagiri', 'arunagirizenith@gmail.com', '+919159149601', 6, 'E00413', 'BE', 'Salem', 'Chandrasekar . S', '2021-07-14', '1988-11-23', '2022-07-09 06:58:43', '2022-07-27 14:11:46'),
(91, 'B.Thangaraj', 'thangarajb777@gmail.com', '+919629374024', 6, 'E00379', 'ABM', 'Madurai', 'B Palanikumar', '2021-04-05', '1986-08-22', '2022-07-09 07:10:08', '2022-07-27 14:12:20'),
(92, 'Senthil . M', 'senram007@gmail.com', '+919994989204', 6, 'E00094', 'BE', 'Madurai', 'B.Thangaraj', '2015-11-02', '1984-04-22', '2022-07-09 07:11:07', '2022-07-27 14:13:28'),
(93, 'A.Iyyappan', 'iyyappansiva21@gmail.com', '+919566525912', 6, 'E00168', 'BE', 'Madurai', 'B.Thangaraj', '2018-12-13', '1990-06-21', '2022-07-09 07:11:55', '2022-07-27 14:13:49'),
(94, 'G.Vijaya Kaliraj', 'gvijaykaliraj@gmail.com', '+919566443355', 6, 'E00497', 'BE', 'Nagercoil', 'B.Thangaraj', '2022-04-18', '1988-04-13', '2022-07-09 07:28:23', '2022-07-27 14:14:20'),
(95, 'Suresh . R', 'SURESHCSINDIAN@GMAIL.COM', '+919894626349', 6, 'E00049', 'ABM', 'Trichy', 'B Palanikumar', '2015-04-06', '1987-07-24', '2022-07-09 07:29:17', '2022-07-22 14:39:57'),
(96, 'S.Karthikeyan', 'karthikeyanselva808@gmail.com', '+916381357608', 6, 'E00511', 'BE', 'Tanjore', 'Suresh . R', '2022-06-06', '1986-04-04', '2022-07-09 07:30:00', '2022-07-27 14:15:29'),
(97, 'P.Iyyappan', 'iyyappankrish55@gmail.com', '+919894860532', 6, 'E00512', 'BE', 'Tanjore', 'Suresh . R', '2022-06-06', '1994-04-12', '2022-07-09 07:30:45', '2022-07-27 14:15:54'),
(98, 'M.Prabakaran', 'prabhu0100@gmail.com', '+919087452203', 6, 'E00486', 'BE', 'Trichy', 'Suresh . R', '2022-02-14', '1991-05-25', '2022-07-09 07:32:30', '2022-07-27 14:16:28'),
(99, 'Vignesh.K', 'bvicky8bba@gmail.com', '+919514737572', 6, 'E00251', 'BE', 'Trichy', 'Suresh . R', '2019-12-05', '1992-05-04', '2022-07-09 07:33:23', '2022-07-27 14:16:59'),
(100, 'K.Selva ganesh', 'selvaganez@gmail.com', '+919092854433', 7, 'E00373', 'RBM', 'Chennai', 'HO', '2021-03-15', '1988-07-01', '2022-07-09 07:34:19', '2022-07-22 15:09:56'),
(101, 'Raja.R', 'rajar03@gmail.com', '+919894419467', 7, 'E00473', 'ABM', 'Chennai', 'K.Selva ganesh', '2022-01-05', '1988-04-03', '2022-07-09 07:35:41', '2022-07-27 14:18:20'),
(102, 'T.Pattumuthu', 'pattumth@gmail.com', '+917418494919', 7, 'E00423', 'BE', 'Chennai', 'Raja.R', '2021-08-09', '1996-06-24', '2022-07-09 07:37:06', '2022-07-27 14:19:11'),
(103, 'N.Rajasekaran', 'rajrajasekaran11@gmail.com', '+919677046234', 7, 'E00495', 'BE', 'Chennai', 'Raja.R', '2022-04-06', '1993-12-10', '2022-07-09 07:37:47', '2022-07-27 14:19:45'),
(104, 'Rajesh Kumar.C', 'rajeshkumarcc2019@gmail.com', '+919738370677', 7, 'E00522', 'BE', 'Vellore', NULL, '2022-06-15', '1995-12-12', '2022-07-09 07:39:15', '2022-07-09 07:39:15'),
(105, 'R.Chandra kumar', 'amudhachandru@gmail.com', '+918189859808', 7, 'E00494', 'ABM', 'Chennai', 'K.Selva ganesh', '2022-04-04', '1984-01-23', '2022-07-09 07:40:08', '2022-07-27 14:21:25'),
(106, 'Diwakar.R', 'diwa147@gmail.com', '+918056211447', 6, 'E00462', 'BE', 'Chennai', NULL, '2021-12-08', '1993-07-14', '2022-07-10 22:47:55', '2022-07-10 22:47:55'),
(108, 'Gopi.K', 'gopi6602@gmail.com', '+919942751556', 7, 'E00208', 'BE', 'Cuddalore', NULL, '2019-07-17', '1985-11-29', '2022-07-10 22:50:06', '2022-07-10 22:50:06'),
(109, 'D.Kamal', 'kamal.kanil82@gmail.com', '+918668072178', 7, 'E00499', 'ABM', 'Chennai', 'K.Selva ganesh', '2022-04-22', '1982-06-05', '2022-07-10 22:50:52', '2022-07-27 14:26:57'),
(110, 'Sundheep.S', 'sundheep28@gmail.com', '+917904629257', 7, 'E00498', 'BE', 'Chennai', 'D.Kamal', '2022-04-18', '1995-11-23', '2022-07-10 23:38:48', '2022-07-27 14:27:58'),
(111, 'Suresh.S', 'sureshappu1991@gmail.com', '+918939784334', 7, 'E00519', 'BE', 'Chennai', NULL, '2022-06-10', '1991-08-30', '2022-07-10 23:39:35', '2022-07-10 23:39:35'),
(113, 'M.Karunakaran', 'kar2kar23@gmail.com', '+919994128085', 7, 'E00212', 'BE', 'Chennai', 'K.Selva ganesh', '2019-08-01', '1988-05-08', '2022-07-11 01:53:38', '2022-07-27 14:32:01'),
(114, 'Sanjay Kumar', 'sanjay.kumar@elbrit.org', '+919844377320', 8, 'E00148', 'SM', 'Bangalore', 'HO', '2018-09-10', NULL, '2022-07-11 01:55:29', '2022-07-27 14:32:48'),
(115, 'Bishnu Charan Behera', 'bishnubehera0@gmail.com', '+918660554341', 8, 'E00422', 'ABM', 'Bangalore', 'Sanjay Kumar', '2021-08-09', '1988-04-01', '2022-07-11 01:58:08', '2022-07-27 15:21:22'),
(116, 'Anjit Kumar Singh', 'anjitkumar973969@gmail.com', '+919739606944', 8, 'E00159', 'BE', 'Bangalore', 'Bishnu Charan Behera', '2018-11-01', NULL, '2022-07-11 02:50:02', '2022-07-27 15:22:20'),
(117, 'Kumar Ranjan', 'kumarranjan1123@gmail.com', '+917975086125', 8, 'E00372', 'BE', 'Bangalore', 'Bishnu Charan Behera', '2021-03-12', '1993-05-12', '2022-07-11 03:05:44', '2022-07-27 15:23:06'),
(118, 'Santosh Kumar', 'Santosh.elbrit@gmail.com', '+919731994984', 8, 'E00442', 'ABM', 'Bangalore', 'Sanjay Kumar', '2021-10-04', '1985-02-15', '2022-07-11 03:06:36', '2022-07-27 15:30:52'),
(119, 'Santosh Kumar Yadav', 'santoshdv31@gmail.com', '+919108310968', 8, 'E00403', 'BE', 'Bangalore', 'Santosh Kumar', '2021-07-05', '1988-07-07', '2022-07-11 03:09:44', '2022-07-27 15:31:36'),
(120, 'Varun.R', 'varunrajan95@gmail.com', '+918553735340', 8, 'E00514', 'BE', 'Bangalore', 'Santosh Kumar', '2022-06-06', '1995-05-30', '2022-07-11 03:41:58', '2022-07-27 15:32:41'),
(121, 'Hemanta Gope', 'vickypnd5@gmail.com', '+919916596549', 8, 'E00374', 'BE', 'Bangalore', 'Santosh Kumar', '2021-03-15', '1986-03-21', '2022-07-11 03:42:47', '2022-07-27 15:34:03'),
(122, 'Mohammed Ibrahim', 'ibrahim91221u@gmail.com', '+918050331123', 8, 'E00451', 'ABM', 'Bellary', 'Sanjay Kumar', '2021-11-06', '1989-10-14', '2022-07-11 03:44:42', '2022-07-27 15:34:48'),
(123, 'Mehaboob Basha', 'mehaboobbasha90@gmail.com', '+918618292312', 8, 'E00384', 'BE', 'Bellary', 'Mohammed Ibrahim', '2021-04-07', '1990-10-30', '2022-07-11 03:45:34', '2022-07-27 15:36:03'),
(124, 'Mohammed Tousif', 'tousif.mahommed76@gmail.com', '+917795952474', 8, 'E00454', 'BE', 'Davangere', 'Mohammed Ibrahim', '2021-11-08', '1991-06-15', '2022-07-11 03:46:11', '2022-07-27 15:36:48'),
(125, 'Mohammed Shafeeq Ali', 'shafeeqali927@gmail.com', '+919008873139', 8, 'E00180', 'BE', 'Gulbarga', 'Mohammed Ibrahim', '2019-05-08', '1985-09-27', '2022-07-11 03:47:00', '2022-07-27 15:37:26'),
(126, 'Hasansab Walikar', 'hasansabw98@gmail.com', '+919158537867', 8, 'E00369', 'ABM', 'GOA', 'Sanjay Kumar', '2021-02-22', '1986-07-22', '2022-07-11 03:47:55', '2022-07-27 15:38:07'),
(127, 'Nasir Husein Madiwale', 'nh7642@gmail.com', '+919964780199', 8, 'E00358', 'BE', 'Belgaum', 'Hasansab Walikar', '2021-01-07', '1987-12-27', '2022-07-11 03:48:43', '2022-07-27 15:39:11'),
(128, 'Saleem hawaladar', 'saleembaig7256@gmail.com', '+919902837256', 8, 'E00515', 'BE', 'Bijapur', NULL, '2022-06-07', '1987-07-31', '2022-07-11 03:49:22', '2022-07-11 03:49:22'),
(129, 'Pulsat Ajay kumar Yadav', 'pulsat23112001@gmail.com', '+919022499200', 8, 'E00480', 'BE', 'GOA', 'Hasansab Walikar', '2020-02-01', '2001-11-23', '2022-07-11 03:50:05', '2022-07-27 15:40:51'),
(130, 'Guruprasad NS', 'gurunet8@gmail.com', '+918867629478', 8, 'E00162', 'ABM', 'Mysore', 'Sanjay Kumar', '2018-11-01', NULL, '2022-07-11 03:50:43', '2022-07-27 15:43:28'),
(131, 'Shrikanth', 'shrikanth.p5793@gmail.com', '+919008844526', 8, 'E00513', 'BE', 'Mangalore', 'Guruprasad NS', '2020-06-06', '1993-07-05', '2022-07-11 03:51:51', '2022-07-27 15:44:11'),
(142, 'Yathish.R', 'yathish.avi07@gmail.com', '+919986647649', 8, 'E00502', 'BE', 'Mysore', 'Guruprasad NS', '2022-05-09', '1991-06-24', '2022-07-22 14:45:03', '2022-07-27 15:44:28'),
(143, 'M.Karthick', 'karticm88@gmail.com', '+918190815535', 7, 'E00390', 'BE', 'Chennai', 'R.Chandra kumar', '2021-04-19', '1988-08-25', '2022-07-22 15:11:55', '2022-07-27 15:45:57'),
(144, 'Sanjay Kumar V K', 'vksanjaynambiar@gmail.com', '+919846775411', 9, 'E00181', 'RBM', 'Kerala', 'HO', '2019-05-15', '1971-04-21', '2022-07-22 15:23:38', '2022-07-27 15:46:15'),
(145, 'Rekesh.CP', 'rekesh49@gmail.com', '+917034428862', 9, 'E00351', 'BE', 'Calicut', NULL, '2020-12-15', '1989-05-22', '2022-07-22 15:27:01', '2022-07-22 15:27:01'),
(146, 'Rajeesh K.H', 'rajeesh4477@gmail.com', '+919562515406', 9, 'E00365', 'BE', 'Kannur', NULL, '2021-02-01', '1991-06-03', '2022-07-22 15:29:40', '2022-07-22 15:29:40'),
(147, 'Sabeesh.T', 'sabeeshtr@gmail.com', '+918943882507', 9, 'E00446', 'BE', 'Manjeri', NULL, '2021-10-11', '1988-01-01', '2022-07-22 15:31:17', '2022-07-22 15:31:17'),
(148, 'Sainudheen.KV', 'sainukv777@gmail.com', '+918157823762', 9, 'E00457', 'ABM', 'Thrissur', 'Sanjay Kumar V K', '2021-11-11', '1982-01-05', '2022-07-22 15:33:58', '2022-07-27 15:49:46'),
(149, 'Hashim.M.H', 'hashim4ashiq@gmail.com', '+919746392352', 9, 'E00182', 'BE', 'ERNAKULAM', 'Sainudheen.KV', '2019-06-07', '1988-05-17', '2022-07-22 15:35:58', '2022-07-27 15:50:51'),
(150, 'Sharafudheen.SB', 'sharaffonduty@gmail.com', '+918281071732', 9, 'E00492', 'BE', 'Palakkad', 'Sainudheen.KV', '2022-03-21', '1992-05-27', '2022-07-22 15:37:56', '2022-07-27 15:52:01'),
(151, 'Sunil Y.C', 'sunilyc19@gmail.com', '+919349981755', 9, 'E00290', 'ABM', 'TRIVANDRUM', 'Sanjay Kumar V K', '2020-03-04', '1983-07-03', '2022-07-22 15:39:56', '2022-07-27 15:53:15'),
(152, 'JiJo Antony', 'jijoantony2009@gmail.com', '+919633921211', 9, 'E00186', 'BE', 'Kollam', 'Sunil Y.C', '2019-06-13', NULL, '2022-07-22 15:41:47', '2022-07-27 15:53:50'),
(153, 'Saji Kumar.P', 'saji.purushothaman@ymail.com', '+919605878665', 9, 'E00506', 'BE', 'THIRUVALLA', 'Sunil Y.C', '2022-05-12', '1981-05-05', '2022-07-22 15:43:41', '2022-07-27 15:54:12'),
(154, 'Ratheesh Kumar S R', 'rksr1987@gmail.com', '+919995926628', 9, 'E00474', 'BE', 'TRIVANDRUM', 'Sunil Y.C', '2022-01-04', '1987-05-03', '2022-07-22 15:45:10', '2022-07-27 15:54:33'),
(155, 'Rejith raj.S', 'rejithrajs@gmail.com', '+919633764451', 9, 'E00185', 'BE', 'TRIVANDRUM', 'Sunil Y.C', '2019-06-07', '1988-05-17', '2022-07-22 15:49:06', '2022-07-27 15:54:49'),
(156, 'Gunjon Roy', 'gunjon.cse@gmail.com', '+8801766609988', 4, '5722', 'Jr. Software Engineer', 'Dhaka', NULL, '2022-07-13', '2022-07-24', '2022-07-23 22:07:25', '2022-07-25 22:36:42'),
(157, 'Hossain M Samrat', 'itsumrat@gmail.com', '+8801586386935', 8, '2345', 'PM', 'fhjj', NULL, '2022-07-26', '2022-07-26', '2022-07-25 23:47:15', '2022-07-26 19:24:43'),
(158, 'Hossain Samrat', 'hmds_333@yahoo.com', '+8801943869105', 5, '15669', 'sadfa', 'safdas', NULL, '2022-07-27', '2022-07-28', '2022-07-26 22:04:33', '2022-07-26 22:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_12_060059_create_teams_table', 1),
(6, '2022_05_12_062626_create_employees_table', 1),
(7, '2022_05_15_110023_create_brand_lists_table', 1),
(8, '2022_05_15_155847_create_posts_table', 1),
(9, '2022_05_15_160104_create_prices_table', 1),
(10, '2022_05_15_160123_create_products_table', 1),
(11, '2022_05_16_105824_create_brands_table', 1),
(12, '2022_08_02_161320_create_notifications_table', 2),
(13, '2022_08_02_173715_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_post` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `details`, `pin_post`, `image`, `video`, `published_at`, `created_at`, `updated_at`) VALUES
(7, 'ftertt', 0, '[\"2022070606510490.jpg\",\"2022070606510489.jpeg\",\"2022070606510487.jpeg\"]', NULL, NULL, '2022-06-30 14:05:53', '2022-07-06 00:51:04'),
(8, 'Hi', 1, '[\"2022070307280322.jpg\"]', NULL, NULL, '2022-07-03 01:28:03', '2022-07-03 01:29:07'),
(9, 'gjkgjgegeggg', 1, '[\"2022070521204125.png\"]', NULL, NULL, '2022-07-05 15:20:41', '2022-07-05 15:21:01'),
(10, 'teryeyerhhrhrh', 0, '[\"2022070521381479.jpeg\"]', NULL, NULL, '2022-07-05 15:38:14', '2022-07-05 15:38:14'),
(11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '[\"2022072619024098.jpg\"]', NULL, NULL, '2022-07-26 23:02:40', '2022-07-26 23:02:40'),
(12, 'Test Wall', 1, '[]', NULL, NULL, '2022-07-27 20:16:48', '2022-07-27 20:16:48'),
(13, 'Test Wall', 1, '[]', NULL, NULL, '2022-07-27 20:23:00', '2022-07-27 20:23:00'),
(14, 'Test Wall', 1, '[]', NULL, NULL, '2022-07-27 20:52:34', '2022-07-27 20:52:34'),
(15, 'Test wall', 1, '[]', NULL, NULL, '2022-07-27 20:57:05', '2022-07-27 20:57:05'),
(16, 'Test wall', 1, '[]', NULL, NULL, '2022-07-27 20:59:09', '2022-07-27 20:59:09'),
(17, 'Test wall', 1, '[]', NULL, NULL, '2022-07-27 21:06:07', '2022-07-27 21:06:07'),
(18, 'Test Wall', 1, '[\"2022072717135145.png\"]', NULL, NULL, '2022-07-27 21:13:51', '2022-07-27 21:13:51'),
(21, 'test', 0, '[\"2022080217103144.png\"]', NULL, NULL, '2022-08-02 11:10:31', '2022-08-02 11:10:31'),
(22, 'dfgdfgdfgdfgdf', 0, '[\"2022080217111491.png\"]', NULL, NULL, '2022-08-02 11:11:14', '2022-08-02 11:11:14'),
(23, 'fgfgdfgfdg', 0, '[\"2022080217115628.png\"]', NULL, NULL, '2022-08-02 11:11:56', '2022-08-02 11:11:56'),
(24, 'test', 0, '[\"2022080217233424.png\"]', NULL, NULL, '2022-08-02 11:23:34', '2022-08-02 11:23:34'),
(25, 'Test', 0, '[\"2022080217472140.png\"]', NULL, NULL, '2022-08-02 11:47:21', '2022-08-02 11:47:21'),
(26, 'Test', 0, '[\"2022080217484039.png\"]', NULL, NULL, '2022-08-02 11:48:40', '2022-08-02 11:48:40'),
(27, 'Test', 0, '[\"2022080217500569.png\"]', NULL, NULL, '2022-08-02 11:50:05', '2022-08-02 11:50:05'),
(28, 'Test', 0, '[\"2022080217551985.png\"]', NULL, NULL, '2022-08-02 11:55:19', '2022-08-02 11:55:19'),
(29, 'test', 0, '[\"2022080218030512.jpg\"]', NULL, NULL, '2022-08-02 12:03:05', '2022-08-02 12:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_employee`
--

CREATE TABLE `post_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_employee`
--

INSERT INTO `post_employee` (`id`, `post_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(10, 8, 7, NULL, NULL),
(11, 12, 156, NULL, NULL),
(12, 13, 156, NULL, NULL),
(13, 14, 156, NULL, NULL),
(14, 15, 156, NULL, NULL),
(15, 16, 156, NULL, NULL),
(16, 17, 156, NULL, NULL),
(17, 18, 156, NULL, NULL),
(20, 21, 8, NULL, NULL),
(21, 22, 10, NULL, NULL),
(22, 23, 11, NULL, NULL),
(23, 25, 9, NULL, NULL),
(24, 26, 9, NULL, NULL),
(25, 27, 9, NULL, NULL),
(26, 28, 9, NULL, NULL),
(27, 29, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_team`
--

CREATE TABLE `post_team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_team`
--

INSERT INTO `post_team` (`id`, `post_id`, `team_id`, `created_at`, `updated_at`) VALUES
(8, 7, 4, NULL, NULL),
(9, 8, 7, NULL, NULL),
(11, 10, 10, NULL, NULL),
(12, 9, 8, NULL, NULL),
(13, 11, 5, NULL, NULL),
(14, 12, 15, NULL, NULL),
(15, 13, 15, NULL, NULL),
(16, 14, 15, NULL, NULL),
(17, 15, 16, NULL, NULL),
(18, 16, 16, NULL, NULL),
(19, 17, 16, NULL, NULL),
(20, 18, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pack` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mrp` double(8,2) DEFAULT NULL,
  `ptr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `brand_name`, `product_name`, `pack`, `mrp`, `ptr`, `pts`, `created_at`, `updated_at`) VALUES
(6, 'ACEBRIT', 'ACEBRIT P', '10', 93.00, '66.43', '59.76', '2022-07-09 04:14:58', '2022-07-25 15:45:12'),
(7, 'BRITVOG', 'BRITVOG M0.3', '15', 138.00, '98.57', '88.71', '2022-07-22 15:53:48', '2022-07-22 15:53:48'),
(8, 'ACEBRIT', 'ACEBRIT P', '10', 93.00, '66.43', '59.79', '2022-07-22 15:56:35', '2022-07-22 15:56:35'),
(9, 'AURAGEST', 'AURAGEST SR 200', '15', 630.00, '450', '405', '2022-07-22 15:58:07', '2022-07-22 15:58:07'),
(10, 'BENISTAR', 'BENISTAR 4', '10', 50.00, '35.71', '32.14', '2022-07-22 16:00:23', '2022-07-22 16:00:23'),
(11, 'BENISTAR', 'BENISTAR 8', '10', 60.00, '42.86', '38.57', '2022-07-22 16:02:06', '2022-07-22 16:02:06'),
(12, 'BRITORVA', 'BRITORVA 10', '15', 90.00, '64.29', '57.86', '2022-07-22 16:03:53', '2022-07-22 16:03:53'),
(13, 'BRITORVA', 'BRITORVA 10F', '15', 220.00, '157.14', '141.43', '2022-07-22 16:05:07', '2022-07-22 16:05:07'),
(14, 'BRITORVA', 'BRITORVA 20', '15', 190.00, '135.71', '122.14', '2022-07-22 16:06:30', '2022-07-22 16:06:30'),
(15, 'BRITORVA', 'BRITORVA 40', '15', 240.00, '171.43', '154.29', '2022-07-22 16:08:09', '2022-07-22 16:08:09'),
(16, 'BRITORVA', 'BRITORVA 80', '15', 275.00, '196.43', '176.79', '2022-07-22 16:09:47', '2022-07-22 16:09:47'),
(17, 'BRITORVA', 'BRITORVA CV 10', '10', 110.00, '78.57', '70.71', '2022-07-22 16:11:28', '2022-07-22 16:11:28'),
(18, 'BRITVIT', 'BRITVIT', '30', 275.00, '196.47', '176.79', '2022-07-22 16:13:12', '2022-07-22 16:13:12'),
(19, 'BRITVOG', 'BRITVOG M0.2', '15', 125.00, '89.29', '80.36', '2022-07-22 16:14:37', '2022-07-27 10:51:21'),
(21, 'BRITVOG', 'BRITVOG 0.2', '15', 120.00, '85.71', '77.14', '2022-07-22 16:19:07', '2022-07-22 16:19:07'),
(22, 'BRITVOG', 'BRITVOG 0.3', '15', 130.00, '92.86', '83.57', '2022-07-22 16:20:38', '2022-07-22 16:20:38'),
(23, 'C 500', 'C 500', '10', 50.00, '33.90', '30.51', '2022-07-22 16:22:42', '2022-07-22 16:22:42'),
(24, 'C FERT', 'C FERT M', '15', 300.00, '214.29', '192.86', '2022-07-22 16:24:43', '2022-07-22 16:24:43'),
(25, 'C FERT', 'CFERT', '15', 370.00, '250.85', '225.76', '2022-07-22 16:27:10', '2022-07-22 16:27:10'),
(26, 'C+ZD', 'C+ZD MAX', '15', 150.00, '101.69', '91.53', '2022-07-22 16:28:20', '2022-07-22 16:28:20'),
(27, 'C+ZD', 'ELBRIT C+ZD', '10', 90.00, '61.02', '54.92', '2022-07-22 16:29:51', '2022-07-22 16:29:51'),
(28, 'CALBRIT', 'CALBRIT 15’S', '15', 80.00, '57.14', '51.43', '2022-07-22 16:31:15', '2022-07-22 16:31:15'),
(29, 'CALBRIT', 'CALBRIT 60 K', '6', 162.00, '115.71', '104.14', '2022-07-22 16:33:01', '2022-07-22 16:33:01'),
(30, 'CALBRIT', 'Calbrit CT', '15', 160.00, '108.47', '97.63', '2022-07-22 16:36:44', '2022-07-22 16:36:44'),
(31, 'CALBRIT', 'Calbrit Plus', '15', 150.00, '107.14', '96.43', '2022-07-22 16:38:13', '2022-07-22 16:38:13'),
(32, 'CARTITAB', 'Cartitab', '10', 210.00, '142.37', '128.14', '2022-07-22 16:39:29', '2022-07-22 16:39:29'),
(33, 'CARTITAB', 'Cartitab C2', '10', 220.00, '149.15', '134.24', '2022-07-22 16:40:59', '2022-07-22 16:40:59'),
(34, 'CHLORVIX', 'CHLORVIX 12.5', '15', 80.00, '57.14', '51.43', '2022-07-22 16:43:28', '2022-07-22 16:43:28'),
(35, 'CHLORVIX', 'CHLORVIX 6.25', '15', 70.00, '50', '45', '2022-07-22 16:45:07', '2022-07-22 16:45:07'),
(36, 'CILNITAB', 'CILNITAB 10', '15', 120.00, '85.71', '77.14', '2022-07-22 16:46:24', '2022-07-22 16:46:24'),
(37, 'CILNITAB', 'CILNITAB NB 10.5', '15', 230.00, '164.29', '147.86', '2022-07-22 16:47:29', '2022-07-22 16:47:29'),
(38, 'CILNITAB', 'CILNITAB 20', '15', 160.00, '114.29', '102.86', '2022-07-22 16:48:57', '2022-07-22 16:48:57'),
(39, 'CILNITAB', 'CILNITAB 5', '15', 75.00, '53.57', '48.21', '2022-07-22 16:50:24', '2022-07-22 16:50:24'),
(40, 'CITIBRIT', 'CITIBRIT FORTE', '10', 740.00, '528.57', '475.71', '2022-07-22 16:51:34', '2022-07-22 16:51:34'),
(41, 'CITIBRIT', 'CITIBRIT PLUS', '10', 730.00, '521.43', '469.29', '2022-07-22 16:52:52', '2022-07-22 16:52:52'),
(42, 'CLINITAB', 'CILNITAB T 40', '15', 99.00, '70.71', '63.64', '2022-07-22 16:54:22', '2022-07-27 10:33:26'),
(43, 'DAFAX', 'DAFAX 10', '15', 210.00, '150', '1', '2022-07-22 16:54:50', '2022-07-22 16:54:50'),
(44, 'DAFAX', 'DAFAX 10', '15', 210.00, '150', '135', '2022-07-22 16:56:12', '2022-07-22 16:56:12'),
(45, 'DAFAX', 'DAFAX 5', '15', 135.00, '96.43', '86.79', '2022-07-22 16:57:44', '2022-07-22 16:57:44'),
(46, 'DAFAX', 'DAFAX M 10', '15', 214.00, '152.86', '137.57', '2022-07-22 16:59:08', '2022-07-22 16:59:08'),
(47, 'DAFAX', 'DAFAX M 5', '15', 177.00, '126.43', '113.79', '2022-07-22 17:00:40', '2022-07-22 17:00:40'),
(48, 'ELPROL', 'ELPROL AM 25', '15', 100.00, '71.43', '64.29', '2022-07-22 17:01:39', '2022-07-22 17:01:39'),
(49, 'ELPROL', 'ELPROL AM 50', '15', 121.00, '86.43', '77.79', '2022-07-22 17:02:44', '2022-07-22 17:02:44'),
(50, 'ELPROL', 'ELPROL XL 100', '15', 150.00, '107.14', '96.43', '2022-07-22 17:03:56', '2022-07-22 17:03:56'),
(51, 'ELPROL', 'ELPROL XL 25', '15', 67.50, '48.21', '43.39', '2022-07-22 17:05:15', '2022-07-22 17:05:15'),
(52, 'ELPROL', 'ELPROL XL 50', '15', 96.50, '68.93', '62.04', '2022-07-22 17:06:21', '2022-07-22 17:06:21'),
(53, 'ELVIXGEL', 'ELVIXGEL', '50GM', 199.00, '142.14', '127.93', '2022-07-22 17:13:53', '2022-07-22 17:13:53'),
(54, 'EXIPAM', 'EXIPAM 10', NULL, NULL, NULL, NULL, '2022-07-22 17:14:07', '2022-07-22 17:14:07'),
(55, 'EXIPAM', 'EXIPAM 10', '15', 120.00, '85.71', '77.14', '2022-07-22 17:15:12', '2022-07-22 17:15:12'),
(56, 'EXIPAM', 'EXIPAM 20', '15', 170.00, '121.43', '109.29', '2022-07-22 17:16:16', '2022-07-22 17:16:16'),
(57, 'EXIPAM', 'EXIPAM 5', '15', 72.00, '51.43', '46.29', '2022-07-22 17:17:20', '2022-07-22 17:17:20'),
(58, 'Folbrit', 'Folbrit MB', '15', 130.00, '88.14', '79.32', '2022-07-22 17:18:36', '2022-07-22 17:18:36'),
(59, 'GLIMIBRIT', 'GLIMIBRIT M 0.5', '15', 80.00, '57.14', '51.43', '2022-07-22 17:20:54', '2022-07-22 17:20:54'),
(60, 'GLIMIBRIT', 'GLIMIBRITM1 forte', '15', 110.00, '78.57', '70.71', '2022-07-23 11:50:16', '2022-07-23 11:50:16'),
(61, 'GLIMIBRIT', 'GLIMIBRITM2 forte', '15', 140.00, '100', '90', '2022-07-23 11:52:14', '2022-07-23 11:52:14'),
(62, 'GLIMIBRIT', 'GLIMIBRIT 1', '15', 45.00, '32.14', '28.93', '2022-07-23 11:53:49', '2022-07-23 11:53:49'),
(63, 'GLIMIBRIT', 'GLIMIBRIT 2', '15', 60.00, '42.86', '38.57', '2022-07-23 11:58:12', '2022-07-23 11:58:12'),
(64, 'GLIMIBRIT', 'GLIMIBRIT 3', '15', 75.00, '53.57', '48.21', '2022-07-23 12:20:51', '2022-07-23 12:20:51'),
(65, 'GLIMIBRIT', 'GLIMIBRIT 4', '15', 90.00, '64.29', '57.86', '2022-07-23 12:21:57', '2022-07-23 12:21:57'),
(66, 'GLIMIBRIT', 'GLIMIBRIT M1', '15', 105.00, '75.00', '67.50', '2022-07-23 12:34:07', '2022-07-23 12:34:07'),
(67, 'GLIMIBRIT', 'GLIMIBRIT M2', '15', 130.00, '92.86', '83.57', '2022-07-23 12:35:29', '2022-07-23 12:35:29'),
(68, 'GLIMIBRIT', 'GLIMIBRIT MV1', '15', 174.00, '122.14', '109.93', '2022-07-23 13:21:28', '2022-07-23 13:21:28'),
(69, 'GLIMIBRIT', 'GLIMIBRIT MV2', '15', 195.00, '139.29', '125.36', '2022-07-23 13:23:04', '2022-07-23 13:23:04'),
(70, 'Glizato', 'Glizato 30 OD', '10', 63.00, '45', '40.5', '2022-07-23 13:24:21', '2022-07-23 13:24:21'),
(71, 'GLIZATO', 'GLIZATO 40', '15', 65.00, '43', '41.79', '2022-07-23 13:25:36', '2022-07-23 13:25:36'),
(72, 'Glizato', 'Glizato 60 OD', '10', 90.00, '64.29', '57.86', '2022-07-23 13:26:41', '2022-07-23 13:26:41'),
(73, 'GLIZATO', 'GLIZATO 80', '15', 90.00, '64.29', '57.86', '2022-07-23 13:29:24', '2022-07-23 13:29:24'),
(74, 'GLIZATO', 'GLIZATO M40', '15', 85.00, '60.71', '54.64', '2022-07-23 13:30:29', '2022-07-23 13:30:29'),
(75, 'GLIZATO', 'GLIZATO M80', '15', 95.00, '67.86', '61.07', '2022-07-23 13:31:36', '2022-07-23 13:31:36'),
(76, 'IEN', 'IEN', '10', 125.00, '84.75', '76.27', '2022-07-23 13:32:55', '2022-07-23 13:32:55'),
(77, 'IEN', 'IEN M', '10', 135.00, '91.53', '82.37', '2022-07-23 13:34:08', '2022-07-23 13:34:08'),
(78, 'IEN', 'IEN TOTAL', '10', 150.00, '101.69', '91.53', '2022-07-23 13:35:16', '2022-07-23 13:35:16'),
(79, 'LARGIX', 'LARGIX', '10', 64.00, '43.39', '39.05', '2022-07-23 13:36:02', '2022-07-23 13:36:02'),
(80, 'MAXFLORA', 'MAXFLORA', '10', 140.00, '100.00', '90.00', '2022-07-23 13:37:15', '2022-07-23 13:37:15'),
(81, 'MY 20', 'MY 20', '10', 120.00, '85.71', '77.14', '2022-07-23 13:38:26', '2022-07-27 11:13:05'),
(82, 'MY GUT', 'MY GUT', '10', 150.00, '101.69', '91.53', '2022-07-23 13:39:31', '2022-07-23 13:39:31'),
(83, 'MY MAG', 'MY MAG', '15', 70.00, '50.00', '45.00', '2022-07-23 13:40:48', '2022-07-23 13:40:48'),
(84, 'MyCiss', 'MyCiss', '10', 125.00, '84.75', '76.27', '2022-07-23 13:42:11', '2022-07-23 13:42:11'),
(85, 'MyCiss', 'MyCiss Plus', '10', 225.00, '152.54', '137.29', '2022-07-23 13:43:57', '2022-07-23 13:43:57'),
(86, 'NEBILOC', 'NEBILOC 10', '15', 259.00, '185', '166.5', '2022-07-23 13:44:55', '2022-07-23 13:44:55'),
(87, 'NEBILOC', 'NEBILOC 2.5', '15', 90.00, '64.29', '57.86', '2022-07-23 13:46:50', '2022-07-23 13:46:50'),
(89, 'NEBILOC', 'NEBILOC 5', '15', 170.00, '121.43', '109.29', '2022-07-23 13:47:58', '2022-07-23 13:47:58'),
(90, 'NEBILOC', 'NEBILOC 5AM', '15', 180.00, '128.57', '115.71', '2022-07-23 13:48:55', '2022-07-23 13:48:55'),
(91, 'NERO', 'NERO PG 50', '15', 90.00, '64.29', '57.86', '2022-07-23 13:50:03', '2022-07-23 13:50:03'),
(92, 'NERO', 'NERO PG 75', '15', 125.00, '89.29', '80.36', '2022-07-23 13:51:05', '2022-07-27 10:49:56'),
(93, 'NEURONZ', 'NEURONZ – D', '10', 157.00, '112.14', '100.93', '2022-07-23 13:52:45', '2022-07-23 13:52:45'),
(94, 'NEURONZ', 'NEURONZ PLUS', '10', 180.00, '128.57', '115.71', '2022-07-23 13:53:59', '2022-07-23 13:53:59'),
(95, 'NEURONZ', 'NEURONZ MAX', '10', 180.00, '128.57', '115.71', '2022-07-23 13:55:04', '2022-07-23 13:55:04'),
(96, 'OLMETOP', 'OLMETOP 10', '15', 86.00, '61.43', '55.29', '2022-07-23 13:56:20', '2022-07-23 13:56:20'),
(97, 'OLMETOP', 'OLMETOP 20', '15', 140.00, '100.00', '90.00', '2022-07-23 13:59:14', '2022-07-23 13:59:14'),
(98, 'OLMETOP', 'OLMETOP 20 AM', '15', 175.00, '125.00', '112.50', '2022-07-23 14:01:36', '2022-07-23 14:01:36'),
(99, 'OLMETOP', 'Olmetop 20 CT', '10', 105.00, '75.00', '67.50', '2022-07-23 14:02:50', '2022-07-23 14:02:50'),
(100, 'OLMETOP', 'OLMETOP 40', '15', 220.00, '157.14', '141.43', '2022-07-23 14:04:10', '2022-07-23 14:04:10'),
(101, 'OLMETOP', 'Olmetop 40 CT', '10', 180.00, '128.57', '115.71', '2022-07-23 14:05:23', '2022-07-23 14:05:23'),
(102, 'PANBRIT', 'PANBRIT', '10', 79.00, '56.43', '50.79', '2022-07-23 14:08:50', '2022-07-23 14:08:50'),
(103, 'PANBRIT', 'PANBRIT DSR', '10', 88.00, '62.86', '56.57', '2022-07-23 14:19:56', '2022-07-23 14:19:56'),
(104, 'PREGABRIT', 'PREGABRIT', '10', 143.00, '102.14', '91.93', '2022-07-23 14:21:25', '2022-07-23 14:21:25'),
(105, 'PREGABRIT', 'PREGABRIT NT', '15', 225.00, '160.71', '144.64', '2022-07-23 14:23:48', '2022-07-23 14:23:48'),
(106, 'PREGABRIT', 'PREGABRIT PLUS', '10', 175.00, '125.00', '112.50', '2022-07-23 14:24:56', '2022-07-23 14:24:56'),
(107, 'RABITON', 'RABRITON 20', '10', 75.00, '53.57', '48.21', '2022-07-23 14:27:55', '2022-07-23 14:27:55'),
(108, 'RABITON', 'RABRITON DSR', '10', 99.00, '70.71', '63.64', '2022-07-23 14:30:18', '2022-07-23 14:30:18'),
(109, 'RABITON', 'RABRITON PLUS', '10', 170.00, '121.43', '109.29', '2022-07-23 14:32:00', '2022-07-23 14:32:00'),
(110, 'ROZULA', 'ROZULA 10', '15', 185.00, '132.14', '118.93', '2022-07-23 14:33:19', '2022-07-23 14:33:19'),
(111, 'ROZULA', 'ROZULA 20', '15', 230.00, '164.29', '147.86', '2022-07-23 14:34:32', '2022-07-23 14:34:32'),
(112, 'ROZULA', 'ROZULA 40', '15', 350.00, '250', '225', '2022-07-23 14:35:54', '2022-07-23 14:35:54'),
(113, 'ROZULA', 'ROZULA 40', '15', 350.00, '250', '225', '2022-07-23 14:44:52', '2022-07-23 14:44:52'),
(114, 'ROZULA', 'ROZULA 5', '15', 100.00, '71.43', '64.29', '2022-07-23 15:00:58', '2022-07-23 15:00:58'),
(115, 'ROZULA', 'ROZULA GOLD 10', '10', 130.00, '92.86', '83.57', '2022-07-23 15:01:58', '2022-07-23 15:01:58'),
(116, 'ROZULA', 'ROZULA GOLD 20', '10', 260.00, '185.71', '167.14', '2022-07-23 15:02:54', '2022-07-23 15:02:54'),
(117, 'ROZULA', 'ROZULA 10 F', '15', 210.00, '150', '135', '2022-07-23 15:03:37', '2022-07-23 15:03:37'),
(118, 'ROZULA', 'ROZULA CV 10', '10', 143.00, '102.14', '91.93', '2022-07-23 15:04:36', '2022-07-23 15:04:36'),
(119, 'ROZULA', 'ROZULA CV 20', '15', 230.00, '164.29', '147.86', '2022-07-23 15:05:46', '2022-07-23 15:05:46'),
(120, 'RUTONZ', 'RUTONZ', '10', 200.00, '135.59', '122.03', '2022-07-23 15:07:01', '2022-07-23 15:07:01'),
(121, 'TELBRIT', 'TELBRIT 20', '15', 59.97, '42.84', '38.55', '2022-07-23 15:08:13', '2022-07-23 15:08:13'),
(122, 'TELBRIT', 'TELBRIT 40', '15', 108.36, '77.4', '69.66', '2022-07-23 15:09:14', '2022-07-23 15:09:14'),
(123, 'TELBRIT', 'TELBRIT 80', '15', 165.00, '117.86', '106.07', '2022-07-23 15:10:22', '2022-07-23 15:10:22'),
(124, 'TELBRIT', 'TELBRIT AM', '15', 150.00, '107.14', '96.43', '2022-07-23 15:11:24', '2022-07-23 15:11:24'),
(125, 'TELBRIT', 'TELBRIT CT', '10', 90.00, '64.29', '57.86', '2022-07-23 15:18:28', '2022-07-23 15:18:28'),
(126, 'TELBRIT', 'TELBRIT H', '15', 150.00, '107.14', '96.43', '2022-07-23 15:19:55', '2022-07-23 15:19:55'),
(127, 'TELBRIT', 'TELBRIT AH', '15', 150.00, '107.14', '96.43', '2022-07-23 15:21:18', '2022-07-23 15:21:18'),
(128, 'TELBRIT', 'TELBRIT MT', '10', 105.00, '75', '67.5', '2022-07-23 15:22:26', '2022-07-23 15:22:26'),
(129, 'TENLIBRIT', 'TENLIBRIT M', '10', 120.00, '85.71', '77.14', '2022-07-23 15:23:04', '2022-07-23 15:23:04'),
(130, 'TENLIBRIT', 'TENLIBRIT M Forte', '10', 130.00, '92.86', '83.57', '2022-07-23 15:23:44', '2022-07-23 15:23:44'),
(131, 'TENLITAB', 'TENLITAB 20', '15', 165.00, '117.86', '106.07', '2022-07-23 15:24:50', '2022-07-23 15:24:50'),
(132, 'TENLITAB', 'TENLITAB M', '10', 125.00, '89.29', '80.36', '2022-07-23 15:26:01', '2022-07-23 15:26:01'),
(133, 'TENLITAB', 'TENLITAB M FORTE', '10', 135.00, '96.43', '86.79', '2022-07-23 15:29:27', '2022-07-23 15:29:27'),
(134, 'TRIGLIMIBRIT', 'TRIGLIMIBRIT 1', '15', 171.00, '122.14', '109.93', '2022-07-23 15:30:21', '2022-07-27 10:53:31'),
(135, 'TRIGLIMIBRIT', 'TRIGLIMIBRIT 1.3', '15', 186.00, '132.86', '119.57', '2022-07-23 15:31:22', '2022-07-23 15:31:22'),
(136, 'TRIGLIMIBRIT', 'TRIGLIMIBRIT 2', '15', 195.00, '138.29', '125.36', '2022-07-23 15:32:40', '2022-07-27 10:54:57'),
(137, 'TRIGLIMIBRIT', 'TRIGLIMIBRIT 2.3', '15', 210.00, '150', '135', '2022-07-23 15:46:31', '2022-07-23 15:46:31'),
(138, 'VILZATO', 'VILZATO 50', '15', 120.00, '85.71', '77.14', '2022-07-23 15:47:33', '2022-07-23 15:47:33'),
(139, 'VILZATO', 'VILZATO M 1000', '15', 145.00, '103.57', '93.21', '2022-07-23 15:49:03', '2022-07-27 10:49:05'),
(140, 'VILZATO', 'VILZATO M 500', '10', 100.00, '71.43', '64.29', '2022-07-23 15:50:07', '2022-07-27 10:55:34'),
(141, 'Zi24', 'Zi24', '10', 60.00, '42.86', '38.57', '2022-07-23 15:50:51', '2022-07-23 15:50:51'),
(142, 'TestG', 'TestG', 'TestG', 23.00, '2', '3', '2022-07-23 23:47:28', '2022-07-23 23:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `price_team`
--

CREATE TABLE `price_team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_team`
--

INSERT INTO `price_team` (`id`, `price_id`, `team_id`, `created_at`, `updated_at`) VALUES
(7, 6, 11, NULL, NULL),
(8, 6, 12, NULL, NULL),
(9, 6, 13, NULL, NULL),
(10, 6, 14, NULL, NULL),
(11, 6, 15, NULL, NULL),
(12, 6, 16, NULL, NULL),
(14, 7, 6, NULL, NULL),
(15, 7, 7, NULL, NULL),
(16, 7, 8, NULL, NULL),
(17, 7, 10, NULL, NULL),
(18, 7, 13, NULL, NULL),
(19, 7, 14, NULL, NULL),
(20, 7, 15, NULL, NULL),
(21, 7, 16, NULL, NULL),
(22, 8, 11, NULL, NULL),
(23, 8, 12, NULL, NULL),
(24, 8, 13, NULL, NULL),
(25, 8, 14, NULL, NULL),
(26, 8, 15, NULL, NULL),
(27, 8, 16, NULL, NULL),
(28, 9, 11, NULL, NULL),
(29, 9, 12, NULL, NULL),
(30, 9, 13, NULL, NULL),
(31, 9, 14, NULL, NULL),
(32, 9, 15, NULL, NULL),
(33, 9, 16, NULL, NULL),
(34, 10, 4, NULL, NULL),
(36, 10, 8, NULL, NULL),
(37, 10, 9, NULL, NULL),
(38, 10, 13, NULL, NULL),
(39, 10, 14, NULL, NULL),
(40, 10, 15, NULL, NULL),
(41, 10, 16, NULL, NULL),
(42, 11, 4, NULL, NULL),
(43, 11, 5, NULL, NULL),
(44, 11, 8, NULL, NULL),
(45, 11, 9, NULL, NULL),
(46, 11, 13, NULL, NULL),
(47, 11, 14, NULL, NULL),
(48, 11, 15, NULL, NULL),
(49, 11, 16, NULL, NULL),
(50, 12, 4, NULL, NULL),
(51, 12, 5, NULL, NULL),
(52, 12, 9, NULL, NULL),
(53, 12, 10, NULL, NULL),
(54, 12, 13, NULL, NULL),
(55, 12, 14, NULL, NULL),
(56, 12, 15, NULL, NULL),
(57, 12, 16, NULL, NULL),
(58, 13, 4, NULL, NULL),
(59, 13, 5, NULL, NULL),
(60, 13, 9, NULL, NULL),
(61, 13, 13, NULL, NULL),
(62, 13, 14, NULL, NULL),
(63, 13, 15, NULL, NULL),
(64, 13, 16, NULL, NULL),
(65, 14, 4, NULL, NULL),
(66, 14, 5, NULL, NULL),
(67, 14, 9, NULL, NULL),
(68, 14, 13, NULL, NULL),
(69, 14, 14, NULL, NULL),
(70, 14, 15, NULL, NULL),
(71, 14, 16, NULL, NULL),
(72, 15, 4, NULL, NULL),
(73, 15, 5, NULL, NULL),
(74, 15, 8, NULL, NULL),
(75, 15, 9, NULL, NULL),
(76, 15, 10, NULL, NULL),
(77, 15, 13, NULL, NULL),
(78, 15, 14, NULL, NULL),
(79, 15, 15, NULL, NULL),
(80, 15, 16, NULL, NULL),
(81, 16, 4, NULL, NULL),
(82, 16, 5, NULL, NULL),
(83, 16, 9, NULL, NULL),
(84, 16, 13, NULL, NULL),
(85, 16, 14, NULL, NULL),
(86, 16, 15, NULL, NULL),
(87, 16, 16, NULL, NULL),
(88, 17, 4, NULL, NULL),
(89, 17, 5, NULL, NULL),
(90, 17, 9, NULL, NULL),
(91, 17, 10, NULL, NULL),
(92, 17, 13, NULL, NULL),
(93, 17, 14, NULL, NULL),
(94, 17, 15, NULL, NULL),
(95, 17, 16, NULL, NULL),
(96, 18, 6, NULL, NULL),
(97, 18, 7, NULL, NULL),
(98, 18, 8, NULL, NULL),
(99, 18, 9, NULL, NULL),
(100, 18, 10, NULL, NULL),
(101, 18, 13, NULL, NULL),
(102, 18, 14, NULL, NULL),
(103, 18, 15, NULL, NULL),
(104, 18, 16, NULL, NULL),
(105, 19, 6, NULL, NULL),
(106, 19, 7, NULL, NULL),
(107, 19, 8, NULL, NULL),
(108, 19, 10, NULL, NULL),
(109, 19, 13, NULL, NULL),
(110, 19, 14, NULL, NULL),
(111, 19, 15, NULL, NULL),
(112, 19, 16, NULL, NULL),
(121, 21, 4, NULL, NULL),
(122, 21, 5, NULL, NULL),
(123, 21, 8, NULL, NULL),
(124, 21, 10, NULL, NULL),
(125, 21, 13, NULL, NULL),
(126, 21, 14, NULL, NULL),
(127, 21, 15, NULL, NULL),
(128, 21, 16, NULL, NULL),
(129, 22, 4, NULL, NULL),
(130, 22, 5, NULL, NULL),
(131, 22, 8, NULL, NULL),
(132, 22, 10, NULL, NULL),
(133, 22, 13, NULL, NULL),
(134, 22, 14, NULL, NULL),
(135, 22, 15, NULL, NULL),
(136, 22, 16, NULL, NULL),
(137, 23, 8, NULL, NULL),
(138, 23, 9, NULL, NULL),
(139, 23, 10, NULL, NULL),
(140, 23, 11, NULL, NULL),
(141, 23, 12, NULL, NULL),
(142, 23, 13, NULL, NULL),
(143, 23, 14, NULL, NULL),
(144, 23, 15, NULL, NULL),
(145, 23, 16, NULL, NULL),
(146, 24, 11, NULL, NULL),
(147, 24, 12, NULL, NULL),
(148, 24, 13, NULL, NULL),
(149, 24, 14, NULL, NULL),
(150, 24, 15, NULL, NULL),
(151, 24, 16, NULL, NULL),
(152, 25, 8, NULL, NULL),
(153, 25, 10, NULL, NULL),
(154, 25, 11, NULL, NULL),
(155, 25, 12, NULL, NULL),
(156, 25, 13, NULL, NULL),
(157, 25, 14, NULL, NULL),
(158, 25, 15, NULL, NULL),
(159, 25, 16, NULL, NULL),
(160, 26, 11, NULL, NULL),
(161, 26, 12, NULL, NULL),
(162, 26, 13, NULL, NULL),
(163, 26, 14, NULL, NULL),
(164, 26, 15, NULL, NULL),
(165, 26, 16, NULL, NULL),
(166, 27, 8, NULL, NULL),
(167, 27, 9, NULL, NULL),
(168, 27, 10, NULL, NULL),
(169, 27, 11, NULL, NULL),
(170, 27, 12, NULL, NULL),
(171, 27, 13, NULL, NULL),
(172, 27, 14, NULL, NULL),
(173, 27, 15, NULL, NULL),
(174, 27, 16, NULL, NULL),
(175, 28, 6, NULL, NULL),
(176, 28, 7, NULL, NULL),
(177, 28, 8, NULL, NULL),
(178, 28, 9, NULL, NULL),
(179, 28, 10, NULL, NULL),
(180, 28, 13, NULL, NULL),
(181, 28, 14, NULL, NULL),
(182, 28, 15, NULL, NULL),
(183, 28, 16, NULL, NULL),
(184, 29, 8, NULL, NULL),
(185, 29, 9, NULL, NULL),
(186, 29, 10, NULL, NULL),
(187, 29, 11, NULL, NULL),
(188, 29, 12, NULL, NULL),
(189, 29, 13, NULL, NULL),
(190, 29, 14, NULL, NULL),
(191, 29, 15, NULL, NULL),
(192, 29, 16, NULL, NULL),
(193, 30, 9, NULL, NULL),
(194, 30, 11, NULL, NULL),
(195, 30, 12, NULL, NULL),
(196, 30, 13, NULL, NULL),
(197, 30, 14, NULL, NULL),
(198, 30, 15, NULL, NULL),
(199, 30, 16, NULL, NULL),
(200, 31, 8, NULL, NULL),
(201, 31, 9, NULL, NULL),
(202, 31, 10, NULL, NULL),
(203, 31, 11, NULL, NULL),
(204, 31, 12, NULL, NULL),
(205, 31, 13, NULL, NULL),
(206, 31, 14, NULL, NULL),
(207, 31, 15, NULL, NULL),
(208, 31, 16, NULL, NULL),
(209, 32, 9, NULL, NULL),
(210, 32, 11, NULL, NULL),
(211, 32, 12, NULL, NULL),
(212, 33, 9, NULL, NULL),
(213, 33, 10, NULL, NULL),
(214, 33, 11, NULL, NULL),
(215, 33, 12, NULL, NULL),
(216, 33, 13, NULL, NULL),
(217, 33, 14, NULL, NULL),
(218, 33, 15, NULL, NULL),
(219, 33, 16, NULL, NULL),
(220, 34, 4, NULL, NULL),
(221, 34, 5, NULL, NULL),
(222, 34, 8, NULL, NULL),
(223, 34, 9, NULL, NULL),
(224, 34, 13, NULL, NULL),
(225, 34, 14, NULL, NULL),
(226, 34, 15, NULL, NULL),
(227, 34, 16, NULL, NULL),
(228, 35, 4, NULL, NULL),
(229, 35, 5, NULL, NULL),
(230, 35, 8, NULL, NULL),
(231, 35, 9, NULL, NULL),
(232, 35, 13, NULL, NULL),
(233, 35, 14, NULL, NULL),
(234, 35, 15, NULL, NULL),
(235, 35, 16, NULL, NULL),
(236, 36, 6, NULL, NULL),
(237, 36, 7, NULL, NULL),
(238, 36, 8, NULL, NULL),
(239, 36, 10, NULL, NULL),
(240, 36, 13, NULL, NULL),
(241, 36, 14, NULL, NULL),
(242, 36, 15, NULL, NULL),
(243, 36, 16, NULL, NULL),
(244, 37, 6, NULL, NULL),
(245, 37, 7, NULL, NULL),
(246, 37, 8, NULL, NULL),
(247, 38, 6, NULL, NULL),
(248, 38, 7, NULL, NULL),
(249, 38, 8, NULL, NULL),
(250, 38, 9, NULL, NULL),
(251, 38, 10, NULL, NULL),
(252, 38, 13, NULL, NULL),
(253, 38, 14, NULL, NULL),
(254, 38, 15, NULL, NULL),
(255, 38, 16, NULL, NULL),
(256, 39, 6, NULL, NULL),
(257, 39, 7, NULL, NULL),
(258, 39, 8, NULL, NULL),
(259, 39, 9, NULL, NULL),
(260, 39, 13, NULL, NULL),
(261, 39, 14, NULL, NULL),
(262, 39, 15, NULL, NULL),
(263, 39, 16, NULL, NULL),
(264, 40, 6, NULL, NULL),
(265, 40, 7, NULL, NULL),
(266, 40, 13, NULL, NULL),
(267, 40, 14, NULL, NULL),
(268, 40, 15, NULL, NULL),
(269, 40, 16, NULL, NULL),
(270, 41, 6, NULL, NULL),
(271, 41, 7, NULL, NULL),
(272, 41, 9, NULL, NULL),
(273, 41, 13, NULL, NULL),
(274, 41, 14, NULL, NULL),
(275, 41, 15, NULL, NULL),
(276, 41, 16, NULL, NULL),
(277, 42, 4, NULL, NULL),
(278, 42, 5, NULL, NULL),
(279, 42, 8, NULL, NULL),
(280, 42, 9, NULL, NULL),
(281, 42, 13, NULL, NULL),
(282, 42, 14, NULL, NULL),
(283, 42, 15, NULL, NULL),
(284, 42, 16, NULL, NULL),
(285, 44, 4, NULL, NULL),
(286, 44, 5, NULL, NULL),
(287, 44, 8, NULL, NULL),
(288, 44, 13, NULL, NULL),
(289, 44, 14, NULL, NULL),
(290, 44, 15, NULL, NULL),
(291, 44, 16, NULL, NULL),
(292, 45, 4, NULL, NULL),
(293, 45, 5, NULL, NULL),
(294, 45, 8, NULL, NULL),
(295, 45, 9, NULL, NULL),
(296, 45, 13, NULL, NULL),
(297, 45, 14, NULL, NULL),
(298, 45, 15, NULL, NULL),
(299, 45, 16, NULL, NULL),
(300, 46, 4, NULL, NULL),
(301, 46, 5, NULL, NULL),
(302, 46, 8, NULL, NULL),
(303, 46, 9, NULL, NULL),
(304, 46, 13, NULL, NULL),
(305, 46, 14, NULL, NULL),
(306, 46, 15, NULL, NULL),
(307, 46, 16, NULL, NULL),
(308, 47, 4, NULL, NULL),
(309, 47, 5, NULL, NULL),
(310, 47, 8, NULL, NULL),
(311, 47, 9, NULL, NULL),
(312, 47, 13, NULL, NULL),
(313, 47, 14, NULL, NULL),
(314, 47, 15, NULL, NULL),
(315, 47, 16, NULL, NULL),
(316, 48, 4, NULL, NULL),
(317, 48, 5, NULL, NULL),
(318, 48, 8, NULL, NULL),
(319, 48, 9, NULL, NULL),
(320, 48, 13, NULL, NULL),
(321, 48, 14, NULL, NULL),
(322, 48, 15, NULL, NULL),
(323, 48, 16, NULL, NULL),
(324, 49, 4, NULL, NULL),
(325, 49, 5, NULL, NULL),
(326, 49, 8, NULL, NULL),
(327, 49, 9, NULL, NULL),
(328, 49, 13, NULL, NULL),
(329, 49, 14, NULL, NULL),
(330, 49, 15, NULL, NULL),
(331, 49, 16, NULL, NULL),
(332, 50, 4, NULL, NULL),
(333, 50, 5, NULL, NULL),
(334, 50, 9, NULL, NULL),
(335, 50, 13, NULL, NULL),
(336, 50, 14, NULL, NULL),
(337, 50, 15, NULL, NULL),
(338, 50, 16, NULL, NULL),
(339, 51, 4, NULL, NULL),
(340, 51, 5, NULL, NULL),
(341, 51, 8, NULL, NULL),
(342, 51, 9, NULL, NULL),
(343, 51, 13, NULL, NULL),
(344, 51, 14, NULL, NULL),
(345, 51, 15, NULL, NULL),
(346, 51, 16, NULL, NULL),
(347, 52, 4, NULL, NULL),
(348, 52, 5, NULL, NULL),
(349, 52, 8, NULL, NULL),
(350, 52, 9, NULL, NULL),
(351, 52, 13, NULL, NULL),
(352, 52, 14, NULL, NULL),
(353, 52, 15, NULL, NULL),
(354, 52, 16, NULL, NULL),
(355, 53, 4, NULL, NULL),
(356, 53, 5, NULL, NULL),
(357, 53, 8, NULL, NULL),
(358, 53, 9, NULL, NULL),
(359, 53, 10, NULL, NULL),
(360, 53, 13, NULL, NULL),
(361, 53, 14, NULL, NULL),
(362, 53, 15, NULL, NULL),
(363, 53, 16, NULL, NULL),
(364, 55, 4, NULL, NULL),
(365, 55, 5, NULL, NULL),
(366, 55, 9, NULL, NULL),
(367, 55, 13, NULL, NULL),
(368, 55, 14, NULL, NULL),
(369, 55, 15, NULL, NULL),
(370, 55, 16, NULL, NULL),
(371, 56, 4, NULL, NULL),
(372, 56, 5, NULL, NULL),
(373, 56, 9, NULL, NULL),
(374, 56, 13, NULL, NULL),
(375, 56, 14, NULL, NULL),
(376, 56, 15, NULL, NULL),
(377, 56, 16, NULL, NULL),
(378, 57, 4, NULL, NULL),
(379, 57, 5, NULL, NULL),
(380, 57, 9, NULL, NULL),
(381, 57, 13, NULL, NULL),
(382, 57, 14, NULL, NULL),
(383, 57, 15, NULL, NULL),
(384, 57, 16, NULL, NULL),
(385, 58, 8, NULL, NULL),
(386, 58, 10, NULL, NULL),
(387, 58, 11, NULL, NULL),
(388, 58, 12, NULL, NULL),
(389, 58, 13, NULL, NULL),
(390, 58, 14, NULL, NULL),
(391, 58, 15, NULL, NULL),
(392, 58, 16, NULL, NULL),
(393, 59, 6, NULL, NULL),
(394, 59, 7, NULL, NULL),
(395, 59, 8, NULL, NULL),
(396, 59, 9, NULL, NULL),
(397, 59, 10, NULL, NULL),
(398, 59, 13, NULL, NULL),
(399, 59, 14, NULL, NULL),
(400, 59, 15, NULL, NULL),
(401, 59, 16, NULL, NULL),
(402, 60, 6, NULL, NULL),
(403, 60, 7, NULL, NULL),
(404, 60, 8, NULL, NULL),
(405, 60, 9, NULL, NULL),
(406, 60, 10, NULL, NULL),
(407, 60, 13, NULL, NULL),
(408, 60, 14, NULL, NULL),
(409, 60, 15, NULL, NULL),
(410, 60, 16, NULL, NULL),
(411, 61, 6, NULL, NULL),
(412, 61, 7, NULL, NULL),
(413, 61, 8, NULL, NULL),
(414, 61, 9, NULL, NULL),
(415, 61, 13, NULL, NULL),
(416, 61, 14, NULL, NULL),
(417, 61, 15, NULL, NULL),
(418, 61, 16, NULL, NULL),
(419, 62, 4, NULL, NULL),
(420, 62, 5, NULL, NULL),
(421, 62, 8, NULL, NULL),
(422, 62, 9, NULL, NULL),
(423, 62, 10, NULL, NULL),
(424, 62, 13, NULL, NULL),
(425, 62, 14, NULL, NULL),
(426, 62, 15, NULL, NULL),
(427, 62, 16, NULL, NULL),
(428, 63, 4, NULL, NULL),
(429, 63, 5, NULL, NULL),
(430, 63, 8, NULL, NULL),
(431, 63, 9, NULL, NULL),
(432, 63, 13, NULL, NULL),
(433, 63, 14, NULL, NULL),
(434, 63, 15, NULL, NULL),
(435, 63, 16, NULL, NULL),
(436, 64, 4, NULL, NULL),
(437, 64, 5, NULL, NULL),
(438, 64, 8, NULL, NULL),
(439, 64, 9, NULL, NULL),
(440, 64, 13, NULL, NULL),
(441, 64, 14, NULL, NULL),
(442, 64, 15, NULL, NULL),
(443, 64, 16, NULL, NULL),
(444, 65, 4, NULL, NULL),
(445, 65, 5, NULL, NULL),
(446, 65, 8, NULL, NULL),
(447, 65, 9, NULL, NULL),
(448, 65, 13, NULL, NULL),
(449, 65, 14, NULL, NULL),
(450, 65, 15, NULL, NULL),
(451, 65, 16, NULL, NULL),
(452, 66, 4, NULL, NULL),
(453, 66, 5, NULL, NULL),
(454, 66, 8, NULL, NULL),
(455, 66, 9, NULL, NULL),
(456, 66, 13, NULL, NULL),
(457, 66, 14, NULL, NULL),
(458, 66, 15, NULL, NULL),
(459, 66, 16, NULL, NULL),
(460, 67, 4, NULL, NULL),
(461, 67, 5, NULL, NULL),
(462, 67, 8, NULL, NULL),
(463, 67, 9, NULL, NULL),
(464, 67, 10, NULL, NULL),
(465, 67, 13, NULL, NULL),
(466, 67, 14, NULL, NULL),
(467, 67, 15, NULL, NULL),
(468, 67, 16, NULL, NULL),
(469, 66, 10, NULL, NULL),
(470, 68, 4, NULL, NULL),
(471, 68, 5, NULL, NULL),
(472, 69, 4, NULL, NULL),
(473, 69, 5, NULL, NULL),
(474, 70, 6, NULL, NULL),
(475, 70, 7, NULL, NULL),
(476, 70, 10, NULL, NULL),
(477, 70, 13, NULL, NULL),
(478, 70, 14, NULL, NULL),
(479, 70, 15, NULL, NULL),
(480, 70, 16, NULL, NULL),
(481, 71, 6, NULL, NULL),
(482, 71, 7, NULL, NULL),
(483, 71, 9, NULL, NULL),
(484, 71, 13, NULL, NULL),
(485, 71, 14, NULL, NULL),
(486, 71, 15, NULL, NULL),
(487, 71, 16, NULL, NULL),
(488, 72, 6, NULL, NULL),
(489, 72, 7, NULL, NULL),
(490, 72, 8, NULL, NULL),
(491, 72, 9, NULL, NULL),
(492, 72, 13, NULL, NULL),
(493, 72, 14, NULL, NULL),
(494, 72, 15, NULL, NULL),
(495, 73, 6, NULL, NULL),
(496, 73, 7, NULL, NULL),
(497, 73, 9, NULL, NULL),
(498, 73, 13, NULL, NULL),
(499, 73, 14, NULL, NULL),
(500, 73, 15, NULL, NULL),
(501, 73, 16, NULL, NULL),
(502, 74, 6, NULL, NULL),
(503, 74, 7, NULL, NULL),
(504, 74, 9, NULL, NULL),
(505, 74, 13, NULL, NULL),
(506, 74, 14, NULL, NULL),
(507, 74, 15, NULL, NULL),
(508, 74, 16, NULL, NULL),
(509, 75, 6, NULL, NULL),
(510, 75, 7, NULL, NULL),
(511, 75, 10, NULL, NULL),
(512, 75, 13, NULL, NULL),
(513, 75, 14, NULL, NULL),
(514, 75, 15, NULL, NULL),
(515, 75, 16, NULL, NULL),
(516, 76, 8, NULL, NULL),
(517, 76, 10, NULL, NULL),
(518, 76, 11, NULL, NULL),
(519, 76, 12, NULL, NULL),
(520, 76, 13, NULL, NULL),
(521, 76, 14, NULL, NULL),
(522, 76, 15, NULL, NULL),
(523, 76, 16, NULL, NULL),
(524, 77, 8, NULL, NULL),
(525, 77, 10, NULL, NULL),
(526, 77, 11, NULL, NULL),
(527, 77, 12, NULL, NULL),
(528, 77, 13, NULL, NULL),
(529, 77, 14, NULL, NULL),
(530, 77, 15, NULL, NULL),
(531, 77, 16, NULL, NULL),
(532, 78, 8, NULL, NULL),
(533, 78, 10, NULL, NULL),
(534, 78, 11, NULL, NULL),
(535, 78, 12, NULL, NULL),
(536, 78, 13, NULL, NULL),
(537, 78, 14, NULL, NULL),
(538, 78, 15, NULL, NULL),
(539, 78, 16, NULL, NULL),
(540, 79, 11, NULL, NULL),
(541, 79, 12, NULL, NULL),
(542, 80, 8, NULL, NULL),
(543, 80, 9, NULL, NULL),
(544, 80, 10, NULL, NULL),
(545, 80, 11, NULL, NULL),
(546, 80, 12, NULL, NULL),
(547, 80, 13, NULL, NULL),
(548, 80, 14, NULL, NULL),
(549, 80, 15, NULL, NULL),
(550, 80, 16, NULL, NULL),
(551, 81, 4, NULL, NULL),
(552, 81, 5, NULL, NULL),
(553, 81, 8, NULL, NULL),
(554, 81, 9, NULL, NULL),
(555, 81, 10, NULL, NULL),
(556, 81, 13, NULL, NULL),
(557, 81, 14, NULL, NULL),
(558, 81, 15, NULL, NULL),
(559, 81, 16, NULL, NULL),
(560, 82, 6, NULL, NULL),
(561, 82, 7, NULL, NULL),
(562, 82, 8, NULL, NULL),
(563, 82, 9, NULL, NULL),
(564, 82, 13, NULL, NULL),
(565, 82, 14, NULL, NULL),
(566, 82, 15, NULL, NULL),
(567, 82, 16, NULL, NULL),
(568, 83, 4, NULL, NULL),
(569, 83, 5, NULL, NULL),
(570, 83, 8, NULL, NULL),
(571, 83, 10, NULL, NULL),
(572, 83, 13, NULL, NULL),
(573, 83, 14, NULL, NULL),
(574, 83, 15, NULL, NULL),
(575, 83, 16, NULL, NULL),
(576, 84, 9, NULL, NULL),
(577, 84, 11, NULL, NULL),
(578, 84, 12, NULL, NULL),
(579, 84, 13, NULL, NULL),
(580, 84, 14, NULL, NULL),
(581, 84, 15, NULL, NULL),
(582, 84, 16, NULL, NULL),
(583, 85, 9, NULL, NULL),
(584, 85, 11, NULL, NULL),
(585, 85, 12, NULL, NULL),
(586, 85, 13, NULL, NULL),
(587, 85, 14, NULL, NULL),
(588, 85, 15, NULL, NULL),
(589, 85, 16, NULL, NULL),
(590, 86, 6, NULL, NULL),
(591, 86, 7, NULL, NULL),
(592, 86, 13, NULL, NULL),
(593, 86, 14, NULL, NULL),
(594, 86, 15, NULL, NULL),
(595, 86, 16, NULL, NULL),
(596, 87, 6, NULL, NULL),
(597, 87, 7, NULL, NULL),
(598, 87, 8, NULL, NULL),
(599, 87, 13, NULL, NULL),
(600, 87, 14, NULL, NULL),
(601, 87, 15, NULL, NULL),
(602, 87, 16, NULL, NULL),
(610, 89, 6, NULL, NULL),
(611, 89, 7, NULL, NULL),
(612, 89, 8, NULL, NULL),
(613, 89, 13, NULL, NULL),
(614, 89, 14, NULL, NULL),
(615, 89, 15, NULL, NULL),
(616, 89, 16, NULL, NULL),
(617, 90, 6, NULL, NULL),
(618, 90, 7, NULL, NULL),
(619, 90, 8, NULL, NULL),
(620, 90, 13, NULL, NULL),
(621, 90, 14, NULL, NULL),
(622, 90, 15, NULL, NULL),
(623, 90, 16, NULL, NULL),
(624, 91, 6, NULL, NULL),
(625, 91, 7, NULL, NULL),
(626, 91, 8, NULL, NULL),
(627, 91, 9, NULL, NULL),
(628, 91, 13, NULL, NULL),
(629, 91, 14, NULL, NULL),
(630, 91, 15, NULL, NULL),
(631, 91, 16, NULL, NULL),
(632, 92, 8, NULL, NULL),
(633, 92, 9, NULL, NULL),
(634, 92, 13, NULL, NULL),
(635, 92, 14, NULL, NULL),
(636, 92, 15, NULL, NULL),
(637, 92, 16, NULL, NULL),
(638, 93, 6, NULL, NULL),
(639, 93, 7, NULL, NULL),
(640, 93, 8, NULL, NULL),
(641, 93, 9, NULL, NULL),
(642, 93, 10, NULL, NULL),
(643, 93, 13, NULL, NULL),
(644, 93, 14, NULL, NULL),
(645, 93, 15, NULL, NULL),
(646, 93, 16, NULL, NULL),
(647, 94, 6, NULL, NULL),
(648, 94, 7, NULL, NULL),
(649, 94, 10, NULL, NULL),
(650, 94, 13, NULL, NULL),
(651, 94, 14, NULL, NULL),
(652, 94, 15, NULL, NULL),
(653, 94, 16, NULL, NULL),
(654, 95, 11, NULL, NULL),
(655, 95, 12, NULL, NULL),
(656, 96, 4, NULL, NULL),
(657, 96, 5, NULL, NULL),
(658, 96, 8, NULL, NULL),
(659, 96, 13, NULL, NULL),
(660, 96, 14, NULL, NULL),
(661, 96, 15, NULL, NULL),
(662, 96, 16, NULL, NULL),
(663, 97, 4, NULL, NULL),
(664, 97, 5, NULL, NULL),
(665, 97, 8, NULL, NULL),
(666, 97, 13, NULL, NULL),
(667, 97, 14, NULL, NULL),
(668, 97, 15, NULL, NULL),
(669, 97, 16, NULL, NULL),
(670, 98, 4, NULL, NULL),
(671, 98, 5, NULL, NULL),
(672, 98, 8, NULL, NULL),
(673, 98, 13, NULL, NULL),
(674, 98, 14, NULL, NULL),
(675, 98, 15, NULL, NULL),
(676, 98, 16, NULL, NULL),
(677, 99, 4, NULL, NULL),
(678, 99, 5, NULL, NULL),
(679, 99, 8, NULL, NULL),
(680, 99, 13, NULL, NULL),
(681, 99, 14, NULL, NULL),
(682, 99, 15, NULL, NULL),
(683, 99, 16, NULL, NULL),
(684, 100, 4, NULL, NULL),
(685, 100, 5, NULL, NULL),
(686, 100, 8, NULL, NULL),
(687, 100, 13, NULL, NULL),
(688, 100, 14, NULL, NULL),
(689, 100, 15, NULL, NULL),
(690, 100, 16, NULL, NULL),
(691, 101, 4, NULL, NULL),
(692, 101, 5, NULL, NULL),
(693, 101, 8, NULL, NULL),
(694, 101, 13, NULL, NULL),
(695, 101, 14, NULL, NULL),
(696, 101, 15, NULL, NULL),
(697, 101, 16, NULL, NULL),
(698, 102, 8, NULL, NULL),
(699, 102, 9, NULL, NULL),
(700, 102, 10, NULL, NULL),
(701, 102, 11, NULL, NULL),
(702, 102, 12, NULL, NULL),
(703, 102, 13, NULL, NULL),
(704, 102, 14, NULL, NULL),
(705, 102, 15, NULL, NULL),
(706, 102, 16, NULL, NULL),
(707, 103, 8, NULL, NULL),
(708, 103, 9, NULL, NULL),
(709, 103, 10, NULL, NULL),
(710, 103, 11, NULL, NULL),
(711, 103, 12, NULL, NULL),
(712, 103, 13, NULL, NULL),
(713, 103, 14, NULL, NULL),
(714, 103, 15, NULL, NULL),
(715, 103, 16, NULL, NULL),
(716, 104, 4, NULL, NULL),
(717, 104, 5, NULL, NULL),
(718, 104, 8, NULL, NULL),
(719, 104, 9, NULL, NULL),
(720, 104, 10, NULL, NULL),
(721, 104, 13, NULL, NULL),
(722, 104, 14, NULL, NULL),
(723, 104, 15, NULL, NULL),
(724, 104, 16, NULL, NULL),
(725, 105, 4, NULL, NULL),
(726, 105, 5, NULL, NULL),
(727, 105, 8, NULL, NULL),
(728, 105, 9, NULL, NULL),
(729, 105, 10, NULL, NULL),
(730, 105, 13, NULL, NULL),
(731, 105, 14, NULL, NULL),
(732, 105, 15, NULL, NULL),
(733, 105, 16, NULL, NULL),
(734, 106, 4, NULL, NULL),
(735, 106, 5, NULL, NULL),
(736, 106, 8, NULL, NULL),
(737, 106, 9, NULL, NULL),
(738, 106, 10, NULL, NULL),
(739, 106, 13, NULL, NULL),
(740, 106, 14, NULL, NULL),
(741, 106, 15, NULL, NULL),
(742, 106, 16, NULL, NULL),
(743, 107, 4, NULL, NULL),
(744, 107, 5, NULL, NULL),
(745, 107, 8, NULL, NULL),
(746, 107, 10, NULL, NULL),
(747, 107, 13, NULL, NULL),
(748, 107, 14, NULL, NULL),
(749, 107, 15, NULL, NULL),
(750, 107, 16, NULL, NULL),
(751, 108, 4, NULL, NULL),
(752, 108, 5, NULL, NULL),
(753, 108, 8, NULL, NULL),
(754, 108, 9, NULL, NULL),
(755, 108, 10, NULL, NULL),
(756, 108, 13, NULL, NULL),
(757, 108, 14, NULL, NULL),
(758, 108, 15, NULL, NULL),
(759, 108, 16, NULL, NULL),
(760, 109, 4, NULL, NULL),
(761, 109, 5, NULL, NULL),
(762, 109, 8, NULL, NULL),
(763, 109, 9, NULL, NULL),
(764, 109, 10, NULL, NULL),
(765, 109, 13, NULL, NULL),
(766, 109, 14, NULL, NULL),
(767, 109, 15, NULL, NULL),
(768, 109, 16, NULL, NULL),
(769, 110, 6, NULL, NULL),
(770, 110, 7, NULL, NULL),
(771, 110, 8, NULL, NULL),
(772, 110, 9, NULL, NULL),
(773, 110, 10, NULL, NULL),
(774, 110, 13, NULL, NULL),
(775, 110, 14, NULL, NULL),
(776, 110, 15, NULL, NULL),
(777, 110, 16, NULL, NULL),
(778, 111, 6, NULL, NULL),
(779, 111, 7, NULL, NULL),
(780, 111, 8, NULL, NULL),
(781, 111, 9, NULL, NULL),
(782, 111, 10, NULL, NULL),
(783, 111, 13, NULL, NULL),
(784, 111, 14, NULL, NULL),
(785, 111, 15, NULL, NULL),
(786, 111, 16, NULL, NULL),
(787, 112, 6, NULL, NULL),
(788, 112, 7, NULL, NULL),
(789, 112, 8, NULL, NULL),
(790, 112, 9, NULL, NULL),
(791, 112, 10, NULL, NULL),
(792, 112, 13, NULL, NULL),
(793, 112, 14, NULL, NULL),
(794, 112, 15, NULL, NULL),
(795, 112, 16, NULL, NULL),
(796, 113, 6, NULL, NULL),
(797, 113, 7, NULL, NULL),
(798, 113, 8, NULL, NULL),
(799, 113, 9, NULL, NULL),
(800, 113, 10, NULL, NULL),
(801, 113, 13, NULL, NULL),
(802, 113, 14, NULL, NULL),
(803, 113, 15, NULL, NULL),
(804, 113, 16, NULL, NULL),
(805, 114, 6, NULL, NULL),
(806, 114, 7, NULL, NULL),
(807, 114, 8, NULL, NULL),
(808, 114, 9, NULL, NULL),
(809, 114, 13, NULL, NULL),
(810, 114, 14, NULL, NULL),
(811, 114, 15, NULL, NULL),
(812, 114, 16, NULL, NULL),
(813, 115, 6, NULL, NULL),
(814, 115, 7, NULL, NULL),
(815, 115, 9, NULL, NULL),
(816, 115, 10, NULL, NULL),
(817, 115, 13, NULL, NULL),
(818, 115, 14, NULL, NULL),
(819, 115, 15, NULL, NULL),
(820, 115, 16, NULL, NULL),
(821, 116, 6, NULL, NULL),
(822, 116, 7, NULL, NULL),
(823, 116, 10, NULL, NULL),
(824, 116, 13, NULL, NULL),
(825, 116, 14, NULL, NULL),
(826, 116, 15, NULL, NULL),
(827, 116, 16, NULL, NULL),
(828, 117, 4, NULL, NULL),
(829, 117, 5, NULL, NULL),
(830, 117, 10, NULL, NULL),
(831, 118, 4, NULL, NULL),
(832, 118, 5, NULL, NULL),
(833, 118, 8, NULL, NULL),
(834, 118, 9, NULL, NULL),
(835, 118, 10, NULL, NULL),
(836, 118, 13, NULL, NULL),
(837, 118, 14, NULL, NULL),
(838, 118, 15, NULL, NULL),
(839, 118, 16, NULL, NULL),
(840, 119, 4, NULL, NULL),
(841, 119, 5, NULL, NULL),
(842, 119, 8, NULL, NULL),
(843, 119, 13, NULL, NULL),
(844, 119, 14, NULL, NULL),
(845, 119, 15, NULL, NULL),
(846, 119, 16, NULL, NULL),
(847, 120, 9, NULL, NULL),
(848, 120, 10, NULL, NULL),
(849, 120, 11, NULL, NULL),
(850, 120, 12, NULL, NULL),
(851, 120, 13, NULL, NULL),
(852, 120, 14, NULL, NULL),
(853, 120, 15, NULL, NULL),
(854, 120, 16, NULL, NULL),
(855, 121, 6, NULL, NULL),
(856, 121, 7, NULL, NULL),
(857, 121, 8, NULL, NULL),
(858, 121, 9, NULL, NULL),
(859, 121, 10, NULL, NULL),
(860, 121, 13, NULL, NULL),
(861, 121, 14, NULL, NULL),
(862, 121, 15, NULL, NULL),
(863, 121, 16, NULL, NULL),
(864, 122, 6, NULL, NULL),
(865, 122, 7, NULL, NULL),
(866, 122, 8, NULL, NULL),
(867, 122, 9, NULL, NULL),
(868, 122, 10, NULL, NULL),
(869, 122, 13, NULL, NULL),
(870, 122, 14, NULL, NULL),
(871, 122, 15, NULL, NULL),
(872, 122, 16, NULL, NULL),
(873, 123, 6, NULL, NULL),
(874, 123, 7, NULL, NULL),
(875, 123, 9, NULL, NULL),
(876, 123, 10, NULL, NULL),
(877, 123, 13, NULL, NULL),
(878, 123, 14, NULL, NULL),
(879, 123, 15, NULL, NULL),
(880, 123, 16, NULL, NULL),
(881, 124, 6, NULL, NULL),
(882, 124, 7, NULL, NULL),
(883, 124, 9, NULL, NULL),
(884, 124, 10, NULL, NULL),
(885, 124, 13, NULL, NULL),
(886, 124, 14, NULL, NULL),
(887, 124, 15, NULL, NULL),
(888, 124, 16, NULL, NULL),
(889, 125, 6, NULL, NULL),
(890, 125, 7, NULL, NULL),
(891, 125, 8, NULL, NULL),
(892, 125, 9, NULL, NULL),
(893, 125, 10, NULL, NULL),
(894, 125, 13, NULL, NULL),
(895, 125, 14, NULL, NULL),
(896, 125, 15, NULL, NULL),
(897, 125, 16, NULL, NULL),
(898, 126, 6, NULL, NULL),
(899, 126, 7, NULL, NULL),
(900, 126, 8, NULL, NULL),
(901, 126, 9, NULL, NULL),
(902, 126, 10, NULL, NULL),
(903, 126, 13, NULL, NULL),
(904, 126, 14, NULL, NULL),
(905, 126, 15, NULL, NULL),
(906, 126, 16, NULL, NULL),
(907, 127, 4, NULL, NULL),
(908, 127, 5, NULL, NULL),
(909, 127, 8, NULL, NULL),
(910, 127, 9, NULL, NULL),
(911, 127, 13, NULL, NULL),
(912, 127, 14, NULL, NULL),
(913, 127, 15, NULL, NULL),
(914, 127, 16, NULL, NULL),
(915, 128, 4, NULL, NULL),
(916, 128, 5, NULL, NULL),
(917, 128, 8, NULL, NULL),
(918, 128, 9, NULL, NULL),
(919, 128, 13, NULL, NULL),
(920, 128, 14, NULL, NULL),
(921, 128, 15, NULL, NULL),
(922, 128, 16, NULL, NULL),
(923, 129, 6, NULL, NULL),
(924, 129, 7, NULL, NULL),
(925, 130, 6, NULL, NULL),
(926, 130, 7, NULL, NULL),
(927, 131, 4, NULL, NULL),
(928, 131, 5, NULL, NULL),
(929, 131, 8, NULL, NULL),
(930, 131, 9, NULL, NULL),
(931, 131, 10, NULL, NULL),
(932, 131, 13, NULL, NULL),
(933, 131, 14, NULL, NULL),
(934, 131, 15, NULL, NULL),
(935, 131, 16, NULL, NULL),
(936, 132, 4, NULL, NULL),
(937, 132, 5, NULL, NULL),
(938, 132, 8, NULL, NULL),
(939, 132, 9, NULL, NULL),
(940, 132, 10, NULL, NULL),
(941, 132, 13, NULL, NULL),
(942, 132, 14, NULL, NULL),
(943, 132, 15, NULL, NULL),
(944, 132, 16, NULL, NULL),
(945, 133, 4, NULL, NULL),
(946, 133, 5, NULL, NULL),
(947, 133, 8, NULL, NULL),
(948, 133, 9, NULL, NULL),
(949, 134, 6, NULL, NULL),
(950, 134, 7, NULL, NULL),
(951, 134, 8, NULL, NULL),
(952, 134, 9, NULL, NULL),
(953, 134, 10, NULL, NULL),
(954, 134, 13, NULL, NULL),
(955, 134, 14, NULL, NULL),
(956, 134, 15, NULL, NULL),
(957, 134, 16, NULL, NULL),
(958, 135, 6, NULL, NULL),
(959, 135, 7, NULL, NULL),
(960, 135, 8, NULL, NULL),
(961, 135, 13, NULL, NULL),
(962, 135, 14, NULL, NULL),
(963, 135, 15, NULL, NULL),
(964, 135, 16, NULL, NULL),
(965, 136, 6, NULL, NULL),
(966, 136, 7, NULL, NULL),
(967, 136, 8, NULL, NULL),
(968, 136, 9, NULL, NULL),
(969, 136, 10, NULL, NULL),
(970, 136, 13, NULL, NULL),
(971, 136, 14, NULL, NULL),
(972, 136, 15, NULL, NULL),
(973, 136, 16, NULL, NULL),
(974, 137, 6, NULL, NULL),
(975, 137, 7, NULL, NULL),
(976, 137, 8, NULL, NULL),
(977, 137, 9, NULL, NULL),
(978, 137, 13, NULL, NULL),
(979, 137, 14, NULL, NULL),
(980, 137, 15, NULL, NULL),
(981, 137, 16, NULL, NULL),
(982, 138, 6, NULL, NULL),
(983, 138, 7, NULL, NULL),
(984, 138, 8, NULL, NULL),
(985, 138, 9, NULL, NULL),
(986, 138, 10, NULL, NULL),
(987, 138, 13, NULL, NULL),
(988, 138, 14, NULL, NULL),
(989, 138, 15, NULL, NULL),
(990, 138, 16, NULL, NULL),
(991, 139, 6, NULL, NULL),
(992, 139, 7, NULL, NULL),
(993, 139, 8, NULL, NULL),
(994, 139, 9, NULL, NULL),
(995, 139, 10, NULL, NULL),
(996, 139, 13, NULL, NULL),
(997, 139, 14, NULL, NULL),
(998, 139, 15, NULL, NULL),
(999, 139, 16, NULL, NULL),
(1000, 140, 6, NULL, NULL),
(1001, 140, 7, NULL, NULL),
(1002, 140, 8, NULL, NULL),
(1003, 140, 9, NULL, NULL),
(1004, 140, 10, NULL, NULL),
(1005, 140, 13, NULL, NULL),
(1006, 140, 14, NULL, NULL),
(1007, 140, 15, NULL, NULL),
(1008, 140, 16, NULL, NULL),
(1009, 141, 9, NULL, NULL),
(1010, 141, 11, NULL, NULL),
(1011, 141, 12, NULL, NULL),
(1012, 142, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_uniqueness` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carton_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strip_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_claim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_doctors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patients_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_uniqueness`, `carton_image`, `strip_image`, `tablet_image`, `logo_image`, `label_claim`, `top`, `tcp`, `target_doctors`, `patients_profile`, `cpa`, `others`, `created_at`, `updated_at`) VALUES
(4, 'Testing product', 'testing', '20220725181549.jpg', '20220725181549.jpg', '20220725181549.jpg', '20220725181549.jpg', 'asdf', 'test', 'test', 'test', 'test', 'test', 'test', '2022-07-25 22:15:49', '2022-07-25 22:15:49'),
(5, 'Hello product', 'asdfa', '20220725182018.jpg', '20220725182018.jpg', '20220725182018.jpg', '20220725182018.png', 'asdfa', 'asdfas', 'sadfasdf', 'sadfsa', 'sadfadsf', 'sadfasdf', 'asdfasdf', '2022-07-25 22:20:18', '2022-07-25 22:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_team`
--

CREATE TABLE `product_team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_team`
--

INSERT INTO `product_team` (`id`, `product_id`, `team_id`, `created_at`, `updated_at`) VALUES
(11, 5, 16, NULL, NULL),
(12, 4, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'CBE ELBRIT', '2022-06-24 03:37:03', '2022-06-24 03:37:03'),
(5, 'CHE ELBRIT', '2022-06-24 03:37:08', '2022-06-24 03:37:08'),
(6, 'CBE CND', '2022-06-24 03:37:16', '2022-06-24 03:37:16'),
(7, 'CHE CND', '2022-06-24 03:37:21', '2022-06-24 03:37:21'),
(8, 'KA ELBRIT', '2022-06-24 03:37:26', '2022-06-24 03:37:26'),
(9, 'KL ELBRIT', '2022-06-24 03:37:33', '2022-06-24 03:37:33'),
(10, 'AP ELBRIT', '2022-06-24 03:37:41', '2022-06-24 03:37:41'),
(11, 'CBE Aura Proxima', '2022-06-24 03:37:50', '2022-06-24 03:37:50'),
(12, 'CHE Aura Proxima', '2022-06-24 03:37:57', '2022-06-24 03:37:57'),
(13, 'PUNJAB ELBRIT', '2022-06-24 03:38:08', '2022-06-24 03:38:08'),
(14, 'RAJASTHAN ELBRIT', '2022-06-24 03:38:14', '2022-06-24 03:38:14'),
(15, 'NORTH SPL', '2022-07-09 04:15:15', '2022-07-09 04:15:15'),
(16, 'UP ELBRIT', '2022-07-09 04:15:27', '2022-07-09 04:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$EX93ROch9CotOl9wzoJOOOxEG9xB4FKNa7hoy8NX4avosNDric71e', 1, NULL, NULL, '2022-05-22 03:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_team_id_foreign` (`team_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_employee`
--
ALTER TABLE `post_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_employee_post_id_foreign` (`post_id`),
  ADD KEY `post_employee_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `post_team`
--
ALTER TABLE `post_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_team_post_id_foreign` (`post_id`),
  ADD KEY `post_team_team_id_foreign` (`team_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_team`
--
ALTER TABLE `price_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_team_price_id_foreign` (`price_id`),
  ADD KEY `price_team_team_id_foreign` (`team_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_team`
--
ALTER TABLE `product_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_team_product_id_foreign` (`product_id`),
  ADD KEY `product_team_team_id_foreign` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `post_employee`
--
ALTER TABLE `post_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `post_team`
--
ALTER TABLE `post_team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `price_team`
--
ALTER TABLE `price_team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_team`
--
ALTER TABLE `product_team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_employee`
--
ALTER TABLE `post_employee`
  ADD CONSTRAINT `post_employee_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_employee_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_team`
--
ALTER TABLE `post_team`
  ADD CONSTRAINT `post_team_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price_team`
--
ALTER TABLE `price_team`
  ADD CONSTRAINT `price_team_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `price_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_team`
--
ALTER TABLE `product_team`
  ADD CONSTRAINT `product_team_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
