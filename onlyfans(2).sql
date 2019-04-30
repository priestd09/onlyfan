-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 06:09 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlyfans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_blogs`
--

CREATE TABLE `admin_blogs` (
  `id` int(10) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_content` text,
  `blog_image` varchar(255) DEFAULT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_pages`
--

CREATE TABLE `admin_pages` (
  `id` int(10) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_content` text,
  `page_image` varchar(255) DEFAULT NULL,
  `page_meta_title` varchar(255) DEFAULT NULL,
  `page_meta_keyword` varchar(255) DEFAULT NULL,
  `page_meta_description` varchar(255) DEFAULT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `f_name` varchar(191) DEFAULT NULL,
  `l_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`, `phone`, `user_role`, `remember_token`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Only', 'Fans', 'admin@onlyfans.com', '$2y$10$7k0/RBZpW6zEX7Tm5M2zBO8i501MZO5qa7RF2/Uamj8Wy6lc57fCa', '+9628131721', 1, 'OdICoMvotZsMngZgvCSNAanOjPlx2QgEqdzytkxcBJKLuV7JCYnmOXnZnRmO', '2018-01-21 19:07:50', '2018-07-10 23:05:17', 2),
(2, NULL, NULL, 'johnes_dams@yopmail.com', '$2y$10$TI8zfgCYmAwYn8V6RBxQVuBgXQt3leYPUnaqpQxvOG0pz7f7YhDl2', NULL, 2, 'Sv8jQPSmf3K73nZZYKXdi7lNbW1pcQYgbw00hDbdTSiI5yVQnL1dnUJbI5oD', '2018-07-12 01:31:47', '2018-07-12 01:31:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_address` varchar(255) DEFAULT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_card_details`
--

CREATE TABLE `user_card_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `billing_street` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_zip` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_card_number` varchar(255) DEFAULT NULL,
  `user_expiry_month` int(10) DEFAULT NULL,
  `user_expiry_year` int(10) DEFAULT NULL,
  `user_card_name` varchar(255) DEFAULT NULL,
  `user_cvc_number` int(10) DEFAULT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_follow_following_list`
--

CREATE TABLE `user_follow_following_list` (
  `id` int(10) NOT NULL,
  `follower_user_id` int(10) NOT NULL,
  `following_user_id` int(10) NOT NULL,
  `subscription_id` int(10) NOT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_type` int(10) NOT NULL,
  `post_info` text,
  `post_images` varchar(255) DEFAULT NULL,
  `post_video` varchar(255) DEFAULT NULL,
  `post_audio` varchar(255) DEFAULT NULL,
  `poll_options` text,
  `poll_voting_time` varchar(255) DEFAULT NULL,
  `post_comment_counter` int(10) DEFAULT '0',
  `post_like_counter` int(10) DEFAULT '0',
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_posts_type`
--

CREATE TABLE `user_posts_type` (
  `id` int(10) NOT NULL,
  `posts_types` varchar(255) DEFAULT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comments`
--

CREATE TABLE `user_post_comments` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `comment_content` text,
  `comment_approved` int(10) DEFAULT '0',
  `comment_parent` int(10) DEFAULT NULL,
  `comment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post_like`
--

CREATE TABLE `user_post_like` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post_tipped_list`
--

CREATE TABLE `user_post_tipped_list` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `tipped_amount` int(10) NOT NULL,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `create_at`, `updated_at`) VALUES
(1, 'admin', '2018-01-24 03:14:09', '2018-01-24 09:29:50'),
(2, 'subscriber', '2018-01-24 04:14:08', '2018-01-24 04:08:10'),
(3, 'contributor', '2018-05-07 11:56:32', '2018-05-07 11:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_schdule_post`
--

CREATE TABLE `user_schdule_post` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_type` int(10) NOT NULL,
  `post_info` text,
  `post_images` varchar(255) DEFAULT NULL,
  `post_video` varchar(255) DEFAULT NULL,
  `post_audio` varchar(255) DEFAULT NULL,
  `poll_options` text,
  `poll_voting_time` varchar(255) DEFAULT NULL,
  `post_comment_counter` int(10) DEFAULT '0',
  `post_like_counter` int(10) DEFAULT '0',
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `profile_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_info` text,
  `user_location` varchar(255) DEFAULT NULL,
  `user_website_url` varchar(255) DEFAULT NULL,
  `user_profile_photo` varchar(255) DEFAULT NULL,
  `user_header_photo` varchar(255) DEFAULT NULL,
  `user_private_account` int(10) DEFAULT '0',
  `user_fans_option` int(10) DEFAULT '0',
  `user_subscription_fee` int(10) DEFAULT NULL,
  `subscriber_email_alert` int(10) DEFAULT '0',
  `new_tip_email_alert` int(10) DEFAULT '0',
  `private_message_alert` int(10) DEFAULT '0',
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriber_list`
--

CREATE TABLE `user_subscriber_list` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `subscriber_id` int(10) NOT NULL,
  `subscription_fee` int(10) DEFAULT '0',
  `subscription_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_blogs`
--
ALTER TABLE `admin_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_pages`
--
ALTER TABLE `admin_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role` (`user_role`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_card_details`
--
ALTER TABLE `user_card_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_follow_following_list`
--
ALTER TABLE `user_follow_following_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_user_id` (`follower_user_id`),
  ADD KEY `following_user_id` (`following_user_id`),
  ADD KEY `subscription_id` (`subscription_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `reciever_id` (`reciever_id`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_type` (`post_type`);

--
-- Indexes for table `user_posts_type`
--
ALTER TABLE `user_posts_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_post_comments`
--
ALTER TABLE `user_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_post_like`
--
ALTER TABLE `user_post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_post_tipped_list`
--
ALTER TABLE `user_post_tipped_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_schdule_post`
--
ALTER TABLE `user_schdule_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_type` (`post_type`);

--
-- Indexes for table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_subscriber_list`
--
ALTER TABLE `user_subscriber_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_blogs`
--
ALTER TABLE `admin_blogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_pages`
--
ALTER TABLE `admin_pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_card_details`
--
ALTER TABLE `user_card_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_follow_following_list`
--
ALTER TABLE `user_follow_following_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_posts_type`
--
ALTER TABLE `user_posts_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_post_comments`
--
ALTER TABLE `user_post_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_post_like`
--
ALTER TABLE `user_post_like`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_post_tipped_list`
--
ALTER TABLE `user_post_tipped_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_schdule_post`
--
ALTER TABLE `user_schdule_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_setting`
--
ALTER TABLE `user_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriber_list`
--
ALTER TABLE `user_subscriber_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `user_role` (`id`);

--
-- Constraints for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD CONSTRAINT `user_bank_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_card_details`
--
ALTER TABLE `user_card_details`
  ADD CONSTRAINT `user_card_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_follow_following_list`
--
ALTER TABLE `user_follow_following_list`
  ADD CONSTRAINT `user_follow_following_list_ibfk_1` FOREIGN KEY (`follower_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_follow_following_list_ibfk_2` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_follow_following_list_ibfk_3` FOREIGN KEY (`subscription_id`) REFERENCES `user_subscriber_list` (`id`);

--
-- Constraints for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD CONSTRAINT `user_messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_messages_ibfk_2` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD CONSTRAINT `user_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_posts_ibfk_2` FOREIGN KEY (`post_type`) REFERENCES `user_posts_type` (`id`);

--
-- Constraints for table `user_post_comments`
--
ALTER TABLE `user_post_comments`
  ADD CONSTRAINT `user_post_comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_post_comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`);

--
-- Constraints for table `user_post_like`
--
ALTER TABLE `user_post_like`
  ADD CONSTRAINT `user_post_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_post_like_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`);

--
-- Constraints for table `user_post_tipped_list`
--
ALTER TABLE `user_post_tipped_list`
  ADD CONSTRAINT `user_post_tipped_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_post_tipped_list_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_post_tipped_list_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `user_posts` (`id`);

--
-- Constraints for table `user_schdule_post`
--
ALTER TABLE `user_schdule_post`
  ADD CONSTRAINT `user_schdule_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_schdule_post_ibfk_2` FOREIGN KEY (`post_type`) REFERENCES `user_posts_type` (`id`);

--
-- Constraints for table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `user_setting_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_subscriber_list`
--
ALTER TABLE `user_subscriber_list`
  ADD CONSTRAINT `user_subscriber_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
