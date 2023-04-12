-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 07:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eatables`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `blog_img` varchar(30) NOT NULL,
  `blog_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `fav_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`fav_id`, `uid`, `item_id`) VALUES
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(30) NOT NULL,
  `hotel_loc` varchar(50) DEFAULT NULL COMMENT 'lat and long',
  `loc_name` varchar(30) NOT NULL,
  `ratings` varchar(10) DEFAULT NULL,
  `links` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_loc`, `loc_name`, `ratings`, `links`) VALUES
(1, 'Laziz Pizza', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/laziz-pizza-attavar/order'),
(2, 'Hamburg Street Food Cafe', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/hamburg-street-food-cafe-kankanady/order'),
(3, 'Bamboo Restaurant', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/bamboo-restaurant-kankanady/order'),
(4, 'CKK Kitchens Of Maharaja', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/ckk-kitchens-of-maharaja-lalbagh/order'),
(5, 'Hotel Sai Palace', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/hotel-sai-palace-hampankatta/order'),
(6, 'Grameen Kulfi', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/grameen-kulfi-kottara/order'),
(7, 'Momos Hut', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/momos-hut-kankanady/order'),
(8, 'Keventers - Milkshakes & Desse', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/keventers-milkshakes-desserts-balmatta/order'),
(9, 'Danish Bamboo House', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/danish-bamboo-house-kankanady/order'),
(10, 'Aladdin Shawarma', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/aladdin-shawarma-kankanady/order'),
(11, 'Hotel Sai Tudar', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/hotel-sai-tudar-lalbagh/order'),
(12, 'Baskin Robbins', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/baskin-robbins-hampankatta/order'),
(13, 'BT Devrali', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/bt-devrali-kankanady/order'),
(14, 'Sharaabi Bar & Family Restaura', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/sharaabi-bar-family-restaurant-kadri/order'),
(15, 'Taste of Parika', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/taste-of-parika-kapikad/order'),
(16, 'Urban House', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/urban-house-bendoor/order'),
(17, 'Pavman', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/pavman-mallikatte/order'),
(18, 'Andhra House', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/andhra-house-kadri/order'),
(19, 'Wholesome Kitchen', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/wholesome-kitchen-mallikatte/order'),
(20, 'Mangala', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/mangala-bendoor/order'),
(21, 'Frizzle', '', 'Manglore', '4', 'https://www.zomato.com/mangalore/frizzle-balmatta/order'),
(22, 'Taco Street', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/taco-street-kodailbail/order'),
(23, 'Kaati Zone Rolls And Wraps', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/kaati-zone-rolls-and-wraps-kodailbail/order'),
(24, 'Burger Shack', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/burger-shack-bendoor/order'),
(25, 'Wine And Dine', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/wine-and-dine-thokottu/order'),
(26, 'Frozen Scoops', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/frozen-scoops-1-hampankatta/order'),
(27, 'Sizzler\'s Ranch', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/sizzlers-ranch-hampankatta/order'),
(28, 'The Good Bowl', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/the-good-bowl-hampankatta/order'),
(29, 'Sri Durga Lunch Home', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/sri-durga-lunch-home-attavar/order'),
(30, 'Pure Veg Meals By LunchBox', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/pure-veg-meals-by-lunchbox-hampankatta/order'),
(31, 'Westburg', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/westburg-thokottu/order'),
(32, 'Gajalee Sea Food', '', 'Manglore', '4.1', 'https://www.zomato.com/mangalore/gajalee-sea-food-kadri/order'),
(33, 'Hao Ming', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/hao-ming-balmatta/order'),
(34, 'WarmOven Cake & Desserts', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/warmoven-cake-desserts-kodailbail/order'),
(35, 'Behrouz Biryani', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/behrouz-biryani-hampankatta/order'),
(36, 'Basil Cafe', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/basil-cafe-kapikad/order'),
(37, 'Sundae Everyday Ice Creams', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/sundae-everyday-ice-creams-kodailbail/order'),
(38, 'Gauji Gammath', '', 'Manglore', '4.2', 'https://www.zomato.com/mangalore/gauji-gammath-hampankatta/order'),
(39, 'Olive Street Food Cafe', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/olive-street-food-cafe-kodailbail/order'),
(40, 'Crave Desserts & Bakes', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/crave-desserts-bakes-balmatta/order'),
(41, 'Raslaffan Ice Cream Parlour', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/raslaffan-ice-cream-parlour-pumpwell/order'),
(42, 'New Kudla', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/new-kudla-ashok-nagar/order'),
(43, 'Rathna\'s Wine Gate', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/rathnas-wine-gate-kodailbail/order'),
(44, 'Machali', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/machali-kodailbail/order'),
(45, 'G Food \'N\' Fun', '', 'Manglore', '4.3', 'https://www.zomato.com/mangalore/g-food-n-fun-bendoor/order'),
(46, 'Ideal Cafe', '', 'Manglore', '4.4', 'https://www.zomato.com/mangalore/ideal-cafe-hampankatta/order'),
(47, 'Chandus Biryani Spot', '', 'Manglore', '4.4', 'https://www.zomato.com/mangalore/chandus-biryani-spot-kavoor/order'),
(48, 'Meisterwurst', '', 'Manglore', '4.4', 'https://www.zomato.com/mangalore/meisterwurst-kodailbail/order'),
(49, 'Pabbas', '', 'Manglore', '4.5', 'https://www.zomato.com/mangalore/pabbas-lalbagh/order'),
(50, 'Drood Cafe', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/drood-cafe-kankanady/order'),
(51, 'Biryani Express', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/biryani-express-kavoor/order'),
(52, 'Parika Bakes', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/parika-bakes-marnamikatte/order'),
(53, 'The Juice Dude', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/the-juice-dude-kankanady/order'),
(54, 'Nomou - Vegan Gelato', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/nomou-vegan-gelato-attavar/order'),
(55, 'Chit Chaat', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/chit-chaat-lalbagh/order'),
(56, 'Kling Krishna Cafe', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/kling-krishna-cafe-hampankatta/order'),
(57, 'Jumbo\'s Kitchen', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/jumbos-kitchen-kodailbail/order'),
(58, 'Taj Mahal Restaurant', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/taj-mahal-restaurant-hampankatta/order'),
(59, 'Kottara\'s 70 Surprise', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/kottaras-70-surprise-kottara/order'),
(60, 'Cafe Margarita', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/cafe-margarita-lalbagh/order'),
(61, 'The Grand Kitchen By AJ Grand ', '', 'Manglore', '-', 'https://www.zomato.com/mangalore/the-grand-kitchen-by-aj-grand-hotel-balmatta/order'),
(62, 'R 9 Cafe', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/r-9-cafe-attavar/order'),
(63, 'Bapama\'s Cafe', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/bapamas-cafe-kadri/order'),
(64, 'Ferns & Martins', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/ferns-martins-kavoor/order'),
(65, 'The Waffle Man - House of Cook', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/the-waffle-man-house-of-cookie-man-attavar/order'),
(66, 'Frankie Delight', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/frankie-delight-kottara/order'),
(67, 'Amma\'s Kitchen', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/ammas-kitchen-kankanady/order'),
(68, 'The Hungry Birds', '', 'Manglore', 'New', 'https://www.zomato.com/mangalore/the-hungry-birds-hampankatta/order');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `hotel_id`, `item_name`, `item_price`, `item_rating`) VALUES
(1, 1, 'BBQ Pizza', 210, NULL),
(2, 1, 'Special Spicy Pizza', 220, NULL),
(3, 1, 'Lions Appetite Pizza', 245, NULL),
(4, 1, 'Paneer Ghee Roast Pizza', 240, NULL),
(5, 1, 'Cheese N Cheese Pizza', 145, NULL),
(6, 1, 'Pizza Box for One [Veg]', 299, NULL),
(7, 1, 'Pizza Box for One [Non-Veg]', 325, NULL),
(8, 1, 'Family pizza box [Veg]', 745, NULL),
(9, 1, 'Family pizza box [Non-Veg]', 799, NULL),
(10, 1, 'Pizza Party Box', 1050, NULL),
(11, 1, 'Laziz Special Combo', 799, NULL),
(12, 1, 'Margherita Pizza', 145, NULL),
(13, 1, 'Cheese N Cheese Pizza', 145, NULL),
(14, 1, 'Pomidor Pizza', 145, NULL),
(15, 1, 'Laziz Desi Veg Pizza', 180, NULL),
(16, 1, 'Corn Golden Pizza', 175, NULL),
(17, 1, 'Vegetariana Pizza', 180, NULL),
(18, 1, 'Garden Fresh Pizza', 190, NULL),
(19, 1, 'Veg Paprika Pizza', 190, NULL),
(20, 1, 'Paneer Tikka Pizza', 190, NULL),
(21, 1, 'Fiery Paneer Pizza', 195, NULL),
(22, 1, 'Mushroom Paprika Pizza', 195, NULL),
(23, 1, 'Veg Schezwan Pizza', 190, NULL),
(24, 1, 'Paneer Chilli Pizza', 195, NULL),
(25, 1, 'Carnival Veg Pizza', 210, NULL),
(26, 1, 'Mexican Veg Pizza', 215, NULL),
(27, 1, 'Corn Exotica Pizza', 215, NULL),
(28, 1, 'Veg Extra Delight Pizza', 215, NULL),
(29, 1, 'Achari Veg Pizza', 210, NULL),
(30, 1, 'Yum Dum Pizza', 210, NULL),
(31, 1, 'Curry Veg Pizza', 210, NULL),
(32, 1, 'Special Spicy Pizza', 220, NULL),
(33, 1, 'Mushroom Garlic Delight Pizza', 215, NULL),
(34, 1, 'Pepper Paneer Pizza', 215, NULL),
(35, 1, 'Paneer Ghee Roast Pizza', 240, NULL),
(36, 1, 'Jamaican Veg Pizza', 240, NULL),
(37, 1, 'Veg Extraveganza Pizza', 250, NULL),
(38, 1, 'Egg Scrambled Pizza', 230, NULL),
(39, 1, 'Egg Hot and Spicy Pizza', 230, NULL),
(40, 1, 'Peppy Egg Pizza', 230, NULL),
(41, 1, 'Chicken Tikka Pizza', 195, NULL),
(42, 1, 'Chicken Schezwan Pizza', 195, NULL),
(43, 1, 'Chicken Seekh Kabab Pizza', 195, NULL),
(44, 1, 'Tandoori Chicken Pizza', 195, NULL),
(45, 1, 'Chicken Hawaiian Pizza', 190, NULL),
(46, 1, 'Chicken Keema Pizza', 195, NULL),
(47, 1, 'Mexican Chicken Pizza', 210, NULL),
(48, 1, 'Carnival Chicken Pizza', 210, NULL),
(49, 1, 'BBQ Pizza', 210, NULL),
(50, 1, 'Butter Chicken Pizza', 210, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
  `loc_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `loc_name`) VALUES
(6, 'Manglore');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `review_content` varchar(150) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `uid`, `item_id`, `review_content`, `review_date`) VALUES
(36, 6, 6, 'good', '2023-04-12 19:18:19'),
(37, 6, 6, 'ljdgb', '2023-04-12 19:18:33'),
(38, 6, 6, 'kiehrg', '2023-04-12 19:18:43'),
(39, 6, 1, 'huh', '2023-04-12 19:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 1,
  `reset_token` varchar(100) DEFAULT NULL,
  `reset_expiration` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fullname`, `uname`, `email`, `password`, `user_type`, `reset_token`, `reset_expiration`, `img`) VALUES
(1, 'darshan dinesh', 'darshan', 'darshandinesh@gmail.com', '$2y$10$TQOMzbyY9rDjl5LaZbaWF.Auw13FdOcGyeTxJkItqSMuBc/Y.hQam', 0, NULL, NULL, NULL),
(2, 'ashwin', 'ashwin', 'ashwinkv.akv@gmail.com', '$2y$10$dcdkPt8NKUnRAOupyrN1ruOzCb.8mZXuG4jZOfHaGnM9YSlDILjCi', 1, 'e47e13fe1ed12f8ca1f21d784b8a9c2b7350c8b4a9bb89e858a00cd7c9136179', '2023-04-09 18:30:06', NULL),
(3, 'delbin', 'delbin', 'delbin@gmail.com', '$2y$10$NjV23hQaywVkh3WoBrYLee.I/TuNz2wwQGsufCjnAacru66yH1AlG', 1, NULL, NULL, NULL),
(4, 'maya v', 'mayavi', 'mayavakkadavath27@gmail.com', '$2y$10$Dv57Q9y/CPvWpJRM3uFrgONfEvWa7fW.aJVxuNGuQvcVazvRWK.1u', 1, NULL, NULL, NULL),
(6, 'jinu', 'jinu', 'jinadevjinu93@gmail.com', '$2y$10$XQFyY7cL.O8rhpUf2rnsbuFhzMxBJTYWht.B4brZyzIkijqeyrx/y', 1, NULL, NULL, 'IMG_1426.JPG'),
(7, 'ashwin kv', 'dreamographer', 'dreamographer.akv@gmail.com', '$2y$10$gPerrUeKffiNWeuqTLdQt.bR3rJNPqDjBd3F.dMnWKB1AWosveKyi', 1, 'de7aee685eae72294f1baec0b6f4da19830d15eda98e93e4997d0b5fc77a8e76', '2023-04-11 22:57:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav_id`),
  ADD KEY `favourite_ibfk_1` (`item_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `loc_name` (`loc_name`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc_name`),
  ADD UNIQUE KEY `loc_id` (`loc_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uid_2` (`uid`),
  ADD KEY `review_ibfk_1` (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`,`uname`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `favourite_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourite_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`loc_name`) REFERENCES `location` (`loc_name`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
