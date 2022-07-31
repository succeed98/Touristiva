-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 10:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Touristiva`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'Khojohazard@gmail.com', '09/18/2021', '09/31/2021', 'I hope this field trip is worth my time because i\'m stressed out from work and i\'ve to release stress.', '2021-05-13 19:01:10', 2, NULL, '2021-09-22 05:10:57'),
(3, 2, 'Dpatricia@yahoo.com', '09/20/2021', '09/31/2021', 'I hope this field trip is worth my time because i\'m stressed out from work and i\'ve to release stress.', '2021-05-13 20:20:01', 2, NULL, '2021-09-22 05:11:16'),
(4, 1, 'Ccollinson@gmail.com', '09/16/2021', '09/25/2021', 'I hope this field trip is worth my time because i\'m stressed out from work and i\'ve to release stress.', '2021-08-13 20:32:54', 3, 'a', '2021-09-13 21:36:39'),
(5, 3, 'BenQwofieDegajor@outlook.com', '09/20/2021', '09/31/2021', 'I hope this field trip is worth my time because i\'m stressed out from work and i\'ve to release stress.', '2021-08-13 20:33:17', 2, NULL, '2021-09-13 23:11:35'),
(6, 2, 'Jailer@gmail.com', '09/14/2021', '09/24/2021', 'I hope this field trip is worth my time because i\'m stressed out from work and i\'ve to release stress.', '2021-07-13 21:18:37', 2, 'a', '2021-09-14 07:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Samuel Simpi', 'Khojohazard@gmail.com', '0552619882', 'I want accommodation at sajuna beach club.', 'Please I would like to know the cost of travelling to the Sajuna beach club and staying at their hotel for 7 days.', '2021-09-13 22:23:53', 1),
(3, 'Felicia Free Bonto', 'feliciaBonto@yahoo.com', '0205673459', 'Internet connectivity ', 'Please I would like to know if there\'s free internet in the bus to and from my tourist destination?', '2021-09-13 22:28:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'Samson@gmail.com', 'Cancellation', 'There was a family emergency so I had to cancel my reservation or bookings.', '2021-05-13 22:03:33', 'We\'re wishing you all the best and we hope to hear from you soon. We got lots of nice packages installed for you guys when you return. Thank You.', '2021-05-15 23:50:40'),
(5, 'sherita@gmail.com', 'Cancellation', 'I\'m under the weather now so I couldn\'t make it on time. ', '2021-05-14 05:12:14', 'Wishing you a speedy recovery and we hope to hear from you soon. Thank you.', '2021-05-15 07:52:07'),
(6, 'Chisel@gmail.com', 'Refund', 'Due to some financial difficulties ,My husband and I would like a refund of our money.', '2021-05-14 07:45:37', 'Thanks for reaching out to us. we would try our possible best to make sure that your money reaches you ASAP.', '2021-05-17 20:10:40'),
(7, 'Shattawale@gmail.com', 'Refund', 'I just got a show to perform out of town and its impromptu so I would like a refund of my money. Thank You.', '2021-05-14 07:56:46', 'We humbly request you wait a little longer as we resolve your issues for you. Thank you.', '2021-05-19 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br></strong></font><font size=\"2\">&nbsp;</font><span style=\"color: rgb(148, 158, 172); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px; letter-spacing: 0.5px;\">BY ACCESSING AND/OR USING ANY APPLICATION OR SERVICE, YOU CONFIRM THAT YOU ACCEPT AND AGREE TO BE BOUND BY THESE TERMS AND ACKNOWLEDGE THAT THEY CONSTITUTE A LEGALLY BINDING CONTRACT BETWEEN US AND YOU (AND, IF RELEVANT, ANY ORGANISATION ON WHOSE BEHALF YOU ARE ACTING). IF YOU ARE ACTING ON BEHALF OF ANY ORGANISATION, YOU CONFIRM THAT YOU HAVE THE REQUISITE AUTHORITY, POWER AND RIGHT TO FULLY BIND THAT ORGANISATION. IF YOU (OR, IF RELEVANT, YOUR ORGANISATION) DO NOT AGREE TO ALL OF THESE TERMS (OR IF YOU DO NOT HAVE THE RIGHT TO BIND YOUR ORGANISATION), YOU ARE NOT PERMITTED TO ACCESS OR USE ANY APPLICATION OR SERVICE, AND YOU SHOULD NOT PROCEED FURTHER.</span></p>\r\n										\r\n										'),
(2, 'Privacy', '<p class=\"MsoNormal\"><span style=\"font-family: Calibri; font-weight: bold; font-size: medium;\">Privacy Policy for Touristiva</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">At Tourism management system , accessible from Localhost/Touristiva/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Tourism management system and how we use it.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Tourism management system . This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Consent</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Information we collect</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">How we use your information</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">We use the information we collect in various ways, including to:</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Provide, operate, and maintain our website</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Improve, personalize, and expand our website</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Understand and analyze how you use our website</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Develop new products, services, features, and functionality</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Send you emails</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Find and prevent fraud</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Log Files</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Tourism management system follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Advertising Partners Privacy Policies</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Tourism management system .</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Tourism management system , which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Note that Tourism management system has no access to or control over these cookies that are used by third-party advertisers.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Third Party Privacy Policies</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Tourism management system \'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Under the CCPA, among other rights, California consumers have the right to:</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Request that a business delete any personal data about the consumer that a business has collected.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">GDPR Data Protection Rights</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Children\'s Information</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\">Tourism management system does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-fareast-font-family:SimSun;\r\nmso-bidi-font-family:\'Times New Roman\';font-size:11.0000pt;\"><o:p></o:p></span></p>										\r\n										'),
(3, 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This is a final year project work of 4 intelligent computer networking students of Koforidua technical university located in the Eastern Region of Ghana. This project is based on tourism in the eastern part of the country.</span></div>'),
(11, 'contact', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Samuel Simpi</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Khojohazard@gmail.com</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">+233552619882</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Boti Falls Trip ', 'General', 'Boti Waterfalls, Boti', 100, 'Air Conditioning ,Balcony / Terrace, Cable / Free Wifi / Pay TV available, Ceiling Fan, Hairdryer', 'Souring falls flowing over a rugged rock face into a natural pool which is popular for swimming.\r\ncontact: 0302770161 \r\nWebsite: https:tripadvisor.com/Attraction_Review-g15301819-d2647003-Reviews-Boti_Falls-Boti_Eastern_Region.html', 'boti-falls-eastern-region.jpg', '2021-05-13 14:23:44', '2021-11-20 20:25:50'),
(2, 'Aburi Botanical Gardens', 'Recreational Park', 'Aburi', 150, 'Air Conditioning ,Balcony / Terrace, Cable / Free Wifi / Pay TV available, Ceiling Fan, Hairdryer', 'Aburi Botanical Gardens is a botanical garden in Aburi in the Eastern region of South Ghana. The garden occupies an area of 64.8 hectares. It was opened in March, 1890 and was founded by Governor William-Griffith and Dr John Farrell Easmon, a Sierra Leonean medical doctor.\r\n\r\nWebsite: https://aburi-net.net/index.html', 'aburi.jfif', '2021-05-13 15:24:26', '2021-11-20 20:28:41'),
(3, 'Akosombo Dam', 'Recreational sites and research ', 'Akosombo, Ghana ', 500, 'Air Conditioning ,Balcony / Terrace, Cable / Free Wifi / Pay TV available, Ceiling Fan, Hairdryer and Free drinks.', 'The Akosombo Damn, also known as the Volta Dam, is a hydroelectric dam on the Volta River in South Eastern Ghana in the Akosombo gorge and part of the Volta River Authority. The construction of the dam flooded part of the Volta River Basin, and led to the subsequent creation of Lake Volta. The Dam was opened in 1965.\r\n\r\nWebsite: https://vra.com/our_mandate/akosombo_hydro_plant.php', 'Akosombo-Dam-Volta-River-Ghana.jpg', '2021-05-13 16:00:58', '2021-11-20 20:32:29'),
(4, 'Bunso Arboretum', 'Familty and Couple', 'Koforidua Highway, Bunso', 600, 'Air Conditioning ,Cable / Free Wifi / Pay TV available, Ceiling Fan, Hairdryer and Free drinks.', 'Bunso Arboretum is a botanical garden located at bunso in the East Akim District of the Eastern Region in Ghana. Its a fun place for mostly kids and their families.\r\n\r\nWebsite: https://g.co/kgs/kMVV6A ', 'bonsu.jpg', '2021-05-13 22:39:37', '2021-11-20 20:36:14'),
(5, 'Twenedurase Mystical Cave ( Nkofieho Tourist Site )', 'Family Package', 'J694+PR6, Obo', 1500, ' Air Conditioning ,Balcony / Terrace, Cable / Free Wifi / Pay TV available, Ceiling Fan, Torch Lights and Helmets.', 'The Mystical Cave also known as Nkofieho Cave of Life is believed to be one of the oldest caves in Ghana and its an absolutely breath-taking tourist site. The site is located close to the Padlock Rock in Kwahu Twenedurase in the Kwahu South District.\r\n\r\nWebsite: https://g.co/kgs/YwdM1b', 'mystical.jpg', '2021-05-13 22:42:10', '2021-11-20 20:39:04'),
(6, 'The Umbrella Rock', 'Family and Couples Package ', 'Asiafo Amanfro, Ghana ', 2000, 'Frree wifi, pickup and drop etc', 'The Umbrella Rock is a rock found at the site of the Boti falls in Yilo Krobo District, Ghana. As the name implies, the overhang on the top is large enough to cover 12 to 15 people at once. Even though the pivot on which the top lies on might seem small, its very strong.\r\n\r\nWebsite: https://g.co/kgs/PK1AZR', 'umbrella-rock-in-the-yilo-krobo-district-outside-of-accra-ghana-the-KJK68D.jpg', '2021-05-14 08:01:08', '2021-11-20 20:43:40'),
(7, 'Sajuna Beach Club', 'Family and Couples Package ', 'Akosombo - Tema Rd, Tema', 1500, ' Air Conditioning ,Balcony / Terrace, Cable / Free Wifi / Pay TV available etc', 'Sajuna Beach Club is a great place to enjoy yourself. You can relax on the beautifully designed private beach or have a barbecue on the white sand.\r\n\r\nWebsite: https://g.co/kgs/8S6dtS', 'sajuna.jpg', '2021-09-22 03:18:42', '2021-11-20 20:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Samuel Simpi', '0552619882', 'Khojohazard@gmail.com', 'Iamhazzard16', '2021-05-10 10:38:17', '2021-05-25 19:36:08'),
(3, 'Denzel Z', '0265846962', 'denzel@gmail.com', 'denzel123', '2021-05-10 10:50:48', '2021-05-14 07:40:19'),
(7, 'Jordan A', '0509001640', 'jailer@gmail.com', 'sparrow123', '2021-05-10 10:54:56', '2021-09-12 03:30:22'),
(8, 'Dr Patricia', '0269401260', 'Dpatricia@yahoo.com', 'smartgenuis224', '2021-05-14 07:17:44', '2021-11-02 12:01:15'),
(9, 'Kwame Appiah', '0303334001', 'Kappiah@gmail.com', 'appiahkwame233', '2021-05-14 07:25:13', '2021-06-14 07:25:42'),
(10, 'Collins Collinson', '0242444603', 'Ccollinson@gmail.com', 'javac++basics101', '2021-08-14 07:43:23', '2021-12-14 07:46:57'),
(11, 'Ben Qwofie Degajor', '0553308162', 'BenQwofieDegajor@outlook.com', 'mafialords619', '2021-11-14 07:54:32', '2021-12-14 07:55:17'),
(12, 'Samuel Simpi', '0552619882', 'Khojohazard23@gmail.com', '1d8f369f6fbe8a06e8f3b03fdb6eee07', '2021-09-22 04:34:26', '0000-00-00 00:00:00'),
(13, 'Samuel Simpi', '0552619882', 'Khojohazard23@gmail.com', '1d8f369f6fbe8a06e8f3b03fdb6eee07', '2021-09-22 04:34:54', '0000-00-00 00:00:00'),
(14, ' Dance Lord', '0265846962', 'DanceLord@gmail.com', '141bab82dddd6100aabdd3b318f0598b', '2021-09-23 10:22:59', '0000-00-00 00:00:00'),
(15, 'loretta pokua sefah ', '0540932281', 'loretta@yahoo.com', '66241265c8b4c45690fc2c6b5d9cb06a', '2021-09-30 15:55:44', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
