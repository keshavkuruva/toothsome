-- MySQL dump 10.13  Distrib 5.6.10, for osx10.8 (x86_64)
--
-- Host: localhost    Database: toothsome_development
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,'2013-03-21 09:48:20','2013-03-21 09:48:20'),(2,NULL,NULL,'2013-03-21 09:48:42','2013-03-21 09:48:42'),(3,NULL,NULL,'2013-03-21 09:49:24','2013-03-21 09:49:24'),(4,NULL,NULL,'2013-03-21 09:49:44','2013-03-21 09:49:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Domino\'s Inc','Sample description about Domino\'s Sample description about Domino\'s Sample description about Domino\'s Sample description about Domino\'s Sample description about Domino\'s Sample description about Domino\'s  ','Address line 1','Address line 2','Hyderabad','AndhraPradesh','India',500004,'deals@dominos.com','9700660002','2013-03-25 06:14:53','2013-03-25 06:14:53','Bucket_Family-Feastpng.png','image/png',62362,'2013-03-25 06:14:52'),(2,'Subway Inc.','Sample description about Subway.  ','Address line 1','Address line 2','Hyderabad','AndhraPradesh','India',500004,'support@subway.in','9700660004','2013-03-25 09:36:32','2013-03-25 09:36:32','subway_img.jpg','image/jpeg',196324,'2013-03-25 09:36:30'),(3,'KFC India','  Sample description about KFC','Address line 1','Address line 2','Bengalore','AndhraPradesh','India',500004,'deals@kfc.com','9700660002','2013-03-25 09:43:43','2013-03-25 11:08:40','kfc_img.jpeg','image/jpeg',7283,'2013-03-25 09:43:43');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_products`
--

DROP TABLE IF EXISTS `clients_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_products` (
  `client_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_products`
--

LOCK TABLES `clients_products` WRITE;
/*!40000 ALTER TABLE `clients_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_days`
--

DROP TABLE IF EXISTS `deal_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deal_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_days`
--

LOCK TABLES `deal_days` WRITE;
/*!40000 ALTER TABLE `deal_days` DISABLE KEYS */;
INSERT INTO `deal_days` VALUES (16,'Monday',5,'2013-03-25 09:45:20','2013-03-25 09:45:20'),(17,'Tuesday',5,'2013-03-25 09:45:20','2013-03-25 09:45:20'),(18,'Thursday',5,'2013-03-25 09:45:20','2013-03-25 09:45:20'),(19,'Sunday',5,'2013-03-25 09:45:20','2013-03-25 09:45:20'),(20,'Monday',6,'2013-03-25 09:47:37','2013-03-25 09:47:37'),(21,'Thursday',6,'2013-03-25 09:47:37','2013-03-25 09:47:37'),(22,'Sunday',6,'2013-03-25 09:47:37','2013-03-25 09:47:37'),(23,'Monday',7,'2013-03-25 09:49:55','2013-03-25 09:49:55'),(24,'Wednesday',7,'2013-03-25 09:49:55','2013-03-25 09:49:55'),(25,'Sunday',7,'2013-03-25 09:49:55','2013-03-25 09:49:55'),(26,'Monday',8,'2013-03-25 09:51:49','2013-03-25 09:51:49'),(27,'Thursday',8,'2013-03-25 09:51:49','2013-03-25 09:51:49'),(28,'Saturday',8,'2013-03-25 09:51:49','2013-03-25 09:51:49'),(29,'Sunday',8,'2013-03-25 09:51:49','2013-03-25 09:51:49'),(30,'Monday',9,'2013-03-25 09:54:57','2013-03-25 09:54:57'),(31,'Tuesday',9,'2013-03-25 09:54:57','2013-03-25 09:54:57'),(32,'Thursday',9,'2013-03-25 09:54:57','2013-03-25 09:54:57'),(33,'Sunday',9,'2013-03-25 09:54:57','2013-03-25 09:54:57'),(38,'Monday',11,'2013-03-25 10:10:04','2013-03-25 10:10:04'),(39,'Wednesday',11,'2013-03-25 10:10:04','2013-03-25 10:10:04'),(40,'Saturday',11,'2013-03-25 10:10:04','2013-03-25 10:10:04'),(41,'Sunday',11,'2013-03-25 10:10:04','2013-03-25 10:10:04'),(42,'Monday',12,'2013-03-29 11:34:37','2013-03-29 11:34:37'),(43,'Thursday',12,'2013-03-29 11:34:37','2013-03-29 11:34:37'),(44,'Saturday',12,'2013-03-29 11:34:37','2013-03-29 11:34:37'),(45,'Sunday',12,'2013-03-29 11:34:37','2013-03-29 11:34:37'),(46,'Monday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(47,'Tuesday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(48,'Wednesday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(49,'Thursday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(50,'Friday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(51,'Saturday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(52,'Sunday',13,'2013-03-29 11:36:48','2013-03-29 11:36:48'),(53,'Monday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(54,'Tuesday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(55,'Wednesday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(56,'Thursday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(57,'Friday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(58,'Saturday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(59,'Sunday',14,'2013-03-29 11:39:42','2013-03-29 11:39:42'),(60,'Monday',15,'2013-03-29 11:42:51','2013-03-29 11:42:51'),(61,'Wednesday',15,'2013-03-29 11:42:51','2013-03-29 11:42:51'),(62,'Thursday',15,'2013-03-29 11:42:51','2013-03-29 11:42:51'),(63,'Saturday',15,'2013-03-29 11:42:51','2013-03-29 11:42:51'),(64,'Sunday',15,'2013-03-29 11:42:51','2013-03-29 11:42:51'),(65,'Monday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(66,'Tuesday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(67,'Wednesday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(68,'Friday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(69,'Saturday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(70,'Sunday',16,'2013-04-01 05:29:42','2013-04-01 05:29:42'),(71,'Monday',17,'2013-04-01 05:31:38','2013-04-01 05:31:38'),(72,'Wednesday',17,'2013-04-01 05:31:38','2013-04-01 05:31:38'),(73,'Friday',17,'2013-04-01 05:31:38','2013-04-01 05:31:38'),(74,'Saturday',17,'2013-04-01 05:31:38','2013-04-01 05:31:38'),(75,'Sunday',17,'2013-04-01 05:31:38','2013-04-01 05:31:38');
/*!40000 ALTER TABLE `deal_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_prices`
--

DROP TABLE IF EXISTS `product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_prices`
--

LOCK TABLES `product_prices` WRITE;
/*!40000 ALTER TABLE `product_prices` DISABLE KEYS */;
INSERT INTO `product_prices` VALUES (45,5,3,150,0,'2013-03-26','2013-03-31','2013-03-25 09:45:20','2013-03-25 09:45:20'),(46,6,3,199,0,'2013-03-26','2013-03-31','2013-03-25 09:47:37','2013-03-25 09:47:37'),(47,7,3,150,0,'2013-03-26','2013-03-31','2013-03-25 09:49:54','2013-03-25 09:49:54'),(48,8,3,89,0,'2013-03-26','2013-03-31','2013-03-25 09:51:49','2013-03-25 09:51:49'),(49,9,2,100,0,'2013-03-26','2013-03-31','2013-03-25 09:54:57','2013-03-25 09:54:57'),(51,11,1,199,0,'2013-03-26','2013-03-31','2013-03-25 10:10:04','2013-03-25 10:10:04'),(52,12,3,89,0,'2013-03-30','2013-03-31','2013-03-29 11:34:36','2013-03-29 11:34:36'),(53,13,3,55,0,'2013-03-30','2013-03-31','2013-03-29 11:36:48','2013-03-29 11:36:48'),(54,14,1,55,0,'2013-03-30','2013-03-31','2013-03-29 11:39:42','2013-03-29 11:39:42'),(55,15,2,60,0,'2013-03-30','2013-03-31','2013-03-29 11:42:50','2013-03-29 11:42:50'),(56,16,1,99,0,'2013-04-02','2013-04-24','2013-04-01 05:29:42','2013-04-01 05:29:42'),(57,17,3,100,0,'2013-04-02','2013-04-18','2013-04-01 05:31:38','2013-04-01 05:31:38');
/*!40000 ALTER TABLE `product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `deal_type` tinyint(1) DEFAULT NULL,
  `days` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'KFC12','Potato Krisper','A Crispy potato patty, topped with tangy sauce and served up in a soft, warm bun!  ',1,'2013-03-25 09:45:20','2013-04-01 05:33:18',3,'kfc1.png','image/png',91578,'2013-03-25 09:45:19',1,'Monday,Tuesday,Thursday,Sunday',3),(6,'KFC13','Chicken Snacker','A delicious chunk of chicken served in a soft sesame bun, with salad and Thousand Island sauce.  ',1,'2013-03-25 09:47:37','2013-04-01 05:33:30',3,'kfc2.png','image/png',91123,'2013-03-25 09:47:37',1,'Monday,Thursday,Sunday',2),(7,'KFC14','Best of KFC','All that\'s good about KFC in one big meal. This one\'s not for the faint hearted!  ',1,'2013-03-25 09:49:54','2013-03-25 09:49:54',3,'kfc3.png','image/png',48770,'2013-03-25 09:49:54',1,'Monday,Wednesday,Sunday',0),(8,'KFC15','Family Feast','Chomp some chicken. Munch some fries. Share a rizo. And wash it all down with a swig of Pepsi. We\'ve got something for the whole family!  ',1,'2013-03-25 09:51:49','2013-03-25 09:51:49',3,'kfc5.png','image/png',62362,'2013-03-25 09:51:48',1,'Monday,Thursday,Saturday,Sunday',0),(9,'sub12e','CHICKEN STEAK','Slices of lean and tender chicken steak perfectly complimented by crisp, crunchy veggies and your choice of eclectic sauces. Served hot & toasted on freshly baked bread.',1,'2013-03-25 09:54:57','2013-03-25 09:54:57',2,'subway4.jpeg','image/jpeg',79663,'2013-03-25 09:54:56',1,'Monday,Tuesday,Thursday,Sunday',0),(11,'dm32','COUNTRY SPECIAL','For all those with a partiality for veggies, this one\'s loaded - crunchy onions, crisp capsicum and fresh juicy tomatoes. Yum!',1,'2013-03-25 10:10:04','2013-04-01 05:32:31',1,'dm2.jpg','image/jpeg',105677,'2013-03-25 10:10:03',1,'Monday,Wednesday,Saturday,Sunday',5),(12,'softy','Kold Koffee','An exquisite blend of rich coffee, dairy and a hint of chocolate.  ',1,'2013-03-29 11:34:36','2013-04-01 05:33:44',3,'kfc_dring.png','image/png',52396,'2013-03-29 11:34:35',1,'Monday,Thursday,Saturday,Sunday',1),(13,'softy','Krushers Lime Soda','The all time favourite thirst quencher.  ',1,'2013-03-29 11:36:48','2013-03-29 11:36:48',3,'kfc_d2.png','image/png',43971,'2013-03-29 11:36:47',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',0),(14,'softy','Green MangoJelly','This perfect summer companion is loaded with green mango syrup and mango jelly chunks in chilled sparkling Sprite.  ',1,'2013-03-29 11:39:42','2013-04-01 05:32:53',1,'kfc_d3.png','image/png',48022,'2013-03-29 11:39:42',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',2),(15,'creepy','Choc Amor','Soft and spongy on the outside; melted & gooey chocolate on the inside. Totally sinful!  ',1,'2013-03-29 11:42:50','2013-04-01 05:33:11',2,'001.png','image/png',78559,'2013-03-29 11:42:50',1,'Monday,Wednesday,Thursday,Saturday,Sunday',4),(16,'Pizza','Mexican Mac','Sample description about mexican mac pizza.  ',1,'2013-04-01 05:29:42','2013-04-01 05:33:01',1,'im1.jpeg','image/jpeg',11212,'2013-04-01 05:29:41',1,'Monday,Tuesday,Wednesday,Friday,Saturday,Sunday',3),(17,'KFC12','Big Burger','Sample description about big burger.  ',1,'2013-04-01 05:31:38','2013-04-01 05:33:51',3,'221.jpg','image/jpeg',158176,'2013-04-01 05:31:37',1,'Monday,Wednesday,Friday,Saturday,Sunday',5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_categories`
--

LOCK TABLES `products_categories` WRITE;
/*!40000 ALTER TABLE `products_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_ratings`
--

DROP TABLE IF EXISTS `products_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_ratings`
--

LOCK TABLES `products_ratings` WRITE;
/*!40000 ALTER TABLE `products_ratings` DISABLE KEYS */;
INSERT INTO `products_ratings` VALUES (1,11,1,'Awesome','2013-04-01 05:32:31','2013-04-01 05:32:31'),(2,14,1,'Better','2013-04-01 05:32:53','2013-04-01 05:32:53'),(3,16,1,'Best','2013-04-01 05:33:01','2013-04-01 05:33:01'),(4,15,1,'Most wanted','2013-04-01 05:33:11','2013-04-01 05:33:11'),(5,5,1,'Best','2013-04-01 05:33:18','2013-04-01 05:33:18'),(6,6,1,'Better','2013-04-01 05:33:30','2013-04-01 05:33:30'),(7,12,1,'Average','2013-04-01 05:33:44','2013-04-01 05:33:44'),(8,17,1,'Awesome','2013-04-01 05:33:51','2013-04-01 05:33:51');
/*!40000 ALTER TABLE `products_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name_and_resource_type_and_resource_id` (`name`,`resource_type`,`resource_id`),
  KEY `index_roles_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,NULL,NULL,NULL,'2013-03-21 09:48:42','2013-03-21 09:48:42'),(2,NULL,NULL,NULL,'2013-03-21 09:49:25','2013-03-21 09:49:25'),(3,NULL,NULL,NULL,'2013-03-21 09:49:44','2013-03-21 09:49:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130308094222'),('20130308094225'),('20130308094233'),('20130311083524'),('20130311084018'),('20130311084544'),('20130311084652'),('20130311085131'),('20130312062440'),('20130312070400'),('20130313050613'),('20130313144211'),('20130314083847'),('20130314090501'),('20130314091641'),('20130314091729'),('20130314095240'),('20130314100000'),('20130314100330'),('20130318100631'),('20130319070416');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,1,'Product',NULL,NULL,'tags','2013-03-25 06:17:47'),(2,2,1,'Product',NULL,NULL,'tags','2013-03-25 06:17:47'),(3,3,2,'Product',NULL,NULL,'tags','2013-03-25 06:24:02'),(4,4,2,'Product',NULL,NULL,'tags','2013-03-25 06:24:02'),(10,5,5,'Product',NULL,NULL,'tags','2013-03-25 09:45:20'),(11,7,5,'Product',NULL,NULL,'tags','2013-03-25 09:45:20'),(12,1,6,'Product',NULL,NULL,'tags','2013-03-25 09:47:37'),(13,5,6,'Product',NULL,NULL,'tags','2013-03-25 09:47:37'),(14,1,7,'Product',NULL,NULL,'tags','2013-03-25 09:49:55'),(15,8,7,'Product',NULL,NULL,'tags','2013-03-25 09:49:55'),(16,1,8,'Product',NULL,NULL,'tags','2013-03-25 09:51:49'),(17,5,8,'Product',NULL,NULL,'tags','2013-03-25 09:51:49'),(18,1,9,'Product',NULL,NULL,'tags','2013-03-25 09:54:57'),(19,5,9,'Product',NULL,NULL,'tags','2013-03-25 09:54:57'),(20,9,9,'Product',NULL,NULL,'tags','2013-03-25 09:54:57'),(23,1,11,'Product',NULL,NULL,'tags','2013-03-25 10:10:04'),(24,10,12,'Product',NULL,NULL,'tags','2013-03-29 11:34:37'),(25,10,13,'Product',NULL,NULL,'tags','2013-03-29 11:36:48'),(26,10,14,'Product',NULL,NULL,'tags','2013-03-29 11:39:42'),(27,11,15,'Product',NULL,NULL,'tags','2013-03-29 11:42:50'),(28,1,16,'Product',NULL,NULL,'tags','2013-04-01 05:29:42'),(29,1,17,'Product',NULL,NULL,'tags','2013-04-01 05:31:38'),(30,12,17,'Product',NULL,NULL,'tags','2013-04-01 05:31:38');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'non-veg'),(2,'fiery-grilled'),(3,'buger'),(4,'softy'),(5,'chicken'),(6,'meta-ball'),(7,'krisper'),(8,'kfc-best'),(9,'chicken-sneak'),(10,'drink'),(11,'creams'),(12,'burger');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'arvindnaidu@outlook.com','$2a$10$E/wjURWvX12fQBdMhggXOeWFZcZ8oNUeZZ6G5Lw5G5LeGknFyvCMa',NULL,NULL,NULL,8,'2013-04-01 05:27:40','2013-03-29 11:29:37','127.0.0.1','127.0.0.1','2013-03-21 10:58:39','2013-04-01 05:27:40','Arvind Naidu');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_users_roles_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-01 11:06:03
