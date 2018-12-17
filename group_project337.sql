-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 03:57 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_project337`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'admin', '$2y$10$ptplUJxZ/16NP3rEGqaJuuLBqoaZ2yJg6UwoyvT4zu5/bdOHgMZJq');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Soda'),
(2, 'Coffee'),
(3, 'Sports drinks'),
(4, 'juice drinks'),
(5, 'Enegry drinks');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(0, '10.17.201.60', 1),
(0, '10.17.201.60', 1),
(0, '71.172.70.234', 1),
(0, '71.172.70.234', 1),
(0, '24.228.66.23', 1),
(15, 'something', 1),
(12, 'something', 1),
(14, 'something', 1),
(16, 'something', 1),
(10, 'something', 1),
(39, 'train', 11),
(42, '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Soda'),
(2, 'Coffee'),
(3, 'Juice'),
(4, 'Sports'),
(5, 'Enegry');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(1, 'something', 'me', 'dp1@gmail.com', 'rex132660', 'usa', 'somewhere', 'a number', 'where ever deadpool lives', 'nah'),
(2, '24.228.66.23', 'user1', 'user', '$2y$10$30Q13UYvwgF/vi/IKP1BFOeL8gdGIuXrSdXkDEupmw6uE3fR8jm7y', 'Select a Country', '', '', '', ''),
(3, '173.70.82.144', 'hi', 'something', '$2y$10$N57n6GrwVQswQA/1TRnQ2OHPC4fv1RBSDvaV3Nj4nuRsOs3TaHkJS', 'United Kingdom', 'guiohjoih', 'yiohoih', 'who cares', ''),
(4, '::1', 'train', 'train ', '$2y$10$Ha151mm4XjASFo1r2xxVs.VcXg21vU5rKldwDdF0Sezz1HzTdVBTi', 'Select a Country', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` varchar(10) NOT NULL,
  `cost` float DEFAULT NULL,
  `status` enum('pending','fulfilled','special') DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `fulfilldate` date DEFAULT NULL,
  `request` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `cost`, `status`, `orderdate`, `fulfilldate`, `request`) VALUES
(0, '2', 28, 'pending', '2018-12-17', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` blob NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(18, 2, 0, 'tide', 7, '<p>clean ur guts</p>', 0x2e2e2f70726f647563745f696d616765732f2e6a666966, 'tide'),
(19, 0, 0, 'Monster ', 500, '<p>Monster Energy Original 24oz</p>', '', 'monster,original,24oz'),
(22, 1, 0, 'Fanta Orange', 2, '<p>Fanta Original Orange Flavor</p>', 0x2e2e2f70726f647563745f696d616765732f31323935333531382e6a666966, 'Fanta,Orange,2liter'),
(23, 1, 0, 'Inca Kola', 2, '<p>Inca Kola 2 liter</p>', 0x2e2e2f70726f647563745f696d616765732f383336313335362e6a7067, 'inca kola, 2liter,inca'),
(24, 2, 0, 'Iced Mocha - Dunkin Donuts ', 3.5, '<p>Dunkin Donuts Iced Mocha</p>', 0x2e2e2f70726f647563745f696d616765732f35323130343433382e6a666966, 'iced mocha, mocha, dunkin,dunkin donuts,'),
(25, 2, 0, 'Iced Original - Dunkin Donuts ', 3.5, '<p>Dunkin Donuts Iced Original 13.7oz</p>', 0x2e2e2f70726f647563745f696d616765732f696365642d636f666665652d626f74746c65642d64756e6b696e2e6a7067, 'Iced original, dunkin, dunkin donuts, 13.7, 13.7oz, coffee, iced'),
(26, 2, 0, 'Coffee Frappuccino - Starbucks', 3.5, '<p>Starbucks Coffee Frappuccino 9.5 oz</p>', 0x2e2e2f70726f647563745f696d616765732f34343238383031376439373834646136613262393866343335663865356361332e6a7067, 'starbucks,coffe,frappuccino, 9.5oz'),
(27, 2, 0, 'Vanilla Frappuccino - Starbucks', 3.5, '<p>Starbucks Vanilla Frappuccino 9.5 oz</p>', 0x2e2e2f70726f647563745f696d616765732f35373062646534333638363034323865616330663238663031366165613439312e6a7067, 'starbucks, vanilla,frappuccino, 9.5oz,'),
(28, 2, 0, 'Mocha Frappuccino - Starbucks ', 3.5, '<p>Starbucks Mocha Frappuccino 9.5 oz</p>', 0x2e2e2f70726f647563745f696d616765732f65326634323635346563663734633562396461306637643833383535616430322e6a7067, 'starbucks, mocha,frappuccino, 9.5oz,'),
(29, 3, 0, 'Orange', 2, '<p>Tropicana Orange Juice 10z</p>', 0x2e2e2f70726f647563745f696d616765732f696d616765536572766963652e6a666966, 'tropicana,orange,10oz,juice,'),
(30, 3, 0, 'Apple ', 2, '<p>Tropicana Apple Juice 10oz</p>', 0x2e2e2f70726f647563745f696d616765732f313438393433363239313936362e6a7067, 'tropicana,apple,10oz,juice,'),
(31, 3, 0, 'Grape ', 2, '<p>Welch\'s Grape Juice 10oz</p>', 0x2e2e2f70726f647563745f696d616765732f4f726967696e616c5f3135323930352e6a7067, 'welch,welch\'s,grape,10oz,juice,'),
(32, 4, 0, 'Gatorade Lime 20z', 3, '<p>Gatorade Lime 20 oz</p>', 0x2e2e2f70726f647563745f696d616765732f6c656d6f6e5f6c696d655f32306f7a2e6a7067, 'gatorade, lime, 20z, sport'),
(33, 4, 0, 'Gatorade Lime 32oz', 4, '<p>Gatorade Lime 32 oz</p>', 0x2e2e2f70726f647563745f696d616765732f31333637343131392e6a666966, 'gatorade, lime, 32oz, sport'),
(34, 4, 0, 'Gatorade Orange 20z', 4, '<p>Gatorade Orange 20 oz</p>', 0x2e2e2f70726f647563745f696d616765732f31643861643862372d633136662d343166312d616137382d3830663737386532616635635f312e36386234373236343866323863636434363265313439313135656539636435622e6a666966, 'gatorade, orange, 20z, sport'),
(35, 4, 0, 'Gatorade Orange 32oz', 4, '<p>Gatorade Orange 32 oz</p>', 0x2e2e2f70726f647563745f696d616765732f31333637343039362e6a666966, 'gatorade, orange, 32oz, sport'),
(36, 4, 0, 'Gatorade Cool Blue 20z', 3, '<p>Gatorade Cool Blue 20 oz</p>', 0x2e2e2f70726f647563745f696d616765732f3930302e6a7067, 'gatorade, blue,blue, 20z, sport'),
(37, 4, 0, 'Gatorade Cool Blue 32oz', 3, '<p>Gatorade Cool Blue 32 oz</p>', 0x2e2e2f70726f647563745f696d616765732f70726f645f65635f313536353839313930322e6a666966, 'gatorade, cool,blue, 32oz, sport'),
(38, 4, 0, 'Powerade Grape 20oz', 3, '<p>Powerade Grape 20 oz</p>', 0x2e2e2f70726f647563745f696d616765732f706f7765617264652d67726170652d32306f7a2e6a7067, 'Powerade, grape,20oz,sport'),
(39, 4, 0, 'Powerade Grape 32oz', 4, '<p>Powerade Grape 32 oz</p>', 0x2e2e2f70726f647563745f696d616765732f38396666373663362d306465622d343065662d393662302d6439346631656532333936665f312e36646239366562616535333233336430373861373066643939346439623634622e6a666966, 'Powerade, grape,32oz,sport'),
(40, 4, 0, 'Powerade Fruit Punch 20oz', 3, '<p>Powerade Fruit Punch 20 oz</p>', 0x2e2e2f70726f647563745f696d616765732f32306f7a2d46727569742d50756e63682e6a7067, 'Powerade, fuit,punch,20oz,sport'),
(41, 4, 0, 'Powerade Fruit Punch 32oz', 4, '<p>Powerade Fruit Punch 32 oz</p>', 0x2e2e2f70726f647563745f696d616765732f354a4c314c2e6a70672e6a7067, 'Powerade, fuit,punch,32oz,sport'),
(42, 1, 0, 'Sprite ', 2, '<p>Sprite Lime 2 liter</p>', 0x2e2e2f70726f647563745f696d616765732f3431394e3272454957354c2e6a7067, 'sprite,lime,2liter'),
(43, 5, 0, 'Monster Ultra Red', 2.5, '<p>Monster Energy Ultra Red 8 oz</p>', 0x2e2e2f70726f647563745f696d616765732f6d6f6e737465722d756c7472612d7265642d702e6a7067, 'monster,red,ultra,8oz'),
(44, 5, 0, 'Monster Pipeline Punch', 2.5, '<p>Monster Energy Pipeline Punch 8oz</p>', 0x2e2e2f70726f647563745f696d616765732f3430363736343031315f305f363430783634302e6a7067, 'monster,pipeline,punch,8oz'),
(45, 1, 0, 'Coca Cola ', 2, '<p>Coca Cola Original 2 liter</p>', 0x2e2e2f70726f647563745f696d616765732f436f63615f436f6c615f312e32355f4c745f31303338315f312e6a7067, 'coke,coca,cola,original,2liter'),
(46, 3, 0, 'corn juice ', 1, '<p>corn juice 10 oz</p>', 0x2e2e2f70726f647563745f696d616765732f, 'corn,juice,10oz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
