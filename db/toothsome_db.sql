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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,'2013-04-04 06:28:37','2013-04-04 06:28:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'KFC','KFC (Kentucky Fried Chicken) is a fast food restaurant chain headquartered in Louisville, Kentucky, United States, which specializes in fried chicken. An \"American icon\", it is the world\'s largest chicken restaurant chain and the second largest restaurant chain overall as measured by sales after McDonald\'s, with over 17,000 outlets in 115 countries and territories as of December 2011.  ','Ground Floor, GVK One Mall, Near Post Office','6-3-251, Road Number 1, Balapur Basthi, Hyderabad','Hyderabad','AndhraPradesh','India',500034,'deals@kfc.in','9700660001','2013-04-04 06:39:01','2013-04-04 06:39:01','kfc_logo.png','image/png',34051,'2013-04-04 06:38:59'),(2,'Domino\'s Inc','Domino\'s Pizza is an American restaurant chain and international franchise pizza delivery corporation headquartered at the Domino Farms Office Park campus in Ann Arbor Township, Michigan, United States, near Ann Arbor, Michigan.  ','6-3-1109/5 & 6, Raj Bhavan Rd','Nishat Bagh Colony, Somajiguda, Hyderabad, Andhra Pradesh','Hyderabad','AndhraPradesh','India',500082,'deals@dominos.com','9700660002','2013-04-04 06:58:34','2013-04-04 06:58:34','dominos_logo.gif','image/gif',60907,'2013-04-04 06:58:33'),(3,'Subway Inc.','Subway is an American restaurant franchise that primarily sells submarine sandwiches (subs) and salads. It is owned and operated by Doctor\'s Associates, Inc. (DAI). Subway is one of the fastest growing franchises in the world with 37,881 restaurants in 98 countries and territories as of November 7, 2012','47506, LEVEL – 4, Food Court','Inorbit Mall, Inorbit Mall Rd, Hitech City','Hyderabad','AndhraPradesh','India',500008,'deals@subway.com','9700660003','2013-04-04 07:27:19','2013-04-04 07:27:19','subway_logo.jpeg','image/jpeg',10040,'2013-04-04 07:27:18'),(4,'Pizza Hut','Pizza Hut is an American restaurant chain and international franchise that offers different styles of pizza along with side dishes including salad, pasta, buffalo wings, breadsticks, and garlic bread.  ','1-8-303/42/5, KPR House, Sardar Patel Rd','Sindhi Colony, Rasoolpura, Secunderabad, Andhra Pradesh','Hyderabad','AndhraPradesh','India',500003,'deals@pizzahut.com','9700660004','2013-04-04 07:41:02','2013-04-04 07:41:02','pizzahut_logo.png','image/png',10753,'2013-04-04 07:41:01'),(5,'Taco Bell','Taco Bell is an American chain of fast-food restaurants based in Irvine, California. A subsidiary of Yum! Brands, Inc., they serve a variety of Tex-Mex foods including tacos, burritos, quesadillas, nachos, other specialty items, and a variety of \"Value menu\" items. Taco Bell serves more than 2 billion customers each year in more than 5,800 restaurants in the U.S., more than 80 percent of which are owned and operated by independent franchisees.  ','#101,1st Floor,Nagasuri Plaza','Ameerpet, Hyderabad, Andhra Pradesh','Hyderabad','AndhraPradesh','India',500016,'deals@tacobell.com','9700660005','2013-04-04 08:01:24','2013-04-04 08:01:24','taco-bell-logo.jpeg','image/jpeg',10221,'2013-04-04 08:01:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_days`
--

LOCK TABLES `deal_days` WRITE;
/*!40000 ALTER TABLE `deal_days` DISABLE KEYS */;
INSERT INTO `deal_days` VALUES (1,NULL,NULL,'2013-04-04 06:28:37','2013-04-04 06:28:37'),(2,'Monday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(3,'Tuesday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(4,'Wednesday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(5,'Thursday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(6,'Friday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(7,'Saturday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(8,'Sunday',7,'2013-04-04 06:41:53','2013-04-04 06:41:53'),(9,'Monday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(10,'Tuesday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(11,'Wednesday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(12,'Thursday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(13,'Friday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(14,'Saturday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(15,'Sunday',8,'2013-04-04 06:43:28','2013-04-04 06:43:28'),(16,'Monday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(17,'Tuesday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(18,'Wednesday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(19,'Thursday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(20,'Friday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(21,'Saturday',9,'2013-04-04 06:45:08','2013-04-04 06:45:08'),(22,'Sunday',9,'2013-04-04 06:45:09','2013-04-04 06:45:09'),(23,'Monday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(24,'Tuesday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(25,'Wednesday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(26,'Thursday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(27,'Friday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(28,'Saturday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(29,'Sunday',10,'2013-04-04 06:46:38','2013-04-04 06:46:38'),(30,'Monday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(31,'Tuesday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(32,'Wednesday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(33,'Thursday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(34,'Friday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(35,'Saturday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(36,'Sunday',11,'2013-04-04 06:48:18','2013-04-04 06:48:18'),(37,'Monday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(38,'Tuesday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(39,'Wednesday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(40,'Thursday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(41,'Friday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(42,'Saturday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(43,'Sunday',12,'2013-04-04 06:49:51','2013-04-04 06:49:51'),(44,'Monday',13,'2013-04-04 07:04:25','2013-04-04 07:04:25'),(45,'Wednesday',13,'2013-04-04 07:04:25','2013-04-04 07:04:25'),(46,'Friday',13,'2013-04-04 07:04:25','2013-04-04 07:04:25'),(47,'Saturday',13,'2013-04-04 07:04:25','2013-04-04 07:04:25'),(48,'Sunday',13,'2013-04-04 07:04:25','2013-04-04 07:04:25'),(49,'Monday',14,'2013-04-04 07:09:16','2013-04-04 07:09:16'),(50,'Wednesday',14,'2013-04-04 07:09:16','2013-04-04 07:09:16'),(51,'Friday',14,'2013-04-04 07:09:16','2013-04-04 07:09:16'),(52,'Saturday',14,'2013-04-04 07:09:16','2013-04-04 07:09:16'),(53,'Sunday',14,'2013-04-04 07:09:16','2013-04-04 07:09:16'),(54,'Monday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(55,'Wednesday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(56,'Thursday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(57,'Friday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(58,'Saturday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(59,'Sunday',15,'2013-04-04 07:13:46','2013-04-04 07:13:46'),(60,'Monday',16,'2013-04-04 07:17:13','2013-04-04 07:17:13'),(61,'Tuesday',16,'2013-04-04 07:17:13','2013-04-04 07:17:13'),(62,'Friday',16,'2013-04-04 07:17:13','2013-04-04 07:17:13'),(63,'Saturday',16,'2013-04-04 07:17:13','2013-04-04 07:17:13'),(64,'Sunday',16,'2013-04-04 07:17:13','2013-04-04 07:17:13'),(65,'Monday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(66,'Tuesday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(67,'Wednesday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(68,'Friday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(69,'Saturday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(70,'Sunday',17,'2013-04-04 07:19:54','2013-04-04 07:19:54'),(71,'Tuesday',18,'2013-04-04 07:28:27','2013-04-04 07:28:27'),(72,'Thursday',18,'2013-04-04 07:28:27','2013-04-04 07:28:27'),(73,'Friday',18,'2013-04-04 07:28:27','2013-04-04 07:28:27'),(74,'Saturday',18,'2013-04-04 07:28:27','2013-04-04 07:28:27'),(75,'Sunday',18,'2013-04-04 07:28:27','2013-04-04 07:28:27'),(76,'Tuesday',19,'2013-04-04 07:30:18','2013-04-04 07:30:18'),(77,'Thursday',19,'2013-04-04 07:30:18','2013-04-04 07:30:18'),(78,'Friday',19,'2013-04-04 07:30:18','2013-04-04 07:30:18'),(79,'Saturday',19,'2013-04-04 07:30:18','2013-04-04 07:30:18'),(80,'Sunday',19,'2013-04-04 07:30:18','2013-04-04 07:30:18'),(81,'Monday',20,'2013-04-04 07:31:49','2013-04-04 07:31:49'),(82,'Thursday',20,'2013-04-04 07:31:49','2013-04-04 07:31:49'),(83,'Saturday',20,'2013-04-04 07:31:49','2013-04-04 07:31:49'),(84,'Sunday',20,'2013-04-04 07:31:49','2013-04-04 07:31:49'),(85,'Monday',21,'2013-04-04 07:33:44','2013-04-04 07:33:44'),(86,'Thursday',21,'2013-04-04 07:33:44','2013-04-04 07:33:44'),(87,'Friday',21,'2013-04-04 07:33:44','2013-04-04 07:33:44'),(88,'Saturday',21,'2013-04-04 07:33:44','2013-04-04 07:33:44'),(89,'Sunday',21,'2013-04-04 07:33:44','2013-04-04 07:33:44'),(90,'Monday',22,'2013-04-04 07:35:27','2013-04-04 07:35:27'),(91,'Wednesday',22,'2013-04-04 07:35:27','2013-04-04 07:35:27'),(92,'Thursday',22,'2013-04-04 07:35:27','2013-04-04 07:35:27'),(93,'Saturday',22,'2013-04-04 07:35:27','2013-04-04 07:35:27'),(94,'Sunday',22,'2013-04-04 07:35:27','2013-04-04 07:35:27'),(95,'Monday',23,'2013-04-04 07:42:24','2013-04-04 07:42:24'),(96,'Wednesday',23,'2013-04-04 07:42:25','2013-04-04 07:42:25'),(97,'Friday',23,'2013-04-04 07:42:25','2013-04-04 07:42:25'),(98,'Saturday',23,'2013-04-04 07:42:25','2013-04-04 07:42:25'),(99,'Sunday',23,'2013-04-04 07:42:25','2013-04-04 07:42:25'),(100,'Thursday',24,'2013-04-04 07:44:52','2013-04-04 07:44:52'),(101,'Friday',24,'2013-04-04 07:44:52','2013-04-04 07:44:52'),(102,'Saturday',24,'2013-04-04 07:44:52','2013-04-04 07:44:52'),(103,'Sunday',24,'2013-04-04 07:44:52','2013-04-04 07:44:52'),(104,'Monday',25,'2013-04-04 07:46:14','2013-04-04 07:46:14'),(105,'Friday',25,'2013-04-04 07:46:14','2013-04-04 07:46:14'),(106,'Saturday',25,'2013-04-04 07:46:14','2013-04-04 07:46:14'),(107,'Sunday',25,'2013-04-04 07:46:14','2013-04-04 07:46:14'),(108,'Monday',26,'2013-04-04 07:48:24','2013-04-04 07:48:24'),(109,'Thursday',26,'2013-04-04 07:48:24','2013-04-04 07:48:24'),(110,'Saturday',26,'2013-04-04 07:48:24','2013-04-04 07:48:24'),(111,'Sunday',26,'2013-04-04 07:48:24','2013-04-04 07:48:24'),(112,'Monday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(113,'Tuesday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(114,'Wednesday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(115,'Thursday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(116,'Friday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(117,'Saturday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(118,'Sunday',27,'2013-04-04 07:50:53','2013-04-04 07:50:53'),(119,'Monday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(120,'Tuesday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(121,'Wednesday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(122,'Thursday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(123,'Friday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(124,'Saturday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(125,'Sunday',28,'2013-04-04 08:08:53','2013-04-04 08:08:53'),(126,'Monday',29,'2013-04-04 08:10:30','2013-04-04 08:10:30'),(127,'Tuesday',29,'2013-04-04 08:10:30','2013-04-04 08:10:30'),(128,'Thursday',29,'2013-04-04 08:10:30','2013-04-04 08:10:30'),(129,'Saturday',29,'2013-04-04 08:10:30','2013-04-04 08:10:30'),(130,'Sunday',29,'2013-04-04 08:10:30','2013-04-04 08:10:30'),(131,'Tuesday',30,'2013-04-04 08:12:48','2013-04-04 08:12:48'),(132,'Wednesday',30,'2013-04-04 08:12:48','2013-04-04 08:12:48'),(133,'Friday',30,'2013-04-04 08:12:48','2013-04-04 08:12:48'),(134,'Sunday',30,'2013-04-04 08:12:48','2013-04-04 08:12:48'),(135,'Monday',31,'2013-04-04 08:15:03','2013-04-04 08:15:03'),(136,'Wednesday',31,'2013-04-04 08:15:03','2013-04-04 08:15:03'),(137,'Friday',31,'2013-04-04 08:15:03','2013-04-04 08:15:03'),(138,'Sunday',31,'2013-04-04 08:15:03','2013-04-04 08:15:03'),(139,'Monday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(140,'Tuesday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(141,'Wednesday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(142,'Thursday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(143,'Friday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(144,'Saturday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26'),(145,'Sunday',32,'2013-04-04 08:17:26','2013-04-04 08:17:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_prices`
--

LOCK TABLES `product_prices` WRITE;
/*!40000 ALTER TABLE `product_prices` DISABLE KEYS */;
INSERT INTO `product_prices` VALUES (7,7,1,89,0,'2013-04-05','2013-04-20','2013-04-04 06:41:53','2013-04-04 06:41:53'),(8,8,1,100,0,'2013-04-06','2013-04-25','2013-04-04 06:43:28','2013-04-04 06:43:28'),(9,9,1,50,0,'2013-04-06','2013-04-26','2013-04-04 06:45:08','2013-04-04 06:45:08'),(10,10,1,30,0,'2013-04-06','2013-04-25','2013-04-04 06:46:38','2013-04-04 06:46:38'),(11,11,1,60,0,'2013-04-05','2013-04-26','2013-04-04 06:48:18','2013-04-04 06:48:18'),(12,12,1,150,0,'2013-04-06','2013-04-06','2013-04-04 06:49:51','2013-04-04 06:49:51'),(13,13,2,199,0,'2013-04-05','2013-04-26','2013-04-04 07:04:25','2013-04-04 07:04:25'),(14,14,2,89,0,'2013-04-05','2013-04-21','2013-04-04 07:09:16','2013-04-04 07:09:16'),(15,15,2,189,0,'2013-04-06','2013-04-27','2013-04-04 07:13:46','2013-04-04 07:13:46'),(16,16,2,189,0,'2013-04-05','2013-04-27','2013-04-04 07:17:13','2013-04-04 07:17:13'),(17,17,2,150,0,'2013-04-05','2013-04-26','2013-04-04 07:19:54','2013-04-04 07:19:54'),(18,18,3,100,0,'2013-04-05','2013-04-30','2013-04-04 07:28:27','2013-04-04 07:28:27'),(19,19,3,150,0,'2013-04-06','2013-04-26','2013-04-04 07:30:18','2013-04-04 07:30:18'),(20,20,3,99,0,'2013-04-05','2013-04-26','2013-04-04 07:31:49','2013-04-04 07:31:49'),(21,21,3,150,0,'2013-04-05','2013-04-19','2013-04-04 07:33:44','2013-04-04 07:33:44'),(22,22,3,179,0,'2013-04-05','2013-04-27','2013-04-04 07:35:27','2013-04-04 07:35:27'),(23,23,4,150,0,'2013-04-05','2013-04-28','2013-04-04 07:42:24','2013-04-04 07:42:24'),(24,24,4,55,0,'2013-04-05','2013-04-28','2013-04-04 07:44:52','2013-04-04 07:44:52'),(25,25,4,89,0,'2013-04-06','2013-04-26','2013-04-04 07:46:14','2013-04-04 07:46:14'),(26,26,4,150,0,'2013-04-05','2013-04-26','2013-04-04 07:48:24','2013-04-04 07:48:24'),(27,27,4,100,0,'2013-04-05','2013-04-27','2013-04-04 07:50:53','2013-04-04 07:50:53'),(28,28,5,100,0,'2013-04-05','2013-04-28','2013-04-04 08:08:53','2013-04-04 08:08:53'),(29,29,5,150,10,'2013-04-05','2013-04-27','2013-04-04 08:10:30','2013-04-04 08:10:30'),(30,30,5,100,0,'2013-04-05','2013-04-30','2013-04-04 08:12:48','2013-04-04 08:12:48'),(31,31,5,99,0,'2013-04-06','2013-04-25','2013-04-04 08:15:03','2013-04-04 08:15:03'),(32,32,5,99,0,'2013-04-05','2013-04-23','2013-04-04 08:17:26','2013-04-04 08:17:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,'CS','Chicken Snacker','A delicious chunk of chicken served in a soft sesame bun, with salad and Thousand Island sauce.  ',1,'2013-04-04 06:41:53','2013-04-04 08:18:09',1,'001.png','image/png',91123,'2013-04-04 06:41:52',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',1),(8,'PK','Potato Krisper','A Crispy potato patty, topped with tangy sauce and served up in a soft, warm bun!  ',1,'2013-04-04 06:43:28','2013-04-04 08:18:36',1,'001.png','image/png',91578,'2013-04-04 06:43:28',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',3),(9,'shotz','Chicken Shotz','Crunchy, spicy boneless chicken chunks that will light up your senses!  ',1,'2013-04-04 06:45:08','2013-04-04 08:19:02',1,'001.png','image/png',72033,'2013-04-04 06:45:08',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',2),(10,'kk','Kold Koffee','An exquisite blend of rich coffee, dairy and a hint of chocolate, the Frappe is topped with delicious chocolate cookie crumble… it\'s a frosty, thick flavorful cold coffee like you\'ve never tasted before.  ',1,'2013-04-04 06:46:38','2013-04-04 08:19:36',1,'001.png','image/png',52396,'2013-04-04 06:46:38',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',3),(11,'kls','Krushers Lime Soda','The all time favourite thirst quencher.  ',1,'2013-04-04 06:48:18','2013-04-04 08:18:21',1,'001.png','image/png',43971,'2013-04-04 06:48:17',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',1),(12,'vz','Veg Zinger','A crispy fillet of 100% real veggies, topped with iceberg lettuce & mayo, served in a soft sesame bun. It\'s juicy, spicy, crunchy!\' An exciting addition developed specially for our fans in India  ',1,'2013-04-04 06:49:51','2013-04-04 08:18:44',1,'001.png','image/png',91961,'2013-04-04 06:49:51',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',3),(13,'margherita','Margherita','It is Pizza Margherita. It was made in honor of the Queen consort of Italy, Margherita of Savoy.  It\'s toppings are fresh sliced tomatoes, fresh sliced Mozzarella, and fresh basil leaves. It represents the colors of the Italian flag.   ',1,'2013-04-04 07:04:25','2013-04-04 08:19:11',2,'001.jpg','image/jpeg',289606,'2013-04-04 07:04:24',1,'Monday,Wednesday,Friday,Saturday,Sunday',2),(14,'veggie','Garden Veggie Pizza','This pizza is one of my favorite options.  I’ve been trying to share it for a while, in fact, but it hasn’t lasted long enough to take a picture.  You can understand, though.  Garlic-infused oil, fresh veggies and of course, a generous amount of cheese.  Yeah, I think I’ll keep summer around a little bit longer.  ',1,'2013-04-04 07:09:16','2013-04-04 08:18:52',2,'001.jpeg','image/jpeg',10058,'2013-04-04 07:09:15',1,'Monday,Wednesday,Friday,Saturday,Sunday',3),(15,'ACI','Atlantic City Inlet Style pizza','Beer infused pizza stand from Tony Baloney\'s, an Atlantic City pizza shop proudly serving what they call Atlantic City Inlet Style pizza—which according to the menu means \"messy with cheese and toppings falling all over the crust!\"  ',1,'2013-04-04 07:13:46','2013-04-04 08:20:52',2,'001.jpg','image/jpeg',204566,'2013-04-04 07:13:45',1,'Monday,Wednesday,Thursday,Friday,Saturday,Sunday',4),(16,'pepper','Mini Pepper Pizza','As the name suggests, this pizza comes with a generous topping of peppers like chilli, red, green and banana peppers. In addition, the toppings include cheddar cheese and taco beef along with a dollop each of guacamole and sour cream.',1,'2013-04-04 07:17:13','2013-04-04 08:21:08',2,'001.jpg','image/jpeg',351817,'2013-04-04 07:17:12',1,'Monday,Tuesday,Friday,Saturday,Sunday',4),(17,'cheese','Double Cheese Pizza','This is a very popular veg. pizza which has a double thick layer of cheese. The double cheese pizza is very popular because of the lovers of cheese in this world are many. It is indeed one of the best and tasty pizzas among the vegetarian flavours.  ',1,'2013-04-04 07:19:54','2013-04-04 08:21:01',2,'001.jpg','image/jpeg',25416,'2013-04-04 07:19:53',1,'Monday,Tuesday,Wednesday,Friday,Saturday,Sunday',4),(18,'veggie','VEGGIE PATTY','For the vegetarian who loves it livened up! This light, golden brown patty combines the flavours of the choicest carrots, bell peppers, beans and other assorted ingredients. As they say, variety is the spice of life!  ',1,'2013-04-04 07:28:27','2013-04-04 08:19:21',3,'002.jpg','image/jpeg',108444,'2013-04-04 07:28:26',1,'Tuesday,Thursday,Friday,Saturday,Sunday',2),(19,'aloo','ALOO PATTY','The traditional aloo patty gets tastefully dressed up. A 100% potato patty seasoned with special herbs and spices with your choice of crisp fresh veggies, on freshly baked bread.  ',1,'2013-04-04 07:30:18','2013-04-04 07:30:18',3,'002.jpg','image/jpeg',108585,'2013-04-04 07:30:17',1,'Tuesday,Thursday,Friday,Saturday,Sunday',0),(20,'tikka','PANEER TIKKA','Cottage cheese slices marinated with barbeque seasoning and roasted to a light crispness. Sheer pleasure for the veggie when served on freshly baked bread.  ',1,'2013-04-04 07:31:49','2013-04-04 07:31:49',3,'002.jpg','image/jpeg',130712,'2013-04-04 07:31:48',1,'Monday,Thursday,Saturday,Sunday',0),(21,'melt','SUBWAY MELT','Imagine freshly baked bread stuffed with tender sliced turkey, chicken ham, bacon, melted cheese, and your choice of tasty vegetables and condiments. Now, stop imagining and set off towards your nearest SUBWAY® Restaurant.  ',1,'2013-04-04 07:33:44','2013-04-04 08:21:18',3,'002.jpg','image/jpeg',89439,'2013-04-04 07:33:43',1,'Monday,Thursday,Friday,Saturday,Sunday',4),(22,'steak','CHICKEN STEAK','Slices of lean and tender chicken steak perfectly complimented by crisp, crunchy veggies and your choice of eclectic sauces. Served hot & toasted on freshly baked bread.  ',1,'2013-04-04 07:35:27','2013-04-04 07:35:27',3,'002.jpg','image/jpeg',79663,'2013-04-04 07:35:26',1,'Monday,Wednesday,Thursday,Saturday,Sunday',0),(23,'crown','Crown Pizza','Pizza Hut gives you a royal invitation for trying out the ALL NEW ‘Crown Pizza’- the King of Pizzas. Enjoy a royal treat of Crown Pizzas at just half the price!  ',1,'2013-04-04 07:42:24','2013-04-04 07:42:24',4,'003.png','image/png',526854,'2013-04-04 07:42:23',1,'Monday,Wednesday,Friday,Saturday,Sunday',0),(24,'soup','Tomato Minestrone Soup','Creamy chicken soup simmered\r\nwith vegetables and chunks of chicken.  ',1,'2013-04-04 07:44:52','2013-04-04 07:44:52',4,'003.jpg','image/jpeg',65871,'2013-04-04 07:44:52',1,'Thursday,Friday,Saturday,Sunday',0),(25,'garden','Fresh Garden','Exotic vegetables-corn, broccoli, cherry\r\ntomatoes, pickled cucumbers, carrots,\r\nlettuce, bell peppers and red cabbage\r\ntossed in an Italian herb dressing and\r\ntopped with garlic croutons, pico de gallo\r\nand a sprinkle of parsley.  ',1,'2013-04-04 07:46:14','2013-04-04 07:46:14',4,'003.jpg','image/jpeg',83574,'2013-04-04 07:46:14',1,'Monday,Friday,Saturday,Sunday',0),(26,'veg blast','Cheesy Veg Blast','Lasagna with spinach, ricotta, mozzarella, corn and mushrooms, topped with a delicious white sauce and garnished with parmesan, chilly flakes and parsley   ',1,'2013-04-04 07:48:24','2013-04-04 08:20:29',4,'003.jpg','image/jpeg',70467,'2013-04-04 07:48:23',1,'Monday,Thursday,Saturday,Sunday',5),(27,'spaghetti','Go Italia! Spaghetti','Noodle pasta, lightly tossed with olive oil, parmesan cheese, mushroom, baby corn, zucchini, parsley, garlic and bell peppers.\r\nOur version of the classic Aglio Olio  ',1,'2013-04-04 07:50:53','2013-04-04 08:20:20',4,'003.jpg','image/jpeg',92324,'2013-04-04 07:50:52',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',5),(28,'gorditas','GORDITAS','A gordita is typically prepared as a thick tortilla. The dough is most commonly made of nixtamalized corn flour, as also used for tortillas, but can also be of wheat flour, particularly in northern Mexico close to the U.S border. An old variant of corn gorditas uses masa quebrada (broken dough) where the corn meal is coarsely ground, leaving bits of broken grain. Gorditas de migas is a version in which fried pork is mixed with the dough.  ',1,'2013-04-04 08:08:53','2013-04-04 08:08:53',5,'01.png','image/png',227037,'2013-04-04 08:08:52',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',0),(29,'burritos','BURRITOS','Burritos are the second-most prominent menu item at Taco Bell, following the taco. Burritos generally consist of a soft flour tortilla shell stuffed with any combination of beans, ground beef, shredded cheese, lettuce and tomatoes.  ',1,'2013-04-04 08:10:30','2013-04-04 08:10:30',5,'01.png','image/png',210116,'2013-04-04 08:10:29',1,'Monday,Tuesday,Thursday,Saturday,Sunday',0),(30,'tacos','TACOS','Taco is a brand of dessert food resembling a taco, consisting of a sugar cone–like taco shell waffle cone, reduced-fat vanilla ice cream, artificially flavored fudge, peanuts, and a milk chocolate coating.  ',1,'2013-04-04 08:12:48','2013-04-04 08:20:10',5,'01.png','image/png',377439,'2013-04-04 08:12:47',1,'Tuesday,Wednesday,Friday,Sunday',5),(31,'chalupas','Chalupa Supreme','It can be very helpful to look at a side-by-side comparison of different foods. By seeing both foods compared, you can make wise choices on what you eat. On this page, we compare Taco Bell Chalupa Baja - Steak Versus Pizza Hut Personal Pan Pepperoni Pizza to see which food has fewer calories, less fat, more protein, and more fiber.  ',1,'2013-04-04 08:15:03','2013-04-04 08:15:03',5,'01.png','image/png',147353,'2013-04-04 08:15:02',1,'Monday,Wednesday,Friday,Sunday',0),(32,'crunchwrap','Crunchwrap Supreme','It can be very helpful to look at a side-by-side comparison of different foods. By seeing both foods compared, you can make wise choices on what you eat. On this page, we compare Taco Bell Spicy Chicken Crunchwrap Supreme Versus Pizza Hut Personal Pan Pepperoni Pizza to see which food has fewer calories, less fat, more protein, and more fiber.  ',1,'2013-04-04 08:17:26','2013-04-04 08:20:03',5,'01.png','image/png',237702,'2013-04-04 08:17:26',1,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_ratings`
--

LOCK TABLES `products_ratings` WRITE;
/*!40000 ALTER TABLE `products_ratings` DISABLE KEYS */;
INSERT INTO `products_ratings` VALUES (2,7,1,'Average','2013-04-04 08:18:09','2013-04-04 08:18:09'),(3,11,1,'Average','2013-04-04 08:18:21','2013-04-04 08:18:21'),(4,8,1,'Best','2013-04-04 08:18:36','2013-04-04 08:18:36'),(5,12,1,'Best','2013-04-04 08:18:44','2013-04-04 08:18:44'),(6,14,1,'Best','2013-04-04 08:18:52','2013-04-04 08:18:52'),(7,9,1,'Better','2013-04-04 08:19:02','2013-04-04 08:19:02'),(8,13,1,'Better','2013-04-04 08:19:11','2013-04-04 08:19:11'),(9,18,1,'Better','2013-04-04 08:19:21','2013-04-04 08:19:21'),(10,10,1,'Best','2013-04-04 08:19:36','2013-04-04 08:19:36'),(11,32,1,'Awesome','2013-04-04 08:20:03','2013-04-04 08:20:03'),(12,30,1,'Awesome','2013-04-04 08:20:10','2013-04-04 08:20:10'),(13,27,1,'Awesome','2013-04-04 08:20:20','2013-04-04 08:20:20'),(14,26,1,'Awesome','2013-04-04 08:20:29','2013-04-04 08:20:29'),(15,15,1,'Most wanted','2013-04-04 08:20:52','2013-04-04 08:20:52'),(16,17,1,'Most wanted','2013-04-04 08:21:01','2013-04-04 08:21:01'),(17,16,1,'Most wanted','2013-04-04 08:21:08','2013-04-04 08:21:08'),(18,21,1,'Most wanted','2013-04-04 08:21:18','2013-04-04 08:21:18');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20130308094222'),('20130308094225'),('20130308094233'),('20130311083524'),('20130311084018'),('20130311084544'),('20130311084652'),('20130311085131'),('20130312062440'),('20130312070400'),('20130313050613'),('20130313144211'),('20130314083847'),('20130314090501'),('20130314091641'),('20130314091729'),('20130314095240'),('20130314100000'),('20130314100330'),('20130318100631'),('20130319070416'),('20130328110038'),('20130328115253');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_histories`
--

DROP TABLE IF EXISTS `search_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_histories` (
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `searched_on` datetime DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_histories`
--

LOCK TABLES `search_histories` WRITE;
/*!40000 ALTER TABLE `search_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_histories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,7,'Product',NULL,NULL,'tags','2013-04-04 06:41:53'),(2,2,7,'Product',NULL,NULL,'tags','2013-04-04 06:41:53'),(3,3,8,'Product',NULL,NULL,'tags','2013-04-04 06:43:28'),(4,1,9,'Product',NULL,NULL,'tags','2013-04-04 06:45:08'),(5,2,9,'Product',NULL,NULL,'tags','2013-04-04 06:45:08'),(6,4,9,'Product',NULL,NULL,'tags','2013-04-04 06:45:08'),(7,5,10,'Product',NULL,NULL,'tags','2013-04-04 06:46:38'),(8,5,11,'Product',NULL,NULL,'tags','2013-04-04 06:48:18'),(9,6,11,'Product',NULL,NULL,'tags','2013-04-04 06:48:18'),(10,7,12,'Product',NULL,NULL,'tags','2013-04-04 06:49:51'),(11,8,12,'Product',NULL,NULL,'tags','2013-04-04 06:49:51'),(12,9,13,'Product',NULL,NULL,'tags','2013-04-04 07:04:25'),(13,8,14,'Product',NULL,NULL,'tags','2013-04-04 07:09:16'),(14,10,14,'Product',NULL,NULL,'tags','2013-04-04 07:09:16'),(15,8,15,'Product',NULL,NULL,'tags','2013-04-04 07:13:46'),(16,11,16,'Product',NULL,NULL,'tags','2013-04-04 07:17:13'),(17,12,17,'Product',NULL,NULL,'tags','2013-04-04 07:19:54'),(18,13,18,'Product',NULL,NULL,'tags','2013-04-04 07:28:27'),(19,14,19,'Product',NULL,NULL,'tags','2013-04-04 07:30:18'),(20,15,19,'Product',NULL,NULL,'tags','2013-04-04 07:30:18'),(21,16,20,'Product',NULL,NULL,'tags','2013-04-04 07:31:49'),(22,17,21,'Product',NULL,NULL,'tags','2013-04-04 07:33:44'),(23,18,21,'Product',NULL,NULL,'tags','2013-04-04 07:33:44'),(24,2,22,'Product',NULL,NULL,'tags','2013-04-04 07:35:27'),(25,19,22,'Product',NULL,NULL,'tags','2013-04-04 07:35:27'),(26,20,23,'Product',NULL,NULL,'tags','2013-04-04 07:42:24'),(27,21,23,'Product',NULL,NULL,'tags','2013-04-04 07:42:24'),(28,22,24,'Product',NULL,NULL,'tags','2013-04-04 07:44:52'),(29,22,25,'Product',NULL,NULL,'tags','2013-04-04 07:46:14'),(30,23,26,'Product',NULL,NULL,'tags','2013-04-04 07:48:24'),(31,24,27,'Product',NULL,NULL,'tags','2013-04-04 07:50:53'),(32,25,28,'Product',NULL,NULL,'tags','2013-04-04 08:08:53'),(33,26,29,'Product',NULL,NULL,'tags','2013-04-04 08:10:30'),(34,27,30,'Product',NULL,NULL,'tags','2013-04-04 08:12:48'),(35,28,31,'Product',NULL,NULL,'tags','2013-04-04 08:15:03'),(36,29,32,'Product',NULL,NULL,'tags','2013-04-04 08:17:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'chicken'),(2,'non-veg'),(3,'krisper'),(4,'chunks'),(5,'drink'),(6,'lime-soda'),(7,'veg-zinger'),(8,'veg'),(9,'margherita'),(10,'garden-veggie'),(11,'pepper'),(12,'double-cheese'),(13,'veggie'),(14,'aloo'),(15,'patty'),(16,'paneer-tikka'),(17,'melt'),(18,'subway-melt'),(19,'chicken-steak'),(20,'crown-pizza'),(21,'crown'),(22,'soup'),(23,'veg-blast'),(24,'spaghetti'),(25,'gordita'),(26,'burrito'),(27,'taco'),(28,'chalupas'),(29,'crunchwrap');
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
INSERT INTO `users` VALUES (1,'arvindnaidu@outlook.com','$2a$10$tumrimZu2fTd33MJwJ9PGeAkKNzlPw6gymRL72t4AlTao8h.ocezq',NULL,NULL,NULL,1,'2013-04-04 06:30:51','2013-04-04 06:30:51','127.0.0.1','127.0.0.1','2013-04-04 06:30:51','2013-04-04 06:30:51','Arvind Naidu');
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

-- Dump completed on 2013-04-04 13:52:53
