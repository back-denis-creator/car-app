-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: clflaravel-db
-- ------------------------------------------------------
-- Server version	5.7.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_translations`
--

DROP TABLE IF EXISTS `about_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about_translations_about_id_locale_unique` (`about_id`,`locale`),
  KEY `about_translations_locale_index` (`locale`),
  CONSTRAINT `about_translations_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_translations`
--

LOCK TABLES `about_translations` WRITE;
/*!40000 ALTER TABLE `about_translations` DISABLE KEYS */;
INSERT INTO `about_translations` VALUES (1,1,'en','Turnkey cargo delivery','PROFESSIONAL <br/> SUPPORT','EXPERT IN <br/> FEATURES OF FOREIGN TRADE','<span>WE ARE NOT AFRAID</span> OF BUREAUCRATIC AND GEOGRAPHICAL BARRIERS'),(2,1,'ru','Доставка грузов «под ключ»','ПРОФЕССИОНАЛЬНОЕ <br/> СОПРОВОЖДЕНИЕ','ЭКСПЕРТ В <br/> ОБЛАСТИ ВЭД','<span>НЕ БОИМСЯ</span> БЮРОКРАТИЧЕСКИХ И ГЕОГРАФИЧЕСКИХ БАРЬЕРОВ');
/*!40000 ALTER TABLE `about_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_us_page_translations`
--

DROP TABLE IF EXISTS `about_us_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us_page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about_us_page_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_1` text COLLATE utf8mb4_unicode_ci,
  `description_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` text COLLATE utf8mb4_unicode_ci,
  `description_2` text COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about_us_page_translations_about_us_page_id_locale_unique` (`about_us_page_id`,`locale`),
  KEY `about_us_page_translations_locale_index` (`locale`),
  CONSTRAINT `about_us_page_translations_about_us_page_id_foreign` FOREIGN KEY (`about_us_page_id`) REFERENCES `about_us_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us_page_translations`
--

LOCK TABLES `about_us_page_translations` WRITE;
/*!40000 ALTER TABLE `about_us_page_translations` DISABLE KEYS */;
INSERT INTO `about_us_page_translations` VALUES (1,1,'en','About company','CLF GROUP CARGO DELIVERY ON A TURNKEY','Mission of our company','The mission of our company is to support entrepreneurs. Import? Easy. Export? Even easier. We provide absolute freedom of foreign economic activity. While we work, your profit increases.','Our company specialization','The main specialization of our company is the delivery of goods on a turnkey basis. Delivery from anywhere in the world. Outsourcing of foreign economic activity. Help for entrepreneurs. Absolute support.','',''),(2,1,'ru','О компании','CLF GROUP  ДОСТАВКА ГРУЗОВ ПОД КЛЮЧ','Миссия нашей компании','Миссия нашей компании – поддержка предпринимателей. Импорт? Легко. Экспорт? Еще проще. Обеспечиваем абсолютную свободу внешнеэкономической деятельности. Пока мы работаем, Ваша прибыль повышается.','Специализация нашей компании','Основная специализация нашей компании – доставка грузов «под ключ». Доставка из любой точки мира. Аутсорсинг внешнеэкономической деятельности. Помощь предпринимателям. Абсолютное сопровождение.','','');
/*!40000 ALTER TABLE `about_us_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_us_pages`
--

DROP TABLE IF EXISTS `about_us_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us_pages`
--

LOCK TABLES `about_us_pages` WRITE;
/*!40000 ALTER TABLE `about_us_pages` DISABLE KEYS */;
INSERT INTO `about_us_pages` VALUES (1);
/*!40000 ALTER TABLE `about_us_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1);
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advantage_translations`
--

DROP TABLE IF EXISTS `advantage_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advantage_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advantage_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advantage_translations_advantage_id_locale_unique` (`advantage_id`,`locale`),
  KEY `advantage_translations_locale_index` (`locale`),
  CONSTRAINT `advantage_translations_advantage_id_foreign` FOREIGN KEY (`advantage_id`) REFERENCES `advantages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advantage_translations`
--

LOCK TABLES `advantage_translations` WRITE;
/*!40000 ALTER TABLE `advantage_translations` DISABLE KEYS */;
INSERT INTO `advantage_translations` VALUES (1,1000,'en','individual approach to your issues and a partner who always defends your interests'),(2,1000,'ru','индивидуальный подход к своим вопросам и партнёра, который всегда отстаивает Ваши интересы'),(3,1001,'en','the best rates for customs clearance and delivery'),(4,1001,'ru','лучшие тарифы на таможенное оформление и доставку'),(5,1002,'en','guarantee of security and confidentiality of your business when working with us'),(6,1002,'ru','гарантию безопасности и конфиденциальность Вашего бизнеса при работе с нами'),(7,1003,'en','efficient and high-quality service of your cargoes'),(8,1003,'ru','оперативное и качественное обслуживание Ваших грузов'),(9,1004,'en','full responsibility for the integrity and safety of your cargo'),(10,1004,'ru','полную ответственность за целостность и сохранность Вашего груза');
/*!40000 ALTER TABLE `advantage_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advantages`
--

DROP TABLE IF EXISTS `advantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advantages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advantages`
--

LOCK TABLES `advantages` WRITE;
/*!40000 ALTER TABLE `advantages` DISABLE KEYS */;
INSERT INTO `advantages` VALUES (999),(1000),(1001),(1002),(1003),(1004);
/*!40000 ALTER TABLE `advantages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachmentable`
--

DROP TABLE IF EXISTS `attachmentable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachmentable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attachmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentable_id` int(10) unsigned NOT NULL,
  `attachment_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  KEY `attachmentable_attachment_id_foreign` (`attachment_id`),
  CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachmentable`
--

LOCK TABLES `attachmentable` WRITE;
/*!40000 ALTER TABLE `attachmentable` DISABLE KEYS */;
INSERT INTO `attachmentable` VALUES (1,'App\\Models\\Components\\About',1,1),(2,'App\\Models\\Components\\OurMission',1,2),(3,'App\\Models\\Components\\OurMission',1,3),(4,'App\\Models\\Service',1,4),(5,'App\\Models\\Service',2,5),(6,'App\\Models\\Service',3,6),(7,'App\\Models\\Components\\We',1,8),(8,'App\\Models\\Components\\We',2,9),(9,'App\\Models\\Components\\We',3,10),(10,'App\\Models\\Components\\We',4,11),(11,'App\\Models\\Components\\We',5,12),(12,'App\\Models\\Components\\Number',1,13),(13,'App\\Models\\Components\\Work',2,15),(14,'App\\Models\\Components\\Work',3,16),(15,'App\\Models\\Components\\Work',4,17),(16,'App\\Models\\Components\\Work',5,18),(17,'App\\Models\\Components\\Advantage',999,19),(18,'App\\Models\\Components\\Advantage',999,22),(19,'App\\Models\\Components\\Advantage',999,23),(20,'App\\Models\\Components\\Geography',1,24),(21,'App\\Models\\Components\\Dot',1,25),(22,'App\\Models\\Components\\Dot',2,26),(23,'App\\Models\\Components\\Dot',3,27),(24,'App\\Models\\Components\\Dot',4,28),(25,'App\\Models\\Components\\Dot',5,29),(26,'App\\Models\\Pages\\ContactPage',1,30),(27,'App\\Models\\Pages\\ContactPage',2,31),(28,'App\\Models\\Components\\Benefit',1,33),(29,'App\\Models\\Components\\Benefit',2,34),(30,'App\\Models\\Components\\Benefit',3,35),(31,'App\\Models\\Components\\Benefit',4,36),(32,'App\\Models\\Pages\\AboutUsPage',1,38);
/*!40000 ALTER TABLE `attachmentable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'8db2d6094a3fc7a4985712e67ecb989bce7fc766','about-img.webp','image/webp','webp',97460,0,'2022/01/19/',NULL,NULL,'51250dc10c29ec41b45d119d5212eb532c5e1901','public',1,NULL,'2022-01-19 12:18:53','2022-01-19 12:18:53'),(2,'1bd0762e58d0b61e8a4d4629fdce080f9596a2b7','scott-graham.webp','image/webp','webp',17120,0,'2022/01/19/',NULL,NULL,'16c6a51d2bd296ae7c9e8f6bb7f9a0dc80704ff4','public',1,NULL,'2022-01-19 14:51:44','2022-01-19 14:51:44'),(3,'40e5788a555c54113d22159b958ce4f65c002587','sebastian-herrmann.webp','image/webp','webp',16132,0,'2022/01/19/',NULL,NULL,'4b9bf5455efdb381be63b46c9b7ffaaa28e383f3','public',1,NULL,'2022-01-19 14:51:44','2022-01-19 14:51:44'),(4,'48d6711bff6d115fc8f28c6a5c1f88a408a02dd0','benef1.webp','image/webp','webp',23798,0,'2022/01/21/',NULL,NULL,'f5b827e239cb7dc3be8625282d0b4176f125a0cc','public',1,NULL,'2022-01-21 14:25:03','2022-01-21 14:25:03'),(5,'7b6f22ec13ccca336c669a82fa5a8b98e0f0084e','benef2.webp','image/webp','webp',16400,0,'2022/01/21/',NULL,NULL,'1000bc545a7331a10e056f36320fc811b9f602b3','public',1,NULL,'2022-01-21 14:27:03','2022-01-21 14:27:03'),(6,'d7b2b5b07276b4d8d2f6efe5659dc8213af006ca','austin-distel-744oGeqpxPQ-unsplash.webp','image/webp','webp',19708,0,'2022/01/21/',NULL,NULL,'40b0da5258ec84e99712517eef2ba57d85d2e5bd','public',1,NULL,'2022-01-21 14:27:38','2022-01-21 14:27:38'),(7,'14a74f0c92c2d78af9bf3b965e66a75114884afb','gallery1.webp','image/webp','webp',10156,0,'2022/01/21/',NULL,NULL,'bc5a285ecd49f753c4f255f501f3b1f01b301d2f','public',1,NULL,'2022-01-21 16:12:15','2022-01-21 16:12:15'),(8,'14a74f0c92c2d78af9bf3b965e66a75114884afb','gallery1.webp','image/webp','webp',10156,0,'2022/01/21/',NULL,NULL,'bc5a285ecd49f753c4f255f501f3b1f01b301d2f','public',1,NULL,'2022-01-21 16:13:43','2022-01-21 16:13:43'),(9,'ff6cdf03b770ef12786c13175c878bc7bad2f995','gallery2.webp','image/webp','webp',28062,0,'2022/01/21/',NULL,NULL,'d53a99fc3c11c1c0876f71e7a9ac27da61876da5','public',1,NULL,'2022-01-21 16:14:23','2022-01-21 16:14:23'),(10,'e522046471ee475e1353751a9d6a227011055eac','gallery3.webp','image/webp','webp',17280,0,'2022/01/21/',NULL,NULL,'3c6b8efc8e26198468946d4283f75abb61b65df6','public',1,NULL,'2022-01-21 16:15:03','2022-01-21 16:15:03'),(11,'5c8fceeb2dfcf2714bff879e89450847f211ba0d','gallery4.webp','image/webp','webp',11464,0,'2022/01/21/',NULL,NULL,'ddbf9d4b625d6c83910648b1437f9848fd2ed0c1','public',1,NULL,'2022-01-21 16:20:45','2022-01-21 16:20:45'),(12,'67bb35749abea6397c773d3accec2e763fe9f097','gallery5.webp','image/webp','webp',30958,0,'2022/01/21/',NULL,NULL,'827e40853e89520707fad39bb8e73abaf2f937a1','public',1,NULL,'2022-01-21 16:21:15','2022-01-21 16:21:15'),(13,'a3d5bff1f140e05fd24fcc68b242d7fd7647e705','num-img.webp','image/webp','webp',34154,0,'2022/01/24/',NULL,NULL,'f3319480ec540bb54a79deb000b3f8eb99b45115','public',1,NULL,'2022-01-24 13:27:32','2022-01-24 13:27:32'),(14,'35d69aefb052ad2488a3106ed0f2749eb06d3e38','work-step1.webp','image/webp','webp',27854,0,'2022/01/24/',NULL,NULL,'77ed20a84b40dbdf4db65f5d656a517c38dc8285','public',1,NULL,'2022-01-24 14:47:17','2022-01-24 14:47:17'),(15,'35d69aefb052ad2488a3106ed0f2749eb06d3e38','work-step1.webp','image/webp','webp',27854,0,'2022/01/24/',NULL,NULL,'77ed20a84b40dbdf4db65f5d656a517c38dc8285','public',1,NULL,'2022-01-24 14:48:01','2022-01-24 14:48:01'),(16,'5e47ca972265f41878321e1907c983d739ee934d','work-step2.webp','image/webp','webp',10764,0,'2022/01/24/',NULL,NULL,'bf665d369c3a1d6741788fba49c6b51c92ca496b','public',1,NULL,'2022-01-24 14:58:58','2022-01-24 14:58:58'),(17,'0cdc3ca3a22e5b38278c7cbd901e1eed91e54784','work-step3.webp','image/webp','webp',6768,0,'2022/01/24/',NULL,NULL,'7e7b02673a0ff3f58bdc1a1311100c8faab2bee3','public',1,NULL,'2022-01-24 14:59:33','2022-01-24 14:59:33'),(18,'4f6b3a02ec3ad792767635782448ce422a2c3685','work-step4.webp','image/webp','webp',22316,0,'2022/01/24/',NULL,NULL,'9d5d761523fdaa887116286d15b90f8344146ab3','public',1,NULL,'2022-01-24 15:00:02','2022-01-24 15:00:02'),(19,'48d6711bff6d115fc8f28c6a5c1f88a408a02dd0','benef1.webp','image/webp','webp',23798,0,'2022/01/21/',NULL,NULL,'f5b827e239cb7dc3be8625282d0b4176f125a0cc','public',1,NULL,'2022-01-24 16:41:15','2022-01-24 16:41:15'),(20,'7b6f22ec13ccca336c669a82fa5a8b98e0f0084e','benef2.webp','image/webp','webp',16400,0,'2022/01/21/',NULL,NULL,'1000bc545a7331a10e056f36320fc811b9f602b3','public',1,NULL,'2022-01-24 16:44:56','2022-01-24 16:44:56'),(21,'4d525c19550a87e95d5604e2bf549c7192287c4e','benef3.webp','image/webp','webp',14390,0,'2022/01/24/',NULL,NULL,'a0adcfe69d37a30fa2371f90ed7ef52de0618ba4','public',1,NULL,'2022-01-24 16:45:02','2022-01-24 16:45:02'),(22,'7b6f22ec13ccca336c669a82fa5a8b98e0f0084e','benef2.webp','image/webp','webp',16400,0,'2022/01/21/',NULL,NULL,'1000bc545a7331a10e056f36320fc811b9f602b3','public',1,NULL,'2022-01-24 16:45:53','2022-01-24 16:45:53'),(23,'4d525c19550a87e95d5604e2bf549c7192287c4e','benef3.webp','image/webp','webp',14390,0,'2022/01/24/',NULL,NULL,'a0adcfe69d37a30fa2371f90ed7ef52de0618ba4','public',1,NULL,'2022-01-24 16:45:58','2022-01-24 16:45:58'),(24,'e51e2cedb26d37713683b443b87cbbd909b5698e','earth-astronomical-clock.webp','image/webp','webp',121422,0,'2022/01/25/',NULL,NULL,'26b6968cd6cd4fea3f5f2cdb60da2be240c7ec3d','public',1,NULL,'2022-01-25 09:42:53','2022-01-25 09:42:53'),(25,'9cb9985dd0851550fdffc50a21dc38366bae253d','delivery-img.webp','image/webp','webp',43508,0,'2022/01/25/',NULL,NULL,'967f842274f0c653118099bb6005452964db8ac6','public',1,NULL,'2022-01-25 10:37:02','2022-01-25 10:37:02'),(26,'c579e3568fdf3fea08a98962347de085db444675','Rail-transport.webp','image/webp','webp',10884,0,'2022/01/25/',NULL,NULL,'94a566595c06d358b9234a674558691ec1bbb02e','public',1,NULL,'2022-01-25 10:40:53','2022-01-25 10:40:53'),(27,'894f283f4de6a49f891a875387966788f365a5f2','plain.webp','image/webp','webp',7896,0,'2022/01/25/',NULL,NULL,'0d29a5f6d89e3567f3a6eeecc9b2eab2df395c5a','public',1,NULL,'2022-01-25 10:45:17','2022-01-25 10:45:17'),(28,'b90e050eb62dcfd3afe60cc131d984a59b2584f6','ship.webp','image/webp','webp',8136,0,'2022/01/25/',NULL,NULL,'217338c10aeec14beef54fb789c760d665f84835','public',1,NULL,'2022-01-25 10:46:16','2022-01-25 10:46:16'),(29,'75defe7905a38741db4f46b7efdc7bf4ca385fe4','track.webp','image/webp','webp',4928,0,'2022/01/25/',NULL,NULL,'ee4450518865e36b7b1cbf464dc91990ddab65f7','public',1,NULL,'2022-01-25 10:47:12','2022-01-25 10:47:12'),(30,'7ea50daeddc9adf4702327a520f3e75885d9d6c8','DniproMap.png','image/png','png',418792,0,'2022/01/28/',NULL,NULL,'17b64e26ac55b06b76990b4aebcb733b88192b70','public',1,NULL,'2022-01-28 11:12:47','2022-01-28 11:12:47'),(31,'4577fccdddb972a44d3aa305436821282b5c0f5b','KievMap.png','image/png','png',292684,0,'2022/01/28/',NULL,NULL,'732869fd11694b0e9db1a4c61d1597c8511146e3','public',1,NULL,'2022-01-28 11:15:00','2022-01-28 11:15:00'),(32,'0196b60d4e5fe5eb67698e709dae7b21db63ba8b','serv-subscr2-1.webp','image/webp','webp',12188,0,'2022/01/28/',NULL,NULL,'ab0a7fbb5aabb5e8f4e88b150368e3021b79453f','public',1,NULL,'2022-01-28 12:55:48','2022-01-28 12:55:48'),(33,'0196b60d4e5fe5eb67698e709dae7b21db63ba8b','serv-subscr2-1.webp','image/webp','webp',12188,0,'2022/01/28/',NULL,NULL,'ab0a7fbb5aabb5e8f4e88b150368e3021b79453f','public',1,NULL,'2022-01-28 12:57:17','2022-01-28 12:57:17'),(34,'1f492a5207e16ca1d836ac528dd92868b3037ae8','serv-subscr2-2.webp','image/webp','webp',16284,0,'2022/01/28/',NULL,NULL,'22ab1c042e1d44b050ee86633f6613c1967f98a2','public',1,NULL,'2022-01-28 12:59:55','2022-01-28 12:59:55'),(35,'322d29e09c76e0a866f979f708d5c791145c3ae2','serv-subscr2-3.webp','image/webp','webp',10996,0,'2022/01/28/',NULL,NULL,'6a04e6072b2b979ed783aa67a62a287ae654a026','public',1,NULL,'2022-01-28 13:00:45','2022-01-28 13:00:45'),(36,'b190ce0ce6bb409e932f6e7a99e2121b7cc86936','serv-subscr2-4.webp','image/webp','webp',7666,0,'2022/01/28/',NULL,NULL,'cb42e4cb78d6a62b4785c0e527bac3eb4a394a6d','public',1,NULL,'2022-01-28 13:01:31','2022-01-28 13:01:31'),(38,'8efbc95a8bb017974ef38213a08db02603361065','aboutCompMain.webp','image/webp','webp',121758,0,'2022/01/31/',NULL,NULL,'d751b97d71247d899f012f06d3dd11292aefb7a9','public',1,NULL,'2022-01-31 13:30:29','2022-01-31 13:30:29');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_data`
--

DROP TABLE IF EXISTS `benefit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_data`
--

LOCK TABLES `benefit_data` WRITE;
/*!40000 ALTER TABLE `benefit_data` DISABLE KEYS */;
INSERT INTO `benefit_data` VALUES (1,'IT\'S FAVORABLE WITH US!','С НАМИ ВЫГОДНО!');
/*!40000 ALTER TABLE `benefit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_translations`
--

DROP TABLE IF EXISTS `benefit_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `benefit_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `benefit_translations_benefit_id_locale_unique` (`benefit_id`,`locale`),
  KEY `benefit_translations_locale_index` (`locale`),
  CONSTRAINT `benefit_translations_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_translations`
--

LOCK TABLES `benefit_translations` WRITE;
/*!40000 ALTER TABLE `benefit_translations` DISABLE KEYS */;
INSERT INTO `benefit_translations` VALUES (1,1,'en','Safety','<p>We always insure cargo so that you don\'t have to worry about its safety. Also, you can always track the movement of goods along the entire route.</p>'),(2,1,'ru','Безопасность','<p>Мы всегда страхуем грузы, чтобы вы могли не переживать за его сохранность. Также вы всегда можете отследить перемещение товара на всём пути следования.</p>'),(3,2,'en','Speed','<p>We always choose the best route and method of delivery for you and guarantee transportation on time.</p>'),(4,2,'ru','Скорость','<p><span style=\"color: rgb(44, 42, 39);\">Мы всегда выбираем для вас оптимальный маршрут и способ доставки и гарантируем перевозку в установленные сроки.</span></p>'),(5,3,'en','Individual approach','<p>We calculate the price individually for each client. In addition, each of our customers receives a personal manager who is always open to dialogue.</p>'),(6,3,'ru','Индивидуальный подход','<p><span style=\"background-color: rgb(249, 249, 249); color: rgb(44, 42, 39);\">Мы рассчитываем цену персонально для каждого клиента. Кроме того, каждый наш заказчик получает персонального менеджера, всегда открытого к диалогу.</span></p>'),(7,4,'en','Turnkey delivery','<p>Thanks to us, you can not only worry about delivery and integrity, but also in legal matters. We take care of the cargo from registration to delivery.</p>'),(8,4,'ru','Доставка «под ключ»','<p><span style=\"color: rgb(44, 42, 39);\">Благодаря нам Вы можете не волноваться не только по поводу доставки и целостности, но и в юридических вопросах. Мы берем на себя сопровождение груза от оформления до доставки.</span></p>');
/*!40000 ALTER TABLE `benefit_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callbacks`
--

DROP TABLE IF EXISTS `callbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `to_call_date` date DEFAULT NULL,
  `to_call_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callbacks`
--

LOCK TABLES `callbacks` WRITE;
/*!40000 ALTER TABLE `callbacks` DISABLE KEYS */;
INSERT INTO `callbacks` VALUES (2,'Денисе па па па','+ 38 (067) 900-95-07','johndoe@gmail.com','767676767',NULL,NULL,'2022-01-31 11:10:02','2022-01-31 11:10:02'),(3,'Денисе па па па','+ 38 (067) 900-95-07','johndoe@gmail.com','767676767',NULL,NULL,'2022-01-31 11:10:43','2022-01-31 11:10:43'),(4,'Денис Басараб','+ 38 (067) 900-95-00','johndoe@gmail.com','tretretreter',NULL,NULL,'2022-01-31 11:14:50','2022-01-31 11:14:50'),(5,'Денис Басараб','+ 38 (067) 900-95-00','johndoe@gmail.com','tretretreter',NULL,NULL,'2022-01-31 11:14:59','2022-01-31 11:14:59'),(6,'Денис Басараб','+ 38 (067) 900-95-00','johndoe@gmail.com','tretretreter',NULL,NULL,'2022-01-31 11:16:13','2022-01-31 11:16:13'),(7,'Денис Басараб','+ 38 (067) 900-95-00','johndoe@gmail.com','tretretreter',NULL,'14:21:00','2022-01-31 11:18:33','2022-01-31 11:18:33'),(8,'Денис Басараб','+ 38 (067) 900-95-00','johndoe@gmail.com','tretretreter',NULL,'14:21:00','2022-01-31 11:21:32','2022-01-31 11:21:32'),(9,'Денис Басараб','+ 38 (099) 898-98-98','johndoe@gmail.com','987978987978',NULL,NULL,'2022-01-31 11:24:16','2022-01-31 11:24:16'),(10,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:24:33','2022-01-31 11:24:33'),(11,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,'2022-03-28','13:27:00','2022-01-31 11:27:36','2022-01-31 11:27:36'),(12,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:30:44','2022-01-31 11:30:44'),(13,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:32:02','2022-01-31 11:32:02'),(14,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:32:42','2022-01-31 11:32:42'),(15,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com','6666','2022-01-05','16:39:00','2022-01-31 11:34:08','2022-01-31 11:34:08'),(16,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:58:07','2022-01-31 11:58:07'),(17,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 11:58:43','2022-01-31 11:58:43'),(18,'Денис Басараб','+ 38 (067) 900-95-07','11111@gmail.com','rewrewrewrew',NULL,NULL,'2022-01-31 11:59:52','2022-01-31 11:59:52'),(19,'Denis','+ 38 (067) 900-90-87','johndoe@gmail.com',NULL,NULL,'15:42:00','2022-01-31 12:56:28','2022-01-31 12:56:28'),(20,'Денис Басараб','+ 38 (067) 900-95-07','johndoe@gmail.com',NULL,NULL,NULL,'2022-01-31 12:58:57','2022-01-31 12:58:57');
/*!40000 ALTER TABLE `callbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'slogan-en','<span>IS MORE</span> <br /> than just logistics'),(2,'slogan-ru','<span>БОЛЬШЕ</span> <br /> чем просто логистика'),(3,'company','CLF Group'),(4,'telephone','+38 (067) 900-95-07'),(5,'instagram','https://www.instagram.com/'),(6,'facebook','https://www.facebook.com/');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_page_data`
--

DROP TABLE IF EXISTS `contact_page_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_page_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_page_data`
--

LOCK TABLES `contact_page_data` WRITE;
/*!40000 ALTER TABLE `contact_page_data` DISABLE KEYS */;
INSERT INTO `contact_page_data` VALUES (1,'Contacts','Контакты','<p>CONTACT US, WE WILL BE HAPPY TO ANSWER YOUR QUESTIONS</p>','<p>СВЯЖИТЕСЬ С НАМИ, МЫ С РАДОСТЬЮ ОТВЕТИМ НА ВАШИ ВОПРОСЫ</p>');
/*!40000 ALTER TABLE `contact_page_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_page_translations`
--

DROP TABLE IF EXISTS `contact_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_page_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_page_translations_contact_page_id_locale_unique` (`contact_page_id`,`locale`),
  KEY `contact_page_translations_locale_index` (`locale`),
  CONSTRAINT `contact_page_translations_contact_page_id_foreign` FOREIGN KEY (`contact_page_id`) REFERENCES `contact_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_page_translations`
--

LOCK TABLES `contact_page_translations` WRITE;
/*!40000 ALTER TABLE `contact_page_translations` DISABLE KEYS */;
INSERT INTO `contact_page_translations` VALUES (1,1,'en','Dnipro','Ukraine, Dnipro',NULL,NULL),(2,1,'ru','Дніпро','Украина, г. Днепр',NULL,NULL),(3,2,'en','Kiev','Ukraine, Kiev',NULL,NULL),(4,2,'ru','Киев','Украина, г. Киев',NULL,NULL);
/*!40000 ALTER TABLE `contact_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_pages`
--

DROP TABLE IF EXISTS `contact_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_pages`
--

LOCK TABLES `contact_pages` WRITE;
/*!40000 ALTER TABLE `contact_pages` DISABLE KEYS */;
INSERT INTO `contact_pages` VALUES (1,'johndoe@gmail.com','+ 38 (067) 900-95-07',NULL),(2,'johndoe@gmail.com','+ 38 (067) 900-95-08','https://test.com/2');
/*!40000 ALTER TABLE `contact_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveries_service_id_foreign` (`service_id`),
  CONSTRAINT `deliveries_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,1,'railway-delivery'),(2,1,'air-delivery'),(3,1,'shipping-by-sea'),(4,1,'autodelivery');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_translations`
--

DROP TABLE IF EXISTS `delivery_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_translations_delivery_id_locale_unique` (`delivery_id`,`locale`),
  KEY `delivery_translations_locale_index` (`locale`),
  CONSTRAINT `delivery_translations_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_translations`
--

LOCK TABLES `delivery_translations` WRITE;
/*!40000 ALTER TABLE `delivery_translations` DISABLE KEYS */;
INSERT INTO `delivery_translations` VALUES (1,1,'en','Railway delivery',NULL),(2,1,'ru','Жд доставка',NULL),(3,2,'en','air delivery',NULL),(4,2,'ru','Авиадоставка',NULL),(5,3,'en','Shipping by sea',NULL),(6,3,'ru','Доставка морем',NULL),(7,4,'en','Autodelivery',NULL),(8,4,'ru','Автодоставка',NULL);
/*!40000 ALTER TABLE `delivery_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dot_translations`
--

DROP TABLE IF EXISTS `dot_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dot_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dot_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dot_translations_dot_id_locale_unique` (`dot_id`,`locale`),
  KEY `dot_translations_locale_index` (`locale`),
  CONSTRAINT `dot_translations_dot_id_foreign` FOREIGN KEY (`dot_id`) REFERENCES `dots` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dot_translations`
--

LOCK TABLES `dot_translations` WRITE;
/*!40000 ALTER TABLE `dot_translations` DISABLE KEYS */;
INSERT INTO `dot_translations` VALUES (1,2,'en','Delivery by railway transport','Today, there is still a fairly high demand for the delivery of goods by railway trains in containers. It is this delivery of goods that is an alternative to delivery by sea.'),(2,2,'ru','Доставка жд транспортом','Сегодня все еще остается достаточно высоким спрос на доставку товаров железнодорожными составами в контейнерах. Именно такая доставка товаров является альтернативой доставки морскими судами.'),(3,3,'en','Delivery by air','If the cargo needs to be delivered as quickly as possible even over a longer distance, you should opt for air transportation. Literally in a couple of hours you can deliver any cargo to any state.'),(4,3,'ru','Доставка самолетом','Если груз необходимо доставить максимально быстро даже на больше расстояние, стоит остановить свой выбор на авиаперевозке. Буквально за пару-тройку часов можно доставить любой груз в любое государство.'),(5,4,'en','Shipping by sea','Delivery of goods by sea is a relatively low cost and good delivery times. It is most convenient to order delivery by sea vessels when transporting either bulky goods or large groupage lots.'),(6,4,'ru','Доставка морскими судами','Доставка грузов по морю – это относительно небольшая стоимость и хорошие сроки доставки. Заказывать доставку морскими судами удобнее всего при перевозке или крупногабаритных грузов, или больших сборных партий.'),(7,5,'en','Delivery by car','Our company provides a range of services necessary for organizing the clearance and delivery of goods by road vehicles from the CIS countries, as well as European countries, etc.'),(8,5,'ru','Доставка автомобилем','Наша компания предоставляет комплекс услуг, необходимых для организации оформлении и доставки грузов автомобильными транспортными средствами из страны СНГ, а также государств Европы и т.д.');
/*!40000 ALTER TABLE `dot_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dots`
--

DROP TABLE IF EXISTS `dots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dots`
--

LOCK TABLES `dots` WRITE;
/*!40000 ALTER TABLE `dots` DISABLE KEYS */;
INSERT INTO `dots` VALUES (1,NULL),(2,'https://test.com/1'),(3,'https://test.com/2'),(4,'https://test.com/3'),(5,'https://test.com/4');
/*!40000 ALTER TABLE `dots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geographies`
--

DROP TABLE IF EXISTS `geographies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geographies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geographies`
--

LOCK TABLES `geographies` WRITE;
/*!40000 ALTER TABLE `geographies` DISABLE KEYS */;
INSERT INTO `geographies` VALUES (1);
/*!40000 ALTER TABLE `geographies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geography_translations`
--

DROP TABLE IF EXISTS `geography_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geography_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geography_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `geography_translations_geography_id_locale_unique` (`geography_id`,`locale`),
  KEY `geography_translations_locale_index` (`locale`),
  CONSTRAINT `geography_translations_geography_id_foreign` FOREIGN KEY (`geography_id`) REFERENCES `geographies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geography_translations`
--

LOCK TABLES `geography_translations` WRITE;
/*!40000 ALTER TABLE `geography_translations` DISABLE KEYS */;
INSERT INTO `geography_translations` VALUES (1,1,'en','Geography of cargo transportation','<div>\r\n<p>IMPOSSIBLE - <i>JUST A WORD.</i> <span>EMPTY</span></p>\r\n<p>LONG-TERM EXPERIENCE, CONNECTIONS, SMOOTHED</p>\r\n<p>ACTION ALGORITHMS AND NOT ONLY - FACTORS</p>\r\n</div>\r\n<div>\r\n<i>PROVIDING OPERATIONAL</i>\r\n<span>AND AFFORDABLE SHIPPING.</span>\r\n<p>TO ANY POINT OF THE WORLD.</p>\r\n</div>','Under conditions of absolute support. With insurance.'),(2,1,'ru','География грузоперевозок','<div>\r\n<p>НЕВОЗМОЖНО – <i>ПРОСТО СЛОВО.</i> <span>ПУСТОЕ</span></p>\r\n<p>МНОГОЛЕТНИЙ ОПЫТ, СВЯЗИ, ОТЛАЖЕННЫЕ</p>\r\n<p>АЛГОРИТМЫ ДЕЙСТВИЙ И НЕ ТОЛЬКО – ФАКТОРЫ,</p>\r\n</div>\r\n<div>\r\n<i>ОБЕСПЕЧИВАЮЩИЕ ОПЕРАТИВНУЮ</i>\r\n<span>И ДОСТУПНУЮ ПО СТОИМОСТИ ДОСТАВКУ ГРУЗОВ.</span>\r\n<p>В ЛЮБУЮ ТОЧКУ МИРА.</p>\r\n</div>','На условиях абсолютного сопровождения. Со страховкой.');
/*!40000 ALTER TABLE `geography_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (46,'2014_10_12_000000_create_users_table',1),(47,'2014_10_12_100000_create_password_resets_table',1),(48,'2015_04_12_000000_create_orchid_users_table',1),(49,'2015_10_19_214424_create_orchid_roles_table',1),(50,'2015_10_19_214425_create_orchid_role_users_table',1),(51,'2016_08_07_125128_create_orchid_attachmentstable_table',1),(52,'2017_09_17_125801_create_notifications_table',1),(53,'2019_08_19_000000_create_failed_jobs_table',1),(54,'2019_12_14_000001_create_personal_access_tokens_table',1),(55,'2021_04_26_093603_create_jobs_table',1),(56,'2021_10_06_171037_create_configurations_table',1),(57,'2022_01_17_173220_create_traines_table',1),(58,'2022_01_18_165515_create_abouts_table',1),(72,'2022_01_19_142418_create_our_missions_table',2),(78,'2022_09_26_200204_create_deliveries_table',3),(80,'2022_01_21_104149_create_offers_table',4),(82,'2022_01_21_104150_create_we_table',5),(83,'2022_01_24_114607_create_numbers_table',6),(84,'2022_01_24_141349_create_works_table',7),(85,'2022_01_24_153754_create_advantages_table',8),(87,'2022_01_25_092343_create_geographies_table',9),(89,'2022_01_25_101348_create_dots_table',10),(90,'2022_01_26_130340_change_column_geography',11),(91,'2022_01_20_999999_create_contact_pages_table',12),(92,'2022_01_28_122359_create_benefits_table',13),(94,'2021_10_08_132821_create_callbacks_table',14),(95,'2022_01_19_999999_create_about_us_pages_table',15),(97,'2022_01_31_144033_create_other_services_table',16),(98,'2022_02_03_083428_create_templates_table',17),(99,'2022_01_20_105031_create_services_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `number_translations`
--

DROP TABLE IF EXISTS `number_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `number_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_translations_number_id_locale_unique` (`number_id`,`locale`),
  KEY `number_translations_locale_index` (`locale`),
  CONSTRAINT `number_translations_number_id_foreign` FOREIGN KEY (`number_id`) REFERENCES `numbers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `number_translations`
--

LOCK TABLES `number_translations` WRITE;
/*!40000 ALTER TABLE `number_translations` DISABLE KEYS */;
INSERT INTO `number_translations` VALUES (1,1,'en','Regular customers','Completed orders','Representative offices and warehouses','Highly qualified employees'),(2,1,'ru','Постоянных клиентов','Выполненных заказов','Представительств и складов','Высококвалифицированных сотрудников');
/*!40000 ALTER TABLE `number_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numbers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_num` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `office_num` int(11) DEFAULT NULL,
  `employee_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1,'https://test.com',87,2000,5,12);
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_translations`
--

DROP TABLE IF EXISTS `offer_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `offer_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `offer_translations_offer_id_locale_unique` (`offer_id`,`locale`),
  KEY `offer_translations_locale_index` (`locale`),
  CONSTRAINT `offer_translations_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_translations`
--

LOCK TABLES `offer_translations` WRITE;
/*!40000 ALTER TABLE `offer_translations` DISABLE KEYS */;
INSERT INTO `offer_translations` VALUES (1,1,'en','Delivery of goods \"Turnkey\"','Air, sea, rail, road transport.','Is the product packaged? Is everything paid? Documents ready? It\'s time for transportation. We will take care of choosing the best route and choose the type of transport, and we will solve all the issues of customs clearance.'),(2,1,'ru','Доставка грузов \"Под ключ\"','Воздушный, морской, железнодорожный, автомобильный транспорт.','Товар оформлен? Все оплачено? Документы готовы? Самое время для транспортировки. Мы позаботимся о выборе оптимального маршрута и подберем вид транспорта, и решим все вопросы таможенной очистки.'),(3,2,'en','Cargo from Europe and China','Speed, reliability, safety - this is about us.','We will deliver any cargo. Customs task mode. We provide documents. We will provide settlements with suppliers.'),(4,2,'ru','Карго из Европы и Китая','Скорость, надежность, безопасность – это о нас.','Доставим любой груз. Режим таможенные задачи. Предоставляем документы. Обеспечим расчеты с поставщиками.'),(5,3,'en','Customs clearance','Import? Yes. Export? Yes!','We will provide customs clearance quickly and at the best rates. We will help you competently and correctly draw up export and import documents. Raw materials, finished products or equipment - it doesn\'t matter.'),(6,3,'ru','Таможенное оформление','Импорт? Да. Экспорт? Да!','Обеспечим таможенную очистку быстро и по самым оптимальным тарифам. Поможем грамотно и правильно оформить экспортные и импортные документы. Сырье, готовая продукция или оборудование – это не имеет значения.'),(9,5,'en','Consultations on foreign economic activity','Respect for the client and care for his business is our priority.','We offer a wide range of additional services. We help businesses save time and money. We select goods and raw materials, analyze suppliers. We do everything to make working with us profitable.'),(10,5,'ru','Консультации по внешнеэкономической деятельности','Уважение к клиенту и забота о его бизнесе – наш приоритет.','Предлагаем широкий спектр дополнительных услуг. Помогаем бизнесменам экономить время и деньги. Подбираем товары и сырье, анализируем поставщиков. Делаем всё, чтобы работать с нами было выгодно.');
/*!40000 ALTER TABLE `offer_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offers_service_id_foreign` (`service_id`),
  CONSTRAINT `offers_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1,1),(2,2),(3,3),(5,5);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_service_data`
--

DROP TABLE IF EXISTS `other_service_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_service_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_service_data`
--

LOCK TABLES `other_service_data` WRITE;
/*!40000 ALTER TABLE `other_service_data` DISABLE KEYS */;
INSERT INTO `other_service_data` VALUES (1,'title test en','title test ru','slogan test en','slogan test ru','description test en','description test ru','footer test en','footer test ru');
/*!40000 ALTER TABLE `other_service_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_service_translations`
--

DROP TABLE IF EXISTS `other_service_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_service_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `other_service_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `other_service_translations_other_service_id_locale_unique` (`other_service_id`,`locale`),
  KEY `other_service_translations_locale_index` (`locale`),
  CONSTRAINT `other_service_translations_other_service_id_foreign` FOREIGN KEY (`other_service_id`) REFERENCES `other_services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_service_translations`
--

LOCK TABLES `other_service_translations` WRITE;
/*!40000 ALTER TABLE `other_service_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_service_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_services`
--

DROP TABLE IF EXISTS `other_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_services`
--

LOCK TABLES `other_services` WRITE;
/*!40000 ALTER TABLE `other_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_mission_translations`
--

DROP TABLE IF EXISTS `our_mission_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_mission_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `our_mission_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `our_mission_translations_our_mission_id_locale_unique` (`our_mission_id`,`locale`),
  KEY `our_mission_translations_locale_index` (`locale`),
  CONSTRAINT `our_mission_translations_our_mission_id_foreign` FOREIGN KEY (`our_mission_id`) REFERENCES `our_missions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_mission_translations`
--

LOCK TABLES `our_mission_translations` WRITE;
/*!40000 ALTER TABLE `our_mission_translations` DISABLE KEYS */;
INSERT INTO `our_mission_translations` VALUES (1,1,'en','Mission of our company','The mission of our company is to support entrepreneurs. Import? Easy. Export? Even easier. We provide absolute freedom of foreign economic activity. While we work, your profit increases.'),(2,1,'ru','Миссия нашей компании','Миссия нашей компании – поддержка предпринимателей. Импорт? Легко. Экспорт? Еще проще. Обеспечиваем абсолютную свободу внешнеэкономической деятельности. Пока мы работаем, ваша прибыль повышается.');
/*!40000 ALTER TABLE `our_mission_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_missions`
--

DROP TABLE IF EXISTS `our_missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_missions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_missions`
--

LOCK TABLES `our_missions` WRITE;
/*!40000 ALTER TABLE `our_missions` DISABLE KEYS */;
INSERT INTO `our_missions` VALUES (1,NULL);
/*!40000 ALTER TABLE `our_missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_role_id_foreign` (`role_id`),
  CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_translations`
--

DROP TABLE IF EXISTS `service_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_translations_service_id_locale_unique` (`service_id`,`locale`),
  KEY `service_translations_locale_index` (`locale`),
  CONSTRAINT `service_translations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_translations`
--

LOCK TABLES `service_translations` WRITE;
/*!40000 ALTER TABLE `service_translations` DISABLE KEYS */;
INSERT INTO `service_translations` VALUES (1,1,'en','Delivery of goods to Ukraine on a turnkey basis',NULL),(2,1,'ru','Доставка грузов в Украину под ключ',NULL),(3,2,'en','Cargo from Europe to China',NULL),(4,2,'ru','Карго из Европы в Китай',NULL),(5,3,'en','Customs clearance of goods',NULL),(6,3,'ru','Таможенное оформление грузов',NULL),(7,4,'en','Transferring money to suppliers',NULL),(8,4,'ru','Перевод денег поставщикам',NULL),(9,5,'en','FEA consulting',NULL),(10,5,'ru','ВЭД консалтинг',NULL);
/*!40000 ALTER TABLE `service_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_template_id_foreign` (`template_id`),
  CONSTRAINT `services_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'delivery-of-goods-to-ukraine-on-a-turnkey-basis',2),(2,'cargo-from-europe-to-china',4),(3,'customs-clearance-of-goods',5),(4,'transferring-money-to-suppliers',1),(5,'fea-consulting',3);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'money-transfer'),(2,'delivery'),(3,'fea-consulting'),(4,'cargo-from-europe'),(5,'customs-clearance');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traines`
--

DROP TABLE IF EXISTS `traines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_left` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ru_left` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_rigth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ru_rigth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traines`
--

LOCK TABLES `traines` WRITE;
/*!40000 ALTER TABLE `traines` DISABLE KEYS */;
INSERT INTO `traines` VALUES (1,'top_traine','1','Text margin left','Текст левого края','Text margin rigth','Текст правого края'),(2,'midle_traine','1','Text margin left midle','Текст левого края центр','Text margin rigth midle','Текст правого края центр'),(3,'footer_traine','1','Text margin left bottom','Текст левого края низ','Text margin rigth bottom','Текст правого края низ');
/*!40000 ALTER TABLE `traines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','0679009507','admin@admin.com',NULL,'$2y$10$TbZZUdXaJp8/mKHXOMI4iuUDPs9XRN8HbXcDiBNGGY4oupBzZG5tW','qEbgGZShXWJT5ehqRMZJr1SlS9LSuNOpgFvb9zTY7DyssKS53wd8ER0Pv7EH','2022-01-19 12:18:52','2022-02-03 08:46:50','{\"platform.dots\": \"1\", \"platform.about\": \"1\", \"platform.brand\": \"1\", \"platform.index\": \"1\", \"platform.works\": \"1\", \"platform.danger\": \"1\", \"platform.offers\": \"1\", \"platform.orders\": \"1\", \"platform.trains\": \"1\", \"platform.we-all\": \"1\", \"platform.filters\": \"1\", \"platform.numbers\": \"1\", \"platform.reviews\": \"1\", \"platform.sliders\": \"1\", \"platform.benefits\": \"1\", \"platform.comments\": \"1\", \"platform.products\": \"1\", \"platform.services\": \"1\", \"platform.statuses\": \"1\", \"platform.templates\": \"1\", \"platform.advantages\": \"1\", \"platform.attributes\": \"1\", \"platform.call-backs\": \"1\", \"platform.categories\": \"1\", \"platform.deliveries\": \"1\", \"platform.fast-links\": \"1\", \"platform.promotions\": \"1\", \"platform.stock-page\": \"1\", \"platform.geographies\": \"1\", \"platform.our-mission\": \"1\", \"platform.contact-page\": \"1\", \"platform.about-us-page\": \"1\", \"platform.systems.roles\": \"1\", \"platform.systems.users\": \"1\", \"platform.configurations\": \"1\", \"platform.guarantee-page\": \"1\", \"platform.other-services\": \"1\", \"platform.dostavka-i-oplata\": \"1\", \"platform.systems.attachment\": \"1\", \"platform.about-firework-page\": \"1\", \"platform.tehnika-bezpeki-page\": \"1\", \"platform.product-import-export\": \"1\", \"platform.category-import-export\": \"1\", \"platform.dostavka-i-oplata-page\": \"1\", \"platform.attribute-import-export\": \"1\"}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we`
--

DROP TABLE IF EXISTS `we`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `we` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we`
--

LOCK TABLES `we` WRITE;
/*!40000 ALTER TABLE `we` DISABLE KEYS */;
INSERT INTO `we` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `we` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we_translations`
--

DROP TABLE IF EXISTS `we_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `we_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `we_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `we_translations_we_id_locale_unique` (`we_id`,`locale`),
  KEY `we_translations_locale_index` (`locale`),
  CONSTRAINT `we_translations_we_id_foreign` FOREIGN KEY (`we_id`) REFERENCES `we` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we_translations`
--

LOCK TABLES `we_translations` WRITE;
/*!40000 ALTER TABLE `we_translations` DISABLE KEYS */;
INSERT INTO `we_translations` VALUES (1,1,'en','Individual solutions'),(2,1,'ru','Индивидуальные решения'),(3,2,'en','Industry knowledge'),(4,2,'ru','Знание отрасли'),(5,3,'en','Data mining'),(6,3,'ru','Интеллектуальный анализ данных'),(7,4,'en','Customer orientation'),(8,4,'ru','Ориентация на клиента'),(9,5,'en','Expert team'),(10,5,'ru','Команда экспертов');
/*!40000 ALTER TABLE `we_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_translations`
--

DROP TABLE IF EXISTS `work_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `work_translations_work_id_locale_unique` (`work_id`,`locale`),
  KEY `work_translations_locale_index` (`locale`),
  CONSTRAINT `work_translations_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_translations`
--

LOCK TABLES `work_translations` WRITE;
/*!40000 ALTER TABLE `work_translations` DISABLE KEYS */;
INSERT INTO `work_translations` VALUES (1,2,'en','We will find a product and a supplier.'),(2,2,'ru','Найдем товар и поставщика.'),(3,3,'en','Let\'s place an order.'),(4,3,'ru','Оформим заказ.'),(5,4,'en','We solve problems related to payment.'),(6,4,'ru','Решим задачи связанные с оплатой.'),(7,5,'en','We will deliver the goods.'),(8,5,'ru','Доставим товар.');
/*!40000 ALTER TABLE `work_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (2),(3),(4),(5);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-03  7:28:19
