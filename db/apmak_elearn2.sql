-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2019 at 05:33 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apmak_elearn2`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_ID` int(10) UNSIGNED NOT NULL,
  `news_Title` varchar(85) DEFAULT NULL,
  `news_Content` text,
  `news_Pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sem_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_ID`, `news_Title`, `news_Content`, `news_Pub`, `sem_ID`) VALUES
(1, 'Title1', 'asdasdasd 123123', '2019-03-21 04:05:05', 1),
(2, 'Title2', 'asdasdasd', '2019-03-21 04:05:08', 1),
(3, 'Title3', 'asdasdasdxxxx', '2019-03-21 04:05:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `record_admin_details`
--

CREATE TABLE `record_admin_details` (
  `rad_ID` int(11) UNSIGNED NOT NULL,
  `rad_Img` longblob,
  `user_ID` int(11) UNSIGNED DEFAULT NULL,
  `rad_EmpID` varchar(25) DEFAULT NULL,
  `rad_FName` varchar(85) DEFAULT NULL,
  `rad_MName` varchar(85) DEFAULT NULL,
  `rad_LName` varchar(85) DEFAULT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT NULL,
  `sex_ID` int(11) UNSIGNED DEFAULT NULL,
  `marital_ID` int(11) UNSIGNED DEFAULT NULL,
  `rad_Email` varchar(100) DEFAULT NULL,
  `rad_Bday` date DEFAULT NULL,
  `rad_Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_admin_details`
--

INSERT INTO `record_admin_details` (`rad_ID`, `rad_Img`, `user_ID`, `rad_EmpID`, `rad_FName`, `rad_MName`, `rad_LName`, `suffix_ID`, `sex_ID`, `marital_ID`, `rad_Email`, `rad_Bday`, `rad_Address`) VALUES
(1, NULL, 1, '123548', 'admin', 'admin', 'admin', 1, 1, NULL, 'newemail@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `record_instructor_details`
--

CREATE TABLE `record_instructor_details` (
  `rid_ID` int(11) UNSIGNED NOT NULL,
  `rid_Img` longblob,
  `user_ID` int(11) UNSIGNED DEFAULT NULL,
  `rid_EmpID` varchar(25) DEFAULT NULL,
  `rid_FName` varchar(85) DEFAULT NULL,
  `rid_MName` varchar(85) DEFAULT NULL,
  `rid_LName` varchar(85) DEFAULT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT '1',
  `sex_ID` int(11) UNSIGNED DEFAULT NULL,
  `marital_ID` int(11) UNSIGNED DEFAULT NULL,
  `rid_Email` varchar(100) DEFAULT NULL,
  `rid_Bday` date DEFAULT NULL,
  `rid_Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_instructor_details`
--

INSERT INTO `record_instructor_details` (`rid_ID`, `rid_Img`, `user_ID`, `rid_EmpID`, `rid_FName`, `rid_MName`, `rid_LName`, `suffix_ID`, `sex_ID`, `marital_ID`, `rid_Email`, `rid_Bday`, `rid_Address`) VALUES
(1, '', NULL, '30203012', 'Teacher1', 'T', 'Teacher1', 20, 2, 1, 'teacher1@gmail.com', '1988-09-01', 'Address1'),
(3, '', 2, '30203013', 'Teacher2', 'T', 'Teacher2', 1, 1, 1, 'email@gmail.com', '1985-09-18', 'address'),
(4, NULL, NULL, '30203014', 'Heimer', 'D', 'Constantine', 2, 1, NULL, NULL, NULL, NULL),
(5, '', NULL, '30203015', 'Teacher4', 'T', 'Teacher4', 1, 1, 2, 'teacher4@gmail.com', '1970-09-01', 'teacher address');

-- --------------------------------------------------------

--
-- Table structure for table `record_student_details`
--

CREATE TABLE `record_student_details` (
  `rsd_ID` int(11) UNSIGNED NOT NULL,
  `rsd_Img` longblob,
  `user_ID` int(11) UNSIGNED DEFAULT NULL,
  `rsd_StudNum` varchar(25) NOT NULL,
  `rsd_FName` varchar(85) NOT NULL,
  `rsd_MName` varchar(85) NOT NULL,
  `rsd_LName` varchar(85) NOT NULL,
  `suffix_ID` int(11) UNSIGNED DEFAULT NULL,
  `sex_ID` int(11) UNSIGNED DEFAULT NULL,
  `marital_ID` int(11) UNSIGNED DEFAULT NULL,
  `rsd_Email` varchar(100) DEFAULT NULL,
  `rsd_Bday` date DEFAULT NULL,
  `rsd_Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_student_details`
--

INSERT INTO `record_student_details` (`rsd_ID`, `rsd_Img`, `user_ID`, `rsd_StudNum`, `rsd_FName`, `rsd_MName`, `rsd_LName`, `suffix_ID`, `sex_ID`, `marital_ID`, `rsd_Email`, `rsd_Bday`, `rsd_Address`) VALUES
(1, '', NULL, '201910656', 'Sample4', 'S', 'Sample4', 1, 1, 1, 'sample4@gmail.com', '2019-09-09', 'sample address'),
(2, '', NULL, '201910657', 'Sample3', 'S', 'Sample3', 1, 1, 1, 'sample3@gmail.com', '1998-09-03', 'sample3 address'),
(3, '', 6, '201910658', 'Sample2', 'S', 'Sample2', 1, 2, 1, 'sample2@gmail.com', '1997-09-03', 'sample2 address'),
(4, '', 4, '201910659', 'Student1', 'S', 'Student1', 1, 1, 1, 'sample1@gmail.com', '2019-09-01', 'sample address1');

-- --------------------------------------------------------

--
-- Table structure for table `ref_marital`
--

CREATE TABLE `ref_marital` (
  `marital_ID` int(11) UNSIGNED NOT NULL,
  `marital_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_marital`
--

INSERT INTO `ref_marital` (`marital_ID`, `marital_Name`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Widowed');

-- --------------------------------------------------------

--
-- Table structure for table `ref_section`
--

CREATE TABLE `ref_section` (
  `section_ID` int(11) UNSIGNED NOT NULL,
  `section_Name` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_section`
--

INSERT INTO `ref_section` (`section_ID`, `section_Name`) VALUES
(1, 'Section 1'),
(2, 'Section 2'),
(3, 'Section 3'),
(4, 'Section 4'),
(5, 'Section 5'),
(6, 'Section 6'),
(7, 'Section 6'),
(8, 'Section 7');

-- --------------------------------------------------------

--
-- Table structure for table `ref_semester`
--

CREATE TABLE `ref_semester` (
  `sem_ID` int(11) UNSIGNED NOT NULL,
  `sem_start` date DEFAULT NULL,
  `sem_end` date DEFAULT NULL,
  `stat_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_semester`
--

INSERT INTO `ref_semester` (`sem_ID`, `sem_start`, `sem_end`, `stat_ID`) VALUES
(1, '2017-06-01', '2018-03-01', 0),
(2, '2018-06-01', '2019-03-01', 0),
(3, '2019-06-01', '2020-03-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_sex`
--

CREATE TABLE `ref_sex` (
  `sex_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `sex_Name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_sex`
--

INSERT INTO `ref_sex` (`sex_ID`, `sex_Name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `ref_status`
--

CREATE TABLE `ref_status` (
  `status_ID` int(11) UNSIGNED NOT NULL,
  `status_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status`
--

INSERT INTO `ref_status` (`status_ID`, `status_Name`) VALUES
(1, 'Enable'),
(2, 'Disable');

-- --------------------------------------------------------

--
-- Table structure for table `ref_subject`
--

CREATE TABLE `ref_subject` (
  `subject_ID` int(11) UNSIGNED NOT NULL,
  `subject_code` varchar(85) DEFAULT NULL,
  `subject_TItle` varchar(85) DEFAULT NULL,
  `Abbreviation` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_subject`
--

INSERT INTO `ref_subject` (`subject_ID`, `subject_code`, `subject_TItle`, `Abbreviation`) VALUES
(1, '201922423', 'Filipino', NULL),
(2, '201922424', 'English', NULL),
(3, '201922425', 'Mathematics', NULL),
(4, '201922426', 'Science', NULL),
(5, '201922427', 'Araling Panlipunan', NULL),
(6, '201922428', 'EPP', 'Edukasyong Pantahanan at Pangkabuhayan'),
(7, '201922429', 'MAPEH', 'Music,Arts,Physical Education,Health'),
(8, '201922430', 'TLE', 'Technology and Livelihood Education');

-- --------------------------------------------------------

--
-- Table structure for table `ref_suffixname`
--

CREATE TABLE `ref_suffixname` (
  `suffix_ID` int(11) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `suffix` varchar(10) DEFAULT NULL COMMENT 'suffix name position on the last name ',
  `suffix_Name` varchar(50) DEFAULT NULL COMMENT 'suffix description'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_suffixname`
--

INSERT INTO `ref_suffixname` (`suffix_ID`, `suffix`, `suffix_Name`) VALUES
(1, 'N/A', 'Not Applicable'),
(2, 'CFRE', 'Certified Fund Raising Executive'),
(3, 'CLU', 'Chartered Life Underwriter'),
(4, 'CPA', 'Certified Public Accountant'),
(5, 'C.S.C.', 'Congregation of Holy Cross'),
(6, 'C.S.J.', 'Sisters of St. Joseph'),
(7, 'D.C.', 'Doctor of Chiropractic'),
(8, 'D.D.', 'Doctor of Divinity'),
(9, 'D.D.S.', 'Doctor of Dental Surgery'),
(10, 'D.M.D.', 'Doctor of Dental Medicine'),
(11, 'D.O.', 'Doctor of Osteopathy'),
(12, 'D.V.M.', 'Doctor of Veterinary Medicine'),
(13, 'Ed.D.', 'Doctor of Education'),
(14, 'Esq.', 'Esquire'),
(15, 'II', 'The Second'),
(16, 'III', 'The Third'),
(17, 'IV', 'The Fourth'),
(18, 'Inc.', 'Incorporated'),
(19, 'J.D.', 'Juris Doctor'),
(20, 'Jr.', 'Junior'),
(21, 'LL.D.', 'Doctor of Laws'),
(22, 'Ltd.', 'Limited'),
(23, 'M.D.', 'Doctor of Medicine'),
(24, 'O.D.', 'Doctor of Optometry'),
(25, 'O.S.B.', 'Order of St Benedict'),
(26, 'P.C.', 'Past Commander, Police Constable, Post Commander'),
(27, 'P.E.', 'Protestant Episcopal'),
(28, 'Ph.D.', 'Doctor of Philosophy'),
(29, 'Ret.', 'Retired'),
(30, 'R.G.S', 'Sisters of Our Lady of Charity of the Good Shepher'),
(31, 'R.N.', 'Registered Nurse'),
(32, 'R.N.C.', 'Registered Nurse Clinician'),
(33, 'S.H.C.J.', 'Society of Holy Child Jesus'),
(34, 'S.J.', 'Society of Jesus'),
(35, 'S.N.J.M.', 'Sisters of Holy Names of Jesus & Mary'),
(36, 'Sr.', 'Senior'),
(37, 'S.S.M.O.', 'Sister of Saint Mary Order'),
(38, 'USA', 'United States Army'),
(39, 'USAF', 'United States Air Force'),
(40, 'USAFR', 'United States Air Force Reserve'),
(41, 'USAR', 'United States Army Reserve'),
(42, 'USCG', 'United States Coast Guard'),
(43, 'USMC', 'United States Marine Corps'),
(44, 'USMCR', 'United States Marine Corps Reserve'),
(45, 'USN', 'United States Navy'),
(46, 'USNR', 'United States Navy Reserve');

-- --------------------------------------------------------

--
-- Table structure for table `ref_test_type`
--

CREATE TABLE `ref_test_type` (
  `tstt_ID` int(11) UNSIGNED NOT NULL,
  `tstt_Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_test_type`
--

INSERT INTO `ref_test_type` (`tstt_ID`, `tstt_Name`) VALUES
(1, 'Quiz'),
(2, 'Exam');

-- --------------------------------------------------------

--
-- Table structure for table `ref_year_level`
--

CREATE TABLE `ref_year_level` (
  `yl_ID` int(11) UNSIGNED NOT NULL,
  `yl_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_year_level`
--

INSERT INTO `ref_year_level` (`yl_ID`, `yl_Name`) VALUES
(1, 'Grade 7'),
(2, 'Grade 8'),
(3, 'Grade 9'),
(4, 'Grade 10');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_ID` int(11) UNSIGNED NOT NULL,
  `rid_ID` int(11) UNSIGNED DEFAULT NULL,
  `section_ID` int(11) UNSIGNED DEFAULT NULL,
  `status_ID` int(11) UNSIGNED DEFAULT NULL,
  `sem_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_ID`, `rid_ID`, `section_ID`, `status_ID`, `sem_ID`) VALUES
(1, 3, 1, 1, 3),
(8, 1, 8, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_assignment`
--

CREATE TABLE `room_assignment` (
  `assignment_ID` int(11) UNSIGNED NOT NULL,
  `room_ID` int(11) UNSIGNED DEFAULT NULL,
  `assignment_Name` varchar(85) DEFAULT NULL,
  `assignment_Instruction` text,
  `assignment_Points` int(11) DEFAULT NULL,
  `assignment_Due` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_attachment`
--

CREATE TABLE `room_attachment` (
  `attachment_ID` int(11) UNSIGNED NOT NULL,
  `room_ID` int(11) UNSIGNED DEFAULT NULL,
  `attachment_Name` varchar(255) DEFAULT NULL,
  `attachment_MIME` tinytext,
  `attachment_Data` longblob,
  `attachment_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_module`
--

CREATE TABLE `room_module` (
  `mod_ID` int(11) UNSIGNED NOT NULL,
  `mod_Title` varchar(85) DEFAULT NULL,
  `room_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_module`
--

INSERT INTO `room_module` (`mod_ID`, `mod_Title`, `room_ID`) VALUES
(1, 'MODYUL 1', 1),
(2, 'MODYUL  2', 1),
(3, 'MODYUL 3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_module_subtopic`
--

CREATE TABLE `room_module_subtopic` (
  `submtop_ID` int(11) UNSIGNED NOT NULL,
  `mtopic_ID` int(11) UNSIGNED DEFAULT NULL,
  `submtop_Title` varchar(85) DEFAULT NULL,
  `submtop_Content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_module_subtopic`
--

INSERT INTO `room_module_subtopic` (`submtop_ID`, `mtopic_ID`, `submtop_Title`, `submtop_Content`) VALUES
(1, 1, 'Cupid at Psyche', '1Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\n\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\n\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\n\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\n\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(2, 1, 'Nagkaroon ng Anak Sina Wigan at Bugan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(3, 1, 'Mga Pandiwang Ginagamit sa Pagpapahayag ng Aksiyon,Karanasan, at Pangyayari\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(4, 2, 'Ang Alegorya ng Yungib', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(5, 2, 'Ang Ningning at ang Liwanag', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(6, 2, 'Ekspresyon sa Pagpapahayag sa Konsepto ng Pananaw', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(7, 3, 'Ang Tusong Katiwala', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(8, 3, 'Mensahe ng Butil ng Kape', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(9, 3, 'Mga Piling Pang-ugnay sa Pagsasalaysay', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(10, 4, 'Ang Kuwintas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(11, 4, 'Kultura ng France: Kaugalian at Tradisyon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(12, 4, 'Panghalip bilang Panuring sa mga Tauhan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(13, 5, 'Kuba ng Notre Dame (Buod)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(14, 5, 'Dekada \'70 (Buod)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(15, 5, 'Mga Hudyat sa Pagsusunod-sunod ng mga Pangyayari', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(16, 6, 'Ang Tinig ng Ligaw na Gansa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.');
INSERT INTO `room_module_subtopic` (`submtop_ID`, `mtopic_ID`, `submtop_Title`, `submtop_Content`) VALUES
(17, 6, 'Pagpapahayag ng mga Emosyon at Saloobin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(18, 7, 'Epiko ni Gilgamesh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(19, 7, 'Kasaysayan ng Epiko', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(20, 7, 'Mga Pananda sa Mabisang Paglalahad ng Pahayag', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum odio leo, suscipit nec dapibus et, luctus id nunc. Donec magna eros, laoreet ut mi at, efficitur auctor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nibh nisl, feugiat ut tempor eget, fringilla quis sapien. Praesent imperdiet scelerisque massa, id semper purus mattis ullamcorper. Pellentesque a blandit orci, sed rutrum sapien. Phasellus ante nulla, blandit at ante quis, rutrum ullamcorper magna. Nam vel vehicula nunc, sed faucibus urna.\r\n\r\nSed in ornare massa. Nam vel elit at velit tristique luctus ut finibus turpis. Nullam eget efficitur purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed efficitur volutpat accumsan. Duis feugiat ullamcorper augue quis ultrices. Nulla interdum malesuada mauris vitae facilisis. Nulla pharetra, dui a aliquet congue, ex justo sollicitudin odio, vitae lacinia ipsum eros sit amet magna.\r\n\r\nNullam sagittis ex venenatis, hendrerit nunc id, finibus quam. Etiam scelerisque cursus nisi quis maximus. Vivamus enim enim, dignissim et dictum sed, tempus a neque. Aenean auctor odio a urna porttitor rutrum. Mauris sed venenatis tortor, a rhoncus ipsum. Nullam pulvinar quam feugiat libero scelerisque, non pretium augue bibendum. Donec massa nibh, luctus eget tortor vel, auctor vestibulum eros. Vestibulum interdum dignissim efficitur. Etiam tempor aliquam diam. In venenatis sapien ac imperdiet vestibulum. Aliquam non eros in ipsum maximus blandit. Etiam euismod elit a massa feugiat fringilla. Mauris semper ante sit amet libero maximus gravida. Suspendisse sed erat tortor.\r\n\r\nCurabitur eget commodo dolor. Mauris a tincidunt velit. Vivamus eu elementum ligula. Quisque vitae vehicula nisi. Cras convallis ullamcorper ex, nec porttitor elit accumsan nec. Maecenas non velit eget leo maximus eleifend. Duis tincidunt erat tellus, vitae vehicula urna sodales ut. Quisque suscipit elementum tristique. Ut ornare ac odio non sagittis. In ligula tellus, finibus sit amet aliquet in, feugiat id orci. Fusce vehicula mauris id lacus tincidunt, et pharetra felis auctor. Fusce eu metus rhoncus, sollicitudin lectus consectetur, fermentum dolor. Ut et aliquet urna. Morbi porta, odio ac placerat maximus, mi sem porttitor purus, et euismod augue dolor et urna.\r\n\r\nPraesent dapibus tincidunt facilisis. Maecenas vestibulum rhoncus ligula, in facilisis ex porttitor vitae. Sed finibus, massa quis imperdiet bibendum, quam nisi consectetur libero, id faucibus tellus nisl at odio. Donec sit amet porta nisl, vel placerat libero. Sed tempus nunc sed lorem scelerisque auctor. Ut auctor augue a diam imperdiet mattis. Aenean varius hendrerit ornare. Fusce aliquet tincidunt ullamcorper. Nam facilisis et est at viverra. Nullam faucibus dolor id leo dictum, eget convallis purus bibendum. Nullam a ligula feugiat velit venenatis malesuada. Vestibulum ut vestibulum risus. Suspendisse et faucibus ex. Vestibulum pharetra ante et ligula porta fringilla.'),
(21, 1, 'Sample Video', '<iframe width=\"850\" height=\"523\" src=\"https://www.youtube.com/embed/tSbokTGNABQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(22, 8, 'Talumpati ni Dilma Rousseff sa kaniyang Inagurasyon ', NULL),
(23, 8, '(Kauna-unahang Pangulong Babae ng Brazil)', NULL),
(24, 8, 'Kahirapan: Hamon sa Bawat Pilipino', NULL),
(25, 8, 'Kaisahan at Kasanayan sa Pagpapalawak ng Pangungusap', NULL),
(26, 9, 'Ako Po ay Pitong Taong Gulang', NULL),
(27, 9, 'Para sa Kagalingan at Karapatan ng mga Bata', NULL),
(28, 9, 'Mga Salitang Nagpapahayag ng Pangyayari at Damdamin', NULL),
(29, 10, 'Ang Matanda at ang Dagat', NULL),
(30, 10, 'Suring-basa ng Harry Potter', NULL),
(31, 10, 'Paggamit ng Pahayag na Pagsang-ayon at Pagtutol sa Pagbibigay ng Puna o Panunuring Pa', NULL),
(32, 11, 'Sina Thor at Loki sa Lupain ng mga Higante', NULL),
(33, 11, 'Ang Pakikipagsapalaran ni Samson', NULL),
(34, 11, 'Paggamit ng Wastong Pokus ng Pandiwa na Tagaganap at Layon sa Pagsusuri', NULL),
(35, 12, 'Ang Aking Pag-ibig', NULL),
(36, 12, 'Babang-Luksa/Pamana', NULL),
(37, 12, 'Mabisang Paggamit ng Matatalinghagang Pananalita', NULL),
(38, 13, 'Sintahang Romeo at Juliet', NULL),
(39, 13, 'Moses,Moses', NULL),
(40, 13, 'Pokus sa Kagamitan at Pokus sa Pinaglalaanan sa Pagsulat  Sariling Damdamin', NULL),
(41, 14, 'Aginaldo ng mga Mago', NULL),
(42, 14, 'Sa Loob ng Love Class', NULL),
(43, 14, 'Pokus sa Ganapan at Pokus sa Sanhi Gamit sa Pagsasalasay ng mga Pangyayari', NULL),
(44, 15, 'Liongo', NULL),
(45, 15, 'Maaaring Lumipad Ang Tao', NULL),
(46, 15, 'Pagsasaling-wika', NULL),
(47, 16, 'Mullah Nassredin', NULL),
(48, 16, 'Mula sa Anekdota ni Saadi', NULL),
(49, 16, 'Diskursong Pasalaysay', NULL),
(50, 17, 'Ang Talumpati ni Nelson Mandela', NULL),
(51, 17, 'Ako ay Ikaw', NULL),
(52, 17, 'Paggamit ng Tuwiran at Di-Tuwirang Pahayag sa  \r\nPaghahatid ng Mensahe\r\n', NULL),
(53, 18, 'Hele ng Ina sa Kaniyang Panganay', NULL),
(54, 18, 'Ang Matanda at ang Batang Paruparo', NULL),
(55, 18, 'Matatalinghagang Pananalita at Simbolismo', NULL),
(56, 19, 'Ang Alaga', NULL),
(57, 19, 'Rosalia Villanueva  - Teodoro, Ang Dakilang Ina', NULL),
(58, 19, 'Mga Pangungusap na Naglalahad ng Implikasiyon', NULL),
(59, 20, 'Sundiata: Ang Epiko ng Sinaunang Mali', NULL),
(60, 20, 'Dakilang Bayani: Rizal o Bonifacio?', NULL),
(61, 20, 'Mga Ekspresiyon sa Pagpapahayag ng Layon o \r\nDamdamin\r\n', NULL),
(62, 21, 'Paglisan (Buod)', NULL),
(63, 21, 'Pang-ugnay na Gamit sa Pagpapaliwanag', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_module_topic`
--

CREATE TABLE `room_module_topic` (
  `mtopic_ID` int(11) UNSIGNED NOT NULL,
  `mod_ID` int(11) UNSIGNED DEFAULT NULL,
  `mtopic_Title` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_module_topic`
--

INSERT INTO `room_module_topic` (`mtopic_ID`, `mod_ID`, `mtopic_Title`) VALUES
(1, 1, 'Mitolohiya mula sa Rome - Italy'),
(2, 1, 'Sanaysay mula sa Greece'),
(3, 1, 'Parabula mula sa Syria'),
(4, 1, 'Maikling Kuwento mula sa France'),
(5, 1, 'Nobela mula sa France'),
(6, 1, 'Tula mula sa Egypt'),
(7, 1, 'Epiko mula sa Egypt'),
(8, 2, 'Talumpati mula sa Brazil'),
(9, 2, 'Dagli mula sa rehiyon ng isa sa mga Isla ng Caribbean'),
(10, 2, 'Nobela mula sa Estados Unidos'),
(11, 2, 'Mitolohiya mula sa Iceland'),
(12, 2, 'Tula mula sa Inglatera'),
(13, 2, 'Dula mula sa England'),
(14, 2, 'Maikling Kuwento mula sa Amerika'),
(15, 3, 'Mitolohiya mula sa Kenya'),
(16, 3, 'Anekdota mula sa  Persia'),
(17, 3, 'Sanaysay mula sa South  Africa'),
(18, 3, 'Tula mula sa Uganda'),
(19, 3, 'Maikling Kuwento mula sa East Africa'),
(20, 3, 'Epiko ng Mali'),
(21, 3, 'Nobela ng Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `room_post`
--

CREATE TABLE `room_post` (
  `post_ID` int(11) UNSIGNED NOT NULL,
  `user_ID` int(11) UNSIGNED DEFAULT NULL,
  `room_ID` int(11) UNSIGNED DEFAULT NULL,
  `post_Name` varchar(85) NOT NULL,
  `post_Description` text NOT NULL,
  `post_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_post`
--

INSERT INTO `room_post` (`post_ID`, `user_ID`, `room_ID`, `post_Name`, `post_Description`, `post_Date`) VALUES
(14, 4, 1, 'title1', 'Description', '2019-09-21 20:31:31'),
(15, 2, 1, 'title2', 'Description', '2019-09-21 20:31:33'),
(16, 1, 1, 'title3', 'Description', '2019-09-21 20:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `room_student`
--

CREATE TABLE `room_student` (
  `res_ID` int(11) UNSIGNED NOT NULL COMMENT 'room enrolled student ID',
  `rsd_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'student ID',
  `room_ID` int(11) UNSIGNED DEFAULT NULL COMMENT 'room ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_student`
--

INSERT INTO `room_student` (`res_ID`, `rsd_ID`, `room_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_test`
--

CREATE TABLE `room_test` (
  `test_ID` int(11) UNSIGNED NOT NULL,
  `room_ID` int(11) UNSIGNED DEFAULT NULL,
  `test_Name` varchar(255) DEFAULT NULL,
  `test_Added` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `test_Expired` timestamp NULL DEFAULT NULL,
  `test_Timer` varchar(3) DEFAULT NULL,
  `status_ID` int(11) UNSIGNED DEFAULT NULL,
  `tstt_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_test`
--

INSERT INTO `room_test` (`test_ID`, `room_ID`, `test_Name`, `test_Added`, `test_Expired`, `test_Timer`, `status_ID`, `tstt_ID`) VALUES
(1, 1, 'Quiz 1', '2019-09-02 21:41:55', '2019-08-17 16:00:00', '10', 1, 1),
(2, 1, 'Quiz 2', '2019-09-02 21:41:59', '2019-08-17 16:00:00', '10', 1, 1),
(3, 1, 'Quiz 3', '2019-09-02 21:42:02', '2019-08-17 16:00:00', '10', 1, 1),
(4, 1, 'Quiz 4', '2019-09-02 21:42:05', '2019-08-17 16:00:00', '10', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_test_attemp`
--

CREATE TABLE `room_test_attemp` (
  `rta_ID` int(11) UNSIGNED NOT NULL,
  `rse_ID` int(11) UNSIGNED DEFAULT NULL,
  `test_ID` int(11) UNSIGNED DEFAULT NULL,
  `count` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_test_score`
--

CREATE TABLE `room_test_score` (
  `score_ID` int(11) UNSIGNED NOT NULL,
  `test_ID` int(11) UNSIGNED DEFAULT NULL,
  `score` int(11) UNSIGNED DEFAULT NULL,
  `rse_ID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_ID` int(11) UNSIGNED NOT NULL,
  `lvl_ID` tinyint(4) UNSIGNED DEFAULT NULL COMMENT 'user level',
  `user_Img` longblob,
  `user_Name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_Pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_Registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_ID`, `lvl_ID`, `user_Img`, `user_Name`, `user_Pass`, `user_Registered`) VALUES
(1, 3, 0xffd8ffe000104a46494600010200000100010000ffed009c50686f746f73686f7020332e30003842494d04040000000000801c0267001451575873534848577568656c584671386c4a474a1c0228006246424d4430313030306163303033303030303731306430303030383631393030303030323162303030306366316430303030663332613030303061623363303030303230343130303030383934333030303063363436303030306433363330303030ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc20011080258025803002200011101021101ffc4001b00010003010101010000000000000000000003040502060107ffc400190101010101010100000000000000000000000102030405ffc400190101010101010100000000000000000000000102030405ffda000c03000001110211000001f70000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f95732d8d500000000000000000000000000000000000000000000000000000064ea7cc48ac79cf419763ad8e4cad1e5241d68000000000000000000000000000000000000000000000003e7da7895fedd8f94af5f89fcb35946f7d0d4199b591e5cdfb187b56f43d7a38ee028000000000000000000000000000000000000000000056b1f64c2d382d78264cf67270b1b5952eda31453fbae0eb5be708e5f3fad991dfc5dae20f6e8000000000000000000000000000000000000000001cf5c476ced192875251f3c9332e77e09cf3f26db573aed2fa5ab9367c515ecd9cde525d0cdb3e5688fa9a000000000000000000000000000000000000000000021cfd6e313ed3afa3853abd71f3f3c731b33d2f156efd6de5e55ff9e3c4b5be49e5bcdbcabba6d8fadb0000000000000000000000000000000000000000000398fac8e52ee45a78f36b32f66e9de07db75ade8bc8fabef7397e872636a52b5e49d598f4bb5ec7d1d000000000000000000000000000000000000000000000432fdf91079082aeb3f2cc90fa31bba7dd8f174f999b3e73cf255acdf34d3b3561cb707d7d80000000000000000000000000000000000000000000213bf3189f24e65fb3f7c41c59a11fa47714bcba3235e97394f3ec3e5e6489addd707d1d800153cbc9ecde2678f5e3540326a49e8542fda00000000000000000000000000001f3c5c9e932716cadda57ab2508fb8f53421b7c6a54f4781eb736f94e6ae45e275b323b18b1f8f3b7a5e677e3647bf6033aef8cc9b15be7cbef66b43f6e77747cf6cfd4e3630af604b2dc8e0f97de8d89a2f5f2f5aa17fd79000000000000000000000000000a3e2bf41fcf23bdda7eb53c1d596de517d823b66e67abbcf7eb7cef6ce962f77adc8bfd54d4fb05ba7d268ea67c1f277ee07bb4065607b3f13c2f79d5f5f8f486a7b2caef89f8a3a7334bcf7a1c6c582e7dd3e9ac4961f4527a0b077c800000000000000000000000000317687e717ec73c6e74f24989d57dff003dd73f20b11749c5ccbd44ab3c97edc6ef9833a8a3b1ee373cce87a6afcae251a57ad8fd4418b67ad16f858b632337d17346ecbe5bd3f9eb1e7b632781a172f49e8792f4383b771eb068000000000000000000000000000ad6689e46cc10f9b76add69bd7e687364f98e97ebf3f26e2fbf1712d5b7f12b77bbe8357a99ccd75e57bc38f9678ab9b7ace4c767e96cfd0d2978afd0bc249f76b0b573d2a69c3f6e2cf8cf63889e9a85cc06eb6c66c6cfbc7cfba000000000000000000000000000011f8af47e6a66fd2a52a55bdc5cf2ea1b1a167cb9cacdf579ddae0dc83bf5eeff005975add1cfb35f16686cf5e7bcd4dec8847ad1fb79ee6bf839ebdae256f449e127419d6b64e9e32cfe830793673ebc6474ad13d4eef82f7bac85a000000000000000000000000000c4dba3278d9abdccee1eb8b5c73b36e29b867baf6e95be7a1d5c1eba8f575333a75a97abed729c56d3a7c667e7fd93bb88ecfdebaaaeec5c47cdd6b3bfe2ec504bff006b49352755a53aa3edbca5cdda9a3633bc9f77e2bdbef9fd1680000000000000000000000000001e672fdaf86c9ad46c78e6adaa33739357e322ee1b143d77af54a8e8e7cdc13d5d5e48aafd8b8f2a5a342dfb750d8eaacdfd97ee51779a71ef9e8d2ea420ea2b095bda53a7728fe7dcf49b8f98973b1edff35fd0359b42d00000000000000000000000000001e07def8d928dbcfd5e16e738dafe055ad6b3fd3bebde78ff0045ea95f374b1b1bef4e0f9e2778fa19fd33df379e8eb422d3e6aa4d14f71c55b91ea5282dfcb28fa1c0b7e7e5c5cadf3bf4b3f687daabad1db4b2d6c3b3d80d00000000000000000000000000000a1e6fd97e7f10e955fb9bf3572faf374d5cab343c7bd8f41e6a6fa7cad67d0f47c2dfceb74b8673a8f4f46747e4726bd4f9f7e2d6eeb71be36f9f9f759ac082e558f39f55e4ff46f11266d997ae9a9bed9d596382b6eef17c5000000000000000000000000000008a51e3713ddf8bcce3b9d9ebf63e6a706dc3dfdebd6b7a6c1d4f3e2c54b34f85c5bd997fe8728f46bc13a5eaf3d4cea7a77a3e9cb2addace4b714561a8a8df82cf5f899df7c7cac5ec47b37bb432b76c8bd94ab02d000000000000000000000000000000a5e53d8f95cdceea5af9df5cc3eab5cfcb58d1838759a6a96fcfd2182d51d4a373e43eac5ae63f84aea9cba9c7cef58eb9fbccb96b356cb3d53bf654b3f22e7cf46acbb3d758fed3a581680000000000000000000000000000001f3c96de34411fd87977e2fc7f35c2fe0dca1f3bd316ad5adebe1bb46b569ad2fbf39ebd7efc584adddb8ae73b433e5b8b7f79e658a0963d4ad7a3b5cb97cf71059ef42d0000000000000000000000000000000001f0f3515ef23997e09be4d4b6eed1d6733e59e3cfd648aa5ac5e38e67f572d071f71d31b5b3fedce9b94d3334e3b2bf59fbf59bd6d4163d5d0bf70168000000000000000000000000000000007356c8cdcc97164d0a741167ab14a6b47d4f83fd1359fcff9f77e3614a687cbd78bf47e77ce8c95fbba82bdda45b9f2eca5c8e02d3ddca82f3dba77bd3ea4e2d000000000000000000000000000000000000e22b03333fd1a4f0d5bf42e0f03ed25aa69439434fc87a1bf2fe77c7e91c66f8df9253d4b5574b3a5ef8ea7b2adfa722cde828fa5b90b40000000000000000000000000000000000000000000039ad6c432fd086619f7ba1ce7698c9d2900000000000000000000000000000000000000000000000000000007cfa00000000000000000000000000000000000000000000000000153be32c23a326920e2db4a364954e2c4d143377a1aa000000000000000000000000000000000000000000000067f771e6cc50cd1c7c82f24e38ea7dda093bf3cb1f78efdfb0a000000000000000000000000000000000000000000000000add4ce32058f841f67f951cbf3eec1aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fffc4003010000202010303030304020105000000000102030400051112132150101422233132203341602434901525424380ffda0008010000010502ff008bc866ea7f4bb6a51a1944a9ea8e1c7f44dc63a87552d048ac197d26de19d1837f43fbe353191ccc8d653206303fa4c9d48d1b239397f429d8ae23f2cb11f52386639226e2ac9c97d2c0e9babf653bafa03bb79db0bca20d9149cb2ca74e553b827a720ee3244122495e54154f2856405f216ddfce7f39edb238c265b00c5136c7f2151bb58e423560cb800193395b5236f0c6766f3677dbd24b3c1baf931ea29189dd37e12e563c1da40af9763e2f01e5586db40dca3f34c37c8e5e99c938ec6068f036150d8bbc4c556411fe16c15364096bd5b1be595e50d26da441b355fbf9b96359555debb7665dcc1922a4b8adb13f1656e94d8c392d43da4062981ee6331386fad1769bce32871f3aa415951c1899d79677c3f25a92738b25fa56ef2e576dd6663b37dd241cfcd92067563c9a708637712f5639e30c572475d9acca4d293ea65e5f82fd5ac878bb2f250831eb2f9c745756aed1e204c68cc9862eaa9cb12f50811fb5a409aaac19645e71c2ddec2709603bc788775f3af1a3e0ed934d1c096a66b0238f3f11a5272a95f78de57318e40b59dcb57f4aede7c9d85cb1ee67795a671b112f68e8270a8e9bb300ca3e9ca473890f173f6aaffe479d6754cbd73ad8c159b6e00658eeabf8fa5d4c46f8e16ed00659bce4d208a361cc7489251a26d95d5c710f27248bf6bd2d8de088e38f91fc2af783f558b11d75975499f00d464ca97655b1fa27d42084aead11c86e4137899eed7871b585cffab9cbb7fdd2487992859de268d62008b09b475a942dfa241bc6bd98ca80ee0ad13f0fd376d2d58c44d361a90490e9d21db578871a12f5aafa6a9398d21d3e240b52b3e5ea4b13d3b72d797c29ed93599ae15489704db64732ed24703978648f237226964965236412b03150ff004f2cd84ae82fd9eb1d555a1e83b2ac74f7a9d8d23f3fd0ee23483fcbb331e6d0cc61324ab1ddb565258f4507dbbcd14782e573979bfee33da44c4ba83269e3b33ea8034741cc953c25eff4d1f6ad5ebcd6cae9236bd5e382659255c5963392c79d465c6df3a4ccb5a558b4f6d5972dd96b780f6e945d371b2a001ac8e84f58fd5fd1a9a96a74a45e933ed85faadd17c68feb6a0fed2ac7a6725b340448e70124efda329bb334c608fa30f846019648cd79f4fb02bccec1139348f3280d22a646ef1e0024c1ba644d93efd3aaddb19436063113df3900d1c892c549ca49fa08dc5da6f0b1767ca08229f91cbd1f522b7275e83fbade76b5bc83fc7886245c926cd1635e3e1b53abd78c1e6259e78eac625907402e468b9f3766833e5bc6c50fe65d19595da4cf9167238966d9559d934db390506885eb1319c45a8c406a16a16ad663b29e9d3f6d7d4f160db83df372aab30115cb003bb7f8d08c74923593b9d0cf88d41057b4ca170cb2ce228c7249551669b79face72469ce29d9cba382792e9cc8b0c823265395ebc965ea548eb2e4f20862e524695adaa2a4914eb517dbeabe9abc7dcf7caadbae5d5e33a4d1982560d8dfb7a7c7b2dffc10726d13f2f0d665e8c10b32e49081492331c6bd96471d31b6d4ceef249f39381c8914c6c48121d9bacd956bbdb9628d614f4d625dcbcfd420ae70439a5c7bddf4b91756bc479246dc5b2f2ef156ab058af269b098f7395bb41a81ed597b6883e9f86bb119ab45247d2605a6899d9adc6c3271c045b6dc4eeb1e4dc55622368d5b8c759a7b33695bc9042904784802c6a9c65e6eec1411247b1e9e02f035198cd5fd2ea7b6bbb6c616dd245e69a2c9ba6a96fa2952a9380e5a939637d1a1a75b35dc1dc7867608b58962ac23362d96603b984ecb03e0acc70d35e1226f819a2c8ee245686aec70eab263ea365c1e72b115d307262b159c959c10c5dac4532e69af17b7f4d560eac15cf56285b676df6af3fb3b1044d3cbbe4d2055822129b539b3338d8e953728fc36a9cbda433442ab39931155736f8c6dca141be2a139d3719341cd5f238c2e3b8571d490c63a6b1a348444cb9f53127232cc824b11d899a3ee4fb68775ad3a643a8344c0861723f656cedba38649bf752460a7218cd86b963ab912638f9527f6f77c3ea71c22b220589717b488a639605e59f9e03b33fee5845ead90d0cc8bd47032c8f8428dd0f6f2e3a3a63b858e14f8b236751973a8361371c6b3cd2adb7aaf3a477aac7b92adb19bee32343334d2f5317ed18ed20e52ea29d3b28775f0d72b0b3110d1bfedaa6cd2a9e795bf02db39ede9793713bb4ef1d486baaf61647d2a928150d9706cda574b0717abb212f8c8d8b185cad1af10f163454e40eb34116dd93ece7e2e71e467ca75529c51a02e3b0a51729ef913db0361e1f578b6c4dd8ffeaad18664de27ea0cdc9c9251123726cd321e73cfdd7251ba52702399f8e2c7b987e7264a381fb89bf6d5942315dfd251c483b63fe2819da9535a896ac9b8dfc440cad6edf01a40436bc4488248c728dd0739437165918a87e4259420e464695896ad1742b5c5e9d4c9bb0839430ff33b71862f8a861846e20ed8ff008ed8739118b2e3f75452c7349e9c55ad586b6476f4b13886319b3c2d5a613c3e22f122e2ce51a60fb43f8126367ef84f0caabcede6a3fb58abd5970a29369419bdb8ce8b67099711b958b1f80551846f8c36c280e152b911fab244245446f4df7c9ca2463763145b0f6fca9e88fe209005b91ae164518ff2a6cd244a21661303199334a5e56e11c9f52ed048c792011ab1d8a1faa87a96fd7f99fede8ddd7d241c596793679599ce7559721884993389e55d808ffd7d13f7bc3de4e7537de8f6ddff00d7903ed4a7fa6ff5ad4d1e68e302ed2ea922f469464e449c56e8efbf18699fd330dd49c1dc020e7f392fdb4e6ddde9a956639c0b62c580765072cbf42ae8b17187c39ef926f12c501659248b97546566da74f92893bd09fdbacb66491dbea4c9c573ac72dcaae961be8c89da37122facb20ce4cb8ac1b36030fdf1fed5dba73e5b8f8dcc1914264c411c59aa778281de9f889635952e69cb041c582226f8226568e7e2b215311fbf26da9f6994f21c8658fc5fe52a1edfb327a4adc55542aba14c3ba98e5df187a1c6c8650cba81ff002624e6b1a2aab4c8b925c0322a566d98a31147e27521bd2e04420677e463eeff00727bcbf1a55c6cbbf449d8e4df68cef22f6c23711b74ce2fce5c750d81178cb170c5723d5c7647d9267699c472618dce14d8695539b78bba37a88bcf4f1bec0be731c22aad2d6493613cc2448c6c9c8853271c79b92aafc077c076c701d564de085b604e71f9e366dc1812871103e6df12a44a2099b26e9c594a834c54051e2e71bc15bbd47427077c98ef9337b2d3b4e11247a9ba34914808cdb2cf6451f0119df8674860038c8bd22a792fac8bb93f8a36d92b6d0fc556bd968870bf6b2a6991c5e3e88ee31e3e59553ab77586e76206e2963e6fdd4c2fbaefbe59fb7f19fceff2f98ced22c4dc1bd7f993b66df254d85687ddd8550a3c7deb6b552b4130c4466625d5b4b75f7ba8ef1de92643112d8a074f8943d675c2e5890f9f35c63b08d788c64072543ca27f427b638dc47678455ea4f6cc10a409e435a84954b10189ac46afcd0e514e57f53fab7b158267157c1b1c20a081017f494f1743bafa1ee2442a51f906f4e078695551d7c892065db758c63ee1064b1af4f4555f6fa8930ea138da429ce25e6a49ea877df2b2ef27a4ebf5a07e27d5c725e4414855d504291ea72fd2a29d3abe38ef8d318d63bf0b9d643e0a71bb4a860c0dc4753348978589e149e3b11cb54c3277963009dd0c9d9aa7fb4a737cb3f69bb32c808077c270b0c946c55caabb8861ac8d7ad78f63b0efc6d188e30438c8aa525653246a90f2624168ad64d124c9674f96031d8e0bf272e093cca672f96483928f94517e895498d1e56cafa5b398614853c89556c68226c6a15db24d293696a4f4cbd895f238da595204e9e12e33a311cbd54d490cbcb391cb65649b84919ee7383452564e59cb0b7786bbcb9766458f4c8c2d5f31c570c31e3d773857504cf776131350aed81925ce9467248229059d3a58996c49191a8a28ff0026db5599aa4f35b8ce2da08cd359b66a69813cf950d86b42704607abc51be7b2ad8000194307d3eab62e9d597111507ff35f58728e4e58e9cb1c00624e385b9b3298cab721c199a4017236e4bfd03e5d4837c2eb8610040e4e0f84b2fed400aacb272c58989fe86f186ce962a850ea1808f639d019d2c51c47f42df1befdf3bf2dce7fe20f7fe89b7e9db36ff8c6ffc400281100020201030303040300000000000000000102111012213103405020415132606170132242ffda0008010211013f01fd969e2fc349117e0961628b23e12cf717d8dc8ca10f9c2f02f2f1efe0391ec2c3c2efe8e06ec5e859e763f8a851ce9850a376fb871f813dc6cbc3cc65a5d92ea6ae0936c4ac685686df1daa4e439457e4d4dec2d4485bf24921228acc71d275226ede1f6b26b4aac4312225639f53cbed5918fc8cdc8fe450b7b1a77a349a49c525cfa22328656ddb218b11674e44bea1cda149376c70bdd0d3434f2d887db2cc23a9934af63a64b924ec441fb1d4e4b3913c255dc50ba6d9d3d98f920eb1b48d08d04b9c50c8f036447cf6f07bd0dab126caa25c10db7ccb9ccd08aee52f7356db9fe44a897047822e893a5e86237ee23f5125a7618db51366496c69f8343249fa1bd84cbee3dc738b36b3aad3d8e07d4b46a44a54297a39eeeb111ff63df0b3637ddd9794ed12e71f8161f816db2cd4266afbb6c6e8b2cbf054328a29f83a28afda3fffc4002c110001040103030304020301000000000001000203111210213104134020224132505161144260707181ffda0008010111013f01ff00525fc7d99c320a29321a0905e279fb13dd8b6d502328d3a5c5c1e3ff00534e42c2eaa3c864174d2978c5dce80df9e770a186463ff4ba98fddb2e8e4fe8573b26c41a6c2eed037f0ba37db48f3c1b5377796946575fb9306f9b113b6417729d453800ff00faba7384b8f9e5bf211f76dc1529de9e134e0eb40d84efc7e16447b16fdc0ef3e4739bc05de323ea94c09fa93220c164284f2d53fb5e3f6a61fd974843eda7ec1480b45adc511f2baa0484ef73574bf5dfd80d345b946e6b9b6d521a1a4a2da50346974cd04fa72f2ddeee131b8a773a1dc52fe2dee5443092b573834594fea4bcd846471735c0684ec9f24d902384e9f0735bf9f189deb4c8a2836d06527336a589077e46b3c5dd662a2e9b1e794d8c354b23582dca17e66c709cc6b97681765e2c9288ff00ea6b257eeed93626b4dad90575c289eecb7e11727b721e83a7551f723a5d3462365683c568a9092343a0455eb7a9f2c953122885dd95dc285cf69f7acb6b569c765911c1b504b2b9f4e1b7a0f9731f6a8c53764f3b80140fcd89ca4fa56ca31edb56afd43c62a57fbebf0b26fc14c01dc268a4e521d901f1a14dd6fd03c528c2de54aced1f71e543a393dd91508ded595921c6b33092085ce87c63a752cb8efe428c383b63c6933b6a5b289bedd46b2372690a3a028695e41fc2fe3b72b0be549b9d1a2852210f4c31963ff5e49437d04a0ba913ba6d38ab5687a63dd57905624275e3b2e9e32d717ac7b8132220aa4157a08738d7c202bcabd26098e31ec78f552af3290549edc4fe947f4fd8ab5201d93581bc695fe5e2761340a96531fc2eed36cf29b2d9c4ec53a720658a6b83858fb0b7a7c5d769ec738eedb5d97603f2106173f372ecc8e764f0871f62c0aedfed6053457fb43fffc4003e10000103020306030703030205050000000100021103211231411022325161711350810420425291a1b123336260728243c114348090d18392a2b2f0ffda0008010000063f02ff00b5e169b3c663fa2db5999eaa47afb9f9fe85cd169d54fa15232da1e327e7fd0b34dc5a560adf558c6b62b0bb81db48d7453aa839ff0041360eabaaea32506e0e6b0ac2ee26edc5f0bbf283903b48e5e7c633cd6250548c8df60a83d54ec2d2b98e89a9ccd46cefe7fc5f6db0a11a6736ac4df86e83864765842711985235f3db67b70961f55928d81c9b53d0ec7d13a5c26b4fc5aec0f1aa23e55210f3bce178550613a1e7b22a0dd3aadcde6f2db22e350a58646a1094dacdcdb9ac43bac0ff00aa235cd47cc9ede453879e43960a97668e5cc151f069d16785cb0bac54207e13b0b4ea9d49da2ec98ecfff000ba02bbaefe7b0e1217cd4bf0b982b09e13915d54151c9756db662f9935e161e482954fcf2e6171b7eab08188f244b047f1443aca330a72844b2cd4de5506c0ee488d7689129a582f3e790e0ac31b1596260b8d563030d4d473506cb0b4eea701c4e41e33a6e41c3229cde6823b41f3ede6ca858aa3a02f15e3052f846ae525485507cc53a8bbb858a246a9d87241dcc223611e7f27258bfd3664b154cbf0b7515487494d76a11075584f64e1a8ba08c22343e7d2e701dd1a349e033e27ac34c5b9ab156b10ad921b454f456d7634aa6e8b1d7cf5cf7641789524b9e65616a8210c94f245b099db69e9b421efe279f45b80307dd48f13eb0853ace3191c5eec4e23fc55d8f0a1af13c8f94c39f2790badda47d4afd9fba6b002d1f120ec868140d53438ae8a5aa97b445f08b69ee3874d9721593875f7a4ddc720bfe23da9c40390d4afd3001d1c9d45fc4d28551c4131c73c8ed6d36713d4d5df77d9478202678523118b95e07b44c75d3c9a53b01c141baaca7ba86dbb5943e8e2eb9ab0f0cf556c8a6968b8392830d1d1427854bb6cc4e37d07346a0323e5d1186115163ab54b66eaf52afd154a7c911cc7ba5eeb009ded15781ba7fb2977d54688540edd704e1d39a7f2c4b7ded0bf742a44f08859a9b7a154035d66dcca0feb9aa6e39c792d6fed4d68ca4ca383846ab7aa7d0214e9b893aca8c463add6fee3b98c95fd0850efaad4ab194d767805d5a91faa1fa5109ac3bbcd61024fccb09faa693cee8561c0fe24d3cfdd7c234cd8b6fdd622aee81c94368bfe89ac7cb24de532951dd0502faa64f2588543331042ea365db8972ee9b429dfa26d31f08f252d3914ea2ecb4469bad4df97428b8e42e9f58e6e2994fe517eeb350dbb4fc2722a59eadd4291756c91c26319bf55835d9044ac26edd369a2f5e13b369f760e4b1324b39f241b72538541be3259ac5ab5507ea0c15899586122c21343a1f26d64d31794139d396c7d4f8b2f27c6dfdc67dd410bc0a80c1c9dd1452618e6a6b5693a86a8f67f670e3cdeb7dd0e6e919296b8e25bdf85885f9850e046a2ea559402a1ca2506b04953bad3dd17d433527443d9bd9f8a2e54b5c5dfe52bf55b3dc42c4c3dc72dbd01b7fb20e52a154a279caa33ab1370e80a68d9bd20145551dbca1b5289189df02f17db1d89fa3392b1c14d00d17e651c23b754e7e67250ca6b7847a29371aab5934a3277a725009106c512732a182da9d02ddbbb576c754764139cf6ef56be29d141c40282e6bc724fa4de13b5b506b640e8ebac3cb662f99358e96b988a6af10fa26f7d95bd3c9df53904ef69a97714ef68aa71547f0f441a53865f3145ff45cca74fc8574d54ca92a0ddab1b6ca406b7a80a070ea50630401b59444c0de742bd966b24f768c1b5cdd7309edd5bbc1076cc5f294c7e183ac14e0d9c5a1941ba84c1d1009eef95a5557733e4ef60cf45e0d66be45ac10a6c63806ef612b091bda26d265f53dd369cf75d538b792de503345a755bd92f0720dcca1e13b0b359418c16d924c22ca4010354f73be357015936e6e843a0f441cee2c8ed240dd3750bb27379aa94ce865786d3beefb26d57f3cb638a339d5303b2c2efdb2a4793979d02ad5cebba132aead31e88e0cd027541dcd58fdd5ea14e00dca11928392ab5b0921d905fb03eabfe5feead0c5fab57ea559ee27a056639c17ed9f5585ed829a29b0b8f4589f49cd4d631f2e19edc438988b7e3a771d42eeacaa3a2645978d56f7d99dd1ab52d459f75393459a361a6736e5e4ee0d04cf25e1990f699eead92c50888fe410e9b2d9735a145e0e177e5603672c2e600e0adc94e89ef743b0e4b9ab2d5017f55cdad51458ca4ce657ea7b5fd04ab7b419fed58a9579ec50a7ed6d83f32906414da8c1ba6e8c65a294d2b08528c98a6de22852a56a4dfbec080773c27ca1ee2c6e2d0a049fd4764390e7b1ae39929f4ce857e57f1fcac11db63e7d11188ba40b957e11b25330b6570fdd6f3539e3b05256ec2de6ecb39617c38765638a9f25ba7a82bc3892396c677d900c34713b92142834f8634e7b4346aa798940f4f27c273d0ac352ce608f442789d7f457c8668bfe64506c58e5b3eeb10cda80cdf926b5cd0f79172518199b0d94b7657ed5ba150dcfaa6d36de1708ecb4598fa2388058dcc0e279adef67a6ad8a91faa7b19503a93b3c2adb3b1501368526db97345cf8c51bc539e38677763aa68d54e9b2f1651e50cae065672c5534127fd97f2a87ecb0e811072591d98bff00c54b9e71146a1c9992af57ff004dbfefb0841a4f65dd4b93aa6cf107aa94e3d10b8c9588db217428ac2c12e2bc4a8463d4f2585b6a23ff0092b280bc0a1c23372979de8ddf29731d914fa0ef87f0a7a2b482af75c24ff92bfd02c4e585b99b286e698cfe4364a0c11eaaf9a3d6c86c8459c914379a17113fe3b2ea540574face817cd611bb47ff00b6c8cc9c97854cef9e376c6d46f34da83ca6a4ea51302107e18318875415b557d5154875d8dfee1b07cacfced6531eaacf72fdcfb2b105723175eaac06dc95b24d8587e85617cc34f0f5d90d05c7904c731ffa873e88595f3557adc7a2a8cf5f2893922e1bb41863ba6e15427b2dd7940b5fe8e515374fe7613f2b5179792f698c3a053d50a6ce377d906355f63dfa0f72537bfbd21661079681a123557470ba2562a8ec1486bcfb26f84dc14d830850344decaaf6f28aa0725479090842f671eab457b3828370d6cdd6211e8ab3bd117466160f8b346a1e27abe6814e2539bae7ee8efef9a5cf24439adbe4468afeaba2126559068b947a084ea87e236f297d1735f675b9292f6b799726358490c173cd7c3f5d956a7f2846d0116bd860de5a9a5bfa61bf5429fab901afe1707dd45c14d1cd35cce26ac43dc2dc3880ccae7c9594ebee31dd76541a716d9c9bcd6ee7cd49e760a97f6f94963c4829d543c984d76855f5c9101608b27615f44e7c6e041cec89bac5cd67b1a396cc4381d9edb711b0585588c3a4a98c2a0e7ee4a6906f0bfc1495ff00957705b9741d5496b7aa6b1b937caaaf654df3bae247aac3ead59e27fd82009ea515dc03f64d1cd31d1919584f01e12a654276c85e1bb2d3617e8db0d975862cbf8fe143bd0ed281e5a4a040d2166aee2a6578cf1ba32f2cabfda8747a83c4112c6cce7d0a93a2ab5e787ee84a6b4641058789bc8ab03d8a27091658c663dc275080d3662db80f0a83b2a174e16b744d08333200b72e8a0308ea5612ff0011dc864b1d4b53fca000803cb2a0fe25551c9d2a5bc4b10b15c89cc20cf8888589ec24ff006ca6e06810a0fb81715971396ab0ab70a9f7085fc9bb3c06f13aef3c96222611f0d80b8eb0be26b7e8162a9beefb797fb4d2d92db395369196698cd021c917e9cd4725ba6798d9dbdcc20495259f450b09f7712c2dbaeab0ff00a4cccf350d000f3016971c82357c46b1d52f1129c3c616e6d519f64ec599101637b77510d77a42cacbabbf0a418eab25256eb16fc47452bf91cf64e479ab8584e7eee00c13cd6276eb39ac0c103cc5b5469629be25425d08f84081b1b8721754a92be6116b993eaa697fedd96cb44e9d36c34d86481db057e0aebb5cf8dd03346abc4dede65253a9925dfdab111bbb0f34e77c530553aa46ed93b40fb858db363752330b1b6d506639a11a27df213b475580fb91b0124dd6314e7ba14c7c45306a6fe5f6845d529981ab6ea0cb7baa4f07714d0731c3ba7b5edcd461255d853e968ec9163c59784fdea79b4aef98e6839861ae4d70d55b5407cc08da1dc907853ee4f35e8b78de40c2a5dc233f309827a05c3e8bf57d99ede4428150c750acefa2fd42e730e7742ab6a6269501855379117d858f1216266fb3a2c2f6c8d3a2c58a51e8a7e219224889bec2176f74902cdcd616926563f687474d561a6d81e65700abd36fd17091d8afd37907aa6bdae07b05bc062e6026f8cec0ce65616b9d8666c7659a0faa3fa6dbf45e253fdb3f6592048d654b1c21d7576ab050f69189566ea048d81658473210f67a57f98a638b0071f39e10b807a597e9d77d3e90acfa753b885fabec8eeecba82e2c3fc82dd735c17edb7e8a1d4da54d318d9f70863130755229bb1f528bc35ce8e5a2c55186e20a86531873cae9ae0ce1585bae8d58ab5cfcbe7f700afda6fd158b87aedde634f70bf69aa0080a1c011d57ed01d9704f72a1ad0074ff00a6cfe2a0e6b32a1a4cabe6b00c962171d5594badd959c654ff0040f0898c9656e6b0cdd132547252e451950325bdfd09c971bb6f113b332b8dca267fa0f3456b9ab9fba0a66f0b3ffb88ff00ffc4002b100100020103020504030101010000000001001121314151617110508191a1b1c1d1f02060e1f17090ffda0008010000013f21ff00e5db758d6150ff004ba62086208627671fc2c06a34387fa28cd017bcd0205467b069849ed78f45f0eb05b35dcfe8694474611e30b830b3b73972653fc304b703c3e358f57746a0591fb45ff42bfd03461e0e22f039a0897e00fbc07593662bb6dbd4e7c71ffc10a68b33ac07f4148e7d0c3d22581d731b718b1981b65de09246d2da76c400c8f86f95f100ad1fb2654da626833e722d0aed2d5f3dd96373c30c69b634557bcbcba8e2643be91055bc7dfdc768ed6dab1c934902fc05a01d230749f69d3e92a3a67cf18c17b3c7166ece030b6df78a6308df79e832d617b3d235ad3e188253a3137d3d180cd6cd97e142b1afbcdfb7fea7251962dcc3e774f096c93d65063c1a68ee368d5dbdf10966b5af33218d8e48e30bea11aefaa99aaa15d9350758cd49934e50b6a14f496bb446da70455ebfcf291767721ab525d30bde603cbd4fc2196757b316869e62b364627a9dbc0f480a8fbd34880e512ab431ea8c5e83b4b5a95bfbcf6af3d7a44da5605b3eb18e56b89636f52fa3047d517a925fd92510bb8f0490d3296ec9978b5d1281ce19a037963dd73e787d90eacc8126706d6332a67b65a2d3bc56d822afea2c7daae92a4ff4f85e7df4f6667a60591c99a53ae496cd4bcd309820573b79e32b84630f16e425baf7bd494dba8d31c793188b8a0a35bda1e8deaf32a161bf69fa102e69205ce9825576faca89a5d93d11afe80c2960b48000c04704f91ed30abe375fc4b3e8473618cf596d4695a65e486b12f71d665cbb59eb02083c7ade171c6f9f832502d65d5c30177ffb03a34c00503a4d41611fc096699cdeb9867e1f5389a210a615761b4eda2fbcbe6dbcb9b88941b17cf8aa5f2aa12a69ad8ec42940fa9eb0d87d1cdcc9b162d0de3a5dd9f1cf1ad2ee88db50a624af94662b10f8d9e7ba1d371add00b74254d1d73f787abf4d6164d590867a7641137591aa2235d7b78fa74cc55cf80f6eb11d0d9f3fcf1f7c0d58c56dbde04b89ac0eb1b8391fe2b2f3db28957b2467d9a3e536a11eba58a7fa129722a0acf3796b31ed14701b10366db52d94687efaca4eba3e65b3256a5e264836ba95aff0eb42976388553e3765ce08b654b7836fe5f560bff225b31fe0e082f0ab2d6fac3dd0ed58a33265e49782c7c1e2fd6de38806ddd2e844bd58580742a662e09e30757ab73c99014d06acbb4d668f7fc4e50e7f18f97d94845fbeab3337535d15f7828ab0b0b8550bd66a570f5c7de028c06d0f8975cc57e057fca31d70c7b25db3281d2019834dd4e75c440116d5d422d629e92afe386969dacb15b4c73e212a3ec3a4cc79c220e52305aeed44223ab1f698c5785cc4a8f5710d74d2beb2dca2f56a2a7dc7e61a61b6d50f356410dbc0fa63c96f81ace2a04b8797fe454a094a682518f2a577bc18981f4983e61b41ef0fb9a9300933aab1ecc2be636954ba0e5990ed2365ae01adf107abef0fdefd296b2a67d0a9bd436bd7b115d6cdb57bcce0d1a4a7fb408619b30fe2096c22f6b8740b90b6ad9d6648b8dab370efb2387981a95d6335cc2cd6a62595a085de406a2e3583660ae21606d755cc51568c0b56dc592ee42e2d65fe21a4bc17cf928a3614932896f5139092da0ebe1b4a2b7012aafdfa0b6dc63a920059ecd5f83925e5e9b9076e7b7101b300020c6ea993a9161f8496554c38bbae2a176691921528674cff00dff88305a29257fd4035ee80d566bbc2a2e2dc0c66b9eac7a4b732eef07fc86ba70ae82a0d7ce50193306ed2d8614369a5636c05e35de6fddfd2793e05dc3a3884bdd405bb16af0801d3d87bc6f291bfb962b402eefccad7032b38a8a9198d2c28ada31583ecc37d111bb6f624e012f36975c5f688a0e769c65192be8131edf0909b30ab6d1d2a562d4f5da525dae3ee43856dcbd35023575f121ecb6d7b9082ea370446f005591c30d0915772c9a57ab3da583b597d5c4b376315002da08401b15f817c9bebe516285785fc4d6a7d88c2a3c5115767d495f0ecbe4c5d68ae0625ff009331581b02555bb0822f432bc32f32affe43d0bbbd4d1d232209b3732d9b9738f89ded842842dd4d5f0d3b1beec184c4f53a2a5abd8352ef7eea60688da3a6a78d38ea59ea648ec3a1febe6e5a3d74768f3307302e653481ab12348e40ed0d10ddcb40d711fa9d3c04e6e9f77938325e91d63981d4587be902ecb3f58c85bab535a18daec7129668ba2300197b147fb0f0db3d66af5b400455e91eeb19b9935b18aa94da8d7ac58101d44ce60678cfcff0ebacc862786d01f414a38388f00151da194cab52d6f2febe345181ea13915f437fb338fb7ed16520d60d154d60661f26b9374b71e4a9a9a3b785999e8afb7de39c00fdf7f27d56e5f7104cdc6354b88b5ac9b86b360fdd379572d56ed059ed65758acc09d3ac5d1a4c8e7b40ad4704e40f5d259da056904ab74a3384941d3d3a07de1d53b824a030df77c2b4872b1305d5f36f4978f2ad9902f481ac082b1a4f6891d616668606ce7c5f6919c8ea7d665decd479198275c6741151956487efa40d1c67a2544e47473329b11d23ae0ed02a1440e8ccd552e4e3ac004b1c8f93e97acb3555f9996730c0e542114b57895e5fab98aa3ee9b808c2fa165ac2585e606052d6b665a5ac9b08f07116a13b7f99b3a775f88f30b90fccc92bbadd30dcb8fef2b4b83a1ac0e9576cc40f0b16e173052e522c192cb86fc56bef2f7379fa28b64ec58c41baa65259a75da315dc477656f622e0c9f116bd62b1853d112644da2b3dcecf2757d881a5d10e5a80ed68e05ce50c60df5648547752c515a4d0bdc9acf671009c752b1dd0b91381d18a34c35cd8e8c70d4ad50652b9329de085d158016c56ba044b6faca2e55eb18ddf09775d177804d31604a564771e14b039633149762241da243e6d1268c7a59a87d48f29aad74da5a4e7461aa3b54bf147699376d399bbd6d1ae90683621f29bd50d0e62e1879420207a453734397106f0e423ebcbdb89a3a4add6c67aa52b54e9fd6209e2c5a80b51bfda52773ea2247136a1d25c2b93ac1ac4af33a855e23cbac9c022bfe0ce26a11f24377ce900dfd88bb58e525e96878b972c07a5cf7ed68f59426572ff00759611a4e8d8ab3235ab1297860cee9088bb5193411f8311af5b2b972d4aede91f552a2625b5ea9636e1f274ed473c4c784899470df03641c2f69dbf49dd6bed2af598af50a91102f88e5b7aa98f3731c6f356550adf888242a3056b0d8a4b380962ee4ab12d3b7599107d4ca32eca1925f5b71add94dda8e5982294a74dc8831eb4669133e903b121a09a651d3128239ba26e5343eda9019bcc77379e419a3ad0458b69d5758d5db65d03880823547880096898e87acce036795950362bca195b68ba42e7501ba56129a754f4fd7d2135a36ca35969514d19ed51d67b11822f8397e23b8d5ba1c12a9ec7746f63e997f77d3c02ff002989a46adecb8ae86dd042b3eb44cd8c5e212a47b7921403461a26b186629bccc2af860f80e8dd217c0efe003b71008df01b5d0cc977faa9540a9f682aeeaa692d71600d563ec4e0e5f293cace981b2cc1eccca06632ae38f8a8f6f1d65436fb933040a1d79fcd1f6c0e219e01280aeb7dd941b78579ce7c36bce9d6504686692a9382d613c738207df466ad407d8c597abc768041dc80ab5534ab873239bed89dd1f309111ceddd5c7160a4d466a25aaf8995a0e9bc0000504b700b143988aee81b74215f59a02ac1e198f1bd4e1f29a56851a6d2c81f2807d914b60fd62b6e7314be94b96d98a5ec9c5793dbc3e69f27875856f5f05e933de2dcd398a347eb71dbf7cea43e0c44069c009340e44d157a4334c5d7926b4265ddf08827288934be84a8b5864e0dd8818825192cce3a5d3d38802153a41b0fe130dbaecc3a6de0f94326005ab3451029972e16cb54c77f51f97e26f878cc6b6a9a17f3041de633884e9bebde700b7cc173c2b57a3151d03e67f9c07304457b6bd625771eb2cc4a16afaced587d3f851a19d2e6bfa7c45d5dc8786d36f2adc1d49716818f444baa0fbc4535b93ac7dbfa22edfd148e6953a968726d5faf9436bacfdb32afb3204544705b730fd2c45636accaa9ac02fef5953ad85b2e6a0878d0fe267a77229718c5df17f982771b94e2003bd2ed28b05ead4d761895e196778749f98fe3e80ca058a8799a6dfac4a4781b0f12e5d33ee96ac1ad42da20ac131dd015e9d5bcb32ab82f6945286257a0b880b5cd3eae910e6d761e50008e8c2a00f7fd6620c46d18e90759629aba4b3031ff0009bbc436f929e8ff00b51015f1712dcd49cda9b9053ccacdafb439a52ec5b589f6b931749a57dd016973449d62e29a5f8ea403ea1c3fc35c7406d0619a6ee61df44cc07778c2dc5e1a6ec8355920f5845535a1cc98e17bd6b154990c2c3d07948408911e8c27599b4cb5e90f0d8b8414eda477591b4759540a3a6f30a700f826086dabdee648306d15981a8ed1169a328c3e04cb3b637d88f1d66ba69e0f46b606f51bf580d65b0db1e429d3861ede32ca82c49807061b1b06ae6add69f5625950f10f596c0781eb0640ae769cc5c6bf42685551e55d856f99a9ca0711539d6e712ae4d85e90d8b3693112c34cf12e0f09ec8bb77f30ab4b00c5af274a6814ed280182a02b7748cb5ef01968c7f547ed2e7fd44efe04868b80d67166a32f3de2b1afe4976781547171b5cc2b04b48567778128a9d19aa0f587b47d676b7dddf2ca9f5420bbbf4975aa5c3322f650b69f296e41a4af547b45a28e90a7f52543825820fd0ed28eb7f4cc77138679940d62d3922009a3121844b5b0a583c23100d653034efd7c00e1c8c42656e1e25a5b26a591cdd0756d0b55bc5872f1012e40336843d8004fb66eeec166ed1bc096c003cb3ad1f427675f442361f329a8f9c66ccd99bf5210c18d1e5d60a4575c103ea1942ae69a1d66a62320c3aacc4ed59215666ca9d7ee4e557acb9ad09149cd73b430e5097e00e6f2eb1e0ee45ea206babf48236840e07776819af3919a2447324460f6ac3cb92c4778d7b6c7b59e0ff981895a0ec3d3312cf0e9d580676dcb1377c03782c575aab6942e0776545910d7750281e058b387499d9537537d0755c56e08c56d3b97e045b6cd21d9ed2f917e9b4a3ce5aaca217adfb378182360f3054fd72e2de9c4b58381b51667da5b15d6aafde01b05777f48ac0552752a2dece05940ad65de75f5c9d11211c2032257797b72ce69d56a34d9ea6cef39771d65fdf22f0c7bb6945bd8b346339f0d1e65caf084de9080031f777969d7dfbf621fe58eef990f4dc15af01d311e9815de5f171de59d5e43e92fb3d07bb2ab20b4db863431d30c6395dd197a91da7b8c4064b1c8e92be598972e7472311583fa267ccd789102c611cc3508d1e16d816b84be5ca074f3206c039658cdf67ac176bc5a9c12584281728933692d2390766b581746d76d8161a1e9bff6583525621d31a1b485bac6af58e5c2cef8780a4e03f3150af32e5f81aaf4e8c135d4d487688bc4536269aae198e743a12f2282debe5f85d4dae1606a2525f05f6c508270838b962e734dd269f1c325b1c705b904ecb7859d33db93fc96265ee3c933b2cff17dc8058d057021413657241fed4844d80676ef8d8b54ea63c071b5507202e115775005928dea722747420bd438ec7fb196c2372d6bf30696ef10e269e5eee1a7725ab6e3532a0734a707ec8abe92d143ca8a054b1bab4873f60eb7d219a4f696cf037f0166bf1180bc9a8ee4b476b23743606f79741492ee15303223522ba5977837a4e449a075c25e91d20568b11756fc1f2391711eb561833fb896616ca1b5dd8189f5fccab1acd2c8153c8fac5231fb924729b6192bde3b8e380bde15d948077e1abebe1a50fa2370dfab1cc299174fa21f0b54d7128bcb323bcb82094f48d4375acf49b08bc046903a6c957eff0086500798381f499fb7aea35741b0dd82e19b6b2e7ce56d53d2333430f8e81221677101f3690b7442a871d10237145abdcc1820c18d22cde0540c90829ab1ff0065b4a957a913a660c76446bd80e18fb9e81a03a4bec50c5d6d148a113839b434f5860a3cfbe6b0895a2f2527b4e65f5877bf119166e46841a04e86285cd451cb48d5fbc4e8e4857fe279e7ff0059d3de8d6a1fc4c0ad85710cb77a6d882d36d4b862996aef0e2a1ada1dfa8d65be156e98f4f163dcad76fe85d316883171ac4cc082e647b3582ac0658ed3a450157925ab7ba6a9873700342bfa0d17759801a15285bb1b93f630d07bca53ef2b141c3a4ac57855ff00d26b8753fd0efaeaff0022702edbf59740f42f30d0c80708122eed6be712cd6f72668ec2bfa2d2eeb328e254a35a3c29c129c1ff00cc6fffda000c03000001110211000010f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cff00cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cefcb12f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3f65dfdbcbcd3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf25304faff001d6bcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb9376d7b8732d3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf0f6a3f579ea7fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf16318df5b34a3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3ce1dbd0da2a3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c5890f4f1217cf3cdfbf3cffcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3f319fd36bccefafcf3d644dfcc9653cf3cf3cf3cf3cf3cf3cf3cf3cf045495ec7317c99bcf257761c0c72f3cf3cf3cf3cf3cf3cf3cf3cf3cf2c817ea8e39c54fa2d6cf1bd49505f3cf3cf3cf3cf3cf3cf3cf3cf3cf2c9f13be89ae5cf3bd3c678269332f3cf3cf3cf3cf3cf3cf3cf3cf3cf3c5c79150b68323f124cceba09f925fcf3cf3cf3cf3cf3cf3cf3cf3cf3caec6737e60671f394a42c24390e67cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3b6071b10edfe2a5b4754639bb47cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2558d601c7323b12bc14bec9b55bcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c58d7e25169d7c0b64b124942c3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2ccf0c69d73328ff0090da60f9febfcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c1c0f28e48dd32a1d96d05267f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c8175c01ab87bc6af8d0adf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf38fdb1027413aa7bdd001fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3ce3c95324b8e88047b2dd873cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2c7ddd73fbea7344067cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c71cf1033cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf38eb1cb6c3ff003cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2c72477f234f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb36580d7cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cffc400261101000202020202010403000000000000010011213110414051506171207091f060a1b1ffda0008010211013f10fda4bf864b259c1957c12d172bb22f641b2e5c5911c3c0df9ee6048e19835378851b21b4d2bcf1b8d912e2e311d5cc1a625460f9e9dcbbfcc67d906c8fa9707cf548ac5a16ccf583681d300e3e02a296dcaef8b86e74f802d510aa9845e05936416fe8597cdf8ab298a8614c2c0e772a60f20a06d8935b61222fb84dc019dc501d789a657b8119d915d22116c188bb396332f569008ca88e6231dc11e2f184668cbfd44d47f895434dd4c770231c14858b9ae306a240cecbead4bcd4dcf15c4bf27dc0cdb077c6b16120af3c05aa2246f75c5d371ce60ccdb8819b8f3e2eb15205388ab52c350591b97f64a883b63ec57e0981653295293a9b8b150d90a91514711e2316388a8ca4bf5322547586e6eb88a022317110bb8e4944b2cc086fc554c5cc10ef82053a4d596cc8bbc3454a5fb40d1234dcb04b310b6508b734d3e2d5ea329b44769f5165002b2edb60214773e994111e7430a311c2f67c6069b824d53b88a33a4993fbb812cc6a8112ce10a4e6c21ac103b628477e3186089d65cb0fa8382744640c08ae1a8bd4ea6a3b993532702c971265d45752bc6d572d5b537944ea28d465db88b2a92dea10173537c75fdfe38953716ea078e34180d30b65ab95a33f88db12050cada8d8114c3920835c3ac45540af24dc513a97ca406554ff00dfc4385873c25c054c388792b35a96ea575052618dc60d2198177ed159c2a665f2e8809ae2e0d364ceb0acc51253c32b6ff96056a246998654c585d41b2fe04ab7702ec97a3dc12db2c6d21f056e43f743ffc4002b1101000201030302060203010000000000010011213141511040f06171508191a1b1c120e170d1f160ffda0008010111013f10ff00122445bfc1af42609d4d7a7931f810332ea167f9c24e6568f39821a0c71d523cd06fcf43367958efc0c4bb98ddea4217cd2dbf91144b9b4d993e48ce6a3f9f1ef9d218800e8b6a222f9cc2ca9a9bc2479111738746545d057d635edf1fbefee7418bd27cf9919c23c9180c22798757e8f93fdfe6025ece3da161f25f7e35dd35eabee408a59cc236afec4605d9fb4621d307cfa3f28806e201abd4f80006c20eb96255952b43a9f89e9985bf92fe7bfde5823cbf803b0512e84c00ebd02d466db14fa7e9fe0b500b5d543b5597d10861f34a87a08dca28d9f426a5f2baba6c12e2a069fee233a69be364fea0e25492148794048ed2c020839742aa665995eee02ce901b1d4a8ff00d6273d6e2d52a5f97a44acb5f56126034cc1441d9514c901166bcbed6b872b40d5f399912bc197e6bfa3e729c2de5b5fab1e1d16c616ce6d7cde5da4b017522c1e825c24a5fb4100cf8fed958bed8f945dfd38e65d188ede9aa6c8d8a0ae8bd179e83a00e1881822e2a18ed4abcccb88daa0da7110ac7799819269b8f746a037ea1ff41151ca6a5fefa0cd60834cb872cb8768c484670401983b95ff00d84071882642f981b23946ff0088570c03062ca811c4c9876a20a364192a3de20daf97d383d3ccc1182ba0823ccb506acaac10d9734409a4a5d6f301716d815176ba225a19822857ba5ae9ea4b8d3688ddb1d2b553d2197123aa834181d06dda88989754dc3989b3501f7d5fbb142601dff1345133177fd44ae8719ea4a4360c458261af6c9158c25a3756265733d368e1943176486dfe04c31dd2c219815db698b51ac33ac6fbe30ae00090e5292b69fc2c32cc4ac202bb7cb105591848cc4014bce3c60514acfd7c6e59dda5a0bcc4312cbeb6e143ef0cd1dcad746d054bdfdfdf6948d7cf73dfd3d63a7474e83535420ee59529bcd118545d5e5478db7127ac495081ddd74054b80da09509ccd12a5103ff00585f33cf0996ccf7d7e51a034b42fcfea5c8fa1cfb44ea87ab4fd2a01d27e02c17e178debc6320b8375fb8bdede738f6fd4385485579ef042dfa0952e8b2bd3e04548b2d0115771053fe50ffc4002b10010002010303030501010101010100000100112131415161718191a1b11050c1d1f0e16020f19070ffda0008010000013f10ff00f2ed8481a605ab8858aa7f93fe2f3d1460d785f87c4a321c5b95fafab74d55ed18e153752d47fe153126a014822db141e0b58e8ff6a3d606c2d8fd5d9383688ff3f32dad0d4d4ff83315614e6554bc8565f7d4f78dd478dafdbbca4c0c2344757e3d3896145cee3fdfeb8001cdc1c9faf32d80b5e477210c013fe08dbce55ca59f10328a7273da559bf5ae3cc0cbab54e1d4df98928c7e865d99b3f83eac608b943fa1fc330a13a87488c6105fa983c3dfefc2b5d7dd5714e2c0236e61d44e1ea4a7cca8e371f9f3110b12c860346a375fdf114100226e3f4c4a870f2d99582badfd44752596f67f5535ac06b901b3d6130a05acbb762f9d7efa364d02e39fa0ec0651c05bad65cdf26611613afae95e916e285e0cd294532f07bc3d3fbb4a741c2e0b51f1f119db00fa36546d0516ca3f057818883a3a6d84bff23b0dc7ed06cb347ef6c5bec05c0f2f485d675fa05e034801c8e6269a1d3943474a5e308d6888f315408d1ddc30708b57d5bff7111808523b91936995ddedfdd638401b9d0dbe85b41f48fd9f12ecca68deb47ea178405196d37ecdfe57deda91edab47b689d1867545ca49765d26b0a2a6a030b6b76ef17227367d3e482aacbc64acee3c30db15b06b0d40eaf426dde686e55eae4fcc7fd11dc31708ac2ea3e7e3cc15a08bbd6fedf110160b3ba387af5974ae966aff003e6593b5f264fcc4522f3f9e915dd0a1f1fafbe25be6a1a9c92d4da80ba38ff3d2e252f5c01822d32b3adcba7115505b2d90d2f9efac717b526172a8df6748ab22891c2b0fa5dc33920d96c5e61b2f5878de65455875258b64877d43f30c58c90e45a3ef2da100bba932f651f58abe1cf3afe3efa050a952ddfe51fec7689d61527c3c4048f097c84b15d031f84c2c0345ccc32e5f993229e60d9f4f8fa62208fc5f8f78472869659adcec88b9a14df1a448b2206fa98fc4525d1d1d171f7c1498d0905f98822d70610718d81747c2315824e4d77072844db45b0d1e4ea712f51a4476e91a320df025e00948542e855e61dde278d7f3679fa556cde7f1bd40a36b8e9fdef0537872726e404ab42c6bbd0d0738b2bad32d6de0b75675fbe0a67e751e4e18eb28bc3ffb788695168f499d2589688c14d01ddb98da38d44616b6bd98174786104096d93acfc7131cd8f0c06067dfccccae97a607cd4436c03cc267743bedef2d98068712b157a131087370edac6726267bfdf8798193635c620920280d884d1686abc0dd8db281f1b6b786aba1b5b0cd655e29ac0d46994d93799a8f3daa80af24750ded6e6bfdde5c6521341d079f982f16bc158c93d6e50ba05274c27ac02d66c0748e8cf732feedf7f2b8d21c01ab29cdcc3aeeeb757b5447833a0906d0daa06955505ae2ca798b5a201d7fd20f8db81aee1e90d3b607466bee89cf0fc43a4b5f1ec89ca2bb18daa24b2f79720833dacfd7dfba4cb63de6b172f21d2b5f1af6b9414f561c3aab778256176e9f9474e66060f27f748173a8ca6acab400620edf52c7553abb8fcfb458c59f34d94c988853631e80948226e30957cdfdf54ea5aeaec797105dcf15cb583ab75d0eb02c8c0a4817a5c544156d8b15762798f160443926302dadcdc8c50bd6e4e9118074148d353eb60355e8bfecdff1a3b9fe4a1695a9884c0689f3984b4374ee27ff00790a3ce7e87e7488533764f2fe097594a3ac741489b501a1b19d4cd74ffca170a4b07aad129a0e72fcc0832d33fd875f1f69575021f56b07965985d915e80fcc719ba90fc40a3eb21e807d639e6b8381c7a019817ad95caf01a7898da2e46cd71ceef589c802d13052fc54a90a85a68f4da598cdaba23473f9cffe0102cf813524b59e20b14420ddfac5ba08caca9fc264ff003ff587474bf572f02084758f1f438ea4b2016151d475eb73007264c5e4f5b83c4a01ee767f312907775c3e2beab4857267414775af596900b268e0acb3138a5a27d98295500e053a8779a89a377c2f23ecc2484a8e00876c1572136b195761fec16f1b5cd6f663d6e540380fc15020dea077037ed2bc84a0a07051666759c45a761fd419e03a81a9996a3aef4e3a82d3c12b4098ddfdd65185d347738676193d14fa10050d4e4e871d65e43b816781c773304ae81895deff00c85e0a1d36d601ddcc7ab02623e2e66908a5b369fa99af73c8ff00bff9282abb60967455da2f88d5ff006145b593407444ac2d68e85efd210cea534987e095142e16abb60560448ef48b8ef420fb3582cb56b047aa547b81a0d88a6efbbed1d1d8711edaaf7aa8c919ae17d00b8de10af3285677a1d25a12bf2a6f1db48a232677b36f6fb2ea02d53b40220abc34be89e859850e5636c7ac867bb7f11486bfb9d0c06d9f24b74c34e77c589de517fd871674805b46e90f2184e90d41e50962506ddbeb517c0835baf679984a0e8d7e5a36c173db527e238859bf41d476d88240970563e7e6276d5521a6ba0778fc540db06807bea41d90c43026cf4ba869ef40177f3af7182c9544d1131ff978c145e02ff7e23929cb86ce5ea9f108501bad0f89782ee09f086b154442c43739ba596093728ad6ae91b1211b4a973cab9608bc005abe5757ac02543112aab3f51da9c93ab88f0b2c36eeadc2e4432d0d78a846d65f4489b7718961b2c06574b9aeb9d332bf805c9aaf96feca621776e25302742e9ded1f27b91f41c3c22b2f0fea5379a9d02e2da214717a1f07896f2b14d1ccdcd1056c398d0af587c95b3d4a631a39f368dfe4193737978c3626e4655ce4eaf1faf4e2076861d4b6d392a542ad5aabb5f246d332a6b62f53b30d30acecf0c119a1144faee2bfcd25a4509d784ea6b022512fd0c8fcf9ff00c9dc691a23a9199c397ec53e779a2db3376740035802cad502d7cffb1625a99812fad0dc7e7c4ba5677f8669798e040425c1aba6deb06e203a814c56c4c0c217ba5b2990b0bd712fca66816ad5fa4bc482b69b9368022cda1c777e3ecee78d34ebaafe47fb1bf74568f32e3cc5b41dc746bc4512a51329bab112bc210e7ab823347dcc41e9bbbd10604700cc1495a54074851ba7c5691d5c14b405e50d3b84b528b9b0eeeccaae5142d498c3c86b04391a0afaf4792616a0296b7ddedf3d25c86c0b4b4d4ddef2e90e2d323cfc446db85bcbdd8c436876b14b0148b7578b824224c8269bb32b36d903599ae00caf58891db856ec2cc70e0ea81d103f333424681b84fcfd12c816a06cc975afba47b1a49e7999b408952814287462bce0aec09ea27a44a5e077837e911296068051f4b859252abe7f71045100b562547b160bd48a999d89878df8df8fb43d85d1d4bd7a17df4e8f9525d98f610d7b7cccba7a0d2f4025807f38377a1da6058ce334d578bd3b47759aeaa00d9881b9098adf9d620f7001f2c120c4ab17d712ed2804c1689f982316d2f176aba6f29d801364c0cd6b9eb136cc8605bc9b7f908bad94e86b4d9757996fa0754771e7a4c341c5f01c1d3e94f0ae9e81dd6a29d2086edbe80b4f60868c9c8e8e988fb005643c3998960b890178d3ea996a89b643e7d2002aa6385d1e00f496a377b92e508c3802bca6199576249b61668972f1de8386af9854615fc4510ab731cbf8f5881fae1b96ed976c68f7fb3b2a04f2680f549f1bd05b38ce0825742c0983b2ef8846556a6068c44940c9b3c3eaf1be92c1006015541d4af78b6ea08d075be546bb11bc1f32c62b017b63b46c063a35809b4dace7355579802854dace07f9e8ca334d0d3c88cc02f02fddb7d25e056de7f728760d80d5775775e7eaa60535c2d41e37f52225882686503b153014b4581e56ee6a4b20d0b4d00bfe63eb9b0f7887ae4f3362a8bbdd03e1f7250bba8f2b59660c8ef2bb623e1fe22e297d823175a675f31d2b772d6cb34a9652d5675bd3d612a0a5defbc2aae5ff00383f30347bcbcd53de14060779a17ece4570c39410f355054f372d452611158d0b0537183a6031110c24b20aea7acc2c7d68c17d034f3cc4357c87262b2b2e9b3a5e8c151624d3643cb3f3005b2b5655bd7f52f86d03298cab9b762e4f782aa0b508fef68190c25addaf5a204b6d2154a4dce6facd7e115abbabbbf4440ba880f2cde92ab9d41d3ac59cab7ead68743820ecc4519ab879ff00608477aeda2ea31876d5900b9688558dfd13eb98008305a3e27a4ae90cefb0f925635e4bc9b7b4043228efb7bcc0010e894c28dc48e7f6bfdb4730c94957572eed5128c0095884015f60692d34e065c87b5cb64d86f3e1f92060180d11dfecf51c316f4172fdafb1e5fc07bcd53a8fa891aea35ef1fb27a9d1324d5b4728e438ba53ccb83666ac0672fc104cfaea1d45bde189482b41e11e1d3d256b6e9bfa46215d34ba15d86bacbe85d055829813a48d72ba478f36cc210342400e957f880bc381ef661a6182c1b68358b20addda643cd8c727d68ddffb3598f8a8c7b4adb46dc7382cd26feca73cad3b6d671047447e861ea4819d97e7c42372496e8fb0e4eeca51717ab688e503880a14db2a46dd358da8b48f176e9060585d36c3389514faa001e10a36edf2e204357dd3abd5fed23b6054b1a099b7ede1f93ece2bbe88adb56b6c57986102a6ef66f8400f13356aae52f636f9ed30896637a23571cbf52b5f6f982b3907ad7fb149055b30ba23b11ec6ac474a38c9e2e31a23625d50ddebac09522eeb0e4607d34b4a0b07a92921a5075da22bdbbcf68f54e037c81c87cc05cb4f201fe4b43b7265eb501137446f6719881a68c883dcb8b8dabdd54cb9eae216a1f8505b7bc5f7f684d1032dbb87d9c43414c8a5be4f589527029ca187b9e90cd65aac2638e3f4fd74fb9178e76d8b795e950c08052f305d08ea1fdcc76116c4c8beb1d2bc80c8be7bc60e8c81c1e7acdbd36358ddd38f58f4dcae98f78a26860aed98f52a85daf07a35f68af9780adf9f58a51015d5c5dbaa69de05acca4e9c4a63740f5e3c0fc4d5f853784c23e950ac63f583b453a0da054f96df297685cc58d6a400064df02a972f20d8cd1423c618c25db4031e04c215175a16c4aea1558ad2689f2064d694dd97ca20f52e7d62436f8c230ea115b61b94e934760a72b7f4cca4596ec5e3fae2b70add058ec9f988404c1a2f24b005d3435ed3bde4c40644f595c8291862c29dea9c7b1969db5b15ecf1b8c2e8ce9685ae4d8cb7d666428d2fe612c1987e7f104b8ea40783fe617c129637535732f3e97003456c21bc3a055e1da0e0a5abab535be8979185f52e26bc63c9f67baa5fce3a3bc4f740776b44e859e1948c82bff0d5b7b0730663801dcbe05f997d445c8ecd8f0468e6f2fa109870809b470f65dd5d4cbbed41b98a0f8250dc2a1ab8bf3e2288b3495b0a10309af0017078bc51e91ed6db156b8f6ccab92be0191c8b3674f889127d4a76420335daa366b12e885795bfa25b2e5814a7040e86852d9d48a8b8f50f98e313c830f2af5852ecae40db02450dd190a8f2dce2420bf219fc4541e2f215cad4df6632cc2651a5e8c53bba1c3086bfe03f329de006b68ec9805b6eeb77d88af5de32a74f97c46e81ebace1f484ce2886d63126af63b0fbc44420d577907881a70878fb40a4d5858ad2fd53c919edc8d6aa3b81efc44412985bd9f94aecb994fd8a735b42e177cd4dabf528abda5e27bb134469ada1d7f6e264bd68b0ed8747ed863820b0780e3bcce89e4357facfb466ad963a011dd2784c166d1080b037c310c14b1a5b51e6fda10af2c0c87f6f2ade8c9343ab31a0483c5ff91d23170a681fd5c6e22163c928a6081e9bc3d4c0e1a4bd36b34b980fd298a9ca0c3ccadace5e8dc4c7a851314ab1b7afff00634ca6a7500fcb1ba668e80fc74fe16469a0c583b472ed6ed13566349d53aa07e5df32840a5cc6e3dc34f3c7da6ec465df78dd82ad5837b337da5c4000e0ac3c7a972866564785ef29695da26ecdc766103077d077acc7366b01a3f265c154bcf83c77e664414f3cd6d09bd54c5f987801cc992f2db03398742a094d4a507aac204782c1754ed348d6e546783a415146079d7dae125a2963bc56ac75884a42a2a7eaafcbf5293294a5abc456340a2566eed7291560d6d52d501390bf4653571b70a1dc89ed65589bc2a42a1d2eb88ecc1d4749e2149b8d468183cba135e1e3421bbd21960501a11b1b10baa7682f311785cdedd3bcad2b3b20936bd3a0e6980c58d5fa7a9f69cf2b4e0b89e884382cad5b86cc080b8226acb37a18864f638b8fb09a96972d2ab65bcf3146174a2f9ba89537e802df625e401ae4d09e83fa1de32d4e7a636cf1ab358bddcaa99e7bc30ccb5e4bff00063e96d03dc84d67b4cb00e6b627d7100978a454cf8fbe6627b4c54cecf1170a268ce486e61852bdf73094877f5f6b8140d4bbf6f1cc3528de627a33bca361507b56836b2d0022ca8641baf17aeb2d60a886b12895a53a2554b585c861f39230951538723f8fb42bb521401ab0b200a672fd2de9dd970d5cb6b1cf5983060bc607e11a399b19576bba80c34ee359a14fcc3ccc38dc1587f0d4737b42a7ab465c864bca0f8b9e01d0c90eb8a45bbbb8291789d1a7ea22854c3ea282f00d5595ba830ac698621ea0846f4de6e12afecf618ebf54d5172dbaa78092e58b0b00e20b12b31033ae9533fd5a1a8c75aa8ca010d11a9cb9aa3c41956bda1466ff00a7b9b45aa2f36a9b1bbf1bc141c26f92df76e0c7b08271090e8abcdb112692f5ff001f686b9ce69d763da145885000deaf5ade394bc53ae2afb6930bd52deafdc4f6d3130890edefa0282c1f804073570bb305fafb4ba85b5a07db776c455145cadb5c4a28856e4aa59db5749678016d23abdf40dfc44fccc3736877fc12bcad10a6bb43c80533bcdce0df7340cd3b2417ad1fdebff863042e95ed01d1a38cb291c52ea5a1426a0a4eb2c9cd292ae085baa22e114dd29a9e4f89660222a8e566d70f11747a30c3429b7d5e1c41baab42c0e025be2552ecc70b46b5af1eac01be6a94af98f104ac35bb3eabe9f6812ec113922673a8abe9689950566b2c61a34280d872eb8ac5471f54c08014d8216541e497ea4ad280c8a003869d6097168dd081d7a593da507096745bd7f90443cc5ac1a4e8eb1b0aac45d2b26837df24a775ff000ef6eeede62306a08aba99296562ec0c8ed8a9460ec6afb3a47a98d0f4260f0586d19263fef1ea07d18b1b42a1450fa3cc05712f60fee0b517bee25804453b9829facd49d85982f68017a2d7e581bc471788fec11db1b7dee0c4bfbf6819cc37fb1bc2115549cbf5048402ca37b6b76a01c018074c7e3ed22c5323b3c9c33123329841a9de51342a8e5b52313280b2abb372656306cb61dc79197195d416d1a747b622a08150a576732a67413c146f9ae5b968b0e2ea3c518da9356a5c44d07a256675307ae90d35c6b89bf191f32a4df18d6192877708201428b137230be6a4f577f10895464ee755841d57452b5a1d2587aa177e68b9d1af7970db88b2f709d60214cd896706065752d287231a7ec87026c6b6f7f1280857393acd313b23e26c4034a1eb962c4e60f47b3e6a16ed1b9cb5bbd7ed541e0f4065029113827e12bd20b1a1cfcdb73c4459556653e3fcd66a02d12b4ca1c4375668d4ecb9c29e5902d21cd5bdda8b1c1f4d4709e914a7465e17d26622c52d11ee301cd2a8e2321c0bea8e59505c0843a8ddcfb757e23157b22f13b9f8fa53da32ca37e260526b92e59a5971b9fd4a1e0f607794549bca2d970f5b88bba912bf2e32ff00b181020fa2d6faf17d25d0137549007af5e1f31a3e01ad5d26af968f8e7ea1f3dbed945eb7fa172f3eacf4bffe22d548e0767b24c20f21d4b0fac1243b5ba98af5c442b05cec7396d432a29245d06dda532c7472bad2a635d03da5ebdced0f22657525db40602efb0d7d084ec3a68b631ceb173e5f80b3294164d19c712d0410bbe3accbb200df9f4638f08606fd60b680bd5660318a269c6fb425f950a4779708b0dab8ba818b5d4da580963a4acf395a9581eb9f12952735871d7bb4de3b035aa45a35d163978ea343ceb08db0c38d3d47b152ef8af4038383ac1ec401407db37c101ea84add18e89fea12a8d11d0f0cb3695ca280e496f550130ff2711702885d95a4deb3ed18cd51e26d4e6bd25c30a9f256b5e9eb36c151772140a11d12019af3bc154aa3ecc21a0accd1196fec37b4abaa9b0f5f860c3c60e6246a2a95da18b20c9d77260378cf3121acbbccd2c69e25a9dd3cba301072ea7100617e20f774bf48b745465583e7d863e16b55da33a4393ef6ddb0bef326a6151fa1bf77d20014603eda59d0298ca9b293aafd105cb571a3f85fdc711ea3078c104f81bea73ec128040eda5566328556505abeeb52ff008ed1f2cd3b41c40e670ea42c5b1de0fbeb2bb98fcce9101f4a136c9d1c93461581a03aac68a05d411dc8b040ab39fc46791d6f8767b304b4fd384eb530e8856ddda81a1626c622801bad757d55da5bed84afe683808351281007dc1417a97d18d57485b298c253aadc6b2eb1de45dd51c115a0fc1d04ba629264b0d3c620aa1ec982035da62520d0c9d0620319286841bbd4f8343d595911c6d53c3c77870a9691cf5c44ae50d0c762590ec18fdc14ed357aff00975838166806e7480a76bd53c763e8ae5f55ee6f0b598dbc4767a45385f00dbb9f4ddba9c1344b72a06c3787c6292ebb7237c400b8c8e471fd129246532bcaeefdc723a3ab81d1f588358dc2c350025c5486bc9a7495837ad1809b78990ad17debd666074eeb9fd8262bd59517847f316c154d46f4aba60016998847171c52f140f66304d87ab477749544703973f4348800a47448b4009756ea786ea5bd6597784b8180548c121239deb367aca8d030f562699c5c5a20bcaa908b601dd5484008d1485ad6fa900000a0d03ee2e46f54a08f543a55b0d8db1f32e500d688bd2e32b20f011832ac8eb5cc107b24db4021d0cc4fe02d84b02fdfcc72caf4d726130d2ecbb4cea72b9068c68061e62583f65a30670180f35ccb9f6c74f285d091bcd0dbde2fa2e182136d9ef1bdad15a9f465f4c023aaf418755356d428d942d2f3a40fe355aeba35d2fa100ca15e1fed5e9170007d72f8afb7ed17508f78548ac1ee534fb40494d082de45af318173ab0a47c9645c7c0643d9d65bed023a11c59a38ba84649a4317df780d25e06b88804144d39131d6de935e8f131b24d925eb42d88f3c1f53d18aaf6837d8dff3a7096581bf179eba3aece486c34d46ab169c70c71b0e079b9417aa3cafd4253cf6f18871f78ae8ce68242c25af8d14f797e6e06a1dcc5081651975c7a32b6b860e88fca088576170496ad428e77892ac10283a0efa7ac000000600fb7f03242ddad08d52cd9487b3a92a517bd714d3d98e517a311ea484b718e6bf300b792918a4df1f8838ac1c49ec7f1a92cb65c8e477e25d2a765ac1a7d9fa72475d5723b30f976c2c7fc64f69ab0820be52f08e89f984280585266f4ce928c7ac12f0facc84a8ca21a54ccc55f8a2ff0030f257d49870b189d71aa5569951dfff0093681bbbb885d8e5800e62a1001a071f2c1950c1760895c68f4812ddf52234f785d065acab95757ee4ea684a4d0e1f582c80a3128ef0d400eb4bd9b87ce1d160f05c48cc846eb5a143d7580eafa5bd3d1a63204340d06303a0bcb30731aa5764653e8ebc3aaff44fcc6128b76cb6b6d4b80a71bab5b74d69943a24caedea7e7c46ce054339177d3117933868a2f5d1c5575974ca2dba14f0eb894a2be885f4874bad6ab7a7f6f31c2eabeabd453cc40111019e653d1b1c0b5e311a5885d83c0de140116b0b6bddbd7c1180195c2b55bdabef34382bab2d5eb2dc7306cf92a00560ddad8eb87d5667efde41f8f9982a66a01e99f99ca0f6bf5d2246ab44f76b2f8ae51f880f8f674e04d08caaf6de0bb04d5ee7b4c504195750bee9cef1c2a9454d195f1c4262ab1a28d0fd0cc15f02acb46f3ae482d77dd0517464d621e62b00a51c8734c164d48393abfc43bc73a1f76fdb4ef000000501b7dfb1c3f4df99d3c6b7ea53296a8e53e96810a52e7e84b9ddc17d6595779af4b80f0685407422c40d421f0cb9b1701f46a578df59f99d2ff0ff008717bd7fc625acf0485ef5ff00f57713228ea1773410c900d5404f516ae325543934985cd4960ced16250d4204e3d20269be4692fc5961494d42e8b793303023662a55f0d8ad1ff00cbb3d1155cc5d6ef55f113cb4106c597174594d4210d49616b5cc6ca641d70df10027084f525008cc9a95137304362b31250d85b80d00e03fe076961575982d00e02a316117496c5a2283b31516a14d32c4358bb0c90c826fdaf110bd05563680fea3e84ceb296ccffc1332966eacf576d71044ec5c342d3c4bad26c2680a685f78eab961c9db78d056d6debfc264da497aeb8da181364bdffe143ac1d100ba05b6e252ee8b8b36479494630634995733ae35994721a634ff00f31bffd9, 'admin', '$2y$10$l.4enMxLRck1zDnMNTlUGu5VlNRnGFzlMa6QZi8DgG6zg7oVZpxrK', '2019-05-12 11:54:15');
INSERT INTO `user_account` (`user_ID`, `lvl_ID`, `user_Img`, `user_Name`, `user_Pass`, `user_Registered`) VALUES
(2, 2, 0xffd8ffe000104a46494600010200000100010000ffed009c50686f746f73686f7020332e30003842494d04040000000000801c02670014764871316a364f3570587a676578553958676e4a1c0228006246424d4430313030306162653033303030303439306430303030353131383030303062633139303030303763316230303030353232363030303039373335303030303036336130303030336533633030303062613365303030303864353730303030ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc20011080258025803002200011101021101ffc4001b00010002030101000000000000000000000004050203060107ffc4001801010101010100000000000000000000000001020304ffc4001801010101010100000000000000000000000001020304ffda000c03000001110211000001ee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000359b1a7236357a6c000000000000000000000000000000000000000000000008c49f398a86bacaba4f65951bddd2c4f2c728acf2d3c5ade9ea7cb3b3cb90b0d62fd8e48000000000000000000000000000000000000000000d50b945b3a6d996758e5b7762e8d9b3ccd00001e7be19488be6a67d3f358759d6c2a4de9d339de899000000000000000000000000000000000189900052e7cb35ee6f79eb1938eec82579e8f043cf558bdc4f7c03c52545f127f49c575fd3353afa1a8ab973dd0dc8000000000000000000000000000000f0d5cbeef1bea506730e5af3876bd93aa573d7ba76ea895ef8cdf4003cf4618edc4f7cd19d65e65e1e1a6cdabbd3652db69afd5ec24f356f335f367f3ba74cc72b900000000000000000000000000001556bcfae76d596bcef35d16743b69a6db8aec93ab672b1f0c5b4cf70cf9dcbd8fb4c9e0d397b0f527fb0b6c6f853b05f32892eb0d322359daeee67a6b879e921c5b4f16b71b48d2f35d7d04ce8b70c80000000000000000000000000028eeea171d95d63cf7608116e79dd8f5ad9944919455e596b5cc498f9e73867ec426e5176c6c8f222d61ee586eecdb1fcccdf8671aac236dd98b5bd3737875cfd0bde5eef326b1f59c9e220c1b0a8deba61720000000000000000000000000010f98e8343549d0d55966eeadb2f72e476ccafd5d39632cea771cee9e53b2d75c846b9cf4a4cedeb0c9aba28cf45af98e9c944ed6bf79e6f265ac7b320e596f816504d7223b72de7f37d31bb29bbf329e1f4345a7462e4000000000000000000000000002b6a7a3e466fa5f61ecc25e3ee494949d5f1dbb95857cc6baef682ff99e9201e6bd85e4baaf7cb5e7be658f9960d40a2e8f3b7935dd0f4c67879edc36da74845b03381e468a8bfe7b77a31600000000000000000000000000039c9d4ad6eba813f376659799cb8ced2bb579eea394ebb3d792972e92e7b4dbc97419934f21e46c565794b0adbcaf83826d8ce86dc779cfa6be76fb9fe92caf204fbc66b5e731e9aab661026afb43d173f6f46d5b759000000000000000000000000000d5ca76119636ca4cb3ae8bdae9599b1ef89c7f434b85ed77cbcfc26b44883eb95c5d57dac73f5fd6f2b75b3541d8cecf35c8d6aef7506fc74b6c345726702e69759ced69f5dc74b2b99f17a08b2eed88161e7b32a1bce6dabb9b0676f2000000000000000000000000000056d175fcfb53e4f35738b2fdd54899409dbdda6e8ca7ce7c763d14cba8763e31318360979a87d6e1b43b1cb5b3572f2d32ed89ba44e98f25d7d55941965d0ef30f5dad34d75bb790b272bed35b9c9b2966d7eb5d56f35cc000000000000000000000000000002052f5358b536fecfcde4774aa0bd3b2ca92db8eb77be7ac4691ef947be479e7be2b1cbc5c7ccbc5c7cf354d6df20c5d49fec56b31a6edf2e74c5b0f22365bb59a9aaf7a66c430000000000000000000000000000000e6fa1e733abcd1a7573addbf76e5156f658af29616301a958d4eb9abadb4118ea5c7abab8f4b686bd3d0ec66833ba8c9a24126bc76792eaf360d7ec9cea279229b53deb70cf59040000000000000000000000000000008947d340ceea33e9050d6f611752866576fceb6eddb9651b3acaddb76b877175b2d39eaecdb5ae4ee98b4bae525e5d26bdfef3c434c2c6cf6934e4ae5955706d3760753b17208000000000000000000000000000000000001e72dd551ae10b4e974d959b3a8d4a087f44631f3ad9d8713ab67ef9ef4ee26c97fb69e5f0e135555cbd2d473f2f575ccba9f6469232000000000000000000000000000000000034ebe766ba197cdcf2d20d2d859af0bac737914fa7e9d2dedf3e5b39b59743756dcf23d447c73e3a654d976edb3668f57297a6e31cab234edb9baf2d5b5245de19dc00000000000000000000000000000000000052567595f351bc8d972e96fe73d2378b583b609eec8f67753f9de8b9dd487d5f25d8db8e5b5cf9fcdf6e1bfb6ec2e35daf9faf37d3554bdf2ae976d4173651ab669bed4b900000000000000000000000000000000000068de2a6c376b283cc7ce5da5c4b5e7a37df73bd474cebe4a443e976763c7589d33c87cb9f13b27d94eb227d5dac9175670f73a01ae6000000000000000000000000000000000000000000e47aee766b6e9b0a39ac7aae77a3b29225679bd5a59f33d6e733b8eb7a14e9ea11bcfd2ded8d66bb95b96b57f2f99e9ba720400000000000000000000000000000000000000000071fd873cd5759545c6b7e6786c932b18f2f18e62b2e6a7573d12e666d9e7539f3edaa66bace726f55cd74bebe012000000000000000000000000000000000000000000296eab578a9517a7d6eb32eb989c97bd67a9c957f7750bc8da46d1a93b387af1addaf6f53b9265930000000000000000000000000000000000000000000030cc7ceedf5c0d6fbef214ae59d8839131e7a9e70fdcf21ab592b5c9ebd7a9995d63cf880000000000000000000000000000000000000000000001c1e8eb398d6faf97ce6be7adf5d1e4ed793b9a8b33d95044c22baf2b76eb5d25913900000000000000000000000000000000000000000000000e4fac86bea82db975d2afbcde67721d7c7d6392e9f9aea39f652ddd2b3d231cba72000000000000000000000000000000000000000000000000e4b9fee575cb755b37a67b708d26ae6fb1e75a89177adecfdaab098da000000000000000000000000000000000000000000000001e7ba03998fbebd7f9471a4e97de42ccbacb96de75033cc000000000000000000000000000000000000000000000079ef85448813b5d39dc64c6df5e9f0dd538e302c3cf35baf97aa7ade8e7c0000000000000000000000000000000000000000000000001e7a2ba3ccd1adec8bb4bee190db2309730120000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffc4002f100002020103020503040203010000000001020304001112130510142122315020233230333460152440419042ffda0008010000010502ff00ccade833963c0ea71e444c47575fe8048024bd02649d4db1ae586c32ca7092734cda4669da95a8120560c3e7669e3844dd498e3bc92e6dec109c118cda07d1a0cda98b1bc790750f30411f33248b1ad8ea2ed9e6c40d3b04c0a07e882570ec982bcd4dabce93ac922c4905d8a66f95b56d20c9249276034ec1300d3f551b43223567695af4d76905146efca5eb9c58076f7c55d3fe0452019d3d42dbcb344114ed95f8dd46bf459bc9160d49ed1ffc28dcc5623937f6b9577e51b3a7c5cb22c51c7339bbdefdb66703cf00d33dc8f2fd0d0e6efd171a8a92ef54935ed7abe519f953e26493c5cb6e3212ad85b099725e18062628c7c4fcbf47df0ea98ac1be8fca4ff1e987a7b6354b0b851e27497ca3933c8e48be0ec0208f87ea326c82b44066c5d278deac904ab347d564d64ffe53db1ce7fda9d47d2ce5715f766be7d986c2a770ecdef13f247de4af13e787646f6c9872c4934d572371227c35f3feda9d0ab06c650c155e94d61b92c1f64f6c7c53ae27b617da54ea3b11a8c2da846ec7cf07a1f0e6b9d3a7d8ddc8d42fb15073c3aeb7a3221e9875abf0dd517edafa954952ac1b1f4089e65bd8766c008c0de5937b4780ebde4f7ec5b5546d7251e957d0e48b9ae53b9b8020fd5746b5fa49f4fc30992ed7a4fac7daed8290a7b3606230fb508755780389a2681d0f949f8a9d314e8777ab25c589d879839ed9aee188755c917420e995ece2cc7010c0807bda6022e95fbbf0b71b6d6489961864db63b5bac666d1a277ede6444bb23c9a2599248deb387dc0f91d7b038a8659042544b0ef125764cd735c2711b4ed20d476499d312e918bd40678d539c8ef85094e97fbff000bd47f8d448e2b9576645ea8bb7531eb63aa6565dd63bc88b22cbd3dc18293eb350d31e2923c0728a6d87b100e4f556404146edbbc81dc1879f65058d6a2001146bda4fdbe963ee7c2f50fe3d63e94946245182570ae7525fb49f8e53fdefaca29c86bb34ff4d98965c92178b35ec095ef144f2b55acb00ef3fecf493f0d2a09238098a6d3079607d735cb6bc95c61f78a29192addfd53e59aea725ad19c23439a1395e833e471ac6bf4c3f6fa97c35f10cb9527f3d3077b3170cd57f90aaa82c26c9ab597844722cabf5cb6628f1aeb1c69a76c48da691228e3ecff008c8a649e3e9f236435a387ead5758d38d6efdbb5f0bd49d92bd6ae2645a506430f1808157b5d839a3ac749f3a847aa29d310b2356b0261da3996532d88a3c6bacd8c649300030b600d23c5188d7b4a704844914e59567c0ea7b96d19acee64408b9d53f188ee8be1254124685a94cb20daae8d9a669decfa6e89172478f465d8c8da768ac4ecf22724772278523099ae33e6a4e0d58c2aa89bd739061980c9252dd958a18eca1c67f21b9324b91ae7ddb1956bf0af6ea9f852fe2fc2cf0a4e9e1ecd6296a37c46d3049dfa92e960968809e36c65561a15ed4d161ecc76e4f16bdff2c0546730191f3ccc68bed8e00cb227d8ef0c4d266923495fa7aae0f2ee4e99d41f70a5fc6f86ea018d6a3205c59353e59e7833aaed38dab57838e6864a311c2252ab1b87ab169d88dc3c3e98f5fd71c266922e9f1ae2c112e4b18596aafaae49e8897504021d4a36282729aba3559382d8950e03af632a8c762f973f2806d87e1ee52f38ad62cde4245396ed1764a918c29a2a21472da0e2e4631ab3fb7d0ca1b235e21b8e12f8c246063739c5dee57df8885cc1108958e08fc43a4ad16210d801c2a467268eff0072cfc4cf5229b1aa4f5f20df70cb522916e57100e9ec02fd1c437fea1cd14639098ccf671576a14d7380020ceb8eee42811a74f4df3fc57517db56947c75f3a968cdeb85e1b6a715c37ea96185f1ec22e7892c765a7c15e15fa95391ef48375187861f8abac65b0ce117c42aa18f960daaf1c9d3f5c31cf094b922e25f438b6a36cd54e2119e9cd466f0073aaab5c8c635ecf112be70db930515c582ba66e39a669f4684e052f93b0ab0d1ae6697e29db6ad61b9427daf0006088ed0bd8f9e3d746c96926df07ae1ad32e04b5923cca773600cd92c0638e98ad2608e35cd71bcc69f56d3823c3924d1d548a292dcc8a117e2ad026b413ac559dec4815ef671dd6c6b565196e4cb82defcf10c7092c38dce4d3c7164d65df2288c98b5d062c71c22edce6c88b0c86fe290c34c39b49ce2382119a22e79b67a506bae4d644795ab4965911635f8caf55606ef3c093abc4f558471498a34192cef2b10324f78678442d6f4c6767c48cb604cd06513c763e81efa0c791572499531ec493355a017e508045d8bc2bc129916d4a5d988442c58b509c46b5e663342f032a8c1dc821636de9dc90b93dc55ce69643174f77c8608e11f2bd55978524e0857da5259a8d310af6bd5fc44287691edda15dd1f4f997c39b50ae375084649d45ce33cb26422aae412d7f9296448961b314dddee575c96feec82a3b4ae38ac9f21d3210cf6ac8800bf26549b7f6eab5f63c2ddd5f689954b4b4e183105018ed10b02cc582c87c8a9967f90b33082367796592056582ec6d0b3cd79e3a112e2a2a0770b9d4146d04be42bc516e2e72a27fa31bef5babbaaa629f2d71433e247c373a8c0648e110cc86a4270d1c13cd5b15830f90ea80f1cd2cc055691d38ab36461115a6f32ee7206def73cde3897c6afbdb8923b0df8d7fe304d8651ac49eea7218b5c8e2dcb701d903f2c36a035de19048a3cf2d3c7147d3a32907c8300c2f488912b982aaf4dd57d755b981c85cb9adac72c5fec59a9ea5cb475b527e110d22eded2b8ca8bc91e5a5d57a79d6a64f55e16df7a4caf4b43f2534493257a2b134b208a367967158243233b34960b7083c7d3e25d9133a2617dd249f8c722483b4c36d96234a3fc5c9c7a7a5ff13e62441224d56755875af3ac7a493b48c17d632f7aade0f3ce9a34b5966758123ac676e08c2f4d3feb65b3a41d3274d9f3561a599a59c88ad85af4a8826d658acaf37827cf036329d568892143b9b56727b1ae74d465872fb69586e195a6e687e6668268e7ab5788db7dd6a8fda6c277b6d19ed9437785ea92ed8d4ec69ac6f5822e7974d30f90ea2fae411e95fa4b68ff00376174b30b328590c79c55e63e0ab9cff1f16431f147d50fdfd7b0731c9567e4899b760026b769b6c14c69d43e6faba8db59c6bef9b74c0ee316c2e060d9d4d3d4ec4435ca4986a2e94a45114d3e82b271259984b374a05a4f9beabfc76f68f5080ca736ce738ec9ce3b31e3d8738a7cb42a62b8e30aa48de88b259b7e22e5587821f9bea2bbaa1fc3a49d60fa080c2c5147c92091700d4f09ce35191c4653529ac1f3aebbd18153d21fd7f51f3cea2bc76946abc60c14fceb7cf75209e269f94f14dae392a95aca4e04e39fbf585d27aff816d23e9e75a9f3d715967a89c963823c1966b84926977346ed81ce06ceb0baa40736ac55ba7a14abf3d7aa09840aecfb2c8c75b271e390654ade214d2b51e0b12ae0bb28c96d493a475a40668b64bfd02c2f84b80823271a0e94ba57cea30f14d5a1e5648e38c699d4bcbfa0da844f1539f88b4f12e59b3cb0d21b6ae4f109a288b57941d46754fdb1edfd03aaa693ed39bd7c2c76abaa2c88cd972b0b0ab626ae7fc9b6493bd81fd05e842ee3a7d7c14eb8c58625cd341a4fbbd5a58ab66790f4d9f129d88d84f6490cdbbfa013a0e68b39a2ce44d39a2ce68b0cb18ce78b04b1b1fe8530d61e197b18de4ae60940c9e291f1a27414ff0091fd00f90374672896b6a7b52fe3de7db0c6bbe4bc48975639507fb1fd00fb3473eabc8957c44bdaaa9582fbeb2d04d65ea1fbd14cf1657b323cdfd088044b1c28178b0583aee57c120859d95f238a270b0c6a7fa1d942d811b6f0306e0d2178598f1cbc70065ffcc6ffc400251100020201040105010101000000000000000102111012213140200330415051702242ffda0008010211013f01fe9da4a5e0caef25ec50d15db4bdb65f5d2c2f6ef0d7590ce7dc78b2c7d458acd2f1af1acfc75171e0bc3488d638a7e565edd489584479f61c6c71ac5f5d0de1087e495e27c0efc17513c5623c0d59c6377848d4852be0f53145e23d54ca2851a4345e13a194cd2c8ec495918d93a4a8d2575d31b22ff46bce8b46bfcf07c75a2892a171b8a46b2d1fe4d86e8d6cb6fc2f0ddf5a32a35b2cdb31abdc94d7c093638e2f3c0df690912785897051450e5d94ac712b09895b2492c45ed87cf714be096dc958e111e4f53111cab83d413eead23a2445135f388c5e25c77a157b9cb2453256704e77b2c56f43ef45d3cbb1ab4453e5097c927487de58d46a148571e0d6ff0007fafe8ab35b0fe816e686355c9c9a4a697d0a7589bb13a1fd1ec6d88b2fe8f42342342342fa269616f23fe877f46b836361bfea1fffc4002711000202010304020203010000000000000001021112102131204050510341132204307061ffda0008010111013f01ff004fb4667e43f219af0197a1b2fa53a13bef381bb1bfe84313edef593175568959425f5a27dba7648656da56956509d0d51163e8e7b5621eec68cab6248e51447928a1702d8e7a23da5d12f62743f7aa66c8d99c68a7ef4688fad29691ed1f1af286355d0ddeaa542a7a5d6b1ed5d69164cbb5d15ecd8cab4f8cbe85cf6ae3ac958b61c465dec62551818a17072628db45cf6d54256648b32d548c8b436458dd1177bea96fdbdfa39471fd183315f6365e8bb694b15641d8cb3f5315ecc59818ae4d8c8be84bb794721422b46b45125b2d8c5be451250e951f7de463b8dd1909de8ca2998f74dd09a7c699117b0964c92485b310d966424bbaa4f922af74635ac793e4d5f24781ab31ef24a4d1f1dde9144d692fe4463b12e4871df3bfa211c4914c95896c7c3f0d7ed31ee65846fc13b32aa25f2463b486b7a12fc9f27fc43efd9919169928c66bf63f15fd8928aa5e039d2b48f82b2d7b131a12a324f6f04d51154b4910e7c15f4249783c4a3131f09f67d8fc26dfea5fffc4003b10000103010603060405030305000000000100021121031012314151223261132050718191303342b123526062a10440728290923463a2e1f1ffda0008010000063f02ff006cae61eebe637dd51c3dd71380f3589a647e81926173623d170300f35f308f255b477baa9592caf6b0be0f5520c8f1ee374745164d8ea54bdc4f9fc1c955ab17f4f69e8b05bb709dd48323c6b13cc05165c237d549bebf0e1ea41c566a5bea1173cc00b0f29ebe2d1ccfd96279bebf1a0f29cc216b646898ce56aed2c85350bb2b53e4ef14ececf9feca5d5375175fec303f94ff000ad06c2971759736cbb3b5f7dbc3626bdd2d6713fecb13b3379fec9ae5d6eed2cf9feebb37e5a74f0b2f764132d5f49fb770d9599868cceff1687dd41a7c2fdcd5073bbb660ff20b09e61e15ff0069997541e330a7270cc5ce76b90ee47c4a54775ad9a4aa5a3d70dafb85ca1de4549610b3c436d56e2e0f1c84a919784611ccfa26b36444216cca041ed4db3fcbdd1dfc975ee48537ca6bc6bdcab403b8521d3e6b34587d14453629ae1af83d8ce4a551104482b7b1727bb7370b8f723d94f760a837c69dcec9d91cbbb5cd54290485532bc8f83b2d356940eea45ce9ca3bd3062f07e0755d54ecba5d22ec1699eea9de72b46f5f07b468a3b6587517e0fa9ff6b8dfda3b5c942c2ecb4b8df17c80a1c22f8d7bd04c1dd55510e97b86a42b41d3c1ad0f44cb7629c83afc6d7716c561788be106ed76177ff143b2dd41ee8600b450e6aa545f3af7a8564aaa9f654944c27ff8f8311b958163672fd934e77d99fda81b983b985c242fc321c3647b50214b1ca48a6f76239babdca51cb0b845fe5dd8152a6d1aa966df6b9de4ad0f4f063d0a119850e5899eda5ec76c51174edf020b7346ccf2b4d7bc06bbaae5baadd4be1a16efd4f71f1b2b46ebe0ce61d42366ff002bea2e78d73bcda59e8561b6ff0097c5aa99ba408517cda70850c11de2347f83e26bc7683f9582d33d0f74b74d131434404e6e9985f9acf6d9626191f02aeaec170597fc956d30f92892772570b479df858daae23842a093b9ef61c55d961927cd593faf8370ea60ac45eef255c5eeb08b425bb140344017c8e76a679dd8c662ec76660fdd446178cc5eec393755c4e5f8567eae5f89684f40b2bb0b73fb2c23b9da052d77bae210b985f5d960b2cf751fcdc3cd30ee3c14b1d91458fe52b10e20b38eebbfc954ac3884950542a1aa1641c0f5845849aa6f664e0d614eb752e80a8b35aad15a455b19dd2d2b8f84a186097180a4901678cf45d3f2b556315e159f9783617844d9f135718c250c2fcf45517cee1074cb5cb884286381e8a1d743be6beb1b5c5cb1b35d05fb2e73fe90a8cf7585b0dd5173edb2083894e8a003b9c0608582a5cb15af13b6d140beabd533c1c867aa886e2d154095cab2554ca894d4d7611d54b68557890d176a5d2e78ba0a869a28c8ac36755c67115460568d770b6d394a73f4e50775d9b799c8472a8d1169d2ea094ec4d808e2d692b354bb75d130260e9e11dad8e7b28b4a1dd56b776566f001ccaaf128b310651c223ec5644a9c2e662e6145888d214772a14363add4701e8a0b81f455b5746c288561a3417e36f32a2eb73de28c1aac36996ea5a67c964ba9c90b36998cca8f4f0a9221db845cc7cb42c0786cc7346a808c31b210e2511dd2e974f9fc680dd654da3837eeb0d98c365a93aa0c1ca2ee125be4be71f5557c7929d624ac474af85bbf751346a6a6e6335cd6505569fd855e3d2aa2cac8b971bdb623a2d5e77777b069af92c2df555e6754f858b0c8052795ab1555a3ed00c48070953667d16aaa1568b35c47115c56607915f57bae772e6f75c6e13d2ea2e1b3739641817e2db4f92a59e2ff00250283a7c08cdee5da3f947f3e165db275b3f99e576768ea64b85c7d54175f5ba42a397099f55aa873cae63735c755059c5e79ae1b368f4f83b2975020dc82dcecb13fd7a20d68a0f0bb48d93673d90c36061519eea65a1617983e4a5c0382e00b9954a0318de554d7659c053905917158ed629a6cb0b470852145a8f552d3215551ab25ff00b552b25d175524d118ab9768fa377585a20786b9d324f721e3d5717159eeb150f50a0505c5b63ca332b39eb70150ed5704f9aa9ee609e17776a564baeca6d089d961b307d162b6a9dbc520e49afb2a072ab7d42ec59ea5616f2fdd4356389e9aa8166ef6405a08eef68336109aedfb9530a1a5430429b430b807af8b06fd532141e739745d4ac216270e3fb5f1f50c941ee5ab77584baad557aa6272e0680b8895f898c9586ccb4789627980b81d5dafada0f4587fa76e376ebb5b7749d93c3c483371b53a64a0713ce4156c87ba9880e34bbb66f29cfcfb86332ac8368f70aa1da5b9af4557bcf9a911d98ca167fc28b2b13687aaed2da07ed6f88e335d826badd94890d085a7f4f470d962b4700e19850ca59ae2e22a1ad03c944d5377419a950dac045ee32e370df9975d55a0e93dce1f75632667541ede6629ecdb3aaca3c8ae17fb8405a0059d14b4c8f1163b40e4d368c018ec9071c31e48c86e6835b0028025670ad1db18098d4481468fe6ee011224a2acc7ed0a4278fdaa1429340bf28d135dab0a63f70bb6b2e5d42c42e2d7f113f4aaea67c460890b884b8d1a837ea2a5f68712c16ad38742101640bceca0b1cd3d55ab4e8bb4fa189f69f9dd73fa40453074be3aa94d7bbdaeb41bb6559ddda7f4f96ad50011e90b1db1c4ef13c2f0b139d8c8cba22f76414da3fb3b33a04fc3506004e18886369456d59a812a99b935bb05c4e03cd39df98ddc0e0ef2bde3f75ccbc79f8c963b22b0378db342bb3b619f2b913a66ad9c07e117afe96cbd6e7ce94ba0a7ff008dd273d0236afe1c5546183251b1b9c576393befe37691c403e9d106b7e6bc4009b61f51427e91739ddbb5ae3a15c36d6457d1ee8da3cf19a40449c826cf2cdd0ccb7527ea322e7755886883f5d7c69c6c5b21ebb479c5687f8568efc940b13bea19a9192738ea564b54cc4b00fa935db2c2cf5583419a80aa9a138b87327d99f3f1cb661faaa15397652091d16273089d5aa9da2e67fba0c0498407455ba75526e3356b4277b281b78e59ba2b30b88ddc34f259cff0b8b137cd709042c7b2a645766ea1d0a249951359585b9a25c6ae41839466ad2d4f8e0ff2ba4120f45473d7310b327d54f66e5168d1ea8b1d9151910a1feeb1081e4b30170fbac2d12e720cd75f1c7f4aa288dbbb0402a6cc06aab4a8cbcd7359ff00c955edf4586c584f5588f13f7f1d2d3a84e69cc51399dfaa706d02053ddab48567e5e3fc39c715d85f9efba240923454a3b509d64fe13a75ee34ee2e78dc2678fda0767298c2602893ef7481435f24c6e29c3aae0823cd55a7d164559b868a02776a789e2813675af8f97b79c0f75f87ccaa47b2e7f652e055a68464b8403e4544ddd9e15392b2a9762899fd022d0723948c8dc4e99a2efcc6ec6395e84980a1ad0164ac4f5fd025bae88d85ad2329d156d1bee9dd98e0c89567e5716146cdf432a6eb3ff243f40877e61736c8734c94d676a24045a1c0919ddb3c645161d342b91a8628cf2fd045cec649eab94fbaf94152cda3d11c204aabd91b423413a2c64598f22b947ba07b298339affa5ffc9416537fd03257cc6fbaf98df740e36c1eabe637dd7cc6fbaabc2f98df7501e09f3fd06f0365f2dded759616ce6a4b0dd665ad2780297348099fa09f1fe94f2338aaccdcd51f9a89addca1048a2cc94cfd03456de55a669d88d70d3a2f986e682837f2a2ed821e48e1d535ae220f4fd070725f2db251fc361a4885c94cb3e8a4d8b71ba35dd160b300d3245eeb10763ea89ec9b9c290c00fe84044e44184f30493948853159fe2133825d4c425486c55b4459141fcd539a5b49267fdb1bfffc4002b100100020103030302070101000000000001001121314151106171508191a1b1203060c1d1e1f0f190ffda0008010000013f21ff00cc950d63ac3f31ff00373527e201bf3e84ccba27e81a1006ecc78b88dc5e3be3b9adf80a9904fbe6a0be583744fb4758a7c226f76ca9f7ad251126e37ebd6e35b6e65b84f95897b9d0128369b5d1de0b5cc34012ba54ec20ceb1db114bc77bfe183a178a18f721a12688fad2709eecb93eff0057f12988abaac18d7044784c8067f25cb2569676773c333243a6dfd32dfe4d4d4e9445442ec98dfab1b4ec9dbcccccf1c1e20f77447876818057e55cbe99e6f12648bdbebafe4953a8d4fbb310434fef2eacbd1becfaa66a67abfeeb2d56b339e99542d8479e5f917f9066bffa7b4e6f878df4c6c06fb8958ad18b6be535f4c40216d0e7f0fc70b4f2814d6979dfa69014837fcaafc820b5085383a9d2aa143522d8fc13bb8f4b746bea4d6e1a0e17e0d102022e04ed045b1d33780007e3d621f620ce9bfd3f27da65097fbdde1ed7eee95df807de645b1d793d2540b748d6e6ec394d529cf69587d03d29473f920bb61d594e5d62c774404e4e83f9080a4b20cfe2bb4131f1d1e8dda0406a35e0be6174596c8a1ef4f92bb381dc25216dba3047148c6e2b3f7212415a27a42eeed7f79ef01ef320b094dc1fecd4d8789a0c3a9c32bc702df2c0a83874ccc1a7ef285e9ae7f031a2b9878388414717a744bc471d38343adca35d487b61d75996f08266b185bec7ccb637c9d995c11bb419a051bf47a0744fac433a900b528ec29260f69cbc7f732f58b5e21ca61e0e8ae2878ea2ba2c8a7a575c53129ade27d526fde3a0023a4bddd5d346358d899433e5c3f82c077894be49a58c6d5af6bc47d80364ae175cf47c6363ecc6702b9f234e61b67b91a44425185be0ca3d08b863da64dec27b0e83c062c27bcceecf5183cc35e894ba34651ce896722981757d3a67f9a6bceb04130d39406d09d6c1ae7af8fe678e07d19685742015875bf0cc9ba258d98659e88578835d3b02b64722c1aa1e2a47994732d5c92ea41727c3a07b0d9e8f04cd7768b602efd0b566b02eb149b53a986547263a78388ac86d70be501a6fb92f0ae28932ace954acd73a311fc87a321bae3f388b9a239ada73039388426ce9ad8667dbe19bfa605ad7010cad95d129e367752835ad068c04c2b05842358b55bc5c4eeca88f840b1764da36be71acbef3c6121ee4b39d1e9e5ceb8f5ae19ad65d9a9a40cadb18dda9d8d2009553961aff004d7d1bd983eb2857174ef1712f5c2c89865ef0e9e6b4f8627c874e0a1b8755768966e626998aa41bdcd480efa4f85664986e638a7f86dd75422149b0c5d7874a822bbe885612a5d449a9a04022bdc75fea57548a0d22a5ef977623d185b702c5b9648a29afb45780763037c4e0977333e62b4f99bd7130f0bf20f4082982d3acf695451a757a5e18fa512c2f60d23468532c778a4188d6d0d3d65bf53fc9f82f8d6de0e7c047d1b400aa6349bf9421aec5269a14ef297d053da2a664123bd9a2b92a65bbc7f28673f98816a895b02dd0b89653a431baed1996a30160ca332a3c4eecab51f7fc4b6a0fefd1fdbbccc5b6bb8fde0874a944950f11b965f8423e6959bc04c7d9302037f33c2150fd8fc2f5c19be4b36abba9b76e0d4ad486ab495881d397474bbe22253a28de5655f521c7e2d167563bb32a4008c076fdde8c96d590ed2bf94d225241e71c51f2a320a0eb8d770ee712d9c7453172f897ef69fb29fe5132ff00035d168b7487577daaf69a0b7c19663a825a6178083e01076cc3417bb880feebcbd434d8cb17e3b74ed0e3d3732a84e3c82685f24b39e859982009326b1ba95c6babb9e872f11d915f45d1d1a8142ee1bf794d91d126e85de1430bf800aa5194a46062adadc0bac44d29ac6930ba0744d48beb5cbcc218e014a6b305815a79e58c343bee2392098c98ea187eaf86c35cf788349b8ecdbda15b3cb34c7ea10d262f998dfd942a56303701f95ad101d5d8d1f32ee2913d8f76663378d03afd7c57ecbd1bd9013523ed63fe260bbd9a4c60a642996bdf22df4abe3332152e96a9ff00309a4f22c8ac63bdfb453454b6283155b838e8016f0692f2452b763c42a586b2d5560ef2ac53b4b46ea7386ad8751589634d8e26104ae097d6d02a1a4ba8b6c6943b9a9cf3d55dca35fa47f3002800d8ea02d504abad34415e37efe8f679ae8e234f2a93328da4d3132cc2ec3f32db2644a3625e6506af73cc39a75543784a0edd332950bb1d4ad619258a7fb99b5236d3a12058cc35aa62f597de78b78b2c1cbb1de096df4269be2f606f66f8848b343b66afcc035d87c100f6a14452cc8a9a8f2a8b717a65da5f421bc0469b4386f981a83e2286a84d29f645338e13ef93b6c7d21ac35ad3f7264aaa84068ec939c3da005150fdae07775ddc41a1084ad3de36d65ba1ff0084bd441b1bca2b1f928500a5131414707e02a8198d72ad1571a3143e23ff007afef284ce130faeec03e84d6000aa32fbc0028e8869c0c9cca20f2f12d4eb9a8596eaec1cc6ef8efa110ad7641b10a684fb4281c6f0bf98dec5eed97ab9aa90a2bd26f7e55428235b9afa458864bfa100383446444f6978b3770ce9d0e8ba5d7781f94f541ab0ac2360e60d4de1fd918517ff0029fc40f103979610a41386360d774d210ecb99040d6b50fe9fe8c881c87e7d2e89ba20aa307cdd05e018d9fa4c655f7a560edde0d6243f057e403783b4fa16cdf485f1fbff0004a994edabe92e71fe762650e0d3f054a61ab2f886b301d9f49595f4b8c7a6097bc5988226d15fd5762330b244da0598ade11c3ee98707c45e89fa4d02a9a11f985f591dda0893233bda9f7ca343f34cb0c576a404b7bf4134c46701f620baf9880f3ddb1fdcd523e0ff003370dcab8d1838b0ea574a8680b8fa060e253a996ffb8952b3de777a583da1599a0bc1e216a0f598596f28db8438be6a9cc135d260d0a8014049a99fbc3ad5f889d59e499df61486d03ee4ca63b317d57de642da37597376f725156efc21080be93249ee95d706b1cb82e09970ef37cfbacaa0163546f1b8676fb9889b1bb61c129e1a1e964baef022ce40356240cb62999b87d91b6d75f313d5f98a0dd202994707bea411afd8c45c2dfda266604a0a601afb4cb7f664754d128205800e8d904f0b71de2192162b76fef0791b44953223373de3bd4bb60f31ba59b30b36cc4394e7ba33c703b71e2585795bf884291e988253a30a1b329a1f83525d86a4c7b9b0260259b9507041b4bc65c113aa0e1f7bd887709c2d117743e52a226baa6a3199ed1cce9002ae0587270c7a4ead1fc21cbd89d84c0aded12e7820d6542af01aa5255afc4f3ccd307a9a2015a8cbd2deb2f1702d67c0cb0144b44c35e572ca5faf10de56e7225c9d8b6292e14120a28ea831a100dd0dfe03ace2f2878d58d8ab71ac6b1bf5940a5df73eac35b9d08ac039c71ef0a25ee4e1342579f502837ff8c5ff00591d8ea4eecafbc4810e88cd2887eb3b152dceeae639693b4a44f798226943a154bea54b3046bc861e8a05ad111a43ee962f270d3da0adf5e533a5727be8c59202f63af2e6000376fd59bb7e26ab63d4bba773a610cbec8d9747aa5eecf821bb4413e8cc72ec097be249f68f3853f7c16acf169e46cd3f10b93190683d45785b4e463526e1267afd96d7fb84f01b923924ddf4f799fbf7b07c4aa27813903a118e6f73da5185a512d4ad88e61b9a3edda6d2edbb21e33330943020f1df4a6862a57589dda8cd1f2b420615ab6e74fbc24af25724234468ad26fb904cfb526d96d5c17226e7a8d6a2e54cac006e84662dd0b4b39e10b7598d09742e01ee4b989c1da71f427deff986145bc1ba3a82e260d7de61e084e17ed4ce2bc93bd8bed0dbe444bb352807b872c4c1ec2178d578ff0054f28cc4a794c3aff503a0b82007c459ee621dbd4541936637002856f52f4f1072f114827940bccab010aeaacba62a52a1ca19a4f165da66bc687fbeb3cc64f060e97dff00022af04ed693e9d12cae605fc290bca611b8e83ec93c93c084fac41112c634cd0e99fda4fcb8abbf9f535170d9dc85d9b8e9174d4de270e1b593bb2eb2c44bb50c315c67301934e4ab8993e0fcbfc4eddc4a04f7954e27567c164b65772ebda05f78e45ccfddfbf4b83e4f922f61fac849674c2254049c9d995c1b3507be2ee1de0a2d43de2e216df308a96820f895454748051c70f73a6ba94304a5e4c4c11b172cee274ec44ac7aaa7ad887430dfc6098a4e0335e4c38dddd95ab5bda137e34ae5bf719b82e09951c008e5505b14b5a81da68768f66a3a8de21c6740233ad425dce62d9b422bb070fad0cd7de5c0cb8e52dbc23f0bf77fd71174a6c34852083ca6b3177a04a288f7963a57357c5c416eef12a0df70b214ea94d7acdfd60001405044590a79dba85a745f68fb9001eb9a797f9b37015b7d49800ef4b23610d4989bc1f0ff0050bb2e70c00e1bd88f1a0b1853b902a56f8eede0684deedc659c11886c4c0e6a525c680efe0f5cf2287681a555a5c10632406567dd53f9b5507829c8b3e4952f644748d94cb96cae1b67f8aa19cb068a961d0ac434c8f6de51b0d6dc5579dcf3355dd3ddcfae1b7e07d9991a9ee2c18c3603b41d7ee926c3b48136e4b15fb416c7159242f153c4b8bd882153e135406ce085c2a1139d56b10da231f68216752e5f5cf60233ec4ef8a51c128e3ad611c25c5049b8622a3a43332a45ce11fdc831cc476cd83685aaff006213817e1e3d7434230cdd6c52a46e59f8c02809c300458087b43608032e91d98858063ebe44bcbe4890d4bc09cc74566dd9159f965b59b2deaeb0005196ba7f082abaf0cf175f520536e847e7d7f2a4937cccc00e730dc07781455dcc5662263e53394ad6dbf307afa2fc15aafcc625848c52db596b1f28ed37d1f7fd7f015231de0434c604c1f184cda9cddc4a694ecf310a07fc6b1b6cb352e738c6f565bc199806fde15ea94b9de7f40a19c97fc90925858f4264feaccb47557a3d36e7bef03331aa2521de25387c4cdc6bf6fd02adc6a7c319466cb73887d920436586e33da56fcfe73d37f7d1e1805d18308c68f4d5777da66ddbf40819ddf27410bccb3c4241f49a0a8c6dd30daff80665ef4b07fb665fa015010280fd028b216c877bcb9a07bb99f45e1159159ce2159e4c397ed9af12f4cd3b139bf89655614a661430eecb1b005e785e3f40822506acff00829ff051340683ba7fc14ff8295356cb2ddba0882a6c7e8330055741d6d79d5cebcc541016bd28240b136a356cfbafb7e81422e84b14603639f31b9547a37a9ff73a7ddfde589d5478c487c6570313d22f371b49df6edfa06d6ddb4c811b187d39681a5aa568eaa4ed3572acd07d5974e9f599f45fde0c18193646c0b2fd9fa0d905ac24254fa17a1cac346d348534db3126c665b55e5150ba22f57f84aac64db556a0811599f0ccab853f83079a689fa1000239017bfd22c63d06e758527002efb2fd62c2652dc513435a1634359a27e632cbed12a3a4b19b7ff31bffda000c03000001110211000010f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf30f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf38a8ec81d065fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3ccdf096f3cf342686b7f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf266b1011bc998ab234505fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb3dd8e3490004171d88c952d8bcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3aeda6c5d368b8c4fd9824345daedf3cf3cf3cf3cf3cf3cf3cf3cf3cf3a1a86169f758bdc8e0dabfc292c1f3cf3cf3cf3cf3cf3cf3cf3cf3cf09bdab14552992fbd6fa9366eb301f3cf3cf3cf3cf3cf3cf3cf3cf3cf2ac96241026ea8b139232397a11e1f3cf3cf3cf3cf3cf3cf3cf3cf3cf0e2174783d3abf51deff00e6e1c1f0cd3cf3cf3cf3cf3cf3cf3cf3cf3cf1f96acbb8af5c7b2aca310e6bb24e7fcf3cf3cf3cf3cf3cf3cf3cf3cf3cea0e5955a97b6f0de150009c3c253cf3cf3cf3cf3cf3cf3cf3cf3cf3cf1b400283d677d4e2a8fd835789f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2f7d05d1eb75f05460d68fcf76f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2cf1c5101ba3336f39a72c1dbcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c7ce0805f7aa55957fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf32435b96192532df378577cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf31a954faaba30182b6dddfcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf2c65afae70131d615f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3bc8c71320c3f6dbcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb8f8151f6c6d77cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3ce9c48b843e8e73cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb2d48224081ff003cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf1dc1b2f29d5f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3f617a81cfcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3c09d56f973f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb74997afcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf28dbec5d9fcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cb11092d7cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cffc400221101010100020300020301010000000000010011213110404150512030617071ffda0008010211013f10ff009667e07b85f6023fc2e6e61a633fafbdaf2c71d4167f17569df700e1911f6be8f80fe84d8bdc6b864cf5b0399323f6399fd7f4e611bf4c7267aa75b774ff006cc323c10f85487cf50c7c0883f62269ea70766efc4c31f6638727861f0b0d4b67adf083c32cf5fc7568dd5d90d725b8fb06b8b2b34eaedcc2e9b902e9872619cce6c1d1725ea2e327f4b925c5c353e4520f041daee78412ef83913d43f7c1b2c63c47193c05b6cdc9eaeae0484cf099ddcdf530b07a95e19de118323c1b2c0db5b7e5913b8160b426db2b37e483a9761ccf7ea174cfe909e2761b07885bccf2ecbd25a75cdb5c100f16497930044598e3d64dc93788a2f675fc488523db2fa9ff00be38399e7acd98384d06b9908d771f52d86ba20f99f9717d0d9e37c37797ab47ad8596ee39f258b9b88364b105c4435b236db56b06ce7691f69f368df02e260c75e056c360125bbec3a98b0770fc2c8f05d259ce5bf29e789662ea7fc957bf658e12843cd9f2d937e2ddba403272e6d38678ee5d77da5d7990eae8c9f458736840d6c5be069f79434cceaed00776072c3c3fdb47c7edbb2b1063efc7723f2fd9729fa9f2136dfaddf3deec4b8f8303eda369f08b9fa4bbefbce488e5af02c68376fc00f9b790c43a4292465d77f01b22cc5b365a093f82d4632e33c29c5adee4cfc086b0dd309db249ace4a3f8206646fd8caee2e270fc1afa633d47d49bdffd43ffc4002811010002020202020103050100000000000100112131104140512050716170813091b1c1d1f1ffda0008010111013f10fdceaadcab510457505dc1b0cabc9e76b2c7a7054fc5e07f3981a625794a0b622b6747f412388ee996e1895e3506b8d17c1a5fc44ee352cd425ca9f9cb0b444dcb8a7c520de650a62aa264c20e18a33c004584752e6352a6e0a78b6166a0d2fc420a6a0b6a2850c42c2519204181748e58944a82e8f512e6044469e747c4689468445643683b9faf1414ea0e4353d0cf7959b25983141d4b324717ee205b1aea0c3e20b8178088b2fdc554fcf3e1d4676403a88855df0b6788205b2cc9c50d32c350810d9c237531da0f4228c55dc1958bd7c1f88fd1886b9c348354992c8b38851d262c3f9a296d9516b10e10f69d03146a2dcd51df89b2a2b6e03803a96bc331c45b785236db1696144230c3398d7582224bf1e0f51ca11afb88e0f177f1dea0bd4ab6b96e0d411a96acd2defc6b1822abdc56e20f4e622eaa59a819c24b9b60c6528f52c6b114ef9a97e62df8c6419a0201aa844fc45772d830dc4a8a25059f03328cc2f946e5b685039538d2346a0dd43de60c079202d86dc286e3e936a6c7504c44c1400cccaaa234ce8cbf2569486d4a3aa9680c334d7aff007339e92ed86a35ca2be20a658b7e5a5b7f8817e8c4d7f765199617017044fb30653679c81ef2854da006e50658b74dd413467d476595b5db129f38ce227b88f53d90547b8e38dff31ae22187fe1ff59b79c6e2a2e7e32fea21a712942e2705d7d0984a4446a5aeb879958b8efe829514dc026ee0b2d5c300c73f407a63aa8f920d4b8d3f4782a28f003862964afa1253dc0fb883b88abbfa240d4205cadd65a9fa31c4c2622b7fba1fffc4002b1001000201030206020301010101000000010011213141516171108191a1b1c150d120e1f0f1609030ffda0008010000013f10ff00e6481680eb3db3827f84fb8bd27d062c0e17849d052e9dbff02e35449412d02384f5d3de268fd90fd0a8ee1382f89711b375fdd12b4fa8c5fd021aa1794b194a729315bd64c98bd582d570e95980f4f820f99f9eba085867b4198a6c4f33d8d0f797346da07634204ce594303a013207551946beba4d2979782bac6c6413ace91d883abdc5dbda592faa42fa7d0d405c2acc2dea1ef01a0dd909d1fcd6f65835e872f488ada345f636f945f7fb5daf9ef3a83cc0550af04cf2a71bc7f2393aff00f82712e2d723a31620cab2be70e8e212d572bbf73fedd6613fac9ebfb841419777803765b1c68a792dd5f4fcb2fa90c8f52d8f797dcf6687c087696e5976816ae0099c68e1ac0290e92bc2bf8e25c610ed199b44d84edf5081ae38681d9e5d9fb81640296e9abf4b07f72e742708367dfac65cc075ea73c3f94ac221ce07fced1dc13655abcbcbe00866f707765a9c9afe9d3f854a951b3aceda8b7fc98c28bc0a5e5af75b902357905e868f6a8e4a69187d5870f01d75af4993475f44e8f88201111c89f8c111b6c734d68fe25a8312966eafa3da2b1613a93bbe1b2f786a85eae7f9578b9d63c65d4bf0b97e0c4165697a3862003cc1d4f0ae41d9e87f7f315606ee1c8e9c7e2ea1a34dd6c1d596aa0d8e2c0074dff82aa72fe56e0ec1a7585598bcc4cd3b11c6ad67a469ea2c7439984a028fe68047460589f33df580052e96e5d9f041889fc1cf86537ca5ab5a85bc8dbe8ca0a369dbf4f0de11a4d4e1f7345ad96bb6f7d9fc4a24005abb4478a87b93dfe3bc239ac80c0bc7a330945adab9393c31243e6b7f22df289636cca0a75c13ac9ed2b235198c13340c665a6ba7f1d7c18f4c9a8c3964f56cf632e4f26ab526bac15161409c9696eb075e4087daa7a56d3ee32e686df37a3010335be8f3251b73295cece2c3750e9710cc0bdc08fec252727697bda61b0eafc905bada2c4fc43646899ad3fa63ce58d8077dbfbc588341958ed154af1b7ba5d1da28db3b9bc336d43ff8d8f79637ab996e3be2180252bb98203b8a8e454a638c9a90400d1f1b85733d2d1ea388d9ed0e35b737f000a2c758f1397a433b9a9c312c889ac3a2304e123fc51a9c3b9ebe2804411d999d09a32efca08231499b5dcfb194a511a0d5716a025e43b48c72c55057b7c3d48c5d94e74bdbf0efab027735fa9afeb75c9b933e7814dcef08b5a0d1258aad14b3bf81ef2a2a097460f609476a015d15065e46ec5156dc23aabbaa7858542e98cf135b875388b16126f6fc44b8206020146e34ac3b9f88a1ae20016b525ca70bf106cb2057e446a96ea0b56b09a27eff00816240ab36eb0700182726180d77f25e4da85c3d0748180021e9f71ec4a3e861fbfc3de761a4ff001a84336418bd5aea682585a77352105702c40bcc715cb9f5950b58e2500380a2549c0cb1389eb030a585504301ad847ce0d83ccebba3ca74edd26256d43cb68f811c457a456ce92a226451e4fee63f0d439eb2a0ee3ca25c5b58f57d78289d1744181c06e6f10c255be387aceb9a87c502c0e8ebe3a2b263526827713ebf0c6ea82d6646d6ac3664392c25ba65aa787fb9ae13305850d11a628418633a0af5743ce1856ab996b354180e951086e12a59d605955c8d0317282129307d63b46a6cfeee61e75d69da11b17b41324dafa4cb39129ae21adab6e6b2e59ca32bd3709a5398888f6153098a7b4455a1a413ac456cc4c705e133cce444129c8e125b56ac9092a24557d1b28eeeb2b033d866319f12f6d69dc6abe1f0a58b90bce22550201c98d58e720fbbfbfc32b95607fc731fbdaeb950f6e612a0528c09fee6c58344731580a53501a53b3df1135952c3d18415c9028964d20efb04d11c7d0785e1964fcc11e5b5c47a7ea515620ed2edda315b93075c748a28be50452653621db30d027bcb5a5755d8cbe23d9c3b901c51ef03adb1c42c383e62179ede208ef057b84aac4d21c2c7ac7bc4448e49fb4b624f619bc13654c410da7168bcde63ec8bc2b41bd627a9fa3f0c9a8d7d93ea5641be003a9165d768d7a1e9c3299c401f2e26470ca8c67e6b75fec80d7201e48e92d1dcfcbf8060f20d2324076479ef0861718ab180dd900dfec439b2755f538857620171473db664d8f4cf9c48934c57b4ab4bc26fd7923285d23fed26a72470a84128c2f9e90ce93a9c7498e220d352bc1fc8d02d5ed2eb06516b4c71a139cba477bac1643400ec4b8365f6626cf41f3febf0cbb2f6b5d7dcc3738bff0074654c34a5ab5355bab612ee1b33967d251c8f78b5d947b0b3e21f603ee055baaa8b6d80f5610f00fe09ea815a8c1775aa5587079c00000280d8f07c0901314a84c8fb2f68baaea87fa7bc56486a4da0b8f1453a8e91aaf5bd4e66e7a388a596aec1caed34d8b5469d381fc033453037c4304c20f193e7e7f0daae66f17bc0a339de86cff75964ea0453ac514176976c3bc1217e67cbe2e35c6a474356ad3b4abdd8daa8b79e6a3a4b96aaa0e94f98800444b137878b18c58f8318c001bad429556a85d6c40401452261883aac8e8ef536ce4c1ac9506dd26796ad8f48dbce0ede3ad7b9dff96e611e69f63dff000ca02ad06acd038a42826d662cd98241114ba1e8b9eb33b5e4d6640a474a80e2007423a8ee4a8eeb5cbd3f5e50c504d8c026ea8145b9669e3c80e60056a9b7fcdd3e22c47ad6ab84d9f17f8bfc01969a79cb4106d57d8fdc3543847bb5f781f231869e7bf11c0d9a16bce54c1f5c1e71907d0651abfee2752485bf41fb8d141d64edc7f2a42bb5084e6b581a128ab60d2405bd00fc3f86406042d443f3a449646a760dfce29114c5f6404431a060e8ea400030360955e0d9f0a26bbdf625ced503189747aedd12a65ea42174326a5c09be818fbf23c0110016ab404336b0595c4e53459fec12f380a7d1fb99641bded930abe7fb85e6e7697f0b5560e5814e0ca6bbcbe222cd0d932d84b18be134000d51c32994bba7a6b35d9d1a3ef3a0f5f0c3118af5bfea6bbccc0e4f1a4ad769696475575f0dc378bb27f5334de4bb87e1476bb8ad4e13a8e66a7a20c0d8fd9043ee4c6a9436c7de07a82e21894a710691ad250b98006334c186035a6a2ab5788366b0b440d0b045b5b1e225aa065c36a6699eab4d3fb9662395453771c618687308d9594edf780d7d4943436e684d764e202c22d3b48704ab65ca14b594c9e17707a3b3fb450ad25b5e26ca9881c2c6be7312748151bc6c9c2414bb9515f9ea79ca6d5528be5ad89d607f944a50fe02f5eefa18188d2c9c31aff17e50f360af3aa39eaf89ee57ee2deca7b4a7d7e19e5cace32f231e9df4464eab7ed1a19a142a7ea1d43b00d9c9bc4020bd329fd4b967851651e6863ea194a59450343bdfc220bae1c87a450fd74147a9cf94bad5b290d6cddd15ab39c388474e8ebd7b783b2caf3c3e5cc04f381c5b7e885538605d9301de55508a174de7762c7750aa46280b9dc2af32b0844b560b8e90a40ca0d5af71f4984f68055d37158ed102d888c4bb036a57b52768979ba2c4bdfee11bc157275ff083c2d405078a726a95d20b6d6a8e80c63753ddf871d1b446aaebf52d381c9d15906131c916aa75a66110beac76821b709d98ec35221062b1eb2a074a5350595d93dc99ff008e01061d21aac2bab3b4aad8aa6fab398a5d74aa50d20e9fa8142258a07835dfe25cc751590ac0622f46e0aa045e2729fabe92b9d2ba66c2a1edcb02840cc06e970ee11850ad36db66a7909f85e8e8af68ab7269c6e2bc541201d12943f7af9c101619d12a000db84599d1660b8280cbad37b57ab1617388b4b6c7d88cd0174240ac5e55cca81d5a98055c1fb98728d0c1d037e99cb363bd5bf885b0274dcfc9d21a2f2aa945f536630014cad7f731f6c16ec0eaed2d90c7432fa1ca4300fcad0bc8838c226ed7cb6c4d2e79199cd1aadeb4840e96577d9684589a1650f4722a5986b58618015801bf9958801418a3a1fc15a84a14c9075d4ad42bcb8e9a1a45a158c2da57943ade4870eadd99e8dca3c8c14d71c11c3ecd90e5e6a02000d8f0a366971ce3a9093bb1881e1793ac4a0025470b55c0116c4140705771d5e2e1808c0650fb26008eaacf9d4b21bb9622c5f0201abd1a10b212336ea576ff0090851b0fbae7e580030051f894d55e8aefb31c5c2ec0196d63d21e2a4bb17b46ad90934e13784ae568ac35ebd222d2ee176e6300ab1de10782d7910f288540c6abd5f165463e0c1e0c1701367341abe546b1013176daec73eb28e19b9aeeb778183de2da8b66e4d7a91b21ec5ceb08f047c026c9f263640175137e59de23334e68d8dfab048baafab07cfb7e2ea9701edabec329b032d6f91ed5e02d7d13056079b700c534bd07477827219a185325d6c88af0a95d4f053123e0c6335b3e532298e571eb2cb2cff461eaceb36aefe8f5987d42ac676c9f365a2ff54a2fa0fbb940600a1540742634895a37e0d8574379679f221afae84a61a58650d0c4551a8ea70791f3f8b7d5146ebbfa2d1d222d72a5668251079978720e473518d553690281e9a75f38ea01b068d449751d221cecf482a93ad968306fcb3ec85171e012db14852b60078f588d07a2a8fc4fa9dbe59fe8c3b91b955e5497d6a7303c7d0b6e5b0d775f886d9e81f997843d11ec7dcaa30d563fb8b86e65cf7b7c4af69746fb34f694741d0ebed16e6fd63db715cbe16e238df4d7a778e0b79ddd227c8379fe9a7fd9758e5fb90ec6afe2f51faf60b8f5673175e4e2bea558b304816837ccbf44225e58de134f49428d4061bbb35b58d008e9009d3c524b6c3d101ef032a0e69d12c940daff0089496a769e4cba433550fb95ba20d73f69eea8e1885d66513744828a2b1f707004c09e470f49a49b7a2fab2835070608f00e78800c9694368ccc4d407763c4dd85c0a8ea6a8a960b74aec1b4c33302cf77db1c75601ca7c1f11965dba7a0ea43086a07e2c0257506f8cc312e03b4b6f109015c163479219019e4fbcd147c17d18b0fe88041948679df1d674c1546ff001333d76aee043362ad50d1e1741f3838a31dddb465de6e150db0d455822976f9f12956db7a8d0f54d5ab1b0a0d039b7b10b07ad93fb18654ac6a3fa25ccd56372c29b42f87d935045bb194349c05b2cd03adbe2014b9e64e01e51f626b7a59823f79ccbc41d2c134ac8b1ff3133480d0e7a10d21b01c1e1763a6aef2f886c64f078eb04e68c37eaf2fe31105852724700d4a0e99fbfe15d08e23f47ea0753087a1db674c6f2b446e56e8d6fd187803d1802356e0ad5d022d4bce06ebfe8888b165143d8d7d6618d062ea3aaa5144c78190791b74879add2d83b1042120d600d821885fae83faef2990aa6df6f3c579c17960bcbe06b0688d940282707a305e8016dfd412e4ce5f9a1e13885bedc1feb94eb40bdb756ef6ef000000600dbf2661d281624c0360ec05629db314c0c567b7936957566b631a8bc1bfa4cb545a71fe451b4ba4574532ccedee4d0e5253dad7203cd9584e20de1ea40004737500b43c5444413857eea68867b6f5f1a95e57560d42d2f2ed71176801557e7afa42e97ca397e5b79ca9d42933de7f2c719383502ed7a6d1440d1750d9cba8436296fea4ab2d2ac6eb02f65d39af1dfc2e00accfbaefe6f9a8a490ba4774bb6b8f1a18b31e94f7886b00a6aec4e63ad7ae33310f0297ab0205772d1bb26b46bda37a90407a237348a71f7cd7f24a0ef02e55e00d63c2a734b4734ebe088005aae08acab081f784ad2dea75f779d10d51a379bd82e947042c2400d5b21d46bde5e2da0aaa25355f49c7e406374d884c75e73e4970dd36a3d078750efe0a85045772fe6bd65a8db0747c716816770fb66d38435ad7414cb2c17375b435d2e00b2380f64021d55da68c51cadeb0cc0f08bda24f0ab8f92fe629ee066f0b4ff75fc8a1ab0034b6d022b6255596b9d8ce7a43eb5e0a66dd23201c5aa370eb2a38aca81ca357a1fdc201172f61f6ce939c92a2a3be56ec0684075534f5634c0cd7ce26ddf1e2e1f6fccb0f1b6fb06c1a45a4f0455da9be90a9f698e18c367a74de3237077cbea2703a2333b94cb09a5dcc738a343afdcf48c6eaeb8bf67d2671d556f9cae957eb0418009cbf52d51dd43d9b9894bb5af73f534e10263b2567a24d1c38b67e45068493ae9ee579c4303c881a5eb8821eea7655f375adc6949216f2d1398291700cfedeb1de17a07945516b639f5804389da357bafc12874b755d507d43112450681ed6cc1f32d5459005a638d18ecf0fe25a06409e497855290cd4c05a5f55368140ef1b639d39a082fda27bebb12c88a746af2e2688924dce4f7f74c2149870efef72daaf8f42f5f27d996d01c23aae1eb17a6ead89490b72f57808c02c95b502fcebf23abc802c65388fc51516f62984a4d832d5b07ab586c4682059cab996656d9ac4e9fad4838164188dd58844e51717563bc19502cd195bf465ac482ce98d3cdca82c6f51ff00a30cf999baea3d2acfbb2c7cd23b5abde43c01968299d683dd0004ab529b92f4d980de9ab7d348748cfa05674c6fc10a93761e4a12005225892d3973ade86e74814d0f12079b32d736791ea75ed02b060fc903873a8f23b310e5e22ba95ccd47100cbb07ac260680c59ba6d59fa821788c56cb73dfe250e20663453ab7db89abf75a640b472582ef736d19c35543e10c62ad3bd67de5ed2629b7697ebec35c7b4ad2f194f4b946202f227736f035259dff006a016ca9528ad803ea9506f2b55e884641d89eb7f997e5400d3101146059c0f1c900eb40e4ced7edd3ce3452b375c06fa01ef2834a5664d056fb0b0354a2f417e982d7acd6006bb147e560696843a21ad2f78014198347c053b0835589629802ec6fc894f19116e9d7794eb5f5aa7efc29d2d166612f4935c59bc7538fcd9a8b55f4b03d0efe5090404ca14af6ccb395c70114e9b1e50e584d5e6fb59aa1e2b2b12355c88547c80971fb9be834a7fa9a868c5e16fbb88449047608002767d97d6a6360076025d4e3603dbc101c298deaaafdbc353cbd543908f92de1f5227858a5b3a9f7e7f9ab083346eb39c6565019e9da71fb46136113a1817eaaf48d446bb9134e7f72f11e40d8902b6e2b972ce88ed11c70b2991240092b7257b4a062b4ee33fa956eeba73ccaa5bb4aa389521aef794e3aa198181a01a11335046062de9060f98433383c46bed8ea25e9c987e4fce15532274570f7b3ca660141a29aa3df1511b41c891ec7cc5a92b4c4f6da07beb09f703d1bd27cd40d2d4536e6f6840774bd33ff0021adc4d210881a6be530d6d703021906e15b0e1961c1d0fb849f900bdbf7e51c34a7f2b8f8b9b444f71eff009cac0552ae70baf6834b8ad808687ae7c897e4726a31bb39df13462638ce7da31ed0c3840402949adad87fdd1d9c53eb2e45a54f461e4a64b51dd726e79c4079553358814e81dcde90b04f40cfa3626ba409e91242abc8334f22bd65e3282eee96f83d7f39fed32103a122c0b61402c39e9881491565afcd22418da7c685815ba06af4852e6ffb011c276d114d3722d40b6cc8bf50b49ab0fa24b71cc0f577adfac4b49938b7cf4958ee2d72fdb29adc2d5bb45cad774d34d3af31b0343eeebfaf2fce2d4cac7c92fdae1a5bab82ed36ebfeeb3fe44e83d218d31e0d16f510f795b4e8ea2ec869aeb3040514d04b0f93ca503234a50eec12a31fe3ccb8a472379d57bcb39070e8ce15d3097742a6983c7edf9df6e6892a195480ea309e66a3b6bfcd7b5ea163086099a647dc440bd348772a59c370f9dd4bce04d15930fc7e7c8c2041a1fbd55c01bb2a149a84f325ed1c1e3f4bd25dbb701636b8cfa8ac3a9c90c6d4c714d7bdde27bf8e27c1e7a8a7ea5af261302878f361f10e4154366d8fcfbc28adb42d8fa4b12b3783465cece228b15b589e728ac0142b6f9c2ecb09596e5342db9505a698052ce4540806b554f61fdca4d6430d1bf796a7520af665a01deb4ba4f862445bbced1f2f041ad0ef4dc1428ea1d8d1ec1f9f5c1c70642669ebc31b365cd05ad3785b75c37af48a809c03f59616952eb868619ea12d8d7425043d11af4a30480a960a4f38364eea3f5148c12cd8768002e6169e51d6c845ae11da051460ff00c0261b8434a7e2bb3ca0bf001a23a441d41ee43c8814562c7e8442baf390a3e6fc10e56e1b6d79ebeb055855aba5eb049c19725eeef3fe2a00702be0eabff0359c39bb3a796ccce0888ac994f1c4a93b802fa11d006b196686f833de5ae528f59fb7863c4375e4b449528a762f67b334476c973bf14fa23ea01f6ffc0d46153e82fd2a2ae69eb7085a184a2db0cef8a8eeb4a169672ae904b116adbf3c780b6879b47e8f884c89d1dd764811067982a6233c143373a5857fe0583991f618d26a3fe63466be7cff00262d6d58ddac648cc6669815dd4274dd08ebb2aed016505d0c5c5b58f48e28ea096ecb532f58856d744f98845f6f14dac63b695c800f681e1b82a3506b8e5aff00c086035a34078c515f902e154d6b9f08bfd17dc44d1d525ad13a4ff8c9a65600affe0cb4300b56a7fd0f87406a31786b1ee19094079cda189f2468e710bb6340c5f13dd7c9ff0081b42a15984a816e6d67a223e06c85646ba4ff00a6f0ff002f54bb144f26afc7bc62b6976dfdae0bcb9986af12a4b3a280c0a265e4ae5ff81081031b3a0c4d9762942b4c75846cd718188f525a57c1faf0cc61538154f665d2dc9e63ed52a6688f43e2e7f9dcc2b78c0b98b54a800e13ff008317c551a23046c2d900b470130817a0a454643920905d06074e2b4da209944401a56b0c6c85dc808bad86e0a7f441b0c3861ca847960d85dd85cd22e4327fe1070b080853037a463861b8c659105976a3d252ea589a760ffa95a59d692096b556e843b71a05580d76c7a45299653ad109b956d62726b2c640519d1ffe637fffd9, 'instructor', '$2y$10$NAi.zNhpKh0v/wYUP38GWusUqUwe90Wm5oRQnhAeLtFMC8/rfXpMW', '2019-05-12 11:54:15'),
(4, 1, NULL, '201910659', '$2y$10$G/SzIVkCOJprrgxXC81nhe64dfODd9AFjnmOKmiUMTCikahjnW1oS', '2019-09-01 16:53:54'),
(6, 1, NULL, '201910658', '$2y$10$nF3Gk2KJMruZjoKls6h6s.VJZVudSKa8X5Hwk3IAabL/X.DRO16s.', '2019-09-21 20:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `lvl_ID` tinyint(4) UNSIGNED NOT NULL,
  `lvl_Name` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`lvl_ID`, `lvl_Name`) VALUES
(1, 'Student'),
(2, 'Instructor'),
(3, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_ID`);

--
-- Indexes for table `record_admin_details`
--
ALTER TABLE `record_admin_details`
  ADD PRIMARY KEY (`rad_ID`),
  ADD UNIQUE KEY `rtd_EmpID` (`rad_EmpID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `suffix_ID` (`suffix_ID`),
  ADD KEY `sex_ID` (`sex_ID`),
  ADD KEY `marital_ID` (`marital_ID`);

--
-- Indexes for table `record_instructor_details`
--
ALTER TABLE `record_instructor_details`
  ADD PRIMARY KEY (`rid_ID`),
  ADD UNIQUE KEY `rtd_EmpID` (`rid_EmpID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `suffix_ID` (`suffix_ID`),
  ADD KEY `sex_ID` (`sex_ID`),
  ADD KEY `marital_ID` (`marital_ID`);

--
-- Indexes for table `record_student_details`
--
ALTER TABLE `record_student_details`
  ADD PRIMARY KEY (`rsd_ID`),
  ADD UNIQUE KEY `rsd_LRN` (`rsd_StudNum`),
  ADD KEY `suffix_ID` (`suffix_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `sex_ID` (`sex_ID`),
  ADD KEY `marital_ID` (`marital_ID`);

--
-- Indexes for table `ref_marital`
--
ALTER TABLE `ref_marital`
  ADD PRIMARY KEY (`marital_ID`);

--
-- Indexes for table `ref_section`
--
ALTER TABLE `ref_section`
  ADD PRIMARY KEY (`section_ID`);

--
-- Indexes for table `ref_semester`
--
ALTER TABLE `ref_semester`
  ADD PRIMARY KEY (`sem_ID`);

--
-- Indexes for table `ref_sex`
--
ALTER TABLE `ref_sex`
  ADD PRIMARY KEY (`sex_ID`);

--
-- Indexes for table `ref_status`
--
ALTER TABLE `ref_status`
  ADD PRIMARY KEY (`status_ID`);

--
-- Indexes for table `ref_subject`
--
ALTER TABLE `ref_subject`
  ADD PRIMARY KEY (`subject_ID`);

--
-- Indexes for table `ref_suffixname`
--
ALTER TABLE `ref_suffixname`
  ADD PRIMARY KEY (`suffix_ID`);

--
-- Indexes for table `ref_test_type`
--
ALTER TABLE `ref_test_type`
  ADD PRIMARY KEY (`tstt_ID`);

--
-- Indexes for table `ref_year_level`
--
ALTER TABLE `ref_year_level`
  ADD PRIMARY KEY (`yl_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_ID`),
  ADD KEY `section_ID_ribfk` (`section_ID`),
  ADD KEY `sem_ID_ribfk` (`sem_ID`),
  ADD KEY `status_ID_ribfk` (`status_ID`) USING BTREE,
  ADD KEY `rid_ID_ribfk` (`rid_ID`) USING BTREE;

--
-- Indexes for table `room_assignment`
--
ALTER TABLE `room_assignment`
  ADD PRIMARY KEY (`assignment_ID`),
  ADD KEY `sy_ID` (`room_ID`);

--
-- Indexes for table `room_attachment`
--
ALTER TABLE `room_attachment`
  ADD PRIMARY KEY (`attachment_ID`);

--
-- Indexes for table `room_module`
--
ALTER TABLE `room_module`
  ADD PRIMARY KEY (`mod_ID`);

--
-- Indexes for table `room_module_subtopic`
--
ALTER TABLE `room_module_subtopic`
  ADD PRIMARY KEY (`submtop_ID`);

--
-- Indexes for table `room_module_topic`
--
ALTER TABLE `room_module_topic`
  ADD PRIMARY KEY (`mtopic_ID`);

--
-- Indexes for table `room_post`
--
ALTER TABLE `room_post`
  ADD PRIMARY KEY (`post_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `room_student`
--
ALTER TABLE `room_student`
  ADD PRIMARY KEY (`res_ID`),
  ADD KEY `room_ID` (`room_ID`),
  ADD KEY `rsd_ID` (`rsd_ID`);

--
-- Indexes for table `room_test`
--
ALTER TABLE `room_test`
  ADD PRIMARY KEY (`test_ID`),
  ADD KEY `status_ID` (`status_ID`),
  ADD KEY `tstt_ID` (`tstt_ID`);

--
-- Indexes for table `room_test_attemp`
--
ALTER TABLE `room_test_attemp`
  ADD PRIMARY KEY (`rta_ID`),
  ADD KEY `test_ID` (`test_ID`);

--
-- Indexes for table `room_test_score`
--
ALTER TABLE `room_test_score`
  ADD PRIMARY KEY (`score_ID`),
  ADD KEY `test_ID` (`test_ID`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `user_login_key` (`user_Name`),
  ADD KEY `lvl_ID` (`lvl_ID`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`lvl_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `record_admin_details`
--
ALTER TABLE `record_admin_details`
  MODIFY `rad_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `record_instructor_details`
--
ALTER TABLE `record_instructor_details`
  MODIFY `rid_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `record_student_details`
--
ALTER TABLE `record_student_details`
  MODIFY `rsd_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ref_marital`
--
ALTER TABLE `ref_marital`
  MODIFY `marital_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ref_section`
--
ALTER TABLE `ref_section`
  MODIFY `section_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ref_semester`
--
ALTER TABLE `ref_semester`
  MODIFY `sem_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ref_status`
--
ALTER TABLE `ref_status`
  MODIFY `status_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ref_subject`
--
ALTER TABLE `ref_subject`
  MODIFY `subject_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ref_suffixname`
--
ALTER TABLE `ref_suffixname`
  MODIFY `suffix_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `ref_test_type`
--
ALTER TABLE `ref_test_type`
  MODIFY `tstt_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ref_year_level`
--
ALTER TABLE `ref_year_level`
  MODIFY `yl_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `room_assignment`
--
ALTER TABLE `room_assignment`
  MODIFY `assignment_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_attachment`
--
ALTER TABLE `room_attachment`
  MODIFY `attachment_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_module`
--
ALTER TABLE `room_module`
  MODIFY `mod_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `room_module_subtopic`
--
ALTER TABLE `room_module_subtopic`
  MODIFY `submtop_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `room_module_topic`
--
ALTER TABLE `room_module_topic`
  MODIFY `mtopic_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `room_post`
--
ALTER TABLE `room_post`
  MODIFY `post_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `room_student`
--
ALTER TABLE `room_student`
  MODIFY `res_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'room enrolled student ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `room_test`
--
ALTER TABLE `room_test`
  MODIFY `test_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `room_test_attemp`
--
ALTER TABLE `room_test_attemp`
  MODIFY `rta_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_test_score`
--
ALTER TABLE `room_test_score`
  MODIFY `score_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `lvl_ID` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `record_admin_details`
--
ALTER TABLE `record_admin_details`
  ADD CONSTRAINT `record_admin_details_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user_account` (`user_ID`),
  ADD CONSTRAINT `record_admin_details_ibfk_2` FOREIGN KEY (`suffix_ID`) REFERENCES `ref_suffixname` (`suffix_ID`),
  ADD CONSTRAINT `record_admin_details_ibfk_3` FOREIGN KEY (`sex_ID`) REFERENCES `ref_sex` (`sex_ID`),
  ADD CONSTRAINT `record_admin_details_ibfk_4` FOREIGN KEY (`marital_ID`) REFERENCES `ref_marital` (`marital_ID`);

--
-- Constraints for table `record_instructor_details`
--
ALTER TABLE `record_instructor_details`
  ADD CONSTRAINT `record_instructor_details_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user_account` (`user_ID`),
  ADD CONSTRAINT `record_instructor_details_ibfk_2` FOREIGN KEY (`suffix_ID`) REFERENCES `ref_suffixname` (`suffix_ID`),
  ADD CONSTRAINT `record_instructor_details_ibfk_3` FOREIGN KEY (`sex_ID`) REFERENCES `ref_sex` (`sex_ID`),
  ADD CONSTRAINT `record_instructor_details_ibfk_4` FOREIGN KEY (`marital_ID`) REFERENCES `ref_marital` (`marital_ID`);

--
-- Constraints for table `record_student_details`
--
ALTER TABLE `record_student_details`
  ADD CONSTRAINT `record_student_details_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user_account` (`user_ID`),
  ADD CONSTRAINT `record_student_details_ibfk_2` FOREIGN KEY (`suffix_ID`) REFERENCES `ref_suffixname` (`suffix_ID`),
  ADD CONSTRAINT `record_student_details_ibfk_3` FOREIGN KEY (`user_ID`) REFERENCES `user_account` (`user_ID`),
  ADD CONSTRAINT `record_student_details_ibfk_4` FOREIGN KEY (`sex_ID`) REFERENCES `ref_sex` (`sex_ID`),
  ADD CONSTRAINT `record_student_details_ibfk_5` FOREIGN KEY (`marital_ID`) REFERENCES `ref_marital` (`marital_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `rid_ID__ribfk` FOREIGN KEY (`rid_ID`) REFERENCES `record_instructor_details` (`rid_ID`),
  ADD CONSTRAINT `section_ID_ribfk` FOREIGN KEY (`section_ID`) REFERENCES `ref_section` (`section_ID`),
  ADD CONSTRAINT `sem_ID_ribfk` FOREIGN KEY (`sem_ID`) REFERENCES `ref_semester` (`sem_ID`),
  ADD CONSTRAINT `status_ID_ribfk` FOREIGN KEY (`status_ID`) REFERENCES `ref_status` (`status_ID`);

--
-- Constraints for table `room_post`
--
ALTER TABLE `room_post`
  ADD CONSTRAINT `user_ID_ribfk` FOREIGN KEY (`user_ID`) REFERENCES `user_account` (`user_ID`);

--
-- Constraints for table `room_student`
--
ALTER TABLE `room_student`
  ADD CONSTRAINT `room_student_ibfk_1` FOREIGN KEY (`rsd_ID`) REFERENCES `record_student_details` (`rsd_ID`);

--
-- Constraints for table `room_test`
--
ALTER TABLE `room_test`
  ADD CONSTRAINT `room_test_ibfk_3` FOREIGN KEY (`tstt_ID`) REFERENCES `ref_test_type` (`tstt_ID`);

--
-- Constraints for table `room_test_attemp`
--
ALTER TABLE `room_test_attemp`
  ADD CONSTRAINT `room_test_attemp_ibfk_2` FOREIGN KEY (`test_ID`) REFERENCES `room_test` (`test_ID`);

--
-- Constraints for table `room_test_score`
--
ALTER TABLE `room_test_score`
  ADD CONSTRAINT `room_test_score_ibfk_1` FOREIGN KEY (`test_ID`) REFERENCES `room_test` (`test_ID`);

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`lvl_ID`) REFERENCES `user_level` (`lvl_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
