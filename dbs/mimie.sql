CREATE DATABASE  IF NOT EXISTS `mimiejewellery` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mimiejewellery`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mimiejewellery
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `UserID` bigint unsigned DEFAULT NULL,
  `ProductID` bigint unsigned DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) DEFAULT NULL,
  `Description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CategoryUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`),
  UNIQUE KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Anklets','Charming anklets in various styles and materials.','2025-04-03 10:15:01','2025-04-03 10:15:01',NULL),(2,'Bracelets','Trendy and customizable bracelets to complement your look.','2025-04-03 10:15:01','2025-04-03 10:15:01',NULL),(3,'Earrings','Fashionable earrings for every occasion, from studs to hoops.','2025-04-03 10:15:01','2025-04-03 10:15:01',NULL),(4,'Necklaces','Elegant and stylish necklaces in different designs and materials.','2025-04-03 10:15:01','2025-04-03 10:15:01',NULL),(5,'Rings','A variety of rings including gold, silver, and other materials.','2025-04-03 10:15:01','2025-04-03 10:15:01',NULL),(6,'Accessories','Various accessories to complement your style, including phone charms, cases, and more.','2025-04-03 10:54:50','2025-04-03 10:54:50',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `CategoryID` int NOT NULL,
  `ProductID` bigint unsigned NOT NULL,
  PRIMARY KEY (`CategoryID`,`ProductID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`) ON DELETE CASCADE,
  CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (5,1),(4,3),(2,4),(2,5),(1,6),(4,7),(5,8),(3,9),(4,10),(1,11),(2,12),(3,13),(2,14),(5,16),(3,17),(3,18),(5,19),(1,20),(6,21),(2,22),(1,23),(6,24),(4,25),(4,26),(1,27),(4,28),(6,29),(5,30),(5,31),(2,32),(5,33),(6,34),(2,35),(4,36),(6,37),(4,38),(3,39),(3,40),(2,41),(2,42);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `connection` text,
  `queue` text,
  `payload` longtext,
  `exception` longtext,
  `failed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` bigint unsigned DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `OrderItemID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` bigint unsigned DEFAULT NULL,
  `ProductID` bigint unsigned DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `UserID` bigint unsigned DEFAULT NULL,
  `OrderDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('pending','shipped','delivered','canceled') DEFAULT 'pending',
  `Total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_id` bigint unsigned DEFAULT NULL,
  `tokenable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) DEFAULT NULL,
  `Description` text,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Amethyst Seraphim','Description for Amethyst Seraphim',100.00,75,'../Images/amethyst-seraphim.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(2,'Baroque Pearls','Description for Baroque Pearls',120.00,60,'baroque-pearls.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(3,'Bee Pendant','Description for Bee Pendant',80.00,50,'bee-pendant.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(4,'Bling It','Description for Bling It',90.00,55,'bling-it.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(5,'Bracelet Size Chart','Description for Bracelet Size Chart',70.00,65,'Bracelet-size-chart.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(6,'Butterfly Charm Anklet','Description for Butterfly Charm Anklet',110.00,80,'Butterfly-charm-anklet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(7,'Butterfly Necklace','Description for Butterfly Necklace',130.00,70,'butterfly-necklace.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(8,'Butterfly Ring','Description for Butterfly Ring',150.00,100,'Butterfly-ring.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(9,'Butterfly Studs','Description for Butterfly Studs',75.00,55,'Butterfly-studs.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(10,'Cross Necklace Silver','Description for Cross Necklace Silver',95.00,65,'Cross-necklace-silver.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(11,'Cuban Link Anklet','Description for Cuban Link Anklet',105.00,70,'Cuban-link-anklet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(12,'Cuban Link Bracelet','Description for Cuban Link Bracelet',125.00,80,'Cuban-link-bracelet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(13,'Earrings','Description for Earrings',135.00,85,'earrings.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(14,'Flower Bracelet','Description for Flower Bracelet',155.00,95,'Flower-bracelet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(15,'Goldies','Description for Goldies',60.00,55,'goldies-2.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(16,'Heart Loop Ring','Description for Heart Loop Ring',100.00,75,'Heart-loop-ring.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(17,'Hoop Earrings Gold','Description for Hoop Earrings Gold',120.00,85,'Hoop-earrings-gold.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(18,'Hoop Earrings Silver','Description for Hoop Earrings Silver',140.00,95,'Hoop-earrings-silver.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(19,'Irregular Ring','Description for Irregular Ring',60.00,55,'Irregular-ring.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(20,'Layered Anklet','Description for Layered Anklet',70.00,60,'Layered-anklet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(21,'Letter Graphic Case','Description for Letter Graphic Case',80.00,65,'Letter-graphic-case.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(22,'Moissanite Bracelet','Description for Moissanite Bracelet',100.00,75,'Moissanite-bracelet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(23,'Multicolor Anklet','Description for Multicolor Anklet',110.00,80,'Multicolor-anklet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(24,'Name Phone Charm','Description for Name Phone Charm',120.00,85,'Name-phone-charm.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(25,'Necklace Size Chart','Description for Necklace Size Chart',130.00,90,'Necklace-size-chart.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(26,'Necklace','Description for Necklace',140.00,95,'necklae.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(27,'Pattern Anklet','Description for Pattern Anklet',150.00,100,'Pattern-anklet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(28,'Pearl Necklace','Description for Pearl Necklace',60.00,55,'pearl-necklace.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(29,'Pearl Smiley Phone Charm','Description for Pearl Smiley Phone Charm',70.00,60,'Pearl-smiley-phone-charm.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(30,'Rhinestone Gold Ring','Description for Rhinestone Gold Ring',90.00,70,'Rhinestone-gold-ring.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(31,'Ring Shadow','Description for Ring Shadow',100.00,75,'Ring-shadow.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(32,'Ring Size Chart','Description for Ring Size Chart',110.00,80,'Ring-size-chart.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(33,'Rings','Description for Rings',120.00,85,'rings.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(34,'Satin Scrunchie Black','Description for Satin Scrunchie Black',130.00,90,'Satin-scrunchie-black.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(35,'Snake Bone','Description for Snake Bone',140.00,95,'snake-bone.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(36,'Star Choker Necklace','Description for Star Choker Necklace',150.00,100,'Star-choker-necklace.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(37,'Star Phone Case','Description for Star Phone Case',50.00,50,'Star-phone-case.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(38,'Stone Butterfly Necklace','Description for Stone Butterfly Necklace',60.00,55,'Stone-butterfly-necklace.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(39,'Twisted Earrings Gold','Description for Twisted Earrings Gold',80.00,65,'Twisted-earrings-gold.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(40,'Twisted Earrings Silver','Description for Twisted Earrings Silver',100.00,75,'Twisted-earrings-silver.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22'),(41,'YHWH','Description for YHWH',110.00,80,'yhwh.png','2025-04-03 10:07:22','2025-04-03 10:07:22'),(42,'Zircon Bracelet','Description for Zircon Bracelet',130.00,90,'Zircon-bracelet.jpg','2025-04-03 10:07:22','2025-04-03 10:07:22');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` bigint unsigned DEFAULT NULL,
  `UserID` bigint unsigned DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_details`
--

DROP TABLE IF EXISTS `shipping_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_details` (
  `ShippingID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` bigint unsigned DEFAULT NULL,
  `ShippingAddress` text,
  `ShippingMethod` varchar(255) DEFAULT NULL,
  `ShippingCost` decimal(10,2) DEFAULT NULL,
  `ShippedDate` timestamp NULL DEFAULT NULL,
  `DeliveryDate` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ShippingID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `shipping_details_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_details`
--

LOCK TABLES `shipping_details` WRITE;
/*!40000 ALTER TABLE `shipping_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mimiejewellery'
--

--
-- Dumping routines for database 'mimiejewellery'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-13 13:20:29
