-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2024 at 01:14 AM
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
-- Database: `green_garden`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Flowers'),
(2, 'Fruits'),
(3, 'Leafy Vegetables'),
(4, 'Shrubs'),
(5, 'Trees'),
(6, 'Herbs'),
(7, 'Cacti'),
(8, 'Indoor Plants'),
(9, 'Succulents'),
(10, 'Outdoor Plants'),
(11, 'Potted Plants'),
(12, 'Seasonal Flowers'),
(13, 'Medicinal Plants'),
(14, 'Ornamental Plants'),
(15, 'Edible Plants');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `price`, `image_url`, `description`) VALUES
(1, 'Jasmine', 1, 20.00, 'https://36vine.com/wp-content/uploads/2023/12/jasmine-flower.webp', 'A fragrant flower often used in garlands.'),
(2, 'Marigold', 1, 15.00, 'https://www.tomatobible.com/wp-content/uploads/2021/05/marigolds.jpg', 'Bright and vibrant flowers, popular for festivals.'),
(3, 'Rose', 1, 30.00, 'https://www.bhg.com/thmb/QmByQNKmqoIe53ntTQUrjOgZjz4=/1280x0/filters:no_upscale():strip_icc()/just-joey-rose-169abc2e-0e8a4f5cdd8843d6b354d06fc398412b.jpg', 'A classic flower available in multiple colors.'),
(4, 'Gerbera Daisy', 1, 25.00, 'https://www.thespruce.com/thmb/_44VLn8sjjY3jydsxDoltNVKwAI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gerber-daises-4121360-hero-bfd1a98e8bb44c45891b84d9df63b5ac.jpeg', 'Colorful flowers perfect for bouquets.'),
(5, 'Lily', 1, 35.00, 'https://mynortherngarden.com/wp-content/uploads/2021/04/orange-lily-in-pot.jpg', 'Elegant flowers that bloom in various colors.'),
(6, 'Sunflower', 1, 40.00, 'https://m.media-amazon.com/images/I/81xSCvGBUFL._AC_UF350,350_QL80_.jpg', 'Large, bright flowers that turn toward the sun.'),
(7, 'Mango', 2, 100.00, 'https://ilovenursery.com/wp-content/uploads/2023/03/Mango-Tree-Amrapali-Grafted2-1.jpg', 'Sweet and juicy, the king of fruits.'),
(8, 'Banana', 2, 40.00, 'https://rukminim2.flixcart.com/image/720/864/kzd147k0/plant-sapling/s/x/a/no-annual-yes-kela16-1-aprix-original-imagbdbjcdcvy7ne.jpeg?q=60&crop=false', 'A common fruit, rich in potassium.'),
(9, 'Guava', 2, 50.00, 'https://rukminim2.flixcart.com/image/850/1000/kwqq1zk0/plant-sapling/m/v/x/no-perennial-yes-hybrid-dwarf-variant-guava-live-plant-cf30-1-original-imag9cxtxsp48j8c.jpeg?q=90&crop=false', 'Tropical fruit with a unique flavor.'),
(10, 'Pineapple', 2, 60.00, 'https://i.ytimg.com/vi/5FZebA8jzos/maxresdefault.jpg', 'Tropical fruit known for its sweetness.'),
(11, 'Jackfruit', 2, 80.00, 'https://rukminim2.flixcart.com/image/850/1000/xif0q/plant-sapling/e/y/w/no-perennial-yes-vietnam-all-time-jackfruit-very-sweet-taste-1-original-imahyrf4bgejr9yq.jpeg?q=90&crop=false', 'The largest fruit, great for savory dishes.'),
(29, 'Lychee', 2, 80.00, 'https://m.media-amazon.com/images/I/7168fmIDFoL.jpg', 'Sweet tropical fruit with a floral taste.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
