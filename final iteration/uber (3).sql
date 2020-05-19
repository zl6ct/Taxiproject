-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 03:42 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uber`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `D_IDnumber` varchar(15) NOT NULL,
  `license_plate` varchar(10) NOT NULL,
  `model` varchar(15) NOT NULL,
  `capacity` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `D_IDnumber` varchar(15) NOT NULL,
  `P_IDnumber` varchar(15) NOT NULL,
  `Chat_log` char(1) DEFAULT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `D_IDnumber` varchar(15) NOT NULL,
  `credit_card_Number` char(16) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `Driver_license_No` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`D_IDnumber`, `credit_card_Number`, `Fname`, `Mname`, `Lname`, `phonenumber`, `Driver_license_No`, `Password`) VALUES
('10001000', '1234123412341234', 'temp', 'temp', 'temp', '5738827786', '123456123', '1000'),
('100023', '1234123412341234', 'LKK', 'ss', 'wewe', '13311231625', '12333222333', '123123'),
('100100', '1234123412341234', 'ss', 'ss', 'ss', '5738827786', '1234123', '1009'),
('12333', '1234123412341234', 'SSA', 'S', 'D', '5776637263', '7263746273846152', 'Liang19981'),
('1234', '1234432112344321', 'temp2', 'temp2', 'wewe', '13311231625', '1231241324', '12345'),
('123456789', '1234567812345678', 'Harter', 'John', 'Zheng', '5735201010', '1020124012030', '000000'),
('harter', '3645475786565764', 'liu', '', 'weiju', '5748563568', '486457447', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `driver_location`
--

CREATE TABLE `driver_location` (
  `D_IDnumber` varchar(15) NOT NULL,
  `GPSLocation_Latitude` float NOT NULL,
  `GPSLocation_Longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `driver_order_taking`
--

CREATE TABLE `driver_order_taking` (
  `D_IDnumber` varchar(15) NOT NULL,
  `Order_No` varchar(15) NOT NULL,
  `taking_time` varchar(15) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `driver_rating`
--

CREATE TABLE `driver_rating` (
  `D_IDnumber` varchar(15) NOT NULL,
  `D_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_rating`
--

INSERT INTO `driver_rating` (`D_IDnumber`, `D_rating`) VALUES
('1234', 2),
('1234', 5),
('1234', 6),
('1234', 8),
('1234', 10);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `P_IDnumber` varchar(15) NOT NULL,
  `credit_card_Number` char(16) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`P_IDnumber`, `credit_card_Number`, `Fname`, `Mname`, `Lname`, `phonenumber`, `Password`) VALUES
('1234', '1234123412341234', 'sas', 'of', 'wewe', '5738827786', '123'),
('2017', '1234123412341234', 'first', 'first', 'first', '15330354746', '000000'),
('harter', '1234123412341234', 'wei', '', 'liu', '5729817823', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_location`
--

CREATE TABLE `passenger_location` (
  `P_IDnumber` varchar(15) NOT NULL,
  `GPSLocation_Latitude` float NOT NULL,
  `GPSLocation_Longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_location`
--

INSERT INTO `passenger_location` (`P_IDnumber`, `GPSLocation_Latitude`, `GPSLocation_Longitude`) VALUES
('1234', 111, 222),
('2017', 120, 210);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_order_creating`
--

CREATE TABLE `passenger_order_creating` (
  `P_IDnumber` varchar(15) NOT NULL,
  `Order_No` varchar(15) NOT NULL,
  `creating_time` varchar(15) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_rating`
--

CREATE TABLE `passenger_rating` (
  `P_IDnumber` varchar(15) NOT NULL,
  `P_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `taxi_order`
--

CREATE TABLE `taxi_order` (
  `Order_No` varchar(15) NOT NULL,
  `Startlocation_Longitude` float NOT NULL,
  `Startlocation_Latitude` float NOT NULL,
  `Destination_longitude` float NOT NULL,
  `Destination_latitude` float NOT NULL,
  `duration` int(11) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`D_IDnumber`,`license_plate`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`D_IDnumber`,`P_IDnumber`,`timestamp`),
  ADD KEY `P_IDnumber` (`P_IDnumber`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`D_IDnumber`);

--
-- Indexes for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD PRIMARY KEY (`D_IDnumber`,`GPSLocation_Longitude`,`GPSLocation_Latitude`);

--
-- Indexes for table `driver_order_taking`
--
ALTER TABLE `driver_order_taking`
  ADD PRIMARY KEY (`D_IDnumber`,`Order_No`),
  ADD KEY `Order_No` (`Order_No`);

--
-- Indexes for table `driver_rating`
--
ALTER TABLE `driver_rating`
  ADD PRIMARY KEY (`D_IDnumber`,`D_rating`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`P_IDnumber`);

--
-- Indexes for table `passenger_location`
--
ALTER TABLE `passenger_location`
  ADD PRIMARY KEY (`P_IDnumber`,`GPSLocation_Longitude`,`GPSLocation_Latitude`);

--
-- Indexes for table `passenger_order_creating`
--
ALTER TABLE `passenger_order_creating`
  ADD PRIMARY KEY (`P_IDnumber`,`Order_No`),
  ADD KEY `Order_No` (`Order_No`);

--
-- Indexes for table `passenger_rating`
--
ALTER TABLE `passenger_rating`
  ADD PRIMARY KEY (`P_IDnumber`,`P_rating`);

--
-- Indexes for table `taxi_order`
--
ALTER TABLE `taxi_order`
  ADD PRIMARY KEY (`Order_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`D_IDnumber`) REFERENCES `driver` (`D_IDnumber`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`D_IDnumber`) REFERENCES `driver` (`D_IDnumber`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`P_IDnumber`) REFERENCES `passenger` (`P_IDnumber`);

--
-- Constraints for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD CONSTRAINT `driver_location_ibfk_1` FOREIGN KEY (`D_IDnumber`) REFERENCES `driver` (`D_IDnumber`);

--
-- Constraints for table `driver_order_taking`
--
ALTER TABLE `driver_order_taking`
  ADD CONSTRAINT `driver_order_taking_ibfk_1` FOREIGN KEY (`D_IDnumber`) REFERENCES `driver` (`D_IDnumber`),
  ADD CONSTRAINT `driver_order_taking_ibfk_2` FOREIGN KEY (`Order_No`) REFERENCES `taxi_order` (`Order_No`);

--
-- Constraints for table `driver_rating`
--
ALTER TABLE `driver_rating`
  ADD CONSTRAINT `driver_rating_ibfk_1` FOREIGN KEY (`D_IDnumber`) REFERENCES `driver` (`D_IDnumber`);

--
-- Constraints for table `passenger_location`
--
ALTER TABLE `passenger_location`
  ADD CONSTRAINT `passenger_location_ibfk_1` FOREIGN KEY (`P_IDnumber`) REFERENCES `passenger` (`P_IDnumber`);

--
-- Constraints for table `passenger_order_creating`
--
ALTER TABLE `passenger_order_creating`
  ADD CONSTRAINT `passenger_order_creating_ibfk_1` FOREIGN KEY (`P_IDnumber`) REFERENCES `passenger` (`P_IDnumber`),
  ADD CONSTRAINT `passenger_order_creating_ibfk_2` FOREIGN KEY (`Order_No`) REFERENCES `taxi_order` (`Order_No`);

--
-- Constraints for table `passenger_rating`
--
ALTER TABLE `passenger_rating`
  ADD CONSTRAINT `passenger_rating_ibfk_1` FOREIGN KEY (`P_IDnumber`) REFERENCES `passenger` (`P_IDnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
