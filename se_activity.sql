-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2017 at 04:13 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se_activity`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `idActivity` int(11) NOT NULL COMMENT 'รหัสกิจกรรม',
  `ActivityName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ชือกิจกรรม',
  `Detail` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'รายละเอียดกิจกรรม',
  `StartDate` datetime(6) NOT NULL COMMENT 'วันที่เริ่มกิจกรรม',
  `EndDate` datetime(6) NOT NULL COMMENT 'วันสิ้นสุดกิจกรรม',
  `YearSTD` varchar(1) COLLATE utf8_bin NOT NULL COMMENT 'นักศึกษาชั้นปีที่เกี่ยวข้อง',
  `Teacher_idTeacher` int(11) NOT NULL COMMENT 'รหัสอาจารย์ดูแล',
  `YearOfEducation_semester` int(11) NOT NULL COMMENT 'เทอมที่จัด',
  `YearOfEducation_Year` int(11) NOT NULL COMMENT 'ปีการศึกษาที่จัด',
  `Location_idLocation` int(11) NOT NULL COMMENT 'รหัสสถานที่จัด',
  `Type-idAType` int(11) NOT NULL COMMENT 'รหัสประเภทของกิจกรรม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `detailedactivity`
--

CREATE TABLE `detailedactivity` (
  `Student_idStudent` varchar(8) COLLATE utf8_bin NOT NULL COMMENT 'รหัสนักศึกษา',
  `Activity_idActivity` int(11) NOT NULL COMMENT 'รหัสกิจกรรม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL COMMENT 'รหัสสถานที่ที่ใช้จัดกิจกรรม',
  `LocationName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ชื่อสถานที่ที่ใช้จัดกิจกรรม',
  `room` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ห้องที่ใช้สำหรับจัดกิจกรรม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `idStudent` varchar(8) COLLATE utf8_bin NOT NULL COMMENT 'รหัสนักศึกษา',
  `FirstName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ชื่อนักศึกษา',
  `LastName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'นามสกุลนักศึกษา',
  `Year` int(11) NOT NULL COMMENT 'ปีที่เข้าศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`idStudent`, `FirstName`, `LastName`, `Year`) VALUES
('56110497', 'นายกฤษฎา', 'หมัดอะดัม', 2556),
('56112402', 'นายชัยสิทธิ์', 'ลิ่มสกุล', 2556),
('56112949', 'นางสาวณัฏฐิดา', 'สุวรรณพฤก', 2556),
('56115140', 'นายประทีป', 'คงกล้า', 2556),
('56116585', 'นางสาวภิรมย์พร', 'บุษบรรณ์', 2556),
('57110181', 'นางสาวกนกวรรณ', 'มีแก้ว	', 2557),
('57110967', 'นายกิตติพงศ์', 'สงทอง', 2557),
('57111460', 'นายครรชิต', 'แก้วเนื้ออ่อน', 2557),
('57112161', 'นางสาวจุฑาภรณ์', 'พุ่มมณี', 2557),
('57112195', 'นางสาวจุฑามาศ', 'คงมีผล', 2557),
('57113631', 'นายณัฐนันท์', 'แซ่ฉั่ว', 2557),
('57114712', 'นายธัญญบุตร', 'จันทร์ประสิทธิ์', 2557),
('57117442', 'นางสาวพิรุณรัตน์', 'ลีละวัฒนพันธ์', 2557),
('57119935', 'นายวิศิษฎ์ศักดิ์', 'ชูกลิ่น', 2557),
('57120230', 'นางสาวศศิธร', 'วิชาดี', 2557),
('58111410', 'นายโกเมศ', 'รักชุม	', 2558),
('58112418', 'นายฉลองราช', 'ประสิทธิวงศ์', 2558),
('58112970', 'นางสาวชิดชนก', 'ยีสมัน', 2558),
('58113341', 'นางสาวฏอฮีเราะฮ์', 'ฮูซัยนี', 2558),
('58117656', 'นายพรชัย', 'กลิ่นมาลา', 2558);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `idTeacher` int(11) NOT NULL COMMENT 'รหัสอาจารย์',
  `FirstName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ชื่ออาจารย์',
  `LastName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'นามสกุลอาจารย์'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idAType` int(11) NOT NULL COMMENT 'รหัสประเภทกิจกรรม',
  `TypeName` varchar(45) COLLATE utf8_bin NOT NULL COMMENT 'ชื่อสถานที่ที่ใช้จัดกิจกรรม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `yearofeducation`
--

CREATE TABLE `yearofeducation` (
  `semester` int(11) NOT NULL COMMENT 'เทอมที่จัดกิจกรรม',
  `Year` int(11) NOT NULL COMMENT 'ปีการศึกษาที่จัดกิจกรรม',
  `StartDate` date NOT NULL COMMENT 'วันที่เริ่มภาคการศึกษา',
  `EndDate` date NOT NULL COMMENT 'วันที่สิ้นสุดปีการศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`idActivity`,`Teacher_idTeacher`,`YearOfEducation_semester`,`YearOfEducation_Year`,`Location_idLocation`,`Type-idAType`),
  ADD KEY `Teacher_idTeacher` (`Teacher_idTeacher`),
  ADD KEY `YearOfEducation_semester` (`YearOfEducation_semester`,`YearOfEducation_Year`),
  ADD KEY `Location_idLocation` (`Location_idLocation`),
  ADD KEY `Type-idAType` (`Type-idAType`);

--
-- Indexes for table `detailedactivity`
--
ALTER TABLE `detailedactivity`
  ADD PRIMARY KEY (`Student_idStudent`,`Activity_idActivity`),
  ADD KEY `Activity_idActivity` (`Activity_idActivity`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idLocation`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idStudent`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`idTeacher`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idAType`);

--
-- Indexes for table `yearofeducation`
--
ALTER TABLE `yearofeducation`
  ADD PRIMARY KEY (`semester`,`Year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `idLocation` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสถานที่ที่ใช้จัดกิจกรรม';
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idAType` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทกิจกรรม';
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`Teacher_idTeacher`) REFERENCES `teacher` (`idTeacher`),
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`YearOfEducation_semester`,`YearOfEducation_Year`) REFERENCES `yearofeducation` (`semester`, `Year`),
  ADD CONSTRAINT `activity_ibfk_5` FOREIGN KEY (`Location_idLocation`) REFERENCES `location` (`idLocation`),
  ADD CONSTRAINT `activity_ibfk_6` FOREIGN KEY (`Type-idAType`) REFERENCES `type` (`idAType`);

--
-- Constraints for table `detailedactivity`
--
ALTER TABLE `detailedactivity`
  ADD CONSTRAINT `detailedactivity_ibfk_2` FOREIGN KEY (`Activity_idActivity`) REFERENCES `activity` (`idActivity`),
  ADD CONSTRAINT `detailedactivity_ibfk_3` FOREIGN KEY (`Student_idStudent`) REFERENCES `student` (`idStudent`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
