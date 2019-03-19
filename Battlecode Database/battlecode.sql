-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2019 at 12:51 AM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prayaasc_battlecode`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameid` varchar(10) NOT NULL,
  `invite` int(5) NOT NULL,
  `probid` int(4) NOT NULL,
  `user1` varchar(20) NOT NULL,
  `user2` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `winner` varchar(20) DEFAULT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameid`, `invite`, `probid`, `user1`, `user2`, `status`, `winner`, `start`) VALUES
('jq6jd', 21451, 1, 'hardik', 'himanshu', 'finish', 'himanshu', '2018-11-04 06:30:50'),
('o77z1', 64840, 1, 'hardik', 'himanshu', 'running', NULL, '2018-11-04 06:39:34'),
('o67io', 81547, 1, 'hardik', 'hardik', 'running', NULL, '2018-11-04 06:55:17'),
('t3i6e', 53710, 1, 'hardik', 'anubhav', 'running', NULL, '2018-11-04 06:57:38'),
('obs93', 80288, 1, 'hardik', 'anubhav', 'finish', 'admin', '2018-11-04 07:44:38'),
('fn76p', 87344, 1, 'rajat.jain', NULL, 'created', NULL, '2018-11-04 08:56:00'),
('zogfl', 54895, 1, 'hardik', 'himanshu', 'finish', 'hardik', '2018-11-04 09:43:24'),
('xmf75', 62836, 1, 'himanshu', NULL, 'created', NULL, '2018-11-04 09:43:54'),
('28z0i', 27723, 1, 'hardik', 'hanzo', 'finish', 'hardik', '2018-11-04 09:45:54'),
('13h9p', 49572, 1, 'hardik', 'hanzo', 'finish', 'hanzo', '2018-11-04 10:13:45'),
('vzuz3', 64118, 1, 'hardik', 'hanzo', 'finish', 'hardik', '2018-11-04 10:44:46'),
('f58o4', 71323, 1, 'sudhanshu456', NULL, 'created', NULL, '2018-11-06 13:22:03'),
('9uuim', 94102, 1, 'bunnysworld', NULL, 'created', NULL, '2018-11-08 11:57:08'),
('accza', 87935, 1, 'himanshu', 'himanshu', 'running', NULL, '2018-11-08 17:40:21'),
('ygkfs', 96870, 1, 'hardik', 'hardik', 'running', NULL, '2018-11-23 16:14:44'),
('m25jl', 61460, 1, 'hardik', NULL, 'created', NULL, '2018-11-23 16:14:32'),
('mk9n9', 13562, 1, 'hardik', 'freeze', 'finish', 'freeze', '2018-11-23 16:40:16'),
('txvmg', 85954, 1, 'hardik', 'freeze', 'finish', 'freeze', '2018-11-24 07:02:43'),
('oc9r8', 86505, 1, 'hardik', 'freeze', 'finish', 'freeze', '2018-11-24 07:40:49'),
('j8ev7', 75813, 1, 'Himanshu', 'Himanshu', 'finish', 'Himanshu', '2018-11-24 19:35:14'),
('q26a4', 85525, 1, 'freeze', 'hardik', 'running', NULL, '2019-02-06 09:07:03'),
('g7kkx', 85219, 1, 'freeze', 'hardik', 'running', NULL, '2019-02-06 09:16:05'),
('6fmmt', 87645, 1, 'freeze', NULL, 'created', NULL, '2019-02-10 08:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `node_users`
--

CREATE TABLE `node_users` (
  `id` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node_users`
--

INSERT INTO `node_users` (`id`, `username`, `password`, `email`, `status`) VALUES
(1, 'freeze', 'freeze', 'freeze@freeze.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prefs`
--

CREATE TABLE `prefs` (
  `name` varchar(30) NOT NULL,
  `accept` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `cpp` int(11) NOT NULL,
  `java` int(11) NOT NULL,
  `python` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prefs`
--

INSERT INTO `prefs` (`name`, `accept`, `c`, `cpp`, `java`, `python`) VALUES
('', 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `sl` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `input` text NOT NULL,
  `output` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '3000'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`sl`, `name`, `text`, `input`, `output`, `time`) VALUES
(1, 'Print the addition', 'Print the sum of series:\r\n<br><br>\r\nInput ::\r\nThe first line contains a integer N1.\r\n<br>\r\nThe second line contains another integer N2.\r\n<br><br>\r\nOutput :: Print sum of both numbers\r\n<br><br>\r\nConstraints<br>\r\n1â‰¤N1â‰¤2000<br>\r\n1â‰¤N2â‰¤2000<br>\r\n\r\n<br><br>\r\nExample Input<br>\r\n5\r\n<br>\r\n10\r\n<br><br>\r\nExample Output<br>\r\n15', '500\r\n160', '', 100);

-- --------------------------------------------------------

--
-- Table structure for table `solve`
--

CREATE TABLE `solve` (
  `sl` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `attempts` int(11) NOT NULL DEFAULT '1',
  `soln` text NOT NULL,
  `filename` varchar(25) NOT NULL,
  `lang` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solve`
--

INSERT INTO `solve` (`sl`, `problem_id`, `username`, `status`, `attempts`, `soln`, `filename`, `lang`) VALUES
(1, 1, 'himanshu', 2, 1, 'print(\"HELLO WORLD\");', '', 'python'),
(2, 1, 'admin', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1 + num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(3, 1, 'hardik', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(4, 1, 'hardik', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1 + num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(5, 1, 'hanzo', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(6, 1, 'hardik', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(7, 1, 'freeze', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(8, 1, 'freeze', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(9, 1, 'freeze', 2, 1, 'def addition(num1,num2):$_n_$    sum=num1+num2$_n_$    return sum$_n_$$_n_$number1=int(input())$_n_$number2=int(input())$_n_$$_n_$result=addition(number1,number2)$_n_$$_n_$print(result)', '', 'python'),
(10, 1, 'Himanshu', 2, 1, 'print \"Hello World\"', '', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sl` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `hash` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sl`, `username`, `salt`, `hash`, `email`, `status`) VALUES
(1, 'admin', 'xjnpa', 'xjsOj4w5zHVpQ', 'himaga1997@gmail.com', 1),
(2, 'hardik', '6xxcn', '6xvWjar/TMb4E', '', 1),
(3, 'himanshu', 'hq4tb', 'hqS0EijKsCEqI', '', 1),
(4, 'anubhav', 'xez7h', 'xeuvhv/kUKhNA', '', 1),
(5, 'hanzo', 'g14do', 'g1IZBtqn1m1CQ', '', 1),
(6, 'rajat.jain', 'slijo', 'sl0N1Oj5JS0pw', '', 1),
(7, 'Yolo', '8pc83', '8pn8nHqKWVWXo', '', 1),
(8, 'sudhanshu456', 'czhi4', 'cz9S7dpipIksQ', '', 1),
(9, 'bunnysworld', 'f7rop', 'f7Juxs/yLNbbo', '', 1),
(10, 'freeze', 'dxdbr', 'dxIUJ/9FayBwQ', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameid`);

--
-- Indexes for table `node_users`
--
ALTER TABLE `node_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `solve`
--
ALTER TABLE `solve`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `node_users`
--
ALTER TABLE `node_users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `solve`
--
ALTER TABLE `solve`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
