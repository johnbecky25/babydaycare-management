-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 04:30 PM
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
-- Database: `bdcmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `User_id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UserEmail` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`User_id`, `FullName`, `UserName`, `MobileNumber`, `UserEmail`, `Password`) VALUES
(2, 'Admin', 'admin', 4757576676, 'jgjgjggjjjfg@gmail.com', 'admin123'),
(15, NULL, 'john', NULL, 'john@gmail.com', 'john'),
(16, NULL, 'wayne', NULL, 'wayne@gmail.com', 'wayne');

-- --------------------------------------------------------

--
-- Table structure for table `tblbabysitter`
--

CREATE TABLE `tblbabysitter` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNo` bigint(12) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `LanguagesKnown` mediumtext DEFAULT NULL,
  `BabysitterExp` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Certificate` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbabysitter`
--

INSERT INTO `tblbabysitter` (`id`, `Name`, `Email`, `MobileNo`, `Address`, `City`, `State`, `LanguagesKnown`, `BabysitterExp`, `ProfilePic`, `Certificate`, `Description`, `RegDate`) VALUES
(9, 'Rebeccah Awino', 'rebeccahawino@gmail.com', 792316179, 'Nairobi', 'Nairobi', 'Kenya', 'English and Swahili', '5', '417688428d061862b3f41d395e7d34a01677504557.jpg', 'CPR', 'Good ', '2023-02-27 13:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(14) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(3, 'john', 'owino', 'johndarine25@gmail.com', 792316179, 'hi', '2023-03-01 20:28:26', 1),
(4, 'John', 'Darine', 'johndarine25@gmail.com', 792316179, 'hey please call me', '2023-03-14 21:26:51', 1),
(5, 'Kaingi', 'David', 'johndarine25@gmail.com', 793838383, 'Good', '2023-03-22 13:15:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblenrollment`
--

CREATE TABLE `tblenrollment` (
  `ID` int(10) NOT NULL,
  `EnrollmentNumber` int(10) DEFAULT NULL,
  `YourName` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(10) DEFAULT NULL,
  `AlternateNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `ChildName` varchar(200) DEFAULT NULL,
  `DOB` varchar(200) DEFAULT NULL,
  `ChildGender` varchar(50) DEFAULT NULL,
  `ProgramName` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Landmark` varchar(200) DEFAULT NULL,
  `EnrollDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblenrollment`
--

INSERT INTO `tblenrollment` (`ID`, `EnrollmentNumber`, `YourName`, `PhoneNumber`, `AlternateNumber`, `Email`, `ChildName`, `DOB`, `ChildGender`, `ProgramName`, `Address`, `Zipcode`, `City`, `State`, `Country`, `Landmark`, `EnrollDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(12, 359535815, 'Sydney Talker', 792316179, 789786543, 'sydneytalker@gmail.com', 'Ronny Owens', '2019-06-28', 'Male', 'Play Group', 'Kitengela', 25, 'Nairobi', 'Kenya', 'Kenya', 'Kenya', '2023-02-28 12:42:03', '', 'Accepted', '2023-02-28 12:42:53'),
(13, 261358175, 'Jack Owens', 787678676, 783883838, 'jackowen@gmail.com', 'Sheilah Owens', '2018-12-28', 'Female', 'Upper KG', 'Limuru', 24, 'Nairobi', 'Nairobi', 'Kenya', 'Kenya', '2023-02-28 12:49:08', '', 'Onhold', '2023-02-28 12:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'Blessings Daycare is a state of the art daycare that \r\n', NULL, NULL, '2023-02-27 13:06:13'),
(2, 'contactus', 'Contact Us', 'Limuru', 'blessingsdaycare@gmail.com', 254792316179, '2023-03-22 13:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `id` int(11) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDetail` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`id`, `ServiceName`, `ServiceDetail`, `CreationDate`) VALUES
(1, 'Early education and care services', 'Preschool is offered for children who will be starting school within the next year (4 to 5 year olds). Some 3 year olds are also eligible to attend.\r\n', '2023-02-13 06:45:23'),
(2, 'Community Development Services', 'The Community Development program coordinates services to enhance parenting by supporting parents and their connection with their community. Activities vary depending on parent needs and may include:\r\n-Playgroups\r\n-Parenting programs\r\n-Community events\r\n', '2023-02-13 06:45:42'),
(3, 'Health services', 'Health promotion materials and activities on dental health, healthy eating and physical activity and health, child development and parenting information is available.\r\nChild and Family Health Service (CaFHS) provide child and family health services and advice and child health checks.\r\nNutrition groups, parenting groups and Aboriginal health programs are available', '2023-02-13 06:45:58'),
(4, 'Family Services', 'Families have access to a diversity of parenting programs at centres. These programs focus on parenting skills and child development including literacy, behaviour guidance, food, nutrition, exercise, and caring for children’s development, learning and health needs.\r\n\r\nThe family practitioner work alongside vulnerable families and children. They support parents to better understand and respond to their child’s needs.', '2021-02-15 06:46:13'),
(5, 'Nanny Care', 'This type of child care service will allow the child or children to stay at home, it will save you time in dropping and picking, and you have peace of mind. You can contact the nanny any time to see how your child is doing. Additionally, nannies provide housework as well.', '2023-02-14 06:46:29'),
(6, 'Babysitter', 'Hiring a babysitter is the least expensive option. You have to pay by the hour, and you only need these services when you have a specific appointment. \r\nAt Blessings Facility we offer the best srvices when it come to baby sitting.', '2023-02-14 06:46:42'),
(11, 'Early education and care services', 'hfhfhhfdhdfjh', '2023-03-06 21:58:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `tblbabysitter`
--
ALTER TABLE `tblbabysitter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenrollment`
--
ALTER TABLE `tblenrollment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PracticeArea` (`ServiceName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblbabysitter`
--
ALTER TABLE `tblbabysitter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblenrollment`
--
ALTER TABLE `tblenrollment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
