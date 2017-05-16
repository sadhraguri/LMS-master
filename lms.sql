-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 05:59 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `aid` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`aid`, `class_id`, `title`, `description`, `uploaded_by`, `uploaded_date`) VALUES
(1, 3, 'Test', 'On comming Monday', 9, '2017-03-24 05:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tbl`
--

CREATE TABLE `assignment_tbl` (
  `assignment_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `docs` varchar(350) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_tbl`
--

INSERT INTO `assignment_tbl` (`assignment_id`, `class_id`, `subject_id`, `docs`, `uploaded_by`) VALUES
(1, 2, 1, 'Quiz.zip', 4),
(2, 4, 1, NULL, 3825),
(3, 3, 1, NULL, 7),
(4, 3, 1, 'install.res.1028.dll', 11);

-- --------------------------------------------------------

--
-- Table structure for table `calender_class`
--

CREATE TABLE `calender_class` (
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `destails` varchar(250) NOT NULL,
  `uploaded_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calender_school`
--

CREATE TABLE `calender_school` (
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_school`
--

INSERT INTO `calender_school` (`cid`, `date`, `description`) VALUES
(1, '2016-12-29', 'nice ');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`) VALUES
(3, '10th'),
(4, 'dfedes');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `body` varchar(500) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `from_user`, `to_user`, `subject`, `body`, `date_time`) VALUES
(1, 9, 8, 'Welcome', 'Hii,', '2017-03-24 05:38:31'),
(2, 9, 8, 'cvd', 'fgbgfd', '2017-03-24 14:16:31'),
(3, 9, 8, 'fg', 'gfd', '2017-03-24 14:34:46'),
(4, 9, 8, 'ergrewergtrew', 'ghgfssghrlh, rkfmgkbpsm gkse bjklsmegoj;noa eogvnarkomgknv ajo vjornmfjokvnakj rejgvnmre,mfgpkvrzf wksfmkvamz,fgkv,mrkvm akrmzefkvm zeork vkizrmf', '2017-03-24 14:35:06'),
(5, 9, 9, 'rrr', 'rhgsterser', '2017-03-24 14:36:45'),
(6, 9, 8, 'hi', 'kjedmks', '2017-03-24 14:38:15'),
(7, 8, 8, 'rfe', 'rdefs', '2017-03-24 14:38:28'),
(8, 8, 9, 'rtr', 'ey6r', '2017-03-24 14:38:56'),
(9, 8, 11, 'hii', 'hello', '2017-03-25 07:20:09'),
(10, 26, 16, 'hbnj', 'kjnm', '2017-04-04 06:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`id`, `student_id`, `student_class`) VALUES
(1, 3, 2),
(2, 5, 2),
(3, 6, 3),
(4, 8, 3),
(5, 12, 3),
(6, 13, 3),
(7, 14, 3),
(8, 15, 3),
(9, 17, 3),
(10, 18, 3),
(11, 19, 3),
(12, 20, 3),
(13, 21, 3),
(14, 22, 3),
(15, 23, 3),
(16, 24, 3),
(17, 25, 3),
(18, 26, 3),
(19, 27, 3),
(20, 28, 3),
(21, 29, 3),
(22, 30, 3),
(23, 31, 3),
(24, 32, 3),
(25, 33, 3),
(26, 34, 3),
(27, 35, 3),
(28, 36, 3),
(29, 37, 3),
(30, 38, 3),
(31, 39, 3),
(32, 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `class_id`, `subject_name`) VALUES
(1, 2, 'PHP'),
(3, 2, '.NET'),
(4, 3, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `subject_assigned`
--

CREATE TABLE `subject_assigned` (
  `sid` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_class` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`id`, `teacher_id`, `teacher_class`, `subject_id`) VALUES
(1, 10, 3, 1),
(2, 11, 3, 1),
(3, 16, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_attempt`
--

CREATE TABLE `test_attempt` (
  `tapid` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_attempt`
--

INSERT INTO `test_attempt` (`tapid`, `test_id`, `qid`, `answer`, `status`, `user_id`) VALUES
(1, 1, 3, 'C', '0', 26),
(2, 1, 11, 'A', '0', 26),
(3, 1, 8, 'A', '0', 26),
(4, 1, 4, 'A', '0', 26),
(5, 1, 5, 'B', '0', 26),
(6, 1, 2, 'A', '0', 26),
(7, 1, 6, 'D', '0', 26),
(8, 1, 10, 'B', '0', 26),
(9, 1, 7, 'A', '0', 26),
(10, 1, 9, 'A', '0', 26),
(11, 2, 13, 'D', '0', 26),
(12, 2, 22, 'C', '0', 26),
(13, 2, 21, 'A', '0', 26),
(14, 2, 14, 'A', '0', 26),
(15, 2, 23, 'D', '0', 26),
(16, 2, 20, 'B', '0', 26),
(17, 2, 19, 'D', '0', 26),
(18, 2, 15, 'C', '0', 26),
(19, 2, 18, 'C', '0', 26),
(20, 2, 17, 'D', '0', 26),
(21, 2, 13, '0', '0', 40),
(22, 2, 22, '0', '0', 40),
(23, 2, 19, 'A', '0', 40),
(24, 2, 14, '0', '0', 40),
(25, 2, 21, 'A', '0', 40),
(26, 2, 23, '0', '0', 40),
(27, 2, 17, 'D', '0', 40),
(28, 2, 16, 'A', '0', 40),
(29, 2, 18, 'C', '0', 40),
(30, 2, 20, 'A', '0', 40),
(31, 1, 2, 'A', '0', 40),
(32, 1, 12, 'A', '0', 40),
(33, 1, 7, 'B', '0', 40),
(34, 1, 4, 'A', '0', 40),
(35, 1, 11, 'A', '0', 40),
(36, 1, 1, 'A', '0', 40),
(37, 1, 10, 'A', '0', 40),
(38, 1, 5, 'A', '0', 40),
(39, 1, 9, 'A', '0', 40),
(40, 1, 6, 'A', '0', 40);

-- --------------------------------------------------------

--
-- Table structure for table `test_question`
--

CREATE TABLE `test_question` (
  `tq_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `a` varchar(150) NOT NULL,
  `b` varchar(150) NOT NULL,
  `c` varchar(150) NOT NULL,
  `d` varchar(150) NOT NULL,
  `correct_ans` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_question`
--

INSERT INTO `test_question` (`tq_id`, `test_id`, `question`, `a`, `b`, `c`, `d`, `correct_ans`) VALUES
(1, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(2, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(3, 1, 'Delhi', 'country', 'state', 'capital ', 'all of above', 'C'),
(4, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(5, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(6, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(7, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(8, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(9, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(10, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(11, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(12, 1, 'india?', 'country', 'state', 'capital ', 'all of above', 'A'),
(13, 2, 'jj', 'j', 'jk', 'h', 'h', 'A'),
(14, 2, 'jnj', 'j', 'j', 'jj', 'jj', 'B'),
(15, 2, 'jnj', 'jn', 'jn', 'jn', 'jn', 'C'),
(16, 2, 'jnijn', 'ghg', 'hgh', 'ghg', 'hg', 'A'),
(17, 2, 'ij', 'jiji', 'iji', 'ijj', 'ij', 'C'),
(18, 2, 'hibjnhi', 'uhu', 'uhu', 'huh', 'uhj', 'B'),
(19, 2, 'uohjoiuhjiuhuiohjiuhuihn', 'uhju', 'huh', 'uh', 'uh', 'D'),
(20, 2, 'uhiouhiuhn', 'uhu', 'huhu', 'huh', 'uh', 'A'),
(21, 2, 'juhiuhiuhiu', 'huohu', 'hu', 'hu', 'hiuhiuhui', 'D'),
(22, 2, 'iuhiuhiuhui', 'hui', 'hiu', 'hiu', 'huh', 'A'),
(23, 2, 'iuhiuhuhiuh', 'iuhiu', 'hiu', 'hui', 'hu', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `test_tbl`
--

CREATE TABLE `test_tbl` (
  `test_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quiz_name` varchar(220) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_tbl`
--

INSERT INTO `test_tbl` (`test_id`, `subject_id`, `quiz_name`, `uploaded_by`, `noq`, `class_id`) VALUES
(1, 1, 'First', 11, 10, 3),
(2, 1, 'New Test', 10, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_full_name` varchar(150) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_login_id` varchar(110) DEFAULT NULL,
  `user_password` varchar(220) NOT NULL,
  `user_role` enum('admin','teacher','student') NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_full_name`, `user_email`, `user_contact`, `user_login_id`, `user_password`, `user_role`, `active`) VALUES
(1, 'Admin', 'admin@lms.com', '8556093704', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(9, 'ravdeeps3', 'ravdees3@gmail.com', '9653406905', 'ravdeeps3', 'c70903749ed556d98a4966fdfb9ccd04', 'student', 0),
(10, 'ravdeep', 'ra@gmail.com', '5465454542', 'ravdeeps3', 'c70903749ed556d98a4966fdfb9ccd04', 'teacher', 1),
(11, 'New', 'ra@gmail.com', '666', 'newt', 'c70903749ed556d98a4966fdfb9ccd04', 'teacher', 0),
(16, 'Ravdeep', 'ravdeeps3@gmail.com', '444', 'jas', 'c70903749ed556d98a4966fdfb9ccd04', 'student', 1),
(26, 'Ravdeep', 'ravdeeps3@gmail.com', '9653406905', 'rav', 'c70903749ed556d98a4966fdfb9ccd04', 'student', 1),
(40, 'jn', 'jnj@j', '454', 'jass', 'c70903749ed556d98a4966fdfb9ccd04', 'student', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `uploaded_by` (`uploaded_by`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `assignment_tbl`
--
ALTER TABLE `assignment_tbl`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `calender_class`
--
ALTER TABLE `calender_class`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `uploaded_by` (`uploaded_by`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `calender_school`
--
ALTER TABLE `calender_school`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `from` (`from_user`),
  ADD KEY `to` (`to_user`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_class` (`student_class`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `subject_assigned`
--
ALTER TABLE `subject_assigned`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `teacher_class` (`teacher_class`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `test_attempt`
--
ALTER TABLE `test_attempt`
  ADD PRIMARY KEY (`tapid`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `qid` (`qid`);

--
-- Indexes for table `test_question`
--
ALTER TABLE `test_question`
  ADD PRIMARY KEY (`tq_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `test_tbl`
--
ALTER TABLE `test_tbl`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assignment_tbl`
--
ALTER TABLE `assignment_tbl`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `calender_class`
--
ALTER TABLE `calender_class`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calender_school`
--
ALTER TABLE `calender_school`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subject_assigned`
--
ALTER TABLE `subject_assigned`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_attempt`
--
ALTER TABLE `test_attempt`
  MODIFY `tapid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `test_question`
--
ALTER TABLE `test_question`
  MODIFY `tq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `test_tbl`
--
ALTER TABLE `test_tbl`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
