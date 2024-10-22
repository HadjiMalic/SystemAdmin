-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 06:26 PM
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
-- Database: `appdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `specific_type` varchar(50) NOT NULL,
  `course` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `name`, `date`, `time`, `location`, `about`, `posted_by`, `specific_type`, `course`, `year`, `section`, `created_at`) VALUES
(1, 'Symposium', '2020-06-02', '19:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'About Mental Health Awareness Month!!', 'USG', 'General', '', 0, '', '2024-06-02 06:15:58'),
(2, 'FIRE DRILL', '2024-06-02', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'What to do before, during and after fire disaster.', 'USG', 'Specific', '', 0, '', '2024-06-02 06:16:54'),
(3, 'Evaluation', '2024-04-06', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Please take the survey here', 'John Irwin Fabela', 'general', '', 0, '', '2024-06-04 15:13:04'),
(4, 'Enrollment', '2024-04-06', '06:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'ENROLLMENT month this time', 'USG', 'general', '', 0, '', '2024-06-04 15:16:38'),
(5, 'Wellness Week', '2024-05-06', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Mag sayaw sayaw', 'Charlie Jay Primer', 'general', '', 0, '', '2024-06-05 06:43:02'),
(6, 'Evaluation', '2024-04-06', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Please take the survey here', 'John Irwin Fabela', 'general', 'BSIT', 3, 'B', '2024-06-05 06:45:30'),
(7, 'Summer Class', '2024-02-12', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Petition for subjects are still open', 'USG', 'general', '', 0, '', '2024-06-05 11:42:01'),
(8, 'summer class 2', '2020-10-04', '08:30:00', 'USTP JASAAN MISAMIS ORIENTAL', 'asd', 'SOCE', 'general', '', 0, '', '2024-06-10 17:28:35'),
(9, 'Kyle Lawrence Pabellan', '1121-12-12', '08:30:00', 'USTP JASAAN MISAMIS ORIENTAL', '12312313', 'Sir Ranoco', 'general', '', 0, '', '2024-06-10 17:29:36'),
(10, 'Kyle Lawrence Pabellan', '2024-12-12', '08:30:00', 'USTP JASAAN MISAMIS ORIENTAL', '123', 'Terry Boy Balite', 'specific', 'BSIT', 2, 'b', '2024-06-10 17:30:25'),
(11, 'Final Examination', '2024-10-06', '08:30:00', 'USTP-JASAAN', 'Final Examination', 'USG', 'general', '', 0, '', '2024-06-11 03:13:18'),
(12, 'Peer Evaluation', '2024-06-11', '05:00:00', 'USTP-JASAAN', 'Please rate your faculty and department of choice with the following rate: 1 for the lowest, 3 for neutral and 5 for the highest.', 'USG', 'general', '', 0, '', '2024-06-11 04:52:22'),
(13, 'shairo', '2024-10-18', '10:00:00', 'USTP-JASAAN', 'asdasdasdasd', 'dasd', 'specific', 'BSNAME', 1, 'D', '2024-10-18 04:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `general_or_specific` enum('general','specific') NOT NULL,
  `course` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `time`, `location`, `about`, `posted_by`, `general_or_specific`, `course`, `created_at`) VALUES
(1, 'INTRAMS', '2024-05-27', '01:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Panagtigi 2022', 'USG', 'specific', 'BSIT', '2024-05-27 04:54:48'),
(2, 'ACQUINTANCE PARTY', '2024-05-27', '11:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Panagtigi 2025', 'USG', 'general', 'BSIT', '2024-05-27 04:56:36'),
(3, 'BLOOD LETTING', '2024-05-27', '10:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Panagtigi 2021', 'USG', 'general', 'BSIT', '2024-05-27 05:10:47'),
(4, 'IT DAYS', '2024-05-27', '10:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Panagtigi 2024', 'USG', 'specific', 'BSIT', '2024-05-27 05:12:22'),
(5, 'Meet the MET', '2024-06-01', '06:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'Exclusive Days for Manufacturing Engineering Technology students', 'Terry Boy Balite', 'specific', 'BSMET', '2024-06-01 06:21:39'),
(6, 'shairo', '2001-02-01', '08:00:00', 'USTP JASAAN MISAMIS ORIENTAL', 'asdasd', 'USG', 'specific', 'BSIT', '2024-06-10 17:27:56'),
(7, 'Shairo James', '2024-06-11', '08:30:00', 'ustp', 'ustp', 'SOCE', 'general', '', '2024-06-10 21:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `event_responses`
--

CREATE TABLE `event_responses` (
  `id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `response` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_responses`
--

INSERT INTO `event_responses` (`id`, `event_id`, `name`, `user_id`, `response`, `reason`, `created_at`) VALUES
(4, 2, 'ACQUINTANCE PARTY', '2020200077', 'Not Going', 'Kapoy man', '2024-05-27 05:28:54'),
(5, 5, 'Meet the MET', '2020302454', 'Not Going', 'nagbuhat thesis', '2024-06-01 06:21:59'),
(6, 2, 'ACQUINTANCE PARTY', '2020200077', 'Not Going', 'DIli worth it', '2024-06-04 10:27:29'),
(7, 3, 'BLOOD LETTING', '2021308626', 'Going', '', '2024-06-05 11:46:31'),
(8, 2, 'ACQUINTANCE PARTY', '2021304070', 'Going', '', '2024-06-05 11:47:19'),
(9, 3, 'BLOOD LETTING', '2021304070', 'Going', '', '2024-06-05 11:47:22'),
(10, 3, 'BLOOD LETTING', '2020200076', 'Not Going', 'Afraid', '2024-06-06 01:20:58'),
(11, 1, 'INTRAMS', '2020200076', 'Going', '', '2024-06-06 01:38:20'),
(12, 2, 'ACQUINTANCE PARTY', '2020200076', 'Not Going', 'Not worth it', '2024-06-06 01:38:46'),
(13, 2, 'ACQUINTANCE PARTY', '2020200076', 'Not Going', ':(', '2024-06-11 01:51:16'),
(14, 2, 'ACQUINTANCE PARTY', '2021304070', 'Not Going', 'purossss lamlamaaaa', '2024-06-11 03:10:56'),
(15, 1, 'INTRAMS', '2021304070', 'Going', '', '2024-06-11 07:55:43'),
(16, 2, 'ACQUINTANCE PARTY', '2021304070', 'Not Going', 'kjkjkmnm', '2024-06-11 07:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL,
  `survey_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`survey_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `survey_data`) VALUES
(1, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]},{\"text\":\"Unsa imong maingun?\",\"type\":\"text\",\"options\":[]}]'),
(2, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]},{\"text\":\"Unsa imong maingun?\",\"type\":\"text\",\"options\":[]}]'),
(3, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"checkbox\",\"options\":[]},{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]},{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]}]'),
(4, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]},{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"checkbox\",\"options\":[]}]'),
(5, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]}]'),
(6, '[{\"text\":\"Asa ka worth it from 1-10?\",\"type\":\"radio\",\"options\":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  `section` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `student_id`, `name`, `password`, `course`, `year`, `section`) VALUES
(1, '2020200077', 'Jan Chester Madrelejos', '2020200077', 'BSIT', 2, 'B'),
(2, '2020200076', 'Miguelito Tajuda', '2020200076', 'BSIT', 3, 'B'),
(3, '2020302454', 'Mfranz Ami Valledor', '2020302454', 'BSMET', 4, 'A'),
(4, '2021308626', 'Joenel Jamero Jr.', '2021308626', 'BSESM', 3, 'C'),
(5, '2021304070', 'Miiiiinaaaa', '2021304071', 'BSIT', 3, 'B'),
(6, '2019809011', 'Jasper', '2019809011', 'BSMET', 1, 'B'),
(7, '2021306158', 'Kyle Lawrence Pabellan', '2021306158', 'BSNAME', 1, 'B'),
(8, '2020200075', 'Charlie Jay Ellezo ', '2020200075', 'BSIT', 3, 'B'),
(9, '2021308154', 'Sheila Mae', '12345678', 'BSIT', 3, 'B'),
(10, '2021308683', 'James Shairo N. Pahunang', '2021308683', 'BSIT', 4, 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_event_id` (`id`);

--
-- Indexes for table `event_responses`
--
ALTER TABLE `event_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `student_id_2` (`student_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_responses`
--
ALTER TABLE `event_responses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_responses`
--
ALTER TABLE `event_responses`
  ADD CONSTRAINT `event_responses_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_responses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
