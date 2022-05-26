-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 06:15 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment_info`
--

CREATE TABLE `assignment_info` (
  `assi_id` int(10) NOT NULL,
  `assi_title` varchar(45) NOT NULL,
  `assi_date` varchar(45) NOT NULL,
  `assi_details` varchar(200) NOT NULL COMMENT 'MAX 200 char',
  `branch_id` int(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `assi_due_date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_info`
--

INSERT INTO `assignment_info` (`assi_id`, `assi_title`, `assi_date`, `assi_details`, `branch_id`, `subject_code`, `faculty_id`, `assi_due_date`) VALUES
(1, 'Assignment 1', '26-12-2021', 'Assignment details should be written here.', 2, 'MCA - 401', 4001, '10-01-2022'),
(2, 'Assignment on ABC', '10-1-2022', 'Here show assignment details for the following.', 2, 'MCA - 402', 4004, '16-01-2022');

-- --------------------------------------------------------

--
-- Table structure for table `branch_info`
--

CREATE TABLE `branch_info` (
  `branch_id` int(10) NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `dapartment_id` int(10) NOT NULL,
  `branch_full_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_info`
--

INSERT INTO `branch_info` (`branch_id`, `branch_name`, `dapartment_id`, `branch_full_name`) VALUES
(1, 'BCA', 18, 'Batchlors of Computer Application'),
(2, 'MCA', 18, 'Master of Computer Application');

-- --------------------------------------------------------

--
-- Table structure for table `college_contact`
--

CREATE TABLE `college_contact` (
  `contact_sr_no` int(11) NOT NULL,
  `contact_designation` varchar(45) NOT NULL,
  `contact_name` varchar(40) NOT NULL,
  `contact_number` varchar(40) NOT NULL,
  `contact_link` varchar(100) NOT NULL,
  `contact_email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_contact`
--

INSERT INTO `college_contact` (`contact_sr_no`, `contact_designation`, `contact_name`, `contact_number`, `contact_link`, `contact_email`) VALUES
(1, 'Application Developer', 'Himanshu srivastava', '7081654255', '', 'aasoogames@gmail.com'),
(2, 'Application Developer', 'Komal Chaudhary', '', '', 'komal@stportal.com'),
(3, '', 'App Domain Name', '', 'https://studentcollegeportal.000webhostapp.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `college_events`
--

CREATE TABLE `college_events` (
  `n_id` int(10) NOT NULL,
  `n_date` varchar(45) NOT NULL,
  `n_title` varchar(100) NOT NULL COMMENT 'MAX 100',
  `n_subtitle` varchar(200) NOT NULL COMMENT 'MAX 200',
  `n_detail` varchar(1000) NOT NULL COMMENT 'MAX 1000',
  `n_image` varchar(45) NOT NULL,
  `n_type` int(1) NOT NULL COMMENT '0 - News 1 - Notice 2 - Event',
  `n_slider` int(1) NOT NULL COMMENT '0 - No 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_events`
--

INSERT INTO `college_events` (`n_id`, `n_date`, `n_title`, `n_subtitle`, `n_detail`, `n_image`, `n_type`, `n_slider`) VALUES
(1, '26/12/2021', 'University News', 'Uviversity has announced next year academic calander.', 'For the new year session university has annonced new session academic calander. New session will be starting from JULY.', '', 0, 0),
(2, '2/12/2021', 'ID Card - Notice', 'Students must has there ID-Cards.', 'To enter in college campus, Student must have there College ID-Cards.', '', 1, 0),
(3, '02/02/2022', 'College Seminar', 'Our college is going to held a seminar  Cyber Bullying on 10-02-2022.', 'Our college is going to held a seminar  Cyber Bullying on 10-02-2022. Follow us on follwoing pages. ', 'imgcs.jpg', 2, 1),
(4, '22/12/2021', 'Sports Events', 'College events will be starting from 03-01-2022.', 'College is orgnising a Junior level sports competetion. Intrested students have to fill a from to participate. Form shold be submited by 30-12-2021', 'collegesports.jpg', 2, 1),
(5, '06/03/2022', 'External Exams', 'External date will be starting from 16/03/2022', 'University announced examination dates. Exams will be startng from 16-03-2022 for all Technical and Non-Technical cources.', 'imgexams.jpg', 1, 1),
(6, '01/04/2022', 'Final Exams Dates', 'Fianl year exams date will be announced soon.', 'Even sem exams of final year examination date will be announced soon. As per university recently an gudeline has been issued for the Technical and Non-Technical Students final Exams', 'guide.jpg', 0, 1),
(7, '14/03/2021', 'Maths, Physics not mandatory', 'Maths, Physics not mandatory for engineering test: Key takeaways from AICTEs new guidelines', 'The All Indian Council of Technical Education (AICTE) has tweaked the eligibility criteria for undergraduate engineering programmes, permitting higher education institutions to admit students who have not studied Physics and Mathematics in school to streams such as textile engineering and biotechnology.', 'aictef1200.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_gallery`
--

CREATE TABLE `college_gallery` (
  `sr_no` int(10) NOT NULL,
  `media_type` int(1) NOT NULL COMMENT '1 - images 2 - videos',
  `media_description` varchar(1000) NOT NULL,
  `media_added` varchar(10) NOT NULL,
  `media_path` varchar(40) NOT NULL,
  `media_path_video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_gallery`
--

INSERT INTO `college_gallery` (`sr_no`, `media_type`, `media_description`, `media_added`, `media_path`, `media_path_video`) VALUES
(1, 1, 'Welcome to SCRIET.\r\nSCRIET Home Page - Facebook\r\nImages may be subject to copyright', '18-05-2022', 'stportal.jpg', ''),
(2, 1, 'Sir Chhotu Ram Institute of Engineering and Technology (SCRIET)\r\nMeerut,  Uttar Pradesh\\nEstablished: 2002,\r\nApproved by AICTE, \r\nCh. Charan Singh University Campus, Meerut', '18-05-2022', 'stportal1.jpg', ''),
(3, 1, 'Sir Chhotu Ram Institute of Engineering and Technology  (SCRIET) was established in 2002 with the aim of providing quality education in the field of Engineering and Technology. \r\nThe Institute is a constituent part of the Ch. Charan Singh University, Meerut.', '19-05-2022', 'stportal2.jpg', ''),
(4, 1, 'SCRIET is considered one of the Western U.P. leaders in Engineering which presents a unique opportunity for students to get a cutting edge over its counterparts.\r\nAlso provides an opportunity to experience diverse environments through Internships and Research Projects.\r\nThe curriculum is designed for focusing more on industrial research and readiness.\r\nSCRIET is considered one of the Western U.P. leaders in Engineering which presents a unique opportunity for students to get a cutting edge over its counterparts.\r\nAlso provides an opportunity to experience diverse environments through Internships and Research Projects.\r\nThe curriculum is designed for focusing more on industrial research and readiness.', '18-05-2022', 'stportal3.jpg', ''),
(5, 2, 'Dictionary pages turnning in wind', '19-05-2022', 'dictionary21941.jpg', 'Dictionary21941.mp4'),
(6, 2, 'Student laptop notebook - Free Commercial', '20-05-2022', 'laptop1058.jpg', 'laptop1058.mp4'),
(7, 2, 'Board Chalk - Study diagram', '20-05-2022', 'Board18437.jpg', 'Board18437.mp4'),
(8, 2, 'CGI Animated Short Film: \"Thatching Eggs\" by Max Marlow | CGMeetup', '20-05-2022', 'videoplayback.jpg', 'videoplayback.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `department_info`
--

CREATE TABLE `department_info` (
  `department_id` int(10) NOT NULL,
  `department_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_info`
--

INSERT INTO `department_info` (`department_id`, `department_name`) VALUES
(10, 'Department of Accounting and Business Law'),
(11, 'Department of Art and Architectural History'),
(12, 'Department of Applied Social Sciences and Hum'),
(13, 'Department of Business Studies'),
(14, 'Department of Bology'),
(15, 'Department of Chemistry and Biochemistry'),
(16, 'Department of Classics'),
(17, 'Department of Communication'),
(18, 'Department of Computer Science'),
(19, 'Department of Economics'),
(20, 'Department of English'),
(21, 'Department of Finance'),
(22, 'Department of French, Francophone, and Italia'),
(23, 'Department of Geology and Environmental Geosc'),
(24, 'Department of German and Russian Studies'),
(25, 'Department of Health and Human Performance'),
(26, 'Department of Hispanic Studies'),
(27, 'Department of History'),
(28, 'Department of Hospitality and Tourism Managem'),
(29, 'Department of International and Intercultural'),
(30, 'Department of Management and Marketing'),
(31, 'Department of Mathematics'),
(32, 'Department of Music'),
(33, 'Department of Philosophy'),
(34, 'Department of Physics and Astronomy'),
(35, 'Department of Political Science'),
(36, 'Department of Psychology'),
(37, 'Department of Religious Studies'),
(38, 'Department of Sociology and Anthropology'),
(39, 'Department of Studio Art'),
(40, 'Department of Supply Chain and Information Ma'),
(41, 'Department of Teacher Education'),
(42, 'Department of Theatre and Dance');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info`
--

CREATE TABLE `faculty_info` (
  `faculty_id` int(10) NOT NULL,
  `faculty_name` varchar(45) NOT NULL,
  `department_id` int(10) NOT NULL,
  `faculty_mail` varchar(45) NOT NULL,
  `faculty_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_info`
--

INSERT INTO `faculty_info` (`faculty_id`, `faculty_name`, `department_id`, `faculty_mail`, `faculty_contact`) VALUES
(4001, 'Sandep', 18, 'sandeep@stprotal.com', '9595959595'),
(4002, 'Diwakar', 18, 'diwakar12@stporal.com', '6595659565'),
(4003, 'Prabhu', 11, 'prabhu@stportal.com', '6545654545'),
(4004, 'Manoj', 18, 'manoj@stporal.com', '7894561230');

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE `student_account` (
  `std_id` int(10) NOT NULL,
  `std_name` varchar(45) NOT NULL,
  `std_password` varchar(100) NOT NULL,
  `std_image` varchar(45) NOT NULL,
  `std_sem` int(2) NOT NULL,
  `std_accadmic` varchar(10) NOT NULL,
  `department_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `std_status` int(1) NOT NULL COMMENT '1-notactive 2-active 3-blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_account`
--

INSERT INTO `student_account` (`std_id`, `std_name`, `std_password`, `std_image`, `std_sem`, `std_accadmic`, `department_id`, `branch_id`, `std_status`) VALUES
(1001, 'Himanshu Srivastava', '123456', '1001.jpg', 4, '2020-2022', 18, 2, 2),
(1002, 'Saurabh Srivastava', '123456', '1002.jpg', 4, '2020-2022', 18, 2, 2),
(1003, 'Aayushi Tyagi', '123456', '1003.jpg', 4, '2020-2022', 18, 2, 3),
(1004, 'Ritik Raj', '123456', '1004.jpg', 4, '2020-2022', 18, 2, 1),
(1005, 'Mayank Srivastava', '123456', '1005.jpg', 4, '2020-2022', 18, 2, 1),
(1006, 'Jeevash', '123456', '1006.jpg', 4, '2020-2022', 18, 2, 3),
(1007, 'Manish Mishra', '123456', '1007.jpg', 4, '2020-2022', 18, 2, 2),
(1008, 'Komal Chaudhary', '123456', '1008.jpg', 4, '2020-2022', 18, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `std_id` int(11) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `att_date` varchar(10) NOT NULL,
  `att_status` int(1) NOT NULL COMMENT '0-Absent 1-Present 3-Late 4-Other'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_bio`
--

CREATE TABLE `student_bio` (
  `std_id` int(10) NOT NULL,
  `std_father` varchar(45) NOT NULL,
  `std_mother` varchar(45) NOT NULL,
  `std_dob` varchar(45) NOT NULL,
  `std_city` varchar(45) NOT NULL,
  `std_dist` varchar(45) NOT NULL,
  `std_pin` varchar(45) NOT NULL,
  `std_contact` varchar(45) NOT NULL,
  `std_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_bio`
--

INSERT INTO `student_bio` (`std_id`, `std_father`, `std_mother`, `std_dob`, `std_city`, `std_dist`, `std_pin`, `std_contact`, `std_email`) VALUES
(1001, 'Anil Kumar Srivastava', 'Kiran Srivastava', '10-06-1999', 'Tarabganj', 'Gonda', '271403', '7081654255', 'aasoogames@stportal.com'),
(1004, 'Ranjan Kumar Sinha', 'Manju Devi', '22-11-1999', 'Motihari', 'East Champaran', '845432', '8810547961', 'ritikindian01@stportal.com'),
(1007, 'SANTOSH KUMAR MISHRA', 'RITA MISHRA', '29-02-1998', 'VARANASI', 'VARANASI', '221103', '1234567890', 'manishmishra@stportal.com'),
(1008, 'JEETINDRA SINGH', 'ASHA CHAUDHARY', '30-06-1998', 'MEERUT', 'MEERUT', '250001', '9934567890', 'komal@stportal.com');

-- --------------------------------------------------------

--
-- Table structure for table `subject_details`
--

CREATE TABLE `subject_details` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(60) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `std_sem` int(2) NOT NULL,
  `faculty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_details`
--

INSERT INTO `subject_details` (`subject_code`, `subject_name`, `branch_id`, `std_sem`, `faculty_id`) VALUES
('MCA - 401', 'PSOSM - Privacy and security Of Social Media', 2, 4, 4001),
('MCA - 402', 'IOT - Internet of things', 2, 4, 4004);

-- --------------------------------------------------------

--
-- Table structure for table `table_feedback`
--

CREATE TABLE `table_feedback` (
  `feedback_id` int(10) NOT NULL,
  `feedback_message` varchar(500) NOT NULL,
  `feedback_date` varchar(10) NOT NULL,
  `feedback_time` varchar(10) NOT NULL,
  `std_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_info`
--
ALTER TABLE `assignment_info`
  ADD PRIMARY KEY (`assi_id`),
  ADD KEY `assignment_branch_id` (`branch_id`),
  ADD KEY `assignment_faculty_id` (`faculty_id`),
  ADD KEY `assignment_subject_code` (`subject_code`);

--
-- Indexes for table `branch_info`
--
ALTER TABLE `branch_info`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `branch_department_id` (`dapartment_id`);

--
-- Indexes for table `college_contact`
--
ALTER TABLE `college_contact`
  ADD PRIMARY KEY (`contact_sr_no`);

--
-- Indexes for table `college_events`
--
ALTER TABLE `college_events`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `college_gallery`
--
ALTER TABLE `college_gallery`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `department_info`
--
ALTER TABLE `department_info`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `faculty_info`
--
ALTER TABLE `faculty_info`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `faculty_department_id` (`department_id`);

--
-- Indexes for table `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`std_id`),
  ADD KEY `student_branch_id` (`branch_id`),
  ADD KEY `student_department_id` (`department_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD KEY `attandance_student_id` (`std_id`),
  ADD KEY `attandance_subject_code` (`subject_code`);

--
-- Indexes for table `student_bio`
--
ALTER TABLE `student_bio`
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `subject_details`
--
ALTER TABLE `subject_details`
  ADD PRIMARY KEY (`subject_code`),
  ADD KEY `subject_branch_id` (`branch_id`);

--
-- Indexes for table `table_feedback`
--
ALTER TABLE `table_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `std_id` (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment_info`
--
ALTER TABLE `assignment_info`
  MODIFY `assi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch_info`
--
ALTER TABLE `branch_info`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `college_contact`
--
ALTER TABLE `college_contact`
  MODIFY `contact_sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `college_events`
--
ALTER TABLE `college_events`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `college_gallery`
--
ALTER TABLE `college_gallery`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department_info`
--
ALTER TABLE `department_info`
  MODIFY `department_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `faculty_info`
--
ALTER TABLE `faculty_info`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4005;

--
-- AUTO_INCREMENT for table `student_account`
--
ALTER TABLE `student_account`
  MODIFY `std_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `table_feedback`
--
ALTER TABLE `table_feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment_info`
--
ALTER TABLE `assignment_info`
  ADD CONSTRAINT `assignment_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `assignment_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_info` (`faculty_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `assignment_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `subject_details` (`subject_code`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `branch_info`
--
ALTER TABLE `branch_info`
  ADD CONSTRAINT `branch_department_id` FOREIGN KEY (`dapartment_id`) REFERENCES `department_info` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `faculty_info`
--
ALTER TABLE `faculty_info`
  ADD CONSTRAINT `faculty_department_id` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_account`
--
ALTER TABLE `student_account`
  ADD CONSTRAINT `student_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `student_department_id` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD CONSTRAINT `attandance_student_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attandance_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `subject_details` (`subject_code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_bio`
--
ALTER TABLE `student_bio`
  ADD CONSTRAINT `student_bio_account_std_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON UPDATE CASCADE;

--
-- Constraints for table `subject_details`
--
ALTER TABLE `subject_details`
  ADD CONSTRAINT `subject_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table_feedback`
--
ALTER TABLE `table_feedback`
  ADD CONSTRAINT `table_feedback_student_account_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
