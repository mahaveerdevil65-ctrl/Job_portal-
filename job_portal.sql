-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2026 at 04:45 PM
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
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `resume_link` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `gender` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `applicant_name`, `email`, `resume_link`, `status`, `applied_at`, `gender`, `age`, `education`, `phone`) VALUES
(5, 7, 'kartik Vyas', 'kvyas11@gmail.com', 'https://drive.google.com', 'Accepted', '2026-10-27 14:32:06', 'Male', 20, 'BCA', '9327014244'),
(7, 7, 'Ayush vyas', 'ayush4545@gmail.com', 'https://drive.google.com', 'Rejected', '2026-10-28 17:10:35', 'Male', 20, 'MCA', '9327014244'),
(8, 10, 'Muskan', 'muskan@gmail.com', 'https://drive.google.com', 'Accepted', '2026-10-28 17:35:36', 'Female', 22, 'B.Sc / M.Sc IT', '9327014242'),
(9, 11, 'Ayush', 'mahaveerdevil65@gmail.com', 'https://drive.google.com', 'Pending', '2026-11-02 05:24:22', 'Male', 19, 'BCA', '7894561230');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hr_name` varchar(255) NOT NULL,
  `hr_email` varchar(255) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `openings` int(11) NOT NULL DEFAULT 1,
  `hr_phone` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `company`, `category`, `description`, `created_at`, `hr_name`, `hr_email`, `salary`, `openings`, `hr_phone`, `location`) VALUES
(7, 'Accountant', 'Krishna Agri cultural.pvt.ltd', 'Junior Accountant', 'Tally prime ,basic computer skills, account ', '2026-10-27 14:30:46', 'krishna', 'kvyas3900@gmail.com', '6 LPA', 10, '9327014244', 'Ahemdabad'),
(10, 'Css Designer', 'L J Group', 'Junior coder', 'Css Cum Html', '2026-10-28 17:07:06', 'Mahaveer', 'mahaveerdevil65@gmail.com', '$60000', 50, '9320714244', 'Ahemdabad'),
(11, 'Room Cleaner', 'K K industries.pvt.ltd', 'Cleaneing', 'Part Time - / 10 pass And 18 age.', '2026-10-28 17:41:07', 'Alex Perry', 'Perry@gmail.com', '225000', 150, '1236547899', 'Baroda');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'krishna', 'kvyas3900@gmail.com', '$2y$10$ac3cJ.5dP99eoTV..HDFf.xXXrsCirF9D5yg6w5o3g5Ue4X9zE7S2', 'user', '2026-10-28 13:18:07'),
(2, 'Ayush', 'admin@gmail.com', 'Vyas1111', 'admin', '2026-10-28 13:32:48'),
(3, 'Ayush vyas', 'ayush4545@gmail.com', '$2y$10$iyVw.iLexFv2Y.emj1mkJ.w0fwa.Gkf7GC5I7KnOGuQQc0.ADbhE2', 'user', '2026-10-28 17:09:29'),
(4, 'Ayush', 'mahaveerdevil65@gmail.com', '$2y$10$a4SLILKNAMnoxZZSLWjOVuAxECQh6TjoMJiKGNJBq7nre59cGtlUO', 'user', '2026-11-02 05:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application` (`job_id`,`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
