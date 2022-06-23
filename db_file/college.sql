-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 07:21 PM
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
  `assi_title` varchar(100) NOT NULL,
  `assi_date` date NOT NULL,
  `assi_details` varchar(5000) NOT NULL COMMENT 'MAX 5000',
  `branch_id` int(10) NOT NULL,
  `std_sem` int(2) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `assi_due_date` date NOT NULL,
  `assi_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_info`
--

INSERT INTO `assignment_info` (`assi_id`, `assi_title`, `assi_date`, `assi_details`, `branch_id`, `std_sem`, `subject_code`, `faculty_id`, `assi_due_date`, `assi_path`) VALUES
(1, 'Assignment 1 - Simple Queries', '2021-12-26', 'Person –Area Database\r\n\r\nConsider the relation Person (pnumber, pname, birthdate, income), Area(aname,\r\narea_type). An area can have one or more persons living in it, but a person belongs to\r\nexactly one area. The attribute ‘area_type’ can have values either ‘urban’ or ‘rural’.\r\nCreate the relations accordingly, so that the relationship is handled properly and the\r\nrelations are in normalized form (3NF).\r\nInsert sufficient number of appropriate records.\r\n\r\nSolve the Queries\r\n\r\n1. List the names of all people living in ‘_______’ area.\r\n2. List the details of all people whose names start with the alphabet ‘__’.\r\n3. List the names of all people whose birthday falls in the month of_______.\r\n4. Count the people who are born on_______.\r\n5. Count the people whose income is below______.\r\n6. List the names of all people whose income is between ______and _______.\r\n7. List the names of people with average income.\r\n8. List the details of the people, sorted by person name.\r\n9. Transfer all people living in ‘Pune’ to ‘Mumbai’.\r\n10. Delete information of people staying in ‘urban’ area. ', 2, 4, 'MCA-411', 4001, '2022-01-26', NULL),
(2, 'Assignment 2 - Simple Queries', '2022-01-05', 'Movie Database\r\n\r\nMovies(M_name, release_year, budget)\r\nActor(A_name, role, charges, A_address)\r\nProducer(producer_id, name, P_address)\r\nEach actor has acted in one or more movies. Each producer has produced many movies\r\nand each movie can be produced by more than one producers. Each movie has one or\r\nmore actors acting in it, in different roles.\r\nCreate the relations accordingly, so that the relationship is handled properly and the\r\nrelations are in normalized form(3NF).\r\nInsert sufficient number of appropriate records.\r\n\r\nSolve the Queries:\r\n\r\n1. List the names of actors who have acted in at least one movie, in which ‘_______’ has\r\nacted.\r\n2. List the names of the movies with the highest budget.\r\n3. List the names of actors who have acted in the maximum number of movies.\r\n4. List the names of movies, produced by more than one producer.\r\n5. List the names of actors who are given with the maximum charges for their movie.\r\n6. List the names of producers who produce the same movie as ‘________’.\r\n7. List the names of actors who do not live in _________or _________ city. \r\n', 2, 4, 'MCA-412', 4004, '2022-02-05', 'Assignment_2.pdf'),
(6, 'Assignment 1 - Nested Queries, using aggregate', '2022-05-29', 'Bank database\r\n\r\nConsider the following database maintained by a Bank. The Bank maintains information\r\nabout its branches, customers and their loan applications.\r\nFollowing are the tables:\r\nBRANCH (BID INTEGER, BRNAME CHAR (30), BRCITY CHAR (10))\r\nCUSTOMER (CNO INTEGER, CNAME CHAR (20), CADDR CHAR (35), CITY CHAR(20))\r\nLOAN_APPLICATION (LNO INTEGER, LAMTREQUIRED MONEY, LAMTAPPROVED\r\nMONEY, L_DATE DATE)\r\nThe relationship is as follows:\r\nBRANCH, CUSTOMER, LOAN_APPLICATION are related with ternary relationship.\r\nTERNARY (BID INTEGER, CNO INTEGER, LNO INTEGER).\r\n\r\nSolve the Queries\r\n\r\n1. Find the names of the customers for the “Aundh” branch.\r\n2. List the names of the customers who have received loan less than their requirement.\r\n3. Find the maximum loan amount approved.\r\n4. Find out the total loan amount sanctioned by “Deccan “branch.\r\n5. Count the number of loan applications received by “M.G.ROAD” branch.\r\n6. List the names of the customer along with the branch names who have applied for loan\r\nin the month of September. ', 2, 4, 'MCA-411', 4002, '2022-06-11', 'Assignment_3.pdf'),
(7, 'Assignment 2 - Nested Queries, using aggregate', '2022-06-12', 'Student- Teacher database\r\n\r\nConsider the following database maintained by a school. The school maintains information\r\nabout students and the teachers. It also gives information of the subject taught by the\r\nteacher.\r\n\r\nFollowing are the tables:\r\nSTUDENT (SNO INTEGER, S_NAME CHAR(30), S_CLASS CHAR(10), S_ADDR\r\nCHAR(50))\r\nTEACHER (TNO INTEGER, T_NAME CHAR (20), QUALIFICATION CHAR\r\n(15),EXPERIENCE INTEGER)\r\nThe relationship is as follows:\r\nSTUDENT-TEACHER: M-M with descriptive attribute SUBJECT.\r\n\r\nSolve the queries\r\n\r\n1. Find the minimum experienced teacher.\r\n2. Find the number of teachers having qualification “Ph. D.”.\r\n3. List the names of the students to whom “Mr. Patil” is teaching along with the subjects he\r\nis teaching to them.\r\n4. Find the subjects taught by each teacher.\r\nPage 11 of 47\r\n5. List the names of the teachers who are teaching to a student named “Suresh”.\r\n6. List the names of all teachers along with the total number of students they are teaching. ', 2, 2, 'MCA-202', 4001, '2022-06-23', NULL),
(8, 'Assignment 3 - Nested Queries, using aggregate', '2022-04-05', 'Project-Employee database\r\n\r\nConsider the database maintained by a company which stores the details of the projects\r\nassigned to the employees.\r\nFollowing are the tables:\r\nPROJECT (PNO INTEGER, P_NAME CHAR(30), PTYPE CHAR(20),DURATION\r\nINTEGER)\r\nEMPLOYEE (ENO INTEGER, E_NAME CHAR (20), QUALIFICATION CHAR (15),\r\nJOINDATE DATE)\r\n\r\nThe relationship is as follows:\r\n\r\nPROJECT - EMPLOYEE: M-M Relationship , with descriptive attributes as start_date\r\n(date), no_of_hours_worked (integer).\r\nSolve the Queries\r\n1. Find the names of the employees starting with ’A’.\r\n2. Find the details of employees working on the project “System”.\r\n3. Find the employee numbers of the employees, who do not work on project “Robotics”.\r\n4. Get employee number of the employee, who works on at least one project that\r\nemployee number ‘2000’ works on.\r\n5. List the names of the first three employees in alphabetical order.\r\n6. Find the names of the employees who have worked for more than three years. ', 2, 2, 'MCA-412', 4003, '2022-05-02', 'Assignment_3.pdf');

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
(2, 'MCA', 18, 'Master of Computer Application'),
(3, 'M A', 36, 'Master of Arts'),
(4, 'Ph.D', 36, 'Doctor of Philosophy'),
(5, 'PGD in Counselling', 36, 'PG diploma in Psychological counselling'),
(6, 'BBA', 13, 'Bachelor of Business Administration'),
(7, ' MBA', 13, 'Master of Business Administration'),
(8, 'MBA (Hospital Administration)', 13, 'MBA (Hospital Administration):5 years Integrated Programme'),
(9, ' MBA (Hospital Administration)', 13, 'MBA (Hospital Administration): 2 years Programme'),
(10, 'M.Sc (Mathematics)', 31, 'Master of Science in Mathematics'),
(11, 'M.A. (Mathematics)', 31, 'Master of Arts in Mathematics'),
(12, 'Ph.D. Programme', 31, 'Doctor of Philosophy ');

-- --------------------------------------------------------

--
-- Table structure for table `campus_map`
--

CREATE TABLE `campus_map` (
  `sr_no` int(10) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `location_latitude` varchar(20) NOT NULL,
  `location_longitude` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campus_map`
--

INSERT INTO `campus_map` (`sr_no`, `location_name`, `location_latitude`, `location_longitude`) VALUES
(1, 'CCS University Main Gate', '28.9669793', '77.7388880'),
(2, 'Netaji Subhash Chandra Bose Bhawan, CCSU', '28.9678018', '77.7389775'),
(3, 'SCRIET Main Gate', '28.9753310', '77.7329097'),
(4, 'SCRIET Administration Department', '28.9763107', '77.7334766');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_disscussion_groups`
--

CREATE TABLE `classroom_disscussion_groups` (
  `room_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `std_sem` int(2) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_disscussion_groups`
--

INSERT INTO `classroom_disscussion_groups` (`room_id`, `branch_id`, `std_sem`, `room_name`, `room_key`) VALUES
(1, 2, 4, 'Major Project Informations', 'room_1'),
(2, 2, 4, 'IoT - MCA 412', 'room_2'),
(3, 2, 2, 'MCA-202 OOPs', 'room_3'),
(4, 2, 2, 'Class Labs', 'room_4');

-- --------------------------------------------------------

--
-- Table structure for table `class_notices`
--

CREATE TABLE `class_notices` (
  `notice_id` int(10) NOT NULL,
  `department_id` int(10) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `notice_title` varchar(100) NOT NULL,
  `notice_message` varchar(1000) NOT NULL,
  `notice_date` date NOT NULL,
  `file_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_notices`
--

INSERT INTO `class_notices` (`notice_id`, `department_id`, `branch_id`, `notice_title`, `notice_message`, `notice_date`, `file_path`) VALUES
(1, 18, 2, 'Date Sheet of Even Semester Examination ', 'Date Sheet of Even Semester Examination of B.Tech., MBA and MCA', '2022-06-14', '20220614_scriet_even_exam_datesheet.pdf'),
(2, 18, 2, 'Important Notice', 'Important Notice Regarding Examination form Reopen and Tution Fee', '2022-06-04', '20220604_examform_reopen.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `club_events`
--

CREATE TABLE `club_events` (
  `event_id` int(10) NOT NULL,
  `club_id` int(10) NOT NULL,
  `event_type` varchar(15) NOT NULL COMMENT 'announcement or event',
  `event_topic` varchar(200) NOT NULL,
  `event_motive` varchar(2000) NOT NULL,
  `event_post_date` date NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_image_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_events`
--

INSERT INTO `club_events` (`event_id`, `club_id`, `event_type`, `event_topic`, `event_motive`, `event_post_date`, `event_date`, `event_image_path`) VALUES
(1, 1, 'announcement', 'Expressions – The Media Club of Presidency College', 'The Media Club of Presidency College (NAAC Re accredited with A+ Grade) is an intellectual and creative hub for the students of Centre for Media Studies.\r\n\r\nThe objective of the club is to provide a forum for the students to voice forth their opinions, views, and perspectives. It aims to enhance keen observation skills, encourage critical thinking, and learn to be effective communicators.\r\n\r\nThe Club encourages all forms of verbal and non-verbal communications of budding artists, photographers, cinematographers, poets, writers to express themselves. It consistently strives towards innovation and excellence in all dimensions of media studies.', '2022-06-01', '2022-06-05', NULL),
(2, 1, 'announcement', 'Guidelines / Rules & Regulations for each event', 'Each participant should carry identity proof\r\n Students taking part in the events should register on the day of the fest at the registration committee. On spot entry is not obliged.\r\n Students should refrain from any form of cheating and unfair play, failing which they will be disqualified.\r\n The judges‟ decision is final.\r\n Participants should go through the event rules and adhere to the specifics.\r\nParticipation, props, music etc. for certain events should be confirmed. Pre-registration if required by contacting the event head.\r\n A participant can participate only in one event during the simultaneous timings for events; a participant is not restricted to participation in any number of events as long as the event timings do not clash.', '2022-06-02', NULL, 'announcement_2.jpg'),
(3, 1, 'announcement', 'Media and Publication Club Announcement - ACTIVITIES', 'Reporting on different beats like, cultural, education, sports, political, entertainment, crime etc. \r\nStudents will prepare news content for Monthly Bilingual Newspaper “Youngster”. \r\nStudents will prepare press releases for different activities. \r\nStudents will organize creative writing & media quiz competition.', '2022-06-02', NULL, NULL),
(4, 1, 'event', 'Media Club 5 day workshop in campus', 'Students who exhibit interest and talent in photography, filming, music and dance. Students are given the opportunity to develop their skills through training programs such as video editing, short film projects, photography courses, exhibitions, field trips and competitions.', '2022-06-01', '2022-06-05', 'event_4.jpg'),
(5, 2, 'event', 'Host a bingo night at a nursing home', 'Club is organising a bingo night at Nurshing home on Monday. Here\'s how :\r\n1. Add a Double Bingo. Consider giving out two prizes to the winner at a special monthly bingo game.\r\n2. Organize bingo games with current holidays. ...\r\n3. Play swap bingo. ...\r\n4. Vary the ways to win. ...\r\n5. Take residents to a bingo game outside of your facility. ...\r\n6. Use play money to use at a Bingo Auction. ...\r\n7. Add music. ...\r\n5. Add trivia...', '2022-04-01', '2022-06-06', NULL),
(6, 2, 'announcement', 'Paint over bad graffiti in the neighborhood... Click pics and send to club members', 'The presence of graffiti on decorative or delicate surfaces may lead to damage. It may also seem rundown and threatening in the affected areas, putting customers and prospects off. In some instances, graffiti is racially abusive, offensive, or a threat to groups and individuals.\r\nn addition to graffiti, there are other problems associated with it. Often, it is associated with other crime and disorder problems, including littering and public urination. The use of graffiti to convey threats and keep turf boundaries clear is closely associated with gangs and gang violence.\r\nAs well as improving the overall aesthetics of a space, street art and graffiti murals have the ability to positively affect the area from a financial standpoint, which then benefits the entire community because more jobs are created in the area, which is especially beneficial in areas of unemployment.', '2022-03-03', NULL, 'announcement_6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `club_list`
--

CREATE TABLE `club_list` (
  `club_id` int(10) NOT NULL,
  `club_name` varchar(50) NOT NULL,
  `club_motive` varchar(500) NOT NULL,
  `club_logo` varchar(50) DEFAULT NULL,
  `club_background_image` varchar(50) DEFAULT NULL,
  `club_start_date` date NOT NULL,
  `club_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_list`
--

INSERT INTO `club_list` (`club_id`, `club_name`, `club_motive`, `club_logo`, `club_background_image`, `club_start_date`, `club_key`) VALUES
(1, 'Media and Publication Club', 'Many businesses are realizing the need for digitally literate teams, and this is where joining media and publications clubs can pay off. You can be tasked with publishing the student newspaper, running the school’s website, or producing other forms of content, such as photographs and news releases.', 'club_logo_1.jpg', 'club_bg_1.jpg', '2021-12-22', 'club_1'),
(2, 'Community Service Club', 'No matter what industry you’re going into after graduating, spending time with clubs that give back to the community can help you impress potential bosses. Whether you focus on teaching children or building houses for the homeless, your selflessness and desire to create a difference.', 'club_logo_2.jpg', 'club_bg_2.jpg', '2022-02-08', 'club_2'),
(3, 'Book Club', 'Looking for a book club? Explore dozens of online book clubs or find a book club near you. Say hello to a better book club experience. Rate each book you read. Manage your club. All books in one place. Get inspired.', NULL, NULL, '2021-12-01', 'club_3'),
(4, 'The Coding Club ', 'The Club\'s main focus is on creating applications, websites, games, steam/steam workshops and other projects to share with LCC and the community.', 'club_logo_4.png', 'club_bg_4.jpg', '2022-01-04', 'club_4'),
(5, 'Cultural Club', 'We to help students keep in touch with the rich cultral values, customs and traditions of our country. Our aims at molding the personality of students and exposes them to a wide range of cultural events throughout the year.', 'club_logo_5.jpg', NULL, '2021-06-19', 'club_5'),
(6, 'Theater arts', 'Of course an employer will value that trait. Motivation and Commitment Being involved in theatre productions and classes demands commitment and motivation.', 'club_logo_6.png', 'club_bg_6.jpg', '2021-05-12', 'club_6'),
(7, 'College Political Clubs: Activity, For a Change', '\"Students are more concerned with studies and social life than with extra-curricular activities and political organizations\"', NULL, NULL, '2021-08-04', 'club_7');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `sr_no` int(11) NOT NULL,
  `club_id` int(10) NOT NULL,
  `std_id` int(10) NOT NULL,
  `join_date` date NOT NULL,
  `member_status` int(1) NOT NULL COMMENT '1-Yes 2-No 3-Blocked',
  `member_type` int(1) NOT NULL COMMENT '1-Admin 2-Member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`sr_no`, `club_id`, `std_id`, `join_date`, `member_status`, `member_type`) VALUES
(1, 2, 1001, '2022-05-18', 1, 1),
(2, 2, 1008, '2022-03-07', 1, 2),
(3, 2, 1003, '2022-03-07', 2, 2),
(4, 1, 1008, '2022-05-10', 1, 1),
(6, 3, 1003, '2022-05-18', 1, 2),
(7, 2, 1007, '2021-12-12', 3, 2),
(8, 1, 1001, '2022-06-15', 1, 2),
(9, 3, 1001, '2022-06-11', 2, 1),
(10, 6, 1008, '2022-04-04', 1, 2),
(11, 4, 1005, '2022-04-22', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `college_blog`
--

CREATE TABLE `college_blog` (
  `blog_id` int(10) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_text` varchar(5000) NOT NULL,
  `blog_date` varchar(10) NOT NULL,
  `std_id` int(10) DEFAULT NULL,
  `faculty_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `college_contact`
--

CREATE TABLE `college_contact` (
  `contact_sr_no` int(11) NOT NULL,
  `contact_designation` varchar(45) DEFAULT NULL,
  `contact_name` varchar(40) NOT NULL,
  `contact_number` varchar(40) DEFAULT NULL,
  `contact_link` varchar(100) DEFAULT NULL,
  `contact_email` varchar(40) DEFAULT NULL
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
  `n_image` varchar(45) DEFAULT NULL,
  `n_type` int(1) NOT NULL COMMENT '0 - News 1 - Notice 2 - Event',
  `n_slider` int(1) NOT NULL COMMENT '0 - No 1 - Yes',
  `n_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_events`
--

INSERT INTO `college_events` (`n_id`, `n_date`, `n_title`, `n_subtitle`, `n_detail`, `n_image`, `n_type`, `n_slider`, `n_path`) VALUES
(1, '26/12/2021', 'University News', 'University has announced next year academic calendar.', 'For the new year session university has annonced new session academic calander. New session will be starting from JULY.', '', 0, 0, 'notice_1.pdf'),
(2, '2/12/2021', 'ID Card - Notice', 'Students must has their ID-Cards.', 'To enter in college campus, Student must have there College ID-Cards.', '', 1, 0, 'notice_2.pdf'),
(3, '02/02/2022', 'College Seminar', 'Our college is going to held a seminar  Cyber Bullying on 10-02-2022.', 'Our college is going to held a seminar  Cyber Bullying on 10-02-2022. Follow us on follwoing pages. ', 'imgcs.jpg', 2, 1, NULL),
(4, '22/12/2021', 'Sports Events', 'College events will be starting from 03-01-2022.', 'College is orgnising a Junior level sports competetion. Intrested students have to fill a from to participate. Form shold be submited by 30-12-2021', 'collegesports.jpg', 2, 1, NULL),
(5, '06/03/2022', 'External Exams', 'External date will be starting from 16/03/2022', 'University announced examination dates. Exams will be startng from 16-03-2022 for all Technical and Non-Technical cources.', 'imgexams.jpg', 1, 1, NULL),
(6, '01/04/2022', 'Final Exams Dates', 'Fianl year exams date will be announced soon.', 'Even sem exams of final year examination date will be announced soon. As per university recently an gudeline has been issued for the Technical and Non-Technical Students final Exams', 'guide.jpg', 0, 1, NULL),
(7, '14/03/2021', 'Maths, Physics not mandatory', 'Maths, Physics not mandatory for engineering test: Key takeaways from AICTEs new guidelines', 'The All Indian Council of Technical Education (AICTE) has tweaked the eligibility criteria for undergraduate engineering programmes, permitting higher education institutions to admit students who have not studied Physics and Mathematics in school to streams such as textile engineering and biotechnology.', 'aictef1200.jpg', 0, 0, NULL);

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
  `media_path_video` varchar(100) DEFAULT NULL
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
-- Table structure for table `e_library`
--

CREATE TABLE `e_library` (
  `srno` int(10) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `book_author` varchar(150) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publish_date` date DEFAULT NULL,
  `book_type` varchar(10) NOT NULL,
  `book_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_library`
--

INSERT INTO `e_library` (`srno`, `book_title`, `book_author`, `publisher`, `publish_date`, `book_type`, `book_path`) VALUES
(1, 'Detection of Copy-Move Forgery in Digital Images', 'Hailing Huang, Weiqiang Guo, Yu Zhang', '2008 IEEE', NULL, 'e_mag', 'huang2008.pdf'),
(2, 'Object-Oriented Programming Java', 'Margit ANTAL', 'Unknown', NULL, 'e_book', 'oop_java.pdf'),
(3, '6 SECRETS TO STARTUP SUCCESS', 'JOHN BRADBERRY', 'AMERICAN MANAGEMENT ASSOCIATION\r\nNew York • Atlanta • Brussels • Chicago • Mexico City • San Francis', NULL, 'e_book', 'secrets_of_startup.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info`
--

CREATE TABLE `faculty_info` (
  `faculty_id` int(10) NOT NULL,
  `faculty_name` varchar(45) NOT NULL,
  `department_id` int(10) DEFAULT NULL,
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
(4004, 'Manoj', 18, 'manoj@stporal.com', '7894561230'),
(4005, 'Dr. Shashi', 18, '', ''),
(4006, 'Dr. Vikash Jain', 18, '', ''),
(4007, 'Mrs. Rashi Rastogi', 18, '', ''),
(4008, 'Mrs. Savita Mittal', 18, '', '');

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
(1002, 'Saurabh Srivastava', '123456', '1002.jpg', 1, '2020-2022', 18, 2, 2),
(1003, 'Aayushi Tyagi', '123456', '1003.jpg', 2, '2020-2022', 18, 2, 3),
(1004, 'Ritik Raj', '123456', '1004.jpg', 3, '2020-2022', 18, 2, 1),
(1005, 'Mayank Srivastava', '123456', '1005.jpg', 2, '2020-2022', 18, 2, 1),
(1006, 'Jeevesh', '123456', '1006.jpg', 4, '2020-2022', 18, 2, 2),
(1007, 'Manish Mishra', '123456', '1007.jpg', 2, '2020-2022', 18, 2, 2),
(1008, 'Komal Chaudhary', '123456', '1008.jpg', 4, '2020-2022', 18, 2, 2);

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
  `faculty_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_details`
--

INSERT INTO `subject_details` (`subject_code`, `subject_name`, `branch_id`, `std_sem`, `faculty_id`) VALUES
('MCA-101', 'Fundamental of Computers & Emerging Technologies', 2, 1, 4005),
('MCA-102', 'Principles of Programming using C', 2, 1, 4006),
('MCA-103', 'Principles of Management & Communication', 2, 1, 4008),
('MCA-104', 'Discrete Mathematics', 2, 1, NULL),
('MCA-105', 'Computer Organization & Architecture', 2, 1, 4007),
('MCA-151', 'Principles of Programming Using C Lab', 2, 1, 4006),
('MCA-152', 'Computer Organization & Architecture Lab', 2, 1, 4005),
('MCA-153', 'Professional Communication Lab', 2, 1, 4008),
('MCA-201', 'Theory of Automata & Formal Language', 2, 2, NULL),
('MCA-202', 'Object Orineted Programming', 2, 2, 4006),
('MCA-203', 'Operating Systems', 2, 2, 4008),
('MCA-204', 'Database Management Systems', 2, 2, 4007),
('MCA-205', 'Data Structures & Analysis of Algorithms', 2, 2, 4005),
('MCA-206', 'Cyber Security - Qualifying Non-credit Course', 2, 2, 4005),
('MCA-251', 'Object Orineted Programming Lab', 2, 2, 4006),
('MCA-252', 'Database Management Systems Lab', 2, 2, 4007),
('MCA-253', 'Data Structures & Analysis of Algorithms Lab', 2, 2, 4005),
('MCA-411', 'Privacy and security Of Social Media', 2, 4, 4008),
('MCA-412', 'Internet of things', 2, 4, 4005),
('MCA-413', 'Mobile Computing', 2, 4, 4006),
('MCA-451', 'Major-Project', 2, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_feedback`
--

CREATE TABLE `table_feedback` (
  `feedback_id` int(10) NOT NULL,
  `feedback_message` varchar(500) NOT NULL,
  `feedback_date` date NOT NULL,
  `feedback_time` time NOT NULL,
  `std_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_feedback`
--

INSERT INTO `table_feedback` (`feedback_id`, `feedback_message`, `feedback_date`, `feedback_time`, `std_id`) VALUES
(1, 'TEST : This is feedback message', '2022-05-27', '00:05:46', 1001),
(2, 'Change night mode colours', '2022-05-27', '01:39:55', 1007),
(3, 'Fix night mode text in settings', '2022-05-27', '12:51:00', 1001),
(4, 'ffyctch', '2022-06-15', '02:48:37', 1001),
(5, 'Hello feedback....', '2022-06-19', '16:35:36', 1001);

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
-- Indexes for table `campus_map`
--
ALTER TABLE `campus_map`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `classroom_disscussion_groups`
--
ALTER TABLE `classroom_disscussion_groups`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `firebase_key` (`room_key`),
  ADD KEY `classroom_branch_id` (`branch_id`);

--
-- Indexes for table `class_notices`
--
ALTER TABLE `class_notices`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `notice_department_id` (`department_id`),
  ADD KEY `notice_branch_id` (`branch_id`);

--
-- Indexes for table `club_events`
--
ALTER TABLE `club_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_club_id` (`club_id`);

--
-- Indexes for table `club_list`
--
ALTER TABLE `club_list`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `club_key` (`club_key`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `member_club_id` (`club_id`),
  ADD KEY `member_student_id` (`std_id`);

--
-- Indexes for table `college_blog`
--
ALTER TABLE `college_blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_student_id` (`std_id`),
  ADD KEY `blog_faculty_id` (`faculty_id`);

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
-- Indexes for table `e_library`
--
ALTER TABLE `e_library`
  ADD PRIMARY KEY (`srno`);

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
-- Indexes for table `student_bio`
--
ALTER TABLE `student_bio`
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `subject_details`
--
ALTER TABLE `subject_details`
  ADD PRIMARY KEY (`subject_code`),
  ADD KEY `subject_branch_id` (`branch_id`),
  ADD KEY `subject_faculty_id` (`faculty_id`);

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
  MODIFY `assi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branch_info`
--
ALTER TABLE `branch_info`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `campus_map`
--
ALTER TABLE `campus_map`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classroom_disscussion_groups`
--
ALTER TABLE `classroom_disscussion_groups`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_notices`
--
ALTER TABLE `class_notices`
  MODIFY `notice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_events`
--
ALTER TABLE `club_events`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `club_list`
--
ALTER TABLE `club_list`
  MODIFY `club_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `college_blog`
--
ALTER TABLE `college_blog`
  MODIFY `blog_id` int(10) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `e_library`
--
ALTER TABLE `e_library`
  MODIFY `srno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_info`
--
ALTER TABLE `faculty_info`
  MODIFY `faculty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4009;

--
-- AUTO_INCREMENT for table `student_account`
--
ALTER TABLE `student_account`
  MODIFY `std_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `table_feedback`
--
ALTER TABLE `table_feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `classroom_disscussion_groups`
--
ALTER TABLE `classroom_disscussion_groups`
  ADD CONSTRAINT `classroom_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_notices`
--
ALTER TABLE `class_notices`
  ADD CONSTRAINT `notice_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notice_department_id` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `club_events`
--
ALTER TABLE `club_events`
  ADD CONSTRAINT `event_club_id` FOREIGN KEY (`club_id`) REFERENCES `club_list` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `club_members`
--
ALTER TABLE `club_members`
  ADD CONSTRAINT `member_club_id` FOREIGN KEY (`club_id`) REFERENCES `club_list` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_student_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `college_blog`
--
ALTER TABLE `college_blog`
  ADD CONSTRAINT `blog_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_info` (`faculty_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `blog_student_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `student_bio`
--
ALTER TABLE `student_bio`
  ADD CONSTRAINT `student_bio_account_std_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON UPDATE CASCADE;

--
-- Constraints for table `subject_details`
--
ALTER TABLE `subject_details`
  ADD CONSTRAINT `subject_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_info` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_info` (`faculty_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `table_feedback`
--
ALTER TABLE `table_feedback`
  ADD CONSTRAINT `table_feedback_student_account_id` FOREIGN KEY (`std_id`) REFERENCES `student_account` (`std_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
