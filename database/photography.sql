-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 03:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_cat` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `price` int(100) NOT NULL,
  `date` date NOT NULL,
  `icode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_name`, `item_cat`, `image`, `price`, `date`, `icode`) VALUES
(1, 3, 'Ryan White', 'Photographer', 'person1.jpg', 10000, '2022-08-22', 's101'),
(2, 4, 'Morshedul Islam', 'Photographer', 'person2.jpg', 5000, '2022-08-25', 's102'),
(4, 4, 'Clocks', 'Photo', 'img1.jpg', 99, '0000-00-00', 'p101'),
(5, 3, 'Plants', 'Photo', 'img2.jpg', 110, '0000-00-00', 'p102'),
(6, 8, 'Clocks', 'Photo', 'img1.jpg', 99, '0000-00-00', 'p101'),
(7, 8, 'Morshedul Islam', 'Photographer', 'person2.jpg', 8000, '2022-08-30', 's102'),
(9, 15, 'Siyam Ul Hoque', 'Photographer', 'person5.jpg', 5000, '2022-09-10', 's109'),
(10, 15, 'Coffee with Love', 'Photo', 'img5.jpg', 100, '0000-00-00', 'p107');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `user_id`, `name`, `role`, `email`, `message`, `time`) VALUES
(1, 3, 'Customer', 'customer', 'customer@user.com', 'When deciding who is the customer, the focus should always be on the people using the product. They are the ones for whom value is being created and the reason why the market and the product exist. This can be a little tricky when a company sells its product as a component of another company product.', '2022-08-18 08:14:53'),
(3, 11, 'Sakib Ahmed', 'seller', 'sakib@gmail.com', 'Where picture enthusiasts will snap their preferred images. And it is simple to locate photographers at home using this website. Hiring photographers for special occasions is not a cause for concern. The most creative or expert photography contest entries are available here.', '2022-08-27 20:29:05'),
(5, 16, 'Siyam Ul Hoque', 'seller', 'siyam@gmail.com', 'Hey. \r\nI just submitted some photos for your photography contest named. BP portrait Award. \r\nThank you', '2022-09-02 15:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(100) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `entry_fee` int(100) NOT NULL,
  `prize` int(100) NOT NULL,
  `theme` varchar(100) NOT NULL,
  `submission` date NOT NULL,
  `result` date NOT NULL,
  `image` text NOT NULL,
  `participants` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `title`, `details`, `entry_fee`, `prize`, `theme`, `submission`, `result`, `image`, `participants`, `status`) VALUES
(1, 'International Photography Grant', 'International Photography Grant is a non-profit initiative run by International Photography Magazine.\r\nOur idea is to evoke artistic activities. Together, we create space to take creative initiatives and promote new trends in photography. We strive to inspire participants to improve their photographic skills and develop their vision. We believe that each participant has potential and talent waiting to be discovered. International Photography Grant is a platform that allows you to gain experience and enter the world of professional photography. Artists have the opportunity to push their careers forward and are recognized by art galleries, curators, media, and cultural institutions worldwide.', 300, 5000, 'Nature', '2022-09-10', '2022-09-30', 'contest_1.jpg', 2, 'published'),
(2, 'Smithsonian Annual Photo Contest', 'Over the last 18 years, readers have submitted more than 470,000 images to the Smithsonian annual photo contest. These photos have transported us to the far corners of Earth, captured spectacular, split-second moments, and introduced us to fascinating people and unique landscapes. Browse breathtaking images captured by photographers from nearly every country in the world. Search by location and topic, and explore photographer portfolios for inspiration.\r\n\r\n', 500, 100000, 'Animals, plants, and landscapes', '2022-10-04', '2022-12-25', 'contest_2.png', 0, 'published'),
(7, 'BP Potrait Award', ' The contest aims to contribute to the sphere of news photography and offers a perspective shaped by the region unique position at the center of diverse cultures. The awards reward endeavors of courageous and talented photojournalists from around the world on merit. Although it is only the fourth edition of the contest, BP Portrait Award has become one of the most widely known news photography contests in the world.\r\n\r\n', 300, 30000, 'Potrait', '2022-10-05', '2022-11-05', 'contest_3.jpg', 1, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `card_holder` varchar(100) NOT NULL,
  `card_number` int(100) NOT NULL,
  `exp_date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `order_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `card_holder`, `card_number`, `exp_date`, `address`, `status`, `order_time`) VALUES
(1, 8, 'Shabbir Ahmed', 99887746, '2022-11-26', 'Halishahar, Chittagong', 'approved', '2022-08-30 17:19:59'),
(2, 15, 'Tamim Iqbal', 88643354, '2022-11-04', 'Khulshi, Chittagong', 'unapproved', '2022-09-02 15:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(100) NOT NULL,
  `contest_id` int(100) NOT NULL,
  `seller_id` varchar(100) NOT NULL,
  `seller_name` varchar(100) NOT NULL,
  `image_1` text NOT NULL,
  `image_2` text NOT NULL,
  `image_3` text NOT NULL,
  `desciption` text NOT NULL,
  `submission_time` datetime NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `contest_id`, `seller_id`, `seller_name`, `image_1`, `image_2`, `image_3`, `desciption`, `submission_time`, `status`) VALUES
(1, 1, '1', 'Ryan White', 'part_1_1.jpg', 'part_1_2.jpg', 'part_1_3.jpg', ' Sunsets are instants of intimate and private contemplation. It is a time when we look at each other without mirrors. A sunset tells us what we are and where we should head to. It is a spiritual guide powered by Mother Nature and one that we should never neglect. \r\nDusk teaches us to be better people and choose happiness over wealth, careers, resentment, and lies. Sunsets are also intimately connected with love, life, God, friendship, family, the beach, and the ocean. Sunset is one of the most photographed natural events in the world. The golden hour can be simultaneously shared with the ones we love and care about and lived as a very personal and spiritual occasion. Take a look at some of the most poetic, romantic, motivational, and inspiring quotes about the sunset that have ever been written.', '2022-08-31 13:37:09', 'approved'),
(2, 1, '5', 'Fahmida Eva', 'part_2_1.jpg', 'part_2_2.jpg', 'part_2_3.jpg', ' My companion and I would occasionally just pack our bags and go hiking on a neighboring mountain. We are mindful of taking breaks from technology and engaging in social media detoxes since we work online. For us, it not only helps keep us grounded but also maintains a wonderful balance. We typically hire a tiny cabin with a hammock and spend the entire day reading when we need to detox, or we just travel somewhere on our motorcycles. It is wonderful!', '2022-08-31 17:10:33', 'approved'),
(3, 7, '9', 'Siyam Ul Hoque', 'part_3_1.jpg', 'part_3_2.jpg', 'part_3_3.jpg', 'One of the most common photography styles, portrait photography, or portraiture, aims to capture the personality and mood of an individual or group. Images may be candid or posed full body or close-ups. Either way, the subject’s face, and eyes are typically in focus. Lighting and backdrop help to convey tone and emotion.', '2022-09-02 15:05:54', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `height` int(100) NOT NULL,
  `width` int(100) NOT NULL,
  `format` varchar(100) NOT NULL,
  `tags` text NOT NULL,
  `price` int(100) NOT NULL,
  `image` text NOT NULL,
  `seller_id` int(100) NOT NULL,
  `icode` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `title`, `details`, `height`, `width`, `format`, `tags`, `price`, `image`, `seller_id`, `icode`, `status`) VALUES
(1, 'Clocks', 'A clock or a timepiece is a device used to measure and indicate time. The clock is one of the oldest human inventions, meeting the need to measure intervals of time shorter than the natural units such as the day, the lunar month, and the year. Devices operating on several physical processes have been used over the millennia.', 1280, 1920, 'jpg', 'clock, modern, time, white', 99, 'img1.jpg', 2, 'p101', 'approved'),
(2, 'Plants', 'A clock or a timepiece is a device used to measure and indicate time. The clock is one of the oldest human inventions, meeting the need to measure intervals of time shorter than the natural units such as the day, the lunar month, and the year. Devices operating on several physical processes have been used over the millennia.', 1280, 1920, 'jpg', 'plants, green, nature, white', 110, 'img2.jpg', 1, 'p102', 'approved'),
(3, 'Cloudy Forest', 'A clock or a timepiece is a device used to measure and indicate time. The clock is one of the oldest human inventions, meeting the need to measure intervals of time shorter than the natural units such as the day, the lunar month, and the year. Devices operating on several physical processes have been used over the millennia.', 1280, 1920, 'jpg', 'forest, nature, cloud, blur', 125, 'img3.jpg', 2, 'p103', 'approved'),
(4, 'Statue of Liberty', 'A clock or a timepiece is a device used to measure and indicate time. The clock is one of the oldest human inventions, meeting the need to measure intervals of time shorter than the natural units such as the day, the lunar month, and the year. Devices operating on several physical processes have been used over the millennia.', 1280, 1920, 'jpg', 'statue, architecture, america, country', 99, 'img4.jpg', 3, 'p104', 'approved'),
(7, 'Coffee with Love', 'A coffee lover could be called a coffee aficionado, coffeeholic, or coffee addict. But did you know that there is now a word to describe this group of coffee lovers? The word is javaphile and comes from the slang word java for coffee.\r\nIf you love your coffee then pop into any of our cafés and grab your favorite cup of java!', 1280, 1920, 'JPG', 'coffee, love, lifestyle, food', 100, 'img5.jpg', 9, 'p107', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `experiance` int(100) NOT NULL,
  `image` text NOT NULL,
  `icode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `user_id`, `fullname`, `details`, `category`, `experiance`, `image`, `icode`) VALUES
(1, 2, 'Ryan White', 'Facilitate Sales Sellers proactively greet customers and offer them assistance. By interacting with customers, they identify their interests and needs. Sellers promote products on the sales floor while serving as the front line for all questions and sales opportunities.\r\n', 'Vactional Photography', 8, 'person1.jpg', 's101'),
(2, 5, 'Morshedul Islam', 'Photographers typically do the following: Market or advertise services to attract clients. Analyze and plan the composition of photographs. Use various photographic techniques and lighting equipment. Capture subjects in professional-quality photographs.', 'Wedding and Event Photography', 5, 'person2.jpg', 's102'),
(3, 7, 'Hridoy Islam', 'Photographers typically do the following: Market or advertise services to attract clients. Analyze and plan the composition of photographs. Use various photographic techniques and lighting equipment. Capture subjects in professional-quality photographs.', 'Film and Cinematography', 6, 'person4.jpg', 's103'),
(4, 9, 'Tanveer Sarkar', 'I think cinema, movies, and magic have always been closely associated. The very earliest people who made film were magicians.', 'Film and Cinematography', 3, 'person6.jpg', 's104'),
(5, 10, 'Fahmida Eva', 'Photography is a way of feeling, touching, of loving. What you have caught on film is captured forever... it remembers little things, long after you have forgotten everything.', 'Vactional Photography', 4, 'person3.jpg', 's105'),
(9, 16, 'Siyam Ul Hoque', 'Editorial photography is taken to illustrate a story or article, typically for a magazine or newspaper. The subject of editorial photography can vary widely and is entirely dependent on the topic of the text it accompanies. When working in editorial photography, we are likely to work closely with writers and art directors, and demonstrating good communication skills and professionalism will help we succeed.', 'Editorial Photography', 7, 'person5.jpg', 's109');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `email`, `phone`, `role`, `password`, `status`) VALUES
(1, 'Philepe Mathew', 'admin@admin.com', '01632237649', 'admin', 'admin', 'approved'),
(2, 'Ryan White', 'seller@user.com', '01537437386', 'seller', '1234', 'approved'),
(3, 'customer', 'customer@user.com', '01849237173', 'customer', '1234', 'approved'),
(4, 'Kazi Afrime Ahamed', 'afrimectg@gmail.com', '01752003618', 'customer', 'araf', 'approved'),
(5, 'Morshedul Islam', 'morshed@gmail.com', '01868433361', 'seller', '1234', 'unapproved'),
(6, 'Tanveer Anjum Fahim', 'tanveer@gmail.com', '01816151111', 'customer', '1234', 'unapproved'),
(7, 'Hridoy Islam', 'islam@gmail.com', '01816152222', 'seller', '1234', 'approved'),
(8, 'Shabbir Ahmed', 'shabbir@gmail.com', '01752003619', 'customer', '1234', 'approved'),
(9, 'Tanveer Sarkar', 'sarkar@gmail.com', '01811212121', 'seller', '1234', 'approved'),
(10, 'Fahmida Eva', 'eva@gmail.com', '01816154946', 'seller', '1234', 'approved'),
(11, 'Sakib Ahmed', 'sakib@gmail.com', '01537437386', 'seller', '1234', 'approved'),
(13, 'John Doe', 'jhon@admin.com', '01632237646', 'admin', 'admin', 'approved'),
(14, 'Edwin Diaz', 'edwin@admin.com', '01547437386', 'admin', 'admin', 'approved'),
(15, 'Tamim Iqbal', 'tamim@gmail.com', '01334778877', 'customer', '1234', 'approved'),
(16, 'Siyam Ul Hoque', 'siyam@gmail.com', '01752003619', 'seller', '1234', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
