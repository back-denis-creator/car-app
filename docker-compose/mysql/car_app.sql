-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: car-app-db
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachmentable`
--

LOCK TABLES `attachmentable` WRITE;
/*!40000 ALTER TABLE `attachmentable` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (10,'62ad5bf1502e4574b425dfba229cbc7353fab467','lamborghini_huracan.jpg','image/jpeg','jpg',19959,0,'2022/02/19/',NULL,NULL,'b820b7036737a115da82077dec2bec3fefa8c87d','public',1,NULL,'2022-02-19 16:31:19','2022-02-19 16:31:19'),(11,'62ad5bf1502e4574b425dfba229cbc7353fab467','lamborghini_huracan.jpg','image/jpeg','jpg',19959,0,'2022/02/19/',NULL,NULL,'b820b7036737a115da82077dec2bec3fefa8c87d','public',1,NULL,'2022-02-19 16:32:23','2022-02-19 16:32:23'),(12,'62ad5bf1502e4574b425dfba229cbc7353fab467','lamborghini_huracan.jpg','image/jpeg','jpg',19959,0,'2022/02/19/',NULL,NULL,'b820b7036737a115da82077dec2bec3fefa8c87d','public',1,NULL,'2022-02-19 16:32:56','2022-02-19 16:32:56');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark_id` bigint(20) unsigned NOT NULL,
  `manufacturer_id` bigint(20) unsigned NOT NULL,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_id` bigint(20) unsigned NOT NULL,
  `engine_capacity` double(8,2) NOT NULL,
  `production_year` year(4) NOT NULL,
  `price` double(8,2) NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_mark_id_foreign` (`mark_id`),
  KEY `cars_manufacturer_id_foreign` (`manufacturer_id`),
  KEY `cars_fuel_id_foreign` (`fuel_id`),
  KEY `cars_country_id_foreign` (`country_id`),
  CONSTRAINT `cars_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cars_fuel_id_foreign` FOREIGN KEY (`fuel_id`) REFERENCES `fuels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cars_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufactures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cars_mark_id_foreign` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (47,'/storage/car.png',126,93,'bvafw5re9A9ktvymz',15,4.10,2012,3295.67,234),(48,'/storage/car.png',117,84,'sh6uusds1Ak7va9kj',17,5.42,2017,8387.46,210),(49,'/storage/car.png',207,84,'5xp6zd6e0As6a4gdx',13,0.61,2002,4896.89,229),(50,'/storage/car.png',188,54,'pcyvmz24XA96ujgde',17,3.78,2005,2364.93,212),(51,'/storage/car.png',206,62,'4505ytye0Av792mhl',13,9.41,2010,7273.49,250),(52,'/storage/car.png',207,83,'bm9wy7xm4A74vzggg',15,9.89,2007,6812.79,212),(53,'/storage/car.png',147,71,'ywe1gwrb9A1e8d5w0',13,6.57,2006,2874.99,152),(54,'/storage/car.png',120,79,'mbt4mce27Ahd9a85a',13,3.28,2007,5656.59,187),(55,'/storage/car.png',126,84,'0rpkn5kv4Az7dkfle',15,1.64,2001,4923.59,172),(56,'/storage/car.png',170,76,'mctkdgsv2Axz2un2z',17,3.75,2016,9753.64,226),(57,'/storage/car.png',185,54,'m5n6bg115A949ak3s',16,7.20,2008,983.37,171),(58,'/storage/car.png',126,84,'g01j01fg0Arc7gwy3',13,0.71,2010,564.69,235),(59,'/storage/car.png',113,53,'s4hpchll7Ahzyef4x',17,1.86,2015,3005.37,182),(60,'/storage/car.png',179,79,'l3zb55vd2Ardynls2',16,8.63,2015,5188.97,182),(61,'/storage/car.png',113,81,'he5gh6kl0Awb29rna',16,9.44,2010,8208.23,181),(62,'/storage/car.png',173,53,'l2lb0svu2A7tdwgeh',17,6.42,2007,4144.59,239),(63,'/storage/car.png',207,60,'2yu7aa8p7Argr9ka8',16,3.12,2002,5140.18,181),(64,'/storage/car.png',201,88,'380pd8yl4Aub1hf6f',16,1.05,2004,9778.94,155),(65,'/storage/car.png',134,77,'2c69mfx35A4kk67l8',17,8.02,2004,7135.28,244),(66,'/storage/car.png',166,61,'l1zlff4c1Al37rtsx',17,1.32,2008,9414.75,212),(67,'/storage/car.png',145,75,'86c3rlzfXAwt4f9c0',16,9.68,2013,7011.34,158),(68,'/storage/car.png',199,75,'sx6la0464Ay6025ye',17,7.54,2012,3382.18,243),(69,'/storage/car.png',195,55,'xudrdurj6Aezml0kx',14,2.21,2010,8446.56,176),(70,'/storage/car.png',203,65,'6bdd0es77Ap78ln7f',13,4.76,2008,4179.95,208),(71,'/storage/car.png',155,101,'rphdvsyz1Awn0h361',17,2.31,2000,5200.50,241),(72,'/storage/car.png',211,96,'rxh9zdta5Atab64yw',16,0.78,2011,2474.34,183),(73,'/storage/car.png',172,72,'rvnvluhf4A3g8kzh2',13,0.37,2014,8094.32,183),(74,'/storage/car.png',140,52,'j6hj8xpj5A3t0sgu9',16,0.73,2013,4938.68,162),(75,'/storage/car.png',194,95,'jkg1hmjv0Ahws8wnp',17,7.57,2009,8788.06,200),(76,'/storage/car.png',156,82,'86xstgg94Aud3fnk3',13,2.75,2017,6851.90,167),(77,'/storage/car.png',192,57,'5jty9y3t5Amslxvz6',15,8.88,2010,6741.26,168),(78,'/storage/car.png',147,90,'0br9skch6Ace24j8t',13,2.93,2005,2003.59,195),(79,'/storage/car.png',116,96,'6ujvy2tb8Ar342zej',13,9.38,2014,7261.91,218),(80,'/storage/car.png',211,81,'6ztnfa9p2Aeyg518t',13,2.46,2000,9459.89,167),(81,'/storage/car.png',127,82,'xz8n2y788A43nsshr',16,3.71,2009,9450.06,246),(82,'/storage/car.png',179,99,'m8cru5s85Aa4zmfc8',13,2.21,2001,5706.78,161),(83,'/storage/car.png',195,63,'glc5uccu0A3tud1ug',14,9.47,2015,8008.07,184),(84,'/storage/car.png',185,93,'56jpf6db4Adyje5dg',16,1.08,2009,4241.45,170),(85,'/storage/car.png',161,68,'34pne2ex3A1x7fvus',16,6.49,2010,3944.37,152),(86,'/storage/car.png',209,99,'zjkcpcks9Al19rjhh',13,5.02,2009,5715.53,177),(87,'/storage/car.png',162,95,'vbl0b5f53Aamxlxxp',17,3.33,2000,3036.40,243),(88,'/storage/car.png',124,97,'5127uwes4A0j7tz8e',15,0.55,2003,7179.96,170),(89,'/storage/car.png',122,84,'n0f77d6y1Azrnxchm',16,6.98,2011,7995.80,199),(90,'/storage/car.png',182,81,'stzes1h06Aeemmcgn',17,5.07,2012,4225.88,223),(91,'/storage/car.png',119,81,'fmtkhb65XAmln4d66',14,7.08,2017,2795.94,226),(92,'/storage/car.png',205,95,'n5p5d4ak3A79nblnf',16,2.73,2016,1427.00,241),(93,'/storage/2022/02/19/62ad5bf1502e4574b425dfba229cbc7353fab467.jpg',148,96,'u05539l26Aw2v6fml',13,2.82,2007,276.76,250),(94,'/storage/car.png',198,63,'y69bkv994A6mg7mn8',17,6.76,2013,1045.17,186),(95,'/storage/car.png',160,97,'ld8wtp9w5Asweb2ga',13,3.36,2016,631.65,214),(96,'/storage/car.png',178,93,'t5be8vs79Awnlnxn5',13,8.99,2008,9384.24,174);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (152,'Bulgaria'),(153,'Kiribati'),(154,'Mali'),(155,'Jordan'),(156,'United Kingdom'),(157,'Sweden'),(158,'Ghana'),(159,'Saint Lucia'),(160,'Svalbard & Jan Mayen Islands'),(161,'Cook Islands'),(162,'Guinea-Bissau'),(163,'Anguilla'),(164,'Colombia'),(165,'Ecuador'),(166,'Namibia'),(167,'Guam'),(168,'Kiribati'),(169,'Svalbard & Jan Mayen Islands'),(170,'Bahamas'),(171,'Zambia'),(172,'Swaziland'),(173,'Italy'),(174,'Argentina'),(175,'France'),(176,'Central African Republic'),(177,'Sao Tome and Principe'),(178,'Palau'),(179,'Antigua and Barbuda'),(180,'Tokelau'),(181,'Venezuela'),(182,'Barbados'),(183,'Australia'),(184,'Cyprus'),(185,'Denmark'),(186,'Guatemala'),(187,'Uganda'),(188,'Fiji'),(189,'Mauritania'),(190,'Trinidad and Tobago'),(191,'Russian Federation'),(192,'Vietnam'),(193,'South Georgia and the South Sandwich Islands'),(194,'Czech Republic'),(195,'Togo'),(196,'China'),(197,'Pitcairn Islands'),(198,'Uzbekistan'),(199,'South Africa'),(200,'Afghanistan'),(201,'Czech Republic'),(202,'French Polynesia'),(203,'United Kingdom'),(204,'Svalbard & Jan Mayen Islands'),(205,'Nigeria'),(206,'Ireland'),(207,'Brunei Darussalam'),(208,'Syrian Arab Republic'),(209,'Iran'),(210,'American Samoa'),(211,'Guinea-Bissau'),(212,'Croatia'),(213,'Yemen'),(214,'Estonia'),(215,'Bosnia and Herzegovina'),(216,'Mozambique'),(217,'Nauru'),(218,'Liechtenstein'),(219,'Northern Mariana Islands'),(220,'Antigua and Barbuda'),(221,'Saint Barthelemy'),(222,'Ecuador'),(223,'Micronesia'),(224,'Burkina Faso'),(225,'Thailand'),(226,'Tajikistan'),(227,'Cuba'),(228,'Saint Kitts and Nevis'),(229,'Timor-Leste'),(230,'Bahrain'),(231,'Sao Tome and Principe'),(232,'Canada'),(233,'Andorra'),(234,'Suriname'),(235,'Yemen'),(236,'Norway'),(237,'Gambia'),(238,'Saint Kitts and Nevis'),(239,'Malaysia'),(240,'Tajikistan'),(241,'Timor-Leste'),(242,'Jersey'),(243,'Cayman Islands'),(244,'Senegal'),(245,'Reunion'),(246,'Mayotte'),(247,'Sweden'),(248,'Lao People\'s Democratic Republic'),(249,'Fiji'),(250,'Venezuela'),(251,'Montserrat');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuels`
--

DROP TABLE IF EXISTS `fuels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuels`
--

LOCK TABLES `fuels` WRITE;
/*!40000 ALTER TABLE `fuels` DISABLE KEYS */;
INSERT INTO `fuels` VALUES (13,'benzine'),(14,'gas'),(15,'hybrid'),(16,'electro'),(17,'diesel');
/*!40000 ALTER TABLE `fuels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufactures` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufactures`
--

LOCK TABLES `manufactures` WRITE;
/*!40000 ALTER TABLE `manufactures` DISABLE KEYS */;
INSERT INTO `manufactures` VALUES (52,'Buick'),(53,'Ultima'),(54,'Marshell'),(55,'SsangYong'),(56,'Vepr'),(57,'Peg-Perego'),(58,'Pinzgauer'),(59,'Honda'),(60,'Fiat-Abarth'),(61,'Saipa'),(62,'Aero'),(63,'Peg-Perego'),(64,'Opel'),(65,'Cadillac'),(66,'Autobianchi'),(67,'Sceo'),(68,'DS'),(69,'Maybach'),(70,'Lamborghini'),(71,'Subaru'),(72,'Rolls-Royce'),(73,'Datsun'),(74,'Daimler'),(75,'Bio Auto'),(76,'Soyat'),(77,'Plymouth'),(78,'Jinbei Minibusus'),(79,'Subaru'),(80,'Iran Khodro'),(81,'Samand'),(82,'Vauxhall'),(83,'KingWoo'),(84,'Great Wall'),(85,'Huabei'),(86,'Koenigsegg'),(87,'Peugeot'),(88,'Caterham'),(89,'Miles'),(90,'Talbot'),(91,'Smart'),(92,'De Lorean'),(93,'Talbot'),(94,'LDV'),(95,'Scion'),(96,'Lamborghini'),(97,'Koenigsegg'),(98,'Acura'),(99,'Mazda'),(100,'Scion'),(101,'Innocenti');
/*!40000 ALTER TABLE `manufactures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (113,'Hawk'),(114,'Gonow'),(115,'Tianjin'),(116,'Avancier'),(117,'Atlantique'),(118,'Maestro'),(119,'E-series'),(120,'SHK'),(121,'xA'),(122,'9-2'),(123,'Matiz'),(124,'XJ Series'),(125,'427 KMS'),(126,'Forfour'),(127,'30'),(128,'Grand Santa Fe'),(129,'Courier'),(130,'356'),(131,'Elan'),(132,'B1000'),(133,'CCX'),(134,'DianGo'),(135,'GTR'),(136,'Cultus'),(137,'Park Ward'),(138,'Marshal'),(139,'NX 200'),(140,'Sprint'),(141,'RLX'),(142,'750'),(143,'C-Series'),(144,'9'),(145,'Nova'),(146,'7'),(147,'1300'),(148,'488 Spider'),(149,'xB'),(150,'S7'),(151,'3'),(152,'FIT'),(153,'Sunshine'),(154,'DianGo'),(155,'A 112'),(156,'Elba'),(157,'Five Hundred'),(158,'LSE'),(159,'918 Spyder'),(160,'Nubira Sx'),(161,'Minor'),(162,'Huayra'),(163,'GX6'),(164,'T600'),(165,'30'),(166,'Fiat 595'),(167,'Xingwang'),(168,'Stromform'),(169,'Galibier'),(170,'710'),(171,'T600'),(172,'F12'),(173,'SP:01'),(174,'400'),(175,'ZLXE'),(176,'GTR'),(177,'Maxus'),(178,'Movano груз.'),(179,'EL'),(180,'200'),(181,'Stromform'),(182,'B-Class'),(183,'Integra'),(184,'3'),(185,'Pilot'),(186,'Golf Sportsvan'),(187,'600R'),(188,'Agera'),(189,'F'),(190,'427 KMS'),(191,'3'),(192,'200'),(193,'Cambiano'),(194,'Cambiano'),(195,'Stromform'),(196,'Minor'),(197,'Panamera'),(198,'Beast'),(199,'YunBa'),(200,'Minicab'),(201,'Shogun Pinin'),(202,'V40'),(203,'PS 160'),(204,'QM5'),(205,'Britannia'),(206,'Flying Spur'),(207,'RR'),(208,'DR5'),(209,'1500'),(210,'Soyat'),(211,'Bolt EV'),(212,'Gaucho');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2014_10_12_000000_create_users_table',2),(12,'2014_10_12_100000_create_password_resets_table',2),(13,'2015_04_12_000000_create_orchid_users_table',2),(14,'2015_10_19_214424_create_orchid_roles_table',2),(15,'2015_10_19_214425_create_orchid_role_users_table',2),(16,'2016_08_07_125128_create_orchid_attachmentstable_table',2),(17,'2017_09_17_125801_create_notifications_table',2),(23,'2022_02_19_093840_create_countries_table',3),(24,'2022_02_19_093925_create_marks_table',3),(25,'2022_02_19_093951_create_fuels_table',3),(26,'2022_02_19_094631_create_manufactures_table',3),(27,'2022_02_20_185423_create_cars_table',3),(28,'2022_02_20_112928_create_shippings_table',4);
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
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL,
  `car_id` bigint(20) unsigned NOT NULL,
  `cost` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shippings_country_id_car_id_unique` (`country_id`,`car_id`),
  KEY `shippings_car_id_foreign` (`car_id`),
  CONSTRAINT `shippings_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shippings_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (2,152,47,100.00);
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'admin','admin@admin.com',NULL,'$2y$10$iAYHv8bN/e6FvZjMrYS1AO7r9AXHulUlzV09IZS2EupS6M3Rxoa3u','IfnbqxtNpy81bYYLO0gpBBZPfu4T2C8jJK0WNehBGfHb8iL4qmTHkt04xlCS','2022-02-19 08:51:43','2022-02-20 11:57:04','{\"platform.cars\": \"1\", \"platform.index\": \"1\", \"platform.shippings\": \"1\", \"platform.lists.fuels\": \"0\", \"platform.lists.marks\": \"0\", \"platform.systems.roles\": \"1\", \"platform.systems.users\": \"1\", \"platform.lists.countries\": \"0\", \"platform.lists.manufactures\": \"0\", \"platform.systems.attachment\": \"1\"}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-20 12:06:06
