-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 01:52 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postr`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`message_id`, `user_id`, `message`, `timestamp`) VALUES
(1, 16, 'Great chat app!', 1537776614),
(2, 18, 'Thanks!', 1537776621),
(3, 16, 'This is a test', 1537778987),
(4, 16, 'Hello', 1538433142),
(5, 16, 'What is your name?', 1538433272),
(6, 18, 'Nonso', 1538433471),
(7, 16, 'Okay. Thanks', 1538433553),
(8, 16, 'How old are you?', 1538433596),
(9, 16, 'Are you there?', 1538433798),
(10, 16, 'Hey,&lt;br /&gt;\nNonso', 1538433810),
(11, 16, 'Hey,\nNonso', 1538433876),
(12, 18, 'Hey,\nEmeka', 1538433911),
(13, 18, 'I am 35', 1538433928),
(14, 16, 'Hey You', 1538434057),
(15, 18, 'What about me?', 1538434080),
(16, 16, 'Nothing really.\nWanted to find out if you were still there.', 1538434113),
(17, 18, 'Lol... I see', 1538434134),
(18, 16, 'See what? Loooool', 1538434179),
(19, 18, 'You are a piece of work. You know', 1538434206),
(20, 16, 'Lol... Good night mehn', 1538434226),
(21, 18, '2', 1538434271),
(22, 16, '2?', 1538434343),
(23, 18, 'Lol, Yeah', 1538434365),
(24, 18, 'Drop weapon before negotiation', 1538434400),
(25, 18, ';', 1538434421),
(26, 18, ':)', 1538434426),
(27, 16, 'water\'s', 1538506322),
(28, 16, 'Are you &quot;nuts&quot;?', 1538506338),
(29, 16, '\'', 1538506363);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
