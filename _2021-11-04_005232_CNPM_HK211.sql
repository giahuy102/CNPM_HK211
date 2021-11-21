-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: CNPM_HK211
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Food_categories`
--

DROP TABLE IF EXISTS `Food_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Food_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(10) NOT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food_categories`
--

/*!40000 ALTER TABLE `Food_categories` DISABLE KEYS */;
INSERT INTO `Food_categories` VALUES (1,'Bread','bread.jpg'),(2,'Chicken','chicken.jpg'),(3,'Cupcake','cupcake.jpg'),(4,'Juice','juice.jpg'),(5,'Sea Food','seafood.jpg'),(6,'Snack','snack.png'),(7,'Soft Drink','softdrink.jpg');
/*!40000 ALTER TABLE `Food_categories` ENABLE KEYS */;

--
-- Table structure for table `Foods`
--

DROP TABLE IF EXISTS `Foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Foods` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(100) NOT NULL,
  `food_price` double NOT NULL,
  `protein` int DEFAULT NULL,
  `additives` int DEFAULT NULL,
  `baking_materials` int DEFAULT NULL,
  `food_decoration` int DEFAULT NULL,
  `sale` double DEFAULT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  `food_category_id` int DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `category_id` (`food_category_id`),
  CONSTRAINT `Foods_ibfk_1` FOREIGN KEY (`food_category_id`) REFERENCES `Food_categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Foods`
--

/*!40000 ALTER TABLE `Foods` DISABLE KEYS */;
INSERT INTO `Foods` VALUES (1,'Cheese bread',5.5,40,20,100,4,0.6,'cheesebread.jpg',1),(2,'Coca',2,12,4,5,1,0,'coca.jpeg',4),(3,'Hamburger',10,200,300,100,5,0.7,'hamburger.jpg',1),(4,'Sandwich',8.5,200,190,220,5,0.85,'sandwich.png',1),(5,'Toast',10,100,200,400,3,0.9,'toast.jpg',1),(6,'Vietname bread',3,100,100,200,5,0.7,'vietnam_bread.jpg',1);
/*!40000 ALTER TABLE `Foods` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04  0:52:35
