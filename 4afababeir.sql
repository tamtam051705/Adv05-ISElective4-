-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 23, 2026 at 03:50 PM
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
-- Database: `4afababeir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `ID` int(11) NOT NULL,
  `COURSE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`ID`, `COURSE`, `DESCRIPTION`) VALUES
(1, ' BSIS', 'Bachelor of Science in Information Systems'),
(2, ' BSCPE', 'Bachelor of Science in Computer Engineering'),
(3, 'BSA', 'Bachelor of Science in Accountancy\r\n'),
(4, 'BSC', 'Bachelor of Science in Criminology'),
(5, 'BSP', 'Bachelor of Science in Psychology'),
(6, 'BSTM', 'Bachelor of Science in Tourism Management\r\n'),
(7, 'BTVTED', 'Bachelor of Technical-Vocational Teacher Education'),
(8, 'BSE', 'Bachelor of Science in Entrepreneurship');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instructors`
--

CREATE TABLE `tbl_instructors` (
  `ID` int(11) NOT NULL,
  `SALUTATION` varchar(20) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `MIDDLENAME` varchar(100) DEFAULT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `PHOTO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_instructors`
--

INSERT INTO `tbl_instructors` (`ID`, `SALUTATION`, `FIRSTNAME`, `MIDDLENAME`, `LASTNAME`, `PHOTO`) VALUES
(1, 'Mr.', 'Alvin', '', 'Certeza', 'instructor_6ac7650340d6c1.51114811.jpg'),
(2, 'Mr.', 'Frank', '', 'Valleras', 'instructor_6ac765353bde69.24738867.jpg'),
(3, 'Mr.', 'Dennis', '', 'Gonzales', 'instructor_6ac76a08a475b4.66163574.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schoolyear`
--

CREATE TABLE `tbl_schoolyear` (
  `ID` int(11) NOT NULL,
  `SCHOOLYEAR` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_schoolyear`
--

INSERT INTO `tbl_schoolyear` (`ID`, `SCHOOLYEAR`, `DESCRIPTION`) VALUES
(1, '2024-2025', 'AY 2024-2025'),
(2, ' 2025-2026', 'AY 2025-2026'),
(3, '2026-2027', 'AY 2026-2027'),
(8, '2027-2028', 'AY 2027-2028');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_section`
--

CREATE TABLE `tbl_section` (
  `ID` int(11) NOT NULL,
  `SECTION` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_section`
--

INSERT INTO `tbl_section` (`ID`, `SECTION`, `DESCRIPTION`) VALUES
(1, 'A', 'SECTION A'),
(2, 'B', 'SECTION B'),
(3, 'C', 'SECTION C'),
(4, 'D', 'SECTION D'),
(5, 'E', 'SECTION E'),
(6, 'F', 'SECTION F'),
(7, 'G', 'SECTION G');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `ID` int(11) NOT NULL,
  `COURSE` varchar(255) NOT NULL,
  `YEARLEVEL` varchar(50) NOT NULL,
  `TERM` varchar(50) NOT NULL,
  `CODE` varchar(11) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `LECTURE` varchar(255) NOT NULL,
  `LABORATORY` varchar(255) NOT NULL,
  `CREDIT` int(11) NOT NULL,
  `GRADE` varchar(11) NOT NULL,
  `PRE_REQUISITE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`ID`, `COURSE`, `YEARLEVEL`, `TERM`, `CODE`, `TITLE`, `LECTURE`, `LABORATORY`, `CREDIT`, `GRADE`, `PRE_REQUISITE`) VALUES
(1, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'CC101', 'INTRODUCTION TO COMPUTING', '3', '0', 3, '0', 'NONE'),
(2, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'CC102', 'COMPUTER PROGRAMMING', '3', '0', 3, '0', 'NONE'),
(3, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'GE1', 'UNDERSTRANDING THE SELF', '3', '0', 3, '0', 'NONE'),
(4, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'GE2', 'Mathematics in the Modern World', '3', '0', 3, '0', 'NONE'),
(5, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'MATH 1', 'Calculus', '3', '0', 3, '0', 'NONE'),
(6, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'PE 1', 'Physical Fitness & Gymnastics', '2', '0', 2, '0', 'NONE'),
(7, 'Bachelor of Science in Information Systems', '1ST', '1ST SEMESTER', 'NSTP113', 'National Service Training Program', '3', '0', 3, '0', 'NONE'),
(8, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', '1S101', 'Fund. of Information Systems', '3', '0', 3, '0', 'NONE'),
(9, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'CC103', 'Computer Programming 2', '2', '1', 3, '0', 'NONE'),
(10, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'IDBM', 'Intro. Database Management', '2', '1', 3, '0', 'NONE'),
(11, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'GE3', 'Reading in the Philippine History', '3', '2', 3, '0', 'NONE'),
(12, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'GE4', 'Purposive Communication', '3', '0', 3, '0', 'NONE'),
(13, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'PE 2', 'Rhythmic Activities', '2', '0', 2, '0', 'PE1'),
(14, 'Bachelor of Science in Information Systems', '1ST', '2ND SEMESTER', 'NSTP123', 'National Service Training Program', '3', '0', 3, '0', 'NSTP1'),
(15, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'CC104', 'Data Structures and Algorithms', '2', '1', 3, '0', 'CC103'),
(16, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'DM101', 'Org. and Mgmt. Concepts', '3', '0', 3, '0', 'NONE'),
(17, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'DM102', 'Financial Management', '3', '0', 3, '0', 'NONE'),
(18, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'GE5', 'The Contemporary World ', '3', '0', 3, '0', 'NONE'),
(19, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'GE6', 'Art Appreciation', '3', '0', 3, '0', 'NONE'),
(20, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'GEELEC1', 'Living in the IT Era', '3', '0', 3, '0', 'NONE'),
(21, 'Bachelor of Science in Information Systems', '2ND', '1ST SEMESTER', 'PE 3', 'Individual / Dual Sports / Games', '2', '0', 2, '0', 'PE2'),
(22, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', 'CC101', 'Information Management 1', '3', '0', 3, '0', 'DM101'),
(23, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', '1S103', 'IT Infrastructure and Network Tech.', '2', '1', 3, '0', 'NONE'),
(24, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', '1S105', 'Enterprise Architecture', '3', '0', 3, '0', 'NONE'),
(25, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', 'MATH2', 'Discrete Mathematics', '3', '2', 3, '0', 'MATH1'),
(26, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', 'GE 7', 'Science and Technology', '3', '0', 3, '0', 'CC101'),
(27, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', 'GEELEC 2', 'Environmental Science', '3', '0', 3, '0', 'NONE'),
(28, 'Bachelor of Science in Information Systems', '2ND', '2ND SEMESTER', 'PE4', 'Team Sports / Games', '2', '0', 2, '0', 'NONE'),
(29, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'DM103', 'Business Process Management', '3', '0', 3, '0', 'DM2'),
(30, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'IS104', 'System Analysis and Design', '3', '0', 3, '0', 'IM1'),
(31, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'QUAMET', 'Quantitative Methods', '3', '0', 3, '0', 'MATH2'),
(32, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'ADV01', 'IS Elective 1', '3', '0', 3, '0', '3RD YR STAND.'),
(33, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'CC106', 'Application Development. AND Emerging Tech.', '3', '0', 3, '0', 'IS103'),
(34, 'Bachelor of Science in Information Systems', '3RD', '1ST SEMESTER', 'ADV06', 'IS Professional Elective', '3', '0', 3, '0', '3RD YR STAND.'),
(35, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'CAP101', 'Capstone Project 1', '3', '0', 3, '0', 'QUAMET'),
(36, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'IS Project Management 1', '3', '0', 3, '0', 'IS104'),
(37, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'IS Elective 2', '3', '0', 3, '0', 'ADV01'),
(38, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'Evaluation of Business Performance', '2', '1', 3, '0', 'DM103'),
(39, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'IS Professional Elective 3', '3', '0', 3, '0', 'IDBM'),
(40, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'Ethics', '3', '0', 3, '0', 'NONE'),
(41, 'Bachelor of Science in Information Systems', '3RD', '2ND SEMESTER', 'DM103', 'IS Professiional Elective 2', '3', '0', 3, '0', '3RD YR.STANDING'),
(42, 'Bachelor of Science in Information Systems', '3RD', 'SUMMER TERM', 'IS107', 'IS Strategy, Mgmt., and Acquisition', '3', '0', 3, '0', 'ADV03'),
(43, 'Bachelor of Science in Information Systems', '3RD', 'SUMMER TERM', 'ADV04', 'IS Elective 3', '3', '0', 3, '0', 'ADV03'),
(44, 'Bachelor of Science in Information Systems', '3RD', 'SUMMER TERM', 'IS102', 'Professional Issues in  Info.  System', '3', '0', 3, '0', 'ADV03'),
(45, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'ADV07', 'IS Project Management 2', '3', '0', 3, '0', 'IS106'),
(46, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'CAP102', 'Capstone Project 2', '0', '3', 3, '0', 'CAP101'),
(47, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'ADV05', 'IS Elective 4', '3', '0', 3, '0', 'ADV03'),
(48, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'ADV09', 'IS Professional Elective 4', '3', '0', 3, '0', 'ADV07'),
(49, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'TECHNO', 'Technopreneurship', '3', '0', 3, '0', '4th Yr Stand.'),
(50, 'Bachelor of Science in Information Systems', '4TH', '1ST SEMESTER', 'RIZAL', 'Life, Works and Writings of Rizal', '3', '0', 3, '0', 'NONE'),
(51, 'Bachelor of Science in Information Systems', '4TH', '2ND SEMESTER', 'PRACT101', 'PRACTICUM', '0', '9', 9, '0', 'CAP102'),
(55, 'BSA', '3RD', '2ND SEM', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term`
--

CREATE TABLE `tbl_term` (
  `ID` int(11) NOT NULL,
  `TERM` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_term`
--

INSERT INTO `tbl_term` (`ID`, `TERM`, `DESCRIPTION`) VALUES
(1, '1ST SEM', '1ST SEMESTER'),
(2, '2ND SEM', '2ND SEMESTER'),
(3, 'SUMMER', 'SUMMER CLASS'),
(4, 'TUTORIAL', 'TUTORIAL CLASS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `UsertypeID` int(11) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`ID`, `username`, `password`, `Fullname`, `UsertypeID`, `ImagePath`) VALUES
(1, 'admin1', '$2y$10$bdoW7UYb6RuOU9iK3hVop.qCJFn3u8hE/.0MESra4h0qn2SLrJ9Ja', 'ADMIN1', 1, NULL),
(2, 'instructor1', '$2y$10$o3fIbAlXt9m4tzr72pAm1.ioPFKHTay9Q9NptmP1K7dX98YIuwXWO', 'INSTRUCTOR1', 3, NULL),
(3, 'dean1', '$2y$10$ccu.T44j3I2rE91OBx8MJe19AN5rTDigdySlxUVZ1yMqEt5eKuUae', 'dean1', 4, NULL),
(4, 'registrar1', '$2y$10$eA8mTEAaAgkHMJYTmfY1C.p/0FS6wZTQ3JBQ.B6YODrhznyvOzVz2', 'registrar1', 2, NULL),
(5, 'student1', '$2y$10$ymGKE0jQh4plB1U0hekfLuNuFISimw8fabH/Cp3YaJq8CrT9CoePy', 'Student1', 5, NULL),
(6, 'admin2', '$2y$10$qXFJ6DitjuHtEWgxQFQw8OlqnqcF8NTEA0OchQHBBexLEPa5vuMIW', 'admin2', 1, NULL),
(7, 'admin3', '$2y$10$7EsjkgqcJbiyWUOWfVxLyuEVQ41nWsOUw7/jyQYsALuPvIqeSKyCa', 'admin3', 1, NULL),
(8, 'registrar2', '$2y$10$Olwby2lWTUOxkkAVhmoX3uX8dSCgrsmq6eqmADZTcgOP0BcrlEymC', 'REGISTRAR2', 2, NULL),
(9, 'registrar3', '$2y$10$i9I/p1CyeNG0JCxtXsspoeV1FRJHC5rJ2r/aovDbPXPklETmXJrf.', 'REGISTRAR3', 2, NULL),
(10, 'dean2', '$2y$10$dWLpUJmE9BV8PAM04Y684eecH//e4gXfMmApiHhuEpr0X7xzMPISy', 'Dean2', 4, NULL),
(11, 'dean3', '$2y$10$uzEZD3/9eIWyx/NvQu.MP..hu46X2S4DLmM7dlVQdi3yzmRq.1DAi', 'Dean3', 4, NULL),
(12, 'instructor2', '$2y$10$7nnqrIYzNeeoXPT29noM2upJ6wc02idQP3JGW944M63QAgX/UZqJy', 'Instructor2', 3, NULL),
(13, 'instructor3', '$2y$10$WaD802v/LYGPS2q9P3Gtuu5EL7T9ZEGQeA/h.OaTzxzS7itgbbhY6', 'Instructor3', 3, NULL),
(14, 'student2', '$2y$10$olTnINpK7Pj6zgr3ZcO0tO73tJMpAO6fJ0sLZCH4WDX9Ef20XhGue', 'Student2', 5, NULL),
(15, 'student3', '$2y$10$3IVgjPLLCr/3CPHfqCzFh.zo8KrHxrcvT2EBpmM7tUKmp2WVhlk3C', 'Student3', 5, NULL),
(16, 'Apolinario', '$2y$10$2wjv9xRkLlXfUA2uYksxbuZM3iCIbWTSntSPsEYq3oHqgu3j0XVK6', 'Apolinario Mabini', 5, 'images/users/Apolinario.JPG'),
(17, 'Andres', '$2y$10$/cNINj6PnA3ttOw3RS26sO4QJtmtiI4uC.IgIbVqBD.1jIdcAIOSi', 'Andres Bonifacio', 5, 'images/users/Andres.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertype`
--

CREATE TABLE `tbl_usertype` (
  `ID` int(11) NOT NULL,
  `Usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_usertype`
--

INSERT INTO `tbl_usertype` (`ID`, `Usertype`) VALUES
(1, 'Admin'),
(2, 'Registrar'),
(3, 'Instructor'),
(4, 'Dean'),
(5, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yearlevel`
--

CREATE TABLE `tbl_yearlevel` (
  `ID` int(11) NOT NULL,
  `YEARLEVEL` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_yearlevel`
--

INSERT INTO `tbl_yearlevel` (`ID`, `YEARLEVEL`, `DESCRIPTION`) VALUES
(1, '1ST', '1ST YEAR'),
(3, '3RD', '3RD YEAR'),
(4, '3RD', '44'),
(5, '4TH', '4th sem');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`) VALUES
(0, 'admin1', 'admin123'),
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_instructors`
--
ALTER TABLE `tbl_instructors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_schoolyear`
--
ALTER TABLE `tbl_schoolyear`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_section`
--
ALTER TABLE `tbl_section`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_term`
--
ALTER TABLE `tbl_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_users_usertype` (`UsertypeID`);

--
-- Indexes for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_yearlevel`
--
ALTER TABLE `tbl_yearlevel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_instructors`
--
ALTER TABLE `tbl_instructors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_schoolyear`
--
ALTER TABLE `tbl_schoolyear`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_section`
--
ALTER TABLE `tbl_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_term`
--
ALTER TABLE `tbl_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_yearlevel`
--
ALTER TABLE `tbl_yearlevel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `fk_users_usertype` FOREIGN KEY (`UsertypeID`) REFERENCES `tbl_usertype` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
