SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '123', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First Year', 1, 'C', '2017-06-06 16:52:33', '2019-06-07 05:53:47'),
(2, 'Second Year', 2, 'C', '2017-06-06 17:21:20', '2019-06-06 17:21:38'),
(3, 'Third Year', 3, 'C', '2017-06-07 09:20:23', '20120-05-08 12:02:00'),
(4, 'Fourth Year', 4, 'C', '2017-06-07 09:35:08', '2019-06-07 15:40:31),


-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(23, 1, 3, 2, 95, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(24, 1, 3, 1, 90, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(25, 1, 3, 6, 88, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(26, 1, 3, 5, 75, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(27, 1, 3, 4, 86, '2017-08-28 18:38:18', NULL),
(28, 2, 3, 2, 95, '2017-08-28 18:38:18', NULL),
(29, 2, 3, 1, 96, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(30, 2, 3, 6, 91, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(31, 2, 3, 5, 96, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(32, 2, 3, 4, 97, '2017-08-28 18:56:21', NULL),
(33, 3, 3, 2, 95, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(34, 3, 3, 1, 96, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(35, 3, 3, 6, 97, '2017-08-28 19:25:07', NULL),
(36, 3, 3, 5, 92, '2017-08-28 19:25:07', NULL),
(37, 3, 3, 4, 95, '2017-08-28 19:25:07', NULL),
(38, 4, 2, 11, 96, '2017-08-28 19:25:07', NULL);
(39, 4, 2, 10, 92, '2017-08-28 19:25:07', NULL);
(40, 4, 2, 9, 88, '2017-08-28 19:25:07', NULL);
(41, 4, 2, 12, 84, '2017-08-28 19:25:07', NULL);
(42, 4, 2, 13, 79, '2017-08-28 19:25:07', NULL);
(43, 4, 2, 14, 99, '2017-08-28 19:25:07', NULL);
(44, 5, 2, 11, 92, '2017-08-28 19:25:07', NULL);
(45, 5, 2, 10, 95, '2017-08-28 19:25:07', NULL);
(46, 5, 2, 9, 92, '2017-08-28 19:25:07', NULL);
(47, 5, 2, 12, 88, '2017-08-28 19:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Gurpreet', '1', 'Gurpreet@123', 'Male', '2001-07-15', 1, '2017-06-12 10:30:57', '2017-08-26 04:36:37', 1),
(2, 'Ayushi', '2', 'Ayushi@123', 'Female', '2001-09-02', 4, '2017-08-19 19:18:28', '2017-08-26 04:59:17', 0),
(3, 'Vaibhavi', '3', 'Vaibhavi@123', 'Female', '2001-08-06', 6, '2017-08-28 18:45:31', '2017-08-28 18:46:02', 1),
(4, 'rahul kumar', '4', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2017-08-28 18:54:58', '2017-08-28 18:55:20', 1),
(5, 'sanjeev singh', '6', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2017-08-28 19:23:53', '2017-08-28 19:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(29, 2, 9, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(30, 2, 10, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(31, 2, 11, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(32, 2, 12, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(33, 2, 13, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(34, 2, 14, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(35, 3, 1, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(36, 3, 2, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(37, 3, 4, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(38, 3, 5, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(39, 3, 6, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),


-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Database Management System', 'DBMS01', '2017-06-07 09:23:57', '2017-06-07 09:46:54'),
(2, 'Computer Networks', 'CN11', '2017-06-07 09:24:25', '0000-00-00 00:00:00'),
(4, 'Theory of Computation', 'TOC1', '2017-06-07 09:36:15', '0000-00-00 00:00:00'),
(5, 'System Programming and Operating System', 'SPOS', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(6, 'Software Project Management', 'SPM08', '2017-08-28 18:43:29', '2017-08-28 18:43:45'),
(9, 'FDS', '91', '2017-08-28 18:52:41', '2017-08-28 18:52:55'),
(10, 'DM', '92', '2017-08-28 19:21:46', '2017-08-28 19:22:14');
(11, 'CG', '93', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(12, 'M3', '94', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(13, 'OOP', '95', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(14, 'PPL', '96', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
