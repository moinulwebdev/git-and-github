-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 02:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_semester`
--

CREATE TABLE `add_semester` (
  `semester_id` int(11) NOT NULL,
  `semester_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_semester`
--

INSERT INTO `add_semester` (`semester_id`, `semester_name`) VALUES
(1, 'Spring-2025'),
(2, 'Summer-2025'),
(3, 'Fall-2025');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(50) NOT NULL,
  `a_email` varchar(100) NOT NULL,
  `a_user_id` varchar(255) NOT NULL,
  `a_pass` varchar(255) NOT NULL,
  `a_reset_code` varchar(255) NOT NULL,
  `a_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`a_id`, `a_name`, `a_email`, `a_user_id`, `a_pass`, `a_reset_code`, `a_status`) VALUES
(1, 'Moinul Islam Shoron', 'mdmoinulislamshoron100@gmail.com', 'UG02-01', 'c6f057b86584942e415435ffb1fa93d4', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `advisor_list`
--

CREATE TABLE `advisor_list` (
  `ad_id` int(11) NOT NULL,
  `ad_program` int(11) NOT NULL,
  `ad_department` int(11) NOT NULL,
  `ad_teacher_id` int(11) NOT NULL,
  `ad_batch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisor_list`
--

INSERT INTO `advisor_list` (`ad_id`, `ad_program`, `ad_department`, `ad_teacher_id`, `ad_batch`) VALUES
(26, 1, 3, 7, '56'),
(27, 1, 3, 7, '58'),
(28, 1, 3, 9, '54'),
(29, 1, 3, 10, '57'),
(30, 1, 2, 16, '23'),
(41, 1, 3, 11, '60'),
(43, 1, 2, 20, '57');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_program` int(11) NOT NULL,
  `course_department` int(11) NOT NULL,
  `course_syllabus` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_program`, `course_department`, `course_syllabus`, `course_code`, `course_title`, `course_credit`) VALUES
(19, 1, 4, 11, 'PHA-3', 'Pharmacy-3', 1),
(20, 1, 4, 11, 'PHA-2', 'Pharmacy-2', 2),
(22, 1, 4, 11, 'PHA-4', 'Pharmacy-4', 2),
(23, 1, 4, 11, 'PHA-5', 'Pharmacy-5', 1.5),
(25, 1, 4, 11, 'PHA-7', 'Pharmacy-7', 2),
(26, 1, 4, 11, 'PHA-8', 'Pharmacy-8', 3),
(27, 1, 4, 11, 'PHA-9', 'Pharmacy-9', 1.5),
(28, 1, 4, 11, 'PHA-10', 'Pharmacy-10', 2),
(54, 1, 3, 7, 'CSE-0411', 'Image Processing And Computer Vission', 3),
(55, 1, 3, 7, 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75),
(56, 1, 3, 7, 'CSE-0437', 'Bioinformatics', 3),
(57, 1, 3, 7, 'CSE-0438', 'Bioinformatics Lab', 0.75),
(58, 1, 3, 7, 'CSE-0400', 'Final Project', 4),
(59, 1, 3, 6, 'CSE-0311', 'Computer Networks', 3),
(60, 1, 3, 6, 'CSE-0312', 'Computer Networks Lab', 0.75),
(61, 1, 3, 6, 'CSE-0317', 'Software Engineering', 3),
(62, 1, 3, 6, 'CSE-0370', 'System Analysis and Design', 3),
(63, 1, 3, 6, 'CSE-0309', 'Operating System', 3),
(64, 1, 3, 8, 'CSE-0401', 'E-Commerce and Web Engineering', 3),
(65, 1, 3, 8, 'CSE-0402', 'E-Commerce and Web Engineering Lab', 0.75),
(66, 1, 3, 8, 'CSE-0420', 'Machine Learning', 3),
(67, 1, 3, 8, 'CSE-0421', 'Machine Learning Lab', 0.75),
(68, 1, 3, 8, 'CSE-1102', 'Structured Programming Language', 3),
(69, 1, 3, 8, 'CSE-1103', 'Structured Programming Language Lab', 0.75),
(70, 1, 3, 20, 'CSE-2111', 'Computer Architecture', 3),
(71, 1, 3, 20, 'CSE-2103', 'Automata Theory and Compiler', 3),
(72, 1, 3, 20, 'CSE-2105', 'Database Management System', 3),
(73, 1, 3, 20, 'CSE-2106', 'Database Management System Lab', 0.75),
(74, 1, 3, 20, 'EEE-1101', 'Electrical Circuit Analysis', 3),
(75, 1, 3, 20, 'EEE-2101', 'Digital Logic Design', 3),
(78, 1, 3, 8, 'Com-1', 'Computer-1', 0.75),
(79, 1, 3, 8, 'Com-2', 'Computer-2', 2),
(80, 1, 3, 8, 'Com-3', 'Computer-3', 1.5),
(84, 1, 2, 4, 'FOOD-001', 'Sugar and Confectionery Engineering', 3),
(85, 1, 2, 4, 'FOOD-002', 'Oil and Fat Engineering', 3),
(86, 1, 2, 4, 'FOOD-003', 'Food Process Engineering', 2),
(87, 1, 2, 4, 'FOOD-004', 'Cereal and Grain Processing', 2),
(88, 1, 2, 4, 'FOOD-005', 'Bioprocessing in Food Engineering', 3),
(89, 1, 2, 4, 'FOOD-006', 'Food Quality Control and Assurance', 0.75),
(90, 1, 2, 4, 'FOOD-007', 'Food Packaging Technology', 0.75),
(91, 1, 2, 4, 'FOOD-008', 'Heat and Mass Transfer in Food Processing', 3),
(92, 1, 2, 4, 'FOOD-009', 'Food Waste Management and Recycling', 2),
(93, 1, 2, 4, 'FOOD-010', 'Food Engineering Thermodynamics', 2),
(94, 1, 2, 5, 'FOOD-011', 'Advanced Food Processing Techniques', 3),
(95, 1, 2, 5, 'FOOD-012', 'Food Engineering Materials', 3),
(96, 1, 2, 5, 'FOOD-013', 'Thermal Processing of Foods', 3),
(97, 1, 2, 5, 'FOOD-014', 'Food Refrigeration and Freezing', 0.75),
(98, 1, 2, 5, 'FOOD-015', 'Food Bioprocessing and Fermentation', 0.75),
(99, 1, 2, 5, 'FOOD-016', 'Food Sensory Analysis and Design', 2),
(100, 1, 2, 5, 'FOOD-017', 'Engineering of Fruit and Vegetable Products', 2),
(101, 1, 2, 5, 'FOOD-018', 'Food Microstructure Engineering', 3),
(102, 1, 2, 5, 'FOOD-019', 'Advanced Refrigeration and Cryogenics in Food', 3),
(103, 1, 2, 5, 'FOOD-020', 'Food Biotechnology and Genetic Engineering', 3),
(104, 1, 2, 5, 'FOOD-021', 'Food Robotics and Automation', 4),
(105, 1, 3, 7, 'CSE-0011', 'Fundamental of Computer', 3),
(106, 1, 3, 7, 'CSE-1011', 'Discreate Mathematics', 3),
(107, 1, 3, 7, 'CSE-2101', 'Object Oriented Programming Language', 3),
(109, 1, 3, 7, 'CSE-0101', 'Computer Fundamental', 3),
(110, 1, 3, 7, 'CSE-0102', 'Computer Fundamental Lab', 0.75),
(112, 1, 3, 7, 'CSE-0212', 'Object Oriented Language Lab', 0.75),
(115, 2, 12, 19, 'ES-0101', 'Environmental Chemistry', 2),
(116, 2, 12, 19, 'ES-0102', 'Environmental Biology', 2),
(117, 2, 12, 19, 'ES-0103', 'Environmental Physics', 2),
(118, 2, 12, 19, 'ES-0104', 'Environmental Policy and Law', 3),
(119, 2, 12, 19, 'ES-0105', 'Ecology and Ecosystem Dynamics', 2),
(120, 2, 12, 19, 'ES-0106', 'Climate Change and Sustainability', 3),
(121, 2, 12, 19, 'ES-0107', 'Geospatial Analysis and GIS', 2),
(122, 2, 12, 19, 'ES-0108', 'Research Methods and Data Analysis', 3),
(123, 2, 12, 19, 'ES-0201', 'Water Resource Management', 3),
(124, 2, 12, 19, 'ES-0202', 'Soil and Land Use Management', 2),
(125, 2, 12, 19, 'ES-0203', 'Air Pollution and Control', 3),
(126, 2, 12, 19, 'ES-0204', 'Energy and Environment', 2),
(127, 2, 12, 19, 'ES-0205', 'Waste Management and Recycling', 3),
(128, 2, 12, 19, 'ES-0206', 'Biodiversity Conservation', 2),
(129, 2, 12, 19, 'ES-0207', 'Urban and Industrial Environmental Management', 3),
(130, 2, 12, 19, 'ES-0208', 'Environmental Toxicology', 2),
(131, 2, 12, 19, 'ES-0209', 'Renewable Energy Technologies', 2),
(132, 2, 12, 19, 'ES-0210', 'Sustainable Development Practices', 3),
(134, 1, 3, 7, 'CSE-4041', 'Engineering Ethics', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_selection`
--

CREATE TABLE `course_selection` (
  `id` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `syllabus` int(11) NOT NULL,
  `batchess` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `years` varchar(255) NOT NULL,
  `start_dates` date NOT NULL,
  `end_date` date NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_selection`
--

INSERT INTO `course_selection` (`id`, `program`, `department`, `syllabus`, `batchess`, `semester`, `years`, `start_dates`, `end_date`, `course_code`, `course_name`, `credit`) VALUES
(11, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-1', 'Pharmacy-1', 2),
(12, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-2', 'Pharmacy-2', 2),
(13, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-4', 'Pharmacy-4', 2),
(14, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-5', 'Pharmacy-5', 1.5),
(15, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-7', 'Pharmacy-7', 2),
(16, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-9', 'Pharmacy-9', 1.5),
(17, 1, 4, 11, '', 1, '2025', '2024-12-14', '2024-12-18', 'PHA-10', 'Pharmacy-10', 2),
(24, 1, 3, 7, '', 1, '2025', '2025-01-01', '2025-01-25', 'CSE-0411', 'Image Processing And Computer Vission', 3),
(25, 1, 3, 7, '', 1, '2025', '2025-01-01', '2025-01-25', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75),
(26, 1, 3, 7, '', 1, '2025', '2025-01-01', '2025-01-25', 'CSE-0437', 'Bioinformatics', 3),
(27, 1, 3, 7, '', 1, '2025', '2025-01-01', '2025-01-25', 'CSE-0438', 'Bioinformatics Lab', 0.75),
(28, 1, 3, 7, '', 1, '2025', '2025-01-01', '2025-01-25', 'CSE-0400', 'Final Project', 4),
(29, 1, 3, 6, '', 2, '2025', '2025-04-09', '2025-04-29', 'CSE-0311', 'Computer Networks', 3),
(30, 1, 3, 6, '', 2, '2025', '2025-04-09', '2025-04-29', 'CSE-0312', 'Computer Networks Lab', 0.75),
(31, 1, 3, 6, '', 2, '2025', '2025-04-09', '2025-04-29', 'CSE-0317', 'Software Engineering', 3),
(32, 1, 3, 6, '', 2, '2025', '2025-04-09', '2025-04-29', 'CSE-0370', 'System Analysis and Design', 3),
(33, 1, 3, 6, '', 2, '2025', '2025-04-09', '2025-04-29', 'CSE-0309', 'Operating System', 3),
(34, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-0401', 'E-Commerce and Web Engineering', 3),
(35, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-0402', 'E-Commerce and Web Engineering Lab', 0.75),
(36, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-0420', 'Machine Learning', 3),
(37, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-0421', 'Machine Learning Lab', 0.75),
(38, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-1102', 'Structured Programming Language', 3),
(39, 1, 3, 8, '', 3, '2025', '2025-09-05', '2025-09-25', 'CSE-1103', 'Structured Programming Language Lab', 0.75),
(56, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'CSE-2111', 'Computer Architecture', 3),
(57, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'CSE-2103', 'Automata Theory and Compiler', 3),
(58, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'CSE-2105', 'Database Management System', 3),
(59, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'CSE-2106', 'Database Management System Lab', 0.75),
(60, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'EEE-1101', 'Electrical Circuit Analysis', 3),
(61, 1, 3, 20, '', 1, '2025', '2025-01-01', '2025-01-30', 'EEE-2101', 'Digital Logic Design', 3),
(62, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-001', 'Sugar and Confectionery Engineering', 3),
(63, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-002', 'Oil and Fat Engineering', 3),
(64, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-003', 'Food Process Engineering', 2),
(65, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-004', 'Cereal and Grain Processing', 2),
(66, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-005', 'Bioprocessing in Food Engineering', 3),
(67, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-006', 'Food Quality Control and Assurance', 0.75),
(68, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-007', 'Food Packaging Technology', 0.75),
(69, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-008', 'Heat and Mass Transfer in Food Processing', 3),
(70, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-009', 'Food Waste Management and Recycling', 2),
(71, 1, 2, 4, '', 1, '2025', '2025-01-01', '2025-01-30', 'FOOD-010', 'Food Engineering Thermodynamics', 2),
(82, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-011', 'Advanced Food Processing Techniques', 3),
(83, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-012', 'Food Engineering Materials', 3),
(84, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-013', 'Thermal Processing of Foods', 3),
(85, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-014', 'Food Refrigeration and Freezing', 0.75),
(86, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-015', 'Food Bioprocessing and Fermentation', 0.75),
(87, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-016', 'Food Sensory Analysis and Design', 2),
(88, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-017', 'Engineering of Fruit and Vegetable Products', 2),
(89, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-018', 'Food Microstructure Engineering', 3),
(90, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-019', 'Advanced Refrigeration and Cryogenics in Food', 3),
(91, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-020', 'Food Biotechnology and Genetic Engineering', 3),
(92, 1, 2, 5, '', 2, '2025', '2025-04-15', '2025-05-04', 'FOOD-021', 'Food Robotics and Automation', 4),
(104, 1, 3, 7, '', 2, '2025', '2025-01-15', '2025-01-26', 'CSE-0101', 'Computer Fundamental', 3),
(105, 1, 3, 7, '', 2, '2025', '2025-01-15', '2025-01-26', 'CSE-0102', 'Computer Fundamental Lab', 0.75),
(106, 1, 3, 7, '', 2, '2025', '2025-01-15', '2025-01-26', 'CSE-0212', 'Object Oriented Language Lab', 0.75);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(255) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_name`, `pro_id`) VALUES
(1, 'Bachelor of Architecture (B.Arch)', 1),
(2, 'B.Sc in Food Engineering and Nutrition Science', 1),
(3, 'B.Sc. in Computer Science & Engineering', 1),
(4, 'B. Pharm – Bachelor of Pharmacy', 1),
(5, 'BBA – Bachelor of Business Administration', 1),
(6, 'BA (Hons) in English', 1),
(7, 'LL.B. (Hons) – Bachelor of Laws', 1),
(8, 'MBA – Master of Business Administration', 2),
(9, 'MBA Healthcare Management', 2),
(10, 'M. Pharm – Master of Pharmacy', 2),
(11, 'LL.M. – Master of Laws', 2),
(12, 'MS in Environmental Science', 2);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`p_id`, `p_name`) VALUES
(1, 'Undergraduate'),
(2, 'Graduate');

-- --------------------------------------------------------

--
-- Table structure for table `registered_course`
--

CREATE TABLE `registered_course` (
  `c_r_id` int(11) NOT NULL,
  `ss_ids` int(11) NOT NULL,
  `temp_dept` int(11) NOT NULL,
  `ss_batch` varchar(255) NOT NULL,
  `sems` int(11) NOT NULL,
  `yrs` varchar(255) NOT NULL,
  `c_code` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_credit` float NOT NULL,
  `c_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_course`
--

INSERT INTO `registered_course` (`c_r_id`, `ss_ids`, `temp_dept`, `ss_batch`, `sems`, `yrs`, `c_code`, `c_name`, `c_credit`, `c_status`) VALUES
(45, 4, 3, '57', 3, '2025', 'CSE-0104', 'Computer-4', 3, 2),
(46, 4, 3, '57', 3, '2025', 'CSE-0106', 'Computer-6', 3, 2),
(47, 4, 3, '57', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 2),
(48, 7, 3, '60', 3, '2025', 'CSE-0104', 'Computer-4', 3, 2),
(49, 7, 3, '60', 3, '2025', 'CSE-0106', 'Computer-6', 3, 2),
(50, 7, 3, '60', 3, '2025', 'CSE-0107', 'Computer-7', 2, 2),
(51, 1, 3, '54', 3, '2025', 'B-CSE-012', 'Computer-012', 0.75, 2),
(52, 1, 3, '54', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 2),
(53, 1, 3, '54', 3, '2025', 'CSE-0101 ', 'Computer-1', 3, 2),
(54, 1, 3, '54', 3, '2025', 'CSE-0102', 'Computer-2', 1.5, 2),
(55, 1, 3, '54', 3, '2025', 'CSE-0104', 'Computer-4', 3, 2),
(58, 10, 3, '54', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 2),
(59, 10, 3, '54', 3, '2025', 'CSE-0106', 'Computer-6', 3, 2),
(60, 10, 3, '54', 3, '2025', 'CSE-0107', 'Computer-7', 2, 2),
(61, 11, 3, '56', 3, '2025', 'B-CSE-011', 'Computer-011', 1, 2),
(62, 11, 3, '56', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 2),
(63, 11, 3, '56', 3, '2025', 'CSE-0105', 'Computer-5', 2.5, 2),
(64, 11, 3, '56', 3, '2025', 'CSE-0106', 'Computer-6', 3, 2),
(68, 31, 3, '54', 2, '2025', 'CSE-0309', 'Operating System', 3, 2),
(69, 31, 3, '54', 2, '2025', 'CSE-0311', 'Computer Networks', 3, 2),
(70, 31, 3, '54', 2, '2025', 'CSE-0312', 'Computer Networks Lab', 0.75, 2),
(71, 31, 3, '54', 2, '2025', 'CSE-0317', 'Software Engineering', 3, 2),
(72, 31, 3, '54', 2, '2025', 'CSE-0370', 'System Analysis and Design', 3, 2),
(75, 23, 3, '57', 1, '2025', 'CSE-0400', 'Final Project', 4, 2),
(76, 23, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 2),
(77, 23, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 2),
(78, 23, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 2),
(79, 23, 3, '57', 1, '2025', 'CSE-0438', 'Bioinformatics Lab', 0.75, 2),
(82, 39, 2, '56', 1, '2025', 'F-11', 'Food-11', 1, 2),
(83, 39, 2, '56', 1, '2025', 'F-9', 'Food-09', 1, 2),
(85, 53, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 2),
(86, 53, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 2),
(87, 53, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 2),
(88, 53, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 2),
(89, 53, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 2),
(90, 53, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 2),
(92, 52, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 2),
(93, 52, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 2),
(94, 52, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 2),
(95, 52, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 2),
(96, 52, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 2),
(97, 52, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 2),
(99, 54, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 2),
(100, 54, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 2),
(101, 54, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 2),
(102, 54, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 2),
(103, 54, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 2),
(104, 54, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 2),
(105, 21, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 2),
(106, 21, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 2),
(107, 21, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reg_process`
--

CREATE TABLE `reg_process` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `program` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `syllabus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_process`
--

INSERT INTO `reg_process` (`id`, `content`, `program`, `department`, `syllabus`, `created_at`) VALUES
(3, '<div style=\"text-align: center;\"><span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><font color=\"#fb7304\">Spring-2023</font></span></div><div style=\"text-align: left;\"><font color=\"#000000\">For, All CSE department, We want to ensure that Your course registration is started 2023-04-12 and the last date is 2023-04-20. You every one you need to pay registration fees 7000 Tk. to the one stop. After pay course registration fees you need to go online course registration website. Then you need to select course. after course selection you submit the form your advisor. Thank you Department of Computer Science and Engineering Students.</font></div>', 1, 3, 8, '2024-10-28 13:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `s_program` int(11) NOT NULL,
  `s_department` int(11) NOT NULL,
  `s_batch` varchar(255) NOT NULL,
  `s_syllabus` int(11) NOT NULL,
  `stud_id` varchar(255) NOT NULL,
  `s_pass` varchar(255) NOT NULL,
  `s_c_pass` varchar(255) NOT NULL,
  `s_signup_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `s_otp` varchar(255) NOT NULL,
  `s_activation_code` varchar(255) NOT NULL,
  `s_reset_code` varchar(255) NOT NULL,
  `s_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`s_id`, `s_name`, `s_email`, `s_program`, `s_department`, `s_batch`, `s_syllabus`, `stud_id`, `s_pass`, `s_c_pass`, `s_signup_time`, `s_otp`, `s_activation_code`, `s_reset_code`, `s_status`) VALUES
(12, 'Md. Sha', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 05:14:40', '', 'COhDFGWvIqcYdpz', '', 'active'),
(13, 'Riyashad Islam Pritty', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-09 05:24:22', '', 'VYtGj6XZzHSom59', '', 'active'),
(14, 'Nil Halder Akash', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-09 05:26:16', '', '1Mv73JPdmwIaxcj', '', 'active'),
(15, 'Md. Rabbi Hasan Rehal', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-09 05:28:38', '', 'sXI5Nwhfk8EZPQV', '', 'active'),
(16, 'Hasan Mahmud Tasin', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-09 05:30:02', '', 'UpnxiRtmEJk2aD8', '', 'active'),
(17, 'Riadul Islam Sakib', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-008', 'a13ee062eff9d7295bfc800a11f33704', 'a13ee062eff9d7295bfc800a11f33704', '2025-01-09 05:31:56', '', 'skofvIFNqnRVSOd', '', 'active'),
(18, 'Fahim Faysal', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-011', '84eb13cfed01764d9c401219faa56d53', '84eb13cfed01764d9c401219faa56d53', '2025-01-09 06:12:19', '', 'lAoSmg3w5TC79zG', '', 'active'),
(19, 'Mashrafi Rahman', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-016', '73f7634ab3f381fb40995f93740b3f8a', '73f7634ab3f381fb40995f93740b3f8a', '2025-01-09 06:13:41', '', 'vjmhHZdgWMwRFqY', '', 'active'),
(20, 'Rakib Hasan Rafi', 'hasanmahmudtasinsub@gmail.com', 1, 3, '56', 7, 'UG02-56-21-009', 'dc5e819e186f11ef3f59e6c7d6830c35', 'dc5e819e186f11ef3f59e6c7d6830c35', '2025-01-09 06:20:31', '', 'a2SWlKwO4NBifm1', '', 'active'),
(21, 'Mst. Tasmiya Islam Anika', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-014', '0e51011a4c4891e5c01c12d85c4dcaa7', '0e51011a4c4891e5c01c12d85c4dcaa7', '2025-01-09 06:25:03', '', 'Lc2RlEwqeavKFdm', '', 'active'),
(23, 'Nusrat Jahan Mim', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-09 06:28:03', '', 'ruA7gY2E8pNSIbH', '', 'active'),
(24, 'Tasnim Trishita', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-09 06:30:26', '', 'dmKW3UMpwr1ueOc', '', 'active'),
(25, 'Rehan Dipto', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-09 06:31:59', '', 'X0UfRMEWP3cGN2r', '', 'active'),
(26, 'Abrar Tamim', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-09 06:33:43', '', '1i47Nop9nrkFdJQ', '', 'active'),
(27, 'Farzana Dola', 'hasanmahmudtasinsub@gmail.com', 1, 3, '58', 8, 'UG02-58-23-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 06:49:51', '', '0quUO3lW8aDQesX', '', 'active'),
(28, 'Alvi Rahman', 'hasanmahmudtasinsub@gmail.com', 1, 3, '58', 8, 'UG02-58-23-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-09 07:21:43', '31329', 'HobviaQFG9A5L23', '', ''),
(29, 'Sithi Datta', '56subtasin@gmail.com', 1, 3, '60', 8, 'UG02-60-23-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 06:59:09', '73821', 'E7McpWRnbt1Uhso', '', ''),
(30, 'Jihad Alom', 'hasanmahmudtasinsub@gmail.com', 1, 3, '58', 8, 'UG02-58-23-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-09 07:24:42', '', 'wd0AQPDBoWI58Sl', '', 'active'),
(31, 'Md. Moinul Islam Shoron', 'hasanmahmudtasinsub@gmail.com', 1, 3, '54', 6, 'UG02-54-20-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-09 07:34:50', '', 'LIPQATzFUSakOnH', '', 'active'),
(32, 'Akib Ahammed', 'hasanmahmudtasinsub@gmail.com', 1, 3, '54', 6, 'UG02-54-20-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 07:36:24', '', 'xBdgtyZInapsEeP', '', 'active'),
(33, 'Touhidul Islam Tomal', 'hasanmahmudtasinsub@gmail.com', 1, 3, '54', 6, 'UG02-54-20-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-09 07:37:41', '', 'I9ZrJNngU1uBqiW', '', 'active'),
(34, 'Alvi Rahman', 'hasanmahmudtasinsub@gmail.com', 1, 3, '58', 8, 'UG02-58-23-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-09 07:39:08', '', 'iDPhmF7IyNAosgq', '', 'active'),
(35, 'Borsha Brristy', 'hasanmahmudtasinsub@gmail.com', 1, 3, '54', 6, 'UG02-54-20-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-09 07:40:19', '', 'fMwU98t6cYgSFqV', '', 'active'),
(36, 'Jabed Hasan', 'hasanmahmudtasinsub@gmail.com', 1, 3, '57', 7, 'UG02-57-21-009', 'dc5e819e186f11ef3f59e6c7d6830c35', 'dc5e819e186f11ef3f59e6c7d6830c35', '2025-01-09 07:41:54', '', 'JnNhQ8tuCOKvjep', '', 'active'),
(37, 'Noor e Jannat Nina', 'hasanmahmudtasinsub@gmail.com', 1, 3, '59', 20, 'UG02-59-24-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 08:26:12', '52877', 'EMeXQO4Vtu3Dq09', '', ''),
(38, 'Moinul Islam', 'hasanmahmudtasinsub@gmail.com', 1, 2, '23', 5, 'UG01-23-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-11 07:20:58', '', 'EJ8rvAuwPa1ZXCk', '', 'active'),
(39, 'Hasan Mahmud Tasin', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-11 07:32:54', '', 'n2RHAgtoKXkhCQ6', '', 'active'),
(40, 'Kabir Sing', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 04:11:57', '', 'pOFIVHJ7iNA8ZD1', '', 'active'),
(41, 'Faiyaz Faysal', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 04:13:16', '', 'gCSW8Zwhfes9rKM', '', 'active'),
(42, 'Priyanka ', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 04:14:37', '', 'wyJgSpG4HvhaBKd', '', 'active'),
(43, 'Rakib Rahman', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 04:15:59', '', 'nHdRlQVkrjN4GTv', '', 'active'),
(44, 'Mst. Shabnur', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-12 04:17:38', '', 'bue5kLDlIoZE8j4', '', 'active'),
(45, 'Mostafijur Rahman', '56subtasin@gmail.com', 1, 3, '59', 8, 'UG02-59-23-007', '9e94b15ed312fa42232fd87a55db0d39', '9e94b15ed312fa42232fd87a55db0d39', '2025-01-12 04:19:17', '', 'aXKyls2GOrAgbRS', '', 'active'),
(46, 'Parshia Nur Ethila', '56subtasin@gmail.com', 1, 3, '57', 7, 'UG02-57-21-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 04:23:19', '', 'aIHE7cZLlMghz0x', '', 'active'),
(47, 'Hafsa Akther Tumpa', '56subtasin@gmail.com', 1, 3, '57', 7, 'UG02-57-21-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-12 04:25:04', '', 'HugL7FKoNvCe4Ij', '', 'active'),
(48, 'Famee Islam Mim', '56subtasin@gmail.com', 1, 3, '57', 7, 'UG02-57-21-007', '9e94b15ed312fa42232fd87a55db0d39', '9e94b15ed312fa42232fd87a55db0d39', '2025-01-12 04:27:47', '', 'W7wjuIrkeJhEFcA', '', 'active'),
(49, 'Torikul Islam', '56subtasin@gmail.com', 1, 3, '57', 7, 'UG02-57-21-008', 'a13ee062eff9d7295bfc800a11f33704', 'a13ee062eff9d7295bfc800a11f33704', '2025-01-12 04:29:10', '', '7Gq2EjlQ5crTFsu', '', 'active'),
(50, 'Faysal Ahammed', '56subtasin@gmail.com', 1, 3, '57', 7, 'UG02-57-21-010', 'ea20a043c08f5168d4409ff4144f32e2', 'ea20a043c08f5168d4409ff4144f32e2', '2025-01-12 04:32:04', '', '28Ms3ef0cyglTpJ', '', 'active'),
(51, 'Sanjida Islam', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 04:34:58', '', 'RSQMm34FxThP7GD', '', 'active'),
(52, 'Sadia Sanjida', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 04:36:25', '', 'qa4tck5zKlQYHi9', '', 'active'),
(53, 'Protik Bissas', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 04:37:49', '', 'PV0oDjxCqE1Ae7Z', '', 'active'),
(54, 'Mahin Moinul', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 04:39:09', '', 'yavXDhTnx3BtsU8', '', 'active'),
(55, 'Avas Abir', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 04:40:30', '', 'igxNMuYsvbZ2H90', '', 'active'),
(56, 'Akib Ahammde', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-12 04:41:51', '', 'cwlymftRWxsVNYT', '', 'active'),
(57, 'Nayan Tara', '56subtasin@gmail.com', 1, 3, '60', 20, 'UG02-60-24-007', '9e94b15ed312fa42232fd87a55db0d39', '9e94b15ed312fa42232fd87a55db0d39', '2025-01-12 04:43:14', '', 'bFlKCodh8sD5NOT', '', 'active'),
(58, 'MD. Moinul Islam Shoron', '56subtasin@gmail.com', 2, 12, '54', 18, 'G02-54-21-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 04:59:17', '', 'IRBVj6Qirv9oX0Y', '', 'active'),
(59, 'Hasan Mahmud Tasin', '56subtasin@gmail.com', 2, 12, '54', 18, 'G02-54-21-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 05:01:17', '', 'VqE2gBnHasQJpIl', '', 'active'),
(60, 'Mst. Tasmiya Islam Anika', '56subtasin@gmail.com', 2, 12, '54', 18, 'G02-54-21-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 05:02:51', '', 'n74SsXoepb8W1PN', '', 'active'),
(61, 'Torikul Islam', '56subtasin@gmail.com', 2, 12, '54', 18, 'G02-54-21-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 05:04:03', '', 'AG6uzljp1yxOoQq', '', 'active'),
(62, 'Fahim Faysal', '56subtasin@gmail.com', 2, 12, '54', 18, 'G02-54-21-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 05:05:23', '', 'wqpXAi2dIDr1Zo4', '', 'active'),
(63, 'MD. Sha', '56subtasin@gmail.com', 2, 12, '55', 19, 'G02-55-23-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 06:19:54', '', 'izH8Dn3VLm71lft', '', 'active'),
(64, 'Parshia Nur Ethila', '56subtasin@gmail.com', 2, 12, '55', 19, 'G02-55-23-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 06:21:37', '', 'yrEBR7JSQmY5pqI', '', 'active'),
(65, 'Touhidur Tomal', '56subtasin@gmail.com', 2, 12, '55', 19, 'G02-55-23-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 06:22:51', '', '3tw16oy8CpiEs2X', '', 'active'),
(66, 'Shumaiya Rashmi', '56subtasin@gmail.com', 2, 12, '55', 19, 'G02-55-23-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 06:24:00', '', 'zWNlOgTn47wvfsC', '', 'active'),
(67, 'Mirajul Islam', '56subtasin@gmail.com', 2, 12, '55', 19, 'G02-55-23-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 06:25:07', '', 'ObPUcLm43slynXM', '', 'active'),
(68, 'Hasan Mahmud Tasin', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 07:19:55', '', 'aWGJIcH43fmo71Y', '', 'active'),
(69, 'Mst. Tasmiya Islam Anika', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 07:21:14', '', 'Aa5PwTkV1nQ8oBE', '', 'active'),
(70, 'Md. Moinul Islam Shoron', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 07:22:30', '', 'XJoZHApu1WqBY20', '', 'active'),
(71, 'Mashrafi Rahman', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 07:23:43', '', 'KIkSFDWVmluZC1x', '', 'active'),
(72, 'Faria Mollick', 'hasanmahmudtasinsub@gmail.com', 1, 2, '56', 4, 'UG01-56-21-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 07:25:02', '', 'KZHNtAIEUdJyuvF', '', 'active'),
(73, 'Maria Afrin', 'hasanmahmudtasinsub@gmail.com', 1, 2, '57', 5, 'UG01-57-23-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 07:26:43', '', '1h0KmcnT4eJXF9S', '', 'active'),
(74, 'Konika Sardar', 'hasanmahmudtasinsub@gmail.com', 1, 2, '57', 5, 'UG01-57-23-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 07:28:15', '', 'KM8uw6J2L3GlrQS', '', 'active'),
(75, 'Ayesha Sardar', 'hasanmahmudtasinsub@gmail.com', 1, 2, '57', 5, 'UG01-57-23-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 07:29:33', '', 'jYMTPG1eVhardsm', '', 'active'),
(76, 'Ibrahim Kholil', 'hasanmahmudtasinsub@gmail.com', 1, 2, '57', 5, 'UG01-57-23-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 07:31:02', '', 'triFoZDhb5UQk7c', '', 'active'),
(77, 'Abrar Tmaim', 'hasanmahmudtasinsub@gmail.com', 1, 2, '57', 5, 'UG01-57-23-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 07:32:27', '', '4IYgPaQmdEBNiUs', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `sy_id` int(11) NOT NULL,
  `sy_year` varchar(255) NOT NULL,
  `dep_sy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`sy_id`, `sy_year`, `dep_sy_id`) VALUES
(1, '2022', 1),
(2, '2023', 1),
(3, '2024', 1),
(4, '2021', 2),
(5, '2023', 2),
(6, '2020', 3),
(7, '2021', 3),
(8, '2023', 3),
(9, '2021', 4),
(10, '2023', 4),
(11, '2024', 4),
(12, '2021', 8),
(13, '2023', 8),
(14, '2024', 8),
(15, '2020', 11),
(16, '2023', 11),
(17, '2024', 11),
(18, '2021', 12),
(19, '2023', 12),
(20, '2024', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_email` varchar(255) NOT NULL,
  `t_program` int(11) NOT NULL,
  `t_department` int(11) NOT NULL,
  `teach_id` varchar(255) NOT NULL,
  `t_pass` varchar(255) NOT NULL,
  `t_c_pass` varchar(255) NOT NULL,
  `t_signup_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `t_otp` varchar(255) NOT NULL,
  `t_activation_code` varchar(255) NOT NULL,
  `t_reset_code` varchar(255) NOT NULL,
  `t_status` varchar(255) NOT NULL,
  `t_action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`t_id`, `t_name`, `t_email`, `t_program`, `t_department`, `teach_id`, `t_pass`, `t_c_pass`, `t_signup_time`, `t_otp`, `t_activation_code`, `t_reset_code`, `t_status`, `t_action`) VALUES
(7, 'Muhammad Masud Tarek', 'hasanmahmudtasinsub@gmail.com', 1, 3, 'CSE-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-09 06:22:27', '', 'hwaC3LfQdKb4OW1', '', '', 'active'),
(9, 'Muntasir Hasan Kanchan', '56subtasin@gmail.com', 1, 3, 'CSE-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-09 07:49:14', '', 'YWOQBMJPLztrDwU', '', '', 'active'),
(10, 'Md. Samiul Islam', 'mdmoinulislamshoron100@gmail.com', 1, 3, 'CSE-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-09 07:49:23', '', 'oWPsV4FNMrn3pzZ', '', '', 'active'),
(11, 'Khairatun Hissan', 'tasuzihugr5@gmail.com', 1, 3, 'CSE-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-09 07:52:44', '', 'DXTagJ8sUGvwZ3u', '', '', 'active'),
(12, 'Sha Reza M Fahad Hossain', 'tasuzihunote8@gmail.com', 1, 3, 'CSE-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-09 08:20:37', '', 'cfR628T3NbmJhF5', '', '', 'active'),
(13, 'Md. Alamgir Hossain', 'hasanmahmudtasinsub@gmail.com', 1, 3, 'CSE-006', '568628e0d993b1973adc718237da6e93', '568628e0d993b1973adc718237da6e93', '2025-01-12 06:43:20', '20492', 'gPAdYiRL9De3FvM', '', '', ''),
(15, 'Mahamudul Payel', 'hasanmahmudtasinsub@gmail.com', 1, 3, 'CSE-007', '9e94b15ed312fa42232fd87a55db0d39', '9e94b15ed312fa42232fd87a55db0d39', '2025-01-11 07:05:49', '', '31mcMzfBGRk6tjr', '', '', 'active'),
(16, 'Abdul Rahamd', 'hasanmahmudtasinsub@gmail.com', 1, 2, 'FOOD-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-11 07:23:08', '', 'kwOVWsvRl34i58G', '', '', 'active'),
(17, 'Md. Alamgir Hossain', 'hasanmahmudtasinsub@gmail.com', 1, 2, 'CSE-008', 'a13ee062eff9d7295bfc800a11f33704', 'a13ee062eff9d7295bfc800a11f33704', '2025-01-12 06:54:02', '', '2xqUwglY0ZodOND', '', '', 'active'),
(18, 'Mohammad Didarul Islam', 'hasanmahmudtasinsub@gmail.com', 1, 3, 'CSE-009', 'dc5e819e186f11ef3f59e6c7d6830c35', 'dc5e819e186f11ef3f59e6c7d6830c35', '2025-01-12 06:54:11', '', 'VD6PhFGNxaYEUL0', '', '', 'active'),
(19, 'Dr. D. Stalin Alex', 'hasanmahmudtasinsub@gmail.com', 1, 3, 'CSE-010', 'ea20a043c08f5168d4409ff4144f32e2', 'ea20a043c08f5168d4409ff4144f32e2', '2025-01-12 06:54:19', '', '36gipDBJEFkeaWc', '', '', 'active'),
(20, 'Dr. Shabbir Ahammed', 'hasanmahmudtasinsub@gmail.com', 1, 2, 'FOOD-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 06:54:28', '', 'lbJrwegNkaY43jf', '', '', 'active'),
(21, 'Md. Azmain Al Faik', 'mdmoinulislamshoron100@gmail.com', 1, 2, 'FOOD-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 06:53:22', '85204', 'CDJ2tUfO3Ki0MRj', '', '', ''),
(22, 'Pro. Mahabubul Islam', 'hasanmahmudtasinsub@gmail.com', 2, 12, 'ES-001', 'dc5c7986daef50c1e02ab09b442ee34f', 'dc5c7986daef50c1e02ab09b442ee34f', '2025-01-12 11:09:07', '', '2ScaQitw8PsYU03', '', '', 'active'),
(23, 'DR. Mustafirzur Rahamn', 'hasanmahmudtasinsub@gmail.com', 2, 12, 'ES-002', '93dd4de5cddba2c733c65f233097f05a', '93dd4de5cddba2c733c65f233097f05a', '2025-01-12 11:09:15', '', 'vfPXAmSQkpEdhoG', '', '', 'active'),
(24, 'Pro. Abdus Salam', 'hasanmahmudtasinsub@gmail.com', 2, 12, 'ES-003', 'e88a49bccde359f0cabb40db83ba6080', 'e88a49bccde359f0cabb40db83ba6080', '2025-01-12 11:09:25', '', 'hPp3INA9azlqM8x', '', '', 'active'),
(25, 'Pro. Mahamudul Rahman', 'hasanmahmudtasinsub@gmail.com', 2, 12, 'ES-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 11:09:33', '', 'stg8zYKeEnc50br', '', '', 'active'),
(26, 'Dr. Bilkis Banu', 'hasanmahmudtasinsub@gmail.com', 1, 2, 'FOOD-004', '11364907cf269dd2183b64287156072a', '11364907cf269dd2183b64287156072a', '2025-01-12 11:09:42', '', 'XZP0glHbop7hq4Q', '', '', 'active'),
(27, 'Syeda Farhana Najnin', 'hasanmahmudtasinsub@gmail.com', 1, 2, 'FOOD-005', 'ce08becc73195df12d99d761bfbba68d', 'ce08becc73195df12d99d761bfbba68d', '2025-01-12 11:09:51', '', 'XOcWs4pl1fKa06b', '', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `temp_reg`
--

CREATE TABLE `temp_reg` (
  `tempr_id` int(11) NOT NULL,
  `ss_ids` int(11) NOT NULL,
  `temp_dept` int(11) NOT NULL,
  `ss_batch` varchar(255) NOT NULL,
  `sems` int(11) NOT NULL,
  `yrs` varchar(255) NOT NULL,
  `c_code` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_credit` float NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp_reg`
--

INSERT INTO `temp_reg` (`tempr_id`, `ss_ids`, `temp_dept`, `ss_batch`, `sems`, `yrs`, `c_code`, `c_name`, `c_credit`, `c_status`) VALUES
(51, 4, 3, '57', 3, '2025', 'CSE-0104', 'Computer-4', 3, 3),
(53, 4, 3, '57', 3, '2025', 'CSE-0106', 'Computer-6', 3, 3),
(58, 4, 3, '57', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 3),
(64, 7, 3, '60', 3, '2025', 'CSE-0104', 'Computer-4', 3, 3),
(66, 7, 3, '60', 3, '2025', 'CSE-0106', 'Computer-6', 3, 3),
(67, 7, 3, '60', 3, '2025', 'CSE-0107', 'Computer-7', 2, 3),
(87, 1, 3, '54', 3, '2025', 'B-CSE-012', 'Computer-012', 0.75, 3),
(88, 1, 3, '54', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 3),
(89, 1, 3, '54', 3, '2025', 'CSE-0101 ', 'Computer-1', 3, 3),
(90, 1, 3, '54', 3, '2025', 'CSE-0102', 'Computer-2', 1.5, 3),
(95, 1, 3, '54', 3, '2025', 'CSE-0104', 'Computer-4', 3, 3),
(98, 10, 3, '54', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 3),
(100, 10, 3, '54', 3, '2025', 'CSE-0106', 'Computer-6', 3, 3),
(101, 10, 3, '54', 3, '2025', 'CSE-0107', 'Computer-7', 2, 3),
(102, 11, 3, '56', 3, '2025', 'B-CSE-011', 'Computer-011', 1, 3),
(104, 11, 3, '56', 3, '2025', 'B-CSE-013', 'Computer-013', 3, 3),
(105, 11, 3, '56', 3, '2025', 'CSE-0105', 'Computer-5', 2.5, 3),
(106, 11, 3, '56', 3, '2025', 'CSE-0106', 'Computer-6', 3, 3),
(107, 31, 3, '54', 2, '2025', 'CSE-0311', 'Computer Networks', 3, 3),
(108, 31, 3, '54', 2, '2025', 'CSE-0312', 'Computer Networks Lab', 0.75, 3),
(109, 31, 3, '54', 2, '2025', 'CSE-0317', 'Software Engineering', 3, 3),
(110, 31, 3, '54', 2, '2025', 'CSE-0370', 'System Analysis and Design', 3, 3),
(111, 31, 3, '54', 2, '2025', 'CSE-0309', 'Operating System', 3, 3),
(112, 21, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 3),
(113, 21, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 3),
(114, 21, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 3),
(115, 24, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 1),
(116, 24, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 1),
(117, 24, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 1),
(118, 25, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 1),
(119, 25, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 1),
(120, 25, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 1),
(121, 25, 3, '57', 1, '2025', 'CSE-0438', 'Bioinformatics Lab', 0.75, 1),
(122, 25, 3, '57', 1, '2025', 'CSE-0400', 'Final Project', 4, 1),
(124, 26, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 1),
(126, 26, 3, '57', 1, '2025', 'CSE-0438', 'Bioinformatics Lab', 0.75, 1),
(127, 26, 3, '57', 1, '2025', 'CSE-0400', 'Final Project', 4, 1),
(128, 23, 3, '57', 1, '2025', 'CSE-0411', 'Image Processing And Computer Vission', 3, 3),
(129, 23, 3, '57', 1, '2025', 'CSE-0412', 'Image Processing And Computer Vission Lab', 0.75, 3),
(130, 23, 3, '57', 1, '2025', 'CSE-0437', 'Bioinformatics', 3, 3),
(131, 23, 3, '57', 1, '2025', 'CSE-0438', 'Bioinformatics Lab', 0.75, 3),
(132, 23, 3, '57', 1, '2025', 'CSE-0400', 'Final Project', 4, 3),
(134, 38, 2, '23', 1, '2025', 'F-07', 'Food-07', 2, 1),
(140, 38, 2, '23', 1, '2025', 'F-03', 'Food-03', 1.5, 1),
(141, 38, 2, '23', 1, '2025', 'F-04', 'Food-04', 0.5, 1),
(142, 38, 2, '23', 1, '2025', 'F-06', 'Food-06', 2, 1),
(145, 39, 2, '56', 1, '2025', 'F-11', 'Food-11', 1, 3),
(146, 39, 2, '56', 1, '2025', 'F-9', 'Food-09', 1, 3),
(149, 54, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 3),
(150, 54, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 3),
(152, 54, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 3),
(153, 54, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 3),
(154, 54, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 3),
(155, 54, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 3),
(156, 52, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 3),
(157, 52, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 3),
(158, 52, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 3),
(159, 52, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 3),
(160, 52, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 3),
(161, 52, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 3),
(162, 53, 3, '60', 1, '2025', 'CSE-2111', 'Computer Architecture', 3, 3),
(163, 53, 3, '60', 1, '2025', 'CSE-2103', 'Automata Theory and Compiler', 3, 3),
(164, 53, 3, '60', 1, '2025', 'CSE-2105', 'Database Management System', 3, 3),
(165, 53, 3, '60', 1, '2025', 'CSE-2106', 'Database Management System Lab', 0.75, 3),
(166, 53, 3, '60', 1, '2025', 'EEE-1101', 'Electrical Circuit Analysis', 3, 3),
(167, 53, 3, '60', 1, '2025', 'EEE-2101', 'Digital Logic Design', 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_semester`
--
ALTER TABLE `add_semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `a_email` (`a_email`),
  ADD UNIQUE KEY `a_user_id` (`a_user_id`);

--
-- Indexes for table `advisor_list`
--
ALTER TABLE `advisor_list`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `ad_t_program` (`ad_program`),
  ADD KEY `ad_t_dept` (`ad_department`),
  ADD KEY `ad_t_id` (`ad_teacher_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD UNIQUE KEY `course_title` (`course_title`),
  ADD KEY `fk_course_program` (`course_program`),
  ADD KEY `fk_course_department` (`course_department`),
  ADD KEY `fk_course_syllabus` (`course_syllabus`);

--
-- Indexes for table `course_selection`
--
ALTER TABLE `course_selection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD UNIQUE KEY `course_name` (`course_name`),
  ADD KEY `fk_c_s_program` (`program`),
  ADD KEY `fk_c_s_department` (`department`),
  ADD KEY `fk_c_s_syllabus` (`syllabus`),
  ADD KEY `fk_c_s_semester` (`semester`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`),
  ADD KEY `fk_programs` (`pro_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD PRIMARY KEY (`c_r_id`),
  ADD UNIQUE KEY `unique_ss_ids_c_code` (`ss_ids`,`c_code`),
  ADD KEY `fk_s_depts` (`temp_dept`),
  ADD KEY `fk_s_semss` (`sems`);

--
-- Indexes for table `reg_process`
--
ALTER TABLE `reg_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reg_program` (`program`),
  ADD KEY `fk_reg_department` (`department`),
  ADD KEY `fk_reg_syllabus` (`syllabus`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `stud_id` (`stud_id`),
  ADD KEY `fk_s_programs` (`s_program`),
  ADD KEY `fk_s_department` (`s_department`),
  ADD KEY `fk_s_syllabus` (`s_syllabus`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`sy_id`),
  ADD KEY `fk_department` (`dep_sy_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `teach_id` (`teach_id`),
  ADD KEY `fk_t_program` (`t_program`),
  ADD KEY `fk_t_department` (`t_department`);

--
-- Indexes for table `temp_reg`
--
ALTER TABLE `temp_reg`
  ADD PRIMARY KEY (`tempr_id`),
  ADD UNIQUE KEY `unique_ss_c_code` (`ss_ids`,`c_code`),
  ADD KEY `fk_s_dept` (`temp_dept`),
  ADD KEY `fk_s_sems` (`sems`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_semester`
--
ALTER TABLE `add_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advisor_list`
--
ALTER TABLE `advisor_list`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `course_selection`
--
ALTER TABLE `course_selection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registered_course`
--
ALTER TABLE `registered_course`
  MODIFY `c_r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `reg_process`
--
ALTER TABLE `reg_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `temp_reg`
--
ALTER TABLE `temp_reg`
  MODIFY `tempr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advisor_list`
--
ALTER TABLE `advisor_list`
  ADD CONSTRAINT `ad_t_dept` FOREIGN KEY (`ad_department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ad_t_id` FOREIGN KEY (`ad_teacher_id`) REFERENCES `teacher_info` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ad_t_program` FOREIGN KEY (`ad_program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_course_department` FOREIGN KEY (`course_department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course_program` FOREIGN KEY (`course_program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course_syllabus` FOREIGN KEY (`course_syllabus`) REFERENCES `syllabus` (`sy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_selection`
--
ALTER TABLE `course_selection`
  ADD CONSTRAINT `fk_c_s_department` FOREIGN KEY (`department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_c_s_program` FOREIGN KEY (`program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_c_s_semester` FOREIGN KEY (`semester`) REFERENCES `add_semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_c_s_syllabus` FOREIGN KEY (`syllabus`) REFERENCES `syllabus` (`sy_id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_programs` FOREIGN KEY (`pro_id`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD CONSTRAINT `fk_s_depts` FOREIGN KEY (`temp_dept`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_semss` FOREIGN KEY (`sems`) REFERENCES `add_semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reg_process`
--
ALTER TABLE `reg_process`
  ADD CONSTRAINT `fk_reg_department` FOREIGN KEY (`department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reg_program` FOREIGN KEY (`program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reg_syllabus` FOREIGN KEY (`syllabus`) REFERENCES `syllabus` (`sy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_info`
--
ALTER TABLE `student_info`
  ADD CONSTRAINT `fk_s_department` FOREIGN KEY (`s_department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_programs` FOREIGN KEY (`s_program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_syllabus` FOREIGN KEY (`s_syllabus`) REFERENCES `syllabus` (`sy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`dep_sy_id`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD CONSTRAINT `fk_t_department` FOREIGN KEY (`t_department`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_program` FOREIGN KEY (`t_program`) REFERENCES `programs` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `temp_reg`
--
ALTER TABLE `temp_reg`
  ADD CONSTRAINT `fk_s_dept` FOREIGN KEY (`temp_dept`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_sems` FOREIGN KEY (`sems`) REFERENCES `add_semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
