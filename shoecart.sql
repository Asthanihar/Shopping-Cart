-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 01:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoecart`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `Name`, `email`, `Password`, `phone`, `address`) VALUES
(1, '', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '', ''),
(2, 'lololol', 'gftdtrs3@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY'),
(3, 'Astha Nihar', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '', ''),
(4, 'Astha Nihar', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY'),
(5, 'Astha Nihar', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY'),
(6, '', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY'),
(7, '', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY'),
(8, '', 'asthanihar23@gmail.com', '65a19c38f5c4cf0d7a27', '7667242551', 'DEVLOK APT., NEW PATLIPUTRA COLONY');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('Pending','Completed','Cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `Image`, `price`, `created`, `modified`, `status`) VALUES
(1, 'Nike Sneakers', 'Nike Sneakers', 'nike.jpeg', 500.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(2, 'Adidas Sneakers', 'Adidas Sneakers', 'adidas.jpeg', 550.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(3, 'H&M Sneakers', 'H&M Sneakers', 'sneakers.jpeg', 350.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(4, 'Puma Sneakers', 'Puma Sneakers', 'puma.jpeg', 450.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(5, 'Jimmy choo heels', 'Jimmy Choo heels', 'heel1.jpeg', 750.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(6, 'louis vuitton heels', 'louis vuitton heels', 'heel2.jpeg', 1100.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(7, 'H&M heels', 'H&M heels', 'heel3.jpeg', 500.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(8, 'Metro heels', 'Metro heels', 'heel4.jpeg', 350.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(9, 'Thigh High Boots', 'Thigh High Boots', 'boot1.jpeg', 500.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(10, 'H&M Boots', 'H&M boots', 'boot3.jpeg', 350.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(11, 'H&M Black Boots', 'H&M Black Boots', 'boot4.jpeg', 320.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1'),
(12, 'H&M Boots', 'H&M boots', 'boot2.jpeg', 350.00, '2020-10-05 20:58:02', '2020-10-05 12:58:02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='image files related to a product';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
