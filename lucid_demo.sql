-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2020 at 06:18 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.3.14-6+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucid_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_19_060617_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `is_deleted`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@mailinator.com', '$2y$10$2CDYrQD.j/ruDJIhdGnfaO4ed1Fes1r0YSdQrzaTCnFA3g5V2oxlW', 0, NULL, NULL, '2020-02-19 00:30:12', '2020-02-19 00:30:12'),
(2, 'user', 'gaurav jain', 'gauravjain@boyle.com', '$2y$10$alvuBQQkHcc9.VrEPN0SJeCGcbfb9JFw7rPTbcNQWFYeYAShL5SN2', 1, NULL, NULL, '2020-02-19 02:09:15', '2020-02-19 06:08:19'),
(3, 'user', 'mhauck', 'tianna20@marvin.com', '$2y$10$mI50nvm4tBwBSvxF/RZ/teRhNmlElo2FnOHes8XG6Ldw3Bgvfq3Ni', 1, NULL, NULL, '2020-02-19 02:09:15', '2020-02-19 06:31:36'),
(4, 'user', 'dstroman', 'qortiz@lubowitz.com', '$2y$10$Y39Co.hq7ZUvRcERgROrcOdINV5dm/tvxYe0KuhLjQhGbpHUPoFta', 0, NULL, NULL, '2020-02-19 02:09:15', '2020-02-19 02:09:15'),
(5, 'user', 'camron.raynor', 'mariane.turner@sanford.com', '$2y$10$QjtW78B3q19P0jrFj8yc8uaVvFSqPE6K/yF6HvX0aPXgA5SylxCGu', 0, NULL, NULL, '2020-02-19 02:09:15', '2020-02-19 02:09:15'),
(6, 'user', 'alda.kuhic', 'ziemann.stacey@strosin.com', '$2y$10$jLrao7vCw9h7eeYKLKWBd.S7Mji8pxVm3EWpEKzafpR7qsLILxXN.', 1, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 04:10:14'),
(7, 'user', 'maritza.walter', 'xruecker@leuschke.com', '$2y$10$q1IR9pR5naTrFeTmfXpGdOHoi8p/NxwVOjT4i8vD/VfFWsgdFCQk6', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(8, 'user', 'lconsidine', 'mozelle.monahan@gmail.com', '$2y$10$pMIO9401CeT2wW/zJHd6gO8IgGtN83RBJqjeXyf4WFAKS4uNjtmFq', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(9, 'user', 'jaqueline.mueller', 'fmarvin@simonis.biz', '$2y$10$c2RaxmNMKIOyov6OWdn7o.CZIvxeKPgnY9saEyTj9e4GzdrU9mpH6', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(10, 'user', 'lmayert', 'bettie67@hotmail.com', '$2y$10$z9DfiLLvJqyV2BR7OrWfbecc2RcCrp0PQ31dw2Bl0TPZkfq/KG5JG', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(11, 'user', 'prosacco.lorenzo', 'zhudson@durgan.com', '$2y$10$mSMKFE8LMgOJAStFIKBGy.Gco1IorRg892XBEFwIBzjwkBfeSy7Ae', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(12, 'user', 'lkautzer', 'dashawn41@hotmail.com', '$2y$10$1Zsy5IpcdPikKFmdJyRg9eHyfO7R5OQVNnMXU55RrnXzc5fc3YaCu', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(13, 'user', 'udeckow', 'norval.mclaughlin@gmail.com', '$2y$10$Akh6XU9aD26zkhksPVCfgeRbj90IlhU6OXrSB9yeG9BDOUi/G.8j2', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(14, 'user', 'isai03', 'jshields@mcclure.com', '$2y$10$NSgPbUMZo5CScmkHnuP/kOExzc.re0wdDGeUx7TQc.zD4O3Faq7XS', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(15, 'user', 'arne.runte', 'mcdermott.erik@vonrueden.com', '$2y$10$i5Q/kTSrELwPgXXR8gb7Le2hF5jC9n6EBU1Hin0sOPoHOEBbF7Fm2', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(16, 'user', 'lind.jadon', 'hirthe.maggie@kshlerin.biz', '$2y$10$UeewHhV9KP..Tw7ZfmYK4OeyzM51jLherbCNd4dJxpsFRpH3sMnKS', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(17, 'user', 'bridie.lebsack', 'clinton25@veum.com', '$2y$10$eoaoaimH6EwxWJ6kiD24WepAQG9/YmDtDuh7BL7oM24lbaBJ9hcqi', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(18, 'user', 'crona.rhianna', 'herman68@gmail.com', '$2y$10$BbFIKxmuuWgZ90DsP8O7Y.Xh1JLy6PYqduNFITi1kjcYYeXbpC6mG', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(19, 'user', 'isai18', 'rschowalter@yahoo.com', '$2y$10$8NOYs1wgFQl10mUnpHPOjucOcz279e2duMraurx.ShX.eTflSCTtG', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(20, 'user', 'rogelio.boyle', 'pat51@larkin.com', '$2y$10$rfe6V4pzi1qrVq5EBGN7b.0xJGmAUX/I/2Vzf59mJ04WnahlYjTVe', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(21, 'user', 'coleman.stark', 'lewis.heathcote@yahoo.com', '$2y$10$m/UWmT/m0C/QPqiZ3Xs6Lu/cDg1RlMxVJ.j7mnu8UDZ7HJ7hcCjeK', 0, NULL, NULL, '2020-02-19 02:09:16', '2020-02-19 02:09:16'),
(22, NULL, 'Gaurav jain', 'gauravjain@mailinator.com', '$2y$10$cABDe4S.qRkK6HfKxDtYKOgSGl70ElZF619sJL75nqMHuEvw8CG9W', 0, NULL, NULL, '2020-02-19 06:50:13', '2020-02-19 06:50:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
