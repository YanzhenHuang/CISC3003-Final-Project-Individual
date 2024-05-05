-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 06:53 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('mpK2fn0P8SFrhLuihPqU', 'bM0qwfGNQGRGp8DGF4EI', 'Huang Yanzhen', '1781234567', 'hyz@example.com', 'Address 01, Address 02, Macau, China - 123456', 'home', 'cash on delivery', 'syUFN9w2xEEcrL9Q3fR7', '8999', '1', '2024-05-01', 'in progress'),
('FhHxprnYkQCHbR0XvXAJ', 'bM0qwfGNQGRGp8DGF4EI', 'Huang Yanzhen', '1781234567', 'hyz@example.com', 'Address 01, Address 02, Macau, China - 123456', 'home', 'cash on delivery', '2W7OCWYHPZP3jMXTdtsN', '6999', '1', '2024-05-01', 'in progress'),
('kPIHnbbPPPHPYD5I2c8q', 'xk185ZhUqFn90FrGkND6', 'Huang Yanzhen', '178123456', 'hyz@example.com', 'Address 01 , Address 02, Macau, China - 512345', 'home', 'cash on delivery', '0TCN7Ax1hX3BTPCKun7C', '200', '3', '2024-05-01', 'canceled');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('MvVfrGV4si9yDTZ9JhHp', 'Bike', '2000', '1Ueb5MWLUZXkI42ldW59.webp'),
('2W7OCWYHPZP3jMXTdtsN', 'iPhone', '6999', '5j1xeHyB8ZnCHqMMAQkS.jpg'),
('syUFN9w2xEEcrL9Q3fR7', 'Laptop', '8999', '45dtEIuVvezRkiyYa7Qj.jpg'),
('itksXZm1DBu8EPHxdiJw', 'Shoes', '289', 'UjA8vC4QWYCxbMOtTpTu.webp'),
('4gg93tLsmTBAzT1TQHC6', 'T-Shirt', '210', 'PHdztLiD18KqzGyJhp8A.jpg'),
('0TCN7Ax1hX3BTPCKun7C', 'Dog Food', '200', 'bWJD5rj6etipoZfNxbXd.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
