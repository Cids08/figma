-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 10:57 AM
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
-- Database: `acabo`
--
CREATE DATABASE IF NOT EXISTS `acabo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acabo`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(4, 'Acabo', 'Mariel', 'marielacabo@gmail.com', '$2y$10$.V47DsRpmubofa12bxWPJuxo2CHq.0nQXK78mLJtypXY9X1r9W.im');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `adigue`
--
CREATE DATABASE IF NOT EXISTS `adigue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adigue`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Adigue', 'Stephanie', 'stephanie@gmail.com', '$2y$10$gku1Z.YJX/zahYWgO0Wfue9XsiWgVotoHI0HL4okTtUf3T784MzZ.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `animal_bite_center`
--
CREATE DATABASE IF NOT EXISTS `animal_bite_center` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `animal_bite_center`;

-- --------------------------------------------------------

--
-- Table structure for table `patientrecord`
--

CREATE TABLE `patientrecord` (
  `PatientID` int(11) NOT NULL,
  `PatientName` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` enum('Male','Female','Other') NOT NULL,
  `ExposureDate` date NOT NULL,
  `Baranggay` varchar(100) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `Animal` varchar(50) NOT NULL,
  `ExposureType` enum('Bite','Scratch','Other') NOT NULL,
  `BiteSite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientrecord`
--

INSERT INTO `patientrecord` (`PatientID`, `PatientName`, `Age`, `Sex`, `ExposureDate`, `Baranggay`, `Place`, `Animal`, `ExposureType`, `BiteSite`) VALUES
(1, 'Mateo', 18, 'Male', '2025-02-03', 'Pob. Kanluran', 'Outdoor', 'Dog', 'Bite', 'Legs'),
(2, 'amanda', 22, 'Female', '2025-02-04', 'Perez', 'Indoor', 'Cat', 'Scratch', 'Hands'),
(3, 'niko', 25, 'Male', '2025-02-25', 'Imok', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(4, 'Markos', 30, 'Male', '2025-02-19', 'Hanggan', 'Outdoor', 'Dog', 'Bite', 'Legs'),
(5, 'markov', 23, 'Male', '2025-02-06', 'Masiit', 'Indoor', 'Hamster', 'Bite', 'Hands'),
(6, 'Juan Dela Cruz', 25, 'Male', '2025-02-03', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(7, 'Maria Santos', 34, 'Female', '2025-02-04', 'Bangyas', 'Outdoor', 'Cat', 'Scratch', 'Arms'),
(8, 'Pedro Reyes', 45, 'Male', '2025-02-05', 'Dayap', 'Indoor', 'Hamster', 'Scratch', 'Legs'),
(9, 'Ana Lopez', 29, 'Female', '2025-02-06', 'Hanggan', 'Outdoor', 'Lizard', 'Bite', 'Thighs'),
(10, 'Luis Garcia', 50, 'Male', '2025-02-07', 'Imok', 'Indoor', 'Bird', 'Scratch', 'Feet'),
(11, 'Carmen Rivera', 38, 'Female', '2025-02-08', 'Lamot I', 'Outdoor', 'Mouse', 'Bite', 'Face'),
(12, 'Jose Torres', 60, 'Male', '2025-02-09', 'Lamot II', 'Indoor', 'Rabbit', 'Bite', 'Neck'),
(13, 'Sofia Mendoza', 22, 'Female', '2025-02-10', 'Limao', 'Outdoor', 'Turtle', 'Scratch', 'Head'),
(14, 'Andres Cruz', 55, 'Male', '2025-02-11', 'Mabacan', 'Indoor', 'Monkey', 'Bite', 'Hands'),
(15, 'Teresa Gomez', 40, 'Female', '2025-02-12', 'Masiit', 'Outdoor', 'Pig', 'Bite', 'Arms'),
(16, 'Ramon Aquino', 65, 'Male', '2025-02-13', 'Paliparan', 'Indoor', 'Fish', 'Scratch', 'Legs'),
(17, 'Elena Ramos', 28, 'Female', '2025-02-14', 'Perez', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(18, 'Fernando Santiago', 70, 'Male', '2025-02-15', 'Prinza', 'Indoor', 'Cat', 'Scratch', 'Feet'),
(19, 'Lourdes Morales', 33, 'Female', '2025-02-16', 'Pob. Kanluran', 'Outdoor', 'Hamster', 'Bite', 'Face'),
(20, 'Ricardo Castro', 48, 'Male', '2025-02-17', 'Pob. Silangan', 'Indoor', 'Lizard', 'Scratch', 'Neck'),
(21, 'Isabel Ortega', 52, 'Female', '2025-02-18', 'San Isidro', 'Outdoor', 'Bird', 'Bite', 'Head'),
(22, 'Alfredo Navarro', 75, 'Male', '2025-02-19', 'Santo Tomas', 'Indoor', 'Mouse', 'Scratch', 'Hands'),
(23, 'Rosario Del Rosario', 30, 'Female', '2025-02-20', 'Balayhangin', 'Outdoor', 'Rabbit', 'Bite', 'Arms'),
(24, 'Roberto Lim', 42, 'Male', '2025-02-21', 'Bangyas', 'Indoor', 'Turtle', 'Scratch', 'Legs'),
(25, 'Conchita Tan', 58, 'Female', '2025-02-22', 'Dayap', 'Outdoor', 'Monkey', 'Bite', 'Thighs'),
(26, 'Manuel Sy', 62, 'Male', '2025-02-23', 'Hanggan', 'Indoor', 'Pig', 'Scratch', 'Feet'),
(27, 'Dolores Ong', 36, 'Female', '2025-02-24', 'Imok', 'Outdoor', 'Fish', 'Bite', 'Face'),
(28, 'Eduardo Chua', 80, 'Male', '2025-02-25', 'Lamot I', 'Indoor', 'Dog', 'Scratch', 'Neck'),
(29, 'Patricia Lim', 27, 'Female', '2025-02-26', 'Lamot II', 'Outdoor', 'Cat', 'Bite', 'Head'),
(30, 'Antonio Go', 49, 'Male', '2025-02-27', 'Limao', 'Indoor', 'Hamster', 'Scratch', 'Hands'),
(31, 'Cecilia Yu', 44, 'Female', '2025-02-28', 'Mabacan', 'Outdoor', 'Lizard', 'Bite', 'Arms'),
(32, 'Rogelio Tan', 68, 'Male', '2025-03-01', 'Masiit', 'Indoor', 'Bird', 'Scratch', 'Legs'),
(33, 'Angelita Uy', 53, 'Female', '2025-03-02', 'Paliparan', 'Outdoor', 'Mouse', 'Bite', 'Thighs'),
(34, 'Benjamin Co', 72, 'Male', '2025-03-03', 'Perez', 'Indoor', 'Rabbit', 'Scratch', 'Feet'),
(35, 'Lydia Chan', 39, 'Female', '2025-03-04', 'Prinza', 'Outdoor', 'Turtle', 'Bite', 'Face'),
(36, 'amanda Esteban', 24, 'Female', '2025-02-04', 'Prinza', 'Outdoor', 'Cat', 'Bite', 'Arms'),
(37, 'Carlos Manalo', 32, 'Male', '2025-03-05', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(38, 'Maricel Pascual', 27, 'Female', '2025-03-06', 'Bangyas', 'Outdoor', 'Cat', 'Scratch', 'Arms'),
(39, 'Reynaldo Santos', 44, 'Male', '2025-03-07', 'Dayap', 'Indoor', 'Hamster', 'Scratch', 'Legs'),
(40, 'Lorna Dela Cruz', 31, 'Female', '2025-03-08', 'Hanggan', 'Outdoor', 'Lizard', 'Bite', 'Thighs'),
(41, 'Arnel Gomez', 56, 'Male', '2025-03-09', 'Imok', 'Indoor', 'Bird', 'Scratch', 'Feet'),
(42, 'Cynthia Reyes', 39, 'Female', '2025-03-10', 'Lamot I', 'Outdoor', 'Mouse', 'Bite', 'Face'),
(43, 'Dante Mendoza', 61, 'Male', '2025-03-11', 'Lamot II', 'Indoor', 'Rabbit', 'Bite', 'Neck'),
(44, 'Evelyn Torres', 26, 'Female', '2025-03-12', 'Limao', 'Outdoor', 'Turtle', 'Scratch', 'Head'),
(45, 'Felipe Castro', 48, 'Male', '2025-03-13', 'Mabacan', 'Indoor', 'Monkey', 'Bite', 'Hands'),
(46, 'Gina Aquino', 37, 'Female', '2025-03-14', 'Masiit', 'Outdoor', 'Pig', 'Bite', 'Arms'),
(47, 'Hector Lim', 59, 'Male', '2025-03-15', 'Paliparan', 'Indoor', 'Fish', 'Scratch', 'Legs'),
(48, 'Irene Santiago', 29, 'Female', '2025-03-16', 'Perez', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(49, 'Jerry Morales', 63, 'Male', '2025-03-17', 'Prinza', 'Indoor', 'Cat', 'Scratch', 'Feet'),
(50, 'Karen Navarro', 35, 'Female', '2025-03-18', 'Pob. Kanluran', 'Outdoor', 'Hamster', 'Bite', 'Face'),
(51, 'Leonardo Cruz', 52, 'Male', '2025-03-19', 'Pob. Silangan', 'Indoor', 'Lizard', 'Scratch', 'Neck'),
(52, 'Mila Ortega', 41, 'Female', '2025-03-20', 'San Isidro', 'Outdoor', 'Bird', 'Bite', 'Head'),
(53, 'Nestor Del Rosario', 68, 'Male', '2025-03-21', 'Santo Tomas', 'Indoor', 'Mouse', 'Scratch', 'Hands'),
(54, 'Olivia Tan', 33, 'Female', '2025-03-22', 'Balayhangin', 'Outdoor', 'Rabbit', 'Bite', 'Arms'),
(55, 'Patrick Sy', 47, 'Male', '2025-03-23', 'Bangyas', 'Indoor', 'Turtle', 'Scratch', 'Legs'),
(56, 'Queenie Ong', 30, 'Female', '2025-03-24', 'Dayap', 'Outdoor', 'Monkey', 'Bite', 'Thighs'),
(57, 'Ramon Chua', 65, 'Male', '2025-03-25', 'Hanggan', 'Indoor', 'Pig', 'Scratch', 'Feet'),
(58, 'Sally Yu', 28, 'Female', '2025-03-26', 'Imok', 'Outdoor', 'Fish', 'Bite', 'Face'),
(59, 'Tomas Lim', 50, 'Male', '2025-03-27', 'Lamot I', 'Indoor', 'Dog', 'Scratch', 'Neck'),
(60, 'Ursula Go', 36, 'Female', '2025-03-28', 'Lamot II', 'Outdoor', 'Cat', 'Bite', 'Head'),
(61, 'Victor Tan', 70, 'Male', '2025-03-29', 'Limao', 'Indoor', 'Hamster', 'Scratch', 'Hands'),
(62, 'Wendy Uy', 43, 'Female', '2025-03-30', 'Mabacan', 'Outdoor', 'Lizard', 'Bite', 'Arms'),
(63, 'Xander Co', 58, 'Male', '2025-03-31', 'Masiit', 'Indoor', 'Bird', 'Scratch', 'Legs'),
(64, 'Yolanda Chan', 34, 'Female', '2025-04-01', 'Paliparan', 'Outdoor', 'Mouse', 'Bite', 'Thighs'),
(65, 'Zaldy Reyes', 62, 'Male', '2025-04-02', 'Perez', 'Indoor', 'Rabbit', 'Scratch', 'Feet'),
(66, 'Aileen Santos', 40, 'Female', '2025-04-03', 'Prinza', 'Outdoor', 'Turtle', 'Bite', 'Face'),
(67, 'Benny Cruz', 55, 'Male', '2025-04-04', 'Pob. Kanluran', 'Indoor', 'Monkey', 'Scratch', 'Neck'),
(68, 'Cathy Gomez', 38, 'Female', '2025-04-05', 'Pob. Silangan', 'Outdoor', 'Pig', 'Bite', 'Head'),
(69, 'Dennis Aquino', 67, 'Male', '2025-04-06', 'San Isidro', 'Indoor', 'Fish', 'Scratch', 'Hands'),
(70, 'Elsa Lim', 31, 'Female', '2025-04-07', 'Santo Tomas', 'Outdoor', 'Dog', 'Bite', 'Arms'),
(71, 'Freddie Tan', 49, 'Male', '2025-04-08', 'Balayhangin', 'Indoor', 'Cat', 'Scratch', 'Legs'),
(72, 'Grace Sy', 42, 'Female', '2025-04-09', 'Bangyas', 'Outdoor', 'Hamster', 'Bite', 'Thighs'),
(73, 'Henry Ong', 64, 'Male', '2025-04-10', 'Dayap', 'Indoor', 'Lizard', 'Scratch', 'Feet'),
(74, 'Isabel Chua', 29, 'Female', '2025-04-11', 'Hanggan', 'Outdoor', 'Bird', 'Bite', 'Face'),
(75, 'Jake Yu', 53, 'Male', '2025-04-12', 'Imok', 'Indoor', 'Mouse', 'Scratch', 'Neck'),
(76, 'Kathy Lim', 37, 'Female', '2025-04-13', 'Lamot I', 'Outdoor', 'Rabbit', 'Bite', 'Head'),
(77, 'Larry Go', 66, 'Male', '2025-04-14', 'Lamot II', 'Indoor', 'Turtle', 'Scratch', 'Hands'),
(78, 'Mae Tan', 32, 'Female', '2025-04-15', 'Limao', 'Outdoor', 'Monkey', 'Bite', 'Arms'),
(79, 'Nico Uy', 51, 'Male', '2025-04-16', 'Mabacan', 'Indoor', 'Pig', 'Scratch', 'Legs'),
(80, 'Ophelia Co', 45, 'Female', '2025-04-17', 'Masiit', 'Outdoor', 'Fish', 'Bite', 'Thighs'),
(81, 'Paolo Chan', 69, 'Male', '2025-04-18', 'Paliparan', 'Indoor', 'Dog', 'Scratch', 'Feet'),
(82, 'Quincy Reyes', 35, 'Female', '2025-04-19', 'Perez', 'Outdoor', 'Cat', 'Bite', 'Face'),
(83, 'Rico Santos', 57, 'Male', '2025-04-20', 'Prinza', 'Indoor', 'Hamster', 'Scratch', 'Neck'),
(84, 'Sofia Cruz', 41, 'Female', '2025-04-21', 'Pob. Kanluran', 'Outdoor', 'Lizard', 'Bite', 'Head'),
(85, 'Tony Gomez', 60, 'Male', '2025-04-22', 'Pob. Silangan', 'Indoor', 'Bird', 'Scratch', 'Hands'),
(86, 'Uma Aquino', 33, 'Female', '2025-04-23', 'San Isidro', 'Outdoor', 'Mouse', 'Bite', 'Arms'),
(87, 'Vince Lim', 54, 'Male', '2025-04-24', 'Santo Tomas', 'Indoor', 'Rabbit', 'Scratch', 'Legs'),
(88, 'Wanda Tan', 39, 'Female', '2025-04-25', 'Balayhangin', 'Outdoor', 'Turtle', 'Bite', 'Thighs'),
(89, 'Xander Sy', 63, 'Male', '2025-04-26', 'Bangyas', 'Indoor', 'Monkey', 'Scratch', 'Feet'),
(90, 'Yvette Ong', 36, 'Female', '2025-04-27', 'Dayap', 'Outdoor', 'Pig', 'Bite', 'Face'),
(91, 'Zack Chua', 50, 'Male', '2025-04-28', 'Hanggan', 'Indoor', 'Fish', 'Scratch', 'Neck'),
(92, 'celine', 32, 'Female', '2025-02-04', 'Paliparan', 'Outdoor', 'Cat', 'Scratch', 'Neck'),
(93, 'Janice', 24, 'Female', '2000-02-04', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(94, 'john', 21, 'Male', '2003-03-01', 'Dayap', 'Indoor', 'Dog', 'Bite', 'Hands');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'username', '$2y$10$Ppf7FkAU73a4.iJCx0ykXenUSMDZrZj38U9qbBsebeTjJ7FqpIgJ.', 'username@gmail.com'),
(2, 'jm', '$2y$10$3nS6m2JYkpU6fWgc0C0P4Oh5XPZ.UhZ4HHoF2I/bL8J8N0VPOFzm6', 'jm@gmail.com'),
(3, 'Janica', '$2y$10$ARxSAmHsPdppjiaBIkHhg.Y9yEH4zjonYujxQjQ4FSKpFrh6nhQoO', 'JanicaMalveda@gmail.com'),
(5, 'jm1', '$2y$10$bj1qms1UJAd6Ec9AlDLGF.Vg3LaZX8LM50xt7pJjT3QYqYtIv8Lti', 'tagazajohnmatthew@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinationrecord`
--

CREATE TABLE `vaccinationrecord` (
  `VaccinationID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ExposureDate` date NOT NULL,
  `Category` varchar(50) NOT NULL,
  `WoundWashing` enum('Yes','No') NOT NULL,
  `RigDate` date NOT NULL,
  `RouteOfInjection` varchar(50) NOT NULL,
  `VaccineBrand` varchar(100) NOT NULL,
  `Outcome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patientrecord`
--
ALTER TABLE `patientrecord`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  ADD PRIMARY KEY (`VaccinationID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patientrecord`
--
ALTER TABLE `patientrecord`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  MODIFY `VaccinationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  ADD CONSTRAINT `vaccinationrecord_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientrecord` (`PatientID`);
--
-- Database: `cucuenco`
--
CREATE DATABASE IF NOT EXISTS `cucuenco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cucuenco`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailaddress` varchar(250) NOT NULL,
  `PhoneNumber` int(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `emailaddress`, `PhoneNumber`, `password`) VALUES
(1, 'Lord Vincent', 'vincent@email.com', 999999912, '$2y$10$V4lnqHwIsAgA9/bqHvm01.7AwUeGEFnhWTNQhsCl8NoYEotVvjhrG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `esparagoza`
--
CREATE DATABASE IF NOT EXISTS `esparagoza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `esparagoza`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Rafael', 'Esparagoza', 'rafael@gmail.com', '$2y$10$X90MzZNRtfbikBQtbrLqIOxT/G2WwDLFOQMy.PvlMNCi.CUSMgl2y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `fabro`
--
CREATE DATABASE IF NOT EXISTS `fabro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fabro`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Fabro', 'Ron Mark', 'ronmark@gmail.com', '$2y$10$gJX6Q2hJe6CzEIJgBxrEVussYBak1j8IxlO6WuI/UCRqbQvqjB9HS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `fernandez`
--
CREATE DATABASE IF NOT EXISTS `fernandez` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fernandez`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailaddress` varchar(250) NOT NULL,
  `PhoneNumber` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `emailaddress`, `PhoneNumber`, `password`) VALUES
(2, 'Gerard', 'Gerardgarcia@email.com', '09999999', '$2y$10$C4NOzKA2Zj8ter43qvr5wOtUtDgBFWMYBcjzIO8ma6ct2AzBFiaD6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `jenn`
--
CREATE DATABASE IF NOT EXISTS `jenn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jenn`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Jennlyn rejoso', 'jhenney07@gmail.com', '$2y$10$9lymc0Xm709ivEjkVf9HV.DthXouXT4kR8Kzl/TGc5i1fqHTI88NG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `nueva`
--
CREATE DATABASE IF NOT EXISTS `nueva` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nueva`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Jannah', 'Nueva', 'jannah@gmail.com', '$2y$10$.pv2v.5pvhnF1d6TvgBTY.6OEp2RxjSuTQoShcyTzfVGzcZmrflwi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `olivadb`
--
CREATE DATABASE IF NOT EXISTS `olivadb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `olivadb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `PhoneNumber` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `emailaddress`, `PhoneNumber`, `password`) VALUES
(1, 'Railey', 'railey@email.com', '09999999', '$2y$10$rQY5GU7jkaaeFT9VySC/uux8RVE/j2Z5GuCwsdZMSUU.H9Zh2w0IW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `paligutan`
--
CREATE DATABASE IF NOT EXISTS `paligutan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paligutan`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Paligutan', 'Maricar', 'maricar@gmail.com', '$2y$10$jxkR6NM4HUfjKxbDUP1jkOeng0Ra.fnIPEUmzTLf4aiEU7FABKLoq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `parkingdb`
--
CREATE DATABASE IF NOT EXISTS `parkingdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parkingdb`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@admin.com|127.0.0.1', 'i:2;', 1741868626),
('admin@admin.com|127.0.0.1:timer', 'i:1741868626;', 1741868626),
('attendant1@vpms.com|127.0.0.1', 'i:1;', 1733291200),
('attendant1@vpms.com|127.0.0.1:timer', 'i:1733291200;', 1733291200),
('attendant3@vpms.com|127.0.0.1', 'i:1;', 1733242270),
('attendant3@vpms.com|127.0.0.1:timer', 'i:1733242270;', 1733242270),
('berta@vpms.com|127.0.0.1', 'i:1;', 1733291191),
('berta@vpms.com|127.0.0.1:timer', 'i:1733291191;', 1733291191),
('johnalberv187@gmail.com|127.0.0.1', 'i:1;', 1732933458),
('johnalberv187@gmail.com|127.0.0.1:timer', 'i:1732933458;', 1732933458),
('user@user.com|127.0.0.1', 'i:1;', 1733290426),
('user@user.com|127.0.0.1:timer', 'i:1733290426;', 1733290426);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_12_01_162053_create_notifications_table', 2),
(6, '2024_12_02_083357_create_chats_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0188c3d7-c997-42d7-ba86-08622ff1c974', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"40.00\",\"user_id\":46}', NULL, '2024-12-03 08:04:40', '2024-12-03 08:04:40'),
('06073e8e-8e4a-4864-b16a-779aaad78d21', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":1.1043678466666664,\"user_id\":46}', NULL, '2024-12-02 19:05:25', '2024-12-02 19:05:25'),
('104c2687-8243-47d6-9271-dae4d1cd39f9', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":0.335177965,\"user_id\":46}', NULL, '2024-12-02 05:33:36', '2024-12-02 05:33:36'),
('2b93817f-8a17-4c77-88d7-d685fd7b408d', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"80.00\",\"user_id\":46}', NULL, '2024-12-03 08:02:09', '2024-12-03 08:02:09'),
('2fa3385f-341e-461b-abca-0a8376a40228', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berto have been updated.\",\"amount\":\"16.00\",\"user_id\":49}', NULL, '2024-12-03 21:23:41', '2024-12-03 21:23:41'),
('3d249a16-749b-4227-b919-213ed637332c', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":0.44324195083333334,\"user_id\":46}', NULL, '2024-12-02 07:03:28', '2024-12-02 07:03:28'),
('47ab8c31-284d-4a7b-9e9f-1ffa94156ae9', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":32.70457567361111,\"user_id\":46}', NULL, '2024-12-02 06:54:54', '2024-12-02 06:54:54'),
('56584de1-cf39-4bc2-941c-f6bc4f2e0c01', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berta have been updated.\",\"amount\":\"20.00\",\"user_id\":58}', NULL, '2024-12-04 21:53:58', '2024-12-04 21:53:58'),
('63b8b48b-38e8-43ca-974c-32fe5787e553', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berta have been updated.\",\"amount\":\"20.00\",\"user_id\":58}', NULL, '2024-12-04 21:53:16', '2024-12-04 21:53:16'),
('698d31ac-c8a9-4890-ba67-5b6fd9027ed0', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"20.00\",\"user_id\":46}', NULL, '2024-12-03 17:20:34', '2024-12-03 17:20:34'),
('7d5dcc1c-9142-4122-a840-c3fcbd1a8aab', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"20.00\",\"user_id\":46}', NULL, '2024-12-03 06:53:11', '2024-12-03 06:53:11'),
('82497ab0-eea1-417b-a5b6-f185cf5fb61d', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berta have been updated.\",\"amount\":\"16.00\",\"user_id\":58}', NULL, '2024-12-03 21:51:08', '2024-12-03 21:51:08'),
('8aba6b90-07e4-4225-9831-a4bafd76db11', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"20.00\",\"user_id\":46}', NULL, '2024-12-03 08:04:12', '2024-12-03 08:04:12'),
('8ac70a11-330b-41d1-b382-97c4f68295b9', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berto have been updated.\",\"amount\":\"16.00\",\"user_id\":49}', NULL, '2024-12-03 21:23:41', '2024-12-03 21:23:41'),
('a44b2a88-0331-4271-ac26-77c4fdba9e47', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":\"69.00\",\"user_id\":46}', NULL, '2024-12-01 20:36:23', '2024-12-01 20:36:23'),
('a5b98817-64d6-4615-9a56-dc810230dc5b', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"16.00\",\"user_id\":46}', NULL, '2024-12-03 08:04:22', '2024-12-03 08:04:22'),
('b07e9eb9-825c-4ed4-b90b-0e20a33cf4a7', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":0.1253862633333333,\"user_id\":46}', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
('b5c9ff94-a5a8-46ec-a762-87c4d60b9342', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berto have been updated.\",\"amount\":\"20.00\",\"user_id\":49}', NULL, '2024-12-03 07:18:48', '2024-12-03 07:18:48'),
('b82f9623-97bd-413b-9e56-c38213f52652', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant iloveyou have been updated.\",\"amount\":0.013302635,\"user_id\":42}', NULL, '2024-12-01 22:30:58', '2024-12-01 22:30:58'),
('c1596981-7c36-44f4-9234-4bb1875cd726', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant iloveyou have been updated.\",\"amount\":1.805167356111111,\"user_id\":42}', NULL, '2024-12-01 19:36:59', '2024-12-01 19:36:59'),
('c9ebdbe7-5569-4825-bd0f-09b14b4b2a9d', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant ADMIN have been updated.\",\"amount\":\"32.00\",\"user_id\":46}', NULL, '2024-12-03 16:45:49', '2024-12-03 16:45:49'),
('cd96bd60-9cec-4624-a150-aecbb6ba4fed', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berta have been updated.\",\"amount\":\"20.00\",\"user_id\":58}', NULL, '2024-12-03 21:51:43', '2024-12-03 21:51:43'),
('efe1471a-c992-4e09-902e-629d66600b68', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":298.4259230208333,\"user_id\":46}', NULL, '2024-12-02 18:41:44', '2024-12-02 18:41:44'),
('f06a3e48-3dd9-4fd9-acf8-3671b3171f73', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant Berto have been updated.\",\"amount\":\"20.00\",\"user_id\":49}', NULL, '2024-12-03 07:26:03', '2024-12-03 07:26:03'),
('f36fd33e-b7ef-4a1a-a2c7-37229ff0fa7e', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":1.9745141874999996,\"user_id\":46}', NULL, '2024-12-02 07:00:53', '2024-12-02 07:00:53'),
('f44135be-69d5-4829-846a-05f2e0fd147b', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":36.20455276361111,\"user_id\":46}', NULL, '2024-12-02 07:11:00', '2024-12-02 07:11:00'),
('fa3a1800-ee1d-48b6-af83-39580a9fa5c2', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":216.50653970027776,\"user_id\":46}', NULL, '2024-12-03 04:28:24', '2024-12-03 04:28:24'),
('fae763e5-a70f-4f4e-9837-581dcb25a084', 'App\\Notifications\\EarningsNotification', 'App\\Models\\User', 46, '{\"message\":\"Earnings for attendant user2 have been updated.\",\"amount\":0.09881295777777778,\"user_id\":46}', NULL, '2024-12-01 21:35:25', '2024-12-01 21:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rate_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `parking_code` varchar(50) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime DEFAULT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `rate_name` varchar(100) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `slot` varchar(1010) NOT NULL,
  `total_time` int(11) DEFAULT 0,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `paid_status` enum('paid','unpaid') DEFAULT 'unpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `user_id`, `rate_id`, `slot_id`, `vehicle_id`, `parking_code`, `check_in`, `check_out`, `vehicle_type`, `rate_name`, `rate`, `slot`, `total_time`, `total_amount`, `paid_status`, `created_at`, `updated_at`) VALUES
(113, 0, 25, 40, 21, 'PA-HDMMYSTC', '2024-12-04 05:15:34', '2024-12-04 05:51:08', 'Verified', 'VIP 2 WHEELS', 16.00, 'A 1', 1, 16.00, 'paid', '2024-12-03 21:15:34', '2024-12-03 21:51:08'),
(114, 0, 25, 41, 0, 'PA-AHI6SMY3', '2024-12-04 05:22:08', '2024-12-04 05:23:39', 'Verified', 'VIP 2 WHEELS', 16.00, 'A 2', 1, 16.00, 'paid', '2024-12-03 21:22:08', '2024-12-03 21:23:41'),
(115, 0, 21, 41, 0, 'PA-WGXGJUFC', '2024-12-04 05:38:53', '2024-12-04 05:51:43', 'Verified', 'REGULAR 2 WHEELS', 20.00, 'A 2', 1, 20.00, 'paid', '2024-12-03 21:38:53', '2024-12-03 21:51:43'),
(116, 0, 21, 52, 0, 'PA-D3YCQKHJ', '2024-12-04 05:39:52', '2024-12-05 05:53:16', 'Verified', 'REGULAR 2 WHEELS', 20.00, 'B 1', 1, 20.00, 'paid', '2024-12-03 21:39:52', '2024-12-04 21:53:16'),
(117, 0, 21, 60, 0, 'PA-MGBWG52F', '2024-12-04 05:43:22', '2024-12-05 05:53:57', 'Verified', 'REGULAR 2 WHEELS', 20.00, 'D 1', 1, 20.00, 'paid', '2024-12-03 21:43:22', '2024-12-04 21:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `parking_lot`
--

CREATE TABLE `parking_lot` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(255) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `status` enum('inactive','active','') NOT NULL,
  `availability` enum('Occupied','Available','Reserved','') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking_lot`
--

INSERT INTO `parking_lot` (`id`, `slot_name`, `vehicle_type`, `status`, `availability`, `created_at`, `updated_at`) VALUES
(40, 'A 1', '2 WHEELS', 'inactive', 'Occupied', '2024-12-03 07:50:34', '2024-12-04 21:56:43'),
(41, 'A 2', '2 WHEELS', 'active', 'Available', '2024-12-03 07:51:01', '2024-12-03 21:51:43'),
(42, 'A 3', '2 WHEELS', 'active', 'Available', '2024-12-03 07:51:12', '2024-12-03 20:15:33'),
(43, 'A 4', '2 WHEELS', 'active', 'Available', '2024-12-03 07:51:28', '2024-12-03 07:51:28'),
(44, 'A 5', '2 WHEELS', 'active', 'Available', '2024-12-03 07:51:41', '2024-12-03 07:51:41'),
(45, 'A 6', '2 WHEELS', 'active', 'Available', '2024-12-03 07:51:54', '2024-12-03 07:51:54'),
(46, 'A 7', '2 WHEELS', 'active', 'Available', '2024-12-03 07:52:07', '2024-12-03 07:52:07'),
(47, 'A 8', '2 WHEELS', 'active', 'Available', '2024-12-03 07:52:30', '2024-12-03 07:52:30'),
(48, 'A 9', '2 WHEELS', 'active', 'Available', '2024-12-03 07:52:43', '2024-12-03 07:52:43'),
(49, 'A 10', '2 WHEELS', 'active', 'Available', '2024-12-03 07:52:58', '2024-12-03 07:52:58'),
(50, 'A 11', '2 WHEELS', 'active', 'Available', '2024-12-03 07:53:07', '2024-12-03 07:53:07'),
(51, 'A 12', '2 WHEELS', 'active', 'Available', '2024-12-03 07:53:20', '2024-12-03 07:53:20'),
(52, 'B 1', '4 WHEELS', 'active', 'Available', '2024-12-03 07:53:35', '2024-12-04 21:53:16'),
(53, 'B 2', '4 WHEELS', 'active', 'Available', '2024-12-03 07:53:47', '2024-12-03 16:45:49'),
(54, 'B 3', '4 WHEELS', 'active', 'Available', '2024-12-03 07:54:31', '2024-12-03 07:54:31'),
(55, 'B 4', '4 WHEELS', 'active', 'Available', '2024-12-03 07:54:42', '2024-12-03 07:54:42'),
(56, 'B 5', '4 WHEELS', 'active', 'Available', '2024-12-03 07:54:56', '2024-12-03 07:54:56'),
(57, 'B 6', '4 WHEELS', 'active', 'Available', '2024-12-03 07:55:10', '2024-12-03 07:55:10'),
(58, 'C 1', '8 WHEELS', 'active', 'Available', '2024-12-03 07:55:44', '2024-12-03 20:15:48'),
(60, 'D 1', '10 WHEELS', 'active', 'Available', '2024-12-03 21:03:42', '2024-12-04 21:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `rate_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `rate_name`, `category_id`, `type`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(21, 'REGULAR 2 WHEELS', 21, 'fixed', 20.00, 'active', '2024-12-03 06:47:53', '2024-12-03 06:47:53'),
(22, 'REGULAR 4 WHEELS', 22, 'fixed', 40.00, 'active', '2024-12-03 07:46:50', '2024-12-03 07:46:50'),
(23, 'REGULAR 8 WHEELS', 24, 'fixed', 60.00, 'active', '2024-12-03 07:47:11', '2024-12-03 07:47:11'),
(24, 'REGULAR 10 WHEELS', 25, 'fixed', 80.00, 'active', '2024-12-03 07:47:24', '2024-12-03 07:47:24'),
(25, 'VIP 2 WHEELS', 21, 'fixed', 16.00, 'active', '2024-12-03 07:57:38', '2024-12-03 07:57:38'),
(26, 'VIP 4 WHEELS', 22, 'fixed', 32.00, 'active', '2024-12-03 07:58:11', '2024-12-03 07:58:11'),
(27, 'VIP 8 WHEELS', 24, 'fixed', 48.00, 'active', '2024-12-03 07:58:51', '2024-12-03 07:58:51'),
(28, 'VIP 10 WHEELS', 25, 'fixed', 64.00, 'active', '2024-12-03 07:59:17', '2024-12-03 07:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7yvMKhCUdIV62JQKFAHleUmhop4bNQqddp3tge2Q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3FWVlRQZkhDS0huUjZHR3h2STRWNEVWQ3NYZURuS2NMOE5DYzBRbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaWduaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741868028),
('mPqsD5Aib1PZEJisWNNgJPbm4jz9R3BAK2UdLIwq', 61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNkVTNGowSGNzUW96RnVhZXFxRE5BZUNYNHVCWXlBU25pM3VJamNMNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9EYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjE7czo1OiJlcnJvciI7czoxNDoiQWNjZXNzIGRlbmllZC4iO30=', 1741868667);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `roles` enum('admin','customer','attendant','') NOT NULL,
  `total_earnings` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `roles`, `total_earnings`, `created_at`, `updated_at`) VALUES
(46, 'ADMIN', 'admin@admin.com', '$2y$12$YCmTRNPReU.nP6RFLg720evs8JNuF9U6MFBhJ/iCzSIygtuKM6p4q', NULL, 'admin', 884.92, '2024-12-01 04:30:50', '2024-12-03 17:20:34'),
(58, 'Berta', 'attendant@vpms.com', '$2y$12$pAZuVb1fHdsrdeslG0xV3OtrZRaKKZVk.DvYazsS8cYswH7Zc.ybi', NULL, 'attendant', 76.00, '2024-12-03 21:25:30', '2024-12-04 21:53:57'),
(59, 'Bertooo', 'user@user.com', '$2y$12$iHuXLr9QGJH/tWlQB6Oz.u1XJXfz.QcG411oY4Y/wcGVeyIO4Narm', NULL, 'customer', NULL, '2024-12-03 21:31:01', '2024-12-03 21:31:01'),
(60, 'bertoo', 'user1@user.com', '$2y$12$MugLwIGye2uD.m.4bnizwOdNIKZAeLSmaAmTajC6bYeULlLNbD/wm', NULL, 'customer', NULL, '2024-12-03 21:35:03', '2024-12-03 21:35:03'),
(61, 'Berto', 'berto@vpms.com', '$2y$12$UEvXyztZRGl2s8hrguPmB.J6.jpVASuDZ7CJXRhpSxj9hoG0JQzfG', NULL, 'customer', NULL, '2025-03-13 04:23:44', '2025-03-13 04:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `group_name`, `status`, `created_at`, `updated_at`) VALUES
(21, '2 WHEELS', 'active', '2024-12-03 06:04:57', '2024-12-03 06:04:57'),
(22, '4 WHEELS', 'active', '2024-12-03 07:45:34', '2024-12-03 07:45:34'),
(24, '8 WHEELS', 'active', '2024-12-03 07:46:15', '2024-12-03 07:46:15'),
(25, '10 WHEELS', 'active', '2024-12-03 07:46:26', '2024-12-03 21:16:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_id_foreign` (`sender_id`),
  ADD KEY `chats_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_lot`
--
ALTER TABLE `parking_lot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `parking_lot`
--
ALTER TABLE `parking_lot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'animal_bite_center', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"parkingdb\",\"phpmyadmin\",\"srsdb\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'srsdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"cache\",\"cache_locks\",\"failed_jobs\",\"jobs\",\"job_batches\",\"migrations\",\"password_reset_tokens\",\"sessions\",\"users\"],\"table_structure[]\":[\"cache\",\"cache_locks\",\"failed_jobs\",\"jobs\",\"job_batches\",\"migrations\",\"password_reset_tokens\",\"sessions\",\"users\"],\"table_data[]\":[\"cache\",\"cache_locks\",\"failed_jobs\",\"jobs\",\"job_batches\",\"migrations\",\"password_reset_tokens\",\"sessions\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'table', 'sres', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sres\",\"table\":\"documents\"},{\"db\":\"sres\",\"table\":\"enrollments\"},{\"db\":\"srsdb\",\"table\":\"users\"},{\"db\":\"srsdb\",\"table\":\"system_mail_templates\"},{\"db\":\"srsdb\",\"table\":\"system_settings\"},{\"db\":\"srsdb\",\"table\":\"jobs\"},{\"db\":\"fabro\",\"table\":\"users\"},{\"db\":\"jenn\",\"table\":\"users\"},{\"db\":\"acabo\",\"table\":\"users\"},{\"db\":\"xander\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-04-15 06:28:15', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `registrationdb`
--
CREATE DATABASE IF NOT EXISTS `registrationdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registrationdb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Lastname`, `Firstname`, `Email`, `Password`) VALUES
(1, 'Carl John', 'Morales', 'morales.carljohn1@gmail.com', '$2y$10$HPLGthXkn0irkXW8nEex3uyiAMgGZ9ECvqRn1f5PBmgGAieG8lR9C'),
(2, 'Berts', 'Berto', 'berto@email.com', '$2y$10$nX/Sk1bIX0Sd7VAtxpcB..SFRcijZoIJypNmMV8.vr3fwIPD4BoxO'),
(3, 'Adigue', 'Stephanie', 'stephanie@gmail.com', '$2y$10$5KMetm0liHWGLIr7/SNn/uo80KfwE5MbDzZQwtwOtn1kS84Zl4RFi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `shar`
--
CREATE DATABASE IF NOT EXISTS `shar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shar`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(3, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$9tvawqftur16NCCONn7EjeA5zEY7//L05luNaMRl4srhgr9Bem8Au'),
(4, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$lO6Vj/4WXGuJ/KgH3duAwu4FosWzeoDHkf.yV/K14O5CSbL4Tn9jK'),
(5, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$qQlWSKbn3Twz8ZnshuCn3ullEAbSKvJ3LE5aVxbsuQzelvV4V1z8a'),
(6, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$B3Hp4CrhVXV6gr4VufCEsOuW16wnBRUoEOceOmjTYTKnYkFGHg3cG'),
(7, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$QVhh4G/zAWpgFxULccUZueIoZGAb81mpborW/UALbaXxhWlwOu9ui'),
(8, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$mdTl7f8tvxH9kmm91TuIKu7vXvj8uMW2fq6AcdigUT26wDmLTQZ.a'),
(9, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$EgqeCd43dahkie18TJEhHeloJxLqzjXJIdNJqw9vWt31VAxmRULL6'),
(10, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$TpY7b7i8nUxfzi3OFjm3LuR7FUQA8okJmz/nAF3HCT5nLscejQVHK'),
(11, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$0VPonFRifbALv4CxAn3R7O1G1dP2Ad8BW4OybcUkHFP2XMt83BHoq'),
(12, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$XP3BoZb1s8Ec30xdOJLvJOJloN7MUUGWpMjsBd./ce6MhvIdoZj4u'),
(13, 'shar', 'saludares', 'sharsaludares@gmail.com', '$2y$10$eN5U9CLdqI51LvnXLlSOJekkC8CHuPTXL8oCbwtUrSPoabpKPitBe'),
(14, 'saludares', 'sharmaine', 'sharmainesaludares@gmail.com', '$2y$10$yykZRlSVkkE.GjcWfexIruLT0unZalk0WgomexWOnUXx6ofG2hSba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `sres`
--
CREATE DATABASE IF NOT EXISTS `sres` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sres`;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `enrollment_id`, `document_type`, `file_name`, `file_path`, `file_size`, `file_extension`, `created_at`, `updated_at`) VALUES
(1, 1, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/1_adigue-stephanie/birth-certificate-1744698474.PNG', 155203, 'PNG', '2025-04-14 22:27:54', '2025-04-14 22:27:54'),
(2, 1, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/1_adigue-stephanie/barangay-residency-1744698474.PNG', 58825, 'PNG', '2025-04-14 22:27:54', '2025-04-14 22:27:54'),
(3, 2, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/2_adigue-stephanie/birth-certificate-1744700270.PNG', 155203, 'PNG', '2025-04-14 22:57:50', '2025-04-14 22:57:50'),
(4, 2, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/2_adigue-stephanie/barangay-residency-1744700270.PNG', 58825, 'PNG', '2025-04-14 22:57:50', '2025-04-14 22:57:50'),
(5, 3, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/3_mariel-maricar/birth-certificate-1744701047.PNG', 155203, 'PNG', '2025-04-14 23:10:47', '2025-04-14 23:10:47'),
(6, 3, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/3_mariel-maricar/barangay-residency-1744701047.PNG', 58825, 'PNG', '2025-04-14 23:10:47', '2025-04-14 23:10:47'),
(7, 4, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/4_paligutan-stephanie/birth-certificate-1744702596.PNG', 155203, 'PNG', '2025-04-14 23:36:36', '2025-04-14 23:36:36'),
(8, 4, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/4_paligutan-stephanie/barangay-residency-1744702596.PNG', 58825, 'PNG', '2025-04-14 23:36:36', '2025-04-14 23:36:36'),
(9, 5, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/5_adigue-stephanie/birth-certificate-1744702793.PNG', 155203, 'PNG', '2025-04-14 23:39:53', '2025-04-14 23:39:53'),
(10, 5, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/5_adigue-stephanie/barangay-residency-1744702793.PNG', 58825, 'PNG', '2025-04-14 23:39:53', '2025-04-14 23:39:53'),
(11, 6, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/6_adigue-stephanie/birth-certificate-1744703847.PNG', 155203, 'PNG', '2025-04-14 23:57:27', '2025-04-14 23:57:27'),
(12, 6, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/6_adigue-stephanie/barangay-residency-1744703847.PNG', 58825, 'PNG', '2025-04-14 23:57:27', '2025-04-14 23:57:27'),
(13, 7, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/7_paligutan-stephanie/birth-certificate-1744704936.PNG', 155203, 'PNG', '2025-04-15 00:15:36', '2025-04-15 00:15:36'),
(14, 7, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/7_paligutan-stephanie/barangay-residency-1744704936.PNG', 58825, 'PNG', '2025-04-15 00:15:36', '2025-04-15 00:15:36'),
(15, 8, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/8_paligutan-stephanie/birth-certificate-1744705008.PNG', 155203, 'PNG', '2025-04-15 00:16:48', '2025-04-15 00:16:48'),
(16, 8, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/8_paligutan-stephanie/barangay-residency-1744705008.PNG', 58825, 'PNG', '2025-04-15 00:16:48', '2025-04-15 00:16:48'),
(17, 9, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/9_paligutan-stephanie/birth-certificate-1744705270.PNG', 155203, 'PNG', '2025-04-15 00:21:10', '2025-04-15 00:21:10'),
(18, 9, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/9_paligutan-stephanie/barangay-residency-1744705270.PNG', 58825, 'PNG', '2025-04-15 00:21:10', '2025-04-15 00:21:10'),
(19, 10, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/10_paligutan-stephanie/birth-certificate-1744705322.PNG', 155203, 'PNG', '2025-04-15 00:22:02', '2025-04-15 00:22:02'),
(20, 10, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/10_paligutan-stephanie/barangay-residency-1744705322.PNG', 58825, 'PNG', '2025-04-15 00:22:02', '2025-04-15 00:22:02'),
(21, 11, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/11_paligutan-stephanie/birth-certificate-1744706645.PNG', 155203, 'PNG', '2025-04-15 00:44:06', '2025-04-15 00:44:06'),
(22, 11, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/11_paligutan-stephanie/barangay-residency-1744706646.PNG', 58825, 'PNG', '2025-04-15 00:44:06', '2025-04-15 00:44:06'),
(23, 12, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/12_paligutan-stephanie/birth-certificate-1744706753.PNG', 155203, 'PNG', '2025-04-15 00:45:53', '2025-04-15 00:45:53'),
(24, 12, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/12_paligutan-stephanie/barangay-residency-1744706753.PNG', 58825, 'PNG', '2025-04-15 00:45:53', '2025-04-15 00:45:53'),
(25, 13, 'Birth Certificate', 'birthcertificate.PNG', 'student_documents/13_paligutan-stephanie/birth-certificate-1744706913.PNG', 155203, 'PNG', '2025-04-15 00:48:33', '2025-04-15 00:48:33'),
(26, 13, 'Barangay Residency', 'baranggaycertificate.PNG', 'student_documents/13_paligutan-stephanie/barangay-residency-1744706913.PNG', 58825, 'PNG', '2025-04-15 00:48:33', '2025-04-15 00:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_type` varchar(255) NOT NULL,
  `grade_level` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `special_needs` text DEFAULT NULL,
  `parent_name` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `emergency_name` varchar(255) NOT NULL,
  `emergency_relationship` varchar(255) NOT NULL,
  `emergency_phone` varchar(255) NOT NULL,
  `has_id_pictures` tinyint(1) NOT NULL DEFAULT 0,
  `agreement` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_details` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_type`, `grade_level`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `student_email`, `previous_school`, `special_needs`, `parent_name`, `relationship`, `mobile_number`, `landline`, `email`, `address`, `emergency_name`, `emergency_relationship`, `emergency_phone`, `has_id_pictures`, `agreement`, `status`, `created_at`, `updated_at`, `confirmed_details`) VALUES
(1, 'new', 'kindergarten', 'Stephanie', NULL, 'Adigue', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'guardian', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 22:27:54', '2025-04-14 22:27:54', 0),
(2, 'new', 'kindergarten', 'Stephanie', NULL, 'Adigue', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'guardian', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 22:57:50', '2025-04-14 22:57:50', 0),
(3, 'new', 'grade1', 'Maricar', NULL, 'Mariel', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'mother', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 23:10:47', '2025-04-14 23:10:47', 1),
(4, 'new', 'kindergarten', 'Stephanie', NULL, 'Paligutan', '2001-11-11', 'male', NULL, NULL, NULL, 'sasasa', 'mother', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 23:36:36', '2025-04-14 23:36:36', 1),
(5, 'new', 'grade1', 'Stephanie', NULL, 'Adigue', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'mother', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 23:39:53', '2025-04-14 23:39:53', 1),
(6, 'new', 'grade1', 'Stephanie', NULL, 'Adigue', '2002-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'mother', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-14 23:57:27', '2025-04-14 23:57:27', 1),
(7, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:15:36', '2025-04-15 00:15:36', 1),
(8, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:16:48', '2025-04-15 00:16:48', 1),
(9, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:21:10', '2025-04-15 00:21:10', 1),
(10, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:22:02', '2025-04-15 00:22:02', 1),
(11, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:44:05', '2025-04-15 00:44:05', 1),
(12, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:45:53', '2025-04-15 00:45:53', 1),
(13, 'new', 'grade1', 'Stephanie', NULL, 'Paligutan', '2001-12-11', 'male', NULL, NULL, NULL, 'sasasa', 'father', '0991111111111', NULL, 'morales.carljohn1@gmail.com', 'none', 'fdfsadfs', 'vdsgfds', '099111111111', 1, 1, 'pending', '2025-04-15 00:48:33', '2025-04-15 00:48:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_04_15_054921_create_sessions_table', 1),
(2, '2025_04_15_061416_create_enrollments_table', 1),
(3, '2025_04_15_062202_create_documents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('p3T7lEiEiSc7RTNiIYGOF83GWRtf9Zi0Zq9dwp8e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDVTbXB6T0tXZ2NSMldOZ25wb0szbHoyb1NtYW1MZEFTek1Od1VGbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGFmZiI7fXM6MTA6ImVucm9sbG1lbnQiO2E6NDp7czoyOiJpZCI7aToxMztzOjU6ImVtYWlsIjtzOjI3OiJtb3JhbGVzLmNhcmxqb2huMUBnbWFpbC5jb20iO3M6OToiZmlyc3ROYW1lIjtzOjk6IlN0ZXBoYW5pZSI7czo4OiJsYXN0TmFtZSI7czo5OiJQYWxpZ3V0YW4iO319', 1744707142);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_enrollment_id_foreign` (`enrollment_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_enrollment_id_foreign` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`id`) ON DELETE CASCADE;
--
-- Database: `sresdb`
--
CREATE DATABASE IF NOT EXISTS `sresdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sresdb`;

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2025-04-04 19:45:22', '2025-04-04 19:45:22'),
(2, 1, '127.0.0.1', '2025-04-12 17:54:42', '2025-04-12 17:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `backend_dashboards`
--

CREATE TABLE `backend_dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `definition` mediumtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `global_access` tinyint(1) NOT NULL DEFAULT 0,
  `updated_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_report_data_cache`
--

CREATE TABLE `backend_report_data_cache` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `persist_code` varchar(255) DEFAULT NULL,
  `reset_password_code` varchar(255) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_password_expired` tinyint(1) NOT NULL DEFAULT 0,
  `password_changed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `is_superuser`, `activated_at`, `last_login`, `deleted_at`, `role_id`, `created_at`, `updated_at`, `is_password_expired`, `password_changed_at`) VALUES
(1, 'Principal', 'Sir', 'Principal', 'admin@sres.edu', '$2y$10$9ef4E0xiT8izc1cj6f3pYedTH3uZfq.C1MWou2zORl83OIaPDjAem', NULL, '$2y$10$EpVHer/7YaC/XrMm.Kue.eijB45S6nfcErTcoht5r4seygGY4bT9e', NULL, '', 1, 1, NULL, '2025-04-12 17:54:42', NULL, 1, '2025-04-04 12:08:19', '2025-04-12 17:54:42', 0, '2025-04-04 22:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `code`, `description`, `is_new_user_default`, `created_at`, `updated_at`) VALUES
(1, 'Owners', 'owners', 'Default group for website owners.', 0, '2025-04-04 12:04:23', '2025-04-04 12:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `group` varchar(50) NOT NULL,
  `item` varchar(150) NOT NULL,
  `value` text DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL,
  `site_root_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`, `site_id`, `site_root_id`) VALUES
(1, 1, 'cms', 'theme', 'edit', '\"sres\"', NULL, NULL),
(2, 1, 'backend', 'backend', 'preferences', '{\"locale\":\"en\",\"fallback_locale\":\"en\",\"timezone\":\"UTC\",\"editor_theme\":\"twilight\",\"editor_word_wrap\":\"fluid\",\"editor_font_size\":\"12\",\"editor_tab_size\":\"4\",\"editor_code_folding\":\"manual\",\"editor_autocompletion\":\"live\",\"editor_use_emmet\":\"1\",\"editor_show_gutter\":\"1\",\"editor_highlight_active_line\":\"1\",\"editor_auto_closing\":\"1\",\"editor_use_hard_tabs\":\"1\",\"editor_display_indent_guides\":\"1\",\"editor_show_invisibles\":\"1\",\"editor_show_print_margin\":\"0\"}', NULL, NULL),
(3, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"title\":\"LOGIN\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":0}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"ocWidgetWidth\":5}}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `color_background` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `color_background`, `description`, `permissions`, `is_system`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'developer', '#3498db', 'Site administrator with access to developer tools.', '', 1, 1, '2025-04-04 12:04:23', '2025-04-04 12:04:23'),
(2, 'Publisher', 'publisher', '#1abc9c', 'Site editor with access to publishing tools.', '', 1, 2, '2025-04-04 12:04:23', '2025-04-04 12:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `old_template` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `old_content` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_traffic_stats_pageviews`
--

CREATE TABLE `cms_traffic_stats_pageviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ev_datetime` datetime DEFAULT NULL,
  `ev_date` date DEFAULT NULL,
  `ev_year_month_day` varchar(10) DEFAULT NULL,
  `ev_year_month` varchar(10) DEFAULT NULL,
  `ev_year_quarter` varchar(10) DEFAULT NULL,
  `ev_year_week` varchar(10) DEFAULT NULL,
  `ev_year` varchar(10) DEFAULT NULL,
  `ev_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_authenticated` tinyint(1) DEFAULT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `first_time_visit` tinyint(1) NOT NULL DEFAULT 0,
  `user_agent` varchar(255) DEFAULT NULL,
  `page_path` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `referral_domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) NOT NULL,
  `master_field` varchar(255) NOT NULL,
  `slave_type` varchar(255) NOT NULL,
  `slave_id` int(11) NOT NULL,
  `session_key` varchar(255) NOT NULL,
  `pivot_data` mediumtext DEFAULT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` text NOT NULL,
  `exception` longtext DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(8, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(9, '2014_10_01_000010_Db_Jobs', 1),
(10, '2014_10_01_000011_Db_System_Event_Logs', 1),
(11, '2014_10_01_000012_Db_System_Request_Logs', 1),
(12, '2014_10_01_000013_Db_System_Sessions', 1),
(13, '2015_10_01_000016_Db_Cache', 1),
(14, '2015_10_01_000017_Db_System_Revisions', 1),
(15, '2015_10_01_000018_Db_FailedJobs', 1),
(16, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(17, '2021_10_01_000025_Db_Add_Pivot_Data_To_Deferred_Bindings', 1),
(18, '2022_10_01_000026_Db_System_Site_Definitions', 1),
(19, '2023_10_01_000027_Db_Add_Site_To_Settings', 1),
(20, '2023_10_01_000028_Db_Add_Restrict_Roles_To_Sites', 1),
(21, '2023_10_01_000029_Db_System_Site_Groups', 1),
(22, '2023_10_01_000030_Db_Add_Group_To_Sites', 1),
(23, '2024_10_01_000031_Db_Add_Sort_Order_To_Deferred_Bindings', 1),
(24, '2024_10_01_000032_Db_Add_Fallback_Locale_To_Sites', 1),
(25, '2013_10_01_000001_Db_Backend_Users', 2),
(26, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(27, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(28, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(29, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(30, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(31, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(32, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(33, '2022_10_01_000012_Db_Backend_User_Roles_Sortable', 2),
(34, '2023_10_01_000013_Db_Add_Site_To_Preferences', 2),
(35, '2023_10_01_000014_Db_Add_User_Expired_Password', 2),
(36, '2023_10_01_000015_Db_Backend_Dashboards', 2),
(37, '2023_10_01_000016_Db_Backend_Report_Data_Cache', 2),
(38, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3),
(41, '2023_10_01_000004_Db_Cms_Traffic_Stats_Pageviews', 3),
(42, '2021_05_01_000001_Db_Tailor_Globals', 4),
(43, '2021_05_01_000002_Db_Tailor_Content', 4),
(44, '2021_06_01_000003_Db_Tailor_PreviewToken', 4),
(45, '2023_10_01_000004_Db_Tailor_Content_Joins', 4),
(46, '2024_10_01_000005_Db_Add_Parent_To_Repeaters', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Symfony\\Component\\Routing\\Exception\\RouteNotFoundException: Route [history] not defined. in C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\UrlGenerator.php:467\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\helpers.php(826): Illuminate\\Routing\\UrlGenerator->route(\'history\', Array, true)\n#1 C:\\SRES WEBSITE\\modules\\system\\classes\\MarkupExtensionItem.php(166): route(\'history\')\n#2 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(87): System\\Classes\\MarkupExtensionItem->System\\Classes\\{closure}(\'history\')\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#43 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Route [history] not defined.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 44. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:37:46', '2025-04-04 19:37:46'),
(2, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:37:46', '2025-04-04 19:37:46'),
(3, 'error', 'Symfony\\Component\\Routing\\Exception\\RouteNotFoundException: Route [history] not defined. in C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\UrlGenerator.php:467\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\helpers.php(826): Illuminate\\Routing\\UrlGenerator->route(\'history\', Array, true)\n#1 C:\\SRES WEBSITE\\modules\\system\\classes\\MarkupExtensionItem.php(166): route(\'history\')\n#2 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(87): System\\Classes\\MarkupExtensionItem->System\\Classes\\{closure}(\'history\')\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#43 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Route [history] not defined.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 44. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:37:49', '2025-04-04 19:37:49');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:37:50', '2025-04-04 19:37:50'),
(5, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:38:57', '2025-04-04 19:38:57');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(6, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:39:00', '2025-04-04 19:39:00'),
(7, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/edit\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/edit\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/edit\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/edit\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:39:42', '2025-04-04 19:39:42');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(8, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:39:43', '2025-04-04 19:39:43'),
(9, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/admin\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/admin\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/admin\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/admin\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:39:55', '2025-04-04 19:39:55');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(10, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:39:56', '2025-04-04 19:39:56'),
(11, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/admin\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/admin\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'cms/admin\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'cms/admin\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:41:37', '2025-04-04 19:41:37');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(12, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:41:37', '2025-04-04 19:41:37'),
(13, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(98): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 26. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:41:41', '2025-04-04 19:41:41'),
(14, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(98): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 26. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:41:42', '2025-04-04 19:41:42');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(15, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:41:42', '2025-04-04 19:41:42'),
(16, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(98): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 26. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:42:09', '2025-04-04 19:42:09'),
(17, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-links\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-links\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\3d\\3de14fdde162a846446a0f8827cf16fe.php(66): Cms\\Twig\\Extension->partialFunction(\'site/nav-links\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_ee86b600ea6996dc214db46f6d018d40->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#8 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#10 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#11 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#12 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#14 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#15 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-links\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/partials/site/header.htm\" at line 13. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(242): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#5 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(85): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#11 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#12 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#46 {main}', '[]', '2025-04-04 19:42:10', '2025-04-04 19:42:10');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(18, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-mobile\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-mobile\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\f2\\f26d76707f71707eb1b37725fc60e83c.php(132): Cms\\Twig\\Extension->partialFunction(\'site/nav-mobile\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_e2d60d027162ef0d9a3229ebaece1327->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-mobile\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/home.htm\" at line 45. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:44:05', '2025-04-04 19:44:05'),
(19, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav-mobile\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav-mobile\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\d5\\d50a5ca31b39394fad91037c7bfef92d.php(116): Cms\\Twig\\Extension->partialFunction(\'site/nav-mobile\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1159dcd2c46a1343fd30ec17d3a07b2e->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav-mobile\' is not found.\") in \"C:\\SRES WEBSITE\\themes/demo/layouts/default.htm\" at line 32. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'favicon.ico\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'favicon.ico\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 19:44:05', '2025-04-04 19:44:05'),
(20, 'error', 'Cms\\Classes\\CmsException: The partial \'site/header\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/header\' is not found.\") in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/layouts/default.htm\" at line 33. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 23:15:58', '2025-04-04 23:15:58');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(21, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/nav\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav\' is not found.\") in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/layouts/default.htm\" at line 33. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 23:16:55', '2025-04-04 23:16:55'),
(22, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/nav\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav\' is not found.\") in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/layouts/default.htm\" at line 33. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 23:16:55', '2025-04-04 23:16:55'),
(23, 'error', 'Cms\\Classes\\CmsException: The partial \'site/nav\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/nav\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/nav\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/nav\' is not found.\") in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/layouts/default.htm\" at line 33. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 23:17:26', '2025-04-04 23:17:26');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(24, 'error', 'Cms\\Classes\\CmsException: The partial \'site/header\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/header\' is not found.\") in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/layouts/default.htm\" at line 33. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-04 23:18:11', '2025-04-04 23:18:11'),
(25, 'error', 'Twig\\Error\\SyntaxError: Unknown \"request\" function in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/partials/site/header.htm\" at line 38. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php:816\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(533): Twig\\ExpressionParser->getFunction(\'request\', 38)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(322): Twig\\ExpressionParser->getFunctionNode(\'request\', 38)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(265): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(102): Twig\\ExpressionParser->getPrimary()\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(158): Twig\\ExpressionParser->parseExpression()\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(95): Twig\\Parser->subparse(NULL, false)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(559): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(590): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(409): Twig\\Environment->compileSource(Object(Twig\\Source))\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(371): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\SRES WEBSITE...\')\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(241): Twig\\Environment->load(\'C:\\\\SRES WEBSITE...\')\n#11 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#12 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#13 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#14 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#15 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#16 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#17 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#18 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#19 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#53 {main}', '[]', '2025-04-04 23:18:58', '2025-04-04 23:18:58'),
(26, 'error', 'Twig\\Error\\SyntaxError: Unknown \"request\" function in \"C:\\SRES WEBSITE\\themes/san-roque-elementary-school/partials/site/header.htm\" at line 38. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php:816\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(533): Twig\\ExpressionParser->getFunction(\'request\', 38)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(322): Twig\\ExpressionParser->getFunctionNode(\'request\', 38)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(265): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(102): Twig\\ExpressionParser->getPrimary()\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(158): Twig\\ExpressionParser->parseExpression()\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(95): Twig\\Parser->subparse(NULL, false)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(559): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(590): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(409): Twig\\Environment->compileSource(Object(Twig\\Source))\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(371): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\SRES WEBSITE...\')\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(241): Twig\\Environment->load(\'C:\\\\SRES WEBSITE...\')\n#11 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#12 C:\\SRES WEBSITE\\storage\\cms\\twig\\9b\\9b72c99e4c2b76042b882c5a77a8388a.php(114): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#13 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_1a519d4d85ec55644aa8da8001d2dcd8->doDisplay(Array, Array)\n#14 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#15 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#16 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#17 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#18 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#19 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'home\')\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'home\')\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#53 {main}', '[]', '2025-04-04 23:27:24', '2025-04-04 23:27:24'),
(27, 'debug', 'From: October CMS <noreply@octobercms.tld>\r\nTo: Principal Sir <admin@sres.edu>\r\nSubject: Password Reset\r\nMIME-Version: 1.0\r\nDate: Sun, 13 Apr 2025 01:53:35 +0000\r\nMessage-ID: <6df2ac8ce5b9697dd6fe44207dcd7b9d@octobercms.tld>\r\nContent-Type: multipart/alternative; boundary=nmsqXR6f\r\n\r\n--nmsqXR6f\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\nHello Principal Sir\r\n\r\nSomebody has requested a password reset for your a=\r\nccount, if this was not you, please ignore this email.\r\n\r\nYou can use the=\r\n following link to restore your password:\r\n\r\nRestore Password <http://127=\r\n.0.0.1:8000/admin/backend/auth/reset/1/FdoYEQVonlVJjq8QDgbVMynxQHfdQhLHJlB2=\r\nMKrl28>\r\n\r\n\r\n---\r\nThis is an automatic message. Please do not reply to =\r\nit.\r\n--nmsqXR6f\r\nContent-Type: text/html; charset=utf-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.=\r\nw3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=3D\"http://www.=\r\nw3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=3D\"viewport\" content=3D\"width=\r\n=3Ddevice-width, initial-scale=3D1.0\">\r\n    <meta http-equiv=3D\"Content-Ty=\r\npe\" content=3D\"text/html; charset=3DUTF-8\">\r\n</head>\r\n<body style=3D\"box-=\r\nsizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI=\r\n\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'S=\r\negoe UI Symbol\'; position: relative; -webkit-text-size-adjust: none; backgr=\r\nound-color: #f5f8fa; color: #74787e; height: 100%; line-height: 1.4; margin=\r\n: 0; padding: 0; width: 100% !important;\">\r\n    <style type=3D\"text/css\" m=\r\nedia=3D\"screen\">\r\n        body,body *:not(html):not(style):not(br):not(tr)=\r\n:not(code){box-sizing:border-box;font-family:-apple-system,BlinkMacSystemFo=\r\nnt,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe =\r\nUI Emoji\',\'Segoe UI Symbol\';position:relative}body{-webkit-text-size-adjust=\r\n:none;background-color:#f5f8fa;color:#74787e;height:100%;line-height:1.4;ma=\r\nrgin:0;padding:0;width:100% !important}p,ul,ol,blockquote{line-height:1.4;t=\r\next-align:left}a{color:#0181b9}a img{border:none}h1{color:#2f3133;font-size=\r\n:18px;font-weight:bold;margin-top:0;text-align:left}h2{color:#2f3133;font-s=\r\nize:16px;font-weight:bold;margin-top:0;text-align:left}h3{color:#2f3133;fon=\r\nt-size:14px;font-weight:bold;margin-top:0;text-align:left}p{color:#74787e;f=\r\nont-size:16px;line-height:1.5em;margin-top:0;text-align:left}code{color:#74=\r\n787e;font-size:16px;line-height:1.5em;word-break:break-all}p.sub{font-size:=\r\n12px}img{max-width:100%}.wrapper{-premailer-cellpadding:0;-premailer-cellsp=\r\nacing:0;-premailer-width:100%;background-color:#f5f8fa;margin:0;padding:0;w=\r\nidth:100%}.content{-premailer-cellpadding:0;-premailer-cellspacing:0;-prema=\r\niler-width:100%;margin:0;padding:0;width:100%}.header{padding:25px 0;text-a=\r\nlign:center}.header a,.header span{color:#bbbfc3;font-size:19px;font-weight=\r\n:bold;text-decoration:none}.body{-premailer-cellpadding:0;-premailer-cellsp=\r\nacing:0;-premailer-width:100%;background-color:#f5f8fa;margin:0;padding:0;w=\r\nidth:100%}.inner-body{-premailer-cellpadding:0;-premailer-cellspacing:0;-pr=\r\nemailer-width:570px;background-color:#fff;border:1px solid #edeff2;border-r=\r\nadius:2px;box-shadow:0 2px 0 rgba(0,0,150,0.025),2px 4px 0 rgba(0,0,150,0.0=\r\n15);margin:0 auto;padding:0;width:570px}.subcopy{border-top:1px solid #e8e5=\r\nef;margin-top:25px;padding-top:25px}.subcopy p{font-size:14px}.footer{-prem=\r\nailer-cellpadding:0;-premailer-cellspacing:0;-premailer-width:570px;margin:=\r\n0 auto;padding:0;text-align:center;width:570px}.footer p{color:#aeaeae;font=\r\n-size:12px;text-align:center}.table table{-premailer-cellpadding:0;-premail=\r\ner-cellspacing:0;-premailer-width:100%;margin:30px auto;width:100%}.table t=\r\nh{border-bottom:1px solid #e8e5ef;margin:0;padding-bottom:8px}.table td{col=\r\nor:#74787e;font-size:15px;line-height:18px;margin:0;padding:10px 0}.content=\r\n-cell{max-width:100vw;padding:32px}.wrapper.layout-system .content-cell{pad=\r\nding:35px 0}.action{-premailer-cellpadding:0;-premailer-cellspacing:0;-prem=\r\nailer-width:100%;margin:30px auto;padding:0;text-align:center;width:100%}.b=\r\nutton{-webkit-text-size-adjust:none;border-radius:4px;color:#fff;display:in=\r\nline-block;overflow:hidden;text-decoration:none}.button-primary{background-=\r\ncolor:#3498db;border-top:8px solid #3498db;border-right:18px solid #3498db;=\r\nborder-bottom:8px solid #3498db;border-left:18px solid #3498db}.button-posi=\r\ntive{background-color:#31ac5f;border-top:8px solid #31ac5f;border-right:18p=\r\nx solid #31ac5f;border-bottom:8px solid #31ac5f;border-left:18px solid #31a=\r\nc5f}.button-negative{background-color:#ab2a1c;border-top:8px solid #ab2a1c;=\r\nborder-right:18px solid #ab2a1c;border-bottom:8px solid #ab2a1c;border-left=\r\n:18px solid #ab2a1c}.panel{margin:0 0 21px}.panel-content{background-color:=\r\n#edeff2;padding:16px}.panel-item{padding:0}.panel-item p:last-of-type{margi=\r\nn-bottom:0;padding-bottom:0}.promotion{background-color:#fff;border:2px das=\r\nhed #9ba2ab;margin:0;margin-bottom:25px;margin-top:25px;padding:24px;width:=\r\n100%;-premailer-cellpadding:0;-premailer-cellspacing:0;-premailer-width:100=\r\n%}.promotion h1{text-align:center}.promotion p{font-size:15px;text-align:ce=\r\nnter}.promotion p:last-of-type{margin-bottom:0;padding-bottom:0}.break-all{=\r\nword-break:break-all}\r\n        @media only screen and (max-width: 600px) {=\r\n\r\n    .inner-body {\r\n        width: 100% !important;\r\n    }\r\n\r\n    .fo=\r\noter {\r\n        width: 100% !important;\r\n    }\r\n}\r\n\r\n@media only scree=\r\nn and (max-width: 500px) {\r\n    .button {\r\n        width: 100% !important=\r\n;\r\n    }\r\n}\r\n    </style>\r\n\r\n    <table class=3D\"wrapper layout-system=\r\n\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=3D\"0\" style=3D\"box-sizing: b=\r\norder-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,=\r\nHelvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI S=\r\nymbol\'; position: relative; -premailer-cellpadding: 0; -premailer-cellspaci=\r\nng: 0; -premailer-width: 100%; background-color: #f5f8fa; margin: 0; paddin=\r\ng: 0; width: 100%;\">\r\n        <tr>\r\n            <td align=3D\"center\" styl=\r\ne=3D\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,=\r\n\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI =\r\nEmoji\',\'Segoe UI Symbol\'; position: relative;\">\r\n                <table cl=\r\nass=3D\"content\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=3D\"0\" style=3D=\r\n\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Seg=\r\noe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoj=\r\ni\',\'Segoe UI Symbol\'; position: relative; -premailer-cellpadding: 0; -prema=\r\niler-cellspacing: 0; -premailer-width: 100%; margin: 0; padding: 0; width: =\r\n100%;\">\r\n                    <!-- Email Body -->\r\n                    <tr=\r\n>\r\n                        <td class=3D\"body\" width=3D\"100%\" cellpadding=\r\n=3D\"0\" cellspacing=3D\"0\" style=3D\"box-sizing: border-box; font-family: -app=\r\nle-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'=\r\nApple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative; =\r\n-premailer-cellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100=\r\n%; background-color: #f5f8fa; margin: 0; padding: 0; width: 100%;\">\r\n     =\r\n                       <table class=3D\"inner-body\" align=3D\"center\" width=\r\n=3D\"570\" cellpadding=3D\"0\" cellspacing=3D\"0\" style=3D\"box-sizing: border-bo=\r\nx; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetic=\r\na,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; =\r\nposition: relative; -premailer-cellpadding: 0; -premailer-cellspacing: 0; -=\r\npremailer-width: 570px; background-color: #fff; border: 1px solid #edeff2; =\r\nborder-radius: 2px; box-shadow: 0 2px 0 rgba(0,0,150,0.025),2px 4px 0 rgba(=\r\n0,0,150,0.015); margin: 0 auto; padding: 0; width: 570px;\">\r\n             =\r\n                   <!-- Body content -->\r\n                                =\r\n<tr>\r\n                                    <td class=3D\"content-cell\" style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'=\r\nSegoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI E=\r\nmoji\',\'Segoe UI Symbol\'; position: relative; max-width: 100vw; padding: 35p=\r\nx 0;\">\r\n                                        <p style=3D\"box-sizing: bo=\r\nrder-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,H=\r\nelvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Sy=\r\nmbol\'; position: relative; color: #74787e; font-size: 16px; line-height: 1.=\r\n5em; margin-top: 0; text-align: left;\">Hello Principal Sir</p>\r\n<p style=\r\n=3D\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'=\r\nSegoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI E=\r\nmoji\',\'Segoe UI Symbol\'; position: relative; color: #74787e; font-size: 16p=\r\nx; line-height: 1.5em; margin-top: 0; text-align: left;\">Somebody has reque=\r\nsted a password reset for your account, if this was not you, please ignore =\r\nthis email.</p>\r\n<p style=3D\"box-sizing: border-box; font-family: -apple-s=\r\nystem,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Appl=\r\ne Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative; colo=\r\nr: #74787e; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align:=\r\n left;\">You can use the following link to restore your password:</p>\r\n<tab=\r\nle class=3D\"action\" align=3D\"center\" width=3D\"100%\" cellpadding=3D\"0\" cells=\r\npacing=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system,Bl=\r\ninkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color =\r\nEmoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative; -premailer-c=\r\nellpadding: 0; -premailer-cellspacing: 0; -premailer-width: 100%; margin: 3=\r\n0px auto; padding: 0; text-align: center; width: 100%;\">\r\n    <tr>\r\n     =\r\n   <td align=3D\"center\" style=3D\"box-sizing: border-box; font-family: -appl=\r\ne-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'A=\r\npple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative;\">=\r\n\r\n            <table width=3D\"100%\" border=3D\"0\" cellpadding=3D\"0\" cellspa=\r\ncing=3D\"0\" style=3D\"box-sizing: border-box; font-family: -apple-system,Blin=\r\nkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Em=\r\noji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative;\">\r\n          =\r\n      <tr>\r\n                    <td align=3D\"center\" style=3D\"box-sizing: =\r\nborder-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto=\r\n,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI =\r\nSymbol\'; position: relative;\">\r\n                        <table border=3D\"0=\r\n\" cellpadding=3D\"0\" cellspacing=3D\"0\" style=3D\"box-sizing: border-box; font=\r\n-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial=\r\n,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; positio=\r\nn: relative;\">\r\n                            <tr>\r\n                       =\r\n         <td style=3D\"box-sizing: border-box; font-family: -apple-system,Bl=\r\ninkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color =\r\nEmoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: relative;\">\r\n        =\r\n                            <a href=3D\"http://127.0.0.1:8000/admin/backend/=\r\nauth/reset/1/FdoYEQVonlVJjq8QDgbVMynxQHfdQhLHJlB2MKrl28\" class=3D\"button bu=\r\ntton-positive\" target=3D\"_blank\" style=3D\"box-sizing: border-box; font-fami=\r\nly: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans=\r\n-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; position: re=\r\nlative; -webkit-text-size-adjust: none; border-radius: 4px; color: #fff; di=\r\nsplay: inline-block; overflow: hidden; text-decoration: none; background-co=\r\nlor: #31ac5f; border-top: 8px solid #31ac5f; border-right: 18px solid #31ac=\r\n5f; border-bottom: 8px solid #31ac5f; border-left: 18px solid #31ac5f;\">\r\n=\r\n                                        Restore Password\r\n\r\n             =\r\n                       </a>\r\n                                </td>\r\n     =\r\n                       </tr>\r\n                        </table>\r\n         =\r\n           </td>\r\n                </tr>\r\n            </table>\r\n        <=\r\n/td>\r\n    </tr>\r\n</table>\r\n\r\n                                        <!=\r\n-- Subcopy -->\r\n                                        <table class=3D\"su=\r\nbcopy\" width=3D\"100%\" cellpadding=3D\"0\" cellspacing=3D\"0\" style=3D\"box-sizi=\r\nng: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Ro=\r\nboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe=\r\n UI Symbol\'; position: relative; border-top: 1px solid #e8e5ef; margin-top:=\r\n 25px; padding-top: 25px;\">\r\n    <tr>\r\n        <td style=3D\"box-sizing: b=\r\norder-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,=\r\nHelvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI S=\r\nymbol\'; position: relative;\">\r\n            <p style=3D\"box-sizing: border-=\r\nbox; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvet=\r\nica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'=\r\n; position: relative; color: #74787e; line-height: 1.5em; margin-top: 0; te=\r\nxt-align: left; font-size: 14px;\"><strong style=3D\"box-sizing: border-box; =\r\nfont-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,A=\r\nrial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; pos=\r\nition: relative;\">This is an automatic message. Please do not reply to it.<=\r\n/strong></p>\r\n        </td>\r\n    </tr>\r\n</table>                        =\r\n            </td>\r\n                                </tr>\r\n               =\r\n             </table>\r\n                        </td>\r\n                   =\r\n </tr>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n   =\r\n </table>\r\n\r\n</body>\r\n</html>\r\n--nmsqXR6f--', '[]', '2025-04-12 17:53:35', '2025-04-12 17:53:35');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(28, 'error', 'Cms\\Classes\\CmsException: The partial \'site/navbar\' is not found. in C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php:180\nStack trace:\n#0 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/navbar\', Array, true)\n#1 C:\\SRES WEBSITE\\storage\\cms\\twig\\a2\\a26b2b2941f4ccb779ac7d273838d8ad.php(96): Cms\\Twig\\Extension->partialFunction(\'site/navbar\', Array, true)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_fcfd4bfe51cff3329b3ade8337023d1d->doDisplay(Array, Array)\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#7 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#8 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#9 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#42 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/navbar\' is not found.\") in \"C:\\SRES WEBSITE\\themes/sres/layouts/default.htm\" at line 27. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php:402\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#3 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#4 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#5 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#7 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#11 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#12 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#19 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#38 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#39 {main}', '[]', '2025-04-12 18:47:16', '2025-04-12 18:47:16'),
(29, 'error', 'Twig\\Error\\SyntaxError: Unknown \"backendUrl\" function in \"C:\\SRES WEBSITE\\themes/sres/partials/site/footer.htm\" at line 52. in C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php:816\nStack trace:\n#0 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(533): Twig\\ExpressionParser->getFunction(\'backendUrl\', 52)\n#1 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(322): Twig\\ExpressionParser->getFunctionNode(\'backendUrl\', 52)\n#2 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(265): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\ExpressionParser.php(102): Twig\\ExpressionParser->getPrimary()\n#4 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(158): Twig\\ExpressionParser->parseExpression()\n#5 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Parser.php(95): Twig\\Parser->subparse(NULL, false)\n#6 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(559): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#7 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(590): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#8 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(409): Twig\\Environment->compileSource(Object(Twig\\Source))\n#9 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Environment.php(371): Twig\\Environment->loadTemplate(\'__TwigTemplate_...\', \'C:\\\\SRES WEBSITE...\')\n#10 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(241): Twig\\Environment->load(\'C:\\\\SRES WEBSITE...\')\n#11 C:\\SRES WEBSITE\\modules\\cms\\twig\\Extension.php(162): Cms\\Classes\\Controller->renderPartial(\'site/footer\', Array, true)\n#12 C:\\SRES WEBSITE\\storage\\cms\\twig\\a2\\a26b2b2941f4ccb779ac7d273838d8ad.php(109): Cms\\Twig\\Extension->partialFunction(\'site/footer\', Array, true)\n#13 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(388): __TwigTemplate_fcfd4bfe51cff3329b3ade8337023d1d->doDisplay(Array, Array)\n#14 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(344): Twig\\Template->yield(Array, Array)\n#15 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\Template.php(359): Twig\\Template->display(Array)\n#16 C:\\SRES WEBSITE\\vendor\\twig\\twig\\src\\TemplateWrapper.php(51): Twig\\Template->render(Array)\n#17 C:\\SRES WEBSITE\\modules\\cms\\classes\\controller\\HasRenderers.php(70): Twig\\TemplateWrapper->render(Array)\n#18 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(429): Cms\\Classes\\Controller->renderLayoutContents()\n#19 C:\\SRES WEBSITE\\modules\\cms\\classes\\Controller.php(226): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 C:\\SRES WEBSITE\\modules\\cms\\classes\\CmsController.php(72): Cms\\Classes\\Controller->run(\'/\')\n#21 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Cms\\Classes\\CmsController->run(\'/\')\n#22 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#23 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(259): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#24 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#25 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#26 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#33 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(797): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(32): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\SRES WEBSITE\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\SRES WEBSITE\\index.php(42): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 C:\\SRES WEBSITE\\vendor\\october\\rain\\src\\Foundation\\resources\\server.php(18): require_once(\'C:\\\\SRES WEBSITE...\')\n#53 {main}', '[]', '2025-04-12 18:47:34', '2025-04-12 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '67f0a7e8f15ce675021566.png', 'logo.png', 507191, 'image/png', NULL, NULL, 'menu_logo', 1, 'Backend\\Models\\BrandSetting', 1, 1, '2025-04-04 19:47:52', '2025-04-04 19:48:45'),
(2, '67f0a80422ef2814466435.png', 'logo.png', 507191, 'image/png', NULL, NULL, 'logo', 1, 'Backend\\Models\\BrandSetting', 1, 2, '2025-04-04 19:48:20', '2025-04-04 19:48:45'),
(3, '67f0a863bd628885346508.jpg', 'img-school-5-min.jpg', 215687, 'image/jpeg', NULL, NULL, 'login_background_wallpaper', 1, 'Backend\\Models\\BrandSetting', 1, 3, '2025-04-04 19:49:55', '2025-04-04 19:50:12'),
(4, '67f0a8732509b541851496.png', 'logo.png', 507191, 'image/png', NULL, NULL, 'login_custom_image', 1, 'Backend\\Models\\BrandSetting', 1, 4, '2025-04-04 19:50:11', '2025-04-04 19:50:12'),
(5, '67f0cbd5df220025687549.jpg', 'staff_1.jpg', 128411, 'image/jpeg', NULL, NULL, 'avatar', 1, 'Backend\\Models\\User', 1, 5, '2025-04-04 22:21:09', '2025-04-04 22:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `content_css` text DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `group` varchar(50) NOT NULL,
  `item` varchar(150) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'build', '\"11\"'),
(3, 'system', 'update', 'retry', '1744595685'),
(4, 'system', 'project', 'key', '\"0AQLkZGtgZwx0ZQL4YGtlZGR1MQIuBGywZwH3MGuxBTDlZwL3BJMvAGquAJMw\"'),
(5, 'system', 'core', 'since', '\"2025-04-04 20:04:21\"'),
(6, 'system', 'core', 'bash', '\"c3301d975942cb65285e42e2e0ea22f3VwzsTFrp6jgtIeHzpT0WBMoq3Ws3mgAuB5H3jhHI\"'),
(7, 'system', 'project', 'is_stale', '0'),
(8, 'system', 'project', 'id', '294068'),
(9, 'system', 'project', 'name', '\"sres\"'),
(10, 'system', 'project', 'owner', '\"Acen Ace\"'),
(11, 'system', 'project', 'is_active', 'true'),
(12, 'system', 'update', 'versions', '{\"count\":0,\"core\":null,\"plugins\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `version` varchar(50) NOT NULL,
  `detail` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2025-04-04 12:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `version` varchar(50) NOT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `is_frozen`, `is_disabled`, `created_at`) VALUES
(1, 'October.Demo', '1.0.1', 0, 0, '2025-04-04 12:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL,
  `site_root_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`, `site_id`, `site_root_id`) VALUES
(1, 'backend_brand_settings', '{\"app_name\":\"SRES-Admin\",\"app_tagline\":\"Administration Panel\",\"login_prompt\":\"Welcome back! Please login to your account to continue.\",\"color_mode\":\"dark\",\"menu_mode\":\"inline\",\"login_background_type\":\"wallpaper\",\"login_background_color\":\"#fef6eb\",\"login_background_wallpaper_size\":\"cover\",\"login_image_type\":\"custom\",\"color_palette\":{\"preset\":\"default\",\"light\":{\"primary\":\"#6a6cf7\",\"secondary\":\"#72809d\",\"selection\":\"#6bc48d\",\"link_color\":\"#3498db\",\"mainnav_color\":\"#ffffff\",\"mainnav_bg\":\"#2d3134\",\"sidebar_color\":\"#536061\",\"sidebar_bg\":\"#e9edf3\",\"sidebar_active_color\":\"#333333\",\"sidebar_active_bg\":\"#ffffff\",\"sidebar_hover_bg\":\"#ffffff\",\"settings_color\":\"#536061\",\"settings_bg\":\"#f0f4f8\",\"settings_item\":\"#ffffff\",\"settings_active_color\":\"#ffffff\",\"settings_active_bg\":\"#6bc48d\",\"settings_hover_bg\":\"#dfe7ee\"},\"dark\":{\"primary\":\"#6a6cf7\",\"secondary\":\"#72809d\",\"selection\":\"#6bc48d\",\"link_color\":\"#a6a7fa\",\"mainnav_color\":\"#ffffff\",\"mainnav_bg\":\"#2d3134\",\"sidebar_color\":\"#d7e1eA\",\"sidebar_bg\":\"#292a2d\",\"sidebar_active_color\":\"#ffffff\",\"sidebar_active_bg\":\"#424242\",\"sidebar_hover_bg\":\"#424242\",\"settings_color\":\"#adb5bd\",\"settings_bg\":\"#1b1f22\",\"settings_item\":\"#212529\",\"settings_active_color\":\"#ffffff\",\"settings_active_bg\":\"#2b3442\",\"settings_hover_bg\":\"#2b3442\"}},\"show_light_switch\":\"1\",\"custom_css\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_site_definitions`
--

CREATE TABLE `system_site_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_custom_url` tinyint(1) NOT NULL DEFAULT 0,
  `app_url` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `fallback_locale` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `is_host_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `allow_hosts` mediumtext DEFAULT NULL,
  `is_prefixed` tinyint(1) NOT NULL DEFAULT 0,
  `route_prefix` varchar(255) DEFAULT NULL,
  `is_styled` tinyint(1) NOT NULL DEFAULT 0,
  `color_foreground` varchar(255) DEFAULT NULL,
  `color_background` varchar(255) DEFAULT NULL,
  `is_role_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `allow_roles` mediumtext DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled_edit` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_site_definitions`
--

INSERT INTO `system_site_definitions` (`id`, `name`, `code`, `sort_order`, `is_custom_url`, `app_url`, `theme`, `locale`, `fallback_locale`, `timezone`, `is_host_restricted`, `allow_hosts`, `is_prefixed`, `route_prefix`, `is_styled`, `color_foreground`, `color_background`, `is_role_restricted`, `allow_roles`, `is_primary`, `is_enabled`, `is_enabled_edit`, `created_at`, `updated_at`, `group_id`) VALUES
(1, 'Primary Site', 'primary', 1, 0, NULL, 'sres', NULL, '', NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, 1, 1, 1, '2025-04-04 12:04:20', '2025-04-04 12:04:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_site_groups`
--

CREATE TABLE `system_site_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_content_joins`
--

CREATE TABLE `tailor_content_joins` (
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_content_schema`
--

CREATE TABLE `tailor_content_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  `fields` mediumtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tailor_content_schema`
--

INSERT INTO `tailor_content_schema` (`id`, `table_name`, `meta`, `fields`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'xc_6947ff28b66047d7924024ca6d58aeaec', '{\"blueprint_uuid\":\"6947ff28-b660-47d7-9240-24ca6d58aeae\",\"blueprint_type\":\"entry\",\"multisite_sync\":false}', '{\"active\":{\"avatar\":{\"type\":\"mediumText\",\"name\":\"avatar\",\"nullable\":true},\"email\":{\"type\":\"text\",\"name\":\"email\",\"nullable\":true},\"role\":{\"type\":\"text\",\"name\":\"role\",\"nullable\":true},\"about\":{\"type\":\"mediumText\",\"name\":\"about\",\"nullable\":true}},\"dropped\":[]}', NULL, '2025-04-04 12:04:21', '2025-04-04 12:04:21'),
(2, 'xc_b022a74b15e64c6b9eb917efc5103543c', '{\"blueprint_uuid\":\"b022a74b-15e6-4c6b-9eb9-17efc5103543\",\"blueprint_type\":\"structure\",\"multisite_sync\":false}', '{\"active\":{\"description\":{\"type\":\"text\",\"name\":\"description\",\"nullable\":true}},\"dropped\":[]}', NULL, '2025-04-04 12:04:21', '2025-04-04 12:04:21'),
(3, 'xc_edcd102e05254e4db07e633ae6c18db6c', '{\"blueprint_uuid\":\"edcd102e-0525-4e4d-b07e-633ae6c18db6\",\"blueprint_type\":\"stream\",\"multisite_sync\":false}', '{\"active\":{\"content\":{\"type\":\"mediumText\",\"name\":\"content\",\"nullable\":true},\"author_id\":{\"type\":\"integer\",\"name\":\"author_id\",\"autoIncrement\":false,\"unsigned\":true,\"nullable\":true},\"featured_text\":{\"type\":\"mediumText\",\"name\":\"featured_text\",\"nullable\":true},\"gallery_media\":{\"type\":\"mediumText\",\"name\":\"gallery_media\",\"nullable\":true}},\"dropped\":[]}', NULL, '2025-04-04 12:04:21', '2025-04-04 12:04:21'),
(4, 'xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c', '{\"blueprint_uuid\":\"a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1\",\"blueprint_type\":\"single\",\"multisite_sync\":false}', '{\"active\":[],\"dropped\":[]}', NULL, '2025-04-04 12:04:21', '2025-04-04 12:04:22'),
(5, 'xc_339b11b769ad43c49be16953e7738827c', '{\"blueprint_uuid\":\"339b11b7-69ad-43c4-9be1-6953e7738827\",\"blueprint_type\":\"structure\",\"multisite_sync\":false}', '{\"active\":{\"content\":{\"type\":\"mediumText\",\"name\":\"content\",\"nullable\":true},\"show_in_toc\":{\"type\":\"boolean\",\"name\":\"show_in_toc\",\"nullable\":true},\"summary_text\":{\"type\":\"mediumText\",\"name\":\"summary_text\",\"nullable\":true}},\"dropped\":[]}', NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(6, 'xc_85e471d209b94f3da63b1ae9d92d2879c', '{\"blueprint_uuid\":\"85e471d2-09b9-4f3d-a63b-1ae9d92d2879\",\"blueprint_type\":\"entry\",\"multisite_sync\":false}', '{\"active\":{\"slug\":{\"type\":\"text\",\"name\":\"slug\",\"nullable\":true}},\"dropped\":[]}', NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `tailor_globals`
--

CREATE TABLE `tailor_globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_global_joins`
--

CREATE TABLE `tailor_global_joins` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_global_repeaters`
--

CREATE TABLE `tailor_global_repeaters` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tailor_preview_tokens`
--

CREATE TABLE `tailor_preview_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `route` mediumtext DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `count_use` int(11) NOT NULL DEFAULT 0,
  `count_limit` int(11) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xc_85e471d209b94f3da63b1ae9d92d2879c`
--

CREATE TABLE `xc_85e471d209b94f3da63b1ae9d92d2879c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Menu [Site\\Menus].';

--
-- Dumping data for table `xc_85e471d209b94f3da63b1ae9d92d2879c`
--

INSERT INTO `xc_85e471d209b94f3da63b1ae9d92d2879c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '85e471d2-09b9-4f3d-a63b-1ae9d92d2879', 'regular_menu', 'Footer Menu', 'footer-nav', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 2, '85e471d2-09b9-4f3d-a63b-1ae9d92d2879', 'sitemap_menu', 'Sitemap', 'sitemap', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_85e471d209b94f3da63b1ae9d92d2879j`
--

CREATE TABLE `xc_85e471d209b94f3da63b1ae9d92d2879j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Menu [Site\\Menus].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_85e471d209b94f3da63b1ae9d92d2879r`
--

CREATE TABLE `xc_85e471d209b94f3da63b1ae9d92d2879r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Menu [Site\\Menus].';

--
-- Dumping data for table `xc_85e471d209b94f3da63b1ae9d92d2879r`
--

INSERT INTO `xc_85e471d209b94f3da63b1ae9d92d2879r` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'items', NULL, NULL, '{\"title\":\"Company\",\"reference\":\"\",\"is_hidden\":\"0\",\"code\":\"company\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 'items', NULL, NULL, '{\"title\":\"Blog\",\"reference\":\"october:\\/\\/cms-page@link\\/blog\\/index?title=Blog+Homepage+%28blog%2Findex%29\",\"is_hidden\":\"0\",\"code\":\"blog\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 1, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 1, 'items', NULL, NULL, '{\"title\":\"Technology\",\"reference\":\"\",\"is_hidden\":\"0\",\"code\":\"technology\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(4, 1, 'items', NULL, NULL, '{\"title\":\"Wiki\",\"reference\":\"october:\\/\\/cms-page@link\\/wiki\\/index?title=Wiki+Docs+Demo+%28wiki%2Findex%29\",\"is_hidden\":\"0\",\"code\":\"wiki\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 1, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(5, 1, 'items', NULL, NULL, '{\"title\":\"AJAX Demo\",\"reference\":\"october:\\/\\/cms-page@link\\/ajax?title=AJAX+Framework+%28ajax%29\",\"is_hidden\":\"0\",\"code\":\"ajax-demo\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 3, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(6, 1, 'items', NULL, NULL, '{\"title\":\"October CMS\",\"reference\":\"\",\"is_hidden\":\"0\",\"code\":\"october-cms\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(7, 1, 'items', NULL, NULL, '{\"title\":\"About\",\"reference\":\"october:\\/\\/cms-page@link\\/about?title=About+Page+%28about%29\",\"is_hidden\":\"0\",\"code\":\"about\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 1, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(8, 1, 'items', NULL, NULL, '{\"title\":\"Components Demo\",\"reference\":\"october:\\/\\/cms-page@link\\/components?title=Components+Demo+%28components%29\",\"is_hidden\":\"0\",\"code\":\"components-demo\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 3, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(9, 1, 'items', NULL, NULL, '{\"title\":\"Documentation\",\"reference\":\"https:\\/\\/docs.octobercms.com\\/\",\"is_hidden\":\"0\",\"code\":\"documentation\",\"css_class\":\"\",\"is_external\":\"1\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 6, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(10, 1, 'items', NULL, NULL, '{\"title\":\"Contact\",\"reference\":\"october:\\/\\/cms-page@link\\/contact?title=Contact+Us+%28contact%29\",\"is_hidden\":\"0\",\"code\":\"contact\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 1, 5, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(11, 1, 'items', NULL, NULL, '{\"title\":\"Buy a License\",\"reference\":\"https:\\/\\/octobercms.com\\/pricing\",\"is_hidden\":\"0\",\"code\":\"buy-license\",\"css_class\":\"\",\"is_external\":\"1\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 6, 5, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(12, 1, 'items', NULL, NULL, '{\"title\":\"YouTube Channel\",\"reference\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\",\"is_hidden\":\"0\",\"code\":\"youtube-channel\",\"css_class\":\"\",\"is_external\":\"1\",\"nesting\":\"0\",\"replace\":\"0\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:regular_menu.items', 6, 6, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(13, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Homepage\",\"reference\":\"october:\\/\\/cms-page@link\\/index?title=Demonstration+%28index%29\",\"is_hidden\":\"0\",\"code\":\"homepage\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.1\",\"changefreq\":\"weekly\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(14, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Blog\",\"reference\":\"october:\\/\\/cms-page@link\\/blog\\/index?title=Blog+Homepage+%28blog%2Findex%29\",\"is_hidden\":\"0\",\"code\":\"blog\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.2\",\"changefreq\":\"always\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(15, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Blog Posts\",\"reference\":\"october:\\/\\/list-entry-edcd102e-0525-4e4d-b07e-633ae6c18db6@link\\/?cms_page=blog%2Fpost\",\"is_hidden\":\"0\",\"code\":\"blog-posts\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.3\",\"changefreq\":\"daily\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(16, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Blog Categories\",\"reference\":\"october:\\/\\/list-entry-b022a74b-15e6-4c6b-9eb9-17efc5103543@link\\/?cms_page=blog%2Fcategory\",\"is_hidden\":\"0\",\"code\":\"blog-categories\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.4\",\"changefreq\":\"weekly\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(17, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Wiki\",\"reference\":\"october:\\/\\/cms-page@link\\/wiki\\/index?title=Wiki+Docs+Demo+%28wiki%2Findex%29\",\"is_hidden\":\"0\",\"code\":\"wiki\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.2\",\"changefreq\":\"daily\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 5, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(18, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"All Articles\",\"reference\":\"october:\\/\\/list-entry-339b11b7-69ad-43c4-9be1-6953e7738827@link\\/?cms_page=wiki%2Farticle\",\"is_hidden\":\"0\",\"code\":\"all-articles\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"1\",\"replace\":\"0\",\"priority\":\"0.3\",\"changefreq\":\"daily\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 6, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(19, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"About\",\"reference\":\"october:\\/\\/cms-page@link\\/about?title=About+Page+%28about%29\",\"is_hidden\":\"0\",\"code\":\"about\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.6\",\"changefreq\":\"weekly\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 7, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(20, 2, 'sitemap_items', NULL, NULL, '{\"title\":\"Contact\",\"reference\":\"october:\\/\\/cms-page@link\\/contact?title=Contact+Us+%28contact%29\",\"is_hidden\":\"0\",\"code\":\"contact\",\"css_class\":\"\",\"is_external\":\"0\",\"nesting\":\"0\",\"replace\":\"0\",\"priority\":\"0.6\",\"changefreq\":\"weekly\"}', 'Tailor\\Models\\EntryRecord@85e471d2-09b9-4f3d-a63b-1ae9d92d2879:sitemap_menu.sitemap_items', NULL, 8, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827c`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `fullslug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `show_in_toc` tinyint(1) DEFAULT NULL,
  `summary_text` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Article [Page\\Article].';

--
-- Dumping data for table `xc_339b11b769ad43c49be16953e7738827c`
--

INSERT INTO `xc_339b11b769ad43c49be16953e7738827c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `fullslug`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `content`, `show_in_toc`, `summary_text`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Our Locations', 'our-locations', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 'our-locations', NULL, 1, 8, 0, '<p>The term location generally implies a higher degree of certainty than place, the latter often indicating an entity with an ambiguous boundary, relying more on human or social attributes of place identity and sense of place than on geometry. An absolute location can be designated using a specific pairing of latitude and longitude in a Cartesian coordinate grid (for example, a spherical coordinate system or an ellipsoid-based system such as the World Geodetic System) or similar methods. For instance, the position of Lake Maracaibo in Venezuela can be expressed using the coordinate system as the location 9.80°N (latitude), 71.56°W (longitude).</p>', 1, 'In geography, location or place are used to denote a region (point, line, or area) on Earth\'s surface or elsewhere.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 2, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Canberra', 'canberra', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 'our-locations/canberra', 1, 2, 3, 1, '<p>Unusual among Australian cities, it is an entirely planned city. The city is located at the northern end of the Australian Capital Territory[11] at the northern tip of the Australian Alps, the country\'s highest mountain range. As of June 2020, Canberra\'s estimated population was 431,380.[12]</p><p>The area chosen for the capital had been inhabited by Indigenous Australians for up to 21,000 years,[13] with the principal group being the Ngunnawal people. European settlement commenced in the first half of the 19th century, as evidenced by surviving landmarks such as St John\'s Anglican Church and Blundells Cottage. On 1 January 1901, federation of the colonies of Australia was achieved. Following a long dispute over whether Sydney or Melbourne should be the national capital,[14] a compromise was reached: the new capital would be built in New South Wales, so long as it was at least 100 miles (160 km) from Sydney. The capital city was founded and formally named as Canberra in 1913. A blueprint by American architects Walter Burley Griffin and Marion Mahony Griffin was selected after an international design contest, and construction commenced in 1913.[15] The Griffins\' plan featured geometric motifs and was centred on axes aligned with significant topographical landmarks such as Black Mountain, Mount Ainslie, Capital Hill and City Hill. Canberra\'s mountainous location makes it the only mainland Australian city where snow-capped mountains can be seen in winter; although snow in the city itself is rare.</p><p>As the seat of the Government of Australia, Canberra is home to many important institutions of the federal government, national monuments and museums. This includes Parliament House, Government House, the High Court and the headquarters of numerous government agencies. It is the location of many social and cultural institutions of national significance such as the Australian War Memorial, the Australian National University, the Royal Australian Mint, the Australian Institute of Sport, the National Gallery, the National Museum and the National Library. The city is home to many important institutions of the Australian Defence Force including the Royal Military College Duntroon and the Australian Defence Force Academy. It hosts all foreign embassies in Australia as well as regional headquarters of many international organisations, not-for-profit groups, lobbying groups and professional associations.</p>', 1, 'Canberra (/ˈkænbərə/ KAN-bə-rə) is the capital city of Australia. Founded following the federation of the colonies of Australia as the seat of government for the new nation, it is Australia\'s largest inland city and the eighth-largest city overall.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 1, 3, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Sydney', 'sydney', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 'our-locations/sydney', 1, 4, 5, 1, '<p>Located on Australia\'s east coast, the metropolis surrounds Port Jackson and extends about 70 km (43.5 mi) on its periphery towards the Blue Mountains to the west, Hawkesbury to the north, the Royal National Park to the south and Macarthur to the south-west. Sydney is made up of 658 suburbs, spread across 33 local government areas. Residents of the city are known as \"Sydneysiders\". As of June 2020, Sydney\'s estimated metropolitan population was 5,361,466, meaning the city is home to approximately 66% of the state\'s population. Nicknames of the city include the \'Emerald City\' and the \'Harbour City\'.</p><p>Indigenous Australians have inhabited the Sydney area for at least 30,000 years, and thousands of Aboriginal engravings remain throughout the region. During his first Pacific voyage in 1770, Lieutenant James Cook and his crew became the first Europeans to chart the eastern coast of Australia, making landfall at Botany Bay. In 1788, the First Fleet of convicts, led by Arthur Phillip, founded Sydney as a British penal colony, the first European settlement in Australia. After World War II, it experienced mass migration and became one of the most multicultural cities in the world. Furthermore, 45.4% of the population reported having been born overseas, and the city has the third-largest foreign-born population of any city in the world after London and New York City.</p><p>Despite being one of the most expensive cities in the world, Sydney frequently ranks in the top ten most liveable cities in the world. It is classified as an Alpha global city by the Globalization and World Cities Research Network, indicating its influence in the region and throughout the world. Ranked eleventh in the world for economic opportunity, Sydney has an advanced market economy with strengths in finance, manufacturing and tourism. Established in 1850, the University of Sydney was Australia\'s first university and is regarded as one of the world\'s leading universities.</p>', 1, 'Sydney is the capital city of the state of New South Wales, and the most populous city in Australia and Oceania.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(4, 1, 4, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Vancouver', 'vancouver', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 'our-locations/vancouver', 1, 6, 7, 1, '<p>As the most populous city in the province, the 2021 census recorded 662,248 people in the city, up from 631,486 in 2016. The Greater Vancouver area had a population of 2,642,825 in 2021, making it the third-largest metropolitan area in Canada. Vancouver has the highest population density in Canada, with over 5,400 people per square kilometre. Vancouver is one of the most ethnically and linguistically diverse cities in Canada: 52 percent of its residents are not native English speakers, 48.9 percent are native speakers of neither English nor French, and 50.6 percent of residents belong to visible minority groups.</p><p>Vancouver is one of the most livable cities in Canada and in the world. In terms of housing affordability, Vancouver is also one of the most expensive cities in Canada and in the world. Vancouver plans to become the greenest city in the world. Vancouverism is the city\'s urban planning design philosophy.</p><p>Indigenous settlement of Vancouver began more than 10,000 years ago, and the city is on the traditional and unceded territories of the Squamish, Musqueam, and Tsleil-Waututh (Burrard) peoples. The beginnings of the modern city, which was originally named Gastown, grew around the site of a makeshift tavern on the western edges of Hastings Mill that was built on July 1, 1867, and owned by proprietor Gassy Jack. The original site is marked by the Gastown steam clock. Gastown then formally registered as a townsite dubbed Granville, Burrard Inlet. The city was renamed \"Vancouver\" in 1886, through a deal with the Canadian Pacific Railway (CPR). The Canadian Pacific transcontinental railway was extended to the city by 1887. The city\'s large natural seaport on the Pacific Ocean became a vital link in the trade between Asia-Pacific, East Asia, Europe, and Eastern Canada.</p>', 1, 'Vancouver is a major city in western Canada, located in the Lower Mainland region of British Columbia.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(5, 1, 5, '339b11b7-69ad-43c4-9be1-6953e7738827', NULL, 'Knowledge Base', 'knowledge-base', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 'our-locations/knowledge-base', NULL, 9, 10, 0, '<p>Knowledge Base</p>', 1, '', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827j`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Article [Page\\Article].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_339b11b769ad43c49be16953e7738827r`
--

CREATE TABLE `xc_339b11b769ad43c49be16953e7738827r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Article [Page\\Article].';

--
-- Dumping data for table `xc_339b11b769ad43c49be16953e7738827r`
--

INSERT INTO `xc_339b11b769ad43c49be16953e7738827r` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Canberra travel guide from Wikivoyage\",\"link_url\":\"https:\\/\\/en.wikivoyage.org\\/wiki\\/Canberra\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Official Tourism Website\",\"link_url\":\"https:\\/\\/visitcanberra.com.au\\/\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 2, 'external_links', NULL, NULL, '{\"link_text\":\"Canberra 100 – Celebrating Canberra\'s 100th anniversary\",\"link_url\":\"https:\\/\\/www.canberra100.com.au\\/\"}', 'Tailor\\Models\\EntryRecord@339b11b7-69ad-43c4-9be1-6953e7738827.external_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaec` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` mediumtext DEFAULT NULL,
  `email` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `about` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Author [Blog\\Author].';

--
-- Dumping data for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--

INSERT INTO `xc_6947ff28b66047d7924024ca6d58aeaec` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `avatar`, `email`, `role`, `about`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '6947ff28-b660-47d7-9240-24ca6d58aeae', NULL, 'John Smith', 'john-smith', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, 'john.smith@techinnovators.ltd', 'Manager', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 2, '6947ff28-b660-47d7-9240-24ca6d58aeae', NULL, 'Jane Doe', 'jane-doe', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, 'jane.doe@devsolutions.ltd', 'Lead Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaej`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaej` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Author [Blog\\Author].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--

CREATE TABLE `xc_6947ff28b66047d7924024ca6d58aeaer` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Author [Blog\\Author].';

--
-- Dumping data for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--

INSERT INTO `xc_6947ff28b66047d7924024ca6d58aeaer` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 1, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(4, 1, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(5, 2, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(6, 2, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(7, 2, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(8, 2, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@6947ff28-b660-47d7-9240-24ca6d58aeae.social_links', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for About Page [Page\\About].';

--
-- Dumping data for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--

INSERT INTO `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1', NULL, 'About Us', 'about-us', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for About Page [Page\\About].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--

CREATE TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for About Page [Page\\About].';

--
-- Dumping data for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--

INSERT INTO `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r` (`id`, `host_id`, `host_field`, `site_id`, `content_group`, `content_value`, `content_spawn_path`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'blocks', NULL, 'image_slice', '{\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:image_slice', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 'blocks', NULL, 'paragraph_block', '{\"title\":\"Outstanding performance\",\"content\":\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.<\\/p>\",\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:paragraph_block', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 1, 'blocks', NULL, 'detailed_block', '{\"title\":\"Why work with us\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"list_items\":\"[{\\\"text\\\":\\\"Doloremque\\\"},{\\\"text\\\":\\\"Beatae vitae\\\"},{\\\"text\\\":\\\"Totam rem aperiam\\\"}]\",\"button_text\":\"Learn more about our process\",\"button_url\":\"https:\\/\\/octobercms.com\\/features\",\"image\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:detailed_block', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(4, 1, 'blocks', NULL, 'scoreboard_metrics', '[]', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(5, 4, 'metrics', NULL, NULL, '{\"number\":3912,\"description\":\"Sed ut perspiciatis\",\"icon\":\"notepad\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(6, 4, 'metrics', NULL, NULL, '{\"number\":223,\"description\":\"Nemo enim ipsam\",\"icon\":\"shield\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(7, 4, 'metrics', NULL, NULL, '{\"number\":863,\"description\":\"Nam libero tempore\",\"icon\":\"basket\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(8, 4, 'metrics', NULL, NULL, '{\"number\":865,\"description\":\"Et harum quidem rerum\",\"icon\":\"briefcase\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:scoreboard_metrics.metrics', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(9, 1, 'blocks', NULL, 'team_leaders', '[]', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders', NULL, 5, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(10, 9, 'members', NULL, NULL, '{\"title\":\"Andy Anderson\",\"role\":\"Sales Manager\",\"description\":\"Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(11, 10, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(12, 10, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(13, 10, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(14, 9, 'members', NULL, NULL, '{\"title\":\"Bob Harris\",\"role\":\"Product Designer\",\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(15, 14, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(16, 14, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(17, 14, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(18, 14, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(19, 9, 'members', NULL, NULL, '{\"title\":\"Ann Lewis\",\"role\":\"Marketing Manager\",\"description\":\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(20, 19, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(21, 19, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(22, 19, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(23, 9, 'members', NULL, NULL, '{\"title\":\"Christina Thompson\",\"role\":\"System Analyst\",\"description\":\"Et harum quidem rerum facilis est et expedita distinctio.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(24, 23, 'social_links', NULL, NULL, '{\"platform\":\"twitter\",\"url\":\"https:\\/\\/twitter.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(25, 23, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(26, 23, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(27, 23, 'social_links', NULL, NULL, '{\"platform\":\"facebook\",\"url\":\"https:\\/\\/facebook.com\\/octobercms\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 4, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(28, 9, 'members', NULL, NULL, '{\"title\":\"John Smith\",\"role\":\"President\",\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.\",\"avatar\":\"\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members', NULL, 5, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(29, 28, 'social_links', NULL, NULL, '{\"platform\":\"dribbble\",\"url\":\"https:\\/\\/www.dribbble.com\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 1, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(30, 28, 'social_links', NULL, NULL, '{\"platform\":\"linkedin\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/october-cms\\/\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 2, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(31, 28, 'social_links', NULL, NULL, '{\"platform\":\"youtube\",\"url\":\"https:\\/\\/www.youtube.com\\/c\\/OctoberCMSOfficial\"}', 'Tailor\\Models\\EntryRecord@a63fabaf-7c0b-4c74-b36f-7abf1a3ad1c1.blocks:team_leaders.members.social_links', NULL, 3, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `fullslug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Category [Blog\\Category].';

--
-- Dumping data for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--

INSERT INTO `xc_b022a74b15e64c6b9eb917efc5103543c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `fullslug`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `description`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Announcements', 'announcements', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, 1, 2, 0, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 2, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'News', 'news', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, 3, 4, 0, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(3, 1, 3, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Startup Ideas', 'startup-ideas', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, 5, 6, 0, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proide', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(4, 1, 4, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Updates', 'updates', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, 7, 8, 0, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(5, 1, 5, 'b022a74b-15e6-4c6b-9eb9-17efc5103543', NULL, 'Automation', 'automation', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, NULL, NULL, 9, 10, 0, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543j`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Category [Blog\\Category].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--

CREATE TABLE `xc_b022a74b15e64c6b9eb917efc5103543r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Category [Blog\\Category].';

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6c` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_root_id` int(11) DEFAULT NULL,
  `blueprint_uuid` varchar(255) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_at_date` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `draft_mode` int(11) NOT NULL DEFAULT 1,
  `primary_id` int(10) UNSIGNED DEFAULT NULL,
  `primary_attrs` mediumtext DEFAULT NULL,
  `is_version` tinyint(1) NOT NULL DEFAULT 0,
  `published_at_day` int(11) DEFAULT NULL,
  `published_at_month` int(11) DEFAULT NULL,
  `published_at_year` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `featured_text` mediumtext DEFAULT NULL,
  `gallery_media` mediumtext DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content for Post [Blog\\Post].';

--
-- Dumping data for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--

INSERT INTO `xc_edcd102e05254e4db07e633ae6c18db6c` (`id`, `site_id`, `site_root_id`, `blueprint_uuid`, `content_group`, `title`, `slug`, `is_enabled`, `published_at`, `published_at_date`, `expired_at`, `draft_mode`, `primary_id`, `primary_attrs`, `is_version`, `published_at_day`, `published_at_month`, `published_at_year`, `content`, `author_id`, `featured_text`, `gallery_media`, `created_user_id`, `updated_user_id`, `deleted_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'edcd102e-0525-4e4d-b07e-633ae6c18db6', 'regular_post', 'Consectetur adipiscing elit', 'consectetur-adipiscing-elit', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 4, 4, 2025, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', NULL, NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22'),
(2, 1, 2, 'edcd102e-0525-4e4d-b07e-633ae6c18db6', 'regular_post', 'Nemo enim ipsam', 'nemo-enim-ipsam', 1, NULL, '2025-04-04 12:04:22', NULL, 1, NULL, NULL, 0, 4, 4, 2025, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', 1, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', NULL, NULL, NULL, NULL, NULL, '2025-04-04 12:04:22', '2025-04-04 12:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6j` (
  `parent_id` int(11) DEFAULT NULL,
  `relation_id` int(11) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Joins for Post [Blog\\Post].';

--
-- Dumping data for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--

INSERT INTO `xc_edcd102e05254e4db07e633ae6c18db6j` (`parent_id`, `relation_id`, `relation_type`, `field_name`, `site_id`) VALUES
(1, 1, 'Tailor\\Models\\EntryRecord@xc_b022a74b15e64c6b9eb917efc5103543c', 'categories', NULL),
(2, 2, 'Tailor\\Models\\EntryRecord@xc_b022a74b15e64c6b9eb917efc5103543c', 'categories', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--

CREATE TABLE `xc_edcd102e05254e4db07e633ae6c18db6r` (
  `id` int(10) UNSIGNED NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_field` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content_group` varchar(255) DEFAULT NULL,
  `content_value` mediumtext DEFAULT NULL,
  `content_spawn_path` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Repeaters for Post [Blog\\Post].';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_dashboards`
--
ALTER TABLE `backend_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_slug_unique` (`slug`),
  ADD KEY `dashboard_name_index` (`name`);

--
-- Indexes for table `backend_report_data_cache`
--
ALTER TABLE `backend_report_data_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_report_data_cache_created_at_index` (`created_at`),
  ADD KEY `backend_report_data_cache_key_value_date_index` (`key`,`value_date`),
  ADD KEY `backend_report_data_cache_key_index` (`key`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `cms_traffic_stats_pageviews`
--
ALTER TABLE `cms_traffic_stats_pageviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_traffic_stats_pageviews_ev_datetime_index` (`ev_datetime`),
  ADD KEY `cms_traffic_stats_pageviews_ev_date_index` (`ev_date`),
  ADD KEY `cms_traffic_stats_pageviews_ev_year_month_day_index` (`ev_year_month_day`),
  ADD KEY `cms_traffic_stats_pageviews_ev_year_month_index` (`ev_year_month`),
  ADD KEY `cms_traffic_stats_pageviews_ev_year_quarter_index` (`ev_year_quarter`),
  ADD KEY `cms_traffic_stats_pageviews_ev_year_week_index` (`ev_year_week`),
  ADD KEY `cms_traffic_stats_pageviews_ev_year_index` (`ev_year`),
  ADD KEY `cms_traffic_stats_pageviews_ev_timestamp_index` (`ev_timestamp`),
  ADD KEY `cms_traffic_stats_pageviews_user_authenticated_index` (`user_authenticated`),
  ADD KEY `cms_traffic_stats_pageviews_client_id_index` (`client_id`),
  ADD KEY `cms_traffic_stats_pageviews_first_time_visit_index` (`first_time_visit`),
  ADD KEY `cms_traffic_stats_pageviews_user_agent_index` (`user_agent`),
  ADD KEY `cms_traffic_stats_pageviews_page_path_index` (`page_path`),
  ADD KEY `cms_traffic_stats_pageviews_city_index` (`city`),
  ADD KEY `cms_traffic_stats_pageviews_country_index` (`country`),
  ADD KEY `cms_traffic_stats_pageviews_referral_domain_index` (`referral_domain`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_master_index` (`attachment_type`,`attachment_id`,`field`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `system_site_definitions`
--
ALTER TABLE `system_site_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_site_definitions_code_index` (`code`),
  ADD KEY `system_site_definitions_group_id_index` (`group_id`);

--
-- Indexes for table `system_site_groups`
--
ALTER TABLE `system_site_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_site_groups_code_index` (`code`);

--
-- Indexes for table `tailor_content_joins`
--
ALTER TABLE `tailor_content_joins`
  ADD KEY `tailor_content_joins_pidx` (`parent_id`,`parent_type`,`field_name`),
  ADD KEY `tailor_content_joins_ridx` (`relation_id`,`relation_type`,`field_name`),
  ADD KEY `tailor_content_joins_field_name_index` (`field_name`),
  ADD KEY `tailor_content_joins_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_content_schema`
--
ALTER TABLE `tailor_content_schema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_content_schema_table_name_index` (`table_name`);

--
-- Indexes for table `tailor_globals`
--
ALTER TABLE `tailor_globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_globals_site_id_index` (`site_id`),
  ADD KEY `tailor_globals_site_root_id_index` (`site_root_id`),
  ADD KEY `tailor_globals_blueprint_uuid_index` (`blueprint_uuid`);

--
-- Indexes for table `tailor_global_joins`
--
ALTER TABLE `tailor_global_joins`
  ADD KEY `tailor_global_joins_idx` (`relation_id`,`relation_type`),
  ADD KEY `tailor_global_joins_field_name_index` (`field_name`),
  ADD KEY `tailor_global_joins_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_global_repeaters`
--
ALTER TABLE `tailor_global_repeaters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_global_repeaters_idx` (`host_id`,`host_field`),
  ADD KEY `tailor_global_repeaters_site_id_index` (`site_id`);

--
-- Indexes for table `tailor_preview_tokens`
--
ALTER TABLE `tailor_preview_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tailor_preview_tokens_site_id_index` (`site_id`),
  ADD KEY `tailor_preview_tokens_token_index` (`token`);

--
-- Indexes for table `xc_85e471d209b94f3da63b1ae9d92d2879c`
--
ALTER TABLE `xc_85e471d209b94f3da63b1ae9d92d2879c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_site_id_index` (`site_id`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_content_group_index` (`content_group`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_slug_index` (`slug`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879c_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_85e471d209b94f3da63b1ae9d92d2879j`
--
ALTER TABLE `xc_85e471d209b94f3da63b1ae9d92d2879j`
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879j_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879j_field_name_index` (`field_name`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_85e471d209b94f3da63b1ae9d92d2879r`
--
ALTER TABLE `xc_85e471d209b94f3da63b1ae9d92d2879r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_85e471d209b94f3da63b1ae9d92d2879r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827c`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_site_id_index` (`site_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_content_group_index` (`content_group`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_slug_index` (`slug`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_primary_id_index` (`primary_id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827c_fullslug_index` (`fullslug`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827j`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827j`
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_field_name_index` (`field_name`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_339b11b769ad43c49be16953e7738827r`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_339b11b769ad43c49be16953e7738827r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_site_id_index` (`site_id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_content_group_index` (`content_group`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_slug_index` (`slug`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaec_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaej`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaej`
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_field_name_index` (`field_name`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaej_site_id_index` (`site_id`);

--
-- Indexes for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaer_idx` (`host_id`,`host_field`),
  ADD KEY `xc_6947ff28b66047d7924024ca6d58aeaer_site_id_index` (`site_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_site_id_index` (`site_id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_content_group_index` (`content_group`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_slug_index` (`slug`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j`
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_field_name_index` (`field_name`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_site_id_index` (`site_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_content_group_index` (`content_group`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_slug_index` (`slug`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_primary_id_index` (`primary_id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543c_fullslug_index` (`fullslug`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543j`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543j`
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_field_name_index` (`field_name`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_b022a74b15e64c6b9eb917efc5103543r_site_id_index` (`site_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_site_id_index` (`site_id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_site_root_id_index` (`site_root_id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_blueprint_uuid_index` (`blueprint_uuid`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_content_group_index` (`content_group`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_slug_index` (`slug`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6c_primary_id_index` (`primary_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6j`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6j`
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_idx` (`parent_id`,`relation_type`,`field_name`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_field_name_index` (`field_name`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6j_site_id_index` (`site_id`);

--
-- Indexes for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6r_idx` (`host_id`,`host_field`),
  ADD KEY `xc_edcd102e05254e4db07e633ae6c18db6r_site_id_index` (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_dashboards`
--
ALTER TABLE `backend_dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_report_data_cache`
--
ALTER TABLE `backend_report_data_cache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_traffic_stats_pageviews`
--
ALTER TABLE `cms_traffic_stats_pageviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_site_definitions`
--
ALTER TABLE `system_site_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_site_groups`
--
ALTER TABLE `system_site_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_content_schema`
--
ALTER TABLE `tailor_content_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tailor_globals`
--
ALTER TABLE `tailor_globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_global_repeaters`
--
ALTER TABLE `tailor_global_repeaters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tailor_preview_tokens`
--
ALTER TABLE `tailor_preview_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_85e471d209b94f3da63b1ae9d92d2879c`
--
ALTER TABLE `xc_85e471d209b94f3da63b1ae9d92d2879c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xc_85e471d209b94f3da63b1ae9d92d2879r`
--
ALTER TABLE `xc_85e471d209b94f3da63b1ae9d92d2879r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `xc_339b11b769ad43c49be16953e7738827c`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xc_339b11b769ad43c49be16953e7738827r`
--
ALTER TABLE `xc_339b11b769ad43c49be16953e7738827r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xc_6947ff28b66047d7924024ca6d58aeaec`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xc_6947ff28b66047d7924024ca6d58aeaer`
--
ALTER TABLE `xc_6947ff28b66047d7924024ca6d58aeaer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
--
ALTER TABLE `xc_a63fabaf7c0b4c74b36f7abf1a3ad1c1r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `xc_b022a74b15e64c6b9eb917efc5103543c`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xc_b022a74b15e64c6b9eb917efc5103543r`
--
ALTER TABLE `xc_b022a74b15e64c6b9eb917efc5103543r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xc_edcd102e05254e4db07e633ae6c18db6c`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xc_edcd102e05254e4db07e633ae6c18db6r`
--
ALTER TABLE `xc_edcd102e05254e4db07e633ae6c18db6r`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `srsdb`
--
CREATE DATABASE IF NOT EXISTS `srsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) NOT NULL,
  `master_field` varchar(255) NOT NULL,
  `slave_type` varchar(255) NOT NULL,
  `slave_id` int(11) NOT NULL,
  `session_key` varchar(255) NOT NULL,
  `pivot_data` mediumtext DEFAULT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2dr3ceZZYn4EC8kDk1WDcbRxBZU2ioaAeYyaTo7W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjNXVFczRDU4NGMwRUlsRkJvUXNqS1gxWnNyM0phVkpaM1pxMnRBNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740034991),
('49YSHl0Ie0XX5KrMbJX6QWElduAh9XVr3i8xxKrQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU5DQkhZNXFsVGphTTJUTWQ4NFZuY3dLVGdQaXg0ejVZRVU0R05meCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741676200),
('6FEzPcdXnd8MAfPCAexZOCmGljXE5AQRho95lK73', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkVuV1V4VnVaeDBncGdkdFdmNjFIRzg1ZWVKQXhMaDhOVGRJUW9JaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739663563),
('6xIiiQaQ12bH2uITuvGkEoAKFkgeJ2JpV3oG7r9p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkpQM1pJREozNGhzQzJkUDVXTVNLazFDMDFLODVYYVpKNmJsaHp2cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738908156),
('7BbSXRnmx4CuSrGaUQKj5JC5YvEfoRkI7nWzWLRh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVcwb29jNlBETUdmR3VISUdiR1A0ZGd0ZjlmUExaRUpVUkRORUZLeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740052830),
('7sla4QNK3kndQykRIv3JVaOXDXJvmdYO09q2CrSE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWVUemNBU1ZCak9ObXBLMzFKblRmcmZtbVBtQ3hVTlFJRjY0enB5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741998899),
('9L80I8fvDHc3Bnf5jr7gZ0Jnmjb9OANELvbgRXPd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnh3Nm56MTNFZmdLYWU0T1F0a3k2NjBxQW5UMUZCbGRUNjdnbHZQMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741076121),
('bLKmQHgMvCdwtLmwo1lJbSTQW9vsjPR7n7uUZfWz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVNuZkhScFB2UVpreWlFcVNRaXljZHcxRkN5d1plTVVXbFU0b2l5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738839794),
('C4nexasUJzqHlklHELAQ0rjaotTfv4cukVfiUPig', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWExxRVVmblprWDB6T1UwVVRIQlZXWmxuZzA5dTI0aDNmY21XN0R6cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742117731),
('DC9fdcRJOdHzn8kheJyZPf8QxN5i2ry0NMTuwu3t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibElLZHBiVWpKSjB1em5QVDZHYjFVREdnOXJ3UUJDcVhlNG96NmphZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743784558),
('DQX0LDkSJoK863WlSLIlSF2ZlNys1nXl5zrtD8S1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFRsS1FSWFBpcWszODhqc216dTdma01FcVE4VnZwNUNjVjhQUzl6dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740202709),
('fiAeNK4OnqDlCcGMVTzA0zYNCJYywwMFlJgHQVNh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidHNCYUFPamRCaTVlcUZCRGZCWGp1dWt1NTl5SDNJc1phRWZsdjZzWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741418656),
('fxPrITpQrpKTRIkjoX1LmbFrAIYHoWd3rmrE11nL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUklNbjFCZ3A1T3ZHMjMzZWFMYmcyWUpQQ1VWVnkxSVN0SXdtTFNQQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741998769),
('hT7zrjfMvaDKMOZB51vNlPJ38DJwyL7zSgerFjPv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEFwZHB5RlREVGxxeGF0S1FuNmNwRDQyczJ6bjVrWDVEdFNPbHBlWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739581008),
('i93C68UXFVf8zR8uxLIExtVZ2JPG0EVHSdaWma8c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjFZbzlmdVpHZjRSVDRTWDlHMUJyWkxoNHdIS0RJNUNhYzZpc2t4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739582414),
('IE0OS91x52UXw0QBkqRM5U2fUhHWLHs4hwjnV6Hj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2pQOHpsejF2eTBIdXlkaENOWXBRSldhVFFCSDZhenJHblFIb1RxWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742102672),
('INL4q69L8Wr7ueD4qkMpmGEVM4cvt0Wk0fkjNybB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN05ra2pURTY2MHRvY0VibzNWMXFUUDVuS1AzTVhqVmlPVkJJbkdLdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738758934),
('JEgtQvBZvaDqRPgHuy7skdsRFVHbqnmeS4mMpJZE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlh1Skx2Tzk1OE5uY0hmZGFpS0ZJTVR4UXZqOVN1UnhLa1dKV0gyeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738888769),
('KG0998R1X6NBqPEed41Hv9k1eMwU3yveezVYX5ae', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXN5SG1yMUVrQ3B3alJUa1VoRFZ4MHczZzZIbHBHSzlIbjdsc3kxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739680559),
('LVHBSdqT03fqAkYnUbihMPQLa1EGTPgpReFmO2Du', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmtCVk5PU2swYm1MZnlScENXSU5KSzVkTlB0NkVRVU1LTzhOc0JGciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741998932),
('nhKf87r7tX20Y5hFSy0YOizzUCQZJw3M7v50VJkQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZlg1d0V0N2NxQUkyOGwyRUFOcUhrY05kWGJqYkIzV2FnOXVvdVVLRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741676216),
('nRULuWAyGVgEbBJCr2VUzw8A7faEgYEACodB22f6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU5HTUhrZnZqV1dYYXZvaXc2UG5jNFBjTGwxcFBPODVFWHhVallkOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741076202),
('raPlVFLtw944oHFB93tE8hN6khH77qBI85cyx1MH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieE41ZmZnTjhmVTBGRFRCc2Z0SzhzZ1FMZnRuRWRyeWlTU0piS1BFQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740121832),
('rfiPNRTEN0NQz0qG9CgqAzaj6r8ZNkzBaVHD7Nen', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3M4bmFnT0hUMDhGclJrbWdHUWV6SFdtUEZMTGZLY2F5VERVSHVNVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740112074),
('xlzua52EIDGmK5X1aHzs2YflHzG89N1bOUHAp7Jo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGoyVzBCY1o5RWNTTURDeFc2NXQ3b2NTUXJTcXJhMnBibUtRMWI2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741418641),
('YP1j3J2JnAH5Lt56KNuiPv9KTjdpSQOg4BekhnUy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVRmT1kwbVNBTkYwRWFWVG05ZFFhSDltNGRvc0h3NUFmbDQ0SXNIaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741865407);

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `content_css` text DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `group` varchar(50) NOT NULL,
  `item` varchar(150) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `version` varchar(50) NOT NULL,
  `detail` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `version` varchar(50) NOT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_master_index` (`attachment_type`,`attachment_id`,`field`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `try`
--
CREATE DATABASE IF NOT EXISTS `try` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `try`;
--
-- Database: `tyrone`
--
CREATE DATABASE IF NOT EXISTS `tyrone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tyrone`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Alariao', 'Tyrone', 'admin@admin.com', '$2y$10$Bc5Kw9/G0Dl8qnG5izkU5Ow5YS2IhNrBkPnYEzJ5hvMf0ra1f6n/C'),
(2, 'Rafael', 'Esparagoza', 'rafael@gmail.com', '$2y$10$PsW/yPDQr4ocTSR4aTFWzekaj8LDkVoNPr5RvbZz5Ye.W/mSq3/8u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `velardedb`
--
CREATE DATABASE IF NOT EXISTS `velardedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `velardedb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailaddress` varchar(250) NOT NULL,
  `PhoneNumber` int(250) NOT NULL,
  `userpassword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `emailaddress`, `PhoneNumber`, `userpassword`) VALUES
(1, 'Ajay', 'ajay@email.com', 9999999, '$2y$10$8C0MkU8C8sn4BhiolKeMBu.5lakt8oD2nUcCP8hegouq4I88DeMPm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `xander`
--
CREATE DATABASE IF NOT EXISTS `xander` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `xander`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`) VALUES
(1, 'Xander', 'Alcansado', 'xander@gmail.com', '$2y$10$VsYvNIOLbcChw2ZObF6EMe.zTmKAUEguL4PbSD/A527BxjTYk3gjW'),
(2, 'Fabro', 'Ron Mark', 'ronmark@gmail.com', '$2y$10$hAedqdNiMlMJMHOn2AkLtuBGeBHnaJ3YJEc19RP1TRvrhFIwYesse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
