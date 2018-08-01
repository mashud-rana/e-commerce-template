-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2018 at 06:47 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_no` int(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
(1, 'Marketing'),
(2, 'IT'),
(3, 'Business'),
(4, 'HR'),
(5, 'Administration'),
(6, 'Accounts'),
(7, 'Accounting'),
(8, 'Engineering'),
(9, 'Projects'),
(10, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `dept_emp_id` int(11) NOT NULL,
  `emp_no` int(11) NOT NULL,
  `dept_no` int(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`dept_emp_id`, `emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(1, 1, 1, '2018-03-14', '2018-03-13'),
(2, 2, 2, '2018-03-12', '2018-03-31'),
(3, 3, 3, '2018-03-29', '2018-03-23'),
(4, 4, 4, '2018-03-01', '2018-03-14'),
(5, 5, 5, '2018-03-01', '2018-03-31'),
(6, 6, 6, '2018-03-02', '2018-03-23'),
(7, 7, 7, '2018-03-10', '2018-03-20'),
(8, 8, 8, '2018-03-21', '2018-03-31'),
(9, 9, 9, '2018-03-02', '2018-03-03'),
(10, 10, 10, '2018-03-14', '2018-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `dept_manager`
--

CREATE TABLE `dept_manager` (
  `dept_manager_id` int(11) NOT NULL,
  `dept_no` int(4) NOT NULL,
  `emp_no` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_manager`
--

INSERT INTO `dept_manager` (`dept_manager_id`, `dept_no`, `emp_no`, `from_date`, `to_date`) VALUES
(1, 1, 1, '2018-03-13', '2018-03-07'),
(2, 2, 2, '2018-03-06', '2018-03-22'),
(3, 3, 3, '2018-03-07', '2018-03-30'),
(4, 4, 4, '2018-03-02', '2018-03-31'),
(5, 5, 5, '2018-03-22', '2018-03-30'),
(6, 6, 6, '2018-03-22', '2018-03-31'),
(7, 7, 7, '2018-03-02', '2018-03-31'),
(8, 8, 8, '2018-03-22', '2018-03-16'),
(9, 9, 9, '2018-03-28', '2018-03-31'),
(10, 10, 10, '2018-03-01', '2018-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `hire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(1, '1995-03-01', 'Kuddus', 'Ali', 'M', '2018-03-13'),
(2, '1994-03-01', 'Rahima', 'Khatun', 'F', '2018-03-21'),
(3, '1995-04-01', 'Abul', 'Kalam', 'M', '2018-03-07'),
(4, '1995-03-02', 'Amena', 'Khatun', 'F', '2018-03-04'),
(5, '1993-03-01', 'Shafiul', 'Alam', 'M', '2018-03-01'),
(6, '1991-03-04', 'Yeasin', 'Rahman', 'M', '2018-03-27'),
(7, '1996-03-05', 'Rebeka', 'Chowdury', 'F', '2018-03-14'),
(8, '1992-05-05', 'Bulbul', 'Ahammed', 'M', '2018-03-01'),
(9, '1994-02-08', 'John', 'Jakles', 'M', '2018-03-01'),
(10, '1995-03-04', 'Rakib', 'Ismal', 'F', '2018-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `salaries_id` int(11) NOT NULL,
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`salaries_id`, `emp_no`, `salary`, `from_date`, `to_date`) VALUES
(1, 1, 16999, '2018-03-08', '2018-03-31'),
(2, 2, 16444, '2018-03-01', '2018-03-31'),
(3, 3, 17999, '2018-03-01', '2018-03-31'),
(4, 4, 16944, '2018-03-02', '2018-03-31'),
(5, 5, 16899, '2018-03-01', '2018-03-31'),
(6, 6, 16800, '2018-03-01', '2018-03-31'),
(7, 7, 15970, '2018-03-01', '2018-03-31'),
(8, 8, 14999, '2018-03-01', '2018-03-31'),
(9, 9, 16999, '2018-03-01', '2018-03-31'),
(10, 10, 18999, '2018-03-01', '2018-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `title_id` int(11) NOT NULL,
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`title_id`, `emp_no`, `title`, `from_date`, `to_date`) VALUES
(1, 1, 'Incharge', '2018-03-01', '2018-03-31'),
(2, 2, 'MD', '2018-03-01', '2018-03-31'),
(3, 3, 'Employee', '2018-03-01', '2018-03-01'),
(4, 4, 'Employee', '2018-03-01', '2018-03-31'),
(5, 5, 'Employee', '2018-03-01', '2018-03-31'),
(6, 6, 'Employee', '2018-03-01', '2018-03-31'),
(7, 7, 'Employee', '2018-03-01', '2018-03-31'),
(8, 8, 'Employee', '2018-03-22', '2018-03-31'),
(9, 9, 'Employee', '2018-03-01', '2018-03-31'),
(10, 10, 'Employee', '2018-03-01', '2018-03-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_no`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD PRIMARY KEY (`dept_emp_id`);

--
-- Indexes for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD PRIMARY KEY (`dept_manager_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salaries_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dept_emp`
--
ALTER TABLE `dept_emp`
  MODIFY `dept_emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dept_manager`
--
ALTER TABLE `dept_manager`
  MODIFY `dept_manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `salaries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
