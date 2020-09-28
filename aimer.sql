-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 08:48 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aimer`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai`
--

CREATE TABLE IF NOT EXISTS `ai` (
`id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `whats` longtext NOT NULL,
  `clge` longtext NOT NULL,
  `year` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `er_date` longtext NOT NULL,
  `ws` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap`
--

CREATE TABLE IF NOT EXISTS `ap` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `whats` longtext NOT NULL,
  `clge` longtext NOT NULL,
  `year` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `er_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
`id` int(255) NOT NULL,
  `sid` int(255) NOT NULL,
  `sname` longtext NOT NULL,
  `datem` varchar(150) NOT NULL,
  `check_in` longtext NOT NULL,
  `check_out` longtext NOT NULL,
  `action` longtext NOT NULL,
  `udate` longtext NOT NULL,
  `time_diff` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `sid`, `sname`, `datem`, `check_in`, `check_out`, `action`, `udate`, `time_diff`) VALUES
(94, 26, 'Varunkumaran.S', '04-02-19', '2019-02-04 11:48:19', '2019-02-04 11:48:38', 'present', '2019-02-04', '00:00:19'),
(95, 26, 'Varunkumaran.S', '04-02-19', '2019-02-04 11:48:53', '2019-02-04 11:54:38', 'present', '2019-02-04', '00:05:45'),
(96, 26, 'Varunkumaran.S', '04-02-19', '2019-02-04 11:56:44', '2019-02-04 11:59:52', 'present', '2019-02-04', '00:03:08'),
(97, 26, 'Varunkumaran.S', '04-02-19', '2019-02-06 12:39:47', '2019-02-06 14:40:52', 'present', '2019-02-06', '02:01:05'),
(98, 26, 'Varunkumaran.S', '06-02-19', '2019-02-06 14:41:20', '2019-02-06 14:41:25', 'present', '2019-02-06', '00:00:05'),
(100, 21, 'Niranith', '07-02-19', '2019-02-06 15:06:21', '2019-02-06 15:06:28', 'present', '2019-02-07', '00:00:07'),
(101, 21, 'Niranith', '07-02-19', '2019-02-06 15:07:19', '2019-02-06 17:08:07', 'present', '2019-02-07', '02:00:48'),
(102, 26, 'Varunkumaran.S', '06-02-19', '2019-02-05 18:15:25', '2019-02-05 18:16:13', 'present', '2019-02-06', '00:00:48'),
(103, 26, 'Varunkumaran.S', '06-02-19', '2019-02-05 18:17:09', '2019-02-05 18:17:33', 'present', '2019-02-06', '00:00:24'),
(104, 26, 'Varunkumaran.S', '06-02-19', '2019-02-05 18:19:16', '2019-02-05 18:21:56', 'present', '2019-02-06', '00:02:40'),
(105, 26, 'Varunkumaran.S', '06-02-19', '2019-02-06 11:27:39', 'req', 'present', '2019-02-06', ''),
(106, 41, 'uma uma', '13-10-19', '2019-10-12 22:27:27', 'req', 'present', '2019-10-13', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(120) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `l_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `c_date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`id` int(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mailid` varchar(120) NOT NULL,
  `contact` varchar(120) NOT NULL,
  `college name` varchar(120) NOT NULL,
  `dept` varchar(120) NOT NULL,
  `Year` varchar(120) NOT NULL,
  `course` varchar(120) NOT NULL,
  `mode` varchar(120) NOT NULL,
  `dt` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_tbl`
--

CREATE TABLE IF NOT EXISTS `c_tbl` (
`id` int(255) NOT NULL,
  `c_name` longtext NOT NULL,
  `cmp_name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `type` longtext NOT NULL,
  `contact` longtext NOT NULL,
  `ref_by` longtext NOT NULL,
  `addr` longtext NOT NULL,
  `loc` longtext NOT NULL,
  `mail_id` longtext NOT NULL,
  `website` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_tbl`
--

INSERT INTO `c_tbl` (`id`, `c_name`, `cmp_name`, `description`, `type`, `contact`, `ref_by`, `addr`, `loc`, `mail_id`, `website`) VALUES
(2, 'c name', 'cmp name', 'desc', 'all', '9655521244', 'reff', 'addr', 'loc', 'm@m', 'https://nandhainfotech.com/'),
(3, 'name', 'cmp name', 'desc', 'all', '1111111111', 'ref', 'addr', 'loc', 'a@a', 'https://nandhainfotech.com/');

-- --------------------------------------------------------

--
-- Table structure for table `des`
--

CREATE TABLE IF NOT EXISTS `des` (
`id` int(255) NOT NULL,
  `des` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `des`
--

INSERT INTO `des` (`id`, `des`) VALUES
(1, 'Chairman'),
(2, 'finance'),
(3, 'Operations'),
(4, 'Admin'),
(5, 'Technical head'),
(6, 'Cheif Executive Officer'),
(7, 'aes_operations'),
(8, 'Field Application Engineer'),
(9, 'Design Engineer'),
(10, 'java ');

-- --------------------------------------------------------

--
-- Table structure for table `e2e`
--

CREATE TABLE IF NOT EXISTS `e2e` (
`id` int(120) NOT NULL,
  `name` varchar(550) NOT NULL,
  `email` varchar(550) NOT NULL,
  `mobile` varchar(550) NOT NULL,
  `whats` varchar(550) NOT NULL,
  `clge` varchar(550) NOT NULL,
  `year` varchar(550) NOT NULL,
  `dept` varchar(550) NOT NULL,
  `aim` varchar(550) NOT NULL,
  `er_date` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `email_id` longtext NOT NULL,
  `m_number` longtext NOT NULL,
  `w_number` longtext NOT NULL,
  `e_number` longtext NOT NULL,
  `address` longtext NOT NULL,
  `date_of_joining` longtext NOT NULL,
  `b_group` longtext NOT NULL,
  `resume` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `et`
--

CREATE TABLE IF NOT EXISTS `et` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `whats` longtext NOT NULL,
  `clge` longtext NOT NULL,
  `year` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `er_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE IF NOT EXISTS `intern` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `pic` blob NOT NULL,
  `college` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `year` longtext NOT NULL,
  `category` longtext NOT NULL,
  `email_id` longtext NOT NULL,
  `password` longtext NOT NULL,
  `confirm_password` longtext NOT NULL,
  `m_number` longtext NOT NULL,
  `w_number` longtext NOT NULL,
  `e_number` longtext NOT NULL,
  `address` longtext NOT NULL,
  `date_of_joining` longtext NOT NULL,
  `b_group` longtext NOT NULL,
  `resume` longtext NOT NULL,
  `duration` longtext NOT NULL,
  `refered_by` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE IF NOT EXISTS `internship` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `whats` longtext NOT NULL,
  `clge` longtext NOT NULL,
  `year` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `er_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_allocate`
--

CREATE TABLE IF NOT EXISTS `job_allocate` (
`id` int(255) NOT NULL,
  `emp_id` longtext NOT NULL,
  `datek` longtext NOT NULL,
  `task` longtext NOT NULL,
  `status` longtext NOT NULL,
  `start_dt` longtext NOT NULL,
  `udate` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE IF NOT EXISTS `lead` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `contact_no` longtext NOT NULL,
  `email` longtext NOT NULL,
  `address` longtext NOT NULL,
  `source` longtext NOT NULL,
  `date_of_source` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `mail` longtext NOT NULL,
  `number` longtext NOT NULL,
  `skills` longtext NOT NULL,
  `exp` longtext NOT NULL,
  `upload` longtext NOT NULL,
  `date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(255) NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meet_tbl`
--

CREATE TABLE IF NOT EXISTS `meet_tbl` (
`id` int(255) NOT NULL,
  `mtitle` longtext NOT NULL,
  `date` longtext NOT NULL,
  `time` longtext NOT NULL,
  `mode` longtext NOT NULL,
  `users` longtext NOT NULL,
  `status` longtext NOT NULL,
  `mom` longtext NOT NULL,
  `com_time` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meet_tbl`
--

INSERT INTO `meet_tbl` (`id`, `mtitle`, `date`, `time`, `mode`, `users`, `status`, `mom`, `com_time`) VALUES
(1, 'information', '2019-01-15', '', 'Direct', 'tech@aimerelectronics.com', 'completed', '', '2019-01-30 21:54:15'),
(2, 'information', '2019-01-08', '', 'Direct', 'Nandha Infotech', 'completed', '', '2019-01-30 21:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `msg_tbl`
--

CREATE TABLE IF NOT EXISTS `msg_tbl` (
`id` int(255) NOT NULL,
  `fid` longtext NOT NULL,
  `tid` longtext NOT NULL,
  `msg` longtext NOT NULL,
  `time` longtext NOT NULL,
  `sub` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg_tbl`
--

INSERT INTO `msg_tbl` (`id`, `fid`, `tid`, `msg`, `time`, `sub`) VALUES
(1, 'admin@aimerelectronics.com', 'all', 'test mail', '2019-01-26 17:11:22', 'test'),
(2, 'admin@aimerelectronics.com', 'varun@aimerelectronics.com', '\r\ntest 2\r\n                                                                                               ', '2019-01-26 17:15:47', 'test'),
(3, 'admin@aimerelectronics.com', 'all', 'test 3\r\n\r\n                                                                                               ', '2019-01-26 17:18:01', 'test'),
(4, 'admin@aimerelectronics.com', 'all', '\r\n             hhh                                                                                  ', '2019-01-26 17:50:09', 'test'),
(5, 'varun@aimerelectronics.com', 'all', 'varunnnnnnnnnn                                  ', '2019-01-28 11:10:38', 'intro'),
(6, 'admin@aimerelectronics.com', 'all', 'hhhhhhhhhhhhh\r\n\r\n                                                                                               ', '2019-01-28 12:35:27', 'bbb'),
(7, 'tech@aimerelectronics.com', 'admin@aimerelectronics.com', '\r\n\r\n                                         sub                                                      ', '2019-01-28 03:39:39', 'Attendence');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(255) NOT NULL,
  `project_name` longtext NOT NULL,
  `starting_date` longtext NOT NULL,
  `no_of_peoples` longtext NOT NULL,
  `clg` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `year` longtext NOT NULL,
  `contact_no` longtext NOT NULL,
  `wats_no` longtext NOT NULL,
  `mail_id` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_dev`
--

CREATE TABLE IF NOT EXISTS `project_dev` (
  `id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `company` longtext NOT NULL,
  `refered_by` longtext NOT NULL,
  `s_date` longtext NOT NULL,
  `status` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE IF NOT EXISTS `project_status` (
`id` int(11) NOT NULL,
  `prj_id` longtext NOT NULL,
  `status` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`id`, `prj_id`, `status`) VALUES
(2, '1', 'progress'),
(3, '2', 'comp'),
(4, '3', 'pend');

-- --------------------------------------------------------

--
-- Table structure for table `pro_ass`
--

CREATE TABLE IF NOT EXISTS `pro_ass` (
`id` int(255) NOT NULL,
  `project` longtext NOT NULL,
  `prj_id` longtext NOT NULL,
  `uid` longtext NOT NULL,
  `user` longtext NOT NULL,
  `status` longtext NOT NULL,
  `reason` longtext NOT NULL,
  `type` longtext NOT NULL,
  `des` longtext NOT NULL,
  `cmp` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_ass`
--

INSERT INTO `pro_ass` (`id`, `project`, `prj_id`, `uid`, `user`, `status`, `reason`, `type`, `des`, `cmp`) VALUES
(13, 'phase1', '1', '26', 'varun@aimerelectronics.com', '', '', '', '', ''),
(14, 'prj name', '2', '26', 'Varunkumaran.S', 'completed', 'bbb', '', '', ''),
(15, 'phase1', '1', 'all', '', '', '', '', '', ''),
(16, 'rooo', '7', 'all', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pro_tbl`
--

CREATE TABLE IF NOT EXISTS `pro_tbl` (
`id` int(255) NOT NULL,
  `project_name` longtext NOT NULL,
  `service_type` longtext NOT NULL,
  `project_code` longtext NOT NULL,
  `project_order` longtext NOT NULL,
  `po_date` longtext NOT NULL,
  `start_date` longtext NOT NULL,
  `project_duration` longtext NOT NULL,
  `customer_name` longtext NOT NULL,
  `customer_contact` longtext NOT NULL,
  `delivery_date` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_tbl`
--

INSERT INTO `pro_tbl` (`id`, `project_name`, `service_type`, `project_code`, `project_order`, `po_date`, `start_date`, `project_duration`, `customer_name`, `customer_contact`, `delivery_date`) VALUES
(1, 'phase1', '', '123', '1', '2019-01-08', '2019-01-02', '5', 'd', 'r', '2019-01-26'),
(2, 'prj name', '2', 'prj code', 'po', '2019-01-28', '2019-01-31', 'prj', 'cust', 'cust', '2019-01-22'),
(3, 'pcb', '2', '123', '88', '0008-08-08', '0008-08-08', '888', '888', '888', '0008-08-08'),
(4, 'ppppppppp', '2', '123hgg', 'hhh', '8989-08-09', '0789-07-08', 'h', 'h', '79867', '0009-08-08'),
(5, 'project nandha', '6', '123', '1', '2019-01-08', '2019-01-08', '5', 'd', '79867', '2019-01-16'),
(6, 'php php php', '6', 'n', 'h', '2019-01-16', '2019-01-24', '6', 'jjjj', 'kkk', '2019-01-23'),
(7, 'rooo', 'all', '123', 'po', '2019-01-01', '2019-01-02', 'kkkk', 'lllllllll', 'oooooo', '2019-03-13'),
(8, 'gg', '8', 'g', 'g', '2019-02-04', '2019-02-28', 'gg', 'gg', 'gg', '2019-02-28'),
(9, 'pname', '9', 'pcode', 'po', '2019-02-01', '2019-02-06', '3mon', 'cust name', '2222222222', '2019-04-06'),
(10, 'pname', 'all', 'pcode', 'poooooo', '2019-02-01', '2019-02-20', '3 mon', 'cust', '4444444444', '2019-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(255) NOT NULL,
  `employee_id` longtext NOT NULL,
  `daten` longtext NOT NULL,
  `task` longtext NOT NULL,
  `status` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `std1`
--

CREATE TABLE IF NOT EXISTS `std1` (
  `id` int(255) NOT NULL,
  `student_name` longtext NOT NULL,
  `department` longtext NOT NULL,
  `year` longtext NOT NULL,
  `mail_id` longtext NOT NULL,
  `number` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentamabas`
--

CREATE TABLE IF NOT EXISTS `studentamabas` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `mobile` longtext NOT NULL,
  `whats` longtext NOT NULL,
  `clge` longtext NOT NULL,
  `year` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `er-date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task_log`
--

CREATE TABLE IF NOT EXISTS `task_log` (
`id` int(11) NOT NULL,
  `pid` longtext NOT NULL,
  `uid` longtext NOT NULL,
  `time` longtext NOT NULL,
  `start` longtext NOT NULL,
  `completed` longtext NOT NULL,
  `not_completed` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_log`
--

INSERT INTO `task_log` (`id`, `pid`, `uid`, `time`, `start`, `completed`, `not_completed`) VALUES
(14, '', '26', '2019-01-25 14:09:30', 'start', 'req', 'not_completed'),
(15, '', '26', '2019-01-25 14:35:17', 'req', 'req', 'req'),
(16, '', '26', '2019-01-25 17:00:58', 'start', 'req', 'not_completed'),
(17, '', '38', '2019-01-30 21:34:24', 'req', 'req', 'req'),
(18, '', '40', '2019-01-30 22:49:43', 'req', 'req', 'req'),
(19, '', '39', '2019-01-30 23:38:34', 'req', 'req', 'req'),
(20, '', '21', '2019-01-30 23:45:27', 'req', 'req', 'req'),
(21, '', '26', '2019-02-06 11:24:53', 'start', 'req', 'req'),
(22, '', '26', '2019-02-06 11:30:18', 'start', 'req', 'req'),
(23, '', 'all', '2019-02-06 11:44:07', 'start', 'completed', 'not_completed'),
(24, '', '26', '2019-02-06 11:46:39', 'req', 'req', 'req'),
(25, '', '26', '2019-02-06 13:36:52', 'req', 'req', 'req');

-- --------------------------------------------------------

--
-- Table structure for table `task_tbl`
--

CREATE TABLE IF NOT EXISTS `task_tbl` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `designation` longtext NOT NULL,
  `uname` longtext NOT NULL,
  `prj_id` longtext NOT NULL,
  `fdes` longtext NOT NULL,
  `time` longtext NOT NULL,
  `date_of_completion` longtext NOT NULL,
  `status` longtext NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_tbl`
--

INSERT INTO `task_tbl` (`id`, `name`, `description`, `designation`, `uname`, `prj_id`, `fdes`, `time`, `date_of_completion`, `status`, `reason`) VALUES
(23, 't1', 'd1', '', '26', '', '', '2019-01-25 14:09:30', '2019-01-25', 'not_completed', ''),
(24, 't3', 'd3', '', '26', '', '', '2019-01-25 14:35:17', '2019-01-25', '', '0'),
(25, 'my task', 'my desc', '', '26', '', '', '2019-01-25 17:00:58', '2019-01-25', 'not_completed', '9'),
(26, 'php', 'php', '', '38', '', '', '2019-01-30 21:34:24', '2019-01-08', '', '0'),
(27, 'php', 'php', '', '40', '', '', '2019-01-30 22:49:43', '2019-01-21', '', '0'),
(28, 'ppppppppxxxxxxxx', 'ppppppppxxxxxxxx', '', '39', '', '', '2019-01-30 23:38:34', '2019-01-14', '', '0'),
(29, 'mmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmm', '', '21', '', '', '2019-01-30 23:45:27', '2019-01-08', '', '0'),
(30, 'jjjjjjjjjjjjjjjjjjj', 'desc', '', '26', '', '', '2019-02-06 11:24:53', '2019-02-14', 'start', '0'),
(31, 'task', 'desc', '', '26', '', '', '2019-02-06 11:30:18', '2019-02-06', 'start', '0'),
(32, 'royal', 'royal desc', '', 'all', '', '', '2019-02-06 11:44:07', '2019-02-13', 'completed', '4'),
(33, 'varun', 'varun desc', '', '26', '', '', '2019-02-06 11:46:39', '2019-02-21', '', '0'),
(34, 'work task', 'desc', '', '26', '', '', '2019-02-06 13:36:51', '2019-02-21', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tot_work_hrs`
--

CREATE TABLE IF NOT EXISTS `tot_work_hrs` (
`id` int(11) NOT NULL,
  `work_hours` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tot_work_hrs`
--

INSERT INTO `tot_work_hrs` (`id`, `work_hours`) VALUES
(1, '8');

-- --------------------------------------------------------

--
-- Table structure for table `tsk_reason`
--

CREATE TABLE IF NOT EXISTS `tsk_reason` (
`id` int(11) NOT NULL,
  `uid` longtext NOT NULL,
  `time` longtext NOT NULL,
  `reason_cnt` longtext NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tsk_reason`
--

INSERT INTO `tsk_reason` (`id`, `uid`, `time`, `reason_cnt`, `reason`) VALUES
(17, '26', '2019-01-25 14:01:41', '', 'm1'),
(18, '26', '2019-01-25 14:01:41', '', 'm1'),
(19, '26', '2019-01-25 14:09:30', '', 'w'),
(20, '26', '2019-01-25 14:09:30', '', 'w'),
(21, '26', '2019-01-25 14:09:30', '', 'w'),
(22, '26', '2019-01-25 14:09:30', '', 'w'),
(23, '26', '2019-01-25 14:09:30', '', 'w'),
(24, '26', '2019-01-25 17:00:58', '', 'reason1'),
(25, '26', '2019-01-25 17:00:58', '1', 'reason1'),
(26, '26', '2019-01-25 17:00:58', '1', '777'),
(27, '26', '2019-01-25 17:00:58', '1', '555'),
(28, '26', '2019-01-25 17:00:58', '1', '555'),
(29, '26', '2019-01-25 17:00:58', '1', '555'),
(30, '26', '2019-01-25 17:00:58', '1', '555'),
(31, '26', '2019-01-25 17:00:58', '1', '99'),
(32, '26', '2019-01-25 17:00:58', '9', '99'),
(33, 'all', '2019-02-06 11:44:07', '1', 'msg1'),
(34, 'all', '2019-02-06 11:44:07', '2', 'msg1'),
(35, 'all', '2019-02-06 11:44:07', '3', 'msg 2'),
(36, 'all', '2019-02-06 11:44:07', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
`id` int(255) NOT NULL,
  `type` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'pccb'),
(2, 'CADD-design'),
(3, 'Design'),
(4, 'Assembly'),
(5, 'Design Support'),
(6, 'PHP'),
(7, ''),
(8, 'bbbb'),
(9, 'bbbbbbbbbbb');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UID` bigint(20) unsigned NOT NULL,
  `Fuid` varchar(100) NOT NULL,
  `Ffname` varchar(60) NOT NULL,
  `Femail` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_dtl`
--

CREATE TABLE IF NOT EXISTS `user_dtl` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `prof` varchar(60) NOT NULL,
  `company` longtext NOT NULL,
  `bio` longtext NOT NULL,
  `pass` varchar(50) NOT NULL,
  `created_dtm` date NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
`id` int(11) NOT NULL,
  `user_name` longtext NOT NULL,
  `phno` longtext NOT NULL,
  `email` longtext NOT NULL,
  `college_name` longtext NOT NULL,
  `dept` longtext NOT NULL,
  `year` longtext NOT NULL,
  `aim` longtext NOT NULL,
  `reg_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usr_reg`
--

CREATE TABLE IF NOT EXISTS `usr_reg` (
`id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL,
  `designation` longtext NOT NULL,
  `address` longtext NOT NULL,
  `contact` longtext NOT NULL,
  `emergency_contact` longtext NOT NULL,
  `doj` longtext NOT NULL,
  `employee_id` longtext NOT NULL,
  `per_mail` longtext NOT NULL,
  `comp_mail` longtext NOT NULL,
  `photo` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `experiance` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_reg`
--

INSERT INTO `usr_reg` (`id`, `name`, `username`, `password`, `designation`, `address`, `contact`, `emergency_contact`, `doj`, `employee_id`, `per_mail`, `comp_mail`, `photo`, `qualification`, `experiance`) VALUES
(39, 'Umauma', 'nandha123@gmail.com', 'nandhainfotech', 'PHP', '111', 'hhhj', 'hhh', '2019-01-08', '12', 'nandha@gmail.com', 'nandha@gmail.com', 'image/logo.png', 'hhh', 'hhh'),
(40, 'Aimer Aimerrrrrrrrr', 'Aimer@gmail.com', 'aimer', 'php', 'none', '1111111111', 'h', '2019-02-03', '1', 'aimer@gmail.com', 'aimer@gmail.com', 'image/f01e9e3e032b10000788c8c3715c8176--pinterest-fails-happy-hour.jpg', 'h', 'h'),
(41, 'uma uma', 'uma@gmail.com', '123', 'admin', '1', '1234567890', '1234567890', '2019-01-21', '1', '1@gmail.com', '1@gmail.copm', 'image/LOGO (1).png', 'be', '1'),
(42, 'fff', 'fff', 'ffff', 'fffff', 'Anumanthap', '9655521244', 'SHANTHI M', '2019-02-02', 'AES2018', 'kiruthi.mks1617@gmail.com', 'kiruthi.mks1617@gmail.com', 'image/5.jpg', 'qqqq', 'qqq'),
(43, 'gggg', 'gg', 'g', 'g', 'Anumanthap', '9655521244', 'SHANTHI M', '2019-02-02', 'AES2018gggg', 'kiruthi.mks1617@gmail.com', 'kiruthi.mks1617@gmail.com', 'image/5.jpg', 's', 's'),
(44, 'name', 'uname', 'pwd', 'desig', 'adddr', '1111111111', '1111111111', '2019-02-05', 'AES2018033', 'm@m', 'm@n', 'image/f01e9e3e032b10000788c8c3715c8176--pinterest-fails-happy-hour.jpg', 'cse', '10');

-- --------------------------------------------------------

--
-- Table structure for table `ven_tbl`
--

CREATE TABLE IF NOT EXISTS `ven_tbl` (
`id` int(255) NOT NULL,
  `vname` longtext NOT NULL,
  `po_code` longtext NOT NULL,
  `po_date` longtext NOT NULL,
  `contact` longtext NOT NULL,
  `mail` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `description` longtext NOT NULL,
  `payment` longtext NOT NULL,
  `vendor_Code` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ven_tbl`
--

INSERT INTO `ven_tbl` (`id`, `vname`, `po_code`, `po_date`, `contact`, `mail`, `phone`, `description`, `payment`, `vendor_Code`) VALUES
(1, 'kavikavi', '', '', 'b', 'hhh@gmail.com', '9999944444', 'b', 'b', 'b'),
(2, 'n', '', '', 'n', 'n@n', '0000000000', 'n', 'n', 'n'),
(3, 'name', '', '', 'addr', 'm@m', '2222222222', 'desc', 'pay', 'ven code'),
(4, 'nameq', '', '', 'addr', 'n@m', '1111110000', 'desc', 'payment', 'code'),
(5, 'm', 'm', '2019-02-01', 'm', 'm@m', '1111111111', 'm', 'm', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `web-offer`
--

CREATE TABLE IF NOT EXISTS `web-offer` (
  `id` int(255) NOT NULL,
  `name` longtext NOT NULL,
  `mail` longtext NOT NULL,
  `number` longtext NOT NULL,
  `whatsapp` longtext NOT NULL,
  `address` longtext NOT NULL,
  `business` longtext NOT NULL,
  `et` varchar(255) NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_allocate`
--

CREATE TABLE IF NOT EXISTS `work_allocate` (
  `id` int(255) NOT NULL,
  `date` longtext NOT NULL,
  `specific_work` longtext NOT NULL,
  `department` longtext NOT NULL,
  `u_date` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_hrs`
--

CREATE TABLE IF NOT EXISTS `work_hrs` (
`id` int(11) NOT NULL,
  `uid` longtext NOT NULL,
  `date` longtext NOT NULL,
  `work_hrs` longtext NOT NULL,
  `compensatory_hrs` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_hrs`
--

INSERT INTO `work_hrs` (`id`, `uid`, `date`, `work_hrs`, `compensatory_hrs`) VALUES
(10, '26', '2019-02-04', '00:09:12', '07:50:48'),
(11, '26', '2019-02-06', '02:05:04', '05:54:56'),
(12, '21', '2019-02-07', '02:00:56', '-05:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `work_status`
--

CREATE TABLE IF NOT EXISTS `work_status` (
  `id` int(255) NOT NULL,
  `task` longtext NOT NULL,
  `status` longtext NOT NULL,
  `department` longtext NOT NULL,
  `progress` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai`
--
ALTER TABLE `ai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap`
--
ALTER TABLE `ap`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_tbl`
--
ALTER TABLE `c_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `des`
--
ALTER TABLE `des`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e2e`
--
ALTER TABLE `e2e`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `et`
--
ALTER TABLE `et`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_allocate`
--
ALTER TABLE `job_allocate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet_tbl`
--
ALTER TABLE `meet_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_tbl`
--
ALTER TABLE `msg_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_dev`
--
ALTER TABLE `project_dev`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_status`
--
ALTER TABLE `project_status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_ass`
--
ALTER TABLE `pro_ass`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_tbl`
--
ALTER TABLE `pro_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std1`
--
ALTER TABLE `std1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentamabas`
--
ALTER TABLE `studentamabas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_log`
--
ALTER TABLE `task_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_tbl`
--
ALTER TABLE `task_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tot_work_hrs`
--
ALTER TABLE `tot_work_hrs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tsk_reason`
--
ALTER TABLE `tsk_reason`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `user_dtl`
--
ALTER TABLE `user_dtl`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usr_reg`
--
ALTER TABLE `usr_reg`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_tbl`
--
ALTER TABLE `ven_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web-offer`
--
ALTER TABLE `web-offer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_allocate`
--
ALTER TABLE `work_allocate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_hrs`
--
ALTER TABLE `work_hrs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_status`
--
ALTER TABLE `work_status`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai`
--
ALTER TABLE `ai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap`
--
ALTER TABLE `ap`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_tbl`
--
ALTER TABLE `c_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `des`
--
ALTER TABLE `des`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `e2e`
--
ALTER TABLE `e2e`
MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et`
--
ALTER TABLE `et`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job_allocate`
--
ALTER TABLE `job_allocate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meet_tbl`
--
ALTER TABLE `meet_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `msg_tbl`
--
ALTER TABLE `msg_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `project_status`
--
ALTER TABLE `project_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pro_ass`
--
ALTER TABLE `pro_ass`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pro_tbl`
--
ALTER TABLE `pro_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `studentamabas`
--
ALTER TABLE `studentamabas`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `task_log`
--
ALTER TABLE `task_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `task_tbl`
--
ALTER TABLE `task_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tot_work_hrs`
--
ALTER TABLE `tot_work_hrs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tsk_reason`
--
ALTER TABLE `tsk_reason`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usr_reg`
--
ALTER TABLE `usr_reg`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `ven_tbl`
--
ALTER TABLE `ven_tbl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `work_hrs`
--
ALTER TABLE `work_hrs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
