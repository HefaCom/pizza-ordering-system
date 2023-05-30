-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 02:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `phone`, `name`, `email`, `address`, `password`) VALUES
(4, '0707615535', 'Hezron', 'okokohhezron254@gmail.com', '46-40223, Kadongo.', '1349');

-- --------------------------------------------------------

--
-- Table structure for table `pizzasales`
--

CREATE TABLE `pizzasales` (
  `ID` int(10) NOT NULL,
  `item` varchar(40) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `totalSale` int(10) NOT NULL,
  `contact` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzasales`
--

INSERT INTO `pizzasales` (`ID`, `item`, `quantity`, `price`, `total`, `totalSale`, `contact`) VALUES
(1, 'Medium', 3, 350, 1050, 2100, '0707615535'),
(2, 'Medium', 3, 350, 1050, 2100, '0707615535'),
(3, 'Medium', 3, 350, 1050, 3450, ''),
(4, 'Extra Large', 2, 1200, 2400, 3450, ''),
(5, 'Large', 3, 700, 2100, 4050, '0707615535'),
(6, 'Extra Large', 1, 1200, 1200, 4050, '0707615535'),
(7, 'Small', 5, 150, 750, 4050, '0707615535'),
(8, 'Medium', 2, 350, 700, 5500, ''),
(9, 'Extra Large', 4, 1200, 4800, 5500, ''),
(10, 'Medium', 2, 350, 700, 5500, '0707615535'),
(11, 'Extra Large', 4, 1200, 4800, 5500, '0707615535'),
(12, 'Small', 2, 150, 300, 300, '500'),
(13, 'Small', 2, 150, 300, 300, '0707615535'),
(14, 'Extra Large', 1, 1200, 1200, 1200, '0707615535');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `pizzasales`
--
ALTER TABLE `pizzasales`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pizzasales`
--
ALTER TABLE `pizzasales`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
