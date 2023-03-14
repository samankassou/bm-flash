-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table bmflash. about_us
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.about_us : ~1 rows (environ)
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` (`id`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
	(1, '<h1 style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;">What is e-commerce business?<br></h1><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries but also the on leap into electronic typesetting.</p><ul><li style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;">slim body with metal cover</li><li style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;"> latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li><li style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;"> 8GB DDR4 RAM and fast 512GB PCIe SSD</li><li style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;"> NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard</li><li style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;">hello hello hello prashant sir ?</li></ul>', 'uploads/custom-images/about-us-2022-09-22-04-39-05-2348.png', NULL, '2022-09-20 09:21:31', '2022-11-23 08:05:23');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shipping` int NOT NULL DEFAULT '0',
  `default_billing` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.addresses : ~8 rows (environ)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`) VALUES
	(1, 5, 'a b', 'marohman74@gmail.com', '123355454544', 1, 1, 2, 'ewewee', '1', 1, 1, '2022-09-21 06:45:32', '2022-09-21 06:45:32'),
	(2, 5, 'dsds dsdsd', 'marohman74@gmail.com', '1212121212121', 1, 1, 2, 'sdsdsd', '1', 0, 0, '2022-09-21 06:46:27', '2022-09-21 06:46:27'),
	(3, 6, 'nayeem', 'nayeem@gmail.com', '1234', 4, 7, 10, 'lonon', 'home', 1, 1, '2022-09-21 07:56:14', '2022-09-21 07:56:14'),
	(5, 4, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 2, 4, 8, 'Porro minima consect', '1', 1, 1, '2022-09-21 08:35:41', '2022-09-21 08:35:41'),
	(7, 7, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 2, 4, 8, 'Aliquip accusantium', '1', 1, 1, '2022-09-24 19:41:35', '2022-09-24 19:41:35'),
	(9, 6, 'test', 'test@gmail.com', '12348767', 4, 7, 10, 'test', 'home', 0, 0, '2022-09-25 07:35:37', '2022-09-25 07:35:37'),
	(10, 3, 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 2, 4, 8, 'Nisi odio dolore eiu', '1', 1, 1, '2022-09-26 07:27:35', '2022-09-26 07:27:35'),
	(11, 7, 'fd wqe', 'dfshg@gmail.com', '000000000000', 4, 7, 10, 'dsfhg', '1', 0, 0, '2022-11-21 05:39:22', '2022-11-21 05:39:22');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.admins : ~1 rows (environ)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@gmail.com', 'uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg', NULL, '$2y$10$Gtc/CuE9RTk0HaCVeXyrGeEC/cFW9WXc9tc/EX2PwhRGAn3H9L59S', '9IfjLERRcOYHi3MyubXkyqeLmGtBFqGCG5Ra2DMRg3iCqnKwJLQdmqAvtHut', 1, NULL, NULL, '2022-09-20 09:29:15');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. announcement_modals
CREATE TABLE IF NOT EXISTS `announcement_modals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.announcement_modals : ~1 rows (environ)
/*!40000 ALTER TABLE `announcement_modals` DISABLE KEYS */;
INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `expired_date`, `created_at`, `updated_at`) VALUES
	(1, 1, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-11-19-12-33-21-4518.png', 5, NULL, '2022-11-19 18:33:21');
/*!40000 ALTER TABLE `announcement_modals` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. bank_payments
CREATE TABLE IF NOT EXISTS `bank_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.bank_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `bank_payments` DISABLE KEYS */;
INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2023-03-06 19:32:05');
/*!40000 ALTER TABLE `bank_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. banner_images
CREATE TABLE IF NOT EXISTS `banner_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_product_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.banner_images : ~15 rows (environ)
/*!40000 ALTER TABLE `banner_images` DISABLE KEYS */;
INSERT INTO `banner_images` (`id`, `header`, `title`, `link`, `image`, `banner_location`, `after_product_qty`, `status`, `created_at`, `updated_at`, `title_one`, `title_two`, `badge`, `product_slug`) VALUES
	(13, NULL, NULL, '', 'uploads/website-images/banner-2022-06-13-12-45-14-6950.jpg', 'Login page', 0, 0, NULL, '2022-06-13 07:45:14', NULL, NULL, NULL, NULL),
	(15, NULL, NULL, NULL, 'uploads/website-images/default-avatar-2022-11-18-12-03-30-6530.webp', 'Default Profile Image', 0, 0, NULL, '2022-11-18 06:03:30', NULL, NULL, NULL, NULL),
	(16, NULL, NULL, '#', 'uploads/website-images/Mega-menu-2022-10-27-01-41-46-7345.png', 'Slider First', 0, 1, NULL, '2022-10-30 20:07:42', 'Apple', 'Smart Watch', 'Gaming', 'electronics'),
	(17, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-10-27-01-42-01-1798.png', 'Slider Second', 0, 1, NULL, '2022-10-30 20:07:48', 'Xbox', '5th Version', 'Gaming', 'electronics'),
	(18, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-07-31-12-32-19-7306.jpg', 'Popular category sidebar banner', 0, 1, NULL, '2022-10-30 20:07:53', NULL, NULL, NULL, 'electronics'),
	(19, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-02-7910.png', 'Two Column banner One', 0, 1, NULL, '2022-10-30 20:07:59', 'Beat wireless', 'Headphone', 'HEADSET', 'electronics'),
	(20, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-27-5225.png', 'Two Column Banner two', 0, 1, NULL, '2022-10-30 20:08:04', 'Samsung', 'Smart Watch II', 'SMART WATCH', 'electronics'),
	(21, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-51-3694.png', 'Homepage Single banner one', 0, 1, NULL, '2022-10-30 20:08:09', 'HEADPHONE', 'Get the best deal for Headphones', NULL, 'electronics'),
	(22, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/website-images/Mega-menu-2022-10-27-01-44-06-8672.png', 'Homepage Single banner Two', 0, 1, NULL, '2022-10-30 20:08:18', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
	(23, NULL, NULL, 'https://shopo-ecom.vercel.app/products?category=game', 'uploads/website-images/Mega-menu-2022-10-27-01-44-55-7811.png', 'Megamenu banner', 0, 1, NULL, '2022-10-30 20:08:38', 'SMART WATCH', 'Samsung Smart Watch', NULL, 'electronics'),
	(24, NULL, '#', '#', 'uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png', 'Homepage flash sale sidebar banner', 0, 1, NULL, '2022-09-20 05:59:27', NULL, NULL, NULL, NULL),
	(25, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-44-41-4959.png', 'Shop page center banner', 3, 1, NULL, '2022-10-30 20:08:29', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
	(26, '', '', 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-10-27-01-44-49-1623.png', 'Shop page sidebar banner', 0, 1, NULL, '2022-10-30 20:08:34', 'HEADSET', 'Beat wireless Headphone', NULL, 'electronics'),
	(27, 'Get our latest offer', 'by subscription', '', 'uploads/website-images/banner-2022-09-25-05-12-43-6914.png', 'Subscribe section banner', 0, 1, NULL, '2022-09-25 12:12:43', NULL, NULL, NULL, NULL),
	(28, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg', 'Featured category sidebar banner', 0, 1, NULL, '2022-06-14 06:26:56', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `banner_images` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `show_homepage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.blogs : ~6 rows (environ)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
	(2, 1, 'Business-to-consumer that involves selling fight products and services', 'businesstoconsumer-that-involves-selling-fight-products-and-services', 2, 'uploads/custom-images/blog--2022-09-22-04-09-44-5529.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 26, 'Business-to-consumer that involves selling fight products and services', 'Business-to-consumer that involves selling fight products and services', 1, 1, '2022-09-22 11:09:44', '2023-02-24 21:59:37'),
	(3, 1, 'Top 10 Best Professional Blogging Platforms for 2022', 'top-10-best-professional-blogging-platforms-for-2022', 3, 'uploads/custom-images/blog--2022-09-22-04-12-00-7502.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 22, 'Top 10 Best Professional Blogging Platforms for 2022', 'Top 10 Best Professional Blogging Platforms for 2022', 1, 1, '2022-09-22 11:12:00', '2023-02-24 21:52:17'),
	(4, 1, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6-best-wordpress-ecommerce-plugins-for-online-stores-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-13-57-7380.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 11, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6 Best WordPress E-commerce Plugins for Online Stores in 2022', 1, 1, '2022-09-22 11:13:57', '2022-11-21 01:09:42'),
	(5, 1, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15-best-wordpress-newspaper-themes-to-look-out-for-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-14-55-6716.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 40, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15 Best WordPress Newspaper Themes to Look Out for in 2022', 1, 1, '2022-09-22 11:14:55', '2022-11-02 22:59:00'),
	(6, 1, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'musthave-wordpress-plugins-for-ecommerce-websites-in-2022', 4, 'uploads/custom-images/blog--2022-09-22-04-15-55-3458.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 13, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 1, 0, '2022-09-22 11:15:55', '2022-11-02 22:58:59'),
	(7, 1, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'its-official-the-iphone-14-series-is-on-its-way-rumors-turned-out-to-be-true-the-goods-the-bads', 2, 'uploads/custom-images/blog--2022-09-22-04-18-09-8292.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 21, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 1, 1, '2022-09-22 11:18:09', '2023-02-25 14:10:02');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. blog_categories
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.blog_categories : ~7 rows (environ)
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(2, 'Development', 'development', 1, '2022-09-22 11:05:56', '2022-09-22 11:05:56'),
	(3, 'Guide', 'guide-', 1, '2022-09-22 11:06:06', '2022-09-22 11:06:06'),
	(4, 'Inspiration', 'inspiration-', 1, '2022-09-22 11:06:13', '2022-09-22 11:06:13'),
	(5, 'Latest News', 'latest-news', 1, '2022-09-22 11:06:25', '2022-09-22 11:06:25'),
	(6, 'Revenue', 'revenue-', 1, '2022-09-22 11:06:37', '2022-09-22 11:06:37'),
	(7, 'Start Up', 'start-up', 1, '2022-09-22 11:06:48', '2022-09-22 11:06:48'),
	(8, 'Technology', 'technology', 1, '2022-09-22 11:06:56', '2022-09-22 11:06:56');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. blog_comments
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.blog_comments : ~6 rows (environ)
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
	(1, 5, 'Len Newton', 'fose@mailinator.com', 'Ratione deserunt lab', 0, '2022-09-25 08:43:47', '2022-09-25 08:43:47'),
	(2, 6, 'Lara Mason', 'nicuqovu@mailinator.com', 'Voluptatem facilis v', 0, '2022-09-25 08:45:00', '2022-09-25 08:45:00'),
	(3, 5, 'Abel Spencer', 'sicyxohore@mailinator.com', 'Molestiae totam magn', 0, '2022-09-25 11:22:20', '2022-09-25 11:22:20'),
	(4, 6, 'Hannah Nunez', 'hupymug@mailinator.com', 'Vel ea fugit ad duc', 0, '2022-09-25 12:05:46', '2022-09-25 12:05:46'),
	(5, 2, 'Dara Odom', 'caqo@mailinator.com', 'Ducimus doloremque', 0, '2022-09-25 12:38:22', '2022-09-25 12:38:22'),
	(6, 2, 'Boris David', 'jypiw@mailinator.com', 'Ipsum quam harum co', 0, '2022-09-25 12:39:26', '2022-09-25 12:39:26');
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.brands : ~12 rows (environ)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Oneplus', 'oneplus', 'uploads/custom-images/oneplus-2022-09-25-04-15-53-8330.png', 1, '2022-09-20 08:16:12', '2022-09-25 11:15:53'),
	(2, 'Tencent', 'tencent', 'uploads/custom-images/tencent-2022-09-25-04-16-01-9474.png', 1, '2022-09-20 08:16:24', '2022-09-25 11:16:01'),
	(3, 'Apple', 'apple', 'uploads/custom-images/apple-2022-09-25-04-16-05-2914.png', 1, '2022-09-20 08:16:43', '2022-09-25 11:16:05'),
	(4, 'Mircrosoft', 'mircrosoft', 'uploads/custom-images/mircrosoft-2022-09-25-04-16-10-7094.png', 1, '2022-09-20 08:16:59', '2022-09-25 11:16:10'),
	(5, 'lenovo', 'lenovo', 'uploads/custom-images/lenovo-2022-09-25-04-16-19-9532.png', 1, '2022-09-20 08:17:17', '2022-09-25 11:16:19'),
	(6, 'Huawei', 'huawei', 'uploads/custom-images/huawei-2022-09-25-04-16-23-2134.png', 1, '2022-09-20 08:17:29', '2022-09-25 11:16:23'),
	(7, 'Nexus', 'nexus', 'uploads/custom-images/nexus-2022-09-25-04-16-31-3263.png', 1, '2022-09-20 08:17:44', '2022-09-25 11:16:31'),
	(8, 'Google', 'google', 'uploads/custom-images/google-2022-09-25-04-16-35-5464.png', 1, '2022-09-20 08:17:57', '2022-09-25 11:16:35'),
	(9, 'Firefox', 'firefox', 'uploads/custom-images/firefox-2022-09-25-04-16-43-3374.png', 1, '2022-09-20 08:18:11', '2022-09-25 11:16:43'),
	(10, 'Tesla', 'tesla', 'uploads/custom-images/tesla-2022-09-25-04-16-47-6997.png', 1, '2022-09-20 08:18:29', '2022-09-25 11:16:47'),
	(11, 'Brave', 'brave', 'uploads/custom-images/brave-2022-09-25-04-16-55-9281.png', 1, '2022-09-20 08:19:01', '2022-09-25 11:16:55'),
	(12, 'Facebook', 'facebook', 'uploads/custom-images/facebook-2022-09-25-04-17-01-2209.png', 1, '2022-09-20 08:19:14', '2022-09-25 11:17:01');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. breadcrumb_images
CREATE TABLE IF NOT EXISTS `breadcrumb_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.breadcrumb_images : ~11 rows (environ)
/*!40000 ALTER TABLE `breadcrumb_images` DISABLE KEYS */;
INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 10:19:03'),
	(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 10:19:16'),
	(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 10:19:28'),
	(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 10:19:40'),
	(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 10:19:53'),
	(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 10:20:04'),
	(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 10:20:18'),
	(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 10:20:30'),
	(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 10:20:41'),
	(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 10:20:54'),
	(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 10:21:06');
/*!40000 ALTER TABLE `breadcrumb_images` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.categories : ~11 rows (environ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `image`, `cover`, `created_at`, `updated_at`) VALUES
	(1, 'Electronics', 'electronics', 'fas fa-anchor', 1, 'uploads/custom-images/electronics-2023-02-27-08-05-24-3936.jpg', 'uploads/custom-images/cuserssamappdatalocaltempphp13etmp-2023-02-27-08-07-28-5259.jpg', '2022-09-20 06:16:25', '2023-02-27 20:07:28'),
	(2, 'Game', 'game', 'fas fa-gamepad', 1, 'uploads/custom-images/game-2022-11-19-02-48-48-6382.png', 'uploads/custom-images/cuserssamappdatalocaltempphp68d3tmp-2023-02-27-08-05-44-3682.jpg', '2022-09-20 06:16:50', '2023-02-27 20:05:44'),
	(3, 'Mobile', 'mobile', 'fas fa-mobile-alt', 1, 'uploads/custom-images/mobile-2022-11-19-02-49-20-2538.png', 'uploads/custom-images/cuserssamappdatalocaltempphpd138tmp-2023-02-27-08-08-22-1022.jpg', '2022-09-20 06:17:43', '2023-02-27 20:08:22'),
	(4, 'Lifestyle', 'lifestyle', 'fas fa-home', 1, 'uploads/custom-images/lifestyle-2022-11-19-02-49-38-3139.png', 'uploads/custom-images/cuserssamappdatalocaltempphpd76btmp-2023-02-27-08-04-01-6288.jpg', '2022-09-20 06:24:47', '2023-02-27 20:04:01'),
	(5, 'Babies & Toys', 'babies-toys', 'fas fa-basketball-ball', 1, 'uploads/custom-images/babies-toys-2022-11-19-02-50-00-3811.png', 'uploads/custom-images/cuserssamappdatalocaltempphpd931tmp-2023-02-27-08-06-12-5919.jpg', '2022-09-20 06:26:13', '2023-02-27 20:06:13'),
	(6, 'Bike', 'bike', 'fas fa-bicycle', 1, 'uploads/custom-images/bike-2022-11-19-02-50-18-4648.png', 'uploads/custom-images/cuserssamappdatalocaltempphp2a02tmp-2023-02-27-08-06-33-7375.jpg', '2022-09-20 06:28:22', '2023-02-27 20:06:33'),
	(7, 'Men\'s Fasion', 'mens-fasion', 'fas fa-street-view', 1, 'uploads/custom-images/mens-fasion-2022-11-19-02-50-39-5203.png', 'uploads/custom-images/cuserssamappdatalocaltempphpc472tmp-2023-02-27-08-10-29-4192.jpg', '2022-09-20 06:35:28', '2023-02-27 20:10:29'),
	(8, 'Woman Fashion', 'woman-fashion', 'fab fa-android', 1, 'uploads/custom-images/womans-fasion-2022-11-19-02-52-58-2850.png', 'uploads/custom-images/cuserssamappdatalocaltempphp8bftmp-2023-02-27-08-10-47-6960.jpg', '2022-09-20 06:38:38', '2023-02-27 20:10:47'),
	(9, 'Talevision', 'talevision', 'fas fa-adjust', 1, 'uploads/custom-images/talevision-2023-02-27-08-11-09-9516.jpg', 'uploads/custom-images/cuserssamappdatalocaltempphp5f1etmp-2023-02-27-08-11-09-1733.jpg', '2022-09-20 07:04:03', '2023-02-27 20:11:09'),
	(10, 'Accessories', 'accessories', 'fas fa-cogs', 1, 'uploads/custom-images/accessories-2023-02-27-08-04-26-6608.jpg', 'uploads/custom-images/cuserssamappdatalocaltempphp3905tmp-2023-02-27-08-04-26-1069.jpg', '2022-09-20 07:05:41', '2023-02-27 20:04:26'),
	(11, 'John Doe', 'john-doe', 'fas fa-adjust', 1, 'uploads/custom-images/john-doe-2022-11-17-12-00-23-1751.jpg', 'uploads/custom-images/cuserssamappdatalocaltempphp9b3ftmp-2023-02-27-08-12-30-5233.jpg', '2022-11-17 06:54:49', '2023-02-27 20:12:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. child_categories
CREATE TABLE IF NOT EXISTS `child_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.child_categories : ~6 rows (environ)
/*!40000 ALTER TABLE `child_categories` DISABLE KEYS */;
INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 'LG', 'lg', 1, '2022-09-20 07:02:47', '2022-11-22 18:01:10'),
	(2, 1, 2, 'HP', 'hp', 0, '2022-09-20 07:03:17', '2022-11-22 18:01:11'),
	(3, 2, 5, 'PlayStation 4', 'playstation-4', 0, '2022-09-20 08:13:18', '2022-11-22 18:01:12'),
	(4, 2, 5, 'PlayStation 5', 'playstation-5', 0, '2022-09-20 08:13:29', '2022-11-22 18:01:12'),
	(5, 1, 1, 'Samsung', 'samsung', 0, '2022-09-20 08:13:41', '2022-11-22 18:01:13'),
	(6, 1, 1, 'Apple', 'apple', 1, '2022-09-20 08:13:51', '2022-09-20 08:13:51');
/*!40000 ALTER TABLE `child_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_state_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.cities : ~11 rows (environ)
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Florida City', 'florida-city', 0, '2022-01-30 10:29:19', '2023-03-06 18:47:32'),
	(2, 1, 'Los Angeles', 'los-angeles', 0, '2022-01-30 10:29:29', '2023-03-06 18:47:33'),
	(4, 2, 'Tallahassee', 'tallahassee', 0, '2022-02-06 05:18:49', '2023-03-06 18:47:36'),
	(5, 2, 'Weston', 'weston', 0, '2022-02-06 05:19:56', '2023-03-06 18:47:37'),
	(6, 1, 'San Jose', 'san-jose', 0, '2022-02-06 05:21:08', '2023-03-06 18:47:39'),
	(7, 1, 'San Diego', 'san-diego', 0, '2022-02-06 05:21:26', '2023-03-06 18:47:40'),
	(8, 4, 'Gandhinagar', 'gandhinagar', 0, '2022-02-06 05:22:21', '2023-03-06 18:47:40'),
	(9, 5, 'Chandigarh', 'chandigarh', 0, '2022-02-06 05:22:44', '2023-03-06 18:47:41'),
	(10, 7, 'London', 'london', 0, '2022-02-06 05:23:12', '2023-03-06 18:47:43'),
	(11, 7, 'Liverpool', 'liverpool', 0, '2022-02-06 05:23:29', '2023-03-06 18:47:43'),
	(12, 10, 'Douala', 'douala', 1, '2023-02-27 18:32:31', '2023-02-27 18:32:31');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. compare_products
CREATE TABLE IF NOT EXISTS `compare_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.compare_products : ~2 rows (environ)
/*!40000 ALTER TABLE `compare_products` DISABLE KEYS */;
INSERT INTO `compare_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(17, 7, 37, '2022-10-27 10:42:54', '2022-10-27 10:42:54'),
	(18, 7, 4, '2022-11-21 13:25:03', '2022-11-21 13:25:03');
/*!40000 ALTER TABLE `compare_products` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. contact_messages
CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.contact_messages : ~3 rows (environ)
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
	(1, 'sdafdsf', 'asdfsdf', NULL, 'send me your purchase code .  and then send me your admin access', 'asdfsdf', '2022-09-23 07:01:33', '2022-09-23 07:01:33'),
	(2, 'Ibrahim Khalil', 'agent@gmail.com', NULL, 'Subscribe Verification', 'tst', '2022-10-29 18:55:18', '2022-10-29 18:55:18'),
	(3, 'John Doe', 'user@gmail.com', NULL, 'Subscribe Verification', 'test', '2022-10-29 20:07:00', '2022-10-29 20:07:00');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. contact_pages
CREATE TABLE IF NOT EXISTS `contact_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.contact_pages : ~1 rows (environ)
/*!40000 ALTER TABLE `contact_pages` DISABLE KEYS */;
INSERT INTO `contact_pages` (`id`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
	(1, 'Contact Information', 'Fill the form below or write us .We will help you as soon as possible.', 'contact@bm-tracking.com', 'Douala Bessengue rue des pavés, Cameroun', '+237 680 76 66 93', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.94539481518!2d-74.26675559025064!3d40.69739290398433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1656755618576!5m2!1sen!2sbd', '2022-09-22 12:08:24', '2023-02-03 21:06:23');
/*!40000 ALTER TABLE `contact_pages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. cookie_consents
CREATE TABLE IF NOT EXISTS `cookie_consents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '1',
  `border` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.cookie_consents : ~1 rows (environ)
/*!40000 ALTER TABLE `cookie_consents` DISABLE KEYS */;
INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
	(1, 1, 'thin', 'normal', '#184dec', '#fafafa', '#0a58d6', '#fffceb', '#222758', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'More Info', 'Yes', NULL, NULL, '2022-02-13 09:06:04');
/*!40000 ALTER TABLE `cookie_consents` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.countries : ~6 rows (environ)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'United State', 'united-state', 0, '2022-01-30 10:28:28', '2023-03-06 18:46:57'),
	(2, 'India', 'india', 0, '2022-01-30 10:28:39', '2023-03-06 18:46:58'),
	(4, 'United Kindom', 'united-kindom', 0, '2022-02-06 05:11:51', '2023-03-06 18:47:01'),
	(5, 'Australia', 'australia', 0, '2022-02-06 05:12:36', '2023-03-06 18:47:02'),
	(10, 'Bangladesh', 'bangladesh', 0, '2022-09-22 06:46:54', '2023-03-06 18:47:04'),
	(11, 'Cameroon', 'cameroon', 1, '2023-02-27 18:31:16', '2023-02-27 18:31:16');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. country_states
CREATE TABLE IF NOT EXISTS `country_states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.country_states : ~10 rows (environ)
/*!40000 ALTER TABLE `country_states` DISABLE KEYS */;
INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'California', 'california', 0, '2022-01-30 10:29:00', '2023-03-06 18:47:13'),
	(2, 1, 'Florida', 'florida', 0, '2022-01-30 10:29:07', '2023-03-06 18:47:14'),
	(3, 1, 'Alaska', 'alaska', 0, '2022-02-05 08:49:14', '2023-03-06 18:47:15'),
	(4, 2, 'Gujarat', 'gujarat', 0, '2022-02-06 05:16:27', '2023-03-06 18:47:16'),
	(5, 2, 'Punjab', 'punjab', 0, '2022-02-06 05:16:39', '2023-03-06 18:47:17'),
	(6, 2, 'Rajasthan', 'rajasthan', 0, '2022-02-06 05:16:48', '2023-03-06 18:47:19'),
	(7, 4, 'England', 'england', 0, '2022-02-06 05:17:35', '2023-03-06 18:47:21'),
	(8, 4, 'Scotland', 'scotland', 0, '2022-02-06 05:17:44', '2023-03-06 18:47:23'),
	(9, 4, 'Wales', 'wales', 0, '2022-02-06 05:17:53', '2023-03-06 18:47:24'),
	(10, 11, 'Douala', 'douala', 1, '2023-02-27 18:31:59', '2023-02-27 18:31:59');
/*!40000 ALTER TABLE `country_states` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `min_purchase_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.coupons : ~1 rows (environ)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` (`id`, `name`, `code`, `offer_type`, `discount`, `max_quantity`, `min_purchase_price`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Happy New Year', 'newyear', 1, 10, 100, '200', '2025-12-10', 2, 1, '2022-11-16 03:18:50', '2022-11-22 19:03:11');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table bmflash.currencies : ~164 rows (environ)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. currency_countries
CREATE TABLE IF NOT EXISTS `currency_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- Listage des données de la table bmflash.currency_countries : ~249 rows (environ)
/*!40000 ALTER TABLE `currency_countries` DISABLE KEYS */;
INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currency_countries` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. custom_pages
CREATE TABLE IF NOT EXISTS `custom_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.custom_pages : ~1 rows (environ)
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'kibatu', 'kibatu', '<p>beeyi nsaamu saamu bjajdbjas fdn ajsfbasf</p>', 1, '2022-11-20 23:43:08', '2022-11-23 08:06:28');
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. custom_paginations
CREATE TABLE IF NOT EXISTS `custom_paginations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.custom_paginations : ~6 rows (environ)
/*!40000 ALTER TABLE `custom_paginations` DISABLE KEYS */;
INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 'Blog Page', 4, NULL, '2022-11-18 03:19:18'),
	(2, 'Product Page', 12, NULL, '2022-11-18 03:22:39'),
	(3, 'Brand Page', 10, NULL, '2022-06-11 12:13:13'),
	(4, 'Blog Comment', 4, NULL, '2022-06-11 12:13:13'),
	(5, 'Product Review', 8, NULL, '2022-06-11 12:13:13'),
	(6, 'Seller page', 8, NULL, '2022-06-11 12:13:13');
/*!40000 ALTER TABLE `custom_paginations` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. email_configurations
CREATE TABLE IF NOT EXISTS `email_configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.email_configurations : ~1 rows (environ)
/*!40000 ALTER TABLE `email_configurations` DISABLE KEYS */;
INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
	(1, 2, 'wwwmi3-ts14.a2hosting.com', '587', 'demo@websolutionus.com', 'demo@websolutionus.com', 'ThreeStar21', 'tls', NULL, '2022-10-29 18:15:35');
/*!40000 ALTER TABLE `email_configurations` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. email_templates
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.email_templates : ~7 rows (environ)
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>', NULL, '2022-06-11 11:43:01'),
	(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style="background-color: transparent;">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-11 00:44:34'),
	(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>', NULL, '2021-12-11 00:44:53'),
	(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>', NULL, '2021-12-11 00:45:25'),
	(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 04:24:45'),
	(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 22:37:03'),
	(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style="background-color: transparent;">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 09:59:34');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. error_pages
CREATE TABLE IF NOT EXISTS `error_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.error_pages : ~3 rows (environ)
/*!40000 ALTER TABLE `error_pages` DISABLE KEYS */;
INSERT INTO `error_pages` (`id`, `page_name`, `image`, `header`, `button_text`, `created_at`, `updated_at`) VALUES
	(1, '404 page', '404.jpg', 'test header', 'Go to Home', NULL, '2022-09-20 09:24:13'),
	(2, '500 Error', '500.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 10:46:52'),
	(3, '505 Error', '505.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 10:46:57');
/*!40000 ALTER TABLE `error_pages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. facebook_comments
CREATE TABLE IF NOT EXISTS `facebook_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.facebook_comments : ~1 rows (environ)
/*!40000 ALTER TABLE `facebook_comments` DISABLE KEYS */;
INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
	(1, 'test', 1, NULL, '2022-06-11 12:07:29');
/*!40000 ALTER TABLE `facebook_comments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. facebook_pixels
CREATE TABLE IF NOT EXISTS `facebook_pixels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.facebook_pixels : ~1 rows (environ)
/*!40000 ALTER TABLE `facebook_pixels` DISABLE KEYS */;
INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 'fsdf45sdf4sdf', NULL, '2022-06-11 12:17:42');
/*!40000 ALTER TABLE `facebook_pixels` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.faqs : ~4 rows (environ)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
	(2, 'how to download wordpress', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;"><span style="margin: 0px; padding: 0px;">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown&nbsp;</p><br style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">', 1, '2022-09-22 14:27:39', '2022-09-22 14:27:39'),
	(3, 'how to download elementor', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 14:28:08', '2022-09-22 14:28:08'),
	(4, 'how to download app', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 14:28:20', '2022-09-22 14:28:20'),
	(5, 'how to download IOS app', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 14:28:36', '2022-09-22 14:28:36');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. featured_categories
CREATE TABLE IF NOT EXISTS `featured_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.featured_categories : ~2 rows (environ)
/*!40000 ALTER TABLE `featured_categories` DISABLE KEYS */;
INSERT INTO `featured_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 10, '2022-09-21 09:43:30', '2022-09-21 09:43:30'),
	(2, 4, '2022-09-21 09:43:37', '2022-09-21 09:43:37');
/*!40000 ALTER TABLE `featured_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. flash_sales
CREATE TABLE IF NOT EXISTS `flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flashsale_page_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.flash_sales : ~1 rows (environ)
/*!40000 ALTER TABLE `flash_sales` DISABLE KEYS */;
INSERT INTO `flash_sales` (`id`, `title`, `homepage_image`, `flashsale_page_image`, `end_time`, `offer`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'WOO! Flash Sale', 'uploads/website-images/flash_sale--2022-09-25-04-09-21-6554.png', 'uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png', '2023-03-04 20:31:00', 10, 1, NULL, '2023-02-03 20:31:29');
/*!40000 ALTER TABLE `flash_sales` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. flash_sale_products
CREATE TABLE IF NOT EXISTS `flash_sale_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.flash_sale_products : ~7 rows (environ)
/*!40000 ALTER TABLE `flash_sale_products` DISABLE KEYS */;
INSERT INTO `flash_sale_products` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-09-20 09:02:41', '2022-09-20 09:02:41'),
	(2, 2, 1, '2022-09-20 09:02:45', '2022-09-20 09:02:45'),
	(3, 3, 1, '2022-09-20 09:02:48', '2022-11-22 23:13:00'),
	(4, 4, 1, '2022-09-20 09:02:52', '2022-09-20 09:02:52'),
	(5, 8, 1, '2022-09-20 09:02:56', '2022-09-20 09:02:56'),
	(6, 9, 1, '2022-09-20 09:03:01', '2022-09-20 09:03:01'),
	(7, 11, 1, '2022-09-20 09:03:05', '2022-09-20 09:03:05');
/*!40000 ALTER TABLE `flash_sale_products` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. flutterwaves
CREATE TABLE IF NOT EXISTS `flutterwaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.flutterwaves : ~1 rows (environ)
/*!40000 ALTER TABLE `flutterwaves` DISABLE KEYS */;
INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 1, 'CM', 'XAF', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 1, NULL, '2023-03-06 18:57:04');
/*!40000 ALTER TABLE `flutterwaves` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. footers
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_us` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.footers : ~1 rows (environ)
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` (`id`, `about_us`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `payment_image`, `created_at`, `updated_at`) VALUES
	(1, 'We know there are a lot of threa developers our but we pride into a firm in the industry.', '+237 6 80 76 66 93', 'contact@bm-tracking.com', '2PW6+PHV, Douala', 'Feature', 'General Links', 'Helpful', 'Copyright 2023 BM-Tracking, All Right Reserved', 'uploads/website-images/payment-card-2022-09-26-12-59-29-8933.png', NULL, '2023-02-03 20:38:12');
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. footer_links
CREATE TABLE IF NOT EXISTS `footer_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.footer_links : ~9 rows (environ)
/*!40000 ALTER TABLE `footer_links` DISABLE KEYS */;
INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
	(1, '1', '/about', 'About Us', '2022-09-20 09:19:02', '2022-11-18 00:48:53'),
	(2, '1', '/terms-condition', 'Terms Condition', '2022-09-20 09:19:15', '2022-11-18 00:48:57'),
	(3, '1', '/products?highlight=best_product', 'Best Products', '2022-09-20 09:19:24', '2022-11-18 00:50:38'),
	(4, '2', '/blogs', 'Blog', '2022-09-20 09:19:38', '2022-11-18 00:49:16'),
	(5, '2', '/sellers', 'shop', '2022-09-20 09:19:46', '2022-11-18 00:49:24'),
	(6, '2', '/faq', 'Support', '2022-09-20 09:19:52', '2022-11-18 00:49:30'),
	(7, '3', '/about', 'About Us', '2022-09-20 09:20:05', '2022-11-18 00:49:38'),
	(8, '3', '/products?highlight=popular_category', 'Popular Category', '2022-09-20 09:20:11', '2022-11-18 00:49:48'),
	(9, '3', '/contact', 'Contact Us', '2022-09-20 09:20:19', '2022-11-18 00:49:56');
/*!40000 ALTER TABLE `footer_links` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. footer_social_links
CREATE TABLE IF NOT EXISTS `footer_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.footer_social_links : ~3 rows (environ)
/*!40000 ALTER TABLE `footer_social_links` DISABLE KEYS */;
INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'https://www.facebook.com/', 'fab fa-facebook-f', '2022-09-20 09:18:12', '2022-09-20 09:18:12'),
	(2, 'https://twitter.com/mexuv', 'fab fa-twitter', '2022-09-20 09:18:29', '2022-09-28 05:35:50'),
	(3, 'https://linkedin.com/', 'fab fa-linkedin', '2022-09-20 09:18:43', '2022-09-20 09:18:43');
/*!40000 ALTER TABLE `footer_social_links` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. google_analytics
CREATE TABLE IF NOT EXISTS `google_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `analytic_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.google_analytics : ~1 rows (environ)
/*!40000 ALTER TABLE `google_analytics` DISABLE KEYS */;
INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, '5248-fd-5fds', 1, NULL, '2022-06-11 12:10:27');
/*!40000 ALTER TABLE `google_analytics` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. google_recaptchas
CREATE TABLE IF NOT EXISTS `google_recaptchas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.google_recaptchas : ~1 rows (environ)
/*!40000 ALTER TABLE `google_recaptchas` DISABLE KEYS */;
INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'test', 'test', 0, NULL, '2023-03-06 18:30:12');
/*!40000 ALTER TABLE `google_recaptchas` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. home_page_one_visibilities
CREATE TABLE IF NOT EXISTS `home_page_one_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `default_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `qty` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.home_page_one_visibilities : ~9 rows (environ)
/*!40000 ALTER TABLE `home_page_one_visibilities` DISABLE KEYS */;
INSERT INTO `home_page_one_visibilities` (`id`, `default_name`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 'Slider', 'Slider', 1, 6, NULL, '2022-06-14 07:30:37'),
	(2, 'Our Service', 'Our Service', 1, 6, NULL, '2022-06-14 07:29:47'),
	(4, 'Popular Category', 'Popular Categories', 1, 24, NULL, '2022-06-14 07:29:47'),
	(5, 'Brand', 'Our Brand', 1, 12, NULL, '2022-06-14 07:29:47'),
	(6, 'Top Rated Product', 'Top Rated Product', 1, 16, NULL, '2022-06-14 07:29:47'),
	(7, 'Best Seller', 'Best Sellers', 1, 8, NULL, '2022-06-14 07:29:47'),
	(8, 'Featured Product', 'Featured Products', 1, 15, NULL, '2022-06-14 07:29:47'),
	(9, 'New Arrival', 'New Arrival', 1, 19, NULL, '2022-06-14 07:29:47'),
	(10, 'Best Product', 'Best Product', 1, 16, NULL, '2022-06-14 07:29:47');
/*!40000 ALTER TABLE `home_page_one_visibilities` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. instamojo_payments
CREATE TABLE IF NOT EXISTS `instamojo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.instamojo_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `instamojo_payments` DISABLE KEYS */;
INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 0, NULL, '2023-03-06 19:32:16');
/*!40000 ALTER TABLE `instamojo_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. maintainance_texts
CREATE TABLE IF NOT EXISTS `maintainance_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.maintainance_texts : ~1 rows (environ)
/*!40000 ALTER TABLE `maintainance_texts` DISABLE KEYS */;
INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
	(1, 0, 'uploads/website-images/maintainance-mode-2022-09-20-02-13-54-5890.png', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', NULL, '2022-09-20 09:44:39');
/*!40000 ALTER TABLE `maintainance_texts` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. mega_menu_categories
CREATE TABLE IF NOT EXISTS `mega_menu_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.mega_menu_categories : ~3 rows (environ)
/*!40000 ALTER TABLE `mega_menu_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, '2022-09-20 08:06:01', '2022-11-22 08:49:52'),
	(2, 2, 1, 2, '2022-09-20 08:07:39', '2022-09-20 08:07:39'),
	(3, 10, 1, 3, '2022-09-20 08:11:07', '2022-09-20 08:11:07');
/*!40000 ALTER TABLE `mega_menu_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. mega_menu_sub_categories
CREATE TABLE IF NOT EXISTS `mega_menu_sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mega_menu_category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.mega_menu_sub_categories : ~9 rows (environ)
/*!40000 ALTER TABLE `mega_menu_sub_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 1, '2022-09-20 08:06:23', '2022-09-20 08:06:23'),
	(2, 1, 2, 1, 2, '2022-09-20 08:06:34', '2022-09-20 08:06:34'),
	(3, 1, 3, 1, 3, '2022-09-20 08:06:47', '2022-09-20 08:06:47'),
	(4, 2, 4, 1, 1, '2022-09-20 08:10:04', '2022-09-20 08:10:04'),
	(5, 2, 5, 1, 2, '2022-09-20 08:10:18', '2022-09-20 08:10:18'),
	(6, 2, 6, 1, 3, '2022-09-20 08:10:29', '2022-09-20 08:10:29'),
	(7, 3, 7, 1, 1, '2022-09-20 08:12:13', '2022-09-20 08:12:13'),
	(8, 3, 8, 1, 2, '2022-09-20 08:12:22', '2022-09-20 08:12:22'),
	(9, 3, 9, 1, 3, '2022-09-20 08:12:29', '2022-09-20 08:12:29');
/*!40000 ALTER TABLE `mega_menu_sub_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. menu_visibilities
CREATE TABLE IF NOT EXISTS `menu_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.menu_visibilities : ~25 rows (environ)
/*!40000 ALTER TABLE `menu_visibilities` DISABLE KEYS */;
INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Home', 1, NULL, '2022-01-23 21:05:32'),
	(2, 'Shop', 1, NULL, '2022-01-23 21:05:31'),
	(3, 'Mega Menu', 1, NULL, '2022-01-16 21:51:23'),
	(4, 'Sellers', 1, NULL, '2022-01-16 21:52:31'),
	(5, 'Blog', 1, NULL, '2022-01-16 21:52:32'),
	(6, 'Campaign', 1, NULL, '2022-01-16 21:52:33'),
	(7, 'Pages', 1, NULL, '2022-01-16 21:52:34'),
	(8, 'About us', 1, NULL, '2022-01-16 21:57:27'),
	(9, 'Contact Us', 1, NULL, '2022-01-16 21:57:28'),
	(10, 'Checkout', 1, NULL, '2022-01-16 21:57:29'),
	(11, 'Brand', 1, NULL, '2022-01-16 21:57:25'),
	(12, 'FAQ', 1, NULL, '2022-01-16 21:57:26'),
	(13, 'Privacy Policy', 1, NULL, '2022-01-16 21:57:23'),
	(14, 'Terms and Conditions', 1, NULL, '2022-01-16 21:57:22'),
	(15, 'Track Order', 1, NULL, '2022-01-16 21:52:29'),
	(16, 'Flash Deal', 1, NULL, '2022-01-16 21:52:28'),
	(17, 'My Account', 1, NULL, '2022-01-16 21:04:54'),
	(18, 'Login/Register', 1, NULL, '2022-01-16 21:04:47'),
	(19, 'Shopping Cart', 1, NULL, '2022-01-16 21:09:28'),
	(20, 'Compare', 1, NULL, '2022-01-16 21:37:54'),
	(21, 'Wishlist', 1, NULL, '2022-01-16 21:37:55'),
	(22, 'Topbar Phone', 1, NULL, '2022-01-16 21:02:07'),
	(23, 'Menu Phone', 1, NULL, '2022-01-16 21:08:00'),
	(24, 'Categories', 1, NULL, '2022-01-17 00:52:39'),
	(25, 'Search', 1, NULL, '2022-01-16 21:37:56');
/*!40000 ALTER TABLE `menu_visibilities` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_read_msg` int NOT NULL DEFAULT '0',
  `seller_read_msg` int NOT NULL,
  `send_customer` int NOT NULL DEFAULT '0',
  `send_seller` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.messages : ~0 rows (environ)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.migrations : ~101 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_11_30_035230_create_admins_table', 2),
	(6, '2021_11_30_065435_create_email_configurations_table', 3),
	(7, '2021_11_30_065508_create_email_templates_table', 3),
	(8, '2021_12_01_035206_create_categories_table', 4),
	(9, '2021_12_01_035220_create_sub_categories_table', 4),
	(10, '2021_12_01_035231_create_child_categories_table', 4),
	(11, '2021_12_01_035735_create_brands_table', 4),
	(12, '2021_12_02_055907_create_product_taxes_table', 5),
	(13, '2021_12_02_083742_create_return_policies_table', 6),
	(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
	(15, '2021_12_03_093645_create_products_table', 7),
	(16, '2021_12_03_101949_create_product_galleries_table', 7),
	(17, '2021_12_04_053018_create_product_specifications_table', 8),
	(18, '2021_12_06_045447_create_services_table', 9),
	(19, '2021_12_06_054423_create_about_us_table', 10),
	(20, '2021_12_06_055028_create_custom_pages_table', 10),
	(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
	(22, '2021_12_07_035810_create_blog_categories_table', 12),
	(23, '2021_12_07_035822_create_blogs_table', 12),
	(24, '2021_12_07_040749_create_popular_posts_table', 12),
	(25, '2021_12_07_061613_create_blog_comments_table', 13),
	(26, '2021_12_07_081832_create_product_variants_table', 14),
	(27, '2021_12_07_081858_create_product_variant_items_table', 14),
	(28, '2021_12_08_125540_create_campaigns_table', 15),
	(29, '2021_12_08_130025_create_campaign_products_table', 15),
	(30, '2021_12_09_095158_create_contact_messages_table', 16),
	(31, '2021_12_09_095220_create_subscribers_table', 16),
	(32, '2021_12_09_124226_create_settings_table', 17),
	(33, '2021_12_11_022207_create_cookie_consents_table', 18),
	(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
	(35, '2021_12_11_025449_create_facebook_comments_table', 19),
	(36, '2021_12_11_025556_create_tawk_chats_table', 19),
	(37, '2021_12_11_025618_create_google_analytics_table', 19),
	(38, '2021_12_11_025712_create_custom_paginations_table', 19),
	(39, '2021_12_11_083503_create_faqs_table', 20),
	(40, '2021_12_11_094707_create_currencies_table', 21),
	(41, '2021_12_13_085612_create_product_reviews_table', 22),
	(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
	(43, '2021_12_13_101056_create_error_pages_table', 23),
	(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
	(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
	(46, '2021_12_13_111140_create_announcement_modals_table', 26),
	(47, '2021_12_13_132626_create_countries_table', 27),
	(48, '2021_12_13_132909_create_country_states_table', 27),
	(49, '2021_12_13_132935_create_cities_table', 27),
	(50, '2021_12_14_032937_create_social_login_information_table', 28),
	(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
	(52, '2021_12_14_054908_create_paypal_payments_table', 30),
	(53, '2021_12_14_054922_create_stripe_payments_table', 30),
	(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
	(55, '2021_12_14_055252_create_bank_payments_table', 30),
	(56, '2021_12_14_084759_create_vendors_table', 31),
	(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
	(58, '2021_12_15_095059_create_wholesells_table', 32),
	(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
	(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
	(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
	(62, '2021_12_22_034106_create_banner_images_table', 35),
	(63, '2021_12_22_044839_create_sliders_table', 36),
	(64, '2021_12_22_081311_create_popular_categories_table', 37),
	(65, '2021_12_23_021844_create_three_column_categories_table', 38),
	(66, '2021_12_23_033230_create_shipping_methods_table', 39),
	(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
	(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
	(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
	(74, '2021_12_25_200413_create_product_reports_table', 43),
	(75, '2021_12_25_200707_create_product_report_images_table', 44),
	(79, '2021_12_26_052326_create_billing_addresses_table', 45),
	(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
	(81, '2021_12_26_054841_create_orders_table', 45),
	(82, '2021_12_26_164912_create_order_addresses_table', 45),
	(83, '2021_12_26_165705_create_order_products_table', 45),
	(84, '2021_12_26_170803_create_order_product_variants_table', 45),
	(87, '2021_12_28_163200_create_coupons_table', 46),
	(88, '2021_12_28_192057_create_contact_pages_table', 47),
	(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
	(90, '2021_12_30_032959_create_flutterwaves_table', 49),
	(91, '2021_12_30_034716_create_footers_table', 50),
	(92, '2021_12_30_035201_create_footer_links_table', 50),
	(93, '2021_12_30_035247_create_footer_social_links_table', 50),
	(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
	(96, '2022_01_11_103950_create_wishlists_table', 52),
	(97, '2022_01_12_070110_create_shop_pages_table', 53),
	(99, '2022_01_12_080218_create_seo_settings_table', 54),
	(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
	(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
	(102, '2022_01_29_055523_create_messages_table', 57),
	(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
	(104, '2022_04_27_083907_create_shopping_carts_table', 59),
	(105, '2022_04_27_084235_create_shopping_cart_variants_table', 59),
	(106, '2022_06_11_095338_create_testimonials_table', 60),
	(107, '2022_06_13_053409_create_flash_sales_table', 61),
	(108, '2022_06_13_053644_create_flash_sale_products_table', 62),
	(109, '2022_06_14_102451_create_shippings_table', 63),
	(112, '2022_06_19_073137_create_addresses_table', 64),
	(113, '2022_06_19_093939_create_compare_products_table', 65),
	(114, '2022_07_27_101723_create_featured_categories_table', 66);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int NOT NULL DEFAULT '0',
  `payment_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `coupon_coast` double NOT NULL DEFAULT '0',
  `order_status` int NOT NULL DEFAULT '0',
  `order_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivered_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_completed_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_declined_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` int NOT NULL DEFAULT '0',
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.orders : ~48 rows (environ)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_amount`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `transection_id`, `shipping_method`, `shipping_cost`, `coupon_coast`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `cash_on_delivery`, `additional_info`, `created_at`, `updated_at`) VALUES
	(1, '477710734', 5, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, '2022-09-21', '2022-09-21', '2022-09-21', NULL, 1, NULL, '2022-09-21 06:49:58', '2022-09-21 06:52:48'),
	(2, '77398553', 4, 11, 1, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 08:35:53', '2022-09-21 13:03:41'),
	(3, '1001561796', 4, 1401.75, 12, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 08:38:18', '2022-09-21 09:24:40'),
	(4, '88552801', 5, 77, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 2, '2022-09-21', '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 09:23:42', '2022-09-21 09:25:04'),
	(5, '392080209', 6, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-09-21', NULL, 1, NULL, '2022-09-21 11:10:09', '2022-09-21 13:03:35'),
	(6, '1056209451', 6, 11, 1, 'Mollie', 1, NULL, 'tr_TJe8rF9e7s', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-21 11:20:41', '2022-09-21 11:20:41'),
	(7, '342810636', 6, 11, 1, 'Mollie', 1, NULL, 'tr_Gf2sJkauNw', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-21 11:26:15', '2022-09-21 11:26:15'),
	(8, '1312138593', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 15:38:01', '2022-09-21 15:38:01'),
	(9, '409338365', 5, 155.99, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(10, '287219193', 6, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 17:04:14', '2022-09-21 17:04:14'),
	(11, '1407165165', 5, 910.1, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-22 05:20:00', '2022-09-22 05:20:00'),
	(13, '135791419', 5, 100.99, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 1, '2022-09-25', NULL, NULL, NULL, 1, NULL, '2022-09-23 18:11:58', '2022-09-25 13:22:45'),
	(15, '393840544', 7, 9.99, 1, 'Paypal', 1, NULL, 'PAYID-MMXU62A00B560099X7604116', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-24 19:41:59', '2022-09-24 19:41:59'),
	(16, '1341414190', 7, 11, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-09-25', NULL, 1, NULL, '2022-09-25 07:34:28', '2022-09-25 13:21:47'),
	(19, '134354270', 5, 80000, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 07:17:07', '2022-09-26 07:17:07'),
	(20, '1440255744', 3, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 07:27:39', '2022-09-26 07:27:39'),
	(21, '1581228571', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 08:49:46', '2022-09-26 08:49:46'),
	(22, '435181413', 5, 40000, 1, 'Bank Payment', 0, NULL, 'bbj', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 08:50:48', '2022-09-26 08:50:48'),
	(24, '1353531553', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 09:25:32', '2022-09-26 09:25:32'),
	(25, '1044150415', 7, 150000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 12:17:16', '2022-09-26 12:17:16'),
	(26, '1155733181', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 16:29:08', '2022-09-26 16:29:08'),
	(27, '111453302', 5, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 16:35:47', '2022-09-26 16:35:47'),
	(28, '650118582', 5, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 17:28:11', '2022-09-26 17:28:11'),
	(29, '745308887', 5, 1807.19, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 18:49:52', '2022-09-26 18:49:52'),
	(30, '1235533632', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 19:19:41', '2022-09-26 19:19:41'),
	(32, '1357194261', 7, 399, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 08:50:40', '2022-09-27 08:50:40'),
	(33, '1352443855', 5, 40399, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(34, '1135470081', 5, 15000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 12:19:43', '2022-09-27 12:19:43'),
	(35, '438531317', 5, 1798.2, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 12:20:35', '2022-09-27 12:20:35'),
	(36, '738884584', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-27 09:34:55', '2022-10-27 09:34:55'),
	(37, '397979847', 7, 152.98, 3, 'Razorpay', 1, NULL, 'pay_Ka2aadbx8P721z', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-10-31 02:58:22', '2022-10-31 02:58:22'),
	(38, '71828055', 7, 119.88, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'Product Price (1-2000)', 20, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-18 03:38:09', '2022-11-18 03:38:09'),
	(39, '495427852', 7, 5142.99, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-18 03:57:54', '2022-11-18 03:57:54'),
	(40, '872635658', 7, 292.38, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(41, '130710951', 7, 196.51, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(42, '536812268', 7, 29.97, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-19 16:42:13', '2022-11-19 16:42:13'),
	(43, '1374134335', 7, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-19 17:18:48', '2022-11-19 17:18:48'),
	(44, '1158316140', 7, 650, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-11-21', NULL, NULL, 1, NULL, '2022-11-19 20:23:58', '2022-11-22 02:28:29'),
	(48, '1095386190', 7, 40069.39, 3, 'Cash on Delivery', 1, '2022-11-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-11-21', NULL, 1, NULL, '2022-11-22 05:04:55', '2022-11-22 05:10:34'),
	(49, '162987227', 7, 59.4, 1, 'Bank Payment', 1, '2022-11-22', '111', 'free shipping', 0, 0, 2, NULL, '2022-11-22', NULL, NULL, 1, NULL, '2022-11-22 08:57:25', '2022-11-22 09:02:44'),
	(50, '512380995', 7, 190989.09, 4, 'Cash on Delivery', 1, '2022-11-22', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-11-22', NULL, NULL, 1, NULL, '2022-11-22 14:44:38', '2022-11-22 18:46:04'),
	(51, '716396875', 7, 50748.99, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(52, '1590037188', 7, 665.99, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 73.9991, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-22 18:57:34', '2022-11-22 18:57:34'),
	(53, '1480944286', 7, 585, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 65, 1, '2022-11-22', NULL, NULL, NULL, 1, NULL, '2022-11-22 19:03:11', '2022-11-23 02:48:14'),
	(54, '797788908', 7, 5009.99, 2, 'Bank Payment', 1, '2022-11-22', '://://://://://://://://://://://://://://://://://://://://://://', 'free shipping', 0, 0, 3, NULL, NULL, '2022-11-22', NULL, 1, NULL, '2022-11-22 20:11:12', '2022-11-22 23:11:49'),
	(57, '188686703', 7, 650, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-23 13:40:58', '2022-11-23 13:40:58'),
	(58, '1467830839', 7, 40000, 1, 'Cash on Delivery', 1, '2022-11-23', 'cash_on_delivery', 'free shipping', 0, 0, 3, '2022-11-23', NULL, '2022-11-23', NULL, 1, NULL, '2022-11-23 15:29:13', '2022-11-23 15:32:21'),
	(59, '1329871717', 7, 51800, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-23 18:11:45', '2022-11-23 18:11:45');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. order_addresses
CREATE TABLE IF NOT EXISTS `order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `billing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.order_addresses : ~48 rows (environ)
/*!40000 ALTER TABLE `order_addresses` DISABLE KEYS */;
INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_address_type`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_address_type`, `created_at`, `updated_at`) VALUES
	(1, 1, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 06:49:58', '2022-09-21 06:49:58'),
	(2, 2, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-21 08:35:53', '2022-09-21 08:35:53'),
	(3, 3, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(4, 4, 'dsds dsdsd', 'marohman74@gmail.com', '1212121212121', 'sdsdsd', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 09:23:42', '2022-09-21 09:23:42'),
	(5, 5, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 11:10:09', '2022-09-21 11:10:09'),
	(6, 6, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 11:20:41', '2022-09-21 11:20:41'),
	(7, 7, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 11:26:15', '2022-09-21 11:26:15'),
	(8, 8, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 15:38:01', '2022-09-21 15:38:01'),
	(9, 9, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(10, 10, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 17:04:14', '2022-09-21 17:04:14'),
	(11, 11, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-22 05:20:00', '2022-09-22 05:20:00'),
	(13, 13, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-23 18:11:58', '2022-09-23 18:11:58'),
	(15, 15, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-24 19:41:59', '2022-09-24 19:41:59'),
	(16, 16, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-25 07:34:28', '2022-09-25 07:34:28'),
	(19, 19, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 07:17:07', '2022-09-26 07:17:07'),
	(20, 20, 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 'Nisi odio dolore eiu', 'India', 'Gujarat', 'Gandhinagar', '1', 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 'Nisi odio dolore eiu', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 07:27:39', '2022-09-26 07:27:39'),
	(21, 21, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 08:49:46', '2022-09-26 08:49:46'),
	(22, 22, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 08:50:48', '2022-09-26 08:50:48'),
	(24, 24, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 09:25:32', '2022-09-26 09:25:32'),
	(25, 25, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 12:17:16', '2022-09-26 12:17:16'),
	(26, 26, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 16:29:08', '2022-09-26 16:29:08'),
	(27, 27, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 16:35:47', '2022-09-26 16:35:47'),
	(28, 28, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 17:28:11', '2022-09-26 17:28:11'),
	(29, 29, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 18:49:52', '2022-09-26 18:49:52'),
	(30, 30, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 19:19:41', '2022-09-26 19:19:41'),
	(32, 32, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-27 08:50:40', '2022-09-27 08:50:40'),
	(33, 33, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(34, 34, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 12:19:43', '2022-09-27 12:19:43'),
	(35, 35, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 12:20:35', '2022-09-27 12:20:35'),
	(36, 36, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-10-27 09:34:55', '2022-10-27 09:34:55'),
	(37, 37, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-10-31 02:58:22', '2022-10-31 02:58:22'),
	(38, 38, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-18 03:38:09', '2022-11-18 03:38:09'),
	(39, 39, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-18 03:57:54', '2022-11-18 03:57:54'),
	(40, 40, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(41, 41, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(42, 42, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-19 16:42:13', '2022-11-19 16:42:13'),
	(43, 43, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-19 17:18:48', '2022-11-19 17:18:48'),
	(44, 44, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-19 20:23:58', '2022-11-19 20:23:58'),
	(48, 48, 'fd wqe', 'dfshg@gmail.com', '000000000000', 'dsfhg', 'United Kind', 'England', 'London', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 05:04:55', '2022-11-22 05:04:55'),
	(49, 49, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 08:57:25', '2022-11-22 08:57:25'),
	(50, 50, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 14:44:38', '2022-11-22 14:44:38'),
	(51, 51, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(52, 52, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 18:57:34', '2022-11-22 18:57:34'),
	(53, 53, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 19:03:11', '2022-11-22 19:03:11'),
	(54, 54, 'fd wqe', 'dfshg@gmail.com', '000000000000', 'dsfhg', 'United Kind', 'England', 'London', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-22 20:11:12', '2022-11-22 20:11:12'),
	(57, 57, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-23 13:40:58', '2022-11-23 13:40:58'),
	(58, 58, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-23 15:29:13', '2022-11-23 15:29:13'),
	(59, 59, 'fd wqe', 'dfshg@gmail.com', '000000000000', 'dsfhg', 'United Kind', 'England', 'London', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-11-23 18:11:45', '2022-11-23 18:11:45');
/*!40000 ALTER TABLE `order_addresses` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. order_products
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.order_products : ~96 rows (environ)
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 1, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 06:49:58', '2022-09-21 06:49:58'),
	(2, 2, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 08:35:53', '2022-09-21 08:35:53'),
	(3, 3, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(4, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(5, 3, 11, 0, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 26.1, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(6, 3, 10, 0, 'PlayStation 4', 99.88, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(7, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(8, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(9, 3, 9, 0, 'Wireless Headphones and Earbuds', 10.791, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(10, 3, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(11, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(12, 3, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(13, 3, 3, 0, 'Sony Play Staton 5', 61.101, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(14, 3, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-21 08:38:18', '2022-09-21 08:38:18'),
	(15, 4, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 7, '2022-09-21 09:23:42', '2022-09-21 09:23:42'),
	(16, 5, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 11:10:09', '2022-09-21 11:10:09'),
	(17, 6, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 11:20:41', '2022-09-21 11:20:41'),
	(18, 7, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 11:26:15', '2022-09-21 11:26:15'),
	(19, 8, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-21 15:38:01', '2022-09-21 15:38:01'),
	(20, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 3, '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(21, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(22, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(23, 9, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 15:57:18', '2022-09-21 15:57:18'),
	(24, 10, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-21 17:04:14', '2022-09-21 17:04:14'),
	(25, 11, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-22 05:20:00', '2022-09-22 05:20:00'),
	(26, 11, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-22 05:20:00', '2022-09-22 05:20:00'),
	(28, 13, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-23 18:11:58', '2022-09-23 18:11:58'),
	(29, 13, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-23 18:11:58', '2022-09-23 18:11:58'),
	(31, 15, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-24 19:41:59', '2022-09-24 19:41:59'),
	(32, 16, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-25 07:34:28', '2022-09-25 07:34:28'),
	(35, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:17:07', '2022-09-26 07:17:07'),
	(36, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:17:07', '2022-09-26 07:17:07'),
	(37, 20, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 07:27:39', '2022-09-26 07:27:39'),
	(38, 21, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 08:49:46', '2022-09-26 08:49:46'),
	(39, 22, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 08:50:48', '2022-09-26 08:50:48'),
	(41, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 09:25:32', '2022-09-26 09:25:32'),
	(42, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 09:25:32', '2022-09-26 09:25:32'),
	(43, 25, 34, 4, 'Apple air 2022', 150000, 1, '2022-09-26 12:17:16', '2022-09-26 12:17:16'),
	(44, 26, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 16:29:08', '2022-09-26 16:29:08'),
	(45, 27, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-26 16:35:47', '2022-09-26 16:35:47'),
	(46, 28, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 17:28:11', '2022-09-26 17:28:11'),
	(47, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 18:49:52', '2022-09-26 18:49:52'),
	(48, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 18:49:52', '2022-09-26 18:49:52'),
	(49, 29, 8, 0, 'AirPods Pro 2', 8.991, 1, '2022-09-26 18:49:52', '2022-09-26 18:49:52'),
	(50, 30, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 19:19:41', '2022-09-26 19:19:41'),
	(52, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 08:50:40', '2022-09-27 08:50:40'),
	(53, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 08:50:40', '2022-09-27 08:50:40'),
	(54, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 08:50:40', '2022-09-27 08:50:40'),
	(55, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(56, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(57, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(58, 33, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-27 11:33:32', '2022-09-27 11:33:32'),
	(59, 34, 36, 6, 'Sony joystick SJ pro', 5000, 3, '2022-09-27 12:19:43', '2022-09-27 12:19:43'),
	(60, 35, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 2, '2022-09-27 12:20:35', '2022-09-27 12:20:35'),
	(61, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 09:34:55', '2022-10-27 09:34:55'),
	(62, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 09:34:55', '2022-10-27 09:34:55'),
	(63, 37, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-10-31 02:58:22', '2022-10-31 02:58:22'),
	(64, 37, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-10-31 02:58:22', '2022-10-31 02:58:22'),
	(65, 37, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-10-31 02:58:22', '2022-10-31 02:58:22'),
	(66, 38, 10, 0, 'PlayStation 4', 99.88, 1, '2022-11-18 03:38:09', '2022-11-18 03:38:09'),
	(67, 39, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 03:57:54', '2022-11-18 03:57:54'),
	(68, 39, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-11-18 03:57:54', '2022-11-18 03:57:54'),
	(69, 39, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-18 03:57:54', '2022-11-18 03:57:54'),
	(70, 40, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(71, 40, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(72, 40, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(73, 40, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-18 04:24:20', '2022-11-18 04:24:20'),
	(74, 41, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(75, 41, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(76, 41, 3, 0, 'Sony Play Staton 5', 61.101, 1, '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(77, 41, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2022-11-18 04:34:27', '2022-11-18 04:34:27'),
	(78, 42, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 3, '2022-11-19 16:42:13', '2022-11-19 16:42:13'),
	(79, 43, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-19 17:18:48', '2022-11-19 17:18:48'),
	(80, 44, 30, 2, 'JBL headphon max', 650, 1, '2022-11-19 20:23:58', '2022-11-19 20:23:58'),
	(99, 48, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-22 05:04:55', '2022-11-22 05:04:55'),
	(100, 48, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-22 05:04:55', '2022-11-22 05:04:55'),
	(101, 48, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-22 05:04:55', '2022-11-22 05:04:55'),
	(102, 49, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-22 08:57:25', '2022-11-22 08:57:25'),
	(103, 50, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 14:44:38', '2022-11-22 14:44:38'),
	(104, 50, 34, 4, 'Apple air 2022', 150000, 1, '2022-11-22 14:44:38', '2022-11-22 14:44:38'),
	(105, 50, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-11-22 14:44:38', '2022-11-22 14:44:38'),
	(106, 50, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-22 14:44:38', '2022-11-22 14:44:38'),
	(107, 51, 26, 1, 'Mi Laptop pro', 45000, 1, '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(108, 51, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(109, 51, 32, 3, 'Realme mini music', 659, 1, '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(110, 51, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 18:56:39', '2022-11-22 18:56:39'),
	(111, 52, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 18:57:34', '2022-11-22 18:57:34'),
	(112, 52, 30, 2, 'JBL headphon max', 650, 1, '2022-11-22 18:57:34', '2022-11-22 18:57:34'),
	(113, 53, 30, 2, 'JBL headphon max', 650, 1, '2022-11-22 19:03:11', '2022-11-22 19:03:11'),
	(114, 54, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-22 20:11:12', '2022-11-22 20:11:12'),
	(115, 54, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-22 20:11:12', '2022-11-22 20:11:12'),
	(119, 57, 30, 2, 'JBL headphon max', 650, 1, '2022-11-23 13:40:58', '2022-11-23 13:40:58'),
	(120, 58, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-23 15:29:13', '2022-11-23 15:29:13'),
	(121, 59, 26, 1, 'Mi Laptop pro', 45000, 1, '2022-11-23 18:11:45', '2022-11-23 18:11:45'),
	(122, 59, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-23 18:11:45', '2022-11-23 18:11:45'),
	(123, 59, 31, 3, 'Sony joystick v1', 900, 2, '2022-11-23 18:11:45', '2022-11-23 18:11:45');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. order_product_variants
CREATE TABLE IF NOT EXISTS `order_product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.order_product_variants : ~0 rows (environ)
/*!40000 ALTER TABLE `order_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_variants` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. paymongo_payments
CREATE TABLE IF NOT EXISTS `paymongo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.paymongo_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `paymongo_payments` DISABLE KEYS */;
INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 11:06:24');
/*!40000 ALTER TABLE `paymongo_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. paypal_payments
CREATE TABLE IF NOT EXISTS `paypal_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.paypal_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
	(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-02-07 03:29:44');
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. paystack_and_mollies
CREATE TABLE IF NOT EXISTS `paystack_and_mollies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mollie_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_status` int NOT NULL DEFAULT '0',
  `mollie_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.paystack_and_mollies : ~1 rows (environ)
/*!40000 ALTER TABLE `paystack_and_mollies` DISABLE KEYS */;
INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`) VALUES
	(1, 'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q', 0, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 0, 'CA', 'CAD', 'NG', 'NGN', NULL, '2023-03-06 19:11:07');
/*!40000 ALTER TABLE `paystack_and_mollies` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.personal_access_tokens : ~0 rows (environ)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. popular_categories
CREATE TABLE IF NOT EXISTS `popular_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.popular_categories : ~3 rows (environ)
/*!40000 ALTER TABLE `popular_categories` DISABLE KEYS */;
INSERT INTO `popular_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 3, '2022-09-20 08:14:58', '2022-09-20 08:14:58'),
	(2, 1, '2022-09-20 08:15:05', '2022-09-20 08:15:05'),
	(3, 2, '2022-09-20 08:15:11', '2022-09-20 08:15:11');
/*!40000 ALTER TABLE `popular_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. popular_posts
CREATE TABLE IF NOT EXISTS `popular_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.popular_posts : ~4 rows (environ)
/*!40000 ALTER TABLE `popular_posts` DISABLE KEYS */;
INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2022-09-22 11:19:05', '2022-09-22 11:19:05'),
	(2, 5, 1, '2022-09-22 11:19:08', '2022-09-22 11:19:08'),
	(3, 4, 1, '2022-09-22 11:19:10', '2022-09-22 11:19:10'),
	(4, 3, 1, '2022-09-22 11:19:22', '2022-09-22 11:19:22');
/*!40000 ALTER TABLE `popular_posts` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL DEFAULT '0',
  `child_category_id` int NOT NULL DEFAULT '0',
  `brand_id` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sold_qty` int NOT NULL DEFAULT '0',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_homepage` tinyint NOT NULL DEFAULT '0',
  `is_undefine` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `new_product` tinyint NOT NULL DEFAULT '0',
  `is_top` tinyint NOT NULL DEFAULT '0',
  `is_vip` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_specification` int NOT NULL DEFAULT '1',
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.products : ~36 rows (environ)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_vip`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
	(1, 'Xbox Wireless Game Controller', 'Controller', 'xbox-wireless-game-controller-', 'uploads/custom-images/xbox-wireless-game-controller-2022-09-26-12-20-19-1096.png', 0, 3, 0, 0, 4, 100, '222', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop12345', 'Xbox Wireless Controller', 'Xbox Wireless Controller', 123, 99.99, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, '2022-09-20 08:22:29', '2022-11-22 18:57:34'),
	(2, 'FANTECH OCTANE Headset', 'Headset', 'fantech-octane-headset', 'uploads/custom-images/fantech-octane-headset-2022-09-26-12-53-57-7709.png', 0, 2, 4, 0, 0, 230, '133', 0, 'The FANTECH HG23 OCTANE Price in BD is 2,700‡ß≥ in Today\'s 2022-09-19 Market. This FANTECH HG23 OCTANE 7.1 Over Ear Gaming Headset Manufacturing by FANTECH Comes With Based on 0 reviews.TECH LAND BD Offers you Fantech HG23 OCTANE by 2,700‡ß≥ and its regular price is 3,200‡ß≥ Which is also In Stock Now at our Showroom. Follow us on FACEBOOK For Regular updates & Offer. Subscribe Our YOUTUBE Channel for Product Reviews.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234566', 'FANTECH HG23 OCTANE Headset', 'FANTECH HG23 OCTANE Headset', 88, 66, NULL, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, '2022-09-20 08:32:02', '2022-11-22 08:57:25'),
	(3, 'Sony Play Staton 5', 'Playstation', 'sony-play-staton-5', 'uploads/custom-images/sony-play-staton-5-2022-09-26-12-20-52-2324.png', 0, 2, 5, 0, 3, 42, '133', 0, 'Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop123451', 'Sony Play Staton 5', 'Sony Play Staton 5', 88.88, 67.89, NULL, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, '2022-09-20 08:33:46', '2022-11-18 04:34:27'),
	(4, 'Apple MacBook Air 13.3-Inch Retina', 'MacBook', 'apple-macbook-air-133inch-retina', 'uploads/custom-images/apple-macbook-air-133-inch-retina-2022-09-26-12-21-18-4277.png', 0, 1, 2, 2, 3, 27, '133', 0, 'Apple\'s thinnest, lightest notebook, was completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go. It√¢‚Ç¨‚Ñ¢s here. Our first chip was designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O,', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234515', 'Apple MacBook Air 13.3-Inch Retina', 'Apple MacBook Air 13.3-Inch Retina', 1111, 999, NULL, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, '2022-09-20 08:37:26', '2022-11-22 14:44:38'),
	(5, 'VISION Rice Cooker', 'Rice Cooker', 'vision-rice-cooker', 'uploads/custom-images/vision-rice-cooker-2022-09-26-12-48-28-5516.png', 0, 10, 0, 0, 5, 31, '234', 0, '"Inner Pot: Aluminum inner pot 920g with inner side coating. (Single pot) Power: Drum shaped, 5.6L Ltr. 220V- 50Hz, 1900W Stainless steel lid with plastic handle Magnetic Switch and Thermostat\r\nMS Body and thickness 0.28mm Built-in thermostat maintains heat at a precise and uniform level 19000 W power which is very much enough for cooking rice in 25-30 min\r\nHeating element with coating for easy cleaning and Anti-dirty 1.2mm Actual Non-stick Coating Inner pot, Base Board- Silver Antibacterial action in warm mode\r\nColor: As given picture."', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop123456633', 'VISION Rice Cooker', 'VISION Rice Cooker', 99.88, 35.43, NULL, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 08:42:50', '2022-11-18 04:34:27'),
	(6, 'VISION ELITE CEILING FAN', 'FAN', 'vision-elite-ceiling-fan', 'uploads/custom-images/vision-elite-ceiling-fan-2022-09-26-12-29-33-2795.png', 0, 10, 0, 0, 2, 19, '21', 0, 'Cool, portable, and waterproof. The vibrant fresh looking JBL Clip 4 delivers surprisingly rich JBL Original Pro Sound in a compact package. The unique oval shape fits easy in your hand. Fully wrapped in colorful fabrics with expressive details inspired by current street fashion, its easy to match your style. The fully integrated carabiner hooks instantly to bags, belts, or buckles, to bring your favorite tunes anywhere. Waterproof, dustproof, and up to 10 hours of playtime, its rugged enough to tag along wherever you explore.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234512', 'VISION ELITE CEILING FAN', 'VISION ELITE CEILING FAN', 11.11, 9.99, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, '2022-09-20 08:44:22', '2022-11-22 02:27:44'),
	(7, 'Samsung Galaxy A52 (8/128 GB)', 'Galaxy A52', 'samsung-galaxy-a52-8128-gb', 'uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-09-26-12-12-12-9319.png', 0, 3, 0, 0, 4, 20, '33', 0, 'Feast your eyes on vibrant details with the FHD+ Super AMOLED display, reaching 800 nits¹ for clarity even in bright daylight. Eye Comfort Shield² lowers blue light, and Real Smooth keeps the view smooth, whether you\'re gaming or scrolling. All on the expansive 6.5-inch Infinity-O Display. Galaxy A52 seen from the front. A scene of a man standing on a beach at sunset with pink and blue colors in the sky expands outside of the boundaries of the display. Text says Brightness 800 nits, Eye Comfort Shield, with the SGS logo and Real Smooth.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><br>', NULL, 'bigshop12993452', 'Samsung Galaxy A52 (8/128 GB)', 'Samsung Galaxy A52 (8/128 GB)', 11.11, 9.99, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 08:46:26', '2022-11-22 22:20:02'),
	(8, 'AirPods Pro 2', 'AirPods', 'airpods-pro-2', 'uploads/custom-images/airpods-pro-2-2022-09-26-12-46-05-8429.png', 0, 1, 0, 0, 0, 43, '12', 0, 'Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">&nbsp;</span><br></p>', NULL, 'bigshop12345133', 'AirPods Pro 2', 'AirPods Pro 2', 11.11, 9.99, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, '2022-09-20 08:49:30', '2022-11-21 02:11:43'),
	(9, 'Wireless Headphones and Earbuds', 'Headphones', 'wireless-headphones-and-earbuds-', 'uploads/custom-images/wireless-headphones-and-earbuds-2022-09-26-12-29-52-9668.png', 0, 4, 0, 0, 0, 32, '55', 0, 'Testing conducted by Apple in April 2021 using pre-production Beats Studio Buds and charging case units and software paired with iPhone 11 Pro Max units and pre-release software. The playlist consisted of 358 unique audio tracks purchased from the iTunes Store (256 Kbps AAC encoding). Volume was set to 50% and Active Noise Cancelling and Transparency were turned off. Testing consisted of full Beats Studio Buds battery discharge while playing audio until the first Beats Studio Buds stopped playback. With Active Noise Cancelling turned on, listening time was up to 5 hours. Battery life depends on device settings, environment, usage and many other factors.', '<p id="footnote-2" class="pdp-sml-body" style="background: 0px 0px; border: 0px none; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; hyphens: manual; font-feature-settings: &quot;kern&quot;; border-radius: 0px; line-height: 1.5;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">&nbsp;</span><br></p>', NULL, 'bigshop1234522', 'Wireless Headphones and Earbuds', 'Wireless Headphones and Earbuds', 33, 11.99, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, '2022-09-20 08:56:37', '2022-09-26 07:29:53'),
	(10, 'PlayStation 4', 'PS console', 'playstation-4', 'uploads/custom-images/playstation-4-2022-09-26-12-43-50-4261.png', 0, 4, 0, 0, 4, 20, '123', 0, 'Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else. Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else.', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;&nbsp;</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;">&nbsp;</span><br></p>', NULL, 'bigshop123456622', 'PlayStation 4', 'PlayStation 4', 123, 99.88, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 08:58:06', '2022-11-18 03:38:09'),
	(11, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'Bluetooth', 'jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg', 'uploads/custom-images/jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg-2022-09-26-12-42-09-8912.png', 0, 4, 0, 0, 1, 44, '44', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', NULL, 'bigshop123456611', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 333, NULL, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 08:59:33', '2022-09-26 07:42:09'),
	(12, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'Smartwatch', 'kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/custom-images/kospet-tank-t1-mil-std-rugged-waterproof-smartwatch-2022-09-26-12-43-45-6665.png', 0, 4, 0, 0, 0, 53, '44', 0, 'The KOSPET TANK T1 is a MIL-STD Rugged Smartwatch ready for adventure. It is an innovative smartwatch that features a 1.32-inch TFT IPS (360*360) Full Touch screen with a protective cover glass padded. It is equipped with a RealTek8762DK CPU and 64KB RAM + 128M ROM. The smartwatch features Bluetooth 5.0 connectivity and it is compatible with Android 5.1 & IOS 10.0 and above. The KOSPET TANK T1 is powered by a 350mAh Polymer battery and it can offer a long battery life.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&nbsp;</p><br>', NULL, 'bigshop123456655', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 37, NULL, NULL, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, '2022-09-20 09:00:33', '2022-09-26 07:43:45'),
	(13, 'JBL Clip 4 Orange Portable Speaker', 'Speaker', 'jbl-clip-4-orange-portable-speaker', 'uploads/custom-images/jbl-clip-4-orange-portable-speaker-2022-09-27-03-24-27-9922.png', 0, 3, 0, 0, 5, 0, '33', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, 'bigshop12345133', 'JBL Clip 4 Orange Portable Speaker', 'JBL Clip 4 Orange Portable Speaker', 133, NULL, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, '2022-09-20 09:01:55', '2023-02-28 19:16:44'),
	(14, 'Appple macbook pro 2020', 'Apple macbook', 'appple-macbook-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-21-03-15-03-6666.png', 1, 1, 0, 0, 3, 10, 'Dolor ut corporis do', 0, 'Excepteur alias est', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'Enim numquam possimu', 'Id minus at blanditi', 'Nesciunt illo quisq', 120000, 100000, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 10:15:03', '2022-09-21 10:34:11'),
	(15, 'Sony mini sound box', 'Sony sound', 'sony-mini-sound-box', 'uploads/custom-images/sony-mini-sound-box-2022-09-21-03-16-48-7639.png', 1, 1, 0, 0, 1, 10, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '25536', 'Sony mini sound box', 'Sony mini sound box', 500, 450, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 10:16:48', '2022-09-21 10:34:11'),
	(16, 'Mi Laptop pro', 'Mi Lapotop', 'mi-laptop-pro', 'uploads/custom-images/mi-laptop-pro-2022-09-21-03-18-52-8009.png', 1, 1, 2, 0, 0, 458, '89', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '4545ouj', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 41000, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 10:18:52', '2022-09-21 10:34:12'),
	(17, 'JBL sound box water proof', 'JBL sound', 'jbl-sound-box-water-proof', 'uploads/custom-images/jbl-sound-box-water-proof-2022-09-21-03-20-10-4755.png', 1, 4, 0, 0, 0, 78, '15', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'colorful-cloths', 'JBL sound box water proof', 'JBL sound box water proof', 1200, 1000, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 10:20:10', '2022-09-21 10:34:12'),
	(18, 'Sony joystick SJ pro', 'Sony joystick', 'sony-joystick-sj-pro', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-21-03-25-19-2532.png', 1, 1, 0, 0, 0, 589, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '255po', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 2000, 1200, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, '2022-09-21 10:25:19', '2022-09-21 10:34:13'),
	(19, 'Gopor cam v1 pro', 'Gopro cam', 'gopor-cam-v1-pro', 'uploads/custom-images/gopor-cam-v1-pro-2022-09-21-03-26-33-7496.png', 1, 1, 3, 0, 0, 478, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'loiu45', 'Gopor cam v1 pro', 'Gopor cam v1 pro', 30000, 25000, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, '2022-09-21 10:26:33', '2022-09-21 10:34:14'),
	(20, 'HP playstation 11', 'Hp playstation', 'hp-playstation-11', 'uploads/custom-images/hp-playstation-11-2022-09-21-03-28-49-9507.png', 1, 1, 1, 0, 0, 45, '452', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'lki12', 'HP playstation 11', 'HP playstation 11', 10000, 8000, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, '2022-09-21 10:28:49', '2022-09-21 10:34:16'),
	(21, 'Realme speaker 2 prod', 'Realme speaker', 'realme-speaker-2-prod', 'uploads/custom-images/realme-speaker-2-prod-2022-09-21-03-31-19-6994.png', 1, 4, 0, 0, 0, 15, '2', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '14]poi', 'Realme speaker 2 prod', 'Realme speaker 2 prod', 1200, 1100, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, '2022-09-21 10:31:20', '2022-09-21 10:34:16'),
	(22, 'Xioami Joystick pro', 'Xioami Joystick', 'xioami-joystick-pro', 'uploads/custom-images/xioami-joystick-pro-2022-09-21-03-33-43-9999.png', 1, 2, 4, 0, 0, 45, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'kju45', 'Xioami Joystick pro', 'Xioami Joystick pro', 2000, 1450, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, '2022-09-21 10:33:43', '2022-09-21 10:34:17'),
	(23, 'Apple macbook pro', 'Apple macbook', 'apple-macbook-pro', 'uploads/custom-images/apple-macbook-pro-2022-09-21-03-38-33-4014.png', 1, 1, 0, 0, 0, 45, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'ujy45', 'Apple macbook pro', 'Apple macbook pro', 120000, 10000, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, '2022-09-21 10:38:33', '2022-09-21 10:38:43'),
	(25, 'Appple macbook pro 2020', 'Apple macbook', 'appple-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-26-01-26-42-1648.png', 1, 1, 0, 0, 3, 12, '12', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'hjht6', 'Appple macbook pro 2020', 'Appple macbook pro 2020', 12000, 10000, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:27:26', '2022-09-26 08:26:43'),
	(26, 'Mi Laptop pro', 'Mi Lapotop', 'mi-laptop-pro-x', 'uploads/custom-images/mi-laptop-pro-2022-09-26-01-22-47-3531.png', 1, 4, 0, 0, 1, 43, '87', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'd45gg', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 45000, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 11:34:41', '2022-11-23 18:11:45'),
	(27, 'Sony camera m1', 'Sony camera', 'sony-camera-m1', 'uploads/custom-images/sony-camera-m1-2022-09-26-01-30-24-3959.png', 2, 8, 0, 0, 0, 15, '75', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'kjkjh7', 'Sony camera m1', 'Sony camera m1', 3000, 2800, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:40:16', '2022-09-26 08:30:24'),
	(29, 'Sony playstone pro', 'Sony playStone', 'sony-playstone-pro', 'uploads/custom-images/sony-playstone-pro-2022-09-26-02-02-31-9575.png', 2, 2, 5, 0, 0, 77, '98', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'jhuy67', 'Sony playstone pro', 'Sony playstone pro', 12000, 10000, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:43:08', '2022-11-22 02:27:44'),
	(30, 'JBL headphon max', 'JBL headphone', 'jbl-headphon-max', 'uploads/custom-images/jbl-headphon-max-2022-09-26-01-55-56-9123.png', 2, 1, 0, 0, 0, 81, '87', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'hjhg67', 'JBL headphon max', 'JBL headphon max', 700, 650, NULL, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, '2022-09-21 11:43:59', '2022-11-23 13:40:58'),
	(31, 'Sony joystick v1', 'Sony joystick', 'sony-joystick-v1', 'uploads/custom-images/sony-joystick-v1-2022-09-26-01-52-07-6121.png', 3, 2, 4, 0, 0, 32, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'kjjhy7', 'Sony joystick v1', 'Sony joystick v1', 1000, 900, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:46:59', '2022-11-23 18:11:45'),
	(32, 'Realme mini music', 'Mini music', 'realme-mini-music', 'uploads/custom-images/realme-mini-music-2022-09-26-01-34-10-1954.png', 3, 1, 0, 0, 2, 64, '45', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'kju7', 'Realme mini music', 'Realme mini music', 800, 659, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 11:48:07', '2022-11-22 18:56:39'),
	(33, 'Asus zenbook desktop', 'Asus zenbook', 'asus-zenbook-desktop', 'uploads/custom-images/asus-zenbook-desktop-2022-09-26-12-33-24-3339.png', 4, 10, 0, 0, 6, 2, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'kjhyy78', 'Asus zenbook desktop', 'Asus zenbook desktop', 35000, 33000, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 11:50:36', '2022-11-22 02:27:44'),
	(34, 'Apple air 2022', 'Apple air book', 'apple-air-2022', 'uploads/custom-images/apple-air-2022-2022-09-26-01-48-39-3761.png', 4, 1, 0, 0, 1, 984, '76', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'nmjbff45', 'Apple air 2022', 'Apple air 2022', 250000, 150000, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:51:56', '2022-11-22 14:44:38'),
	(35, 'Mini sound box', 'Mini music', 'mini-sound-box', 'uploads/custom-images/mini-sound-box-2022-09-26-01-41-16-4226.png', 5, 4, 0, 0, 0, 78, '34', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, 'DFH45', 'Mini sound box', 'Mini sound box', 1235, 1200, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, '2022-09-21 11:54:12', '2022-09-26 08:41:16'),
	(36, 'Sony joystick SJ pro', 'Sony joystick', 'sony-joystick-sj-pro-vlv', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-27-03-39-20-9931.png', 6, 2, 4, 0, 0, 42, '45', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words,', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, 'dfgh6', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 7000, 5000, NULL, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, '2022-09-21 11:56:12', '2022-11-23 18:11:45'),
	(37, 'Apple watch pro', 'Apple watch', 'apple-watch-pro', 'uploads/custom-images/apple-watch-pro-2022-09-26-12-04-40-6657.png', 6, 1, 0, 0, 3, 485, '12', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, 'wer56', 'Apple watch pro', 'Apple watch pro', 45000, 40000, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 12:00:41', '2022-11-23 15:29:13'),
	(38, 'Jamalia Greer', 'Deanna Gibson', 'Et voluptatum eiusmo', 'uploads/custom-images/jamalia-greer-2023-02-28-07-22-01-2210.jpg', 0, 2, 5, 3, 1, 594, '45', 0, 'Qui blanditiis volup', '<p>ccxcc sccccccccccccc sssssssssssss</p>', NULL, NULL, 'Iste ut rem cupidita', 'Fugiat quis ducimus', 614, 410, NULL, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, '2023-02-28 19:22:02', '2023-02-28 19:22:02');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_galleries
CREATE TABLE IF NOT EXISTS `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_galleries : ~35 rows (environ)
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(6, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-02-8827.jpg', 1, '2022-09-21 09:40:02', '2022-09-21 09:40:02'),
	(7, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-07-9431.jpg', 1, '2022-09-21 09:40:07', '2022-09-21 09:40:07'),
	(8, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-12-2258.jpg', 1, '2022-09-21 09:40:12', '2022-09-21 09:40:12'),
	(9, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-16-6534.jpg', 1, '2022-09-21 09:40:16', '2022-09-21 09:40:16'),
	(10, 11, 'uploads/custom-images/Gallery-2022-09-21-02-43-39-2412.webp', 1, '2022-09-21 09:43:39', '2022-09-21 09:43:39'),
	(11, 11, 'uploads/custom-images/Gallery-2022-09-21-02-44-58-3563.jpg', 1, '2022-09-21 09:44:58', '2022-09-21 09:44:58'),
	(12, 11, 'uploads/custom-images/Gallery-2022-09-21-02-45-26-2851.jpg', 1, '2022-09-21 09:45:26', '2022-09-21 09:45:26'),
	(13, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-25-6622.jpg', 1, '2022-09-21 09:47:25', '2022-09-21 09:47:25'),
	(14, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-32-8680.jpg', 1, '2022-09-21 09:47:32', '2022-09-21 09:47:32'),
	(15, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-39-2509.jpg', 1, '2022-09-21 09:47:39', '2022-09-21 09:47:39'),
	(16, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-44-6550.jpg', 1, '2022-09-21 09:47:44', '2022-09-21 09:47:44'),
	(17, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-47-2815.jpg', 1, '2022-09-21 09:47:47', '2022-09-21 09:47:47'),
	(18, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-59-9386.jpg', 1, '2022-09-21 09:47:59', '2022-09-21 09:47:59'),
	(20, 1, 'uploads/custom-images/Gallery-2022-09-21-02-48-25-9186.jpg', 1, '2022-09-21 09:48:25', '2022-09-21 09:48:25'),
	(21, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-41-4757.jpg', 1, '2022-09-21 09:49:41', '2022-09-21 09:49:41'),
	(22, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-44-6374.jpg', 1, '2022-09-21 09:49:44', '2022-09-21 09:49:44'),
	(23, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-48-9088.jpg', 1, '2022-09-21 09:49:48', '2022-09-21 09:49:48'),
	(24, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-53-4805.jpg', 1, '2022-09-21 09:49:53', '2022-09-21 09:49:53'),
	(25, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-2476.jpg', 1, '2022-09-21 09:50:49', '2022-09-21 09:50:49'),
	(26, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-5940.jpg', 1, '2022-09-21 09:50:49', '2022-09-21 09:50:49'),
	(27, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-4084.png', 1, '2022-09-21 09:50:49', '2022-09-21 09:50:49'),
	(28, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5855.png', 1, '2022-09-21 09:51:41', '2022-09-21 09:51:41'),
	(29, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-3530.png', 1, '2022-09-21 09:51:41', '2022-09-21 09:51:41'),
	(30, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5453.png', 1, '2022-09-21 09:51:41', '2022-09-21 09:51:41'),
	(31, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-6720.png', 1, '2022-09-21 09:51:41', '2022-09-21 09:51:41'),
	(32, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-2303.jpg', 1, '2022-09-21 09:52:53', '2022-09-21 09:52:53'),
	(33, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-9034.jpg', 1, '2022-09-21 09:52:53', '2022-09-21 09:52:53'),
	(34, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-6919.jpg', 1, '2022-09-21 09:52:53', '2022-09-21 09:52:53'),
	(35, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-3825.jpg', 1, '2022-09-21 09:52:53', '2022-09-21 09:52:53'),
	(36, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-7427.jpg', 1, '2022-09-21 09:53:15', '2022-09-21 09:53:15'),
	(37, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-4974.jpg', 1, '2022-09-21 09:53:15', '2022-09-21 09:53:15'),
	(38, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-1292.jpg', 1, '2022-09-21 09:53:15', '2022-09-21 09:53:15'),
	(39, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-2712.jpg', 1, '2022-09-21 09:53:15', '2022-09-21 09:53:15'),
	(40, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7986.jpg', 1, '2022-09-21 09:54:04', '2022-09-21 09:54:04'),
	(41, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7042.jpg', 1, '2022-09-21 09:54:04', '2022-09-21 09:54:04');
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_reports
CREATE TABLE IF NOT EXISTS `product_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_reports : ~0 rows (environ)
/*!40000 ALTER TABLE `product_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reports` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_reviews
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_vendor_id` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_reviews : ~9 rows (environ)
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
	(1, 13, 4, 0, 'Corrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enim', 4, 1, '2022-09-21 08:36:23', '2022-09-21 08:36:55'),
	(2, 7, 4, 0, 'Enim et ducimus fug', 4, 1, '2022-09-21 08:38:38', '2022-09-21 09:26:36'),
	(3, 1, 4, 0, 'Nemo ut ad voluptate', 3, 0, '2022-09-21 08:38:46', '2022-09-21 08:38:46'),
	(4, 11, 4, 0, 'Laboris qui voluptas', 2, 0, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
	(5, 13, 7, 0, 'dfafds', 5, 0, '2022-09-26 08:40:14', '2022-09-26 08:40:14'),
	(7, 13, 5, 0, 'ok', 5, 0, '2022-09-26 16:35:58', '2022-09-26 16:35:58'),
	(8, 1, 5, 0, 'gghj', 5, 0, '2022-09-26 17:28:55', '2022-09-26 17:28:55'),
	(9, 7, 7, 0, 'The best ever', 0, 1, '2022-11-23 00:22:03', '2022-11-23 00:29:18'),
	(10, 37, 7, 6, 'aaa', 5, 0, '2022-11-23 15:29:33', '2022-11-23 15:29:33');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_specifications
CREATE TABLE IF NOT EXISTS `product_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_specification_key_id` int NOT NULL,
  `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_specifications : ~0 rows (environ)
/*!40000 ALTER TABLE `product_specifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_specifications` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_specification_keys
CREATE TABLE IF NOT EXISTS `product_specification_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_specification_keys : ~1 rows (environ)
/*!40000 ALTER TABLE `product_specification_keys` DISABLE KEYS */;
INSERT INTO `product_specification_keys` (`id`, `key`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Color', 1, '2022-11-22 02:33:29', '2022-11-22 02:33:29');
/*!40000 ALTER TABLE `product_specification_keys` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_variants
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_variants : ~1 rows (environ)
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 13, 'red', 1, '2022-11-23 05:56:45', '2022-11-23 05:56:45');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. product_variant_items
CREATE TABLE IF NOT EXISTS `product_variant_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `product_variant_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.product_variant_items : ~0 rows (environ)
/*!40000 ALTER TABLE `product_variant_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_items` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. pusher_credentails
CREATE TABLE IF NOT EXISTS `pusher_credentails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_cluster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.pusher_credentails : ~1 rows (environ)
/*!40000 ALTER TABLE `pusher_credentails` DISABLE KEYS */;
INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
	(1, '1338069', 'e013174602072a186b1d', '46de951521010c14b205', 'mt1', NULL, '2022-01-29 13:41:05');
/*!40000 ALTER TABLE `pusher_credentails` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. razorpay_payments
CREATE TABLE IF NOT EXISTS `razorpay_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.razorpay_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `razorpay_payments` DISABLE KEYS */;
INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2023-03-06 19:06:42');
/*!40000 ALTER TABLE `razorpay_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. seller_mail_logs
CREATE TABLE IF NOT EXISTS `seller_mail_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.seller_mail_logs : ~0 rows (environ)
/*!40000 ALTER TABLE `seller_mail_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_mail_logs` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. seller_withdraws
CREATE TABLE IF NOT EXISTS `seller_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `approved_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.seller_withdraws : ~0 rows (environ)
/*!40000 ALTER TABLE `seller_withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_withdraws` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. seo_settings
CREATE TABLE IF NOT EXISTS `seo_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.seo_settings : ~7 rows (environ)
/*!40000 ALTER TABLE `seo_settings` DISABLE KEYS */;
INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
	(1, 'Home Page', 'Home - Welcome to BM-FLASH', 'A best ecommerce script', NULL, '2023-02-03 20:34:17'),
	(2, 'About Us', 'About Us - Ecommerce', 'About Us', NULL, '2022-02-07 03:39:59'),
	(3, 'Contact Us', 'Contact Us - Ecommerce', 'Contact Us', NULL, '2022-01-12 03:21:46'),
	(5, 'Seller Page', 'Our Seller - Ecommerce', 'Seller Page', NULL, '2022-02-07 03:40:16'),
	(6, 'Blog', 'Blog - Ecommerce', 'Blog', NULL, '2022-02-07 03:40:23'),
	(8, 'Flash Deal', 'Flash Deal - Ecommerce', 'Flash Deal', NULL, '2022-02-07 03:40:43'),
	(9, 'Shop Page', 'Shop Page - Ecommerce', 'Shop Page', NULL, '2022-02-07 03:40:50');
/*!40000 ALTER TABLE `seo_settings` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. services
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.services : ~4 rows (environ)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Free Shipping', 'fas fa-shipping-fast', 'Free Shipping on Payment', 1, '2022-09-20 09:07:40', '2022-09-20 09:07:40'),
	(2, 'Return Policy', 'fas fa-chevron-circle-left', '24 Hours Return Policy', 1, '2022-09-20 09:08:44', '2022-09-20 09:08:44'),
	(3, 'Secured Payment', 'fab fa-cc-amazon-pay', 'Secure Card Payments', 1, '2022-09-20 09:09:50', '2022-09-20 09:09:50'),
	(4, 'Best Quality', 'fas fa-check-circle', 'Best Quality Products', 1, '2022-09-20 09:10:27', '2022-09-22 05:24:58');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_user_register` int NOT NULL DEFAULT '1',
  `enable_multivendor` int NOT NULL DEFAULT '1',
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `sidebar_lg_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_progressbar` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `popular_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int NOT NULL DEFAULT '9',
  `frontend_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_category_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_section_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `empty_cart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empty_wishlist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_password_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `become_seller_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `become_seller_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.settings : ~1 rows (environ)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `default_language`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `seller_condition`, `popular_category`, `popular_category_product_qty`, `frontend_url`, `popular_category_banner`, `featured_category_banner`, `homepage_section_title`, `empty_cart`, `empty_wishlist`, `change_password_image`, `become_seller_avatar`, `become_seller_banner`, `login_image`, `error_page`, `created_at`, `updated_at`) VALUES
	(1, 1, 'uploads/website-images/logo-2023-02-25-03-45-27-6752.png', 'uploads/website-images/favicon-2022-09-20-09-51-23-8334.png', 'contact@bmflash.com', 1, 1, 1, 1, 'ltr', 'Africa/Douala', 'en', 'BmFlash', 'Bf', '123-854-7896', 'contact@gmail.com', 'XAF', 'XAF', 85.76, 0, '#1ee41b', '#b1a306', '<p><span style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;"><b>“Terms and Conditions</b>”&nbsp;means these “General Terms and Conditions for the Sale of Products or Services”, together with any modifications or additional provisions specifically stated in Seller’s final quotation or specifically agreed upon by Seller in writing.</span><br style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;"><span style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;">2. Delivery and Shipping Terms.</span><br style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;"><span style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;">(a) For shipments that do not involve export Seller shall deliver Products to Buyer F.O.B. shipping point. For export shipments, Seller shall deliver Products to Buyer EXW Seller’s facility or warehouse (Incoterms 2010). Buyer shall pay all delivery costs and charges or pay Seller’s standard shipping charges plus handling. Partial deliveries are permitted. Seller may deliver Products in advance of the delivery schedule. Delivery times are approximate and are dependent upon prompt receipt by Seller of all information necessary to proceed with the work without interruption. If Products delivered do not correspond in quantity, type or price to those itemized in the shipping invoice or documentation, Buyer shall so notify Seller within ten (10) days after receipt.</span><br style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;"><span style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;">(b) For shipments that do not involve export, title to Products shall pass to Buyer upon delivery in accordance with Section 2(a). For export shipments from a Seller facility or warehouse outside the U.S., title shall pass to Buyer upon delivery in accordance with Section 2(a). For shipments from the U.S. to another country, title shall pass to Buyer immediately after each item departs from the territorial land, seas and overlying airspace of the U.S. The 1982 United Nations Convention of the law of the Sea shall apply to determine the U.S. territorial seas. For all other shipments, title to Products shall pass to Buyer the earlier of (i) the port of export immediately after Products have been cleared for export or (ii) immediately after each item departs from the territorial land, seas and overlying airspace of the sending country. When Buyer arranges the export shipment, Buyer will provide Seller evidence of exportation acceptable to the relevant tax and custom authorities.</span><br style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;"><span style="color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;">(c) Risk of loss shall pass to Buyer upon delivery pursuant to Section 2(a), except that for export shipments from the U.S., risk of loss shall transfer to Buyer upon title passage.</span><br></p>', 'Popular Category', 9, 'http://localhost:3000/about', 'uploads/website-images/popular-cat-banner-2022-09-20-01-15-44-7577.jpg', 'uploads/website-images/featured-cat-banner-2022-09-21-02-43-49-4710.jpg', '[{"key":"Trending_Category","default":"Trending Category","custom":"Trending Category"},{"key":"Popular_Category","default":"Popular Category","custom":"Popular Category"},{"key":"Shop_by_Brand","default":"Shop by Brand","custom":"Shop by Brand"},{"key":"Top_Rated_Products","default":"Top Rated Products","custom":"Top Rated Products"},{"key":"Best_Seller","default":"Best Seller","custom":"Best Seller"},{"key":"Featured_Products","default":"Featured Products","custom":"Featured Products"},{"key":"New_Arrivals","default":"New Arrivals","custom":"New Arrivals"},{"key":"Best_Products","default":"Best Products","custom":"Best Products"}]', 'uploads/website-images/empty_cart-2022-11-17-11-10-20-7795.png', 'uploads/website-images/empty_wishlist-2022-11-17-11-23-16-9350.png', 'uploads/website-images/change_password_image-2022-11-17-11-26-36-3416.png', 'uploads/website-images/become_seller_avatar-2022-11-17-11-38-55-7934.png', 'uploads/website-images/become_seller_banner-2022-11-17-11-41-53-5886.png', 'uploads/website-images/login_image-2022-11-17-11-07-21-2774.png', 'uploads/website-images/error_page-2022-11-17-11-27-36-6180.png', NULL, '2023-03-06 18:29:28');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. shippings
CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `shipping_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.shippings : ~2 rows (environ)
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
	(1, 0, 'free shipping', 'base_on_price', 0, '1', '100', '2022-09-21 06:49:45', '2022-09-21 06:49:45'),
	(2, 8, 'Product Price (1-2000)', 'base_on_price', 20, '2000', '0', '2022-11-18 03:36:09', '2022-11-18 03:37:50');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. shopping_carts
CREATE TABLE IF NOT EXISTS `shopping_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.shopping_carts : ~7 rows (environ)
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
INSERT INTO `shopping_carts` (`id`, `user_id`, `product_id`, `qty`, `coupon_name`, `coupon_price`, `offer_type`, `created_at`, `updated_at`) VALUES
	(36, 12, 13, 1, '', 0, 0, '2022-09-22 06:45:27', '2022-09-22 06:45:27'),
	(70, 6, 37, 1, '', 0, 0, '2022-09-26 11:35:34', '2022-09-26 11:35:34'),
	(107, 5, 37, 2, '', 0, 0, '2022-09-27 12:38:08', '2022-09-27 12:38:08'),
	(108, 5, 37, 1, '', 0, 0, '2022-09-27 12:38:13', '2022-09-27 12:38:13'),
	(207, 15, 7, 2, '', 0, 0, '2022-11-18 16:46:10', '2022-11-18 16:46:14'),
	(208, 6, 29, 1, '', 0, 0, '2023-02-26 18:29:09', '2023-02-26 18:29:09'),
	(209, 6, 1, 1, '', 0, 0, '2023-02-28 19:54:39', '2023-02-28 19:54:39');
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. shopping_cart_variants
CREATE TABLE IF NOT EXISTS `shopping_cart_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shopping_cart_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `variant_item_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.shopping_cart_variants : ~0 rows (environ)
/*!40000 ALTER TABLE `shopping_cart_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart_variants` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. shop_pages
CREATE TABLE IF NOT EXISTS `shop_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `filter_price_range` double NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.shop_pages : ~1 rows (environ)
/*!40000 ALTER TABLE `shop_pages` DISABLE KEYS */;
INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
	(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 5000, NULL, '2022-09-20 09:07:01');
/*!40000 ALTER TABLE `shop_pages` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.sliders : ~3 rows (environ)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `badge`, `title_one`, `title_two`, `image`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
	(1, 'New released', 'Apple Wireless', 'Samsung S10+', 'uploads/custom-images/slider-2022-10-27-01-36-28-1252.png', 0, 1, NULL, 'fantech-octane-headset', '2022-09-20 04:55:57', '2022-11-23 08:04:17'),
	(2, 'New released', 'Apple', 'Macbook Pro Max', 'uploads/custom-images/slider-2022-10-27-01-36-38-2956.png', 1, 2, NULL, 'jbl-clip-4-orange-portable-speaker', '2022-09-20 04:57:41', '2022-10-27 08:36:38'),
	(3, 'New released', 'Headphone', 'JBL Music', 'uploads/custom-images/slider-2022-10-27-01-36-44-4193.png', 1, 3, NULL, 'sony-joystick-v1', '2022-09-20 04:58:20', '2022-10-27 08:36:45');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. social_login_information
CREATE TABLE IF NOT EXISTS `social_login_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_facebook` int NOT NULL DEFAULT '0',
  `facebook_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_gmail` int NOT NULL DEFAULT '0',
  `gmail_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.social_login_information : ~1 rows (environ)
/*!40000 ALTER TABLE `social_login_information` DISABLE KEYS */;
INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
	(1, 0, '343rer', 'fsdfa', 0, '334dsfs', 'fdsf343', 'link', 'link', NULL, '2022-06-11 12:16:26');
/*!40000 ALTER TABLE `social_login_information` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. sslcommerz_payments
CREATE TABLE IF NOT EXISTS `sslcommerz_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.sslcommerz_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `sslcommerz_payments` DISABLE KEYS */;
INSERT INTO `sslcommerz_payments` (`id`, `store_id`, `store_password`, `mode`, `currency_rate`, `country_code`, `currency_code`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'wsus628f03bb09670', 'wsus628f03bb09670@ssl', 'sandbox', '80', 'BD', 'BDT', 0, NULL, '2023-03-06 19:20:19');
/*!40000 ALTER TABLE `sslcommerz_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. stripe_payments
CREATE TABLE IF NOT EXISTS `stripe_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.stripe_payments : ~1 rows (environ)
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`) VALUES
	(1, 0, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2023-03-06 19:32:47', 'US', 'USD', 1);
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. subscribers
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.subscribers : ~16 rows (environ)
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
	(1, 'admin@gmail.com', 0, '568771', 0, '2022-09-21 06:03:38', '2022-09-21 06:03:38'),
	(2, 'abdur.rohman2003@gmail.com', 0, '458560', 0, '2022-09-21 06:03:47', '2022-09-21 06:03:47'),
	(3, 'admin@brandmarrow.com.bd', 0, '298058', 0, '2022-09-21 06:03:59', '2022-09-21 06:03:59'),
	(4, 'abdur_rohman2003@yahoo.com', 0, '978651', 0, '2022-09-21 08:06:47', '2022-09-21 08:06:47'),
	(5, 'h@h.com', 0, '863244', 0, '2022-09-22 11:18:38', '2022-09-22 11:18:38'),
	(6, 'Mollitia rerum omnis', 0, '637112', 0, '2022-09-23 07:01:01', '2022-09-23 07:01:01'),
	(7, 'supuhib@mailinator.com', 0, '184076', 0, '2022-09-23 07:01:08', '2022-09-23 07:01:08'),
	(8, 'abc@gmail.com', 0, '635442', 0, '2022-10-29 18:11:29', '2022-10-29 18:11:29'),
	(9, 'user2@gmail.com', 0, '455377', 0, '2022-10-29 18:15:48', '2022-10-29 18:15:48'),
	(10, 'patient@gmail.com', 0, '477354', 0, '2022-10-29 18:18:54', '2022-10-29 18:18:54'),
	(11, 'user64@gmail.com', 0, '583716', 0, '2022-10-29 18:25:26', '2022-10-29 18:25:26'),
	(12, 'user@gmail.com', 0, '802435', 0, '2022-10-29 20:06:22', '2022-10-29 20:06:22'),
	(13, 'samad1122@gmail.com', 0, '733410', 0, '2022-10-31 22:28:20', '2022-10-31 22:28:20'),
	(14, 'muhammadhammadkhan17@gamil.com', 0, '418556', 0, '2022-10-31 22:28:39', '2022-10-31 22:28:39'),
	(15, 'fazigamingyt1@gmail.com', 0, '475241', 0, '2022-11-20 21:56:35', '2022-11-20 21:56:35'),
	(16, 'azmatbukhari879@gmail.com', 0, '753841', 0, '2022-11-22 14:42:37', '2022-11-22 14:42:37');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. sub_categories
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.sub_categories : ~9 rows (environ)
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Mobiles', 'mobiles', 1, '2022-09-20 06:51:21', '2022-09-25 11:58:05'),
	(2, 1, 'Monitor', 'monitor', 1, '2022-09-20 06:51:35', '2022-09-20 06:51:35'),
	(3, 1, 'camera', 'camera', 1, '2022-09-20 07:02:23', '2022-09-20 07:02:23'),
	(4, 2, 'Controller', 'controller', 1, '2022-09-20 08:08:14', '2022-09-20 08:08:14'),
	(5, 2, 'PlayStation', 'playstation', 1, '2022-09-20 08:09:17', '2022-09-20 08:09:17'),
	(6, 2, 'Need For Speed', 'need-for-speed', 1, '2022-09-20 08:09:31', '2022-09-20 08:09:31'),
	(7, 10, 'Desktop', 'desktop', 1, '2022-09-20 08:11:30', '2022-09-20 08:11:30'),
	(8, 10, 'Headphone', 'headphone', 1, '2022-09-20 08:11:41', '2022-09-20 08:11:50'),
	(9, 10, 'Mouse', 'mouse', 1, '2022-09-20 08:12:00', '2022-09-20 08:12:00');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. tawk_chats
CREATE TABLE IF NOT EXISTS `tawk_chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chat_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.tawk_chats : ~1 rows (environ)
/*!40000 ALTER TABLE `tawk_chats` DISABLE KEYS */;
INSERT INTO `tawk_chats` (`id`, `chat_link`, `widget_id`, `property_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'link', '612dc781d6e7610a49b2d444', '1fedd6l9m', 1, NULL, '2022-11-16 02:41:06');
/*!40000 ALTER TABLE `tawk_chats` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. terms_and_conditions
CREATE TABLE IF NOT EXISTS `terms_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `terms_and_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.terms_and_conditions : ~1 rows (environ)
/*!40000 ALTER TABLE `terms_and_conditions` DISABLE KEYS */;
INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
	(1, '<p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Welcome to&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>!</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">These terms and conditions outline the rules and regulations for the use of&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>\'s Website, located at&nbsp;<span class="highlight preview_website_url" style="background: rgb(255, 255, 238);">Website.com</span>.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">By accessing this website we assume you accept these terms and conditions. Do not continue to use&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;if you do not agree to take all of the terms and conditions stated on this page.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company\'s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Cookies</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We employ the use of cookies. By accessing&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>, you agreed to use cookies in agreement with the&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>\'s Privacy Policy.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">License</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Unless otherwise stated,&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>&nbsp;and/or its licensors own the intellectual property rights for all material on&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>. All intellectual property rights are reserved. You may access this from&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;for your own personal use subjected to restrictions set in these terms and conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">You must not:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Republish material from&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span></li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Sell, rent or sub-license material from&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span></li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Reproduce, duplicate or copy material from&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span></li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Redistribute content from&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span></li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">This Agreement shall begin on the date hereof.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>&nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>&nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>&nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">You warrant and represent that:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">You hereby grant&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>&nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Hyperlinking to our Content</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The following organizations may link to our Website without prior written approval:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Government agencies;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Search engines;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">News organizations;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We may consider and approve other link requests from the following types of organizations:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">commonly-known consumer and/or business information sources;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">dot.com community sites;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">associations or other groups representing charities;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">online directory distributors;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">internet portals;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">accounting, law and consulting firms; and</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">educational institutions and trade associations.</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>; and (d) the link is in the context of general resource information.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Approved organizations may hyperlink to our Website as follows:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">By use of our corporate name; or</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">By use of the uniform resource locator being linked to; or</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">No use of&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span>\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">iFrames</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Content Liability</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Reservation of Rights</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Removal of links from our website</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Disclaimer</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">limit or exclude our or your liability for death or personal injury;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h2 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;">Privacy Policy for&nbsp;<span class="highlight preview_company_name" style="background: rgb(255, 255, 238);">Company Name</span></h2><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">At&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>, accessible at&nbsp;<span class="highlight preview_website_url" style="background: rgb(255, 255, 238);">Website.com</span>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;and how we use it.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at&nbsp;<span class="highlight preview_email_address" style="background: rgb(255, 255, 238);">Email@Website.com</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">This privacy policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>. This policy is not applicable to any information collected offline or via channels other than this website.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Consent</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Information we collect</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">How we use your information</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We use the information we collect in various ways, including to:</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Provide, operate, and maintain our website</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Improve, personalize, and expand our website</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Understand and analyze how you use our website</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Develop new products, services, features, and functionality</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Send you emails</li><li style="margin-top: 0.5em; margin-bottom: 0.5em;">Find and prevent fraud</li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Log Files</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">Cookies and Web Beacons</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Like any other website,&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;uses ‘cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><h3 style="font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;">DoubleClick DART Cookie</h3><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL –&nbsp;<a href="https://policies.google.com/technologies/ads" target="_blank" rel="noopener noreferrer" style="color: rgb(93, 136, 179);">https://policies.google.com/technologies/ads</a>.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p><ul style="margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><li style="margin-top: 0.5em; margin-bottom: 0.5em;"><p style="margin: 1em 0px;">Google</p><p style="margin: 1em 0px;"><a href="https://policies.google.com/technologies/ads" rel="noopener noreferrer" style="color: rgb(93, 136, 179);">https://policies.google.com/technologies/ads</a></p></li></ul><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Advertising Partners Privacy Policies</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">You may consult this list to find the Privacy Policy for each of the advertising partners of&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Note that&nbsp;<span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;has no access to or control over these cookies that are used by third-party advertisers.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Third-Party Privacy Policies</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">CCPA Privacy Policy (Do Not Sell My Personal Information)</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Under the CCPA, among other rights, California consumers have the right to:</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Request that a business delete any personal data about the consumer that a business has collected.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">GDPR Privacy Policy (Data Protection Rights)</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span style="font-weight: 700;">Children\'s Information</span></p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style="margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><span class="highlight preview_website_name" style="background: rgb(255, 255, 238);">Website Name</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2022-09-20 09:23:13', '2022-09-20 09:23:43');
/*!40000 ALTER TABLE `terms_and_conditions` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. testimonials
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.testimonials : ~4 rows (environ)
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
	(2, 'John Doe', 'CEO', 'uploads/custom-images/john-doe-20220922033955.png', '5', 'As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.', 1, NULL, '2022-09-22 10:39:55'),
	(3, 'Michael', 'CEO', 'uploads/custom-images/ibrahim-khalil-20220922034002.png', '5', 'Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.', 1, '2022-07-31 11:57:20', '2022-09-25 10:10:18'),
	(5, 'James Robert', 'CEO', 'uploads/custom-images/james-robert-20220925031227.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 10:12:27', '2022-09-25 10:12:27'),
	(6, 'Mary 	Patricia', 'CEO', 'uploads/custom-images/mary-patricia-20220925031348.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 10:13:48', '2022-09-25 10:13:48');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. three_column_categories
CREATE TABLE IF NOT EXISTS `three_column_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.three_column_categories : ~1 rows (environ)
/*!40000 ALTER TABLE `three_column_categories` DISABLE KEYS */;
INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 04:59:38');
/*!40000 ALTER TABLE `three_column_categories` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` int NOT NULL DEFAULT '0',
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `default_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.users : ~22 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `default_language`, `agree_policy`, `created_at`, `updated_at`) VALUES
	(1, 'Abdur1 Rohman1', 'facik91345@pahed.com', NULL, '$2y$10$1fb1W./8xpgma9gJo/nGIu8eGxqoULkt8cKsCBLBcZwQJ/yS81/sW', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '973589', 0, 'en', 1, '2022-09-20 11:04:42', '2022-09-20 11:04:42'),
	(2, 'John Do', 'meyaj42636@pahed.com', NULL, '$2y$10$PCusAOjlo72nk4dfE9mJl.AQ/i9BBjczfwYqhRxtudDGQzoV4U2Ki', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '846418', 0, 'en', 1, '2022-09-21 06:25:34', '2022-09-21 06:25:34'),
	(3, 'John Do', 'piway67338@geekjun.com', NULL, '$2y$10$MWP/Jt4d1Sz0U6NrOPZcSutWhIuAb3eeV4Erw82YP7ja32Qjl8LQC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '191269', 0, 'en', 1, '2022-09-21 06:26:32', '2022-09-21 06:26:32'),
	(4, 'Autumn Decker Dean', 'jipof28122@orlydns.com', NULL, '$2y$10$B3aOUPcMKFQUKR9af/taSei07iAEaiT2TaaWaofuM4cMuspsIffH.', 'Ou5C4kwC0iMZ7K2nAP7m2mZulHnXvIhz5j3VAaWNxboVpCbwFcUVPpPP8DXX', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-09-21 06:33:41', '2022-09-21 06:39:16'),
	(5, 's s', 'marohman74@gmail.com', NULL, '$2y$10$fLfrcsXAEO4Ppl.RzHEj2ObbdSBKKgy8XC3kPDIjE/Fqp.yRnCqea', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/s-s-2022-09-22-10-19-00-8064.jpg', '+881682825123', 0, 0, 0, NULL, 'qww', 0, NULL, 1, 'en', 1, '2022-09-21 06:40:21', '2022-11-21 15:18:05'),
	(6, 'nayeem', 'mrnayeem75@gmail.com', NULL, '$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/nayeem-2022-09-21-10-02-25-6264.jpg', '+88123456789', 4, 7, 10, NULL, 'catsle', 0, NULL, 1, 'en', 1, '2022-09-21 07:48:34', '2022-09-21 17:02:25'),
	(7, 'Amaya Hendrix', 'hijigov511@pahed.com', NULL, '$2y$10$slQDXnVvhpogMQB3OyqAeeIEBYNCS7pwN8rVHlYsSDv/nA3tIhEDu', 'u0FdCYSaxXIeA4RXeIae5unipHcX870CLlJfDG7FTqPHVJkfCsS1SPZ0XFew', NULL, 1, NULL, NULL, NULL, NULL, '01792166627', 2, 4, 8, NULL, 'Dhaka,bangladesh', 0, NULL, 1, 'fr', 1, '2022-09-21 08:08:27', '2022-11-18 06:11:20'),
	(8, 'Harding Rosa', 'fegig12897@ploneix.com', NULL, '$2y$10$.Z7BHjmwrhswRQA1/SDRUubKwZDTtFU8GK9ZGbkxprsMCDWBycSXC', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-09-21 08:11:54', '2022-09-21 08:12:14'),
	(9, 'Nasim Horne', 'wokij22557@geekjun.com', NULL, '$2y$10$fSYHi6.oqhxsPYKZA1aASOA3YbujGYabkkoE/w/G3kKBoSRqzO2TG', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-09-21 08:17:37', '2022-09-21 08:18:01'),
	(10, 'Xaviera Barnes', 'rokayo4006@pahed.com', NULL, '$2y$10$W0ffeYoOKWHml0SiziQ7uuB0WjbSkf3hbNuuwwmNi5ZFxD/ybSD4W', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-09-21 08:21:41', '2022-09-21 08:22:03'),
	(11, 'Kelsey Conrad', 'Habbriyi', NULL, '$2y$10$6mUC3rwW9E42jqilivcw0unRzFcE/BK/6a8GbxpQXF8GIe1Gd8VVW', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '604590', 0, 'en', 1, '2022-09-21 08:24:58', '2022-11-21 11:47:07'),
	(12, 'Kelsey Conrad', 'tofor67338@geekjun.com', NULL, '$2y$10$LZJN3KNzoF6wZFyO0AvaYeyKnf7j51qGfjFWIj5nfq5czpVnCSWaa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-09-21 08:26:08', '2022-09-21 08:27:50'),
	(14, 'Moses Haynes Short', 'cacixi5247@corylan.com', NULL, '$2y$10$SjifGqNkcVvFPhQuDFe8iebZ1KGkDpsRywLbCc3.mGA2rfp.3lO0.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-10-27 09:33:02', '2022-10-27 09:33:14'),
	(15, 'Jason Mcneil', 'mehoke2377@sopulit.com', NULL, '$2y$10$Dpk9fNCaMpK4XI4OfdrRVO4cWPXR3DeIj1wg3CLqavI60UZP1Xdti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 'en', 1, '2022-11-18 16:13:08', '2022-11-23 02:07:48'),
	(16, 'Test Test', 'test@gmail.con', NULL, '$2y$10$N35xuiQ2nWwntEwfeTbPHe9eFsskk4C/xx.Z8hc0hhmkbvlo95rEi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '976621', 0, 'en', 1, '2022-11-22 07:16:45', '2022-11-22 07:16:45'),
	(17, 'suraj c', 's@g.com', NULL, '$2y$10$/ya3vIvGKDW3MDZxFfB39uvYYCJD20fX7jUg52FX6fBks2ZHkVsum', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '522603', 0, 'en', 1, '2022-11-23 02:45:44', '2022-11-23 02:45:44'),
	(18, 'Bert Andrews', 'nomuhanak@mailinator.com', NULL, '$2y$10$8Hj7YiFL0EPyRDtDO./FjeZvV189g7L/2zlroWBc.pZ.TYp4YAhPq', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '218730', 0, 'en', 1, '2023-02-22 21:39:23', '2023-02-22 21:39:23'),
	(19, 'Cora Monroe', 'piterih@mailinator.com', NULL, '$2y$10$kLMex6guRVGQJZmcl/zI9eMOUDRzFsXRROpPXWZ7wORjI2BC8946y', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '806600', 0, 'en', 1, '2023-02-22 21:40:40', '2023-02-28 20:04:01'),
	(20, 'Doris Stone', 'quvicim@mailinator.com', NULL, '$2y$10$zuC.OfJjlEyeGozee2/4LO3FZlPoi7zjGjjwuLTvq9SLukBlVnm0q', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '613408', 0, 'en', 1, '2023-02-22 21:41:23', '2023-02-28 20:04:00'),
	(21, 'Carter Kemp', 'quje@mailinator.com', NULL, '$2y$10$4rve6VpbEmxXxYgAg6Hrg.xXPQEJWz.iUbrA3RGkqI/FW0jtaaKLW', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '720766', 0, 'en', 1, '2023-02-22 21:42:44', '2023-02-28 20:04:00'),
	(22, 'Samankassou Nelle Sharp', 'samankassoufoulla@gmail.com', NULL, '$2y$10$K8O8karDly2I/2qUyqhM2Oxsd5r0gPwvyAn01UNUhJNbRsE57Hhn6', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '736375', 0, 'en', 1, '2023-02-22 21:47:36', '2023-02-28 20:03:57'),
	(23, 'Samankassou Nelle Sharp', 'samankoufoulla@gmail.com', NULL, '$2y$10$XZzaPSImiQx3TLk5m/Ah5eYfJvuKtpVy3GcOx7ZOfTYH/aK/iotQm', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '123507', 0, 'en', 1, '2023-02-22 21:48:21', '2023-02-28 20:03:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `top_rated` int NOT NULL DEFAULT '0',
  `verified_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `greeting_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.vendors : ~6 rows (environ)
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `logo`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `greeting_msg`, `created_at`, `updated_at`) VALUES
	(1, 4, 0, 'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png', 'uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png', '01792166627', 'jipof28122@orlydns.com', 'Shopno BD', 'shopno-bd', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Shopno BD', 'Shopno BD', 1, 0, 0, NULL, 0, 'Welcome to Shopno BD', '2022-09-21 06:58:14', '2022-09-21 06:58:32'),
	(2, 7, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-10-12-1265.png', 'uploads/custom-images/seller-logo-2022-09-21-01-10-12-2682.png', '01792166627', 'hijigov511@pahed.com', 'Eecoms Shop', 'eecoms-shop', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Eecoms Shop', 'Eecoms Shop', 1, 0, 0, NULL, 0, 'Welcome to Eecoms Shop', '2022-09-21 08:10:12', '2022-09-21 08:10:21'),
	(3, 8, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-16-13-9611.png', 'uploads/custom-images/seller-logo-2022-09-21-01-16-13-5847.png', '01792166627', 'fegig12897@ploneix.com', 'Fusion X', 'fusion-x', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Fusion X', 'Fusion X', 1, 0, 0, NULL, 0, 'Welcome to Fusion X', '2022-09-21 08:16:13', '2022-09-21 08:16:18'),
	(4, 9, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-19-19-5022.png', 'uploads/custom-images/seller-logo-2022-09-21-01-19-19-3916.png', '01792166627', 'wokij22557@geekjun.com', 'Rikayi Rox', 'rikayi-rox', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rikayi Rox', 'Rikayi Rox', 1, 0, 0, NULL, 0, 'Welcome to Rikayi Rox', '2022-09-21 08:19:19', '2022-09-21 08:19:24'),
	(5, 10, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-22-55-5481.png', 'uploads/custom-images/seller-logo-2022-09-21-01-22-55-6660.png', '01792166627', 'rokayo4006@pahed.com', 'Habbriyi', 'habbriyi', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Habbriyi', 'Habbriyi', 1, 0, 0, NULL, 0, 'Welcome to Habbriyi', '2022-09-21 08:22:55', '2022-09-21 08:23:06'),
	(6, 12, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-30-45-9893.png', 'uploads/custom-images/seller-logo-2022-09-21-01-30-46-9044.png', '01792166627', 'tofor67338@geekjun.com', 'Rayhans', 'rayhans', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rayhans', 'Rayhans', 1, 0, 0, NULL, 0, 'Welcome to Rayhans', '2022-09-21 08:30:46', '2022-09-21 08:30:53');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. vendor_social_links
CREATE TABLE IF NOT EXISTS `vendor_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.vendor_social_links : ~0 rows (environ)
/*!40000 ALTER TABLE `vendor_social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_social_links` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. wishlists
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.wishlists : ~2 rows (environ)
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(3, 5, 4, '2022-09-21 18:31:07', '2022-09-21 18:31:07'),
	(40, 7, 32, '2022-11-23 05:36:23', '2022-11-23 05:36:23');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;

-- Listage de la structure de la table bmflash. withdraw_methods
CREATE TABLE IF NOT EXISTS `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table bmflash.withdraw_methods : ~0 rows (environ)
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
