-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 07:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_name` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_name`, `admin_password`) VALUES
('Muhammad', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `appointment_date` varchar(30) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `last_vaccination_date` text NOT NULL,
  `parent_name` varchar(20) NOT NULL,
  `hospital_selected` varchar(50) NOT NULL,
  `vaccine_type` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `appointment_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`appointment_date`, `fname`, `lname`, `age`, `gender`, `last_vaccination_date`, `parent_name`, `hospital_selected`, `vaccine_type`, `phone`, `email`, `appointment_time`) VALUES
('2024-06-14', 'Muhammad', 'Mughal', 8, 'M', '2024-05-30', 'muhammad', 'H2', 'V7', 2147483647, 'abc2005@gmail.com', '16:41'),
('2024-06-05', 'Muneer', 'Ahmed', 10, 'M', '2024-06-02', 'Ahmed', 'H1', 'V2', 11111111, 'muneerahmedsamejo@gm', '12:38'),
('2024-06-10', 'Muneer', 'Ahmed', 6, 'M', '2024-06-08', 'Ahmed', 'H1', 'V2', 123456789, 'm@gmail.com', '23:44'),
('2024-06-10', 'Muneer', 'Ahmed', 6, 'M', '2024-06-08', 'Ahmed', 'H1', 'V2', 123456789, 'm@gmail.com', '23:44');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `password`) VALUES
(29, 'sarwar', 'm@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_vac`
--

CREATE TABLE `hospitals_vac` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `vaccination_status` enum('Vaccinated','Not Vaccinated','','') NOT NULL DEFAULT 'Not Vaccinated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Muhammad Mughal', 'mnapak0000@gmail.com', 'mmmmm'),
(2, 'muhammad', 'abc2005@gmail.com', '11111'),
(3, '', '', ''),
(4, '', '', ''),
(5, 'nazeer', 'nazeer@gmail.com', '1234'),
(6, '', '', ''),
(7, '', '', ''),
(8, 'sarwar', 's@gmail.com', '3333'),
(9, '', '', ''),
(10, '', '', ''),
(11, 'Muneer Ahmed', 'm@gmail.com', '1212'),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vaclist`
--

CREATE TABLE `vaclist` (
  `id` int(30) NOT NULL,
  `Vaccine_name` varchar(30) NOT NULL,
  `Availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaclist`
--

INSERT INTO `vaclist` (`id`, `Vaccine_name`, `Availability`) VALUES
(1, 'jonson and jonson', 'Yes'),
(2, 'something', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_vac`
--
ALTER TABLE `hospitals_vac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hospitals_vac`
--
ALTER TABLE `hospitals_vac`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
