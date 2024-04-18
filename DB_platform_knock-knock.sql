-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_platform_knock-knock
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `advertisement_list`
--

DROP TABLE IF EXISTS `advertisement_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement_list` (
  `id_advertisement` int NOT NULL AUTO_INCREMENT,
  `type_of_service` tinytext NOT NULL,
  `type_of_estate` tinytext NOT NULL,
  `owner_name` tinytext NOT NULL,
  `owner_tel` tinytext NOT NULL,
  `owner_type` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL,
  `rooms` int NOT NULL,
  `square` int NOT NULL,
  `image_name` tinytext NOT NULL,
  PRIMARY KEY (`id_advertisement`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement_list`
--

LOCK TABLES `advertisement_list` WRITE;
/*!40000 ALTER TABLE `advertisement_list` DISABLE KEYS */;
INSERT INTO `advertisement_list` VALUES (1,'commerceBuy','Офис','Никита','89280140532','Риелтор','Офис 170кв.м.','Ставрополь, Кулакова 45.',23000000,'Продам офис',1,170,'gajergjpwoje;ls;lgwe.jpg');
/*!40000 ALTER TABLE `advertisement_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `C_NO` int NOT NULL,
  `FIO` char(40) NOT NULL,
  `ADDR` char(30) NOT NULL,
  `CITY` char(15) NOT NULL,
  `PHONE` char(11) NOT NULL,
  PRIMARY KEY (`C_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AVG_ROW_LENGTH=16384 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (2,'Петров','Мира 29','Екатеринбург','-');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `O_NO` int NOT NULL,
  `DATE` date NOT NULL,
  `C_NO` int NOT NULL,
  `T_NO` int NOT NULL,
  `QUANTITY` double(9,2) NOT NULL,
  `AMOUNT` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2010-01-03',1,1,1.00,340.98);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tools` (
  `T_NO` int NOT NULL,
  `DSEC` char(40) NOT NULL,
  `PRICE` double(9,2) NOT NULL,
  `QTY` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_list`
--

DROP TABLE IF EXISTS `user_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_list` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NUMBER` char(11) NOT NULL,
  `PASSWORD` tinytext NOT NULL,
  `ROLE` char(10) NOT NULL DEFAULT 'USER',
  `TYPE_OWNER` char(15) NOT NULL,
  `SURNAME` char(30) NOT NULL,
  `NAME` char(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 AVG_ROW_LENGTH=4096 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_list`
--

LOCK TABLES `user_list` WRITE;
/*!40000 ALTER TABLE `user_list` DISABLE KEYS */;
INSERT INTO `user_list` VALUES (15,'89998887766','rrrrrrrr','\'USER\'','Собственник','Алексеев','Иван'),(19,'root','pass','\'USER\'','Собственник','Шушляков','Никита'),(20,'root','pass','\'USER\'','Собственник','Федоров','Федор'),(21,'root','pass','\'USER\'','Собственник','Васильев','Василий');
/*!40000 ALTER TABLE `user_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 17:57:30
