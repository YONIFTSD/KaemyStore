-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.15-log - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_kaemystore
DROP DATABASE IF EXISTS `bd_kaemystore`;
CREATE DATABASE IF NOT EXISTS `bd_kaemystore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_kaemystore`;

-- Volcando estructura para tabla bd_kaemystore.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.category: ~5 rows (aproximadamente)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id_category`, `name`, `description`, `image`, `order_item`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'SEGURIDAD VEHICULAR', NULL, 'seguridad-vehicular-170920184134.jpg', 0, 9, NULL, '2020-10-15 06:35:02'),
	(2, 'CAR AUDIO', NULL, 'car-audio-170920184239.jpg', 0, 9, NULL, '2020-10-15 06:34:52'),
	(3, 'ROPA DE VESTIR PUMA', NULL, 'ropa-de-vestir-170920184257.jpg', 0, 9, NULL, '2020-10-15 06:34:58'),
	(4, 'CASUALES', 'CASUALES', '/storage/category/casuales_1603634164.jpg', 0, 1, NULL, '2020-10-25 08:56:04'),
	(5, 'OUTDOORS', 'OUTDOORS', '/storage/category/outdoors_1603633242.jpg', 0, 1, NULL, '2020-10-25 08:40:42');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.client
DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubigee` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `client_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.client: ~5 rows (aproximadamente)
DELETE FROM `client`;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`id_client`, `document_type`, `document_number`, `name`, `last_name`, `phone`, `ubigee`, `address`, `email`, `password`, `sex`, `birth_date`, `state`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'DNI', NULL, 'yonathan william', 'mamani', NULL, NULL, NULL, 'yonathanwilliammc@gmail.com', '$2y$10$XnOZfpFRxNmNpbaZj0DBeucdj5cMAQ36ufwWOLonxr.MHxbh45Qk2', NULL, NULL, 1, 'Em8KkyXUUUcRWDh5jpHsxDjrSAQvrIXq8VJlL5uU74VIdm2NAhLRkyAH5Yjf', '2020-10-06 00:25:32', '2020-10-06 02:38:10'),
	(2, NULL, NULL, 'ronald', NULL, NULL, NULL, NULL, 'rjdisenadores@hotmail.com', '$2y$10$383hlNdxeeTjPjEsDMujAuxiqnsfvo0CiTi1EdCnR8LtZGwUIF/OG', NULL, NULL, 1, NULL, '2020-10-16 12:59:04', '2020-10-16 12:59:04'),
	(3, NULL, NULL, 'hunterlh4', NULL, NULL, NULL, NULL, 'alexticoma4@gmail.com', '$2y$10$qJEQqXxxBTBdKLa9vZQNd.1vQz8JXQeRrPwDPJZeDCopHnHdB6Y7a', NULL, NULL, 1, 'Bkjqc9E7ZW20eE1XP41htoZcj1L4dMsHlcMJqYV0GjothLkQFPeKj8ZVeoof', '2020-11-20 22:50:14', '2020-11-20 22:50:14'),
	(4, NULL, NULL, 'Piero', NULL, NULL, NULL, NULL, 'pierovictorio55@gmail.com', '$2y$10$LujPtRKL7uTPqaZ83qY5a.VSQECjPi2bgf0px9QGy/VFPqYSbS3Aa', NULL, NULL, 1, 'tUiesxRfNZaljowlroUUCaNs3iWIdrY6FryWgSzpmKe3thUWdrE9kOA7IO4x', '2020-11-25 12:00:24', '2020-11-25 12:00:24'),
	(5, NULL, NULL, 'prueba', NULL, NULL, NULL, NULL, 'prueba@hotmail.com', '$2y$10$.Kje62dDxE4cGXgFHkhuIeeTDlf8qw24y1F7od1M/KnpxJfPFFnTS', NULL, NULL, 1, 'LKxngln4EVlh2RVoFCpcEeOs0TyvZpNQ9HNiCWxiTPSLY9vikXGWi6xHkOHv', '2020-11-27 12:53:14', '2020-11-27 12:53:14');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.coupon
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id_coupon` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_coupon`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.coupon: ~3 rows (aproximadamente)
DELETE FROM `coupon`;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` (`id_coupon`, `code`, `name`, `description`, `discount`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'cupon20', 'CUPON DE DESCUENTO DE 20%', 'CUPON DE DESCUENTO DE 20%', 20, 1, '2020-10-05 13:56:52', '2020-10-06 22:41:02'),
	(2, 'cupon10', 'cupon 10% de descuento', 'cupon 10% de descuento', 10, 1, '2020-10-06 22:40:36', '2020-10-06 22:40:36'),
	(3, 'cupon30', 'Cupon de descuento 50%', 'va a descontar 50%', 50, 9, '2020-11-23 19:42:39', '2020-11-23 19:43:23');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.cover_page
DROP TABLE IF EXISTS `cover_page`;
CREATE TABLE IF NOT EXISTS `cover_page` (
  `id_cover_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cover_page`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.cover_page: ~5 rows (aproximadamente)
DELETE FROM `cover_page`;
/*!40000 ALTER TABLE `cover_page` DISABLE KEYS */;
INSERT INTO `cover_page` (`id_cover_page`, `title`, `description`, `image`, `url`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'PORTADA 1', 'width: 30;', '/storage/covers_page/1_1603630590.jpg', NULL, 1, '2020-09-30 12:20:45', '2020-10-25 07:56:30'),
	(2, 'portada1', 'portada1', '/storage/covers_page/2_1603630609.jpg', NULL, 1, '2020-10-15 06:43:47', '2020-10-25 07:56:49'),
	(3, 'portada3', 'portada3', '/storage/covers_page/3_1603630632.jpg', NULL, 1, '2020-10-15 06:50:29', '2020-10-25 07:57:12'),
	(4, 'portada4', 'portada4', '/storage/covers_page/4_1603630653.jpg', NULL, 1, '2020-10-15 06:50:52', '2020-10-25 07:57:33'),
	(5, 'portada5', 'portada5', '/storage/covers_page/5_1603630677.jpg', NULL, 1, '2020-10-15 06:51:20', '2020-10-25 07:57:57');
/*!40000 ALTER TABLE `cover_page` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.migrations: ~14 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2020_09_07_142308_create_zone_table', 1),
	(3, '2020_09_07_142330_create_privilege_table', 1),
	(4, '2020_09_07_142351_create_user_type_table', 1),
	(5, '2020_09_07_142416_create_privilege_zone_table', 1),
	(6, '2020_09_07_142417_create_users_table', 1),
	(7, '2020_09_07_171442_create_category_table', 1),
	(8, '2020_09_07_172123_create_subcategories_table', 1),
	(9, '2020_09_07_172802_create_products_table', 1),
	(10, '2020_09_07_172803_create_products_photos_table', 1),
	(11, '2020_09_08_170129_create_clients_table', 1),
	(12, '2020_09_08_170130_create_orders_table', 1),
	(13, '2020_09_08_170205_create_order_details_table', 1),
	(14, '2020_09_08_173714_create_cover_pages_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` int(10) unsigned NOT NULL,
  `number_of_order` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_coupon` int(10) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `state` int(11) NOT NULL,
  `file` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `c_charge_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_commission` decimal(10,2) DEFAULT NULL,
  `c_igv` decimal(10,2) DEFAULT NULL,
  `c_amount_to_deposit` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `order_id_client_foreign` (`id_client`),
  CONSTRAINT `order_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.order: ~2 rows (aproximadamente)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id_order`, `id_client`, `number_of_order`, `description`, `id_coupon`, `payment_type`, `subtotal`, `discount`, `total`, `state`, `file`, `payment_status`, `c_charge_id`, `c_commission`, `c_igv`, `c_amount_to_deposit`, `created_at`, `updated_at`) VALUES
	(1, 3, '0', '', 0, 1, 265.00, 0.00, 265.00, 2, '', 1, NULL, NULL, NULL, NULL, '2020-11-20 23:16:27', '2020-11-23 19:49:49'),
	(2, 5, '0', '', 0, 2, 265.00, 0.00, 265.00, 1, '', 0, NULL, NULL, NULL, NULL, '2020-11-27 13:18:50', '2020-11-27 13:18:50');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.order_detail
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_id_order_foreign` (`id_order`),
  KEY `order_detail_id_product_foreign` (`id_product`),
  CONSTRAINT `order_detail_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`),
  CONSTRAINT `order_detail_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.order_detail: ~2 rows (aproximadamente)
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_product`, `quantity`, `size`, `unit_price`, `total_price`, `state`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 1, '38', 265.00, 265.00, 1, '2020-11-20 23:16:27', '2020-11-20 23:16:27'),
	(2, 2, 2, 1, '38', 265.00, 265.00, 1, '2020-11-27 13:18:50', '2020-11-27 13:18:50');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.privilege
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE IF NOT EXISTS `privilege` (
  `id_privilege` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_privilege`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.privilege: ~5 rows (aproximadamente)
DELETE FROM `privilege`;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` (`id_privilege`, `name`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'listar', 1, NULL, NULL),
	(2, 'agregar', 1, NULL, NULL),
	(3, 'editar', 1, NULL, NULL),
	(4, 'eliminar', 1, NULL, NULL),
	(5, 'ver', 1, NULL, NULL);
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.privilege_zone
DROP TABLE IF EXISTS `privilege_zone`;
CREATE TABLE IF NOT EXISTS `privilege_zone` (
  `id_privilege_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user_type` int(10) unsigned NOT NULL,
  `id_privilege` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_privilege_zone`),
  KEY `privilege_zone_id_user_type_foreign` (`id_user_type`),
  KEY `privilege_zone_id_privilege_foreign` (`id_privilege`),
  KEY `privilege_zone_id_zone_foreign` (`id_zone`),
  CONSTRAINT `privilege_zone_id_privilege_foreign` FOREIGN KEY (`id_privilege`) REFERENCES `privilege` (`id_privilege`),
  CONSTRAINT `privilege_zone_id_user_type_foreign` FOREIGN KEY (`id_user_type`) REFERENCES `user_type` (`id_user_type`),
  CONSTRAINT `privilege_zone_id_zone_foreign` FOREIGN KEY (`id_zone`) REFERENCES `zone` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.privilege_zone: ~10 rows (aproximadamente)
DELETE FROM `privilege_zone`;
/*!40000 ALTER TABLE `privilege_zone` DISABLE KEYS */;
INSERT INTO `privilege_zone` (`id_privilege_zone`, `id_user_type`, `id_privilege`, `id_zone`, `state`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 2, 1, NULL, NULL),
	(2, 1, 2, 2, 1, NULL, NULL),
	(3, 1, 3, 2, 1, NULL, NULL),
	(4, 1, 4, 2, 1, NULL, NULL),
	(5, 1, 5, 2, 1, NULL, NULL),
	(6, 1, 1, 3, 1, NULL, NULL),
	(7, 1, 2, 3, 1, NULL, NULL),
	(8, 1, 3, 3, 1, NULL, NULL),
	(9, 1, 4, 3, 1, NULL, NULL),
	(10, 1, 5, 3, 1, NULL, NULL);
/*!40000 ALTER TABLE `privilege_zone` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int(10) unsigned NOT NULL,
  `id_subcategory` int(10) unsigned NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_visa` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `online_price` decimal(10,2) NOT NULL,
  `discount` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `outstanding` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `product_id_category_foreign` (`id_category`),
  KEY `product_id_subcategory_foreign` (`id_subcategory`),
  CONSTRAINT `product_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  CONSTRAINT `product_id_subcategory_foreign` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory` (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.product: ~30 rows (aproximadamente)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id_product`, `id_category`, `id_subcategory`, `code`, `name`, `related_product`, `description`, `specification`, `image`, `link_visa`, `regular_price`, `online_price`, `discount`, `stock`, `outstanding`, `state`, `created_at`, `updated_at`) VALUES
	(1, 5, 2, '55-380070-01B-39', 'BOTINES GARGUS BLACK', '["2","3"]', '<strong>Talla</strong>\r\n\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border-width: 0px; vertical-align: baseline; font-style: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;">39, 40, 41, 42, 43, 44<br /><br /></p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border-width: 0px; vertical-align: baseline; font-style: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;"><br /></p>', '<p><strong>Color	</strong><br />Black, Brown, CAMEL<br /></p>', '/storage/products/3_1603556347.jpg', NULL, 380.00, 265.00, 0, 0, 1, 1, NULL, '2020-10-25 08:53:34'),
	(2, 5, 2, '55-380070-02B-39', 'BOTINES GARGUS BROWN', '["1","3"]', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '<p><strong>Color	</strong><br />Black, Brown, CAMEL<br /></p>', '/storage/products/1_1603556748.jpg', NULL, 380.00, 265.00, 0, 0, 1, 1, NULL, '2020-10-25 08:54:01'),
	(3, 5, 2, '55-380070-03B-39', 'BOTINES GARGUS CAMEL', '["1","2"]', '<p><strong>Color	</strong><br />Black, Brown, CAMEL<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603623430.jpg', NULL, 380.00, 265.00, 0, 0, 1, 1, NULL, '2020-10-25 08:54:24'),
	(4, 5, 2, 'N/D', 'ZAPATILLAS OUTDOORS VENATOR BLACK / GREY', '["5","6"]', '<p><strong>Color	</strong><br />BLACK / GREY, GREY/RED, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603623621.jpg', NULL, 350.00, 235.00, 0, 0, 1, 1, NULL, '2020-10-25 08:46:59'),
	(5, 5, 2, '55-380065-02B-39', 'ZAPATILLAS OUTDOORS VENATOR GREY/RED', '["4","6"]', '<p><strong>Color	</strong><br />BLACK / GREY, GREY/RED, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603624157.jpg', NULL, 350.00, 235.00, 0, 0, 0, 1, NULL, '2020-10-25 08:47:16'),
	(6, 5, 2, '55-380065-03B-39', 'ZAPATILLAS OUTDOORS VENATOR NAVY', '["4","5"]', '<p><strong>Color	</strong><br />BLACK / GREY, GREY/RED, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603624349.jpg', NULL, 350.00, 235.00, 0, 0, 0, 1, NULL, '2020-10-25 08:47:31'),
	(7, 5, 2, 'N/D1', 'ZAPATILLAS OUTDOORS BELLUS BLACK', '["24","25"]', '<p><strong>Color	</strong><br />Black<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603624604.jpg', NULL, 350.00, 235.00, 0, 0, 0, 1, NULL, '2020-10-25 08:51:21'),
	(8, 5, 2, 'N/D2', 'ZAPATILLAS OUTDOORS BRACHO GREY/NAVY', '["9","26"]', '<p><strong>Color	</strong><br />GREY/NAVY, NAVY/GREY/YELLOW<br /></p>', '<p>Talla <br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603626269.jpg', NULL, 350.00, 235.00, 0, 0, 0, 1, NULL, '2020-10-25 08:52:04'),
	(9, 5, 2, '55-380068-03B-39', 'ZAPATILLAS OUTDOORS BRACHO NAVY/GREY/YELLOW', '["8","26"]', '<p><strong>Color	</strong><br />GREY/NAVY, NAVY/GREY/YELLOW<br /></p>', '<p>Talla <br />39, 40, 41, 42, 43, 44<br /></p>', '/storage/products/1_1603626104.jpg', NULL, 350.00, 235.00, 0, 0, 1, 1, NULL, '2020-10-25 08:52:21'),
	(10, 4, 3, '55-050052-02B-39', 'ZAPATILLA URBANA ARLO BLACK', '["11","12","13"]', '<p><strong>Color	</strong><br />Black, DK BROWN, Grey, NAVY / RED<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603626869.jpg', NULL, 350.00, 225.00, 0, 0, 1, 1, NULL, '2020-10-25 06:54:29'),
	(11, 4, 3, '55-050052-04B-39', 'ZAPATILLA URBANA ARLO DK BROWN', '["10","12","13"]', '<p><strong>Color	</strong><br />Black, DK BROWN, Grey, NAVY / RED<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603627090.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 06:58:10'),
	(12, 4, 3, '55-050052-03B-39', 'ZAPATILLA URBANA ARLO GREY', '["10","11","13"]', '<p><strong>Color	</strong><br />Black, DK BROWN, Grey, NAVY / RED<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603627126.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 06:58:46'),
	(13, 4, 3, '55-050052-01B-39', 'ZAPATILLA URBANA ARLO NAVY / RED', '["10","11","12"]', '<p><strong>Color	</strong><br />Black, DK BROWN, Grey, NAVY / RED<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603627288.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:01:28'),
	(14, 4, 3, '55-050064-02B-39', 'ZAPATILLAS URBANAS JANEM bBACK -GREY', '["15","16","17"]', '<p><strong>Color	</strong><br />BLACK / GREY, CAMEL/BROWN, DK BROWN / CAMEL, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603627630.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:07:10'),
	(15, 4, 3, '55-050064-01B-39', 'ZAPATILLAS URBANAS JANEM GREY, CAMEL', '["14","16","17"]', '<p><strong>Color	</strong><br />BLACK / GREY, CAMEL/BROWN, DK BROWN / CAMEL, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603627841.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:10:41'),
	(16, 4, 3, '55-050064-04B-39', 'ZAPATILLAS URBANAS JANEM BROWN, DK BROWN', '["14","15","17"]', '<p><strong>Color	</strong><br />BLACK / GREY, CAMEL/BROWN, DK BROWN / CAMEL, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603628001.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:13:21'),
	(17, 4, 3, '55-050064-03B-39', 'ZAPATILLAS URBANAS JANEM CAMEL, NAVY', '["14","15","16"]', '<p><strong>Color	</strong><br />BLACK / GREY, CAMEL/BROWN, DK BROWN / CAMEL, NAVY<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603628189.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:16:29'),
	(18, 4, 3, 'N/D3', 'ZAPATILLAS URBANAS PENTA CAMEL', '["19","29"]', '<p><strong>Color	</strong><br />CAMEL, D. BROWN<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603628645.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:24:05'),
	(19, 4, 3, '55-050063-03B-39', 'ZAPATILLAS URBANAS PENTA BROWN', '["18","29"]', '<p><strong>Color	</strong><br />CAMEL, D. BROWN<br /></p>', '<p><strong>Talla</strong> <br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603628610.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:23:30'),
	(20, 4, 3, '55-050055-02B-39', 'ZAPATILLAS URBANAS TRICE Black', '["21","22"]', '<p><strong>Color	</strong><br />CAMEL, D. BROWN<br /></p>', '<p><strong>Talla</strong> <br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603629015.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:30:15'),
	(21, 4, 3, '55-050055-01B-39', 'ZAPATILLAS URBANAS TRICE CAMEL', '["20","22"]', '<p><strong>Color	</strong><br />CAMEL, D. BROWN<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603629143.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:32:23'),
	(22, 4, 3, '55-050055-03B-39', 'ZAPATILLAS URBANAS TRICE DK BROWN', '["20","21"]', '<p><strong>Color	</strong><br />CAMEL, D. BROWN<br /></p>', '<p><strong>Talla	</strong><br />39, 40, 41, 42, 43, 44, 45<br /></p>', '/storage/products/1_1603629358.jpg', NULL, 350.00, 225.00, 0, 0, 0, 1, NULL, '2020-10-25 07:35:58'),
	(23, 4, 3, '55-180049-01B', 'CALZADO CASUAL MIMUS BLACK', '["30"]', '', '', '/storage/products/1_1603416712.jpg', NULL, 250.00, 250.00, 0, 0, 1, 1, '2020-10-22 20:31:52', '2020-10-25 07:40:30'),
	(24, 5, 2, '55-380067-02B', 'ZAPATILLA OUTDOORS BELLUS DK BROWS - SAND', '["7","25"]', '', '', '/storage/products/1_1603625245.jpg', NULL, 350.00, 350.00, 0, 0, 0, 1, '2020-10-25 06:27:25', '2020-10-25 08:51:36'),
	(25, 5, 2, '55-380067-03B', 'ZAPATILLA OUTDOORS BELLUS DK  GREY', '["7","24"]', '', '', '/storage/products/1_1603625359.jpg', NULL, 350.00, 350.00, 0, 0, 0, 1, '2020-10-25 06:29:19', '2020-10-25 08:51:49'),
	(26, 5, 2, '55.380068-01B', 'ZAPATILLA OUTDOORS BRACHO GREY BLACK', '["8","9"]', '', '', '/storage/products/1_1603625934.jpg', NULL, 350.00, 350.00, 0, 0, 0, 1, '2020-10-25 06:38:54', '2020-10-25 08:52:49'),
	(27, 5, 2, '55-380066-02B', 'BOTIN BARUS GREY', '["28"]', '', '', '/storage/products/1_1603626567.jpg', NULL, 380.00, 380.00, 0, 0, 0, 1, '2020-10-25 06:49:27', '2020-10-25 08:47:58'),
	(28, 5, 2, '55-380066-03B', 'BOTIN BARUS NAVY', '["27"]', '', '', '/storage/products/7_1603626644.jpg', NULL, 385.00, 385.00, 0, 0, 0, 1, '2020-10-25 06:50:44', '2020-10-25 08:48:53'),
	(29, 4, 3, '55-050063-02B', 'ZAPATILLAS CASUALES PENTA BACK', '["18","19"]', '', '', '/storage/products/1_1603628434.jpg', NULL, 350.00, 350.00, 0, 0, 0, 1, '2020-10-25 07:20:34', '2020-10-25 07:20:34'),
	(30, 4, 3, '55-180049-02B', 'ZAPATILLAS CASUALES MIMUS CAMEL', '["23"]', '', '', '/storage/products/1_1603629509.jpg', NULL, 350.00, 350.00, 0, 0, 0, 1, '2020-10-25 07:38:29', '2020-10-25 07:38:29');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.product_photo
DROP TABLE IF EXISTS `product_photo`;
CREATE TABLE IF NOT EXISTS `product_photo` (
  `id_product_photo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_product_photo`),
  KEY `product_photo_id_product_foreign` (`id_product`),
  CONSTRAINT `product_photo_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.product_photo: ~181 rows (aproximadamente)
DELETE FROM `product_photo`;
/*!40000 ALTER TABLE `product_photo` DISABLE KEYS */;
INSERT INTO `product_photo` (`id_product_photo`, `id_product`, `image`, `state`, `created_at`, `updated_at`) VALUES
	(127, 1, '/storage/products/photos/1_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(128, 1, '/storage/products/photos/2_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(129, 1, '/storage/products/photos/4_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(130, 1, '/storage/products/photos/5_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(131, 1, '/storage/products/photos/6_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(132, 1, '/storage/products/photos/7_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(133, 1, '/storage/products/photos/8_1603556443.jpg', 1, '2020-10-24 11:20:43', '2020-10-24 11:20:43'),
	(134, 2, '/storage/products/photos/2_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(135, 2, '/storage/products/photos/3_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(136, 2, '/storage/products/photos/4_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(137, 2, '/storage/products/photos/5_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(138, 2, '/storage/products/photos/6_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(139, 2, '/storage/products/photos/7_1603556972.jpg', 1, '2020-10-24 11:29:32', '2020-10-24 11:29:32'),
	(140, 3, '/storage/products/photos/2_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(141, 3, '/storage/products/photos/3_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(142, 3, '/storage/products/photos/4_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(143, 3, '/storage/products/photos/5_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(144, 3, '/storage/products/photos/6_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(145, 3, '/storage/products/photos/7_1603623512.jpg', 1, '2020-10-25 05:58:32', '2020-10-25 05:58:32'),
	(146, 4, '/storage/products/photos/2_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(147, 4, '/storage/products/photos/3_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(148, 4, '/storage/products/photos/4_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(149, 4, '/storage/products/photos/5_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(150, 4, '/storage/products/photos/6_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(151, 4, '/storage/products/photos/7_1603623760.jpg', 1, '2020-10-25 06:02:40', '2020-10-25 06:02:40'),
	(152, 5, '/storage/products/photos/2_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(153, 5, '/storage/products/photos/3_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(154, 5, '/storage/products/photos/4_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(155, 5, '/storage/products/photos/5_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(156, 5, '/storage/products/photos/6_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(157, 5, '/storage/products/photos/7_1603624285.jpg', 1, '2020-10-25 06:11:25', '2020-10-25 06:11:25'),
	(158, 6, '/storage/products/photos/2_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(159, 6, '/storage/products/photos/3_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(160, 6, '/storage/products/photos/4_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(161, 6, '/storage/products/photos/5_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(162, 6, '/storage/products/photos/6_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(163, 6, '/storage/products/photos/7_1603624489.jpg', 1, '2020-10-25 06:14:49', '2020-10-25 06:14:49'),
	(164, 7, '/storage/products/photos/2_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(165, 7, '/storage/products/photos/3_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(166, 7, '/storage/products/photos/4_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(167, 7, '/storage/products/photos/5_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(168, 7, '/storage/products/photos/6_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(169, 7, '/storage/products/photos/7_1603624678.jpg', 1, '2020-10-25 06:17:58', '2020-10-25 06:17:58'),
	(170, 24, '/storage/products/photos/2_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(171, 24, '/storage/products/photos/3_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(172, 24, '/storage/products/photos/4_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(173, 24, '/storage/products/photos/5_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(174, 24, '/storage/products/photos/6_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(175, 24, '/storage/products/photos/7_1603625494.jpg', 1, '2020-10-25 06:31:34', '2020-10-25 06:31:34'),
	(176, 25, '/storage/products/photos/2_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(177, 25, '/storage/products/photos/3_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(178, 25, '/storage/products/photos/4_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(179, 25, '/storage/products/photos/5_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(180, 25, '/storage/products/photos/6_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(181, 25, '/storage/products/photos/7_1603625570.jpg', 1, '2020-10-25 06:32:50', '2020-10-25 06:32:50'),
	(182, 26, '/storage/products/photos/2_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(183, 26, '/storage/products/photos/3_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(184, 26, '/storage/products/photos/4_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(185, 26, '/storage/products/photos/5_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(186, 26, '/storage/products/photos/6_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(187, 26, '/storage/products/photos/7_1603626028.jpg', 1, '2020-10-25 06:40:28', '2020-10-25 06:40:28'),
	(188, 9, '/storage/products/photos/2_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(189, 9, '/storage/products/photos/3_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(190, 9, '/storage/products/photos/4_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(191, 9, '/storage/products/photos/5_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(192, 9, '/storage/products/photos/6_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(193, 9, '/storage/products/photos/7_1603626205.jpg', 1, '2020-10-25 06:43:25', '2020-10-25 06:43:25'),
	(194, 8, '/storage/products/photos/2_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(195, 8, '/storage/products/photos/3_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(196, 8, '/storage/products/photos/4_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(197, 8, '/storage/products/photos/5_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(198, 8, '/storage/products/photos/6_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(199, 8, '/storage/products/photos/7_1603626359.jpg', 1, '2020-10-25 06:45:59', '2020-10-25 06:45:59'),
	(200, 27, '/storage/products/photos/2_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(201, 27, '/storage/products/photos/3_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(202, 27, '/storage/products/photos/4_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(203, 27, '/storage/products/photos/5_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(204, 27, '/storage/products/photos/6_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(205, 27, '/storage/products/photos/7_1603626736.jpg', 1, '2020-10-25 06:52:16', '2020-10-25 06:52:16'),
	(206, 28, '/storage/products/photos/1_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(207, 28, '/storage/products/photos/2_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(208, 28, '/storage/products/photos/3_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(209, 28, '/storage/products/photos/4_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(210, 28, '/storage/products/photos/5_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(211, 28, '/storage/products/photos/6_1603626817.jpg', 1, '2020-10-25 06:53:37', '2020-10-25 06:53:37'),
	(212, 10, '/storage/products/photos/2_1603626944.jpg', 1, '2020-10-25 06:55:44', '2020-10-25 06:55:44'),
	(213, 10, '/storage/products/photos/3_1603626944.jpg', 1, '2020-10-25 06:55:44', '2020-10-25 06:55:44'),
	(214, 10, '/storage/products/photos/4_1603626944.jpg', 1, '2020-10-25 06:55:44', '2020-10-25 06:55:44'),
	(215, 10, '/storage/products/photos/5_1603626944.jpg', 1, '2020-10-25 06:55:44', '2020-10-25 06:55:44'),
	(216, 10, '/storage/products/photos/6_1603626945.jpg', 1, '2020-10-25 06:55:45', '2020-10-25 06:55:45'),
	(217, 10, '/storage/products/photos/7_1603626945.jpg', 1, '2020-10-25 06:55:45', '2020-10-25 06:55:45'),
	(218, 11, '/storage/products/photos/2_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(219, 11, '/storage/products/photos/3_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(220, 11, '/storage/products/photos/4_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(221, 11, '/storage/products/photos/5_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(222, 11, '/storage/products/photos/6_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(223, 11, '/storage/products/photos/7_1603627041.jpg', 1, '2020-10-25 06:57:21', '2020-10-25 06:57:21'),
	(224, 12, '/storage/products/photos/2_1603627220.jpg', 1, '2020-10-25 07:00:20', '2020-10-25 07:00:20'),
	(225, 12, '/storage/products/photos/3_1603627220.jpg', 1, '2020-10-25 07:00:20', '2020-10-25 07:00:20'),
	(226, 12, '/storage/products/photos/4_1603627220.jpg', 1, '2020-10-25 07:00:20', '2020-10-25 07:00:20'),
	(227, 12, '/storage/products/photos/5_1603627220.jpg', 1, '2020-10-25 07:00:20', '2020-10-25 07:00:20'),
	(228, 12, '/storage/products/photos/6_1603627220.jpg', 1, '2020-10-25 07:00:20', '2020-10-25 07:00:20'),
	(229, 12, '/storage/products/photos/7_1603627221.jpg', 1, '2020-10-25 07:00:21', '2020-10-25 07:00:21'),
	(230, 13, '/storage/products/photos/2_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(231, 13, '/storage/products/photos/3_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(232, 13, '/storage/products/photos/4_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(233, 13, '/storage/products/photos/5_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(234, 13, '/storage/products/photos/6_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(235, 13, '/storage/products/photos/7_1603627457.jpg', 1, '2020-10-25 07:04:17', '2020-10-25 07:04:17'),
	(236, 14, '/storage/products/photos/2_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(237, 14, '/storage/products/photos/3_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(238, 14, '/storage/products/photos/4_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(239, 14, '/storage/products/photos/5_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(240, 14, '/storage/products/photos/6_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(241, 14, '/storage/products/photos/7_1603627788.jpg', 1, '2020-10-25 07:09:48', '2020-10-25 07:09:48'),
	(242, 15, '/storage/products/photos/2_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(243, 15, '/storage/products/photos/3_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(244, 15, '/storage/products/photos/4_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(245, 15, '/storage/products/photos/5_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(246, 15, '/storage/products/photos/6_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(247, 15, '/storage/products/photos/7_1603627922.jpg', 1, '2020-10-25 07:12:02', '2020-10-25 07:12:02'),
	(248, 16, '/storage/products/photos/2_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(249, 16, '/storage/products/photos/3_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(250, 16, '/storage/products/photos/4_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(251, 16, '/storage/products/photos/5_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(252, 16, '/storage/products/photos/6_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(253, 16, '/storage/products/photos/7_1603628139.jpg', 1, '2020-10-25 07:15:39', '2020-10-25 07:15:39'),
	(254, 17, '/storage/products/photos/2_1603628262.jpg', 1, '2020-10-25 07:17:42', '2020-10-25 07:17:42'),
	(255, 17, '/storage/products/photos/3_1603628262.jpg', 1, '2020-10-25 07:17:42', '2020-10-25 07:17:42'),
	(256, 17, '/storage/products/photos/4_1603628262.jpg', 1, '2020-10-25 07:17:42', '2020-10-25 07:17:42'),
	(257, 17, '/storage/products/photos/5_1603628262.jpg', 1, '2020-10-25 07:17:43', '2020-10-25 07:17:43'),
	(258, 17, '/storage/products/photos/6_1603628263.jpg', 1, '2020-10-25 07:17:43', '2020-10-25 07:17:43'),
	(259, 17, '/storage/products/photos/7_1603628263.jpg', 1, '2020-10-25 07:17:43', '2020-10-25 07:17:43'),
	(260, 29, '/storage/products/photos/2_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(261, 29, '/storage/products/photos/3_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(262, 29, '/storage/products/photos/4_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(263, 29, '/storage/products/photos/5_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(264, 29, '/storage/products/photos/6_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(265, 29, '/storage/products/photos/7_1603628491.jpg', 1, '2020-10-25 07:21:31', '2020-10-25 07:21:31'),
	(266, 18, '/storage/products/photos/2_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(267, 18, '/storage/products/photos/3_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(268, 18, '/storage/products/photos/4_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(269, 18, '/storage/products/photos/5_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(270, 18, '/storage/products/photos/6_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(271, 18, '/storage/products/photos/7_1603628741.jpg', 1, '2020-10-25 07:25:41', '2020-10-25 07:25:41'),
	(272, 19, '/storage/products/photos/2_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(273, 19, '/storage/products/photos/3_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(274, 19, '/storage/products/photos/4_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(275, 19, '/storage/products/photos/5_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(276, 19, '/storage/products/photos/6_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(277, 19, '/storage/products/photos/7_1603628845.jpg', 1, '2020-10-25 07:27:25', '2020-10-25 07:27:25'),
	(278, 20, '/storage/products/photos/2_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(279, 20, '/storage/products/photos/3_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(280, 20, '/storage/products/photos/4_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(281, 20, '/storage/products/photos/5_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(282, 20, '/storage/products/photos/6_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(283, 20, '/storage/products/photos/7_1603628958.jpg', 1, '2020-10-25 07:29:18', '2020-10-25 07:29:18'),
	(284, 21, '/storage/products/photos/2_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(285, 21, '/storage/products/photos/3_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(286, 21, '/storage/products/photos/4_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(287, 21, '/storage/products/photos/5_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(288, 21, '/storage/products/photos/6_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(289, 21, '/storage/products/photos/7_1603629097.jpg', 1, '2020-10-25 07:31:37', '2020-10-25 07:31:37'),
	(290, 22, '/storage/products/photos/2_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(291, 22, '/storage/products/photos/3_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(292, 22, '/storage/products/photos/4_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(293, 22, '/storage/products/photos/5_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(294, 22, '/storage/products/photos/6_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(295, 22, '/storage/products/photos/7_1603629318.jpg', 1, '2020-10-25 07:35:18', '2020-10-25 07:35:18'),
	(296, 30, '/storage/products/photos/2_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(297, 30, '/storage/products/photos/3_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(298, 30, '/storage/products/photos/4_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(299, 30, '/storage/products/photos/5_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(300, 30, '/storage/products/photos/6_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(301, 30, '/storage/products/photos/7_1603629589.jpg', 1, '2020-10-25 07:39:49', '2020-10-25 07:39:49'),
	(302, 23, '/storage/products/photos/2_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32'),
	(303, 23, '/storage/products/photos/3_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32'),
	(304, 23, '/storage/products/photos/4_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32'),
	(305, 23, '/storage/products/photos/5_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32'),
	(306, 23, '/storage/products/photos/6_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32'),
	(307, 23, '/storage/products/photos/7_1603629692.jpg', 1, '2020-10-25 07:41:32', '2020-10-25 07:41:32');
/*!40000 ALTER TABLE `product_photo` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.promotion
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promotion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `amount_payment` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_promotion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.promotion: ~1 rows (aproximadamente)
DELETE FROM `promotion`;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` (`id_promotion`, `name`, `image`, `product_quantity`, `amount_payment`, `state`, `created_at`, `updated_at`) VALUES
	(2, 'Promoción 2x1', '/storage/promotion/promocion-lg_1602033917.png', 2, 1, 0, '2020-10-06 20:25:17', '2020-10-26 17:50:12');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.subcategory
DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id_subcategory` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_subcategory`),
  KEY `subcategory_id_category_foreign` (`id_category`),
  CONSTRAINT `subcategory_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.subcategory: ~3 rows (aproximadamente)
DELETE FROM `subcategory`;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` (`id_subcategory`, `id_category`, `name`, `description`, `image`, `order_item`, `state`, `created_at`, `updated_at`) VALUES
	(1, 4, 'BOTINES', 'BOTINES', 'default.jpg', 0, 9, NULL, '2020-10-25 09:00:54'),
	(2, 5, 'OUTDOORS', 'OUTDOORS', 'default.jpg', 0, 1, NULL, '2020-10-25 08:43:24'),
	(3, 4, 'CASUALES', 'CASUALES', 'default.jpg', 0, 1, NULL, '2020-10-22 20:29:15');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user_type` int(10) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_id_user_type_foreign` (`id_user_type`),
  CONSTRAINT `users_id_user_type_foreign` FOREIGN KEY (`id_user_type`) REFERENCES `user_type` (`id_user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.users: ~1 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `id_user_type`, `name`, `last_name`, `phone`, `email`, `password`, `remember_token`, `state`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Yonathan William', 'Mamani Calisaya', '928872148', 'admin@gmail.com', '$2y$10$GzSM7AVFPlIIQYp5DQ/WF.ZjH44pKLiFmOz1WY6DuIUWbk5mjb2g2', 'XiHDHPhdV9qFp6olTviOrCxuLspXvjwlV6rslxzoESIApIqf7oSmYLVjLrmS', 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.user_type
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `id_user_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.user_type: ~1 rows (aproximadamente)
DELETE FROM `user_type`;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` (`id_user_type`, `name`, `state`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 1, 'Administrador', NULL, NULL);
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;

-- Volcando estructura para tabla bd_kaemystore.zone
DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bd_kaemystore.zone: ~9 rows (aproximadamente)
DELETE FROM `zone`;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` (`id_zone`, `name`, `module`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'Modulo Usuario', 'Usuario', 1, NULL, NULL),
	(2, 'Modulo Tipo de Usuario', 'TipoUsuario', 1, NULL, NULL),
	(3, 'Modulo Zona Privilegio', 'ZonaPrivilegio', 1, NULL, NULL),
	(4, 'Modulo Cliente', 'Cliente', 1, NULL, NULL),
	(5, 'Modulo Producto', 'Producto', 1, NULL, NULL),
	(6, 'Modulo Comprobante', 'Comprobante', 1, NULL, NULL),
	(7, 'Modulo Empresa', 'Empresa', 1, NULL, NULL),
	(8, 'Modulo Pedido', 'Pedido', 1, NULL, NULL),
	(9, 'Modulo Facturacion', 'Facturacion', 1, NULL, NULL);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
